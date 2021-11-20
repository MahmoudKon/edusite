-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2021 at 02:30 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edusite`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `order`, `visibility`) VALUES
(1, 'Web Developer', 'web-developer', 1, 1),
(2, 'Web Designer', 'web-designer', 2, 0),
(3, 'Ui&Ux Designer', 'ui-ux-designer', 3, 1),
(4, 'Desktop Application', 'desktop-application', 4, 1),
(5, 'Mobile Application', 'mobile-application', 5, 0),
(6, 'Web Application', 'web-application', 6, 0),
(7, 'Artificial Intelligence', 'artificial-intelligence', 7, 0),
(8, 'IT & Multimedia Design', 'it&-multimedia-design', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `commentable_type`, `commentable_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Delectus optio nisi temporibus modi soluta rem cum quasi et fuga laboriosam dolorem dignissimos enim.', 'App\\Models\\Post', 7, 5, '2021-08-27 08:03:09', '2021-08-27 08:03:09'),
(2, 'Inventore quam aspernatur qui modi ipsam ab velit maiores saepe culpa corrupti.', 'App\\Models\\Post', 4, 1, '2021-08-27 08:03:09', '2021-08-27 08:03:09'),
(3, 'Repellat ut nihil velit et pariatur perferendis vel magni nostrum et laboriosam.', 'App\\Models\\Post', 3, 4, '2021-08-27 08:03:09', '2021-08-27 08:03:09'),
(4, 'Libero sed sint laborum nam iste placeat eaque.', 'App\\Models\\Post', 3, 8, '2021-08-27 08:03:09', '2021-08-27 08:03:09'),
(5, 'Et eos voluptas ea dolores itaque rem.', 'App\\Models\\Post', 9, 9, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(6, 'Qui sint voluptas officia esse quia debitis qui tempore quibusdam.', 'App\\Models\\Post', 6, 3, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(7, 'Expedita consequatur fugit dolor ut voluptas quo odio qui.', 'App\\Models\\Post', 3, 1, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(8, 'Accusantium qui natus ut explicabo saepe natus accusantium animi ab.', 'App\\Models\\Post', 3, 2, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(9, 'Nam maxime harum et non et quia.', 'App\\Models\\Post', 3, 8, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(10, 'Incidunt nam harum non odio voluptatem autem enim.', 'App\\Models\\Post', 4, 2, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(11, 'Ea maxime harum ducimus eligendi blanditiis harum quod rerum eligendi.', 'App\\Models\\Post', 1, 12, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(12, 'Sit quod harum qui unde sapiente vitae rerum ratione est.', 'App\\Models\\Post', 4, 2, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(13, 'Voluptatem quia nemo nesciunt nemo assumenda repellat dolorum eos neque omnis architecto id debitis.', 'App\\Models\\Post', 9, 7, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(14, 'Delectus dolor adipisci et qui et possimus minima impedit fugiat.', 'App\\Models\\Post', 8, 8, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(15, 'Nobis ea veniam autem sed amet tempore consequatur et repellendus iusto repudiandae saepe.', 'App\\Models\\Post', 4, 12, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(16, 'In voluptas modi cum atque iusto et laboriosam occaecati enim ut facilis non quis est error voluptates.', 'App\\Models\\Post', 1, 9, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(17, 'Pariatur illum quas eos quibusdam aut.', 'App\\Models\\Post', 8, 11, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(18, 'Pariatur fuga minus eos harum commodi qui molestias.', 'App\\Models\\Post', 7, 13, '2021-08-27 08:03:10', '2021-08-27 08:03:10'),
(19, 'Praesentium voluptas perferendis ullam sunt id sit et mollitia voluptas.', 'App\\Models\\Post', 6, 11, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(20, 'Possimus porro ipsa vel sit officia dolorum rem dolores numquam est quidem tempora.', 'App\\Models\\Post', 7, 12, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(21, 'Quis ratione aut eligendi accusantium et quia aut vitae odio numquam quas nihil.', 'App\\Models\\Post', 7, 5, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(22, 'Incidunt et mollitia ut vero sit blanditiis in id itaque.', 'App\\Models\\Post', 4, 9, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(23, 'Ipsam atque aperiam ut laborum ut soluta ipsum dolores.', 'App\\Models\\Post', 1, 3, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(24, 'Culpa quos at repellat assumenda quis est atque.', 'App\\Models\\Post', 9, 5, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(25, 'Sint deleniti id quis provident earum neque ut quam velit voluptatibus culpa aspernatur quam delectus.', 'App\\Models\\Post', 1, 5, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(26, 'Eum atque repellendus earum aut ut culpa fuga ab sint voluptas quod magnam sit.', 'App\\Models\\Post', 3, 8, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(27, 'Mollitia ut culpa fugiat explicabo aut iste consectetur officia.', 'App\\Models\\Post', 4, 11, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(28, 'Cumque voluptas tenetur at eum odit voluptas qui rerum quia optio quo eligendi est ipsa.', 'App\\Models\\Post', 3, 10, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(29, 'Ipsum unde earum voluptatem beatae aut itaque sunt id qui.', 'App\\Models\\Post', 7, 3, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(30, 'Ea dolorum eligendi ipsam sunt ut tenetur quam.', 'App\\Models\\Post', 7, 1, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(31, 'Aut reprehenderit dolor consequatur illum perspiciatis tempore architecto id illum minus.', 'App\\Models\\Course', 13, 7, '2021-08-27 08:03:11', '2021-08-27 08:03:11'),
(32, 'Est sit enim autem odio ut voluptatibus qui.', 'App\\Models\\Course', 21, 12, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(33, 'Hic at facere alias nesciunt et exercitationem quibusdam.', 'App\\Models\\Course', 16, 2, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(34, 'Illo est illum qui non est laudantium laboriosam dolorem sit.', 'App\\Models\\Course', 23, 6, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(35, 'Eum culpa repellendus nesciunt vitae et est quia architecto esse tempora quo.', 'App\\Models\\Course', 16, 13, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(36, 'Quod ex distinctio debitis et possimus ut voluptatem vel temporibus veritatis atque.', 'App\\Models\\Course', 13, 5, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(37, 'Eum omnis omnis unde rerum ullam odit et eos dolor sit dolores molestiae.', 'App\\Models\\Course', 2, 6, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(38, 'Et qui deserunt neque vitae ut accusantium doloribus qui ipsam et totam.', 'App\\Models\\Course', 16, 8, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(39, 'Voluptatibus eius dolorem ut repellendus enim occaecati consequuntur eaque dolor natus magni enim.', 'App\\Models\\Course', 4, 9, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(40, 'Nam modi sed qui assumenda velit ipsum vel sint similique.', 'App\\Models\\Course', 9, 5, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(41, 'Quo soluta et odio deleniti voluptatem nobis et laudantium in consectetur dicta dolores illum expedita qui.', 'App\\Models\\Course', 4, 3, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(42, 'Deleniti qui architecto laudantium neque vero ipsam dolore sunt.', 'App\\Models\\Course', 13, 9, '2021-08-27 08:03:12', '2021-08-27 08:03:12'),
(43, 'Ipsam et ex ipsam ad qui veniam.', 'App\\Models\\Course', 21, 2, '2021-08-27 08:03:13', '2021-08-27 08:03:13'),
(44, 'Et quia quis rem ipsa et voluptatem qui eligendi suscipit repellendus eos enim.', 'App\\Models\\Course', 23, 2, '2021-08-27 08:03:13', '2021-08-27 08:03:13'),
(45, 'Occaecati numquam delectus ea culpa explicabo amet porro voluptatem quia provident adipisci blanditiis.', 'App\\Models\\Course', 16, 1, '2021-08-27 08:03:13', '2021-08-27 08:03:13'),
(46, 'Sed amet corporis dolorum eaque dolore consequatur ipsum et consequatur eos deleniti sit.', 'App\\Models\\Course', 8, 9, '2021-08-27 08:03:13', '2021-08-27 08:03:13'),
(47, 'Odit vel facere commodi ullam adipisci eius soluta.', 'App\\Models\\Course', 4, 12, '2021-08-27 08:03:13', '2021-08-27 08:03:13'),
(48, 'Deleniti asperiores ut odit debitis et qui dolore doloribus porro consequatur eos aut quas voluptas architecto non.', 'App\\Models\\Course', 25, 2, '2021-08-27 08:03:13', '2021-08-27 08:03:13'),
(49, 'Est totam et rem quis maxime id est laudantium molestias molestiae odio.', 'App\\Models\\Course', 1, 2, '2021-08-27 08:03:13', '2021-08-27 08:03:13'),
(50, 'Provident atque et cupiditate provident dolorem ut est occaecati.', 'App\\Models\\Course', 9, 12, '2021-08-27 08:03:13', '2021-08-27 08:03:13'),
(51, 'Aut est suscipit delectus quia qui voluptatum tenetur inventore est deserunt repudiandae.', 'App\\Models\\Course', 15, 2, '2021-08-27 08:03:13', '2021-08-27 08:03:13'),
(52, 'Debitis architecto velit deleniti consequatur autem aspernatur.', 'App\\Models\\Course', 21, 5, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(53, 'Quia laborum perspiciatis velit rerum laudantium dolore explicabo neque rerum nesciunt voluptatem saepe.', 'App\\Models\\Course', 1, 8, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(54, 'Consectetur facilis vero officia sequi mollitia voluptatem ut magni impedit in impedit.', 'App\\Models\\Course', 4, 1, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(55, 'Distinctio deserunt magni et recusandae corporis ratione.', 'App\\Models\\Course', 4, 8, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(56, 'In quidem itaque iste sed et ut praesentium est neque ut minus delectus laborum.', 'App\\Models\\Course', 23, 13, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(57, 'Ullam id aut rerum ut voluptatum ex non rem.', 'App\\Models\\Course', 20, 8, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(58, 'Maxime enim aperiam est tenetur explicabo perferendis ut rem voluptas sit.', 'App\\Models\\Course', 16, 11, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(59, 'Necessitatibus doloribus beatae doloribus vel natus ut nesciunt dolorum nisi.', 'App\\Models\\Course', 8, 5, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(60, 'Aut illum rem eveniet eum qui eum minus.', 'App\\Models\\Course', 2, 4, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(61, 'Vitae sunt voluptas ipsam asperiores id enim iure qui enim velit sunt sed.', 'App\\Models\\Video', 32, 13, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(62, 'Dolorem illum velit aut voluptate odio vero.', 'App\\Models\\Video', 7, 12, '2021-08-27 08:03:14', '2021-08-27 08:03:14'),
(63, 'Cumque ut nam quos sapiente enim eaque dolores fuga ut.', 'App\\Models\\Video', 1, 6, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(64, 'Non corporis repellendus consequuntur in quod maiores numquam labore ipsum distinctio.', 'App\\Models\\Video', 37, 7, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(65, 'Aliquam aliquam sunt eligendi mollitia blanditiis ea numquam assumenda necessitatibus quia est dolorum.', 'App\\Models\\Video', 12, 7, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(66, 'Corrupti aut velit suscipit earum ut rerum saepe.', 'App\\Models\\Video', 22, 3, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(67, 'Veritatis est non ea ipsam officia saepe qui quo id voluptate.', 'App\\Models\\Video', 32, 11, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(68, 'Quo aperiam officiis impedit aut minus ullam dolorum.', 'App\\Models\\Video', 14, 13, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(69, 'Rerum vel porro rerum dolorem consequatur corporis.', 'App\\Models\\Video', 1, 3, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(70, 'Fuga molestiae nihil illo delectus neque fugit dolor.', 'App\\Models\\Video', 25, 5, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(71, 'Recusandae aut fugit qui iste eius voluptatem ducimus in iusto eius commodi doloribus qui dolor.', 'App\\Models\\Video', 14, 2, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(72, 'Velit possimus non rerum libero et eum sunt tenetur officia nobis adipisci.', 'App\\Models\\Video', 15, 5, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(73, 'Vel culpa quis aperiam vel voluptate autem quos error quod id non quia ex quia ratione.', 'App\\Models\\Video', 2, 2, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(74, 'Tempora optio exercitationem illo dolores dolor unde enim quos et consequatur ut.', 'App\\Models\\Video', 45, 7, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(75, 'Atque eum debitis maiores voluptatem aut rerum consequatur modi ducimus sit et voluptatibus.', 'App\\Models\\Video', 13, 10, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(76, 'Voluptatem voluptatibus quis ducimus quia aut velit adipisci assumenda ipsa.', 'App\\Models\\Video', 25, 10, '2021-08-27 08:03:15', '2021-08-27 08:03:15'),
(77, 'Consequatur voluptatem quasi optio qui aut enim est et omnis ut hic.', 'App\\Models\\Video', 28, 6, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(78, 'Ut hic harum et ipsum facilis.', 'App\\Models\\Video', 27, 5, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(79, 'Ut culpa quis voluptatem unde et omnis deserunt quia sint ipsam facilis facilis.', 'App\\Models\\Video', 1, 5, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(80, 'Nulla nesciunt saepe odit vero laudantium sit tenetur inventore ab quasi itaque cupiditate aliquam.', 'App\\Models\\Video', 42, 11, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(81, 'Non ut quaerat modi dolores voluptatem officia corrupti.', 'App\\Models\\Video', 42, 3, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(82, 'Voluptatem tenetur vel soluta doloremque nihil est officiis.', 'App\\Models\\Video', 44, 10, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(83, 'Repellendus praesentium sed ut illum voluptatem aut excepturi.', 'App\\Models\\Video', 43, 2, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(84, 'Libero est ipsum labore qui libero dolorem.', 'App\\Models\\Video', 32, 5, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(85, 'Tempora recusandae et in praesentium ab nesciunt accusantium aperiam facere est voluptatem.', 'App\\Models\\Video', 41, 4, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(86, 'Dolores quia fuga quod porro repudiandae esse ut et laudantium fugit iure quos illo.', 'App\\Models\\Video', 19, 5, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(87, 'Quo officia consectetur dolor odit in in repellendus repudiandae voluptatum sed aut doloribus.', 'App\\Models\\Video', 36, 13, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(88, 'Sed et facilis recusandae facilis qui quam similique velit voluptatum at.', 'App\\Models\\Video', 9, 9, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(89, 'Ea dolorem quasi facilis numquam aperiam.', 'App\\Models\\Video', 8, 9, '2021-08-27 08:03:16', '2021-08-27 08:03:16'),
(90, 'Et autem animi maiores laboriosam aut.', 'App\\Models\\Video', 41, 3, '2021-08-27 08:03:16', '2021-08-27 08:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `discount` tinyint(3) UNSIGNED DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `image`, `desc`, `price`, `start_date`, `end_date`, `discount`, `visibility`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sequi consequatur fuga maiores dignissimos velit sit aut quidem nostrum magni asperiores sint aut sit.', 'sequi-consequatur-fuga-maiores-dignissimos-velit-sit-aut-quidem-nostrum-magni-asperiores-sint-aut-sit', 'fcb146081ed55e5e11e53f61360c2efa.png', 'Ut reiciendis ullam omnis doloremque eligendi. Natus eaque enim voluptates quod natus optio. Aut consectetur aliquam sequi quaerat tempora veritatis aut. Quae voluptatem ad officiis quasi nobis qui. Iusto impedit autem animi sed. Dolorem earum qui at molestias mollitia. Porro quis magni consequatur eum. Voluptate quae et ex dolores non. Delectus quis qui aliquam. Soluta velit ut quod voluptatem nulla. Itaque ut harum dolores. Earum repellat odit est et. Sint ut suscipit aut molestias aut dignissimos. Eveniet odit possimus esse. Ullam dignissimos doloribus sunt eum. Molestiae ipsam quia ut sed quisquam. Voluptatem ratione rerum libero repellat enim eius molestiae. Provident animi eos molestiae deserunt. Voluptatem dignissimos facere odio. Est qui autem nihil provident tenetur architecto. Neque occaecati rerum perspiciatis et. Nobis quisquam consequuntur non est et. Eius nisi fuga corporis modi libero quis est. Ut expedita iusto unde repellat sequi accusamus. Dolor accusantium provident autem doloribus nulla odio doloremque. Rerum atque quidem nisi exercitationem eos explicabo. Sit accusantium eaque quis dolores ex aspernatur. Et cum fugit pariatur est animi exercitationem eos recusandae. Velit nulla ut ut quia qui. Illum qui vel provident hic architecto mollitia saepe debitis. Quas est consequatur soluta qui dolor quia sunt. Modi consequatur ducimus dolor laboriosam ut minima.', 194.00, '2021-08-27', '2021-08-30', 96, 1, 4, 9, '2021-08-27 08:01:51', '2021-08-27 08:01:51'),
(2, 'Rem quasi odit optio ullam voluptatem similique non.', 'rem-quasi-odit-optio-ullam-voluptatem-similique-non', 'db40a09840892cf3e75cfc61d69445a8.png', 'Inventore error provident quidem repellendus sed culpa nam. Illo enim et voluptatem voluptatem praesentium non. Omnis porro quaerat quaerat ut. Maiores velit fugit placeat aliquid unde. Dolores cum et cum voluptatem qui quia numquam. Impedit est illo sit exercitationem eum id corporis. Aut numquam et quia vitae error praesentium. Ab animi vel recusandae nihil facilis. Sed sint neque magni tempora sed sed. Quas qui iste ullam unde. Eligendi praesentium quisquam placeat quae inventore libero. Aut rerum eveniet nostrum qui nesciunt provident maiores. Inventore culpa quidem nostrum numquam odit dolore pariatur. Aliquid cupiditate architecto neque perspiciatis commodi. Sit et corporis rerum iste tempora. Vitae et aut nihil id. Soluta ipsa quis vero nulla laborum. Laboriosam occaecati voluptas ut amet vel optio sapiente. Ad consequuntur vitae illum placeat iste ex veniam. Eligendi corporis placeat velit maiores asperiores quo. Odit iusto consequatur laudantium dolore quod est. Sit quae perspiciatis voluptatem voluptas vel. Sunt suscipit molestiae voluptatem voluptatem. Occaecati et ipsam at excepturi. Aliquam laborum voluptatem eaque aliquid aut reprehenderit. Eum animi necessitatibus qui sunt et. Ea accusamus quis ut voluptatibus id.', 55.00, '2021-08-27', '2021-08-29', 23, 1, 8, 5, '2021-08-27 08:01:51', '2021-08-27 08:01:51'),
(3, 'Maiores quo veritatis molestiae excepturi voluptatem consequuntur aliquam tenetur id porro ex et veniam omnis.', 'maiores-quo-veritatis-molestiae-excepturi-voluptatem-consequuntur-aliquam-tenetur-id-porro-ex-et-veniam-omnis', '2796f70d16584e3634eac7ac0348de75.png', 'Omnis voluptate sint et laboriosam facilis quas error qui. Omnis quia pariatur delectus deserunt culpa dolore. Perspiciatis id ea molestiae eos nesciunt. Iste vero fugit architecto illum culpa quia. Cum a aut quis voluptatem voluptas ab distinctio. Aut perspiciatis aut reiciendis. Nisi non non et voluptatem. Accusantium sed explicabo iure nihil. Reprehenderit doloribus quaerat voluptatum. Ullam blanditiis similique aut sint molestiae. Qui consequuntur quis odio doloribus. Ullam error molestiae eum quis. Blanditiis reprehenderit dolor quasi. Tempora vel labore explicabo provident qui dicta vel. Enim adipisci id quia. Quos numquam perferendis suscipit libero esse qui. Voluptas occaecati tempore consequuntur et ut. Et et omnis ea omnis rerum molestias. Aut vitae aut praesentium sed illum. Rerum sint eos enim necessitatibus eius. Corrupti quo repudiandae et iusto optio esse. Modi soluta consequatur expedita tenetur aut repellendus. Laudantium qui delectus culpa unde nobis quasi. Qui eius nostrum aut sunt. Voluptatem atque quia maxime quo. Similique distinctio dolores placeat sint id. Accusamus rerum dolorem eos assumenda quas repellendus. Est repellat rem perspiciatis et vero possimus facere excepturi. Modi voluptatum fugiat veniam et voluptas aperiam et et. Sed quidem velit sint at et. Voluptas est necessitatibus id adipisci cupiditate dolores dolor.', 592.00, '2021-08-27', '2021-08-30', 87, 0, 3, 9, '2021-08-27 08:01:51', '2021-08-27 08:01:51'),
(4, 'Excepturi quaerat recusandae soluta error quis voluptatibus in tempore.', 'excepturi-quaerat-recusandae-soluta-error-quis-voluptatibus-in-tempore', 'ab1276ba9e648be33f4605844e916ea3.png', 'Dignissimos cumque maxime aut enim officia corrupti rerum sed. Animi ut pariatur minima ut. Aliquid quis aliquam hic totam. Dolore modi distinctio voluptas et. Quae non sed voluptas in omnis. Sequi ipsa eligendi autem quam. Adipisci est repellat aut. Ad sint earum est omnis sed. Qui atque alias blanditiis voluptatem. Et similique enim voluptas. Aliquid iure molestiae ea accusamus eos non. Quibusdam quam ut dicta vitae. Aspernatur eos deserunt in. Quos quibusdam itaque iusto eos. Cum eligendi sint blanditiis enim sunt placeat ut maiores. Laudantium et quasi deleniti. Eum voluptatem et eaque itaque aspernatur sed veniam. Dolores sequi et aspernatur recusandae quia quia voluptatem. Consequuntur est sunt error ea aliquid. Est et ut cum dolorem accusantium doloremque. Perferendis qui ut non dolorem. Omnis distinctio non temporibus vitae harum non quo. Consequatur beatae facilis aut accusamus deleniti alias suscipit omnis. Ducimus nobis ratione ea ducimus commodi. Necessitatibus hic sed quae earum at deleniti. Nisi qui nulla at ut. Deserunt quo sed nisi corporis sed modi libero.', 348.00, '2021-08-27', '2021-08-31', 64, 1, 4, 4, '2021-08-27 08:01:51', '2021-08-27 08:01:51'),
(5, 'Explicabo voluptatem debitis aut commodi ipsa quis.', 'explicabo-voluptatem-debitis-aut-commodi-ipsa-quis', '2bf0a4a0e7adb37b9c86d3f832c2400c.png', 'Aliquid tempore rerum quos fuga quia molestiae. Dolor temporibus minus magni nam. Quas nulla qui consequuntur neque doloremque beatae. Blanditiis esse voluptatibus corporis praesentium consequatur non odit. Quibusdam et illum dicta et. Beatae rerum nobis ut a et ducimus sint. Perspiciatis excepturi rerum cum nemo. Repellat incidunt ut sunt. Illum velit culpa ut voluptatem ipsa nobis voluptatem. Eligendi in in consequatur et voluptatibus repudiandae. Et ullam dicta deleniti ea. Quia ad doloremque dolores possimus repudiandae. Voluptatum ut ullam perferendis eum et. Voluptas enim necessitatibus nisi earum velit nobis. Laboriosam quia quia exercitationem nemo quod cupiditate reprehenderit. Est est corporis qui rerum illum ratione. Officia ut quia sunt tempore fuga. Repudiandae excepturi commodi aut voluptatem. Sit eius numquam debitis voluptatum non quis quo repudiandae. Delectus doloribus qui debitis voluptatem necessitatibus est ea explicabo. Adipisci tempora ipsam consequatur quis aliquid deserunt excepturi. Omnis quo et qui iure id autem enim. Ea quos cum quae esse eos dicta. Omnis earum et similique quaerat nostrum enim aut. In error sed quisquam soluta velit. Perspiciatis repellat enim porro quo enim. Sed ut ipsa enim distinctio velit. Debitis impedit nisi tempore.', 556.00, '2021-08-27', '2021-08-31', 84, 0, 3, 9, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(6, 'Consequatur molestiae ducimus cupiditate qui mollitia eum non maxime.', 'consequatur-molestiae-ducimus-cupiditate-qui-mollitia-eum-non-maxime', '9ea273eb05fc429fd700e719085dd580.png', 'Nihil velit omnis rem optio iusto nihil. Eveniet soluta repellat ab natus. Excepturi perferendis quasi labore magni mollitia vero. Reprehenderit necessitatibus delectus qui. Itaque adipisci animi quam odit dolor. At labore sed beatae amet minima excepturi. Nesciunt aut cum et perferendis consequuntur rem dolore. Vel et non minima facere nam veritatis. Ab ut nostrum commodi aut aliquid. Et expedita ratione ut ut. Nam cupiditate praesentium et est id. Est ut quis incidunt consequatur dolorem optio dolorem. Molestias sit sequi non. Illum eveniet rerum modi. At eligendi qui maiores vel nisi et. Et consequatur non laboriosam aspernatur repellat corporis magnam. Voluptate sed aliquid a atque non consectetur consequatur cupiditate. Deserunt ut ducimus eos et modi. Est molestiae pariatur dolor et illum. Tempore cum voluptates omnis distinctio iure. Vel accusantium dolor reprehenderit libero voluptate qui. Et repellat incidunt enim labore et ut sit. Eius quis minus aut dolorum occaecati molestias nostrum eveniet. Dolores quia adipisci error id vel facere. Earum pariatur possimus odio sit illum iusto autem dicta.', 254.00, '2021-08-27', '2021-08-28', 69, 0, 4, 4, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(7, 'Ab molestiae harum aperiam ab consequatur molestias quod sed quia.', 'ab-molestiae-harum-aperiam-ab-consequatur-molestias-quod-sed-quia', '675190deb7dc166459c339a012bdd14a.png', 'Et aut labore laborum vel recusandae sed velit qui. Culpa eum exercitationem asperiores voluptatibus. Quia expedita voluptate sapiente quae blanditiis laboriosam cupiditate expedita. Minus est sed deserunt voluptatibus assumenda repudiandae. Ab impedit officiis dolore nam. Sint tempora quas est adipisci similique accusamus expedita saepe. A iusto tempore provident qui ipsam. Saepe ut libero totam. Quia ullam mollitia a qui ipsam qui aut. Debitis dolorum quae est facere sunt fuga vitae. Et modi quis vel facere eum. Nostrum et error fuga natus. Voluptas ad molestias quibusdam quod esse. Quae rerum ut repudiandae perspiciatis. Beatae perspiciatis autem temporibus perferendis dolor amet. Nesciunt quas quasi rerum quia rerum. Amet dolorem quas qui ut omnis et in. Voluptate sit magnam quo non aliquid tempora dolores. Qui repellendus ut adipisci soluta. Tenetur non quas est rerum veniam temporibus.', 245.00, '2021-08-27', '2021-08-31', 33, 0, 3, 5, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(8, 'Ut voluptas iusto delectus illo ratione culpa voluptatem ut.', 'ut-voluptas-iusto-delectus-illo-ratione-culpa-voluptatem-ut', '577e596e56180f774b9ca2c03a78c2e0.png', 'Dolores ratione alias suscipit ea possimus voluptas. Velit omnis quam tenetur dignissimos. Veniam omnis qui reiciendis sunt qui in soluta. In nemo maiores non et perferendis rerum et. Dolores voluptatibus eaque voluptas saepe. Aut nihil quo voluptatem ut rerum. Ab natus veritatis commodi error vero cumque. Molestiae ut et est ad voluptatem omnis. Esse et quasi et sit repellendus est autem. Quis dolores voluptatem animi autem. Consequatur impedit quae omnis architecto temporibus alias sit. Adipisci officiis non sunt et dolor est labore. Temporibus blanditiis optio fugit assumenda. Repellendus doloremque et fugiat nam commodi eos iste voluptates. Quaerat culpa optio neque minus qui. Ut provident sunt non dolores sit quia. Qui voluptatem consequatur consectetur qui cupiditate. Ipsa nihil mollitia dolores. Dolores minima voluptate cupiditate nihil ullam modi. Dolor qui velit voluptas veniam illum sed qui. Iusto ratione aut aperiam aut id nostrum. Deserunt velit et molestias dolorem. Voluptatem quo aliquid dignissimos reprehenderit. Sequi non animi voluptatem aut.', 306.00, '2021-08-27', '2021-08-31', 53, 1, 8, 9, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(9, 'Aut optio ut illo non itaque est ut praesentium ad voluptatibus.', 'aut-optio-ut-illo-non-itaque-est-ut-praesentium-ad-voluptatibus', 'bcbdf93b6aa3f6ef84425b4e08438f8c.png', 'In suscipit eos ut enim. Rerum et nemo dolorum et assumenda. Corrupti ullam dolore odit voluptatem voluptate. At vel quis officiis voluptate autem aut et. Labore eum id aperiam. Iure reprehenderit assumenda non culpa sed totam voluptas. Ut odit dolore qui iste tempora doloribus. Repellendus quidem omnis inventore sunt. Eius neque ut eos et. Aut qui nulla est quam velit molestiae. Aliquam qui culpa sunt qui natus quia temporibus harum. Nulla omnis eius minima. In hic modi est tenetur explicabo aperiam. Consequuntur qui voluptas quisquam aperiam. Deserunt quod deserunt ipsa iusto id beatae est. Et sint accusamus omnis et dolores quasi quas sed. Harum impedit quas qui. Nobis qui corrupti modi accusantium aut iste deserunt. Ut veniam inventore a harum magni qui eum aut. Veritatis cum asperiores qui adipisci doloribus alias dolores. Error itaque modi doloribus sit eos dolor. Ut non adipisci consequuntur eos modi provident. Facilis autem perferendis velit vel sint nemo occaecati est. Expedita distinctio sit est aut assumenda unde. Rem facere iure voluptas ratione vel. Eaque aut corrupti numquam quas est aperiam. Distinctio iure ipsam est libero necessitatibus. Quo consequatur dolore nisi iste cumque. Distinctio explicabo sed consequatur eligendi. Facilis vero et aliquid. Qui cupiditate illo voluptas autem rem. Voluptatem sit non sit voluptatem quo.', 294.00, '2021-08-27', '2021-08-29', 64, 1, 8, 11, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(10, 'Dolore tempora facilis dolore soluta dolorem soluta optio dicta velit.', 'dolore-tempora-facilis-dolore-soluta-dolorem-soluta-optio-dicta-velit', '21a6f437f1331f3918b3d9c691390866.png', 'Aspernatur aut numquam illo est ratione nemo velit ipsa. Omnis sint esse aperiam et sunt voluptatem. Atque iste omnis et omnis quidem alias enim. Expedita omnis dicta sint sed minima. Sunt facilis qui excepturi possimus. Consectetur maxime dolorum ut recusandae et expedita. Sed magnam expedita et enim quibusdam. Pariatur inventore aut rerum adipisci facilis. Numquam praesentium tempora at ut. Libero odit iure deleniti quibusdam autem aut eum et. Magni rem sint eos asperiores porro. Aliquid ipsum rerum magnam aut soluta ut quaerat. Quo non nostrum id totam. Voluptatem consequuntur consequatur accusamus vero magnam rerum alias. Maxime quasi atque ut. Excepturi excepturi odit ea odio dolores beatae itaque culpa. Eligendi voluptates quia tempora unde ut et. Fugit culpa officia adipisci repellat perferendis laborum. Quidem explicabo et quos amet perspiciatis laudantium dignissimos est. Voluptate accusamus libero mollitia nostrum omnis veritatis quo.', 519.00, '2021-08-27', '2021-08-31', 33, 0, 1, 13, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(11, 'Cumque consequatur occaecati sequi ea sunt neque.', 'cumque-consequatur-occaecati-sequi-ea-sunt-neque', 'afbd4025005c1cff582e3c8acb495179.png', 'Non assumenda delectus assumenda quibusdam perferendis. Ut vitae facere vitae. Eveniet voluptatem voluptates ipsa odio. Tempore quidem eos voluptas. Tempora sunt voluptatem cum aut architecto assumenda. Quis ullam blanditiis quia ea maiores quis. Et earum quae qui inventore sed. Culpa consectetur et et. Minima vitae aperiam soluta recusandae totam occaecati aut. Non et qui at repellendus dolorum a totam. Omnis accusamus voluptatem libero tempore. Voluptas ad aut dolore nobis. Velit rem tempore quaerat velit. Et ducimus aspernatur nostrum velit quia. Qui enim quia non odit totam. Labore totam quam qui aut. Dolor at sit ut eligendi numquam quos dicta. Qui assumenda voluptatem itaque et enim. Quis ducimus sint architecto commodi. Sunt rerum sapiente ipsam qui dolor. Tempora omnis accusamus voluptatem error est sunt. Ducimus nulla neque quae omnis laborum sequi. Culpa iure at eum eius vel quo repellendus. Aut sed nesciunt dolorem est suscipit. Rerum nobis facere voluptatum earum expedita repellat quia. Non doloremque sapiente aspernatur eum dolorem. Neque sit hic non adipisci. Saepe asperiores iure minima autem ea. Quae architecto possimus ullam et. Accusantium beatae delectus quia id. Est iusto culpa qui. Architecto quia dolorum enim doloribus. Qui repellendus eveniet ea cupiditate molestiae cum dolorem totam.', 142.00, '2021-08-27', '2021-08-31', 44, 0, 1, 5, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(12, 'Totam excepturi nihil hic illum qui eveniet quo repellat voluptatem dolores aut voluptas.', 'totam-excepturi-nihil-hic-illum-qui-eveniet-quo-repellat-voluptatem-dolores-aut-voluptas', 'b8652f52d8c22531de77d349f9debecd.png', 'Et nisi fuga molestias. Non ducimus a vitae voluptates eligendi vel hic. Qui et labore ducimus et dolores. Quisquam sint laudantium inventore voluptate ut occaecati. Eos ut sint qui impedit nemo eaque. Quis ea neque laborum. Nulla et eum numquam suscipit aut. Ratione libero quia eius perferendis vel. Occaecati perferendis quia ad excepturi rerum nihil qui. Accusantium vel tenetur ratione in explicabo ut dolorum. Expedita ratione reiciendis eius quia quis magni. Non ut ducimus perspiciatis unde doloremque in consequatur. Quod mollitia voluptatibus dolorem. Nulla reiciendis magnam vero quia recusandae. Et consequatur possimus laudantium eius velit sed nobis cum. Natus quam est quam et et et voluptates. Quaerat voluptatum quo earum aut nihil totam provident. Vel quis voluptatem odio neque qui officiis sunt. Sit harum alias aut laborum id et aut. Et sit voluptas eos corporis sit et. Sunt odio unde nihil rem temporibus incidunt. Ab est ipsam nemo. Voluptatem sapiente maxime ut perferendis assumenda hic. Itaque rem mollitia deserunt adipisci quisquam deleniti error. Ipsam tenetur sequi iste et ut ipsa optio. Perferendis nulla error exercitationem aut sunt accusantium repellendus.', 497.00, '2021-08-27', '2021-08-28', 25, 0, 1, 11, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(13, 'Ut quas veritatis qui in.', 'ut-quas-veritatis-qui-in', 'cb8f881896d33dab98292071ce41c06f.png', 'Omnis provident aut quas sit repellat. Et et voluptatem illo soluta praesentium blanditiis. Nesciunt quia nobis minus non qui deserunt in quis. Quae soluta culpa nesciunt. Est ea officia alias placeat a. Et non commodi sint maxime. Voluptas qui quia est consectetur vel pariatur. Suscipit rerum eaque dignissimos aliquam ea unde aut natus. Modi voluptatem tempora iure accusantium vel et ut nobis. Officia fugit aliquid doloremque hic. Temporibus repellat ipsam nobis ex. Et velit cum delectus adipisci. Odit est perferendis aut. Amet id eum deserunt sit harum. Dolor facere et cumque facilis saepe. Accusamus nobis aut sed velit. Qui eos fugit quo illum eos. Voluptas itaque error nihil magni et qui qui. Enim hic quia aut dolore amet dignissimos ut. Repellendus est voluptatem rerum quos sed. Eaque quo ratione qui accusamus. Dicta reprehenderit iste nisi. Aut enim ipsum dolor optio soluta harum. Repellat qui voluptatem aut eius.', 238.00, '2021-08-27', '2021-08-31', 68, 1, 4, 2, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(14, 'Nemo dolor inventore totam excepturi facilis quia non omnis.', 'nemo-dolor-inventore-totam-excepturi-facilis-quia-non-omnis', '3100733e89194c1d9ebfcd50987fb4f0.png', 'Dignissimos doloribus dicta praesentium perferendis officia dolor ducimus dolor. Ad cupiditate facilis repudiandae enim est expedita. Consectetur deserunt et minima. Incidunt porro et et odio veritatis iusto. Consequatur repudiandae sed labore sit. Suscipit nihil id ut ut sit voluptates ipsum. Sed enim nihil et reiciendis maxime. Atque unde pariatur ea sit. Et ut rerum asperiores blanditiis. Libero aliquam qui aspernatur ad debitis veniam. Iure est sint et consequatur eveniet. Nemo repellat est quidem numquam aliquid sit. Amet officia incidunt rem aut est. Qui tempora mollitia expedita ducimus ut nemo temporibus occaecati. Iure minus eligendi odit ab. Perferendis ut voluptate veritatis optio beatae placeat consequatur. Et error amet sint qui aut. Delectus sequi dolore eius quasi. Commodi iure facilis recusandae. Accusantium aut laudantium aut eligendi dolorem. Natus est sint et voluptatem. Quaerat pariatur commodi deleniti aperiam culpa aut ducimus. Aut placeat reprehenderit accusantium aspernatur velit sunt explicabo.', 272.00, '2021-08-27', '2021-08-31', 12, 0, 1, 11, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(15, 'Blanditiis quaerat quis molestiae autem tempora et ut eum asperiores qui quis fugit assumenda et.', 'blanditiis-quaerat-quis-molestiae-autem-tempora-et-ut-eum-asperiores-qui-quis-fugit-assumenda-et', 'a7ca29238eb80476030a42bd076e4f9d.png', 'Aut aut enim praesentium voluptate. Distinctio qui voluptatem harum voluptatem omnis laboriosam qui. Nisi quae et deleniti illo voluptatem et nesciunt. Id facilis exercitationem veniam sint omnis nulla libero. Doloribus id enim sed ratione error quaerat voluptatem. Nam est sit asperiores quo consectetur cum. Vero a porro asperiores deleniti porro. Ut ut similique qui et. Atque eius et repellat amet nemo ipsa. Eum ipsa officiis qui qui molestias ducimus. Non architecto explicabo ab sint dolorem est. Maxime illo tempore saepe nostrum voluptate non aliquid. Quidem blanditiis labore non. Optio est labore corporis voluptatem. Tenetur nisi quo impedit dicta quia distinctio natus explicabo. Ullam maxime dolorem modi molestias distinctio. Ut deleniti expedita est ipsam occaecati est est. Repellendus sunt animi sapiente harum. Error hic magnam rerum cum ut placeat voluptates. Voluptas sint beatae voluptas. Dolorem ex incidunt blanditiis rem ex dolor.', 401.00, '2021-08-27', '2021-08-28', 71, 1, 1, 11, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(16, 'Doloribus et dolorum voluptas reprehenderit consequatur et et omnis sit dolore iste vel quia.', 'doloribus-et-dolorum-voluptas-reprehenderit-consequatur-et-et-omnis-sit-dolore-iste-vel-quia', '13ba56c3f0c6dfe009e92c6c6b5f742b.png', 'Est et reprehenderit sed rerum consequatur aperiam et. Velit molestiae explicabo autem quam blanditiis ex qui. Ipsa corrupti et culpa expedita autem quos quae. Officiis voluptas cum distinctio. Mollitia debitis architecto saepe veniam qui et et. Error voluptates ut accusamus minus reiciendis aut. Sunt quia perspiciatis et voluptatibus adipisci id. Beatae et quasi tempore. Neque aliquam accusamus dolorem qui eius animi quia et. Consequatur sit asperiores dolorem exercitationem. Error sunt necessitatibus blanditiis temporibus. Fugit numquam distinctio sed molestiae quia est est. Aut ipsum aliquam et quia rerum consectetur quis. Est natus ut qui perferendis incidunt debitis. Consectetur quaerat nisi natus recusandae et culpa quasi. Autem dolorem quas numquam non quod. Aut ad qui nostrum porro provident quas est. Doloribus dolor repellat sed repellat minus. Maiores in non eum consequatur. Quo quia sunt quo quis sit maxime sint. Ab eaque voluptatem numquam minus. Minima ipsum explicabo eveniet. Error qui repudiandae quia perspiciatis. Dolor omnis sapiente nemo totam optio excepturi. Assumenda nihil molestiae quod aut. Quisquam facere sint ut et aut atque cum. Pariatur aliquam qui labore qui aliquid quae velit. Quaerat sunt molestiae officia distinctio quas qui.', 65.00, '2021-08-27', '2021-08-31', 87, 1, 8, 11, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(17, 'Est corporis nihil facilis dignissimos quia minus iste.', 'est-corporis-nihil-facilis-dignissimos-quia-minus-iste', '5e5a3199d676478ae9d1b849482f1b83.png', 'Atque rerum facilis enim qui sit aut. Itaque cum ut consequatur occaecati voluptas nulla non. Assumenda tenetur in quas sunt. Beatae delectus odit voluptatibus quis. Porro tempore error quo rerum qui voluptate. Et molestias velit inventore et. Velit perspiciatis dicta voluptates tempora. Aut vel qui numquam incidunt voluptate doloremque suscipit. Eum velit officia blanditiis ex recusandae. Velit distinctio repellendus et qui illo. Excepturi illo quasi nam eum eum sint. Odio voluptas at perferendis rerum rerum incidunt soluta. Id corporis suscipit est animi. Qui qui fugiat deserunt impedit. Nam amet sed et est cum laboriosam. Dolore et et qui omnis aut esse consequuntur deserunt. At optio incidunt autem. Voluptas vel harum fuga voluptate voluptatem. Autem dolores nemo nesciunt aut in inventore. Illum delectus harum debitis alias provident sit minus. Sit quo voluptas tempore quidem. Dicta aperiam sunt et quia.', 334.00, '2021-08-27', '2021-08-29', 37, 0, 1, 4, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(18, 'Aut exercitationem dicta exercitationem tempora incidunt quia quis facilis nobis recusandae ut nisi.', 'aut-exercitationem-dicta-exercitationem-tempora-incidunt-quia-quis-facilis-nobis-recusandae-ut-nisi', '7891d4f6c1f4441942db89ded1d4c76a.png', 'Id et nihil dolorem et repellendus aut. Rem vero saepe est accusantium ut. Amet et laborum eligendi dolorum. Et laudantium et consequatur sit et quod. Fuga dolor rerum molestiae in vel repellat. Soluta laudantium dolores esse ut dolor voluptatibus. Sit a numquam aperiam impedit et magni. Officiis aut voluptatem labore aut aliquid. Officiis ipsum laborum minus dolorum enim delectus maxime odit. Reprehenderit et eos quis sunt et quia. Sint in rem omnis. Reiciendis fuga rerum et eum eligendi minima exercitationem. Consequatur assumenda eligendi quae non magnam. Vitae ratione omnis dolores ut aut dolorem nemo quibusdam. Consequatur harum deleniti quod minus. Et quia accusamus qui sunt quibusdam. In mollitia quidem voluptatibus eius velit. Quisquam velit doloremque architecto qui nostrum dolor sunt. Qui sunt impedit provident commodi eius ipsa modi. Molestiae mollitia quae error incidunt quod ea mollitia. Exercitationem unde reprehenderit tenetur ab. Iusto eum et quidem eos. Ut voluptas voluptate deleniti consequatur. Eius quis modi sed nulla similique. Accusantium sequi voluptatum sequi illum numquam voluptas. Et at dicta sit vel ut. Eligendi amet perferendis ut minus. Distinctio dolor amet beatae velit rerum. Qui blanditiis nihil unde veritatis. Error maxime quo reprehenderit impedit.', 585.00, '2021-08-27', '2021-08-29', 16, 0, 3, 12, '2021-08-27 08:01:52', '2021-08-27 08:01:52'),
(19, 'Aut facilis suscipit molestiae et doloribus ipsa.', 'aut-facilis-suscipit-molestiae-et-doloribus-ipsa', 'd4612616014e8da45b4d266448ba238a.png', 'Iure ut ea quia provident. Ipsam voluptates qui excepturi eum. Expedita quo quia explicabo rerum saepe eos. Illum voluptatem delectus fugiat molestiae. Pariatur suscipit voluptatum explicabo laborum nostrum modi nesciunt. Excepturi ex ab maxime quae. Ea perferendis dolor dicta modi inventore enim asperiores. Necessitatibus labore ipsam ut vitae voluptatem ad beatae. Error dolore et rem. Provident molestiae et eum qui dolorem eos. Dolor aliquid dignissimos qui ut atque officia. Aliquam sed voluptatem placeat saepe quia molestias vitae. Aliquid sunt officiis rerum cupiditate in quia qui. Mollitia quibusdam voluptatum reprehenderit amet odit error. Adipisci voluptatem facere nostrum recusandae. Qui autem et minima sunt adipisci. Est quibusdam exercitationem similique. Provident consequatur quam quisquam voluptas eos repellat hic. Sint dolorem labore ducimus eaque.', 194.00, '2021-08-27', '2021-08-29', 64, 0, 1, 5, '2021-08-27 08:01:53', '2021-08-27 08:01:53'),
(20, 'Quod autem sint similique earum ut.', 'quod-autem-sint-similique-earum-ut', 'f59b44073aa2053c1eea2502ceeab9ae.png', 'Et incidunt omnis quam aut exercitationem rerum praesentium excepturi. Amet cupiditate magni incidunt rerum assumenda harum. Ea hic tempore ab sit minima sint aut sit. Est non cupiditate voluptas similique. Sint velit fugit natus consequatur. Cum vitae est voluptatem enim reprehenderit. Et molestiae nesciunt nihil ducimus dolorum sunt. Quasi iure est suscipit nobis blanditiis laudantium. Est non voluptas fugit eos. Quod amet vel ipsum vel rerum. Consequatur id sed maiores natus debitis velit perspiciatis. Necessitatibus consequatur sed placeat qui illo. Voluptatem aperiam quidem est non amet. Laudantium odit nulla in aut alias. Doloribus repudiandae qui quia cumque. Architecto voluptatem accusamus necessitatibus perspiciatis rem est et. Et et assumenda similique. Voluptas dolorem qui voluptatem omnis exercitationem. Fuga quasi reprehenderit est laboriosam ad sequi. Ut et est unde porro mollitia maxime labore. Qui qui laborum voluptates. Eveniet laudantium ab excepturi nobis. Vitae iste odit molestiae possimus tempora.', 428.00, '2021-08-27', '2021-08-31', 24, 1, 4, 9, '2021-08-27 08:01:53', '2021-08-27 08:01:53'),
(21, 'Eligendi velit ab iure omnis adipisci quis dolor.', 'eligendi-velit-ab-iure-omnis-adipisci-quis-dolor', '8af8ae9c4a08cb521cccd14c4dc93798.png', 'Nihil ut debitis aliquam neque accusantium similique ducimus animi. Odio id officiis officiis explicabo ad. Ut nesciunt illum est corrupti dolores ducimus. Autem ut soluta eius omnis eligendi. Ipsam dolorem doloremque id atque distinctio ratione. Voluptatem illo et blanditiis. Sunt facere reprehenderit nam asperiores quo. Et accusamus sapiente consequatur excepturi rerum id ipsam dolorum. Quaerat animi fuga vitae commodi. Deleniti neque molestiae corporis voluptates nihil possimus. Odit soluta tempora dicta eligendi et esse aspernatur harum. Ratione ab non consequatur at. Culpa corporis tempora magnam. Reiciendis sunt sunt itaque. Iure odio nobis doloribus. Dolores eaque numquam atque. Velit sit omnis commodi quis unde minima. Assumenda deserunt nisi sed fugiat sunt eveniet quis. Dicta ducimus eius voluptas sed minima hic. Consectetur et voluptas in natus non aliquid. Eum inventore doloribus vitae modi odio reprehenderit. Doloribus fugit praesentium molestiae ut perspiciatis rerum accusamus quia.', 586.00, '2021-08-27', '2021-08-28', 78, 1, 4, 12, '2021-08-27 08:01:53', '2021-08-27 08:01:53'),
(22, 'Fugit et repellat veritatis blanditiis tempora aliquid aut quaerat quam minus aut voluptas.', 'fugit-et-repellat-veritatis-blanditiis-tempora-aliquid-aut-quaerat-quam-minus-aut-voluptas', 'edcb489cf59aaabbd98c58351191bf41.png', 'Rerum exercitationem itaque libero iusto est id. Labore dicta dicta nam. Eum aut est id sed repellat esse. Omnis non qui id nulla. Animi illum provident officia aspernatur. Sint est atque veritatis et et expedita impedit quasi. Et libero ratione consequatur molestiae vel voluptates in. Qui ea et cumque hic ratione. Ipsam quia dolorem provident voluptatibus ullam ipsum. Repudiandae eius et aut dolor. Qui cumque mollitia optio deleniti enim eaque. Hic error et mollitia non maiores quod omnis. Vitae voluptate quo voluptas ullam quod et repellat. Rerum est qui ad consequatur debitis et. Et animi ipsum voluptatum iste beatae animi. Fugit excepturi quaerat voluptatem autem aut a neque. Quia vitae sed sit numquam ea. Temporibus cumque minima sit maxime. Qui est quia labore facere rem quaerat nihil. Ut facere ipsum laudantium molestiae maxime repellat ab. Est maxime occaecati id et omnis nihil eveniet. Fugiat laborum quam dolores perferendis occaecati explicabo. Laboriosam dolores rem consequuntur voluptatum perferendis. Quibusdam magnam non accusamus eos velit impedit ad. Recusandae molestiae voluptatem voluptatum et. Vitae recusandae aut nobis consequatur. Non impedit sapiente ea voluptatem quia dolorum.', 78.00, '2021-08-27', '2021-08-29', 6, 1, 3, 2, '2021-08-27 08:01:53', '2021-08-27 08:01:53'),
(23, 'Recusandae illo iure inventore temporibus assumenda et sed quae.', 'recusandae-illo-iure-inventore-temporibus-assumenda-et-sed-quae', '206d5b2c9f96eb0bcdc50fe25cc63a3f.png', 'Ullam expedita repellendus occaecati sit voluptatem. Et deserunt dicta aperiam dolores minima. Omnis vel dolores excepturi quam et illum nostrum. Commodi corporis eveniet dicta excepturi voluptatem sapiente culpa omnis. Sed enim cum earum ex. Reiciendis accusantium quas sed eveniet debitis ab. Accusamus ullam deleniti nobis non perspiciatis modi totam sit. Beatae provident sed rerum est dolorum. Aut dignissimos eos nisi architecto. Sed quisquam omnis quibusdam qui quisquam magni omnis. Eligendi ea doloremque aspernatur ut tempore tempore. Dolorum consequatur sit alias architecto odio necessitatibus. Assumenda ipsam eligendi quaerat provident autem veritatis. Eaque mollitia sint qui totam natus voluptatem facilis voluptatem. Nisi labore est mollitia libero omnis. Unde saepe consectetur iure et et consequatur repudiandae totam. Facere ut voluptas odit error laboriosam. Veniam qui debitis sit nemo tempore omnis. Libero est enim sit autem porro. Est ab in ipsum similique in corporis.', 577.00, '2021-08-27', '2021-08-29', 49, 1, 8, 2, '2021-08-27 08:01:53', '2021-08-27 08:01:53'),
(24, 'Maiores consequatur voluptate ea suscipit nostrum quis veritatis id.', 'maiores-consequatur-voluptate-ea-suscipit-nostrum-quis-veritatis-id', 'b898fc472264e4249cda671f804f85f2.png', 'Qui totam veritatis aut vel et consequuntur. Deserunt laboriosam est vitae nihil repudiandae ea. Ipsum ut dolores non laudantium. Quia dicta soluta repellat rerum odit consequatur qui nobis. Dignissimos explicabo inventore ipsam voluptatem et dolor eaque. Pariatur dignissimos autem maiores. Sit sint impedit ducimus deserunt. Illo fugiat voluptate rerum voluptate et eos. Rem voluptas quam doloremque dignissimos id. Possimus optio est in omnis qui. Expedita aperiam molestiae error et ex. Nobis dolores eveniet officia. Corrupti possimus eos excepturi et consectetur impedit ut. Beatae doloremque quasi fugiat quaerat tempore in voluptatem. Maiores quos vitae blanditiis qui quibusdam. Cupiditate vitae voluptatibus non provident. Error odio asperiores et labore doloribus. Accusamus dolore accusamus in quis consectetur vel. Fugiat quaerat autem minima commodi sequi sed. Reprehenderit aliquid et unde autem ipsam voluptate. A commodi et labore provident a. Cumque velit deleniti eum blanditiis. Qui et dignissimos dolores et reprehenderit. Et consectetur nobis minus iure ducimus minus dolorum. Deleniti voluptas nihil quas velit aut. Asperiores cum qui voluptas aut. Corporis aspernatur laborum rem debitis commodi provident amet. Recusandae omnis illo unde beatae quia repellendus. Error maiores qui omnis enim eligendi repellat aut nemo.', 327.00, '2021-08-27', '2021-08-31', 92, 0, 8, 2, '2021-08-27 08:01:53', '2021-08-27 08:01:53'),
(25, 'Laudantium aut quam necessitatibus vel dolores impedit qui corrupti deserunt et.', 'laudantium-aut-quam-necessitatibus-vel-dolores-impedit-qui-corrupti-deserunt-et', 'e830abcbcb0a7dca41e789a2e438d374.png', 'Aperiam consequatur facere aperiam eaque fugit. Tempora libero neque sed officiis vero rem. Et nam mollitia nemo eligendi. Consequatur voluptate aut qui sed qui dolor deleniti similique. Quam amet recusandae est autem quasi. Velit magni aperiam quas enim dolorum harum. Omnis quas architecto illum ipsum. Corrupti dolorem aut dignissimos. Harum fugiat dolorem ut. Omnis odit ut voluptas est nisi. Suscipit nihil sed eos cupiditate. Velit fuga minus voluptatem sunt modi. Nesciunt est nobis magnam dolorum. Voluptas rerum et alias ut nemo ducimus. Ut cum hic nam esse enim rerum repellat. Unde voluptatem velit cum numquam. Voluptas voluptate placeat tempora. In ipsa in qui quae in. Qui natus molestiae est odit. Molestiae enim minus libero et impedit. Perspiciatis nihil qui dolorum laboriosam facilis eum eos. Eius quis qui rerum. Ullam porro voluptatem ut. Id sed exercitationem accusantium rem reiciendis facilis provident. Omnis amet veritatis et voluptates a temporibus cum. Ab optio aut accusamus cumque molestias. Ut molestias laudantium doloremque illum placeat. Ut perspiciatis rerum eum aut.', 301.00, '2021-08-27', '2021-08-30', 63, 1, 8, 12, '2021-08-27 08:01:53', '2021-08-27 08:01:53'),
(26, 'Voluptas et laboris porro quia', 'voluptas-et-laboris-porro-quia', 'XYHHqxuTaJHwJhNrIemcAHxxZ96leTFIi77AXTC6.jpg', 'Animi, eu sunt id cillum consequunt.d', 835.00, '2021-11-12', '2021-11-13', 23, 1, 8, 1, '2021-11-12 17:19:29', '2021-11-12 17:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `course_id`) VALUES
(1, 3, 15),
(2, 2, 9),
(3, 10, 8),
(4, 2, 13),
(5, 2, 1),
(6, 8, 23),
(7, 11, 23),
(8, 10, 25),
(9, 13, 1),
(10, 3, 2),
(11, 7, 22),
(12, 10, 13),
(13, 1, 15),
(14, 7, 2),
(15, 9, 20),
(16, 10, 1),
(17, 3, 9),
(18, 1, 8),
(19, 10, 8),
(20, 9, 9),
(21, 9, 16),
(22, 9, 1),
(23, 13, 16),
(24, 12, 8),
(25, 10, 22);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `likeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likeable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(58, '2014_10_12_000000_create_users_table', 1),
(59, '2014_10_12_100000_create_password_resets_table', 1),
(60, '2019_08_19_000000_create_failed_jobs_table', 1),
(61, '2021_06_02_081830_create_categories_table', 1),
(62, '2021_06_03_065517_create_courses_table', 1),
(63, '2021_06_04_164951_create_videos_table', 1),
(64, '2021_06_05_135736_create_jobs_table', 1),
(65, '2021_06_05_193426_create_tags_table', 1),
(66, '2021_06_06_111621_create_taggables_table', 1),
(67, '2021_06_08_140455_create_posts_table', 1),
(68, '2021_06_10_224639_create_sliders_table', 1),
(69, '2021_06_11_225041_create_slider_images_table', 1),
(70, '2021_06_19_083932_create_comments_table', 1),
(71, '2021_06_20_185444_create_visitors_table', 1),
(72, '2021_06_20_224437_create_likes_table', 1),
(73, '2021_06_22_180910_create_ratings_table', 1),
(74, '2021_06_26_222254_create_notifications_table', 1),
(75, '2021_06_29_193421_create_favorites_table', 1),
(76, '2021_06_30_220209_create_user_follow_table', 1),
(77, '2021_11_12_052515_create_permission_tables', 2),
(79, '2021_11_12_080420_create_logs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(5, 'App\\Models\\User', 15),
(6, 'App\\Models\\User', 15),
(7, 'App\\Models\\User', 14),
(12, 'App\\Models\\User', 14);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(9, 'test', 'web', '2021-11-12 05:31:52', '2021-11-12 05:31:52'),
(10, 'sdfasdf', 'web', '2021-11-12 05:32:21', '2021-11-12 05:32:21'),
(11, 'sdfbxcvz', 'web', '2021-11-12 05:32:26', '2021-11-12 05:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `desc`, `image`, `visibility`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Esse qui quia enim provident dolor dolorum dolorem voluptatem officiis.', 'esse-qui-quia-enim-provident-dolor-dolorum-dolorem-voluptatem-officiis', 'Vero voluptatem rerum blanditiis voluptatem quibusdam et enim. Quia nihil molestias quae facere modi laborum. Qui praesentium eveniet consequatur modi sed reprehenderit. Iure nesciunt accusamus ad qui. Ipsa et sed ad alias placeat odio quae. Animi tenetur officiis provident corrupti. Aut quaerat quae impedit qui alias eos sit. Assumenda alias numquam ducimus sed temporibus. Temporibus tempore nulla ut enim et dolorum id. Nisi exercitationem ea molestias et sed. In ad molestias ad molestiae consequatur ut. Et quo et doloremque est ab et. Quidem nulla cumque enim beatae. Doloremque tempore deleniti ut at eligendi ipsa voluptas. Velit eum dicta rerum voluptas dolores vel. Saepe dolores est porro qui. Illum in reiciendis quibusdam saepe praesentium. Et rerum quasi eaque incidunt cum laudantium id. Repudiandae est incidunt possimus ad et et nesciunt. Animi iste doloribus repellendus incidunt. Dolore itaque temporibus nam quia. Aliquam at et nihil unde quaerat. Debitis ipsa et omnis et amet. Explicabo assumenda autem ad fugit velit ad. Asperiores facere ab voluptas qui laborum at ut.', 'abf2f750f23f3a17d3e5191ba56df985.png', 1, 8, 12, '2021-08-27 08:02:54', '2021-08-27 08:02:54'),
(2, 'Perspiciatis molestias nisi deserunt quos voluptatem dolorem sit rerum hic possimus amet incidunt.', 'perspiciatis-molestias-nisi-deserunt-quos-voluptatem-dolorem-sit-rerum-hic-possimus-amet-incidunt', 'Eligendi expedita suscipit distinctio. Tenetur expedita dicta nostrum. Natus expedita eaque nemo eius sequi. Voluptas ea ducimus magni nam libero et harum. Voluptas iusto aut qui non quis et. Aliquam vel maiores iusto sit eos. Ad nam facere aut maxime reiciendis voluptate voluptate. Hic explicabo aliquid rerum at. Expedita vel debitis quia dolore. Provident ad temporibus necessitatibus nihil sunt et natus recusandae. Autem fugiat in explicabo sunt. Eos nobis maiores quod eius accusamus explicabo cum alias. Fugit aut perspiciatis dolor vero ut. Maxime voluptatem minima et officiis in. Similique est magnam modi explicabo et aut. Et doloremque quaerat quaerat omnis. Et deserunt et sunt reiciendis. Quae ea nam rem sed placeat quisquam. Rem labore et pariatur nobis quod quis. Aut inventore iusto odit fuga animi distinctio. Velit ut occaecati et impedit nisi. Amet eligendi veniam ipsam veniam voluptas ut. Eius magnam consectetur aliquid blanditiis dignissimos. Dolorem ut veniam mollitia inventore. Ex eum magnam cupiditate quibusdam sit laudantium reprehenderit omnis.', '5c58868c1a0e57bf39c5d24c7f4e5677.png', 0, 1, 9, '2021-08-27 08:02:54', '2021-08-27 08:02:54'),
(3, 'Vero quibusdam quo animi nemo fugiat et vitae.', 'vero-quibusdam-quo-animi-nemo-fugiat-et-vitae', 'Hic est corrupti pariatur voluptate et molestiae in rerum. Recusandae odit eos incidunt. Similique quaerat inventore aut debitis hic quo veritatis. Et nisi ratione possimus. Sunt est aperiam ut aut sit. Voluptatum eum consequatur quisquam debitis voluptatem. Architecto fugiat velit quo est alias ullam quod reprehenderit. Nulla praesentium consectetur quidem non iusto modi doloribus. Perferendis asperiores ipsa commodi labore. Et aperiam error deserunt eligendi sunt. Optio veritatis pariatur unde a delectus commodi eum. Exercitationem consequatur nostrum sit omnis. Ea rem laborum amet. Eum error cum adipisci consectetur delectus. Quis saepe non deleniti tempore placeat. Sunt odio dicta qui repellendus. Officiis ipsa officiis tempore blanditiis suscipit aut. Id laborum nobis qui velit. Nesciunt mollitia esse minus iste. Nesciunt consequatur eum in quibusdam iusto voluptas aut totam. Eum porro pariatur autem dolor et. Tempora pariatur assumenda rerum qui a. Corporis possimus voluptatem eligendi. At nostrum aut accusamus ut harum illo. Perferendis doloremque repellat nihil. Rerum quos voluptatem sunt omnis. Molestias odit maxime corporis unde autem perferendis non voluptatem. Accusamus eveniet non ipsam ut eum ratione.', '62d40721f78920aa512f1c07992deaff.png', 1, 4, 13, '2021-08-27 08:02:54', '2021-08-27 08:02:54'),
(4, 'Architecto qui nostrum explicabo enim minus fugit facere quos.', 'architecto-qui-nostrum-explicabo-enim-minus-fugit-facere-quos', 'Provident in illum natus laborum beatae sunt officia. Sint facere id distinctio quia. Aut possimus earum quidem est et. Voluptates sint ipsam aspernatur sit eum est. Cupiditate aliquam ut autem tenetur ut autem eum. Deleniti quisquam aut et architecto ut. Ipsa minus vel ut voluptates. Et incidunt cumque unde sunt dignissimos animi. Nisi dicta eligendi ex eos officia perferendis. Explicabo sit quia nemo id velit. Qui eius beatae in dolores officiis. Et optio distinctio eum cum et architecto. Eos nisi cum dignissimos. Distinctio temporibus ea ut quisquam dolores ut consequuntur. Cupiditate ducimus eveniet odit amet rerum sunt beatae. Maiores corrupti asperiores nostrum consequatur voluptatibus. Non corporis placeat explicabo tenetur ad. Suscipit amet nisi quasi porro qui et quis. Facilis eligendi repellat autem reprehenderit et labore voluptatem. Iste possimus eaque ipsam magni. Necessitatibus soluta earum et aut assumenda iure rerum. Necessitatibus quisquam optio repudiandae temporibus iure autem. Illo libero magni vero sunt omnis sit. Quia et omnis deserunt minima architecto libero dolorum. Eligendi sed architecto qui. Sint et sequi et est. Atque soluta tenetur repellendus dolore odit officiis voluptates. Et sed voluptas tenetur voluptatem. Tempore deserunt perferendis ut enim. Veniam iusto eum consequatur aut nobis distinctio. Sit qui et qui nihil fugit in. Sunt totam vero rerum.', '0d015a23bd4da3983abf3c42ba66567f.png', 1, 1, 12, '2021-08-27 08:02:54', '2021-08-27 08:02:54'),
(5, 'Id voluptatem explicabo aspernatur dolor ut laudantium illo ab ea illo hic soluta.', 'id-voluptatem-explicabo-aspernatur-dolor-ut-laudantium-illo-ab-ea-illo-hic-soluta', 'Eos nulla nulla et perspiciatis dolores maxime hic. Ab aliquam illo aut nesciunt est non enim. Dolores aliquid error dolores nihil sed. Quis quaerat laudantium rerum qui assumenda ut voluptate adipisci. Ut quia distinctio possimus quisquam nostrum voluptas enim quo. Similique facilis est voluptas illo. Sit impedit fugit quasi aut minus et. Dolor officia enim nam aut at. Vero voluptatem non qui dolorum eum et quod. Qui voluptatem aut aut et est. Porro nisi et asperiores voluptas voluptatibus ab. Necessitatibus at et laudantium iusto quisquam et odio. Porro eum ducimus ut ipsam. Eum fuga sint quisquam velit repudiandae. Eaque et sint aspernatur beatae non quos omnis. Dolor aut distinctio aut perspiciatis minus tempore at doloribus. Omnis qui pariatur asperiores. Quidem sit doloribus minima. Nesciunt facilis rem veritatis consequatur. Beatae enim eos molestias. Ut perspiciatis perferendis et neque laudantium doloremque dicta. Voluptatem sint amet sint. Velit ipsa optio est eos quia hic nam. Molestiae in quisquam rem et quia minima optio. Nesciunt earum enim expedita nisi. Fugiat vero id est temporibus.', '0a9d9fdf092be64d605c55050a9ce2de.png', 0, 3, 5, '2021-08-27 08:02:54', '2021-08-27 08:02:54'),
(6, 'Et est eveniet eius aut.', 'et-est-eveniet-eius-aut', 'Delectus nisi aut asperiores qui et. Porro iure illo debitis minima. Repellendus vel perferendis amet eum iusto ratione reprehenderit autem. Illum dolorem aut rerum aut. Qui nam in et est ut. Iusto quasi commodi quae sequi magni. Laboriosam itaque in dolores eum. Eaque quis voluptas maiores sunt est veritatis unde. Asperiores voluptas ex corporis. Et ea recusandae animi pariatur. Inventore nihil necessitatibus illo ut et eaque. Laborum iusto et sed voluptatem laborum maiores. Aliquam enim aut voluptates eligendi quia. Ut qui eligendi excepturi eveniet voluptatem delectus autem. Sint officiis qui veritatis optio dicta. Impedit debitis magni a voluptas et et rem. Id vel exercitationem perferendis autem. Consequuntur natus enim ab vero. Aperiam adipisci ad aut commodi aspernatur. Autem eligendi hic repudiandae voluptatem corrupti aut temporibus. Non et aut et laudantium enim deleniti et consequuntur. Ipsa consequatur sit eum nobis quia. Officiis eum nostrum nisi occaecati et.', 'b1fbd24aaaabfd3a5555ca524204efc5.png', 1, 1, 13, '2021-08-27 08:02:54', '2021-08-27 08:02:54'),
(7, 'Ipsam ullam voluptas voluptatem aut eum totam eum ut explicabo et velit voluptas officiis eum natus.', 'ipsam-ullam-voluptas-voluptatem-aut-eum-totam-eum-ut-explicabo-et-velit-voluptas-officiis-eum-natus', 'Aut temporibus at adipisci vel non. Eos iusto cum aut velit esse. Doloribus necessitatibus vero occaecati. Molestiae est voluptatibus deleniti nisi officiis. Et et repellendus esse deleniti. Harum dolorem tempora amet. Eos consequatur vel ullam consequatur repudiandae est. Soluta dolore est necessitatibus error suscipit sunt alias. Quae sit voluptate a non voluptatem ut veritatis officiis. Cupiditate qui quas unde cum est quam. Et quia voluptas alias dolor. Dolorem optio quo libero earum alias alias. Minima harum repellendus perferendis a neque velit veritatis. Illum voluptas voluptatum itaque quia id quo voluptatum. Praesentium maiores non ab et. Cum totam dolores voluptas voluptas labore qui quibusdam. Nulla laudantium consectetur quia laborum id voluptatem eos. Similique officiis delectus et consequatur. Dolorum natus deserunt voluptates aperiam id similique. Aut voluptatem animi consequuntur quia consequatur. Nobis officiis reiciendis aut fugiat cum illo. Possimus qui placeat fuga accusamus. Nisi placeat ut aliquid.', 'd5ae89fdce6f05db0516f7d13c8db19e.png', 1, 8, 11, '2021-08-27 08:02:54', '2021-08-27 08:02:54'),
(8, 'Ullam maxime quasi est quas harum.', 'ullam-maxime-quasi-est-quas-harum', 'Sunt sapiente fuga voluptatem aliquid architecto repellendus cum. Et repellat omnis nostrum atque. Modi hic sint cumque rem esse voluptatibus laborum. Nihil unde et ut quaerat maiores tenetur. Ad eos soluta non rem aut exercitationem consequatur. A veniam et sit dolores ut voluptatem. Et incidunt dolores nihil quod incidunt. Voluptatem et optio quas sit velit. Est eum exercitationem molestiae autem similique praesentium qui. Nobis debitis exercitationem dolores explicabo amet nam alias. Molestias et consequuntur itaque sint iusto modi. Quia aut sit sapiente natus amet est sit quisquam. Ducimus veritatis mollitia id rerum quia excepturi et. Voluptatum assumenda inventore asperiores qui vero modi non. Omnis ea ab nobis similique. Libero cum qui officia rerum. Sint ratione dolorem non ipsum sunt aliquid. Sint illo assumenda sit a. Debitis vel exercitationem vel alias fuga. Ipsa rerum sunt et consequatur et non. Est quia temporibus inventore natus et. Itaque adipisci accusantium placeat perspiciatis et. Voluptatum corporis dolor doloribus similique delectus culpa qui ut. Odit optio iusto eos in numquam saepe. Accusamus sed maiores et qui. Eos aliquid quas ea sint. Hic incidunt dolores ut maiores.', 'd2e32ffc1e7e95a88336dc9bb5af0bdc.png', 1, 1, 13, '2021-08-27 08:02:54', '2021-08-27 08:02:54'),
(9, 'Autem voluptatem numquam sit culpa rerum.', 'autem-voluptatem-numquam-sit-culpa-rerum', 'Iusto perferendis cupiditate dolor saepe nulla sapiente quo quis. Esse quisquam dolore quo qui rem. Asperiores voluptatum placeat tenetur dolor repudiandae vitae magni. Dolore quidem aut odit quia error suscipit. Nobis vel dolorem omnis non voluptatem. Qui rem at tempore in. Et quidem nemo sunt omnis. Nostrum quia et illo dicta omnis velit vitae. Et autem sunt quis voluptatibus quas nobis optio. Incidunt qui rerum magni eos vel est sint minima. Impedit possimus ex provident ullam aut corrupti sunt. Voluptatem aut veniam facilis quasi molestiae cupiditate. Pariatur accusantium dignissimos et ut at consequatur. Est nisi porro odit dolores enim quas. Ut temporibus quo culpa qui nesciunt consequatur. Quo officiis nobis et. Deserunt animi vel dolor fugiat quod laudantium est tempora.', 'd5ba7afe8e3b46d2a4ad41da07c5e929.png', 1, 1, 2, '2021-08-27 08:02:54', '2021-08-27 08:02:54'),
(10, 'Impedit in veniam laboriosam ducimus accusantium eum et fugiat occaecati maxime.', 'impedit-in-veniam-laboriosam-ducimus-accusantium-eum-et-fugiat-occaecati-maxime', 'Officia omnis explicabo nulla et quia aut. Ut consequatur porro aut tenetur quod delectus. Ea omnis accusamus accusamus et officiis dolores beatae. Accusamus tenetur et dolor quibusdam. Magni accusantium debitis voluptas ipsa in laudantium numquam. Similique commodi est velit quisquam et. At quis nesciunt neque sed a veritatis. Cumque non est quia et hic est quod. Est aut ut deserunt facilis quisquam numquam. Sit nostrum quaerat saepe ut molestiae. Tempore rerum pariatur velit tempore ullam. Perferendis consequatur fugiat eveniet aspernatur. Asperiores quam adipisci in veritatis dicta laboriosam laborum. Porro quibusdam dicta nisi nihil enim voluptate adipisci. Dicta rem non sunt occaecati. Laudantium sunt culpa qui neque est omnis qui. Sint eligendi nostrum in est omnis aut veritatis. Laudantium repellat ut saepe. Doloribus sint ut tenetur sint molestiae sit non. Aut explicabo sed dignissimos dignissimos et quisquam. Occaecati inventore atque nemo voluptas harum nesciunt natus. Quia deleniti maiores veniam corrupti eveniet nihil qui. Provident pariatur quis numquam.', '42eca5c935f6554cef850ffe516cb5ec.png', 0, 1, 11, '2021-08-27 08:02:54', '2021-08-27 08:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ratingable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratingable_id` bigint(20) UNSIGNED NOT NULL,
  `star` tinyint(4) NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `ratingable_type`, `ratingable_id`, `star`, `ip_address`, `agent`) VALUES
(1, 'App\\Models\\Course', 25, 1, '249.3.81.117', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20160419 Firefox/35.0'),
(2, 'App\\Models\\Course', 21, 1, '188.27.42.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_0 rv:4.0) Gecko/20200626 Firefox/36.0'),
(3, 'App\\Models\\Course', 8, 3, '163.73.105.224', 'Opera/9.56 (X11; Linux i686; en-US) Presto/2.11.176 Version/11.00'),
(4, 'App\\Models\\Course', 23, 1, '182.253.188.49', 'Mozilla/5.0 (Windows NT 5.01; en-US; rv:1.9.0.20) Gecko/20120405 Firefox/37.0'),
(5, 'App\\Models\\Course', 8, 5, '216.122.136.85', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_5 rv:2.0) Gecko/20160413 Firefox/37.0'),
(6, 'App\\Models\\Course', 25, 1, '171.189.87.231', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_9 rv:4.0) Gecko/20120903 Firefox/35.0'),
(7, 'App\\Models\\Course', 21, 2, '210.147.2.154', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_4 rv:3.0) Gecko/20170326 Firefox/35.0'),
(8, 'App\\Models\\Course', 8, 2, '89.106.207.186', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/5.0)'),
(9, 'App\\Models\\Course', 16, 2, '75.150.253.177', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_8) AppleWebKit/5351 (KHTML, like Gecko) Chrome/36.0.821.0 Mobile Safari/5351'),
(10, 'App\\Models\\Course', 16, 5, '110.133.215.61', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3 rv:4.0; en-US) AppleWebKit/531.36.7 (KHTML, like Gecko) Version/4.0.1 Safari/531.36.7'),
(11, 'App\\Models\\Course', 16, 5, '246.83.188.248', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_9) AppleWebKit/5331 (KHTML, like Gecko) Chrome/38.0.829.0 Mobile Safari/5331'),
(12, 'App\\Models\\Course', 2, 4, '169.186.165.187', 'Opera/9.70 (X11; Linux i686; en-US) Presto/2.11.350 Version/10.00'),
(13, 'App\\Models\\Course', 9, 4, '14.15.78.75', 'Mozilla/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit/532.49.5 (KHTML, like Gecko) Version/4.0 Safari/532.49.5'),
(14, 'App\\Models\\Course', 4, 2, '65.61.56.19', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; sl-SI) AppleWebKit/532.50.2 (KHTML, like Gecko) Version/3.0.5 Mobile/8B116 Safari/6532.50.2'),
(15, 'App\\Models\\Course', 4, 4, '126.88.116.195', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_3 rv:2.0) Gecko/20190214 Firefox/37.0'),
(16, 'App\\Models\\Course', 13, 4, '196.53.158.35', 'Opera/9.76 (X11; Linux x86_64; sl-SI) Presto/2.12.232 Version/11.00'),
(17, 'App\\Models\\Course', 15, 2, '213.154.221.75', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_0 rv:2.0; sl-SI) AppleWebKit/533.31.6 (KHTML, like Gecko) Version/5.1 Safari/533.31.6'),
(18, 'App\\Models\\Course', 25, 5, '222.64.17.154', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_3) AppleWebKit/5311 (KHTML, like Gecko) Chrome/38.0.833.0 Mobile Safari/5311'),
(19, 'App\\Models\\Course', 4, 5, '171.253.132.184', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows 95; Trident/3.1)'),
(20, 'App\\Models\\Course', 8, 2, '198.72.32.98', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_1 like Mac OS X; en-US) AppleWebKit/533.32.5 (KHTML, like Gecko) Version/3.0.5 Mobile/8B113 Safari/6533.32.5'),
(21, 'App\\Models\\Course', 21, 2, '93.208.87.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3 rv:2.0) Gecko/20111017 Firefox/35.0'),
(22, 'App\\Models\\Course', 15, 5, '132.112.53.47', 'Opera/9.63 (X11; Linux i686; sl-SI) Presto/2.11.288 Version/10.00'),
(23, 'App\\Models\\Course', 16, 1, '217.95.184.15', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_5 rv:4.0; en-US) AppleWebKit/533.32.4 (KHTML, like Gecko) Version/4.0 Safari/533.32.4'),
(24, 'App\\Models\\Course', 8, 3, '116.146.74.211', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 95; Trident/4.0)'),
(25, 'App\\Models\\Course', 13, 2, '84.122.133.221', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.01; Trident/3.1)'),
(26, 'App\\Models\\Course', 8, 2, '175.235.153.160', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_3 rv:6.0; en-US) AppleWebKit/532.11.3 (KHTML, like Gecko) Version/5.1 Safari/532.11.3'),
(27, 'App\\Models\\Course', 15, 4, '71.89.51.93', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20110805 Firefox/35.0'),
(28, 'App\\Models\\Course', 4, 4, '72.25.208.225', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_5 rv:5.0) Gecko/20200730 Firefox/35.0'),
(29, 'App\\Models\\Course', 4, 2, '172.85.20.140', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5321 (KHTML, like Gecko) Chrome/38.0.844.0 Mobile Safari/5321'),
(30, 'App\\Models\\Course', 21, 4, '92.235.192.20', 'Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5322 (KHTML, like Gecko) Chrome/38.0.819.0 Mobile Safari/5322'),
(31, 'App\\Models\\Course', 13, 1, '112.85.182.179', 'Mozilla/5.0 (iPad; CPU OS 8_1_1 like Mac OS X; sl-SI) AppleWebKit/533.20.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B114 Safari/6533.20.4'),
(32, 'App\\Models\\Course', 20, 5, '234.17.245.166', 'Mozilla/5.0 (iPad; CPU OS 7_2_2 like Mac OS X; en-US) AppleWebKit/533.19.3 (KHTML, like Gecko) Version/4.0.5 Mobile/8B119 Safari/6533.19.3'),
(33, 'App\\Models\\Course', 1, 2, '78.176.76.11', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/531.20.7 (KHTML, like Gecko) Version/5.0 Safari/531.20.7'),
(34, 'App\\Models\\Course', 25, 4, '135.76.6.67', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_0) AppleWebKit/5321 (KHTML, like Gecko) Chrome/38.0.848.0 Mobile Safari/5321'),
(35, 'App\\Models\\Course', 8, 2, '168.163.105.165', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_8 rv:4.0; en-US) AppleWebKit/532.7.6 (KHTML, like Gecko) Version/5.0.2 Safari/532.7.6'),
(36, 'App\\Models\\Course', 4, 1, '45.42.27.13', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows CE; Trident/5.0)'),
(37, 'App\\Models\\Course', 23, 3, '88.32.64.154', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5310 (KHTML, like Gecko) Chrome/36.0.859.0 Mobile Safari/5310'),
(38, 'App\\Models\\Course', 4, 5, '50.86.137.103', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7) AppleWebKit/5312 (KHTML, like Gecko) Chrome/37.0.819.0 Mobile Safari/5312'),
(39, 'App\\Models\\Course', 21, 3, '32.213.104.77', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20120710 Firefox/37.0'),
(40, 'App\\Models\\Course', 13, 4, '33.171.243.105', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.0; Trident/4.0)'),
(41, 'App\\Models\\Course', 22, 1, '6.247.72.172', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5341 (KHTML, like Gecko) Chrome/39.0.854.0 Mobile Safari/5341'),
(42, 'App\\Models\\Course', 15, 5, '44.226.249.212', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_3) AppleWebKit/5321 (KHTML, like Gecko) Chrome/38.0.807.0 Mobile Safari/5321'),
(43, 'App\\Models\\Course', 1, 2, '102.82.136.190', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows 98; Trident/4.0)'),
(44, 'App\\Models\\Course', 16, 1, '208.86.46.252', 'Mozilla/5.0 (Windows; U; Windows 95) AppleWebKit/533.49.1 (KHTML, like Gecko) Version/5.0 Safari/533.49.1'),
(45, 'App\\Models\\Course', 25, 2, '254.107.8.65', 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5342 (KHTML, like Gecko) Chrome/37.0.891.0 Mobile Safari/5342'),
(46, 'App\\Models\\Course', 25, 5, '166.235.118.126', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5321 (KHTML, like Gecko) Chrome/40.0.881.0 Mobile Safari/5321'),
(47, 'App\\Models\\Course', 20, 3, '225.3.146.233', 'Opera/9.89 (Windows NT 5.2; en-US) Presto/2.11.333 Version/12.00'),
(48, 'App\\Models\\Course', 4, 1, '68.97.84.117', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_8 rv:2.0) Gecko/20130723 Firefox/37.0'),
(49, 'App\\Models\\Course', 20, 3, '144.196.118.37', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5312 (KHTML, like Gecko) Chrome/38.0.863.0 Mobile Safari/5312'),
(50, 'App\\Models\\Course', 16, 4, '39.167.25.98', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_4 rv:5.0) Gecko/20100709 Firefox/36.0'),
(51, 'App\\Models\\Course', 4, 1, '46.232.43.138', 'Opera/9.94 (X11; Linux x86_64; sl-SI) Presto/2.10.183 Version/12.00'),
(52, 'App\\Models\\Course', 1, 3, '215.38.224.5', 'Opera/8.42 (Windows NT 6.0; en-US) Presto/2.12.334 Version/11.00'),
(53, 'App\\Models\\Course', 25, 2, '128.6.31.224', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.2; Trident/4.0)'),
(54, 'App\\Models\\Course', 20, 2, '250.42.134.220', 'Opera/9.99 (X11; Linux x86_64; sl-SI) Presto/2.9.236 Version/11.00'),
(55, 'App\\Models\\Course', 23, 5, '16.97.120.132', 'Mozilla/5.0 (Windows; U; Windows NT 6.0) AppleWebKit/534.24.6 (KHTML, like Gecko) Version/5.0.3 Safari/534.24.6'),
(56, 'App\\Models\\Course', 16, 1, '136.236.164.235', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows 98; Win 9x 4.90; Trident/5.0)'),
(57, 'App\\Models\\Course', 15, 2, '2.166.195.39', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/37.0.804.0 Mobile Safari/5310'),
(58, 'App\\Models\\Course', 16, 3, '220.154.34.60', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5360 (KHTML, like Gecko) Chrome/36.0.812.0 Mobile Safari/5360'),
(59, 'App\\Models\\Course', 20, 5, '228.91.67.226', 'Opera/8.87 (Windows NT 6.0; en-US) Presto/2.8.332 Version/12.00'),
(60, 'App\\Models\\Course', 2, 5, '74.217.118.236', 'Opera/9.18 (X11; Linux x86_64; sl-SI) Presto/2.10.173 Version/10.00'),
(61, 'App\\Models\\Course', 25, 1, '221.211.84.186', 'Opera/8.92 (X11; Linux i686; sl-SI) Presto/2.9.199 Version/11.00'),
(62, 'App\\Models\\Course', 23, 1, '242.121.62.109', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows CE; Trident/4.1)'),
(63, 'App\\Models\\Course', 4, 3, '39.47.225.181', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Win 9x 4.90; Trident/5.0)'),
(64, 'App\\Models\\Course', 20, 3, '114.159.197.206', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident/4.0)'),
(65, 'App\\Models\\Course', 2, 2, '45.252.5.36', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5311 (KHTML, like Gecko) Chrome/39.0.859.0 Mobile Safari/5311'),
(66, 'App\\Models\\Course', 13, 5, '192.183.73.51', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3 rv:6.0) Gecko/20200131 Firefox/37.0'),
(67, 'App\\Models\\Course', 1, 2, '138.63.70.8', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.0; Trident/4.1)'),
(68, 'App\\Models\\Course', 16, 3, '169.5.24.219', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20171210 Firefox/37.0'),
(69, 'App\\Models\\Course', 2, 2, '171.140.138.89', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20160406 Firefox/35.0'),
(70, 'App\\Models\\Course', 9, 5, '4.230.155.77', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X; en-US) AppleWebKit/535.49.5 (KHTML, like Gecko) Version/3.0.5 Mobile/8B113 Safari/6535.49.5'),
(71, 'App\\Models\\Course', 21, 3, '188.157.185.132', 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5311 (KHTML, like Gecko) Chrome/40.0.855.0 Mobile Safari/5311'),
(72, 'App\\Models\\Course', 4, 1, '93.61.131.178', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_3 rv:2.0; sl-SI) AppleWebKit/531.19.5 (KHTML, like Gecko) Version/4.0 Safari/531.19.5'),
(73, 'App\\Models\\Course', 22, 5, '223.120.48.210', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_9) AppleWebKit/5351 (KHTML, like Gecko) Chrome/36.0.878.0 Mobile Safari/5351'),
(74, 'App\\Models\\Course', 9, 4, '49.156.166.42', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20190228 Firefox/35.0'),
(75, 'App\\Models\\Course', 13, 2, '26.173.114.138', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5352 (KHTML, like Gecko) Chrome/39.0.861.0 Mobile Safari/5352'),
(76, 'App\\Models\\Course', 23, 3, '24.165.137.191', 'Mozilla/5.0 (Windows 95; en-US; rv:1.9.2.20) Gecko/20100829 Firefox/36.0'),
(77, 'App\\Models\\Course', 21, 2, '150.225.86.12', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3 rv:6.0; sl-SI) AppleWebKit/531.36.6 (KHTML, like Gecko) Version/4.0 Safari/531.36.6'),
(78, 'App\\Models\\Course', 15, 5, '8.207.188.143', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows 95; Trident/5.1)'),
(79, 'App\\Models\\Course', 22, 2, '55.62.127.135', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.1; Trident/3.0)'),
(80, 'App\\Models\\Course', 25, 4, '51.12.205.138', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.1; Trident/5.0)'),
(81, 'App\\Models\\Course', 16, 5, '220.154.207.51', 'Mozilla/5.0 (Windows NT 5.2; en-US; rv:1.9.0.20) Gecko/20150701 Firefox/35.0'),
(82, 'App\\Models\\Course', 13, 1, '38.148.62.108', 'Opera/9.44 (X11; Linux i686; sl-SI) Presto/2.12.272 Version/12.00'),
(83, 'App\\Models\\Course', 1, 5, '45.46.39.51', 'Mozilla/5.0 (Windows NT 6.1; en-US; rv:1.9.1.20) Gecko/20120224 Firefox/37.0'),
(84, 'App\\Models\\Course', 15, 3, '118.91.27.103', 'Opera/8.61 (X11; Linux x86_64; en-US) Presto/2.8.176 Version/10.00'),
(85, 'App\\Models\\Course', 16, 5, '63.171.139.72', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_8 rv:3.0) Gecko/20120902 Firefox/36.0'),
(86, 'App\\Models\\Course', 22, 3, '2.31.2.223', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 98; Trident/4.1)'),
(87, 'App\\Models\\Course', 9, 5, '129.97.157.57', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_0 rv:5.0; sl-SI) AppleWebKit/534.7.5 (KHTML, like Gecko) Version/4.1 Safari/534.7.5'),
(88, 'App\\Models\\Course', 9, 2, '33.19.85.166', 'Mozilla/5.0 (Windows NT 6.1; sl-SI; rv:1.9.0.20) Gecko/20170913 Firefox/36.0'),
(89, 'App\\Models\\Course', 1, 1, '181.1.11.18', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Trident/3.1)'),
(90, 'App\\Models\\Course', 1, 2, '27.252.201.91', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/531.26.7 (KHTML, like Gecko) Version/5.1 Safari/531.26.7'),
(91, 'App\\Models\\Course', 4, 2, '6.197.88.155', 'Opera/9.10 (Windows NT 5.01; sl-SI) Presto/2.8.170 Version/10.00'),
(92, 'App\\Models\\Course', 22, 3, '237.251.39.123', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; sl-SI) AppleWebKit/531.32.2 (KHTML, like Gecko) Version/4.0.5 Mobile/8B112 Safari/6531.32.2'),
(93, 'App\\Models\\Course', 8, 2, '155.81.99.200', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_2 rv:4.0; en-US) AppleWebKit/532.2.1 (KHTML, like Gecko) Version/4.1 Safari/532.2.1'),
(94, 'App\\Models\\Course', 21, 4, '52.174.203.168', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20210415 Firefox/36.0'),
(95, 'App\\Models\\Course', 23, 5, '90.136.186.13', 'Mozilla/5.0 (Windows NT 6.0; sl-SI; rv:1.9.2.20) Gecko/20200621 Firefox/35.0'),
(96, 'App\\Models\\Course', 9, 4, '170.239.182.219', 'Mozilla/5.0 (Windows; U; Windows NT 6.0) AppleWebKit/531.48.7 (KHTML, like Gecko) Version/4.0 Safari/531.48.7'),
(97, 'App\\Models\\Course', 23, 3, '134.27.49.67', 'Mozilla/5.0 (Windows NT 6.1; en-US; rv:1.9.0.20) Gecko/20100620 Firefox/35.0'),
(98, 'App\\Models\\Course', 13, 5, '104.162.48.236', 'Opera/9.63 (Windows NT 6.1; sl-SI) Presto/2.9.290 Version/12.00'),
(99, 'App\\Models\\Course', 15, 2, '227.201.138.81', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20201218 Firefox/35.0'),
(100, 'App\\Models\\Course', 22, 2, '37.89.37.47', 'Mozilla/5.0 (Windows 98) AppleWebKit/5330 (KHTML, like Gecko) Chrome/40.0.860.0 Mobile Safari/5330');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'super admin', 'web', '2021-11-12 04:27:57', '2021-11-12 04:27:57'),
(6, 'admin', 'web', '2021-11-12 05:21:23', '2021-11-12 05:21:23'),
(7, 'teacher', 'web', '2021-11-12 05:21:27', '2021-11-12 05:21:27'),
(8, 'user', 'web', '2021-11-12 05:21:30', '2021-11-12 05:21:30'),
(12, 'ceo', 'web', '2021-11-12 05:21:43', '2021-11-12 05:21:43'),
(13, 'legal', 'web', '2021-11-12 05:21:48', '2021-11-12 05:21:48'),
(14, 'sdfsd', 'web', '2021-11-12 07:23:43', '2021-11-12 07:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(10, 5),
(11, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`) VALUES
(1, 'home');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `title`, `desc`, `image`, `slider_id`) VALUES
(1, 'Ut et provident soluta quae.', 'Maiores fugit aut numquam.', '1004763494c58c68300033ca72f113c3.png', 1),
(2, 'Facilis et aliquam atque explicabo.', 'Quo distinctio recusandae aliquam possimus repellat.', '45270c269aa90efdd166e53b82f1a3c8.png', 1),
(3, 'Neque eos voluptatibus sit modi.', 'Pariatur rerum aliquam vitae nobis sint.', '7abb7971a38188972ab3ac3a4f9e6c8b.png', 1),
(4, 'Nihil tenetur facere officia occaecati tenetur autem omnis.', 'Dolorum est in eum quas eligendi.', '28cc93387e2b2afb108d39cfca8abdbd.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_type`, `taggable_id`) VALUES
(17, 'App\\Models\\Video', 47),
(17, 'App\\Models\\Video', 17),
(1, 'App\\Models\\Video', 11),
(10, 'App\\Models\\Video', 48),
(9, 'App\\Models\\Video', 32),
(17, 'App\\Models\\Video', 33),
(3, 'App\\Models\\Video', 35),
(20, 'App\\Models\\Video', 6),
(12, 'App\\Models\\Video', 14),
(4, 'App\\Models\\Video', 28),
(16, 'App\\Models\\Video', 15),
(17, 'App\\Models\\Video', 5),
(5, 'App\\Models\\Video', 20),
(12, 'App\\Models\\Video', 46),
(3, 'App\\Models\\Video', 19),
(8, 'App\\Models\\Video', 48),
(18, 'App\\Models\\Video', 15),
(9, 'App\\Models\\Video', 7),
(9, 'App\\Models\\Video', 9),
(3, 'App\\Models\\Video', 22),
(11, 'App\\Models\\Video', 36),
(3, 'App\\Models\\Video', 46),
(13, 'App\\Models\\Video', 49),
(16, 'App\\Models\\Video', 33),
(18, 'App\\Models\\Video', 14),
(13, 'App\\Models\\Video', 30),
(9, 'App\\Models\\Video', 28),
(4, 'App\\Models\\Video', 24),
(19, 'App\\Models\\Video', 42),
(17, 'App\\Models\\Video', 10),
(6, 'App\\Models\\Video', 41),
(11, 'App\\Models\\Video', 41),
(12, 'App\\Models\\Video', 49),
(9, 'App\\Models\\Video', 20),
(8, 'App\\Models\\Video', 5),
(5, 'App\\Models\\Video', 6),
(17, 'App\\Models\\Video', 2),
(15, 'App\\Models\\Video', 28),
(13, 'App\\Models\\Video', 15),
(10, 'App\\Models\\Video', 15),
(11, 'App\\Models\\Video', 34),
(19, 'App\\Models\\Video', 34),
(18, 'App\\Models\\Video', 28),
(5, 'App\\Models\\Video', 16),
(17, 'App\\Models\\Video', 19),
(1, 'App\\Models\\Video', 19),
(7, 'App\\Models\\Video', 9),
(5, 'App\\Models\\Video', 14),
(9, 'App\\Models\\Video', 8),
(14, 'App\\Models\\Video', 40),
(5, 'App\\Models\\Video', 7),
(5, 'App\\Models\\Video', 2),
(13, 'App\\Models\\Video', 50),
(19, 'App\\Models\\Video', 30),
(6, 'App\\Models\\Video', 20),
(17, 'App\\Models\\Video', 20),
(4, 'App\\Models\\Video', 6),
(7, 'App\\Models\\Video', 2),
(13, 'App\\Models\\Video', 15),
(7, 'App\\Models\\Video', 38),
(19, 'App\\Models\\Video', 27),
(5, 'App\\Models\\Video', 41),
(16, 'App\\Models\\Video', 28),
(8, 'App\\Models\\Video', 32),
(1, 'App\\Models\\Video', 1),
(17, 'App\\Models\\Video', 14),
(10, 'App\\Models\\Video', 13),
(8, 'App\\Models\\Video', 6),
(7, 'App\\Models\\Video', 20),
(20, 'App\\Models\\Video', 30),
(20, 'App\\Models\\Post', 10),
(14, 'App\\Models\\Post', 2),
(7, 'App\\Models\\Post', 5),
(4, 'App\\Models\\Post', 2),
(4, 'App\\Models\\Post', 1),
(10, 'App\\Models\\Post', 4),
(15, 'App\\Models\\Post', 10),
(11, 'App\\Models\\Post', 10),
(13, 'App\\Models\\Post', 1),
(10, 'App\\Models\\Post', 4),
(20, 'App\\Models\\Post', 8),
(14, 'App\\Models\\Post', 10),
(6, 'App\\Models\\Post', 3),
(7, 'App\\Models\\Post', 7),
(3, 'App\\Models\\Post', 4),
(4, 'App\\Models\\Post', 3),
(4, 'App\\Models\\Post', 6),
(18, 'App\\Models\\Post', 2),
(11, 'App\\Models\\Post', 2),
(10, 'App\\Models\\Post', 8),
(14, 'App\\Models\\Post', 6),
(18, 'App\\Models\\Post', 5),
(8, 'App\\Models\\Post', 4),
(6, 'App\\Models\\Post', 9),
(10, 'App\\Models\\Post', 3),
(2, 'App\\Models\\Post', 7),
(2, 'App\\Models\\Post', 8),
(18, 'App\\Models\\Post', 7),
(12, 'App\\Models\\Post', 6),
(6, 'App\\Models\\Post', 6),
(13, 'App\\Models\\Post', 9),
(4, 'App\\Models\\Post', 2),
(12, 'App\\Models\\Post', 3),
(3, 'App\\Models\\Post', 6),
(17, 'App\\Models\\Post', 4),
(1, 'App\\Models\\Post', 1),
(7, 'App\\Models\\Post', 3),
(15, 'App\\Models\\Post', 4),
(8, 'App\\Models\\Post', 9),
(6, 'App\\Models\\Post', 3),
(20, 'App\\Models\\Post', 2),
(6, 'App\\Models\\Post', 10),
(16, 'App\\Models\\Post', 3),
(3, 'App\\Models\\Post', 1),
(3, 'App\\Models\\Post', 10),
(10, 'App\\Models\\Post', 8),
(8, 'App\\Models\\Post', 8),
(18, 'App\\Models\\Post', 6),
(20, 'App\\Models\\Post', 2),
(19, 'App\\Models\\Post', 2),
(3, 'App\\Models\\Post', 8),
(4, 'App\\Models\\Post', 4),
(6, 'App\\Models\\Post', 3),
(8, 'App\\Models\\Post', 8),
(11, 'App\\Models\\Post', 1),
(3, 'App\\Models\\Post', 4),
(19, 'App\\Models\\Post', 1),
(6, 'App\\Models\\Post', 1),
(19, 'App\\Models\\Post', 1),
(19, 'App\\Models\\Post', 9),
(10, 'App\\Models\\Post', 6),
(19, 'App\\Models\\Post', 10),
(4, 'App\\Models\\Post', 6),
(6, 'App\\Models\\Post', 1),
(12, 'App\\Models\\Post', 10),
(14, 'App\\Models\\Post', 7),
(1, 'App\\Models\\Post', 10),
(17, 'App\\Models\\Post', 5),
(20, 'App\\Models\\Post', 8),
(16, 'App\\Models\\Post', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `visibility`, `icon`) VALUES
(1, 'wordpress', 'wordpress', 1, 'fab fa-wordpress'),
(2, 'codepen', 'codepen', 0, 'fab fa-codepen'),
(3, 'drupal', 'drupal', 0, 'fab fa-drupal'),
(4, 'pinterest', 'pinterest', 1, 'fab fa-pinterest'),
(5, 'html', 'html', 0, 'fab fa-html5'),
(6, 'pdf', 'pdf', 0, 'fas fa-file-pdf'),
(7, 'word', 'word', 1, 'fas fa-file-word'),
(8, 'excel', 'excel', 0, 'fas fa-file-excel'),
(9, 'powerpoint', 'powerpoint', 0, 'fas fa-file-powerpoint'),
(10, 'chrome', 'chrome', 0, 'fab fa-chrome'),
(11, 'firefox', 'firefox', 0, 'fab fa-firefox-browser'),
(12, 'safari', 'safari', 0, 'fab fa-safari'),
(13, 'opera', 'opera', 0, 'fab fa-opera'),
(14, 'IE', 'internet-explorer', 1, 'fab fa-internet-explorer'),
(15, 'css', 'css', 0, 'fab fa-css3'),
(16, 'js', 'js', 0, 'fab fa-js-square'),
(17, 'vue.js', 'vue.js', 1, 'fab fa-vuejs'),
(18, 'php', 'php', 0, 'fab fa-php'),
(19, 'laravel', 'laravel', 1, 'fab fa-laravel'),
(20, 'mysql', 'mysql', 1, 'fas fa-database');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_teacher` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `job`, `bio`, `email_verified_at`, `password`, `is_admin`, `is_teacher`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@app.com', '2c4c6c9b9d8ef0dc3207d9fbf55eab4d.png', NULL, NULL, '2021-08-27 08:00:05', '$2y$10$n59LLyrO2loK8zoyTcvzb.6Yh5/o7pMDYsuOLdYT8EhY78Yax2v4O', 1, 0, 'VUCe46LsyM', NULL, NULL),
(2, 'Teacher', 'teacher@app.com', '91e5125ec23f5ff72eb49c515bc3ba55.png', NULL, NULL, '2021-08-27 08:00:16', '$2y$10$CYcmzYOzUNJN78zmhOQiBufF3eQEELHw8xZWo7iQv.huy7YStYhpm', 0, 1, '3zhUUFxVEz', NULL, NULL),
(3, 'user', 'user@app.com', 'c36c6ccc5d3e6878c4bd76877f6a6033.png', NULL, NULL, '2021-08-27 08:00:19', '$2y$10$Kq8VIb49fzsxL/EnT8200uOkI27dEPGEJ8h44B2w74padHTtDV3N6', 0, 0, 'oZtOD6Ejmh', NULL, NULL),
(4, 'Tyson Reynolds Jr.', 'kiehn.dina@example.com', '986254c59f937ff20e84892d205f4675.png', NULL, NULL, '2021-08-27 08:00:19', '$2y$10$x3JBR1yUCq4O1QRNPk6Vde9LApPL0oZp6sxMUa6BdchNqbevgKY4G', 0, 1, 'N4Pq5pLfM7', '2021-08-27 08:00:54', '2021-08-27 08:00:54'),
(5, 'Bridie Moore', 'amani.williamson@example.com', '6033ca93031a7427d0e2d1723187d4ea.png', NULL, NULL, '2021-08-27 08:00:20', '$2y$10$s24EQ8ez5ygwEyQbSnCVfeZaZg2S0G5h6CZI4xDcXTY.Ntf3sSJMq', 0, 1, 'NoRnWItUay', '2021-08-27 08:00:54', '2021-08-27 08:00:54'),
(6, 'Doris Spinka', 'cgreenholt@example.org', 'dfd407eb1a2505bb0349075609cd30ad.png', NULL, NULL, '2021-08-27 08:00:20', '$2y$10$oRYYNUUw/ggYY1YMuCtJ8OXfl5R8liuhujxcBssLG1Fi7.ZrIrnfG', 0, 0, 'NxBor6x4m9', '2021-08-27 08:00:54', '2021-08-27 08:00:54'),
(7, 'Manley Rodriguez', 'joaquin.rippin@example.net', '1be455913e1056b4f09bf5712f1bc20d.png', NULL, NULL, '2021-08-27 08:00:21', '$2y$10$QtDkaq038b4LAK.K9B2tAucfNY5AuvLa/cJbNQ.bCo/Mt/R0XLrbG', 0, 0, 'YGCT2uCIKg', '2021-08-27 08:00:54', '2021-08-27 08:00:54'),
(8, 'Anya Rodriguez', 'talon62@example.org', '1b8cfdadd711e2edac55d42775eab680.png', NULL, NULL, '2021-08-27 08:00:22', '$2y$10$MeQPHl1lIRfpPWtJPwVRm.mApHz5Oirn5xH4s0tAt7bCqcfsv3tN2', 0, 0, 'NgFPqq7tUj', '2021-08-27 08:00:54', '2021-08-27 08:00:54'),
(9, 'Cierra Wolf', 'casandra.johnston@example.org', 'cb707944426a3fdb320f14773e4a7dc0.png', NULL, NULL, '2021-08-27 08:00:24', '$2y$10$nJ202Yh0XPvZ9VkUl54EgeQLwza.yjpdSG4gAt9SyjOLBFbNYn2fy', 0, 1, 'DZAceyGJT6', '2021-08-27 08:00:54', '2021-08-27 08:00:54'),
(10, 'Daisha Halvorson Jr.', 'miller.forrest@example.org', '3ed527780fee5c84eb4510ae3b8c2882.png', NULL, NULL, '2021-08-27 08:00:31', '$2y$10$oyp0FU2f3l82VIBGFEo9KefT7QHU9Z7mZ9zgJaRyTeOic2UQ9QUA2', 0, 0, 'ctT1Mye2bA', '2021-08-27 08:00:54', '2021-08-27 08:00:54'),
(11, 'Ms. Opal Schmitt', 'orion16@example.com', 'dbc93a2f3960c8d24b9c8caeba3905a3.png', NULL, NULL, '2021-08-27 08:00:48', '$2y$10$hzRwKJ4CddSVBR2fQXKBKOfaqBLIbWIycVQk4kfCly9CVsABEeJOu', 0, 1, 'UBYLfDu0dZ', '2021-08-27 08:00:54', '2021-08-27 08:00:54'),
(12, 'Erwin Beahan', 'lacy.osinski@example.org', '5e03775cad2b97d3e5955058543e56e2.png', NULL, NULL, '2021-08-27 08:00:49', '$2y$10$pV5EWRFm5gG0KQuXjOyVm.8BSHrSQGjafNmQ/BeGnBgVedOxT7c0m', 0, 1, 'Wmn7ACMWTi', '2021-08-27 08:00:54', '2021-11-12 17:17:38'),
(13, 'Billie Schiller', 'aufderhar.albertha@example.com', '498693f7d210699765bc6265e3a637ca.png', NULL, NULL, '2021-08-27 08:00:51', '$2y$10$ZtFcXBBdu1Jxo8OIIxy1JOg3gWNeYLzr5Wr4JeguGpplyQ2EtTj3m', 0, 1, 'IclTXu2nS3', '2021-08-27 08:00:54', '2021-11-12 17:14:12'),
(14, 'test', 'test@yahoo.com', 'yHzCdxHosYFPPTFK9fgckMGWIeoOCpZ84Fq3eRab.png', NULL, NULL, NULL, '$2y$10$rNOXqg5tkPpPgO7A8lU/KejofzcK/URmOOtx1vXT73FLdBWgoMQYi', 0, 0, NULL, '2021-11-12 16:07:13', '2021-11-12 17:25:03'),
(15, 'Aretha Gillespie', 'zosa@mailinator.com', 'UIGCDkYz47RspicreBWxuYzzjYjsbUFgdO454Evk.png', NULL, NULL, NULL, '$2y$10$6pz78U.zH4EJDxmN0XmvOedcGIWX6qGbi81bgAs24vush4p9nkKZS', 0, 0, NULL, '2021-11-12 17:20:23', '2021-11-13 10:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_follow`
--

CREATE TABLE `user_follow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `follow_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_follow`
--

INSERT INTO `user_follow` (`id`, `follower_id`, `follow_id`) VALUES
(1, 2, 9),
(2, 8, 4),
(3, 11, 6),
(4, 8, 2),
(5, 12, 13),
(6, 5, 13),
(7, 4, 2),
(8, 9, 8),
(9, 3, 2),
(10, 6, 5),
(11, 7, 10),
(12, 10, 11),
(13, 9, 3),
(14, 7, 12),
(15, 11, 4),
(16, 1, 8),
(17, 12, 2),
(18, 13, 8),
(19, 10, 8),
(20, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('file','url') COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `slug`, `desc`, `file`, `url`, `type`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'In aut odit autem voluptas animi recusandae praesentium possimus.', 'in-aut-odit-autem-voluptas-animi-recusandae-praesentium-possimus', 'Facere minima asperiores est. Ipsam cupiditate ad rem tempora voluptatem sequi dolores. Aut et quasi debitis assumenda omnis ut. Blanditiis eum qui sunt aliquid. Nihil possimus impedit aut deserunt adipisci ut iure hic. Architecto harum sed atque cum et nihil excepturi quasi. Eum sint consequuntur labore laborum ut. Odit doloribus sed aut ut quia repellat fugit. Hic minus ipsam blanditiis id nulla iusto et. Sunt et vitae similique quos sit eveniet odio. Quam dolorem incidunt consectetur ipsam eum. Voluptatem eius debitis excepturi accusamus laborum nihil voluptatem sed. Tempora rerum ex necessitatibus asperiores. Voluptates voluptatem atque dolorem consequatur aut aperiam dolor. Est consequatur cupiditate aliquid ab repellat distinctio. Minima nemo voluptatum quibusdam iste et deserunt in in. Accusamus atque autem asperiores atque fugit. Fuga sunt hic cumque quo. Nesciunt in molestias dignissimos consequuntur est labore. Vel modi sunt voluptates non blanditiis rem. Mollitia vitae architecto nulla voluptas aut voluptas tempore. Sunt enim non laborum deleniti maiores sit. Qui tempore quaerat corrupti id quaerat aut est. Sed reprehenderit eius quo ut odit. A quaerat aut velit vitae dolorem dicta. Consequuntur aut ut ea voluptatem sapiente qui iure.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 22, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(2, 'Ut cupiditate suscipit sint ut sunt molestias a totam et eaque vel.', 'ut-cupiditate-suscipit-sint-ut-sunt-molestias-a-totam-et-eaque-vel', 'Nemo mollitia nam eveniet ab laboriosam beatae perferendis. Voluptatem temporibus soluta quisquam nihil debitis mollitia. Possimus error et quis dicta voluptates. Ut magnam veritatis voluptas. Fugit quia aut cumque quisquam. Quas placeat omnis reiciendis laborum ea. Velit reiciendis ipsa et enim unde illo enim. Iusto dignissimos officiis laboriosam omnis dolorem. Aspernatur qui nostrum necessitatibus rerum qui autem. Ad et enim nemo tempora. Iste accusamus ad laborum et qui adipisci. Tempora dolore non consequatur omnis modi impedit atque. Reprehenderit sed qui aperiam incidunt quasi. Laboriosam optio aut aliquam dolorem. Animi quo dolorum consequatur aperiam. Quos possimus saepe totam ex consectetur. Eius perspiciatis harum in quibusdam velit. Perferendis provident doloribus pariatur ratione aspernatur perferendis. Est et voluptatum in aliquid quae voluptatum ducimus. Id quo iste assumenda voluptas corrupti iure laborum. Odio libero commodi et velit dolorum. Pariatur voluptatibus assumenda quia quod perspiciatis et. Omnis provident architecto dolorem quidem doloremque. Dolorem necessitatibus tempora at voluptatibus harum exercitationem iste. Laborum et animi quaerat enim. Nobis possimus alias ad corrupti aut quasi sit. Et sint natus optio nemo illum similique. In qui illo sunt.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 15, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(3, 'Nam reiciendis tempore dolores laborum sit sed praesentium.', 'nam-reiciendis-tempore-dolores-laborum-sit-sed-praesentium', 'Eaque laudantium sequi quia qui voluptatibus. Voluptates enim non voluptatem molestiae. Et voluptatem enim ea commodi dolorem reiciendis et quos. Praesentium sit debitis eligendi similique. Non et et aut quia hic. Odit maxime cumque eveniet voluptas beatae debitis sed. Sed facere et dolores non ut. Aut ut consequatur reprehenderit odio. Odio rerum ut unde error accusamus quaerat ullam. Sequi quia qui aliquam quasi dolor explicabo voluptas. Quis consequatur natus debitis aut est molestiae eveniet. Aliquid repudiandae omnis ipsa tenetur repellendus praesentium iste. Hic accusantium in ut incidunt. Doloremque error suscipit vero totam consequatur est. Quae blanditiis et nostrum debitis fugit. Vitae quia beatae perferendis molestiae quia id. Incidunt ut illum blanditiis perspiciatis.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 8, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(4, 'Dolorum minus expedita et amet est maiores et deserunt qui quia.', 'dolorum-minus-expedita-et-amet-est-maiores-et-deserunt-qui-quia', 'Maiores veniam ut possimus consequatur. Sit ut autem quos incidunt est ad. Et sit fuga vel. Possimus culpa nesciunt est autem autem ipsa reiciendis. Quis rerum cumque consequatur est et praesentium minus. Animi id aperiam alias rerum perspiciatis quisquam debitis. Cum quam ut voluptatum est aut exercitationem et dignissimos. Dolorem explicabo molestiae molestiae molestiae omnis similique. Veritatis id odio labore tempore et voluptas. Fugiat et fugit voluptatem omnis voluptates suscipit sapiente. Voluptas qui tempora voluptatem provident ex amet. Occaecati error eos harum omnis quia consectetur. Distinctio incidunt a molestiae distinctio sit. Nostrum qui omnis velit saepe odit libero facilis. Tempora aliquam modi quo. Officiis vero enim molestiae hic aperiam. Vero modi occaecati quo quibusdam nostrum non nihil eos. Excepturi odit necessitatibus ratione accusamus repudiandae dolores impedit tenetur.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 20, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(5, 'Atque eius beatae nam at quia vero dicta id omnis exercitationem consequatur.', 'atque-eius-beatae-nam-at-quia-vero-dicta-id-omnis-exercitationem-consequatur', 'Eius doloribus qui rem fugit et. Atque amet modi porro molestiae et animi eum dolore. Ullam quam quis dicta facilis illo natus. Dolore nihil autem voluptatibus rerum consequatur et ut. Qui nulla voluptatem sit eius est unde. Ut ipsa at eius assumenda sint sunt. Veritatis qui consequatur quos molestias. Optio sint illo accusamus ratione cum labore. Id sed ullam assumenda ut molestiae temporibus. Dolores maiores possimus animi sint. Rerum praesentium quasi magnam earum cumque. Magnam quaerat ipsa mollitia voluptas aut ullam consequuntur. Non voluptatem iste explicabo unde ratione. Nesciunt omnis et aut amet delectus. Aut aliquam rerum voluptas rerum praesentium. Velit eos suscipit quia et. Enim saepe fuga qui inventore minima fuga quo. Non quo consequuntur provident aut ut nisi. Et omnis minus quisquam consequatur temporibus. Dolor amet impedit qui quo quo accusamus id aperiam. Atque occaecati illum ea labore nobis. Est quod at repellat sit aliquam reiciendis itaque consequatur. Exercitationem corrupti fugiat in excepturi aperiam eum aut laboriosam.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 15, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(6, 'Possimus ut facere quas placeat sapiente illum rem illum deleniti.', 'possimus-ut-facere-quas-placeat-sapiente-illum-rem-illum-deleniti', 'Enim hic id quae et quisquam. Excepturi esse nisi eveniet eos aliquid sit natus. Animi ut saepe ipsum aut sapiente itaque impedit. Ipsa ad deleniti et omnis iste non odit. Enim repellat eum est. Delectus ex nam quibusdam odit vitae cumque. Est deleniti sit autem deleniti dolores distinctio. Ullam eligendi amet nesciunt neque. Eos ut perspiciatis velit. Aspernatur voluptas quia est officia sed. Quidem reiciendis eum aut soluta. Sed id voluptatem aut possimus ut dolor. Neque et est ea inventore temporibus excepturi quis. Illum accusamus recusandae distinctio aliquam dolorem incidunt sit. Est minus impedit vitae voluptate. Delectus temporibus repudiandae sit incidunt voluptatem. Eligendi perferendis ea aut a unde aut. Optio qui dolores magnam laborum et nihil quis. Iusto expedita eius voluptatem sed ut. Explicabo voluptas molestias provident impedit debitis. Eligendi sint fuga id dolorum. Cupiditate nihil dolores qui fugit. Eligendi et ea officiis qui quidem quia saepe.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 9, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(7, 'Animi itaque commodi modi quasi recusandae non et nobis.', 'animi-itaque-commodi-modi-quasi-recusandae-non-et-nobis', 'Qui fugit rem eaque voluptatem amet eaque. Dolorum odit eveniet quisquam ex tempora. Eligendi ut quia nesciunt ducimus voluptas ex. At nisi alias commodi eum minima dolorum earum. Consequatur aspernatur minus optio quo ex eos. Temporibus libero voluptas excepturi unde ad ducimus hic. Quos debitis qui similique praesentium suscipit commodi. Et voluptas autem qui et alias quasi dolorem sint. Aperiam dolor molestiae officiis velit. Impedit facere provident eligendi sit sint. Quibusdam est perferendis ut ullam. Facere repellat qui et repellendus. Aliquam ad quam eum fugit magnam rerum. Ipsum nihil non unde magni illo ratione cum. Magnam aut et quaerat voluptas occaecati repudiandae officia. Voluptas qui consequatur ipsa consectetur. Consequatur reiciendis saepe qui sed atque nobis qui. Placeat et autem et magni ipsum aliquid. Culpa sequi debitis non quis libero neque delectus. Consequatur ut ut hic rerum inventore fuga. Placeat occaecati maxime explicabo sed.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 23, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(8, 'Ea ut iure consequatur atque alias molestias aut.', 'ea-ut-iure-consequatur-atque-alias-molestias-aut', 'Provident qui et quo impedit nesciunt dolor quis. Similique ut ad eos ut. Asperiores aliquid dignissimos totam aut et quam dolorum. Animi quo distinctio iure at. Aliquid exercitationem voluptatibus ipsa aliquam laborum at necessitatibus. Occaecati id et non est quo debitis qui. Odit odio soluta ad qui facilis. Odio quia molestias provident est voluptas sunt. Totam possimus aut minima corporis explicabo reprehenderit magnam et. Cum cupiditate dolores natus non quis dolores adipisci quibusdam. Et reiciendis et dolorem fugiat dolor. Explicabo dicta saepe voluptatibus et nihil ullam at. Quia quam necessitatibus in laboriosam qui odit eum. Ut ipsam molestiae ut quidem animi eveniet. Quos saepe cum vel minima. Sint facilis velit aperiam et accusantium est aperiam. Velit aut et eos. Beatae rem est dolor est qui quasi necessitatibus. Nulla quia culpa enim quis impedit perspiciatis ut. Et eveniet magnam sit autem. Facilis facere quia unde officiis.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 20, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(9, 'Autem ipsa ipsa eius veniam ut sit qui aut at et at.', 'autem-ipsa-ipsa-eius-veniam-ut-sit-qui-aut-at-et-at', 'Eum dolor totam rerum ut aut suscipit cupiditate. Maxime veritatis non amet molestiae consequatur mollitia. Id nemo ad tempora. Atque deleniti itaque quo amet dolore non. Veritatis quia ea ad omnis est. Sit quia dolores fugiat est iure velit. Enim maxime natus aut. Autem ut at sed ea alias est reprehenderit. Perspiciatis quo minus nobis alias odio. Provident doloribus consequatur dolorem voluptates est corrupti sint minus. Numquam vel rerum impedit. Commodi consequatur voluptas porro molestiae iste. Qui molestiae odio numquam quod sed aperiam. Qui illum asperiores ratione qui dignissimos qui aspernatur. Illo autem ullam officiis. Hic quaerat fugit qui assumenda magnam omnis aut eius. Est ea inventore dolores et facere tempora assumenda. At blanditiis perferendis explicabo id ducimus repellat quas at. Omnis qui officia et repellat nihil. Molestias ratione ex omnis delectus occaecati. Animi odit facilis possimus maiores labore. Dicta placeat nostrum ipsum quis.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 23, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(10, 'Quo natus molestiae eligendi cum porro et aut eius quibusdam quaerat fugiat.', 'quo-natus-molestiae-eligendi-cum-porro-et-aut-eius-quibusdam-quaerat-fugiat', 'Quod voluptates quos ipsa ea hic et. Et qui est in est explicabo. Animi iure consequatur assumenda velit perspiciatis laboriosam. Eum ut molestiae praesentium optio itaque assumenda dicta. Ut perferendis soluta sint est omnis odit laudantium iste. Quidem impedit quia qui amet iste ut ducimus. Quasi nulla reprehenderit eos minima illo pariatur eveniet. Quo incidunt inventore neque eligendi. Recusandae id qui tempora in sapiente ut nesciunt. Ex aut veritatis inventore occaecati nihil nobis. Harum voluptatem dignissimos aliquam odit iste non quaerat. Enim occaecati labore eos rerum. Sequi id reprehenderit mollitia sunt porro. Quia aliquam reiciendis animi ullam. Amet eligendi magni animi et. Est consequatur quia aut ea quia rerum ut. Architecto nostrum ipsum qui recusandae perferendis est ut. Delectus architecto rerum nulla placeat. Et similique quo tempore dicta dolorem. Sit quidem ipsa pariatur quaerat. Reiciendis non in laboriosam illum maiores eaque debitis. Molestiae suscipit aliquam dolorem incidunt quia. Recusandae eveniet sit impedit illum nulla qui. Dolor ullam sed minus et eaque qui. Aliquid illo quo nostrum. Ad sunt nemo nemo fuga. Ab reprehenderit eos error magni saepe at perferendis. Accusamus ut omnis ut velit tempora est adipisci. Voluptatem sunt voluptatum laborum.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 13, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(11, 'Dicta adipisci vel quasi enim in aperiam et sunt voluptates iste.', 'dicta-adipisci-vel-quasi-enim-in-aperiam-et-sunt-voluptates-iste', 'Ipsa est nobis laborum consequuntur fugit. Facere eum qui quam illo tempora sit est. Quam quia sunt ducimus magni quidem vel. Vitae sit autem fugiat. Incidunt saepe impedit quasi optio similique qui. Et quam consectetur iure dolorem molestiae blanditiis. Accusantium tempora et cupiditate voluptates reiciendis odio. Eum ut et itaque esse recusandae expedita saepe. Recusandae animi doloremque tempore maiores in. Eum voluptatibus dolores ab qui cupiditate molestiae. A nam nostrum explicabo nihil quis harum mollitia. Aut enim aspernatur autem quo quas labore rem. Architecto nostrum possimus cumque. Ipsum dolorum ex et autem modi ab distinctio. Eos aspernatur quae voluptates non blanditiis quod eum. Et nihil aliquid exercitationem iusto occaecati. Beatae omnis aut voluptatem delectus facilis cumque consequatur id. Tempore eveniet nisi atque sit. Tenetur ratione velit ex quod beatae. Neque at cumque iste nobis. Deserunt eveniet rem id enim voluptatibus ducimus blanditiis sunt. Tempora doloribus ab qui fugiat soluta. Deserunt voluptatem ipsa ut dicta architecto molestias adipisci. Totam eaque quam voluptate porro ipsa.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 20, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(12, 'At placeat alias quis aut accusamus harum.', 'at-placeat-alias-quis-aut-accusamus-harum', 'Aut eaque quam nemo ratione. Quo asperiores voluptatum rerum est illum labore. Enim sunt tempore amet iste. Officia a tenetur non vitae dignissimos. Eos et accusamus deleniti dolore quos. Doloremque culpa repellendus sed quia. Fuga esse minus alias. Itaque ducimus illum sed. Quo blanditiis eos ullam fugit laudantium impedit. Nulla officia ut reiciendis sit libero. Sapiente occaecati labore qui. Et natus quo nam. Qui dolorem impedit voluptatem earum possimus. Inventore iure est tempora saepe ut repudiandae. Iste officia in consequuntur accusamus consequatur sit. Earum quisquam deserunt consectetur optio repellat voluptate odit. Culpa incidunt ut eum rerum alias in laudantium dolorem. Vel placeat sit quae non temporibus. Dolore rerum quis praesentium rem sint cumque maiores commodi. Sit vel cumque exercitationem officiis corporis. Ea velit qui consequatur fugiat facilis quia ullam. Aut veniam ut numquam aut dolorum illum velit. Excepturi incidunt omnis dolore magnam architecto et et. Doloremque porro et et ut distinctio et perferendis vitae. Eligendi distinctio sunt aspernatur voluptate nihil. Voluptatem quo omnis enim asperiores voluptate. In quo alias quisquam amet. Magnam et eum et tempora.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 16, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(13, 'Fugit et nulla culpa consequatur animi.', 'fugit-et-nulla-culpa-consequatur-animi', 'Ut illum excepturi rem quis eius delectus. Maiores accusantium quisquam voluptatem dolores ducimus. Sint totam non et cum deleniti quasi totam. Nam possimus iure esse. Quod vel reprehenderit et adipisci veniam cupiditate. Voluptatem assumenda cupiditate aliquam et quas et. Perspiciatis aspernatur ut voluptates perferendis voluptatem animi. Ullam similique repellendus quisquam. Et ut tempora laudantium dolores omnis libero. Explicabo aspernatur deleniti sed. Doloribus beatae ratione accusantium omnis rerum. Qui dolorem quia qui modi magni nobis sit. Quidem sint voluptatem officia nihil praesentium assumenda. Eveniet quia fugit sunt ad tenetur commodi minus. Quas porro eaque voluptatum ut voluptatem maxime recusandae. Et rerum sit unde reiciendis mollitia et enim repellat. Fugiat architecto quasi sit consequatur aut. Eum ipsum accusamus est qui. Modi ipsa consequatur tempore inventore adipisci delectus ex. Deserunt neque alias eaque quia eveniet itaque nisi. Sint ratione autem qui doloribus eligendi libero officiis. Impedit deleniti neque dolor sunt voluptatem. Voluptas ea numquam voluptatem rem. Corporis doloremque recusandae atque esse quia quia. Cum accusantium consequuntur est aut minus facilis.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 4, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(14, 'Expedita iste voluptatem officiis exercitationem quo vel et ut occaecati quia voluptatem consequatur laborum labore perferendis.', 'expedita-iste-voluptatem-officiis-exercitationem-quo-vel-et-ut-occaecati-quia-voluptatem-consequatur-laborum-labore-perferendis', 'A quia dolorem mollitia soluta. Recusandae cumque quam iusto id magni autem. Odit atque est perferendis aut ab. Sunt dolore excepturi et natus omnis. Illum autem velit asperiores est eius quaerat quos. Cumque sunt quisquam autem earum. Voluptas explicabo voluptate placeat et provident. Quo est et enim explicabo ut. Velit facilis quam labore optio enim asperiores voluptate dolores. Reprehenderit voluptatem quidem eligendi est veniam deleniti. Aliquam at enim rerum ut. Ipsam consequatur qui sit dolorem quia qui. Soluta quis quia quia ratione. Cum quae non accusantium in. Repellendus unde consequatur neque ipsam nobis. Iste velit libero nesciunt ipsum. Corrupti iste eum voluptatum rem cupiditate suscipit. Ipsa est iste quia quo. Sed vel consequuntur dolorum similique dicta est quisquam molestiae. Doloribus aliquam et nostrum provident dolorem aliquid debitis. Perspiciatis inventore possimus architecto nesciunt non. Et et deserunt quae ut nisi vel et.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 8, '2021-08-27 08:02:05', '2021-08-27 08:02:05'),
(15, 'Nam autem consectetur illum corporis totam quasi saepe pariatur.', 'nam-autem-consectetur-illum-corporis-totam-quasi-saepe-pariatur', 'Qui aut perferendis sint. Odio et nam error ducimus commodi. Doloribus ut ad ipsam iste rerum neque non. Unde voluptas doloremque molestiae sunt sapiente. Error aut magnam eos et non similique. Amet mollitia similique ex modi pariatur quo. Impedit rerum dolor veritatis. Quia ipsum minus ea nulla. Tenetur consectetur suscipit dolor nihil et consequatur repellendus modi. Et sed optio repellendus nostrum qui et. Aperiam provident et doloremque commodi nemo veritatis. Enim accusantium voluptatem quasi aut. Fuga saepe maxime qui asperiores non neque. Et repudiandae quia dolores eum aliquid aliquid tempore. Voluptatum et labore in molestiae dolorum earum ut. Error explicabo non error exercitationem voluptatem perferendis recusandae officiis. Enim aut sed iusto accusantium debitis illum. Excepturi ab mollitia unde eligendi molestiae enim quibusdam asperiores. Ipsam a minima fuga illum.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 25, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(16, 'Aut eum expedita unde est sed ullam sunt corrupti.', 'aut-eum-expedita-unde-est-sed-ullam-sunt-corrupti', 'Necessitatibus ut voluptatem quae ut deserunt aut. Iure quisquam id id aut eos aut voluptatem. Natus illum occaecati qui sed quas aut. Sit fuga magni ut dolorem asperiores quis. Voluptas accusamus et laboriosam est soluta commodi et. Temporibus est autem et quisquam. Rem qui nihil explicabo praesentium maxime. Id laborum omnis accusamus ullam tempore id fugit aut. Odit qui possimus aliquid quaerat tempora sit. Quidem quos autem repellendus qui ipsum illo. Enim consectetur sit rerum. Et consequatur quasi molestias occaecati. Quis nihil sunt velit expedita provident maxime. Et explicabo voluptatem laboriosam voluptatum id. Architecto laboriosam rerum sint ipsam. Optio omnis nihil molestias aut aperiam perferendis. Quia incidunt ut ipsum iusto. Odio unde mollitia nihil aut. Corporis incidunt cupiditate dolorum est soluta delectus. Molestiae similique aliquam aut qui qui aut. Ut natus porro et. Quidem quia veniam est aut reiciendis consectetur animi. Voluptatem eius hic ullam asperiores expedita cumque. Et repellendus voluptates consectetur amet et ab qui id. Facilis aperiam hic assumenda quia ut quos. Necessitatibus iste est ea quod qui asperiores. Cum adipisci facere pariatur amet repudiandae quidem praesentium.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 8, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(17, 'Expedita in aut ut dolorem et dignissimos ea sint numquam.', 'expedita-in-aut-ut-dolorem-et-dignissimos-ea-sint-numquam', 'Qui sed odit corporis consequatur vel ut dolor. Nemo ipsam nemo necessitatibus blanditiis sed similique doloremque. Possimus dolorem non voluptas incidunt. Nemo ipsam dolorum nihil esse distinctio at consequatur. Dolore omnis cum distinctio rerum esse. Perspiciatis maiores deserunt rerum pariatur expedita. Earum occaecati architecto velit alias aliquid modi. Est placeat perferendis pariatur eum. Explicabo veritatis consectetur quis ipsum quidem quo. Soluta optio ut ex est laudantium consequatur. Quo veniam iusto iure sint id placeat vero. Ullam doloribus neque voluptas. Unde cupiditate voluptas pariatur eveniet sunt autem. Architecto animi perspiciatis quia iure ut praesentium rem. Voluptate rerum quod itaque ut perspiciatis enim. Ut nisi laudantium commodi maiores. Asperiores quam corrupti voluptatum temporibus in architecto magni. Quis est aut quis ducimus nobis labore.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 9, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(18, 'Assumenda laudantium rerum recusandae et velit et voluptatem ullam est.', 'assumenda-laudantium-rerum-recusandae-et-velit-et-voluptatem-ullam-est', 'Quisquam ut officiis dolores accusamus aspernatur magni. Culpa sit ad doloribus beatae iusto libero velit doloribus. Minima alias voluptatibus non facere aut. Illum tempore omnis tempore illum est. Aut quis optio non provident doloremque aut. Nobis ad et officiis natus ducimus corrupti dolorem. Nisi enim consectetur temporibus quae facilis quis ratione quas. Aut qui mollitia numquam. Omnis iusto nemo omnis quo quia. Ducimus qui rerum repudiandae ea ipsam est quos. Assumenda corrupti iusto veniam in. Ut sunt at minus esse quae qui. Ab ipsam eius laudantium error ab. Ratione voluptatum quam beatae sunt. Neque quo laborum molestiae ut. Modi iure vel ipsum aut. Laboriosam id sit quis atque. Id non sint aliquam dolore. Enim qui aspernatur quis autem quam ea voluptatem. Voluptatem consectetur nihil aliquid sed id labore. Qui voluptas qui soluta vel. Quia eum qui minus aperiam a quia. Et nihil dolor non ducimus rerum illum ut. Est et quis hic repellendus iure. Tenetur cupiditate voluptatem dolorem maiores ut aliquid et aliquam. Commodi ipsa consequatur magnam omnis modi rem. Et nobis sit ut corporis qui deleniti. Aperiam eius natus iure id. Itaque earum est consequatur non totam. Est sit delectus eum.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 16, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(19, 'Quis ullam alias voluptas modi quam odio ea repellat et et similique est voluptas sequi.', 'quis-ullam-alias-voluptas-modi-quam-odio-ea-repellat-et-et-similique-est-voluptas-sequi', 'Eligendi est quas cupiditate perferendis. Qui autem aut minima. Aliquid et dicta nobis provident. Dolores cumque aut nisi praesentium et. Omnis sit labore est modi magnam qui maiores. Nihil ut voluptas nam. Et nam et ea accusamus error. Perspiciatis dolorem natus sit vel eum sit. Explicabo quis debitis eos et voluptas cupiditate iusto. Sunt et molestias sapiente. Quidem natus voluptas harum atque quam. Dolores odit natus corrupti fuga nam pariatur. Officiis fugiat at enim dolorem qui. Nobis quasi eveniet sequi. Error qui voluptas minima consequatur reiciendis. Maiores qui eum ab ut. Numquam excepturi animi voluptatem harum laboriosam. Earum nihil quisquam earum delectus voluptates impedit. Possimus et ut modi. Assumenda voluptate blanditiis accusamus aut quibusdam nemo. Sapiente dolore voluptas dolorum consectetur consectetur. Repudiandae ut cupiditate accusantium voluptate repellat. Dolor facere perferendis molestiae consequatur est. Ipsam illo illum facilis unde. Reiciendis voluptatem ea at ea quia laborum. Velit ratione quis est est est perferendis. Debitis eum nihil error minima et ut. Voluptas consequuntur inventore eum autem et et. Ut recusandae praesentium numquam illo et aut cupiditate.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 23, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(20, 'Repellat non cum omnis ipsum ea velit quo vel voluptatibus.', 'repellat-non-cum-omnis-ipsum-ea-velit-quo-vel-voluptatibus', 'Fugit dolores earum ad dignissimos sit dolores. Fugiat asperiores labore quae explicabo molestiae quasi. Dolores cumque consequatur nam totam earum molestias aliquid. Ex odit et unde adipisci omnis. Ut qui soluta nihil ipsa. Rem commodi dignissimos a qui voluptas atque. Quas ex sed nam nesciunt. Quisquam amet eos quia ullam quasi rerum. Voluptate impedit autem enim aut qui. Nobis odit praesentium quis voluptas expedita necessitatibus qui labore. Ab eos quod vitae veritatis. Sed quos sit qui officiis et et. Qui ut recusandae illum. Magnam esse molestiae totam quae omnis ut dicta. Veritatis laborum nisi ratione dolores nobis quasi sit. Quas ut occaecati doloribus saepe maiores. Provident impedit adipisci molestias aperiam eos et ut. Et quia voluptatem dolor enim adipisci quia et. Cumque quia eos velit. Vero ut tempora repellendus earum ducimus. Est dolorem suscipit neque. Et sapiente neque quos alias. Aut laboriosam dolor dolorum sunt ut sunt dicta. Nostrum officiis impedit modi optio aut illo sit impedit. Ab corporis ut voluptatibus quos beatae. Repellendus voluptate est illum et aut esse vel. Labore voluptas et non. Dignissimos laborum vitae excepturi explicabo. Cumque dolorum explicabo impedit perferendis ipsa quod ratione quis. Voluptatem adipisci non voluptas saepe porro nisi. Provident facere ratione repellendus.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 25, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(21, 'Quibusdam numquam quibusdam vel et perspiciatis officia dignissimos cum sunt eos doloribus consequatur.', 'quibusdam-numquam-quibusdam-vel-et-perspiciatis-officia-dignissimos-cum-sunt-eos-doloribus-consequatur', 'Sit nesciunt voluptatem distinctio ut omnis autem. Est tempore excepturi aut et distinctio. Eos et velit ullam et iure ut. Facere sed quas enim nobis. Inventore dolorum autem excepturi rerum minus quasi. Magnam repudiandae est quia id. Quisquam eligendi at sed deleniti ullam dolores dolor. Id quae fugit velit quam nobis quo. Cupiditate perferendis ab nostrum eum dignissimos vel architecto vel. Tempore animi explicabo voluptatibus animi consequatur quia eum. Esse ex sint neque perferendis. Eos nam et quos aut a autem placeat est. Beatae est quasi sit aperiam deserunt culpa. Quo sapiente tempore exercitationem voluptas. Explicabo dolorum aliquid sit nemo. Non et praesentium voluptas autem. Illum temporibus minus et sunt inventore. Illum cum ut sunt. A vero alias ut nesciunt nostrum. Aut qui id odit ut unde. Enim alias pariatur quibusdam quia asperiores id facilis. Eveniet sed similique velit earum. Itaque maxime officiis repellendus porro sunt. Blanditiis aut molestiae temporibus. Nam corrupti veniam et. Aut omnis porro quae pariatur. Ex libero quia distinctio omnis. Eligendi error et perspiciatis voluptatem delectus facere et. Earum ut aut earum velit perspiciatis. Quae et eaque et accusamus sed sint et. Minus quia sunt nostrum tempora laboriosam at.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 13, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(22, 'Iusto et a rerum eaque eos et.', 'iusto-et-a-rerum-eaque-eos-et', 'Beatae voluptate quibusdam commodi eum accusamus. Beatae corrupti beatae numquam qui deleniti beatae iste voluptas. Illum a dolor consectetur et id nihil. Minus laboriosam voluptatem perspiciatis blanditiis. Quo qui dolorum qui praesentium. Aliquam nostrum quaerat sint libero ut consequatur. Aspernatur repudiandae ducimus omnis alias. Velit qui architecto totam ducimus aut. Quia et qui cumque voluptate. Praesentium blanditiis sed et aspernatur vel illo. Fuga excepturi non quia velit deserunt. Laborum qui explicabo delectus aut consequatur expedita doloremque aut. Omnis quaerat qui consequuntur aut aut. Autem non similique dolores. Doloribus culpa ea modi sed natus quia facilis. Deserunt sequi natus sint beatae quaerat perferendis ab. Eaque quo et aut ut consequatur. Accusamus ut consequatur enim. Officia ad exercitationem maxime aut quia.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 2, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(23, 'Fugiat quod sed voluptas enim tempora eaque voluptatem voluptatum sed fuga quidem.', 'fugiat-quod-sed-voluptas-enim-tempora-eaque-voluptatem-voluptatum-sed-fuga-quidem', 'Provident quia eveniet incidunt alias quaerat porro rerum. Omnis nostrum id alias sed quam facere inventore. Accusamus sint et qui nisi. Doloribus quae voluptate rem id nemo autem. Dignissimos in voluptatem neque molestias similique. Assumenda ducimus consequuntur iste nobis quisquam praesentium voluptas quia. Delectus velit laboriosam ut debitis ut autem quo. Omnis omnis nemo a qui harum. Consequuntur tenetur aliquid perferendis est. Quibusdam ut et et nihil. Sequi autem earum voluptas commodi qui doloremque. Occaecati deserunt voluptates impedit tenetur provident reiciendis. Tempore sit earum et vel totam. Omnis voluptate quod suscipit repudiandae aut. Aliquid incidunt aut ut id repellat et velit. Deleniti aut voluptas sed id quas officiis illo. Aut tenetur ullam molestias temporibus dignissimos. Facilis minima distinctio ratione. Tempora repellat qui et. Sit reprehenderit accusantium neque beatae repellat aliquid ut. Beatae molestiae ipsam commodi ducimus molestiae.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 4, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(24, 'Et porro dolorem illo doloribus vel debitis.', 'et-porro-dolorem-illo-doloribus-vel-debitis', 'Non culpa accusantium impedit est. Ex at ducimus aliquam et alias sed voluptatem rem. Quas architecto dolores magnam velit minus accusamus quas in. Commodi vel ut et ipsum non mollitia praesentium asperiores. Porro omnis perspiciatis incidunt est nihil ullam. Asperiores blanditiis quam expedita officia dolores sapiente. Ea rerum praesentium quod alias. Tempore labore modi id commodi doloribus. Ut laudantium non rerum enim assumenda. Consequatur odio nostrum est placeat non est. Optio dolor cumque esse voluptatem fugit ut in amet. Fugit nisi itaque aut adipisci. Quis amet saepe similique expedita dolore temporibus veritatis. Dolores veritatis est qui qui ipsam. Atque officiis aut dolor ipsum ducimus. Quod provident aut rem officia excepturi totam. Blanditiis temporibus nesciunt omnis vel. Illum quod quo qui a sit. Molestias et animi provident aliquid est ad enim. Odit perspiciatis consequatur consequatur iure. Adipisci facilis quia fuga voluptatem. Corporis ut rerum sed quia eligendi.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 9, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(25, 'Facere quas expedita fugiat aut sed aut aspernatur.', 'facere-quas-expedita-fugiat-aut-sed-aut-aspernatur', 'Quisquam nemo et veniam voluptate qui. Aut nobis eaque libero. Ut ipsum unde odio non sit. Inventore aliquid velit qui voluptas corporis natus deserunt. Et voluptates et debitis magnam. Libero non at nihil ipsa qui voluptate. Est nulla necessitatibus non error. Vero sequi quo aut enim accusantium aut magnam. Atque tempore numquam quod similique ut ullam dolorem. Quas ratione vero aut ea fuga sed commodi. Tempore ad ut velit non ratione a voluptas. Iusto assumenda corporis voluptatum suscipit error vel voluptatem. Soluta maiores tenetur nam perspiciatis. Sapiente voluptatem fugit ut odio. Reprehenderit vitae voluptatem minus perspiciatis adipisci. Consequatur ratione ab reiciendis impedit voluptatibus in veritatis vel. Ad est alias et impedit. Voluptas vero incidunt velit quaerat voluptate consectetur. Rerum nesciunt esse repudiandae nisi et consectetur. Dolores quas atque necessitatibus nisi asperiores. Sint et laboriosam ab ut est. Quasi amet rem magnam molestias impedit veniam aut.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 13, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(26, 'Pariatur aperiam eligendi debitis ea quos soluta molestiae maiores necessitatibus.', 'pariatur-aperiam-eligendi-debitis-ea-quos-soluta-molestiae-maiores-necessitatibus', 'Est optio eligendi soluta ut vitae. Iusto asperiores iste enim ducimus voluptatem commodi nihil. Perspiciatis qui dolor dicta ipsa corrupti. Molestias delectus eos corrupti nemo dicta dolorem id. Iure dolor quibusdam a accusantium maiores facilis. Est aut autem illo ut. Voluptatibus asperiores iure facilis asperiores et accusamus similique. Veniam quis doloribus odio dignissimos amet eos quis. Doloremque distinctio rerum sint animi aut laboriosam voluptate. Sed temporibus ducimus error ad est libero. Facere harum tenetur quisquam. Omnis optio ad enim cumque et sed iusto. Debitis ut neque eum aut ut. Totam nihil earum porro. Odio consequatur eum qui sunt mollitia qui. Itaque maxime dolorem corporis sit sunt quod. Laudantium blanditiis nemo architecto. Quidem temporibus beatae facere sunt quia. Voluptates qui ut optio amet voluptatem quam. Tempora porro consequatur sed totam occaecati qui. Unde incidunt culpa beatae. Eius sit non sed. Et molestiae vero quos aliquid et. Voluptas laborum labore eos cupiditate iusto rerum mollitia quam. Id magni quia eum quos praesentium quae. Voluptatibus nam ipsa a a. Rerum veritatis sit ea distinctio ut est. Quisquam quia optio commodi numquam. Quidem nesciunt ut et voluptas et molestias. Earum quae ut illum consectetur pariatur est. Dolorum cum libero laborum quidem nulla magni placeat et.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 20, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(27, 'Autem occaecati aspernatur a velit fuga ut non molestias mollitia ea doloribus optio explicabo.', 'autem-occaecati-aspernatur-a-velit-fuga-ut-non-molestias-mollitia-ea-doloribus-optio-explicabo', 'Accusantium nisi minus veniam dolore. Recusandae ipsa ea alias voluptas quidem. Assumenda quia voluptatem quis et iste hic qui. Enim corporis expedita in et voluptatem. Deserunt vel sapiente eligendi quo et. Sed nobis sint quibusdam rem. Qui delectus inventore deleniti quod voluptatem corporis laudantium. Praesentium sequi vero quia. Ullam facere odio dolores. Quis aut illum consequatur sint. Laborum architecto eligendi voluptatem laudantium laboriosam accusantium dolores. Explicabo sit repudiandae recusandae quasi tempore dolores. Consequatur voluptas modi molestiae voluptatibus debitis. Illum natus sint et deleniti iusto quidem odit. Natus voluptas consequatur et quos aut recusandae. Eum voluptatem asperiores minima ut repellat enim dolores. Quo quis neque excepturi voluptatem ipsum molestiae quis inventore. Ab numquam cumque et qui sed. Quasi molestias aut eligendi velit qui enim. Repellendus ullam consequuntur dolorum aut voluptatem aut vel. Enim ut est animi aliquam veniam laborum. A commodi amet et temporibus placeat ducimus. Itaque aut iure et dicta et. Eos labore perferendis ullam nihil quod ea. Rerum ex pariatur qui cum debitis.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 2, '2021-08-27 08:02:06', '2021-08-27 08:02:06'),
(28, 'Sed consequatur ipsa nostrum odio excepturi asperiores quas.', 'sed-consequatur-ipsa-nostrum-odio-excepturi-asperiores-quas', 'Nesciunt minus optio assumenda laboriosam voluptatum qui minima. Qui repellat fugit repellat porro error. Vero dolores et laboriosam dignissimos. Itaque autem ipsum rem nobis. Minima hic perspiciatis animi sed quibusdam odit. Animi magnam culpa itaque eos quisquam occaecati. Eos temporibus ipsa aut expedita. Delectus quo eveniet accusantium sit id. Sunt sapiente mollitia deleniti sit eos hic quod. Ex corrupti eligendi suscipit animi atque autem impedit. Beatae eum aut accusantium sint rerum similique sapiente corrupti. Porro ut fugiat et et vero. Ipsa quisquam quo voluptatem facilis earum tempora. Cupiditate saepe nemo voluptatem repudiandae. Et fuga iste qui eos eaque. Necessitatibus culpa quod facilis quae accusamus itaque quia. Similique et praesentium quia porro. Commodi est dolor nostrum corrupti dolores aspernatur quod. Illum quia necessitatibus ut voluptatem. Dicta quia eveniet officia. Sunt eos cupiditate qui velit dolorem. Fugit voluptatem occaecati harum quia. Rerum qui ut voluptatum qui voluptatem. Rerum qui animi autem a alias sed. Perspiciatis magni iste fugiat facere saepe non. Quasi consequatur dolore non soluta.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 4, '2021-08-27 08:02:07', '2021-08-27 08:02:07'),
(29, 'Ullam numquam incidunt autem nihil commodi non quae velit ut nobis sit voluptas dolorem.', 'ullam-numquam-incidunt-autem-nihil-commodi-non-quae-velit-ut-nobis-sit-voluptas-dolorem', 'Doloremque possimus adipisci non quis cum consequatur rem. Dolor aut libero sapiente numquam. Consequatur asperiores eos ipsa temporibus ea cupiditate facere. Asperiores sed veniam quas ipsum. Placeat odit eum eligendi iusto. Mollitia commodi expedita velit inventore. Qui ipsum sequi et adipisci. Sit libero cupiditate iure iure itaque esse dicta dicta. Debitis voluptatibus sunt mollitia est minima qui labore. Occaecati enim ipsam dolor eius vel. Perferendis reprehenderit dolor iste ipsam quia. Eaque in laudantium vel. Nostrum est consectetur provident. Voluptatum alias cumque numquam est quas. Nam sunt excepturi voluptas a adipisci. Alias deserunt est recusandae aut voluptas a aliquid. Quaerat aut rem quia natus perspiciatis consequatur. Odio beatae ad dolores voluptas aut voluptas. Enim sequi dolore sunt aspernatur possimus nesciunt. Ut nobis eveniet est non quasi laboriosam ullam. Quia rerum ab eveniet ad et deserunt accusantium. Corporis fuga deserunt ipsa. Consectetur commodi atque quidem voluptatem iste soluta. Facere numquam eius et alias quia et. Vel sit reiciendis non voluptas dolorem harum soluta omnis. Omnis eum minima cumque tempore iste enim. Magnam et harum reprehenderit velit ab et pariatur. Aut ut ut eum ea nemo numquam. Quod aut dicta velit tenetur excepturi ratione placeat.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 16, '2021-08-27 08:02:07', '2021-08-27 08:02:07'),
(30, 'Consequatur quod eaque aut natus deserunt voluptatum aperiam.', 'consequatur-quod-eaque-aut-natus-deserunt-voluptatum-aperiam', 'Sed molestiae quia vitae voluptas. In magni quasi nisi unde. Velit vero dolore fugiat quisquam voluptatem illo porro. Quo minus molestiae expedita accusantium vero et soluta. Aut rerum voluptatum suscipit veritatis adipisci maxime assumenda ut. Saepe fugit aperiam iusto iure. Ut unde aut rem nam voluptas perspiciatis eius. Beatae et reprehenderit qui error recusandae eaque. Aliquid sint optio aut et sit ut dolor cumque. Quis quis ea eveniet accusantium earum et. Voluptas ut eius quo illo ut provident eveniet. Eum omnis soluta perferendis quibusdam magnam veniam. Quia culpa sunt enim debitis non quasi. Fugit laborum doloribus ullam perspiciatis. Et neque voluptates ut earum odit. Impedit et corrupti et reiciendis. Quia veniam temporibus placeat voluptas eos. Officiis sint molestias dicta cupiditate excepturi iusto ad. Quo ducimus eligendi quis maiores. Veniam magnam eos pariatur unde ipsum aut voluptate. Nihil ut voluptas rerum aut omnis consequatur. Et aut nisi placeat quia aut et. Et blanditiis numquam laboriosam voluptatum quibusdam dolorum cum voluptatum. Suscipit optio eligendi nihil dolorum fugiat. Et ad labore dolorem amet. Qui omnis exercitationem sed debitis quis ipsam. Tempora minima et quia eaque fuga earum similique. Et numquam ipsa nam.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 16, '2021-08-27 08:02:07', '2021-08-27 08:02:07'),
(31, 'Dolor consequatur assumenda minima nobis eum quidem quia omnis eaque.', 'dolor-consequatur-assumenda-minima-nobis-eum-quidem-quia-omnis-eaque', 'Qui id eos temporibus unde voluptatem. Dolor perferendis quia accusantium veritatis nisi. Exercitationem facere reiciendis quis. Consequatur aut aut non qui sit nihil. Aliquam veritatis dolores quibusdam libero. Nesciunt ad laudantium aspernatur in beatae doloremque. Accusantium libero aut consequuntur aspernatur fugit nesciunt sit perspiciatis. Eum id amet pariatur necessitatibus aut. Sapiente non et alias deserunt error impedit labore in. Voluptatem eveniet inventore aut in. Ex sapiente laboriosam quia minima. Voluptate dignissimos at suscipit consequatur deserunt. Beatae iste fuga quia. Ex reiciendis libero nemo et et cupiditate. In dicta cum qui aut deleniti nostrum natus. Omnis sequi eaque similique nam. Ut alias ipsum maiores necessitatibus exercitationem. Quis sit necessitatibus vero numquam enim qui. Officia facere qui dolor et possimus. Architecto accusamus corrupti a adipisci. Maxime ad velit rerum cupiditate vero.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 2, '2021-08-27 08:02:07', '2021-08-27 08:02:07'),
(32, 'Similique asperiores qui reiciendis et sint animi aut.', 'similique-asperiores-qui-reiciendis-et-sint-animi-aut', 'Voluptatem omnis voluptatibus et ullam quod. Incidunt non odit aut ipsam quis aut magnam sed. Magni consequatur repellat consequatur maxime. Ut ut earum aut autem delectus rerum. Laboriosam iste voluptas numquam cupiditate quia id. Suscipit nihil deserunt vero inventore error sequi. Blanditiis omnis voluptas voluptatum dolor molestiae suscipit. Delectus libero quas iste adipisci eum. Et molestias quibusdam inventore quas doloribus mollitia enim. Recusandae quia sequi atque saepe suscipit. Sunt at nobis dolorem accusamus et. Aspernatur reiciendis quia tenetur alias. Voluptatibus debitis odit deserunt voluptates. Corporis et excepturi quod. Unde similique ipsam similique pariatur aut est. Illo quas reiciendis eaque ad vel laborum. Consequatur tempora et recusandae quo expedita rerum. Et eligendi veniam magni itaque. Distinctio mollitia blanditiis rerum atque quia optio quia autem. Eos adipisci fugiat sint rem eos qui reprehenderit. Dicta mollitia id iste recusandae omnis maiores. Similique vero eos blanditiis quia quasi vero. In et est voluptas alias similique. Corporis dolores voluptatibus laborum id praesentium nihil neque. Fuga porro asperiores corrupti tenetur. Nobis sit autem nesciunt commodi. Eos atque consequatur aut asperiores.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 22, '2021-08-27 08:02:07', '2021-08-27 08:02:07'),
(33, 'At aut necessitatibus quis ut eveniet et minima ratione.', 'at-aut-necessitatibus-quis-ut-eveniet-et-minima-ratione', 'Deleniti consequatur eaque iure nisi quia. Ipsum praesentium vero tempore distinctio aut. Vero repellat et nobis sit voluptatem delectus non. Ipsa praesentium atque totam dolores sunt eaque. Et omnis non neque iure facilis quis molestiae. Error quia nihil ab dicta exercitationem repudiandae pariatur autem. Ab ducimus et ipsum laudantium impedit sit. Omnis consequatur deserunt sit laudantium. Libero iure et excepturi quae et. Illum ex qui nesciunt asperiores aut reprehenderit nemo. Rerum libero amet similique iure. Similique deleniti ut dicta sapiente consectetur earum. Nisi hic voluptas sed cum placeat nesciunt provident culpa. Et tenetur labore ad eaque quod voluptas qui. Dolore ea fugit vel earum nihil eius ex. Aut aut ex et et odio. Et dolore porro ipsam et molestiae occaecati modi. Qui maiores doloremque repellat. Sit provident sint quisquam cum.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 22, '2021-08-27 08:02:07', '2021-08-27 08:02:07'),
(34, 'Tempore nihil quo et inventore dignissimos ab impedit omnis.', 'tempore-nihil-quo-et-inventore-dignissimos-ab-impedit-omnis', 'Velit assumenda iste nostrum blanditiis earum. Voluptas reprehenderit perspiciatis sunt mollitia. Maxime sunt quo culpa enim molestiae optio sed. Dolore sit impedit est libero. Temporibus ipsam aut quas et ut reprehenderit rerum. Voluptatem hic ut eius sint reprehenderit quos. Consequatur et beatae ut porro dolor. Magnam itaque veritatis sequi voluptatem tempore. Numquam corrupti ut possimus non quibusdam maiores. Rerum sit ducimus a suscipit commodi quo repellat. Quisquam quia quisquam illo in maiores aut harum. Qui et rerum optio vel numquam qui voluptatibus. Omnis tempore iste aut ducimus quis aut quia. Nemo enim magni blanditiis. Sed aliquid qui repellat ea omnis asperiores. Libero dolorem error non a. Repellat officiis quibusdam corporis repellendus dolores est suscipit quisquam. Voluptas aut ex aut numquam facere autem. Placeat beatae molestiae ea est commodi quia ad. Dicta eligendi qui officiis veritatis. Animi quia esse deserunt autem tenetur sed pariatur. Et dignissimos velit itaque et possimus adipisci culpa. Tempore aut distinctio qui aut consequatur in. Et alias sequi minus quasi eveniet consectetur odit recusandae. Saepe necessitatibus voluptatum dolore dignissimos unde. Illum debitis sed dolores dicta optio commodi ut. Facere sed ut dolor maiores sit voluptatem beatae dolores.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 13, '2021-08-27 08:02:07', '2021-08-27 08:02:07');
INSERT INTO `videos` (`id`, `title`, `slug`, `desc`, `file`, `url`, `type`, `course_id`, `created_at`, `updated_at`) VALUES
(35, 'Quis fuga ipsa praesentium consequatur omnis quas dolorem animi qui.', 'quis-fuga-ipsa-praesentium-consequatur-omnis-quas-dolorem-animi-qui', 'Cum quibusdam illo ab alias cupiditate nisi vero. Sapiente possimus animi amet dicta soluta dolores neque. Maiores ab ut nulla maxime quo. Maiores ut nemo possimus est ut qui ex. Sequi porro voluptatem corrupti est eos. Harum eos nobis rerum est veniam. Deserunt ea quod veritatis est animi nihil ducimus. Eum amet omnis quo harum. Autem nulla dicta fugiat aliquam. Delectus tenetur placeat dolore amet consequatur unde. Sint ut ut mollitia ea. Sit eos tempore at qui ipsa quam. Laudantium quos pariatur et voluptates illo quasi aliquid. Saepe fugit et sit iure. Vitae provident molestiae ut illo non molestias et. Labore fugiat asperiores aliquid vitae quisquam. Repellat aut ex molestiae similique aut aut. Nihil dignissimos velit officia minus reprehenderit natus tenetur. Eveniet consectetur ut ut ab. Hic aut sint eius non libero molestiae sed. Velit nihil sed autem inventore eveniet aliquam ut. Quidem rerum in enim exercitationem. Veniam suscipit et voluptate est cum. Voluptas cumque laudantium autem sed. Dolor quam quo cumque.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 4, '2021-08-27 08:02:07', '2021-08-27 08:02:07'),
(36, 'Reprehenderit sit eum minima pariatur ea magni et et.', 'reprehenderit-sit-eum-minima-pariatur-ea-magni-et-et', 'Ut dignissimos incidunt recusandae minus. Est vero unde alias. Et ex assumenda voluptate doloremque facere illum. Nobis sint iusto fugit quasi. Impedit mollitia eaque dolor dolor sapiente commodi. Atque temporibus neque ipsa autem. Sed aut voluptas qui vitae non. Amet omnis odio ipsam facere tempore nulla sunt. Quos maiores harum quasi expedita et. Nulla ad repudiandae alias rerum. Pariatur ea iste blanditiis rerum ab ut sapiente. Qui quas qui incidunt minima. Fugiat necessitatibus voluptas illum nisi saepe. Rerum ratione labore nulla. Aliquam veniam id recusandae voluptatem quidem est voluptate qui. Qui ex similique voluptas dolores tenetur. Rerum sunt architecto ullam quis nobis omnis iusto. Saepe laudantium possimus temporibus doloribus ab repellat. Ab placeat maiores dolorem odit in sit repellendus accusamus. Maiores qui accusantium odio consequatur debitis qui qui. Ab illum saepe consequuntur repudiandae non sit sit. Quam rerum est debitis quia odit ab possimus. Est dignissimos sunt facilis minus. Quo eum aut harum veniam. Mollitia ea enim voluptatum voluptatem cupiditate. Illum asperiores suscipit velit praesentium quaerat. Sunt rerum qui qui voluptatum sit eum. Et totam quam corrupti ad eum numquam. Deleniti maxime saepe qui exercitationem. Omnis aut voluptas voluptatibus aliquid quo. Eum nihil qui dolorum dolorum minima et tempore. Recusandae non cupiditate delectus magni voluptatem ad.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 1, '2021-08-27 08:02:07', '2021-08-27 08:02:07'),
(37, 'Aperiam magni voluptatem quia molestiae nihil provident temporibus nisi dicta.', 'aperiam-magni-voluptatem-quia-molestiae-nihil-provident-temporibus-nisi-dicta', 'Accusantium voluptas est totam repudiandae voluptate ut. Expedita suscipit fugit porro illum. Assumenda aut maiores quo ut. Autem provident soluta aspernatur hic aliquam. Eveniet eum quas omnis sed unde. Sequi cum odio id doloremque facilis non. Vel tempora iusto minus quibusdam vitae. Voluptas nam enim autem necessitatibus voluptas reprehenderit. Sit nobis et amet nulla culpa. Aspernatur non eum ipsum tempore exercitationem nihil. Non odio sit id explicabo blanditiis. Aut qui amet deleniti. Quam magni suscipit aperiam aut. Perferendis assumenda deleniti eius nesciunt neque. Numquam esse officiis adipisci officia harum non voluptas corporis. Voluptate dignissimos distinctio atque asperiores dolores odio tenetur. Consequatur eveniet rem ut cumque dolore voluptatem. Voluptates et quo odit sit harum. Repellat numquam est dicta dignissimos voluptatem ipsum. Facere nam repudiandae numquam sit deleniti. Atque voluptatibus est officiis expedita dolorem praesentium ab. Eos voluptates dolor quasi id doloribus inventore id et. Ipsa blanditiis ut nisi. Asperiores nostrum quis error qui velit pariatur. Aut architecto nihil ut. Consequatur sit omnis eum culpa. Eos facilis animi molestiae aut. Quaerat dolores commodi qui ex. Odio velit esse tenetur sed. Possimus temporibus molestias ea distinctio deleniti molestiae. Fuga at natus quas. Expedita veniam assumenda pariatur similique amet consequatur. Ab dolorum repellat corporis doloribus.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 2, '2021-08-27 08:02:07', '2021-08-27 08:02:07'),
(38, 'Suscipit quo corrupti ut est quam nostrum fuga consequatur aliquam earum est.', 'suscipit-quo-corrupti-ut-est-quam-nostrum-fuga-consequatur-aliquam-earum-est', 'Voluptatem amet eum commodi architecto aspernatur sed. Molestiae architecto fugiat rerum. Et aut iure unde vitae sapiente aut. Magnam libero veritatis ipsam nesciunt iste possimus inventore. Est unde consequatur provident in et. Deleniti temporibus quam et molestias. Hic sapiente ratione ea. Ullam ipsa est quos rerum. Temporibus natus dolor ducimus sint. Perspiciatis nihil ipsa placeat nobis odio non. Est corrupti eum id porro. In illo quas voluptates sed eligendi qui. Cumque autem minima natus accusamus ut non. Omnis voluptatem quo pariatur enim voluptatem earum. Doloremque fugit dolorem cumque saepe quo aliquid. Explicabo alias cumque quae qui aut. Reprehenderit sed odio sed voluptatem dignissimos alias culpa. Tempora quaerat quia ullam rerum sequi qui. Iste inventore voluptatem et libero sit. Animi odio non veniam voluptates. Dolorem cumque qui cumque quisquam est eum enim. Amet consequatur sed odit eum labore qui vel. Laborum et voluptatibus omnis dolor aspernatur nesciunt. Quis earum praesentium ab rerum accusamus eum. Minima ipsam quo adipisci occaecati accusantium. Blanditiis quos deserunt perspiciatis itaque inventore amet dolore. Incidunt nobis qui reiciendis ut. Dolor sint dolores qui quia provident asperiores at. Voluptatum dolor consequatur consequuntur qui et. Facere repellat et molestias quae qui velit. Placeat maxime minima maiores consequuntur.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 15, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(39, 'Et molestiae corrupti fugiat necessitatibus quia maiores quos odio est molestiae deleniti ut consectetur odit voluptatibus voluptatem.', 'et-molestiae-corrupti-fugiat-necessitatibus-quia-maiores-quos-odio-est-molestiae-deleniti-ut-consectetur-odit-voluptatibus-voluptatem', 'Voluptatum beatae sed cumque quod dolorum tempora quos. Ratione quis consequatur ipsum et aut explicabo quis magni. Quisquam culpa et qui voluptatem. Et vitae quod necessitatibus et rem voluptate sunt. Non deleniti provident aliquid et officiis provident. Qui tempora consequatur eum exercitationem. Nisi autem sunt dolor distinctio illo voluptatem. Aspernatur non eligendi iste eligendi. Assumenda voluptatem voluptas illo voluptatem modi iste rem. Aut odio recusandae aliquid ut dolores est atque. Ea consequatur odio beatae quaerat error vero expedita quisquam. Aperiam doloribus eligendi temporibus accusamus voluptas doloremque. Atque quas praesentium ipsa consequatur enim. Tenetur vero porro corporis assumenda repellat. Debitis est quia unde mollitia dolores numquam. Id cupiditate exercitationem cumque sed dolores. Eligendi aspernatur incidunt repellendus sequi et voluptatem voluptatem. Sunt itaque inventore quis vel magni. Tenetur cupiditate quos amet qui alias nobis minima. Laudantium corrupti dolorem occaecati voluptates illo aliquid nemo repellat. Sed excepturi vel corporis est eos aut itaque. Ad exercitationem corrupti consectetur consequuntur exercitationem. Iste distinctio est accusamus nemo consequatur eos. Vero delectus aliquam temporibus iste atque a aspernatur. Quisquam quos voluptas omnis quisquam qui. Autem explicabo et reiciendis et tempore minima maxime. Eligendi id officia earum rerum.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 25, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(40, 'Esse neque tempore totam nihil adipisci.', 'esse-neque-tempore-totam-nihil-adipisci', 'Ipsum qui minus impedit vel consequatur delectus dolores provident. Natus quisquam veritatis nesciunt aut. Sed earum ea ea architecto eaque reprehenderit et. Itaque facere aut unde quo voluptatem. Ut voluptas et omnis ut sunt. Voluptatem non consectetur suscipit. Ea et sint expedita enim rem quidem eos omnis. Consequatur rem aut quas consequatur iusto reiciendis quia. Qui numquam ut magni exercitationem quo esse. Tenetur odit modi reprehenderit et. Perspiciatis et natus sit itaque. Sapiente quis autem nulla deserunt velit. Voluptas qui qui eos eligendi laboriosam accusamus et. Dolores reprehenderit aut unde molestiae alias. Reprehenderit quia blanditiis molestiae repudiandae. Sint provident laboriosam minus eum totam modi recusandae. Nulla id quia numquam aut aliquam distinctio dolorum. Voluptatem inventore facilis voluptatem facilis est ad. Impedit maiores modi rem odio quos modi nobis. Illo harum reiciendis aut voluptatem natus. Iste quas eveniet est quos laboriosam. Deserunt sint est nam praesentium maiores. Quod tempore temporibus eaque sit fuga omnis dolorem molestias. Nisi facilis nesciunt voluptatem ea.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 13, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(41, 'In animi ipsum qui recusandae corporis repellat provident repellendus expedita quia necessitatibus.', 'in-animi-ipsum-qui-recusandae-corporis-repellat-provident-repellendus-expedita-quia-necessitatibus', 'Id at repudiandae et maxime. Reiciendis at nisi quis dolorem nihil vel. Quasi modi excepturi a culpa. Ut sint iusto autem dicta. At sapiente et rerum saepe vel repudiandae nostrum. Veritatis est temporibus qui cupiditate. Dicta velit perferendis velit fugit eos quo quia. Tempora quis nam tempora. Alias enim placeat quasi officiis. Omnis quia qui magni incidunt autem iste. Tempora laborum sequi nam nam est necessitatibus ut. Omnis asperiores id voluptatem sint vel porro. Suscipit ea optio ipsam culpa accusamus nam repudiandae. Est deserunt molestiae nulla placeat rem. Voluptatem voluptatum fugit modi. Aut dolorum ea sunt minus numquam rerum vel. Dolore qui occaecati alias. Consequatur provident placeat ex quia consequuntur. Saepe tempora maiores dolor et. Soluta occaecati qui quam est minima. Deleniti exercitationem ipsam aut qui. Sed veritatis ducimus quia et repudiandae in aut et. Perspiciatis nisi in molestias velit ad incidunt. Impedit non minima odit quia quidem aut magni. Ratione et ad commodi deleniti labore suscipit nobis. Repudiandae explicabo voluptatem ratione quisquam recusandae. Asperiores ipsa optio quo impedit in fugit earum eos. Repellendus non nesciunt libero aut temporibus tenetur. Vero quidem itaque occaecati alias dolor. Necessitatibus aut sit maxime perferendis autem.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 1, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(42, 'Officia eaque nostrum qui et in aut eos.', 'officia-eaque-nostrum-qui-et-in-aut-eos', 'Voluptatibus minima et aut. Facilis ad non in eum cumque. Reprehenderit maiores repudiandae asperiores consequatur sed quia odit. Maxime occaecati quis eum occaecati. Sint non consequuntur impedit aspernatur impedit rerum. Accusamus nostrum vitae libero laudantium. Blanditiis quo dolores dicta natus natus. Exercitationem aut odit suscipit facilis quae. Iure sequi sed et sit quasi itaque natus praesentium. Impedit numquam incidunt est natus alias. Dolor nemo impedit rerum voluptates. Eius cupiditate vel soluta voluptatem quibusdam quis unde. Laborum odit explicabo est et impedit. Necessitatibus hic et voluptatem harum. Ex sed error dolore perferendis voluptates qui occaecati. Magni rem vitae tenetur provident dolores architecto sed. Hic qui veniam excepturi autem est qui. Quis ut distinctio quo molestiae. Eligendi vel eum ratione est fuga nihil modi aliquam. Facilis maxime eum aut id suscipit. Recusandae ut possimus temporibus ex et. Sapiente quis eligendi esse recusandae cupiditate. Rem magnam quia harum voluptatem praesentium ad.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 13, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(43, 'Vel autem incidunt et aut in dolore sit.', 'vel-autem-incidunt-et-aut-in-dolore-sit', 'Nostrum nisi eaque vitae ut impedit temporibus magnam aperiam. Corrupti magni id qui et iure neque. Ipsum eos odit culpa illum voluptates in quis ut. Tempora qui voluptas adipisci consectetur. Nostrum esse tenetur non accusantium rem quia velit. Et libero assumenda quibusdam quas quia. Debitis minus quasi est et eius. Voluptatem ut quae aut ipsam enim nisi. Ut vel est quod molestiae modi eius. Minima aut sint in qui et quia. Aperiam facilis exercitationem enim vel incidunt. Rerum voluptates recusandae qui nobis laborum voluptas. Quos quia numquam aut corrupti qui. Et in atque ut ullam. Porro hic quis quaerat dignissimos quae. Consequatur nemo et et. Ut et et veritatis ut ut impedit. In totam eum quasi. Dolorem eius eos sit quod voluptate est ut beatae. Provident eos numquam qui quae perspiciatis. Doloremque in autem debitis illum enim sequi. Temporibus deserunt laborum officia deserunt a cupiditate maxime laborum. Omnis placeat eos dolorum facilis facere et assumenda. Nulla ex corporis tempora.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 9, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(44, 'Possimus et et et enim quis et tempora aut.', 'possimus-et-et-et-enim-quis-et-tempora-aut', 'In animi ipsam quas consequatur error. Voluptatum harum aliquam accusantium. Molestiae hic dolor blanditiis ut et dolor. Necessitatibus libero tenetur vel culpa vero. Dolorum eius et aliquam minima porro aut corrupti. Est quibusdam minus vel. Et porro cupiditate officia a veritatis. Id sapiente consequuntur rerum praesentium. Vero molestiae omnis fuga ut harum nisi. Consequatur rerum est dolore a aut. Mollitia omnis in voluptas veniam placeat itaque ut. Qui quod qui voluptates et. Vel rerum consectetur odio quia. Numquam omnis aspernatur ipsam sunt ullam. Sunt voluptate beatae totam omnis sunt consequatur voluptatem. Dolores dolorum corrupti sit iste quasi et atque voluptatem. Eveniet quasi ducimus recusandae. Nesciunt unde facere odio temporibus similique. Vero atque asperiores sint. Ut error provident ipsam dolor modi natus voluptatem. Nesciunt expedita a et incidunt. Maiores placeat asperiores voluptatem nam porro. Voluptatem esse omnis asperiores nihil velit ex. Officiis et quos similique itaque quaerat reprehenderit. Laborum omnis molestiae quasi reprehenderit omnis. Esse ex pariatur minus voluptatem. Et assumenda qui ut autem tempora. Qui maiores quo quia. Qui pariatur repellendus ut asperiores autem fugiat rerum quas. Sunt ut occaecati sunt qui quis totam. Aliquid cum et ut. Et et velit ad natus itaque commodi dolor blanditiis. Quam quis ipsam labore consequatur voluptates. Mollitia reiciendis placeat rem et molestias.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 23, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(45, 'Veritatis magnam mollitia tenetur harum est sunt numquam voluptatem in dolor aliquam dolores saepe.', 'veritatis-magnam-mollitia-tenetur-harum-est-sunt-numquam-voluptatem-in-dolor-aliquam-dolores-saepe', 'Qui et adipisci voluptatibus ea. Totam quas officia porro sed adipisci omnis. Quidem est dicta in deleniti totam quam reiciendis. Modi sunt ab hic aspernatur molestiae at est. Iusto velit repudiandae veniam eum mollitia temporibus ut in. Culpa sint doloremque minima corrupti. Velit voluptatibus itaque aut hic a. Expedita qui voluptas et architecto vitae sint recusandae. Autem aspernatur dicta dolores molestias cumque. Itaque culpa quia occaecati rerum. Minus vel consequuntur quos in nemo. Impedit facilis eius quam laborum quaerat. Praesentium doloremque eaque officia in. Voluptate dolor et aut et dolore sapiente quis. Velit recusandae aut id debitis esse et. Quas voluptatibus deleniti repellat consequatur reiciendis. Ad in libero quia expedita quia quas ut sunt. Accusamus sint maiores voluptas. Quia vitae ipsam ea sint alias quis velit voluptate. Quia ad nihil iusto natus. Animi corporis illum consequatur tempore. Nihil quidem dicta deserunt. Non dolorem sunt ullam. Porro asperiores quos voluptatem quisquam error in.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 1, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(46, 'Ullam facilis fugiat repellendus aut sunt quaerat illum.', 'ullam-facilis-fugiat-repellendus-aut-sunt-quaerat-illum', 'Et commodi laudantium officia et fuga culpa. Debitis provident voluptatem nihil doloremque iure est. Laborum saepe est voluptatem dolorem ut error doloribus. Molestiae minima ab nihil quam quo aspernatur sit. Quas repudiandae non dignissimos. Deleniti repellendus qui sapiente. Est quam reprehenderit reprehenderit sunt omnis. Voluptatem sint labore nihil id in dolore. Doloremque perferendis aut minima et enim sit debitis. Velit aut ea vero laboriosam quis fuga qui. Eveniet vel occaecati molestiae repellat. Modi itaque suscipit quia quo. Quibusdam cum ea sapiente sed esse facere dolor. Quam eveniet dignissimos nihil voluptas dolorum. Et qui cupiditate cumque sint. Mollitia adipisci ut veritatis et et expedita eligendi. Cumque dolorem at ducimus nobis natus et delectus quia. Reiciendis nihil esse cupiditate recusandae expedita aliquam voluptatem. Omnis velit velit architecto eum. Non veniam atque vero qui. Qui voluptate qui et nesciunt quia. Voluptatem nobis ipsum illum corporis. Doloremque velit distinctio facilis explicabo occaecati et architecto. Nesciunt sit aliquam quo aut error rerum sunt voluptatem. Ea dolor ut cumque eaque consectetur sit. Necessitatibus laborum illum maxime velit rem. Dolorum cupiditate numquam veniam dolores. Molestiae dolorum et quaerat modi perferendis est laboriosam. Voluptatem esse neque qui saepe et velit.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 2, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(47, 'Eum ducimus neque corrupti aut blanditiis voluptate velit blanditiis ut quas commodi.', 'eum-ducimus-neque-corrupti-aut-blanditiis-voluptate-velit-blanditiis-ut-quas-commodi', 'Culpa impedit consequatur sed labore illum pariatur. Ut dolorem qui doloremque enim rerum quasi. Ad sint molestias modi odio. Dignissimos dicta voluptatem animi iure qui atque. Provident voluptatem soluta adipisci et ut consequatur voluptas voluptatum. Qui aut temporibus voluptates et dicta. Aliquid sed commodi qui enim. Ipsum architecto ut quaerat voluptas aut autem modi. A quia est molestiae. Corporis provident sequi eveniet delectus reprehenderit enim. Tempora repellendus veniam et. In minus deleniti maiores optio. Qui molestiae voluptas nihil. Incidunt non voluptates et. Officiis deleniti minus quibusdam ut eius eius. Exercitationem adipisci sint sunt perferendis ut. Iure sed repellat inventore quae. Consectetur numquam qui ut ipsa. Molestiae placeat perspiciatis et possimus distinctio. Voluptatum error assumenda doloribus iusto et quis.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 2, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(48, 'Possimus temporibus velit ullam animi fuga dolor eum voluptatem enim tenetur ad asperiores autem.', 'possimus-temporibus-velit-ullam-animi-fuga-dolor-eum-voluptatem-enim-tenetur-ad-asperiores-autem', 'Ad sequi qui dolore deserunt aut. Voluptas necessitatibus nam vel perspiciatis fuga. Iste ipsa assumenda earum. Rerum consequatur quia ducimus. Alias voluptate eius iusto deleniti sequi. Est illum minus non quo voluptas incidunt. Dolores est dolorum aut animi rerum tenetur. Iure qui quos numquam deleniti veniam. Accusantium autem sed doloribus quia ipsum ea ut. Consequatur optio laboriosam itaque cum. In totam nihil omnis qui. Ut labore autem earum deserunt numquam est quia. Tenetur voluptas qui unde rerum modi assumenda. Nobis cumque autem sit tempore reiciendis omnis. Neque voluptatem sit qui fugiat non cumque et illo. Numquam enim id animi quia necessitatibus veniam. Saepe aut voluptas soluta beatae. Excepturi quas perferendis natus natus odit. Eius iure occaecati recusandae dolor autem enim. Sequi qui culpa dolor ducimus. Rerum unde mollitia illo molestiae quo. Nobis expedita dolor sit assumenda sunt reiciendis. Consequatur quo incidunt excepturi sunt reiciendis accusamus exercitationem. Accusantium non dolorem non ducimus necessitatibus expedita optio. Harum vitae sit nobis. Tempore quis natus dolor ratione culpa explicabo non. Culpa unde odit laboriosam animi unde eos corrupti. Voluptatibus voluptatem aut eos voluptas esse voluptas non aut. Quisquam et quo quis optio. Aut debitis excepturi sint a rem facere harum. Asperiores nisi harum sunt autem sed aut. Officia magni aperiam illum sequi. Voluptatem omnis iste eius blanditiis neque commodi.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 2, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(49, 'Mollitia hic sint in deserunt et reiciendis hic.', 'mollitia-hic-sint-in-deserunt-et-reiciendis-hic', 'Saepe ipsam rerum voluptas. Soluta illum quia voluptatum sed ab voluptatem. Vitae dicta earum quia a eius. Velit nihil exercitationem id minus quas et. Accusantium adipisci beatae impedit sit. Asperiores architecto porro earum assumenda aut quia. Autem sit praesentium aliquid et. Explicabo consequatur eaque non voluptas illum. Earum quod perspiciatis itaque natus beatae voluptas. Aut itaque laudantium dolores debitis sunt. Voluptatem ut fugiat aliquid. Adipisci incidunt ratione consequatur aliquid voluptates harum placeat et. Consequatur est iusto alias quia ab. Officiis sit asperiores eum aut sed sunt tempora. Minima assumenda qui recusandae fugit a est. Itaque quia beatae quidem facere. Dolorem beatae dolor mollitia voluptas. Amet cupiditate et aut facilis consequatur sit autem. Sit quos aut qui illo hic et. Aut ratione commodi suscipit cupiditate animi voluptatibus quisquam et. Repudiandae consectetur aut eaque. Sit perspiciatis adipisci ut consequuntur molestias ea. Officia libero et asperiores voluptatum ducimus porro.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 15, '2021-08-27 08:02:08', '2021-08-27 08:02:08'),
(50, 'Non aliquam voluptatem natus doloremque architecto sit aliquid inventore voluptas.', 'non-aliquam-voluptatem-natus-doloremque-architecto-sit-aliquid-inventore-voluptas', 'Fugiat architecto corporis vel quibusdam id. At aliquam odio officia magnam laudantium voluptatem. Nesciunt recusandae minima consequatur possimus et itaque facere sed. Quo aut vitae nostrum quod est. Exercitationem quaerat nemo quos quod qui voluptatibus quia. Eaque laborum aut quas. Praesentium sunt doloremque omnis eum molestiae. Quam eos nisi est beatae distinctio et. Sit quidem repellat illo. Hic sit sit sit optio. Harum voluptatibus dolorem modi dolores animi soluta quam. Perspiciatis autem quia illum quis voluptas odit nemo. Et consequatur dignissimos dolores voluptas ex iusto. Quo quasi nisi suscipit sed. Consequatur iste quibusdam iure dolor error aliquam. Quia rerum odit vel repellat error. Iure cumque occaecati eos laboriosam omnis et non. Nostrum et ea officiis corporis veniam et labore. Et autem rerum et magni quo. Quasi sed ipsum odio maiores tempore praesentium et. Corporis quis optio magni perspiciatis sunt vel eos. Necessitatibus reiciendis inventore reiciendis sunt. Blanditiis facilis quasi minima quasi. Dolores at ut sit totam nisi. Tempore nemo dicta eveniet molestias incidunt aut. Impedit iusto velit sed doloribus minima pariatur ut quasi. Eum porro et nam eius. Et velit quis tempora delectus autem voluptatem aperiam earum. Ut qui laboriosam possimus et.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 4, '2021-08-27 08:02:08', '2021-08-27 08:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitorable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitorable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `agent`, `visitorable_type`, `visitorable_id`) VALUES
(1, '94.68.59.5', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_2 rv:5.0) Gecko/20191013 Firefox/35.0', 'App\\Models\\Video', 35),
(2, '163.50.249.74', 'Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/532.4.4 (KHTML, like Gecko) Version/4.1 Safari/532.4.4', 'App\\Models\\Video', 30),
(3, '141.119.39.221', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5330 (KHTML, like Gecko) Chrome/39.0.828.0 Mobile Safari/5330', 'App\\Models\\Video', 42),
(4, '110.221.120.93', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_7) AppleWebKit/5362 (KHTML, like Gecko) Chrome/39.0.808.0 Mobile Safari/5362', 'App\\Models\\Video', 10),
(5, '235.67.30.146', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/534.42.5 (KHTML, like Gecko) Version/4.0 Safari/534.42.5', 'App\\Models\\Video', 37),
(6, '193.53.197.224', 'Mozilla/5.0 (Windows NT 6.2; sl-SI; rv:1.9.2.20) Gecko/20190601 Firefox/35.0', 'App\\Models\\Video', 8),
(7, '132.49.32.252', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20150904 Firefox/35.0', 'App\\Models\\Video', 5),
(8, '139.150.169.95', 'Opera/8.85 (X11; Linux i686; en-US) Presto/2.10.324 Version/10.00', 'App\\Models\\Video', 19),
(9, '51.251.9.80', 'Opera/9.99 (Windows 98; en-US) Presto/2.10.355 Version/11.00', 'App\\Models\\Video', 42),
(10, '63.180.228.232', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_7 rv:3.0; en-US) AppleWebKit/531.12.3 (KHTML, like Gecko) Version/4.0.5 Safari/531.12.3', 'App\\Models\\Video', 47),
(11, '19.246.191.134', 'Mozilla/5.0 (Windows; U; Windows 95) AppleWebKit/532.2.4 (KHTML, like Gecko) Version/5.1 Safari/532.2.4', 'App\\Models\\Video', 45),
(12, '132.230.84.71', 'Opera/8.62 (X11; Linux i686; en-US) Presto/2.9.246 Version/11.00', 'App\\Models\\Video', 28),
(13, '36.209.249.102', 'Opera/9.63 (Windows 98; Win 9x 4.90; en-US) Presto/2.9.239 Version/11.00', 'App\\Models\\Video', 40),
(14, '10.173.175.237', 'Opera/9.52 (X11; Linux x86_64; en-US) Presto/2.11.262 Version/12.00', 'App\\Models\\Video', 22),
(15, '131.81.142.52', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5362 (KHTML, like Gecko) Chrome/40.0.833.0 Mobile Safari/5362', 'App\\Models\\Video', 29),
(16, '71.80.183.10', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident/5.0)', 'App\\Models\\Video', 6),
(17, '68.86.62.206', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_8) AppleWebKit/5312 (KHTML, like Gecko) Chrome/38.0.833.0 Mobile Safari/5312', 'App\\Models\\Video', 33),
(18, '2.83.2.174', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_0 rv:2.0) Gecko/20180708 Firefox/36.0', 'App\\Models\\Video', 26),
(19, '29.203.34.42', 'Mozilla/5.0 (Windows; U; Windows CE) AppleWebKit/532.42.6 (KHTML, like Gecko) Version/4.0.4 Safari/532.42.6', 'App\\Models\\Video', 20),
(20, '196.10.182.232', 'Opera/8.17 (Windows 98; Win 9x 4.90; sl-SI) Presto/2.8.323 Version/11.00', 'App\\Models\\Video', 19),
(21, '103.139.59.94', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/4.0)', 'App\\Models\\Video', 7),
(22, '53.241.145.205', 'Mozilla/5.0 (Windows; U; Windows NT 5.2) AppleWebKit/533.1.3 (KHTML, like Gecko) Version/5.0.4 Safari/533.1.3', 'App\\Models\\Video', 12),
(23, '138.183.181.47', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2_2 like Mac OS X; en-US) AppleWebKit/532.44.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B113 Safari/6532.44.4', 'App\\Models\\Video', 5),
(24, '183.24.250.242', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_0) AppleWebKit/5360 (KHTML, like Gecko) Chrome/38.0.847.0 Mobile Safari/5360', 'App\\Models\\Video', 36),
(25, '206.3.116.105', 'Opera/8.74 (X11; Linux x86_64; en-US) Presto/2.10.254 Version/12.00', 'App\\Models\\Video', 37),
(26, '163.106.26.34', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_9) AppleWebKit/5321 (KHTML, like Gecko) Chrome/40.0.860.0 Mobile Safari/5321', 'App\\Models\\Video', 33),
(27, '114.56.162.21', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7 rv:6.0; sl-SI) AppleWebKit/535.2.3 (KHTML, like Gecko) Version/5.0.1 Safari/535.2.3', 'App\\Models\\Video', 42),
(28, '160.131.10.162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_1 like Mac OS X; en-US) AppleWebKit/534.27.4 (KHTML, like Gecko) Version/3.0.5 Mobile/8B117 Safari/6534.27.4', 'App\\Models\\Video', 6),
(29, '46.182.51.158', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_2_1 like Mac OS X; en-US) AppleWebKit/535.13.2 (KHTML, like Gecko) Version/4.0.5 Mobile/8B111 Safari/6535.13.2', 'App\\Models\\Video', 30),
(30, '192.55.140.170', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_9 rv:2.0) Gecko/20200928 Firefox/36.0', 'App\\Models\\Video', 12),
(31, '250.35.37.150', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/534.25.4 (KHTML, like Gecko) Version/4.0.4 Safari/534.25.4', 'App\\Models\\Video', 35),
(32, '53.71.240.210', 'Opera/8.24 (Windows NT 4.0; en-US) Presto/2.11.178 Version/10.00', 'App\\Models\\Video', 25),
(33, '203.171.227.37', 'Opera/8.84 (X11; Linux x86_64; en-US) Presto/2.9.350 Version/11.00', 'App\\Models\\Video', 46),
(34, '193.162.3.111', 'Opera/9.89 (X11; Linux i686; en-US) Presto/2.12.204 Version/10.00', 'App\\Models\\Video', 47),
(35, '6.132.173.177', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90; Trident/5.1)', 'App\\Models\\Video', 23),
(36, '207.15.243.156', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.1)', 'App\\Models\\Video', 12),
(37, '209.157.205.68', 'Opera/8.71 (X11; Linux x86_64; sl-SI) Presto/2.11.168 Version/12.00', 'App\\Models\\Video', 36),
(38, '202.220.237.252', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_1 like Mac OS X; en-US) AppleWebKit/531.26.1 (KHTML, like Gecko) Version/4.0.5 Mobile/8B114 Safari/6531.26.1', 'App\\Models\\Video', 8),
(39, '172.11.165.47', 'Opera/9.39 (Windows NT 6.1; sl-SI) Presto/2.10.280 Version/12.00', 'App\\Models\\Video', 47),
(40, '195.211.219.72', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X; en-US) AppleWebKit/532.12.7 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6532.12.7', 'App\\Models\\Video', 37),
(41, '78.61.126.145', 'Opera/9.84 (Windows NT 6.2; en-US) Presto/2.10.288 Version/11.00', 'App\\Models\\Video', 16),
(42, '208.46.196.69', 'Opera/8.61 (X11; Linux x86_64; sl-SI) Presto/2.11.349 Version/12.00', 'App\\Models\\Video', 9),
(43, '143.170.202.133', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_7) AppleWebKit/5330 (KHTML, like Gecko) Chrome/37.0.812.0 Mobile Safari/5330', 'App\\Models\\Video', 38),
(44, '131.59.72.69', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5330 (KHTML, like Gecko) Chrome/40.0.812.0 Mobile Safari/5330', 'App\\Models\\Video', 22),
(45, '10.22.19.190', 'Opera/8.18 (X11; Linux i686; sl-SI) Presto/2.10.311 Version/10.00', 'App\\Models\\Video', 38),
(46, '43.155.158.45', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5361 (KHTML, like Gecko) Chrome/40.0.867.0 Mobile Safari/5361', 'App\\Models\\Video', 8),
(47, '175.26.47.161', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_0 rv:3.0; en-US) AppleWebKit/531.34.4 (KHTML, like Gecko) Version/4.0.3 Safari/531.34.4', 'App\\Models\\Video', 18),
(48, '120.254.0.198', 'Opera/9.30 (Windows NT 5.0; en-US) Presto/2.11.292 Version/12.00', 'App\\Models\\Video', 11),
(49, '35.115.238.253', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5360 (KHTML, like Gecko) Chrome/40.0.861.0 Mobile Safari/5360', 'App\\Models\\Video', 49),
(50, '30.39.14.12', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Trident/4.1)', 'App\\Models\\Video', 25),
(51, '2.139.97.137', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X; sl-SI) AppleWebKit/532.5.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B114 Safari/6532.5.7', 'App\\Models\\Video', 9),
(52, '118.57.35.15', 'Mozilla/5.0 (iPad; CPU OS 7_0_2 like Mac OS X; sl-SI) AppleWebKit/533.20.5 (KHTML, like Gecko) Version/3.0.5 Mobile/8B112 Safari/6533.20.5', 'App\\Models\\Video', 31),
(53, '140.156.86.237', 'Opera/9.35 (X11; Linux i686; en-US) Presto/2.12.282 Version/11.00', 'App\\Models\\Video', 1),
(54, '70.136.158.81', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20161217 Firefox/36.0', 'App\\Models\\Video', 1),
(55, '242.54.239.4', 'Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5340 (KHTML, like Gecko) Chrome/38.0.873.0 Mobile Safari/5340', 'App\\Models\\Video', 46),
(56, '146.255.216.251', 'Mozilla/5.0 (Windows 95) AppleWebKit/5362 (KHTML, like Gecko) Chrome/37.0.892.0 Mobile Safari/5362', 'App\\Models\\Video', 19),
(57, '250.80.8.105', 'Opera/9.45 (X11; Linux x86_64; sl-SI) Presto/2.12.351 Version/11.00', 'App\\Models\\Video', 37),
(58, '80.154.83.191', 'Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/532.4.5 (KHTML, like Gecko) Version/4.0.3 Safari/532.4.5', 'App\\Models\\Video', 41),
(59, '181.93.151.94', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows CE; Trident/3.0)', 'App\\Models\\Video', 9),
(60, '89.8.128.12', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5321 (KHTML, like Gecko) Chrome/40.0.854.0 Mobile Safari/5321', 'App\\Models\\Video', 26),
(61, '66.52.197.180', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_7 rv:3.0) Gecko/20190216 Firefox/36.0', 'App\\Models\\Video', 47),
(62, '170.195.55.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7 rv:6.0; sl-SI) AppleWebKit/531.42.4 (KHTML, like Gecko) Version/5.0 Safari/531.42.4', 'App\\Models\\Video', 25),
(63, '184.241.25.157', 'Mozilla/5.0 (Windows 95) AppleWebKit/5340 (KHTML, like Gecko) Chrome/37.0.836.0 Mobile Safari/5340', 'App\\Models\\Video', 17),
(64, '85.232.167.223', 'Mozilla/5.0 (Windows NT 5.0; en-US; rv:1.9.1.20) Gecko/20180513 Firefox/35.0', 'App\\Models\\Video', 19),
(65, '228.253.122.196', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90; Trident/4.1)', 'App\\Models\\Video', 26),
(66, '84.122.176.21', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_0) AppleWebKit/5350 (KHTML, like Gecko) Chrome/39.0.864.0 Mobile Safari/5350', 'App\\Models\\Video', 23),
(67, '188.123.62.173', 'Opera/8.66 (Windows 98; en-US) Presto/2.10.268 Version/11.00', 'App\\Models\\Video', 48),
(68, '98.74.125.90', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20200401 Firefox/35.0', 'App\\Models\\Video', 44),
(69, '223.47.116.82', 'Mozilla/5.0 (Windows NT 5.0; sl-SI; rv:1.9.0.20) Gecko/20110105 Firefox/37.0', 'App\\Models\\Video', 50),
(70, '142.67.63.151', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/5.1)', 'App\\Models\\Video', 4),
(71, '190.14.125.232', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20150321 Firefox/37.0', 'App\\Models\\Video', 36),
(72, '124.208.192.209', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/532.34.7 (KHTML, like Gecko) Version/4.0.5 Safari/532.34.7', 'App\\Models\\Video', 32),
(73, '231.240.172.254', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.01; Trident/5.1)', 'App\\Models\\Video', 28),
(74, '164.218.204.94', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_9 rv:3.0) Gecko/20181202 Firefox/36.0', 'App\\Models\\Video', 23),
(75, '49.89.221.143', 'Opera/9.57 (Windows NT 6.1; sl-SI) Presto/2.11.195 Version/11.00', 'App\\Models\\Video', 43),
(76, '37.158.76.86', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_5 rv:3.0) Gecko/20120221 Firefox/36.0', 'App\\Models\\Video', 17),
(77, '114.128.116.88', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.2 Safari/533.19.4', 'App\\Models\\Video', 16),
(78, '181.121.146.134', 'Opera/9.92 (X11; Linux x86_64; en-US) Presto/2.10.290 Version/11.00', 'App\\Models\\Video', 18),
(79, '149.54.254.57', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20140126 Firefox/35.0', 'App\\Models\\Video', 41),
(80, '107.229.29.34', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5322 (KHTML, like Gecko) Chrome/39.0.846.0 Mobile Safari/5322', 'App\\Models\\Video', 24),
(81, '239.5.118.9', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_9) AppleWebKit/5320 (KHTML, like Gecko) Chrome/36.0.847.0 Mobile Safari/5320', 'App\\Models\\Video', 29),
(82, '38.43.149.136', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20100425 Firefox/37.0', 'App\\Models\\Video', 2),
(83, '212.164.223.230', 'Mozilla/5.0 (Windows NT 5.01) AppleWebKit/5352 (KHTML, like Gecko) Chrome/38.0.895.0 Mobile Safari/5352', 'App\\Models\\Video', 12),
(84, '218.25.248.6', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5360 (KHTML, like Gecko) Chrome/37.0.827.0 Mobile Safari/5360', 'App\\Models\\Video', 14),
(85, '203.18.189.205', 'Mozilla/5.0 (Windows NT 6.1; sl-SI; rv:1.9.2.20) Gecko/20100510 Firefox/37.0', 'App\\Models\\Video', 23),
(86, '203.56.79.69', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_3 rv:4.0) Gecko/20121226 Firefox/36.0', 'App\\Models\\Video', 23),
(87, '90.81.251.68', 'Mozilla/5.0 (Windows NT 5.01; sl-SI; rv:1.9.0.20) Gecko/20111121 Firefox/36.0', 'App\\Models\\Video', 10),
(88, '229.149.105.247', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_3) AppleWebKit/5310 (KHTML, like Gecko) Chrome/38.0.811.0 Mobile Safari/5310', 'App\\Models\\Video', 32),
(89, '30.148.78.249', 'Opera/9.94 (X11; Linux i686; sl-SI) Presto/2.9.253 Version/11.00', 'App\\Models\\Video', 18),
(90, '83.173.52.31', 'Mozilla/5.0 (Windows; U; Windows NT 6.0) AppleWebKit/535.13.7 (KHTML, like Gecko) Version/5.0 Safari/535.13.7', 'App\\Models\\Video', 21),
(91, '167.189.243.56', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 98; Win 9x 4.90; Trident/5.1)', 'App\\Models\\Video', 48),
(92, '113.134.175.111', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20111124 Firefox/35.0', 'App\\Models\\Video', 17),
(93, '65.93.172.252', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5322 (KHTML, like Gecko) Chrome/37.0.858.0 Mobile Safari/5322', 'App\\Models\\Video', 7),
(94, '151.38.120.193', 'Mozilla/5.0 (Windows; U; Windows NT 4.0) AppleWebKit/534.29.7 (KHTML, like Gecko) Version/4.0.3 Safari/534.29.7', 'App\\Models\\Video', 42),
(95, '137.172.133.252', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/533.24.1 (KHTML, like Gecko) Version/4.0.3 Safari/533.24.1', 'App\\Models\\Video', 44),
(96, '234.108.201.34', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2) AppleWebKit/5360 (KHTML, like Gecko) Chrome/37.0.883.0 Mobile Safari/5360', 'App\\Models\\Video', 2),
(97, '150.154.224.192', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/37.0.882.0 Mobile Safari/5310', 'App\\Models\\Video', 7),
(98, '253.161.100.198', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5361 (KHTML, like Gecko) Chrome/36.0.882.0 Mobile Safari/5361', 'App\\Models\\Video', 10),
(99, '231.116.103.221', 'Opera/8.59 (X11; Linux i686; en-US) Presto/2.8.316 Version/12.00', 'App\\Models\\Video', 45),
(100, '197.234.51.213', 'Opera/8.97 (X11; Linux i686; en-US) Presto/2.9.187 Version/10.00', 'App\\Models\\Video', 4),
(101, '30.14.220.186', 'Opera/8.35 (X11; Linux x86_64; en-US) Presto/2.11.238 Version/11.00', 'App\\Models\\Post', 1),
(102, '154.85.240.61', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_6) AppleWebKit/5352 (KHTML, like Gecko) Chrome/38.0.833.0 Mobile Safari/5352', 'App\\Models\\Post', 9),
(103, '21.11.135.246', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/531.48.4 (KHTML, like Gecko) Version/5.0 Safari/531.48.4', 'App\\Models\\Post', 6),
(104, '231.7.95.231', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_8 rv:2.0; en-US) AppleWebKit/532.18.3 (KHTML, like Gecko) Version/5.0.5 Safari/532.18.3', 'App\\Models\\Post', 6),
(105, '54.95.65.83', 'Opera/8.64 (Windows NT 5.2; en-US) Presto/2.9.212 Version/12.00', 'App\\Models\\Post', 6),
(106, '91.192.48.238', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20190619 Firefox/36.0', 'App\\Models\\Post', 7),
(107, '5.254.78.241', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 95; Trident/5.1)', 'App\\Models\\Post', 4),
(108, '210.16.101.15', 'Opera/9.11 (X11; Linux i686; sl-SI) Presto/2.9.334 Version/11.00', 'App\\Models\\Post', 9),
(109, '243.85.229.104', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.2; Trident/3.1)', 'App\\Models\\Post', 1),
(110, '252.17.129.132', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20190808 Firefox/35.0', 'App\\Models\\Post', 3),
(111, '6.165.6.148', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5352 (KHTML, like Gecko) Chrome/36.0.862.0 Mobile Safari/5352', 'App\\Models\\Post', 9),
(112, '114.107.221.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X; sl-SI) AppleWebKit/535.40.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B112 Safari/6535.40.4', 'App\\Models\\Post', 4),
(113, '173.187.194.109', 'Opera/9.55 (Windows NT 5.2; sl-SI) Presto/2.12.295 Version/10.00', 'App\\Models\\Post', 1),
(114, '101.205.16.52', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20191215 Firefox/37.0', 'App\\Models\\Post', 7),
(115, '230.127.80.103', 'Opera/9.10 (Windows NT 6.1; sl-SI) Presto/2.12.163 Version/10.00', 'App\\Models\\Post', 1),
(116, '73.117.81.172', 'Mozilla/5.0 (Windows NT 5.2; sl-SI; rv:1.9.0.20) Gecko/20130407 Firefox/35.0', 'App\\Models\\Post', 9),
(117, '20.230.112.99', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.2; Trident/3.0)', 'App\\Models\\Post', 7),
(118, '188.17.146.48', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_9) AppleWebKit/5351 (KHTML, like Gecko) Chrome/37.0.812.0 Mobile Safari/5351', 'App\\Models\\Post', 8),
(119, '83.250.92.217', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20130610 Firefox/35.0', 'App\\Models\\Post', 1),
(120, '159.167.199.89', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/531.31.4 (KHTML, like Gecko) Version/5.0.2 Safari/531.31.4', 'App\\Models\\Post', 8),
(121, '243.201.190.228', 'Mozilla/5.0 (Windows; U; Windows 95) AppleWebKit/533.26.1 (KHTML, like Gecko) Version/4.0.5 Safari/533.26.1', 'App\\Models\\Post', 7),
(122, '64.248.55.194', 'Mozilla/5.0 (Windows NT 5.1; sl-SI; rv:1.9.1.20) Gecko/20160918 Firefox/36.0', 'App\\Models\\Post', 8),
(123, '99.169.42.247', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5312 (KHTML, like Gecko) Chrome/40.0.869.0 Mobile Safari/5312', 'App\\Models\\Post', 6),
(124, '100.122.3.58', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_6) AppleWebKit/5342 (KHTML, like Gecko) Chrome/39.0.868.0 Mobile Safari/5342', 'App\\Models\\Post', 9),
(125, '31.230.63.35', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5 rv:4.0; sl-SI) AppleWebKit/532.2.5 (KHTML, like Gecko) Version/4.1 Safari/532.2.5', 'App\\Models\\Post', 1),
(126, '142.33.77.172', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5341 (KHTML, like Gecko) Chrome/40.0.817.0 Mobile Safari/5341', 'App\\Models\\Post', 3),
(127, '100.0.92.182', 'Opera/8.73 (Windows NT 5.1; sl-SI) Presto/2.12.351 Version/11.00', 'App\\Models\\Post', 4),
(128, '42.173.1.158', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_0 rv:6.0; en-US) AppleWebKit/534.40.3 (KHTML, like Gecko) Version/5.0 Safari/534.40.3', 'App\\Models\\Post', 4),
(129, '36.139.135.45', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_1 rv:6.0) Gecko/20121016 Firefox/35.0', 'App\\Models\\Post', 9),
(130, '173.214.201.212', 'Mozilla/5.0 (iPad; CPU OS 8_2_2 like Mac OS X; sl-SI) AppleWebKit/534.35.1 (KHTML, like Gecko) Version/4.0.5 Mobile/8B114 Safari/6534.35.1', 'App\\Models\\Post', 8),
(131, '241.91.96.127', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.2; Trident/4.1)', 'App\\Models\\Post', 8),
(132, '219.192.101.192', 'Opera/8.36 (X11; Linux x86_64; en-US) Presto/2.11.198 Version/12.00', 'App\\Models\\Post', 1),
(133, '168.254.206.125', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_3 rv:6.0) Gecko/20191121 Firefox/37.0', 'App\\Models\\Post', 7),
(134, '192.78.179.21', 'Opera/8.67 (Windows 95; en-US) Presto/2.10.341 Version/11.00', 'App\\Models\\Post', 6),
(135, '92.15.155.222', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5322 (KHTML, like Gecko) Chrome/38.0.894.0 Mobile Safari/5322', 'App\\Models\\Post', 9),
(136, '50.5.177.73', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_8 rv:3.0; en-US) AppleWebKit/532.13.6 (KHTML, like Gecko) Version/5.0.3 Safari/532.13.6', 'App\\Models\\Post', 1),
(137, '212.61.87.240', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.01; Trident/4.1)', 'App\\Models\\Post', 1),
(138, '31.56.136.29', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_0 rv:5.0; en-US) AppleWebKit/532.36.6 (KHTML, like Gecko) Version/5.1 Safari/532.36.6', 'App\\Models\\Post', 6),
(139, '171.155.88.174', 'Mozilla/5.0 (Windows 95; sl-SI; rv:1.9.1.20) Gecko/20191001 Firefox/36.0', 'App\\Models\\Post', 4),
(140, '127.114.199.133', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_1 rv:6.0) Gecko/20180623 Firefox/35.0', 'App\\Models\\Post', 7),
(141, '43.216.114.47', 'Opera/8.46 (X11; Linux i686; en-US) Presto/2.9.248 Version/12.00', 'App\\Models\\Post', 6),
(142, '241.172.128.178', 'Mozilla/5.0 (Windows; U; Windows NT 4.0) AppleWebKit/535.26.6 (KHTML, like Gecko) Version/4.0.3 Safari/535.26.6', 'App\\Models\\Post', 4),
(143, '78.184.221.112', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; sl-SI) AppleWebKit/531.42.2 (KHTML, like Gecko) Version/4.0.5 Mobile/8B118 Safari/6531.42.2', 'App\\Models\\Post', 7),
(144, '105.139.99.190', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.2; Trident/3.0)', 'App\\Models\\Post', 7),
(145, '191.72.186.197', 'Opera/9.53 (X11; Linux i686; sl-SI) Presto/2.12.314 Version/10.00', 'App\\Models\\Post', 1),
(146, '156.3.113.15', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5322 (KHTML, like Gecko) Chrome/36.0.878.0 Mobile Safari/5322', 'App\\Models\\Post', 6),
(147, '64.208.223.59', 'Mozilla/5.0 (iPad; CPU OS 7_0_2 like Mac OS X; sl-SI) AppleWebKit/534.43.1 (KHTML, like Gecko) Version/4.0.5 Mobile/8B119 Safari/6534.43.1', 'App\\Models\\Post', 7),
(148, '149.66.174.52', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0 rv:3.0; en-US) AppleWebKit/531.17.5 (KHTML, like Gecko) Version/4.0.1 Safari/531.17.5', 'App\\Models\\Post', 8),
(149, '202.137.162.105', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5320 (KHTML, like Gecko) Chrome/37.0.838.0 Mobile Safari/5320', 'App\\Models\\Post', 7),
(150, '37.156.196.221', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.01; Trident/4.1)', 'App\\Models\\Post', 6),
(151, '131.213.77.168', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5350 (KHTML, like Gecko) Chrome/36.0.884.0 Mobile Safari/5350', 'App\\Models\\Post', 1),
(152, '37.216.2.120', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5312 (KHTML, like Gecko) Chrome/36.0.874.0 Mobile Safari/5312', 'App\\Models\\Post', 3),
(153, '131.138.80.27', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_3) AppleWebKit/5340 (KHTML, like Gecko) Chrome/39.0.868.0 Mobile Safari/5340', 'App\\Models\\Post', 4),
(154, '211.20.229.29', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20210618 Firefox/37.0', 'App\\Models\\Post', 9),
(155, '118.23.214.210', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_5) AppleWebKit/5322 (KHTML, like Gecko) Chrome/36.0.865.0 Mobile Safari/5322', 'App\\Models\\Post', 3),
(156, '163.108.172.94', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2_2 like Mac OS X; sl-SI) AppleWebKit/533.39.5 (KHTML, like Gecko) Version/3.0.5 Mobile/8B111 Safari/6533.39.5', 'App\\Models\\Post', 8),
(157, '233.113.168.22', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5310 (KHTML, like Gecko) Chrome/37.0.841.0 Mobile Safari/5310', 'App\\Models\\Post', 6),
(158, '124.215.138.241', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/3.1)', 'App\\Models\\Post', 4),
(159, '227.165.6.37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5321 (KHTML, like Gecko) Chrome/39.0.813.0 Mobile Safari/5321', 'App\\Models\\Post', 3),
(160, '106.242.127.1', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_5) AppleWebKit/5340 (KHTML, like Gecko) Chrome/40.0.825.0 Mobile Safari/5340', 'App\\Models\\Post', 4),
(161, '141.230.7.176', 'Mozilla/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; sl-SI) AppleWebKit/533.36.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B112 Safari/6533.36.7', 'App\\Models\\Post', 4),
(162, '7.153.96.15', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 4.0; Trident/4.0)', 'App\\Models\\Post', 1),
(163, '242.136.38.149', 'Opera/8.42 (X11; Linux i686; en-US) Presto/2.11.347 Version/10.00', 'App\\Models\\Post', 6),
(164, '31.169.40.150', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_8) AppleWebKit/5311 (KHTML, like Gecko) Chrome/38.0.803.0 Mobile Safari/5311', 'App\\Models\\Post', 9),
(165, '21.205.35.110', 'Mozilla/5.0 (Windows NT 4.0; sl-SI; rv:1.9.0.20) Gecko/20130930 Firefox/37.0', 'App\\Models\\Post', 7),
(166, '69.97.24.19', 'Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/534.10.2 (KHTML, like Gecko) Version/5.0 Safari/534.10.2', 'App\\Models\\Post', 7),
(167, '222.168.16.253', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/531.33.4 (KHTML, like Gecko) Version/4.1 Safari/531.33.4', 'App\\Models\\Post', 3),
(168, '72.24.100.26', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5342 (KHTML, like Gecko) Chrome/38.0.855.0 Mobile Safari/5342', 'App\\Models\\Post', 4),
(169, '37.185.254.4', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20110528 Firefox/37.0', 'App\\Models\\Post', 6),
(170, '104.73.62.20', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.0; Trident/4.1)', 'App\\Models\\Post', 4),
(171, '236.61.40.163', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.1; Trident/3.0)', 'App\\Models\\Post', 6),
(172, '152.153.204.51', 'Opera/8.27 (X11; Linux i686; en-US) Presto/2.9.188 Version/11.00', 'App\\Models\\Post', 7),
(173, '198.164.227.114', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_3 rv:4.0) Gecko/20201002 Firefox/35.0', 'App\\Models\\Post', 7),
(174, '32.105.115.20', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20121226 Firefox/37.0', 'App\\Models\\Post', 8),
(175, '163.67.152.63', 'Opera/9.58 (X11; Linux i686; sl-SI) Presto/2.8.244 Version/11.00', 'App\\Models\\Post', 3),
(176, '138.5.201.56', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_1 rv:6.0; en-US) AppleWebKit/531.40.4 (KHTML, like Gecko) Version/4.0.3 Safari/531.40.4', 'App\\Models\\Post', 7),
(177, '91.24.32.104', 'Mozilla/5.0 (Windows; U; Windows 95) AppleWebKit/531.2.6 (KHTML, like Gecko) Version/5.0.4 Safari/531.2.6', 'App\\Models\\Post', 3),
(178, '62.235.87.19', 'Opera/8.56 (X11; Linux i686; sl-SI) Presto/2.12.202 Version/11.00', 'App\\Models\\Post', 3),
(179, '247.38.5.125', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_8 rv:3.0; sl-SI) AppleWebKit/532.16.7 (KHTML, like Gecko) Version/4.0.2 Safari/532.16.7', 'App\\Models\\Post', 7),
(180, '70.129.136.105', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.2; Trident/3.0)', 'App\\Models\\Post', 7),
(181, '205.51.170.177', 'Opera/8.51 (Windows NT 5.1; sl-SI) Presto/2.9.329 Version/10.00', 'App\\Models\\Post', 7),
(182, '149.240.32.138', 'Mozilla/5.0 (Windows CE) AppleWebKit/5320 (KHTML, like Gecko) Chrome/39.0.898.0 Mobile Safari/5320', 'App\\Models\\Post', 7),
(183, '61.234.156.53', 'Mozilla/5.0 (Windows NT 5.01; en-US; rv:1.9.1.20) Gecko/20190819 Firefox/35.0', 'App\\Models\\Post', 3),
(184, '128.152.31.35', 'Mozilla/5.0 (Windows CE; sl-SI; rv:1.9.0.20) Gecko/20150508 Firefox/37.0', 'App\\Models\\Post', 6),
(185, '215.198.193.158', 'Opera/8.24 (X11; Linux x86_64; sl-SI) Presto/2.12.236 Version/11.00', 'App\\Models\\Post', 6),
(186, '237.207.79.190', 'Opera/8.83 (Windows NT 6.1; sl-SI) Presto/2.12.208 Version/11.00', 'App\\Models\\Post', 8),
(187, '218.167.250.9', 'Opera/9.96 (Windows NT 5.2; en-US) Presto/2.10.330 Version/12.00', 'App\\Models\\Post', 1),
(188, '220.236.114.55', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 4.0; Trident/5.1)', 'App\\Models\\Post', 3),
(189, '169.254.181.169', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/3.0)', 'App\\Models\\Post', 3),
(190, '193.174.82.13', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_4 rv:2.0) Gecko/20200325 Firefox/35.0', 'App\\Models\\Post', 7),
(191, '185.91.179.171', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.1; Trident/5.0)', 'App\\Models\\Post', 4),
(192, '26.199.180.141', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows 98; Trident/4.1)', 'App\\Models\\Post', 8),
(193, '62.95.157.195', 'Opera/8.95 (Windows 98; Win 9x 4.90; sl-SI) Presto/2.12.307 Version/12.00', 'App\\Models\\Post', 6),
(194, '43.15.189.195', 'Opera/9.51 (X11; Linux i686; en-US) Presto/2.8.161 Version/11.00', 'App\\Models\\Post', 1),
(195, '208.37.201.193', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/533.40.2 (KHTML, like Gecko) Version/4.1 Safari/533.40.2', 'App\\Models\\Post', 9),
(196, '19.134.250.96', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5320 (KHTML, like Gecko) Chrome/38.0.834.0 Mobile Safari/5320', 'App\\Models\\Post', 1),
(197, '74.221.247.84', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/531.46.1 (KHTML, like Gecko) Version/4.0.1 Safari/531.46.1', 'App\\Models\\Post', 3),
(198, '216.192.126.164', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Win 9x 4.90; Trident/3.1)', 'App\\Models\\Post', 8),
(199, '184.202.129.52', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5332 (KHTML, like Gecko) Chrome/36.0.880.0 Mobile Safari/5332', 'App\\Models\\Post', 3),
(200, '194.75.227.110', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_4) AppleWebKit/5350 (KHTML, like Gecko) Chrome/40.0.851.0 Mobile Safari/5350', 'App\\Models\\Post', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD UNIQUE KEY `categories_order_unique` (`order`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_course_id_foreign` (`course_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_likeable_type_likeable_id_index` (`likeable_type`,`likeable_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_ratingable_type_ratingable_id_index` (`ratingable_type`,`ratingable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sliders_name_unique` (`name`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_images_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_follow`
--
ALTER TABLE `user_follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_follow_follower_id_foreign` (`follower_id`),
  ADD KEY `user_follow_follow_id_foreign` (`follow_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_course_id_foreign` (`course_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitors_visitorable_type_visitorable_id_index` (`visitorable_type`,`visitorable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_follow`
--
ALTER TABLE `user_follow`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD CONSTRAINT `slider_images_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_follow`
--
ALTER TABLE `user_follow`
  ADD CONSTRAINT `user_follow_follow_id_foreign` FOREIGN KEY (`follow_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_follow_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
