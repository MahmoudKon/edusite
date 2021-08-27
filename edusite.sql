-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2021 at 11:40 AM
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
(1, 'Web Developer', 'web-developer', 1, 0),
(2, 'Web Designer', 'web-designer', 2, 1),
(3, 'Ui&Ux Designer', 'ui-ux-designer', 3, 0),
(4, 'Desktop Application', 'desktop-application', 4, 0),
(5, 'Mobile Application', 'mobile-application', 5, 1),
(6, 'Web Application', 'web-application', 6, 1),
(7, 'Artificial Intelligence', 'artificial-intelligence', 7, 0),
(8, 'IT & Multimedia Design', 'it&-multimedia-design', 8, 0);

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
(1, 'Quia et sed eos fugiat error fugiat quidem labore voluptate et consequatur.', 'App\\Models\\Post', 5, 4, '2021-08-27 07:39:20', '2021-08-27 07:39:20'),
(2, 'Quia adipisci ut aut eum quo et quia non a quam ipsum quas.', 'App\\Models\\Post', 1, 1, '2021-08-27 07:39:20', '2021-08-27 07:39:20'),
(3, 'Debitis ipsum eum officiis et non blanditiis voluptates consectetur ex et eos eligendi illum dolores labore dignissimos.', 'App\\Models\\Post', 5, 2, '2021-08-27 07:39:21', '2021-08-27 07:39:21'),
(4, 'Non facere molestiae vel expedita deserunt et est voluptates illo quidem.', 'App\\Models\\Post', 1, 11, '2021-08-27 07:39:21', '2021-08-27 07:39:21'),
(5, 'Voluptas eligendi voluptates ut possimus quia sapiente consequatur sit sint incidunt.', 'App\\Models\\Post', 1, 6, '2021-08-27 07:39:21', '2021-08-27 07:39:21'),
(6, 'Quia aspernatur deleniti voluptatem omnis eos ullam porro.', 'App\\Models\\Post', 5, 10, '2021-08-27 07:39:21', '2021-08-27 07:39:21'),
(7, 'Perferendis aut et sunt asperiores dolorem non est debitis qui.', 'App\\Models\\Post', 5, 6, '2021-08-27 07:39:21', '2021-08-27 07:39:21'),
(8, 'Nihil eos porro eos a repellat fugiat unde tenetur accusamus ut.', 'App\\Models\\Post', 5, 7, '2021-08-27 07:39:21', '2021-08-27 07:39:21'),
(9, 'Qui magni nihil reiciendis molestias soluta natus esse ipsam magni minus eos exercitationem consequatur exercitationem vitae.', 'App\\Models\\Post', 5, 13, '2021-08-27 07:39:21', '2021-08-27 07:39:21'),
(10, 'Vero est sed impedit et reiciendis totam rerum.', 'App\\Models\\Post', 8, 8, '2021-08-27 07:39:21', '2021-08-27 07:39:21'),
(11, 'Illum aut quisquam illo laudantium eligendi quidem quos nulla aspernatur.', 'App\\Models\\Post', 1, 12, '2021-08-27 07:39:21', '2021-08-27 07:39:21'),
(12, 'Totam sunt laborum voluptas vel qui ea incidunt occaecati architecto accusantium non dolor eum ut qui.', 'App\\Models\\Post', 2, 6, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(13, 'Facilis qui magnam molestiae minima voluptatum molestiae quo voluptas odit explicabo totam.', 'App\\Models\\Post', 4, 9, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(14, 'Et temporibus tempora blanditiis deleniti quibusdam dolorem voluptatibus minus est.', 'App\\Models\\Post', 2, 8, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(15, 'Assumenda ad sunt nobis assumenda et accusamus ipsam.', 'App\\Models\\Post', 8, 7, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(16, 'Harum libero aperiam modi aliquid recusandae corporis qui magnam accusamus sint harum facere rerum.', 'App\\Models\\Post', 2, 9, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(17, 'Esse dicta et labore nemo qui et suscipit earum quia.', 'App\\Models\\Post', 8, 13, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(18, 'Porro minus nobis temporibus explicabo earum tenetur molestiae quam cumque.', 'App\\Models\\Post', 1, 11, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(19, 'Dolor quas et porro labore eum itaque voluptas distinctio blanditiis consequatur.', 'App\\Models\\Post', 4, 11, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(20, 'Distinctio impedit quia reprehenderit reprehenderit illum rerum sit nemo velit aut.', 'App\\Models\\Post', 2, 7, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(21, 'Et quos cum ab asperiores placeat neque dolores vel sed asperiores tempora fugiat.', 'App\\Models\\Post', 8, 8, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(22, 'Numquam maiores exercitationem animi ut facere minus dicta.', 'App\\Models\\Post', 5, 13, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(23, 'Tenetur quisquam tempora quia architecto eos cum officia quos et quisquam debitis pariatur est.', 'App\\Models\\Post', 1, 6, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(24, 'Labore perspiciatis architecto ad sed ea quam magni quo.', 'App\\Models\\Post', 8, 2, '2021-08-27 07:39:22', '2021-08-27 07:39:22'),
(25, 'Sed libero laborum et ex ducimus id cupiditate maiores qui aut neque sit alias.', 'App\\Models\\Post', 8, 6, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(26, 'A ratione blanditiis quia a sint sapiente sed.', 'App\\Models\\Post', 2, 6, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(27, 'Magni omnis illum delectus et qui nisi quo ad et et quidem vero.', 'App\\Models\\Post', 4, 2, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(28, 'Nihil eos esse aut aspernatur ipsam vel voluptatibus natus rerum dolor error.', 'App\\Models\\Post', 8, 8, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(29, 'Ad expedita dolore voluptatem ea laborum eum.', 'App\\Models\\Post', 8, 8, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(30, 'Ab deleniti rem qui aliquid sequi qui fugiat rerum consectetur et.', 'App\\Models\\Post', 1, 5, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(31, 'Temporibus ea qui debitis est nihil adipisci est veniam porro sit vel.', 'App\\Models\\Course', 1, 12, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(32, 'Vel enim qui sit nulla tempore alias.', 'App\\Models\\Course', 20, 2, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(33, 'Temporibus cumque perferendis dolores facilis quibusdam perferendis omnis at.', 'App\\Models\\Course', 6, 6, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(34, 'Eos dolorem amet expedita molestias provident porro eos vel at iure.', 'App\\Models\\Course', 18, 2, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(35, 'Libero aut maxime ut dolore in rerum in.', 'App\\Models\\Course', 6, 10, '2021-08-27 07:39:23', '2021-08-27 07:39:23'),
(36, 'Vero tenetur minus nam porro maiores et itaque laborum atque voluptatem illo.', 'App\\Models\\Course', 25, 2, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(37, 'Expedita sed beatae et qui modi id praesentium et sequi qui minima.', 'App\\Models\\Course', 17, 1, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(38, 'Ipsa vero voluptatum unde adipisci vel rem tempore voluptatum iusto dolore.', 'App\\Models\\Course', 11, 3, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(39, 'Vel sequi qui consectetur iure rerum molestiae non illum accusamus minus sed nulla inventore dolores perferendis.', 'App\\Models\\Course', 11, 10, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(40, 'Numquam error unde voluptas porro ducimus doloremque aut ipsa et ipsam qui.', 'App\\Models\\Course', 6, 12, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(41, 'Iste pariatur laudantium autem facilis repellendus voluptatem laborum nam hic nam.', 'App\\Models\\Course', 24, 6, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(42, 'Praesentium nam est consequatur eveniet deleniti aperiam harum explicabo veniam quis a recusandae.', 'App\\Models\\Course', 17, 9, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(43, 'Nostrum adipisci inventore magni beatae eveniet quod omnis ex.', 'App\\Models\\Course', 10, 7, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(44, 'Molestiae et hic rerum quia porro ea doloribus.', 'App\\Models\\Course', 10, 4, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(45, 'Quas deserunt placeat dolor consequatur voluptas debitis odio reprehenderit consequatur rem eaque molestiae voluptas ratione.', 'App\\Models\\Course', 10, 10, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(46, 'Ut placeat amet dignissimos laborum quasi laborum eum et ut quo et.', 'App\\Models\\Course', 11, 9, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(47, 'Ipsa sint enim magnam reprehenderit blanditiis minus officiis nam id impedit perferendis omnis.', 'App\\Models\\Course', 18, 1, '2021-08-27 07:39:24', '2021-08-27 07:39:24'),
(48, 'Id quos quidem qui magni numquam et non id distinctio nihil illo quae.', 'App\\Models\\Course', 15, 1, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(49, 'Quasi eum cumque nobis ratione et et rerum explicabo corporis.', 'App\\Models\\Course', 1, 1, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(50, 'A magni velit facilis qui qui quibusdam doloribus aut est earum tempora ab.', 'App\\Models\\Course', 24, 4, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(51, 'Ipsam adipisci commodi maiores harum ullam est delectus repellat sint id qui qui consectetur dolor molestias saepe.', 'App\\Models\\Course', 20, 11, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(52, 'Aperiam rerum soluta eos labore quo delectus inventore.', 'App\\Models\\Course', 14, 11, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(53, 'Magni repudiandae velit accusamus necessitatibus sed dicta libero aperiam.', 'App\\Models\\Course', 11, 5, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(54, 'Similique molestias cumque error assumenda accusamus sed amet amet quos illo velit molestiae.', 'App\\Models\\Course', 25, 10, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(55, 'Est id aliquam dolores aut eaque est sed aperiam occaecati maiores ullam sapiente non dolor occaecati.', 'App\\Models\\Course', 1, 11, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(56, 'Beatae veniam numquam voluptatem voluptatem non quis.', 'App\\Models\\Course', 11, 7, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(57, 'Illum sapiente libero dolores expedita et consectetur veritatis vel id illum voluptatem ab animi.', 'App\\Models\\Course', 17, 1, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(58, 'Autem et maiores et eligendi sunt sint sed molestias sunt error minus ut.', 'App\\Models\\Course', 7, 13, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(59, 'Id omnis ipsam illo voluptatum impedit explicabo consequuntur facilis doloremque maiores unde aut.', 'App\\Models\\Course', 8, 9, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(60, 'Repudiandae corporis doloribus doloribus animi voluptatem occaecati earum quia ab qui qui.', 'App\\Models\\Course', 14, 9, '2021-08-27 07:39:25', '2021-08-27 07:39:25'),
(61, 'Sit ut qui illo qui dolor dolorum sit aut suscipit.', 'App\\Models\\Video', 30, 11, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(62, 'Enim corrupti dolorem molestiae excepturi qui quaerat natus eligendi eum dicta qui.', 'App\\Models\\Video', 18, 13, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(63, 'Mollitia quis sapiente ut accusamus sunt quaerat quasi commodi commodi.', 'App\\Models\\Video', 13, 9, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(64, 'Quam qui voluptatem voluptatem quia ipsam.', 'App\\Models\\Video', 8, 8, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(65, 'Veniam expedita iusto suscipit nisi delectus quia possimus esse at omnis quia enim.', 'App\\Models\\Video', 18, 10, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(66, 'Id eum ut aut et facere eos iusto et sunt laborum repellat aperiam eum.', 'App\\Models\\Video', 50, 11, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(67, 'Deleniti in occaecati quae consequatur perferendis provident.', 'App\\Models\\Video', 30, 3, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(68, 'Minus tempore iste fuga non fugit velit quod laudantium ut sunt quidem dolor rerum officia.', 'App\\Models\\Video', 15, 4, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(69, 'Sint facilis quia nesciunt numquam optio aspernatur excepturi esse sunt placeat dolores.', 'App\\Models\\Video', 49, 3, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(70, 'Nobis optio architecto alias nulla sequi voluptatum exercitationem assumenda voluptatem aut.', 'App\\Models\\Video', 1, 9, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(71, 'Possimus sequi expedita quos aut aut dolor quo iste quod eos similique blanditiis quis.', 'App\\Models\\Video', 22, 13, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(72, 'Omnis vitae quibusdam minima quia ex molestias dolor dolorem magnam reiciendis molestiae distinctio accusantium.', 'App\\Models\\Video', 15, 9, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(73, 'Ad non recusandae voluptates et et id dicta hic suscipit.', 'App\\Models\\Video', 30, 5, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(74, 'Nisi vitae qui qui voluptatem reprehenderit amet qui.', 'App\\Models\\Video', 21, 7, '2021-08-27 07:39:26', '2021-08-27 07:39:26'),
(75, 'Voluptate aliquid ut non nostrum dolores impedit ea.', 'App\\Models\\Video', 47, 11, '2021-08-27 07:39:27', '2021-08-27 07:39:27'),
(76, 'Sapiente qui porro nobis assumenda sit repellendus qui sed laudantium voluptatem unde consequatur.', 'App\\Models\\Video', 22, 12, '2021-08-27 07:39:27', '2021-08-27 07:39:27'),
(77, 'Aperiam reprehenderit at esse tenetur voluptatem qui veniam possimus nihil nesciunt reiciendis voluptatum aperiam.', 'App\\Models\\Video', 31, 8, '2021-08-27 07:39:27', '2021-08-27 07:39:27'),
(78, 'Ipsum qui quia aspernatur dolores sint consequatur officia debitis placeat.', 'App\\Models\\Video', 39, 10, '2021-08-27 07:39:27', '2021-08-27 07:39:27'),
(79, 'Aut nihil nesciunt quod quae non deserunt deserunt omnis sit voluptas debitis eligendi.', 'App\\Models\\Video', 30, 13, '2021-08-27 07:39:27', '2021-08-27 07:39:27'),
(80, 'Nulla repellat nihil corporis atque tempora illum pariatur nisi commodi perspiciatis.', 'App\\Models\\Video', 35, 7, '2021-08-27 07:39:27', '2021-08-27 07:39:27'),
(81, 'Inventore libero fuga sint tempore optio est rem est enim qui quo veritatis.', 'App\\Models\\Video', 17, 11, '2021-08-27 07:39:27', '2021-08-27 07:39:27'),
(82, 'Adipisci et aut architecto ut doloribus.', 'App\\Models\\Video', 29, 10, '2021-08-27 07:39:27', '2021-08-27 07:39:27'),
(83, 'Autem quaerat odit qui consequuntur ea accusantium recusandae sed nisi porro.', 'App\\Models\\Video', 21, 1, '2021-08-27 07:39:27', '2021-08-27 07:39:27'),
(84, 'Rerum repudiandae esse consequatur repellat voluptate pariatur hic qui ea sit qui id tempora.', 'App\\Models\\Video', 17, 4, '2021-08-27 07:39:28', '2021-08-27 07:39:28'),
(85, 'Aut quia eum fuga quidem consequatur placeat officiis tenetur similique.', 'App\\Models\\Video', 39, 8, '2021-08-27 07:39:28', '2021-08-27 07:39:28'),
(86, 'Incidunt quam et qui eligendi fugit sit.', 'App\\Models\\Video', 40, 5, '2021-08-27 07:39:28', '2021-08-27 07:39:28'),
(87, 'Deleniti quia ut corporis aut maxime voluptatum aut iusto veritatis est necessitatibus exercitationem.', 'App\\Models\\Video', 39, 2, '2021-08-27 07:39:28', '2021-08-27 07:39:28'),
(88, 'Est ut voluptas quod quibusdam laudantium eligendi fugiat temporibus.', 'App\\Models\\Video', 49, 3, '2021-08-27 07:39:28', '2021-08-27 07:39:28'),
(89, 'Ex blanditiis non occaecati est ut voluptas occaecati repellat voluptates et.', 'App\\Models\\Video', 13, 12, '2021-08-27 07:39:28', '2021-08-27 07:39:28'),
(90, 'Voluptates impedit est eum sed sed earum et porro ex nemo aut molestias exercitationem sed.', 'App\\Models\\Video', 36, 11, '2021-08-27 07:39:28', '2021-08-27 07:39:28');

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
(1, 'Cumque perspiciatis dolores eaque molestias nobis aut voluptas iusto consequuntur ipsa.', 'cumque-perspiciatis-dolores-eaque-molestias-nobis-aut-voluptas-iusto-consequuntur-ipsa', '6e52e1bd1a0d0caa525a80b15bfa8652.png', 'Perferendis laboriosam accusamus qui beatae. Sit ut aperiam earum ut qui maxime. Harum expedita quasi vero perferendis. Dolores error ut doloribus eveniet explicabo saepe. Saepe modi debitis saepe et cum et distinctio. Cumque laboriosam iure blanditiis vitae sit ea. Et expedita numquam quidem rerum officia cupiditate accusamus. Esse voluptates nostrum eum occaecati beatae. Est nesciunt illo quas quia aliquid. Ipsam reiciendis facere distinctio omnis illum quasi. Ea distinctio voluptatibus officiis qui reiciendis odit. Voluptatem voluptatem non aut quidem repudiandae rerum. Enim qui nesciunt enim natus. Qui dicta sit neque rerum est. Sed doloribus expedita possimus voluptatem praesentium inventore. A et consequuntur atque qui. Iure dolore ea neque velit quia dignissimos est voluptates. Accusamus est inventore magnam eos exercitationem debitis. Voluptas rerum occaecati exercitationem voluptatem nobis temporibus in. Quam corrupti qui error dignissimos. Ut excepturi qui praesentium qui. Maxime id molestiae repellendus iste.', 411.00, '2021-08-27', '2021-08-29', 19, 1, 6, 12, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(2, 'Deleniti consequatur sint ipsum assumenda ut molestias iste explicabo et illo.', 'deleniti-consequatur-sint-ipsum-assumenda-ut-molestias-iste-explicabo-et-illo', 'd9f5b0daf2e6bd716cd6a03f60543dbc.png', 'Sed et suscipit aspernatur cum voluptatibus. Dolor aliquid quia vel omnis voluptatem et deleniti. Consequuntur deserunt et magnam laborum sapiente nulla. Voluptas ipsam autem voluptas vel. Sed vel eius officia qui dolor hic. In qui voluptate corrupti amet ea aut ut. Laborum veritatis et id quisquam. Possimus laudantium dolorem culpa velit. Excepturi aliquid inventore provident laboriosam omnis dignissimos. Ducimus amet ea occaecati omnis dolorum consequuntur ut. Debitis et velit possimus laboriosam cum iste. Aut ratione natus molestiae a esse repudiandae qui. Reprehenderit a nobis inventore enim molestiae. Odio neque neque facilis sint modi. Et iusto nobis tempore qui. Fugiat et corporis et omnis dolores. Et magnam eligendi eum blanditiis. Modi quae molestiae similique laborum ut. Harum repellat ut consequatur. Cum placeat labore ullam qui sint. Tempora quis odit quia occaecati non aut. Neque recusandae est veniam et omnis mollitia. Tempore voluptates nihil id.', 413.00, '2021-08-27', '2021-08-28', 88, 0, 2, 6, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(3, 'Est amet unde modi velit voluptas exercitationem et quo nihil adipisci.', 'est-amet-unde-modi-velit-voluptas-exercitationem-et-quo-nihil-adipisci', '9657fb0a57feb3f7da783baf37e36830.png', 'Rem porro nulla doloribus maiores maxime et. Cumque aspernatur dolore sunt earum. Natus accusantium non consequuntur. Minus labore quaerat cupiditate corporis eum. Eum nemo culpa autem facere similique nam. Quis deleniti aut officiis dicta esse. Optio excepturi voluptate itaque quasi ea fugiat omnis. Aut soluta aut dolor eligendi at pariatur tenetur. Quis consequatur optio repellat aut sunt voluptatum rem. Necessitatibus explicabo quo voluptatem. Aut nihil accusamus magnam unde eum voluptates reprehenderit. Maiores eum fugiat dolor magnam. Eos autem in quia quasi voluptatem est aut ipsum. Praesentium iure porro optio voluptas aut dolores qui. Cumque veritatis debitis accusamus dolores quasi est ab sed. Culpa officiis consequuntur ut dolorem impedit assumenda maxime cum. Doloremque laudantium quos commodi harum laborum eos. Dolores quia iste fugiat quidem. Earum vero et velit dolor in. Delectus vero quidem autem omnis dolores unde voluptas.', 242.00, '2021-08-27', '2021-08-31', 64, 0, 2, 5, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(4, 'Perferendis tenetur esse amet aut dicta in sit nemo sint fugit consequatur.', 'perferendis-tenetur-esse-amet-aut-dicta-in-sit-nemo-sint-fugit-consequatur', 'c0e7297dbeb00d264073c3a424a6df72.png', 'Recusandae itaque ut quod dolor neque itaque. Dolorum provident aut beatae consequatur suscipit vero autem. Nihil pariatur repellat optio qui voluptates exercitationem. Distinctio dolor distinctio sunt laborum. Non et vel et accusamus odio. Aliquam molestias veritatis quis quam soluta facere. Ut iusto similique ullam impedit ipsum ipsum et. Consectetur illum similique ipsa ipsum commodi est voluptatibus. Exercitationem eaque omnis reprehenderit. Ut pariatur quia iure. Et omnis quae id. Iusto itaque mollitia numquam et. Vel ipsum qui amet dolores similique. Soluta enim illo ullam et sed nulla dolores. Sunt omnis qui tempora incidunt. Asperiores temporibus impedit doloribus est officia magnam quia quo. Accusantium vel ad praesentium ut quisquam. Voluptatem dicta autem dolore et maxime fugiat. Et sed molestias sed culpa id consequuntur necessitatibus nihil. Voluptate aliquid reiciendis voluptatem nisi nihil. Autem nemo voluptatem itaque inventore. Quia dolores non cupiditate. Omnis blanditiis corrupti ea sunt eos. Est enim harum vero et recusandae voluptatem. Iste ut nulla expedita ipsum corporis sint quia esse. Necessitatibus necessitatibus rerum eum ex adipisci pariatur quas dolorem.', 433.00, '2021-08-27', '2021-08-30', 40, 0, 5, 12, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(5, 'Recusandae mollitia voluptatem et officia laudantium et sint hic debitis velit.', 'recusandae-mollitia-voluptatem-et-officia-laudantium-et-sint-hic-debitis-velit', '6d741418422983e9ae7bfe2941ed38b4.png', 'Tempora ut sint ut est. Et quidem quisquam totam eius illo voluptas expedita et. Aliquam aut beatae rerum dolore accusantium blanditiis rerum. Magnam aperiam quibusdam sequi tempore voluptas vero suscipit. Rerum qui deserunt numquam culpa. Maiores assumenda nam et. Et maxime porro at quia sit. In dolor ipsum facere corporis iste sit velit. Et ut fuga ipsum rerum aut consequatur. Inventore ut dolor enim dolores fuga omnis at. Voluptatem facere iure accusantium eum sint dolor. Et rerum incidunt voluptates. Atque nostrum sit est. Quasi ex omnis sed laborum libero autem. Atque ut tempore quidem velit deleniti aspernatur. Consequatur voluptatem dolor ea similique rerum nulla. Libero et commodi sunt nobis. Aliquid delectus pariatur voluptatum quaerat. Esse sed eos vel consequatur magnam neque. Itaque voluptatibus ea sapiente quis quia. Quis maiores dolorem magni ut totam eum. Et eius culpa et consectetur earum alias possimus nulla. Vero eveniet id officia consequatur natus aliquid. Odit harum sit dolorem suscipit ullam natus et in. Voluptate beatae qui non excepturi. Cumque qui harum est sed minus. Quis a facilis quia repudiandae quidem tenetur nisi exercitationem. Sed maiores impedit suscipit officiis id expedita aperiam. Nemo et magni dolor illo voluptatibus eos et blanditiis. Delectus quo perspiciatis est.', 269.00, '2021-08-27', '2021-08-28', 17, 0, 2, 2, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(6, 'Debitis praesentium asperiores veniam rem doloremque asperiores consectetur officia dolorum explicabo.', 'debitis-praesentium-asperiores-veniam-rem-doloremque-asperiores-consectetur-officia-dolorum-explicabo', '9da8fe6f9bdedb5cd841c8894c92fd22.png', 'Velit aspernatur illo sint. Corporis veritatis similique reprehenderit consequuntur. Dolores tempora quaerat corrupti rem explicabo. Voluptatum qui fugit exercitationem qui et consequatur. Minus suscipit ipsum ut nemo aut fuga. Sint alias illum aut animi voluptatem sunt. Ea soluta ullam qui eius deleniti qui animi. Ab nostrum sapiente qui. Adipisci rerum qui voluptatem rerum. Autem vitae incidunt molestiae aliquam omnis. Ea velit qui voluptas eum eos doloremque quasi. Nobis vel repellendus odit aut. Consequuntur ipsa aspernatur fugiat. Rem et quam doloremque consequuntur alias minus nam. Consectetur illo eius voluptatem autem esse nesciunt. Tempore optio doloremque dolores saepe eveniet consectetur quae. Quaerat dignissimos sint at doloribus. Voluptatem quo eveniet consequatur fugit veniam enim. Iure dolore consequatur beatae officia. Dolore quod est nesciunt eum quia ut.', 556.00, '2021-08-27', '2021-08-28', 16, 1, 2, 12, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(7, 'Ut quo est et laboriosam commodi optio tempora omnis veniam et fugiat consequatur magnam.', 'ut-quo-est-et-laboriosam-commodi-optio-tempora-omnis-veniam-et-fugiat-consequatur-magnam', '91e4227ae7023a92cd1c84034cc32990.png', 'Harum laboriosam est id qui. Corrupti at dolor sit quia quia aperiam accusamus. Laboriosam dolorem ratione animi odit sapiente et repudiandae. Quia recusandae facilis dolore molestiae mollitia. Aliquam vel voluptas ratione aliquid. Doloribus praesentium consequatur fugiat vero odio. Voluptas ut necessitatibus quaerat qui est. Ut et est perferendis atque. Quos voluptas impedit aut est distinctio blanditiis dolorem. Dolor non vero quia sint dignissimos. Ut magni autem eveniet dolores aut. Maxime reprehenderit aperiam culpa natus maiores facere. Quasi eos ullam quia qui provident dolor sit. Mollitia distinctio nulla culpa repellat. Voluptas magni animi dolorem modi expedita pariatur voluptatem. Dolorem doloribus enim in repudiandae libero delectus. Accusamus iusto fugit ut est ut ut voluptas et. Quia vel repudiandae harum iusto culpa voluptatibus. Doloribus odit recusandae inventore laborum voluptas. Neque inventore illo vero rerum. Consequatur maiores neque debitis et reprehenderit enim voluptatem. Dolorum non ut dolorem odit.', 366.00, '2021-08-27', '2021-08-29', 83, 1, 2, 12, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(8, 'Commodi vel harum animi voluptas praesentium iusto inventore maiores et eos.', 'commodi-vel-harum-animi-voluptas-praesentium-iusto-inventore-maiores-et-eos', 'c2f19b08b06f3014ac36ac98729abec0.png', 'Earum molestias voluptates illum laudantium totam. Quasi aut voluptas doloremque totam repellendus est aut. Aliquid ut accusamus rerum. Qui quaerat voluptas voluptates veniam. Sapiente magni est voluptas dolore. Pariatur corrupti voluptate et sequi occaecati voluptas quo quo. Nobis qui fuga harum et at in. Aut ad non fuga beatae dicta. Consequatur ut placeat voluptas et ullam. Amet ut voluptas aut expedita molestias consequatur. Blanditiis rerum eum quam exercitationem repellat numquam sapiente. Non libero quibusdam veritatis. Odio autem quasi sit et omnis vero libero. Et temporibus vero delectus nihil voluptas optio. Facere odio alias dignissimos sed voluptates totam. Odit aspernatur tempore distinctio at facilis laboriosam sunt. Excepturi ut quasi placeat nesciunt. Sed mollitia facere aut corporis debitis. Dolorem nobis quod quisquam deserunt quam dolorem. Saepe veniam aut eligendi vel. A dolores omnis placeat est reiciendis.', 232.00, '2021-08-27', '2021-08-29', 39, 1, 6, 2, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(9, 'Cum quo rerum mollitia enim et quo et delectus provident adipisci aut consequuntur.', 'cum-quo-rerum-mollitia-enim-et-quo-et-delectus-provident-adipisci-aut-consequuntur', '2bd235145bfa1130415a668f148accef.png', 'Sapiente assumenda nobis molestias eaque facilis neque dicta. Aut molestias incidunt suscipit occaecati. Ut eligendi quasi quasi sunt dolor repudiandae. Culpa sint sed illum dolores nemo. Voluptatum pariatur enim alias consequatur sit dicta. Distinctio maxime in reiciendis illo. Nisi id architecto nostrum voluptatem blanditiis consequatur. Expedita animi aut laudantium in consequatur et non et. Blanditiis non similique quam vitae autem nihil. Repudiandae asperiores dolores quia sint. Ut nesciunt incidunt nihil repellat officia asperiores. Occaecati quam qui officiis est. Soluta illo tenetur voluptatem nisi. Ut sint tenetur quis sunt assumenda aliquam harum. Qui quia ut cupiditate occaecati voluptatem. Corrupti quia dolorum nostrum sed. Asperiores facere cumque et ut ut id assumenda. Aut quas vel quisquam modi. Quas cum quo doloremque vel sit. Architecto consequatur impedit exercitationem beatae sit quis et recusandae. Sint fugit nulla ratione maiores sed odio est. Voluptas odio et quos magnam.', 293.00, '2021-08-27', '2021-08-29', 52, 0, 2, 13, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(10, 'Error et voluptas nihil aliquid assumenda non impedit autem a voluptatum suscipit sequi non similique quam.', 'error-et-voluptas-nihil-aliquid-assumenda-non-impedit-autem-a-voluptatum-suscipit-sequi-non-similique-quam', 'd0452d0b63c18eba737fccc0aa345403.png', 'Officia ducimus quis velit ut sed vero. Quidem veniam facilis deserunt iusto maiores accusamus cumque. Accusamus at in enim pariatur. Placeat possimus nesciunt enim voluptate ut quaerat. Qui molestiae numquam quaerat recusandae inventore. Quam nemo omnis recusandae et molestias cumque. Itaque nisi ex vel dolorum quod omnis eos dolorem. Vel fuga asperiores id sunt vero commodi assumenda. Nesciunt aut consequuntur ratione qui in amet. Omnis minima doloremque ad accusantium atque et. Earum expedita et eos quod quia consequatur. Aperiam dignissimos dolor laborum excepturi commodi. Rerum nulla saepe doloribus aperiam mollitia. Nobis ducimus consequatur fugiat ea voluptatibus tempore. Et non beatae harum vero non. Atque aut ea pariatur eaque et et. Pariatur qui vel quia sit excepturi qui temporibus. Omnis amet placeat dolor aut. Et et unde aliquam maxime et. Ut molestiae quasi assumenda similique. Non natus reprehenderit corrupti sint. Quod impedit aut ut esse. Enim quia illo velit. Accusamus doloribus voluptatem dolor et ut. Eos laudantium dolorem doloremque.', 41.00, '2021-08-27', '2021-08-29', 92, 1, 6, 6, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(11, 'In rerum itaque neque ut harum beatae quod officia dignissimos hic et voluptate fugiat quidem nulla.', 'in-rerum-itaque-neque-ut-harum-beatae-quod-officia-dignissimos-hic-et-voluptate-fugiat-quidem-nulla', 'a45a363c9ebce80762efb6de891bb667.png', 'Ea inventore quasi placeat et sed vel. Dignissimos minus ea accusamus ea fuga qui. Vel eos nulla reprehenderit quia. Enim rem reiciendis nulla. Libero quod iure ducimus temporibus ad. Maiores architecto iusto ut amet dignissimos dolorum. Voluptate distinctio recusandae facilis architecto. Unde commodi ut harum ipsam quia ea tempora dolorem. Vel et quis voluptatibus quo eum. Sequi quos dolorum voluptatem at quod itaque voluptatem. Minima porro suscipit accusantium eum quia dolorem libero. Delectus veniam ducimus eum voluptatem molestias autem voluptatem. Quis consequuntur beatae ullam nam et mollitia dignissimos. Ad optio atque quia soluta rerum aut accusamus. Repudiandae voluptatibus quod veritatis quis ut illo qui. Iusto explicabo quo et alias ipsum vitae. Architecto cupiditate odit repellendus velit consequatur. Libero aut omnis at dolorum dicta qui qui. Voluptatem quasi ut tempore dolores tempora. Et dolorem rem consequuntur ea vel. Dolor suscipit dolores iste doloremque illum quia. Quia ullam ut sit illum enim. Excepturi suscipit totam adipisci voluptas velit aperiam. Fugit facere quae perspiciatis. Laboriosam quo eaque consequatur modi quis. Sed libero in dolor reprehenderit fugiat. Sed et maiores quasi. Ut quo labore voluptates ut magni. Nisi alias veniam aliquam. Culpa velit id sunt fugiat unde explicabo dolore. Ut asperiores beatae recusandae. Vero aliquid qui aut. Ut earum harum et.', 408.00, '2021-08-27', '2021-08-28', 57, 1, 2, 5, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(12, 'Voluptatem impedit reprehenderit cumque possimus animi voluptas harum quam.', 'voluptatem-impedit-reprehenderit-cumque-possimus-animi-voluptas-harum-quam', '0d154e1a91337e8e6f217147f41fa908.png', 'Impedit ut eius molestias animi laborum consequatur. Enim eos ullam id ab veniam. Cum corporis minima sequi placeat cupiditate. Nisi quidem non suscipit eveniet at dignissimos voluptatem. Voluptatibus nostrum corporis vel laudantium non. Qui commodi earum sint et impedit quasi iusto laudantium. Velit voluptas nihil esse molestiae dolorem. Sapiente aliquid ab eos aperiam mollitia excepturi eaque. Doloribus omnis enim voluptates qui. Debitis ut illum consequatur dolores deserunt aut. Aperiam sit et et in. Et ut aut ut quisquam tenetur. Vel et sequi amet veniam libero velit pariatur sunt. Commodi ad saepe quos quis quae voluptates. Molestiae dolor architecto blanditiis qui qui omnis incidunt ipsam. Sint dicta voluptatum sed et necessitatibus eum. Delectus rem porro necessitatibus sunt.', 448.00, '2021-08-27', '2021-08-29', 3, 0, 2, 12, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(13, 'Molestiae impedit dolores quae ad qui consequuntur sed.', 'molestiae-impedit-dolores-quae-ad-qui-consequuntur-sed', 'e9e3715bc0a08ce08707fbca58e15486.png', 'Exercitationem eos eum sit molestiae ut. Quam veritatis id numquam quibusdam. Voluptas sapiente incidunt maiores impedit voluptate. Sunt eaque officiis est distinctio qui quia laborum voluptatibus. Exercitationem facere vitae rerum et sit ut ea. Quis ad veritatis rerum ipsam sunt magnam commodi quo. Ab incidunt facilis dolor eos sunt ut. Quibusdam maxime dolores aperiam quis. Ut est debitis voluptate occaecati repudiandae aut. Quibusdam et incidunt ut consectetur. Omnis et esse harum ducimus occaecati. Et cumque dolor earum debitis alias adipisci et et. Nemo sed nemo natus magni velit porro dolorem odio. Non fugiat et est maiores. Facilis tenetur delectus laboriosam sit nobis. Saepe exercitationem qui et ut odio. Omnis quia distinctio dolore in ex saepe. Ducimus accusantium voluptatibus numquam voluptas magni hic molestiae temporibus. Ea laudantium et aut nam ea hic. Natus aut eligendi corrupti voluptatem possimus assumenda est ipsam. Laborum doloremque aperiam dignissimos est est impedit.', 12.00, '2021-08-27', '2021-08-28', 49, 0, 2, 6, '2021-08-27 07:38:10', '2021-08-27 07:38:10'),
(14, 'Libero magnam similique sequi placeat odit est tempore ut.', 'libero-magnam-similique-sequi-placeat-odit-est-tempore-ut', '0e3e9e44c12c4c130b17b3b69cb253f6.png', 'Expedita et iste architecto et asperiores aut et. Voluptatem voluptate omnis enim eaque quas quam aliquam. Labore qui eos voluptatibus iure. Numquam occaecati modi unde at dolore ab. Quidem quidem repellat nesciunt minima. Pariatur iure ducimus quidem et facere omnis expedita. Perferendis quos quaerat aut et doloremque. Similique ullam minus et qui vero mollitia quisquam. Velit sit rerum maxime placeat sint distinctio. Et incidunt voluptatem alias omnis rerum id non. Dolore enim aspernatur iusto non ut quo et consequatur. Ut quod tempore deserunt sint eos ad tempora. Ad ipsa et veritatis sed officia ullam. Officia nam quae eos eum ipsum. Dolor nemo consequuntur vitae occaecati modi optio. Aliquam tenetur sunt et consequatur omnis enim. Eaque ut dolorem cum asperiores vitae quia. Suscipit eveniet eum quaerat consectetur earum minus voluptatum aut. Quibusdam blanditiis maiores hic quia eveniet et amet libero. Dolor fugit sapiente consectetur et. Hic impedit est aperiam aspernatur adipisci. Dolorem eum magnam et rerum et. Recusandae consectetur velit iste corporis. Expedita cum alias porro ut. Suscipit quaerat quam magni. Eum sed nihil ad ut. Repellendus quo est nobis rem molestiae mollitia. Maxime magnam id autem ab enim debitis.', 470.00, '2021-08-27', '2021-08-30', 37, 1, 2, 2, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(15, 'Reiciendis recusandae sit eius velit aperiam et deleniti maxime enim.', 'reiciendis-recusandae-sit-eius-velit-aperiam-et-deleniti-maxime-enim', '57c4b5d47267e6d4d83f8097dcc55b48.png', 'Voluptas quae dolor debitis reprehenderit eos. Ullam dolorem molestias ut recusandae illum repellendus. Sed aut voluptas eum fugit optio suscipit. Quia est aut nam est. Dolore suscipit ex est animi iste. Explicabo dolorem qui aut sint. Quibusdam minus sit eum et. Aut libero ipsum iure ab eos consequuntur. Et et officiis ut quia corrupti repudiandae. Suscipit qui sequi eum eius illum pariatur. Et deleniti praesentium praesentium quia. Pariatur vel culpa vitae soluta ut. Velit aut ut minus aut eaque nobis inventore. Dicta non dignissimos aut et rerum qui. Amet eius molestias distinctio numquam. Similique aut in eos. Iure similique blanditiis at hic ea quia dolores ex. Quae quod pariatur ut est et. Omnis libero voluptate possimus. Dolor vel dolore et ea incidunt et. Ut amet dolorem accusantium et enim. Quisquam sit esse similique ut ad magni aliquam occaecati. Et officiis sunt et quo eaque laboriosam. Natus illum consectetur qui aut dicta ad. Voluptatem eaque perspiciatis rem porro non.', 52.00, '2021-08-27', '2021-08-28', 16, 1, 2, 12, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(16, 'Facilis aliquam sed ipsum reprehenderit debitis ad ex id quos consequatur.', 'facilis-aliquam-sed-ipsum-reprehenderit-debitis-ad-ex-id-quos-consequatur', 'fcdad13f884d50b0f27430ad53177adb.png', 'Est odio nobis expedita. Dolores dolor eveniet non quia et. Incidunt praesentium commodi cumque ut voluptas quisquam. Dolor delectus cumque nihil quia nulla laborum quasi. Eum qui repudiandae voluptate voluptas fuga. Provident praesentium praesentium eius iusto nemo ab ipsam. Est ut sint ducimus aut voluptate ullam esse. Earum vero id quod earum fuga. Illo ut debitis officiis facere dolor fugit. Voluptas ut sint voluptatem quam ea quibusdam porro. Quo modi sed est magnam. Expedita doloremque quo nostrum. Quasi nam quia cupiditate minus esse iure sunt. Error in autem qui quia. Libero ipsum numquam dignissimos dignissimos molestias dolores rerum. Sint non et qui minus. Et et voluptatem quos sint cupiditate aliquid consequatur. Enim cum enim sunt quibusdam aut assumenda nisi. Assumenda eius unde consequatur hic dolorem voluptas. Necessitatibus in incidunt eos. Est ex quis aut eligendi harum. Exercitationem ab cum illo repellendus quaerat vitae eaque quam. Tenetur rerum vel debitis facere consequatur. Atque odio praesentium accusantium est exercitationem quia iure. Adipisci maxime et maiores. Fugit ut pariatur laboriosam ad.', 22.00, '2021-08-27', '2021-08-31', 25, 0, 6, 13, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(17, 'Quia sunt voluptas enim illo dolorem autem.', 'quia-sunt-voluptas-enim-illo-dolorem-autem', '64de32a25c7441411bd1a2cb62846a8f.png', 'Non aut ducimus incidunt iusto. Hic maiores minima aut illum cupiditate quo eaque. Voluptatem rerum quaerat perferendis commodi minima velit. Neque consequatur qui necessitatibus et. Laboriosam id voluptatem autem deleniti similique doloribus consectetur. Dolorem aut rerum tempore fugiat reprehenderit. Quae officia inventore optio itaque aut illo. Aspernatur quia voluptates est. Enim culpa assumenda illo ea. Dolorem sit rerum libero hic. Cum quo aut id qui rem. Nemo a ad accusantium. Enim explicabo cumque modi. Ut dolores voluptatem iure ipsa nobis commodi dolore. Corrupti et eos nobis mollitia quidem soluta hic perspiciatis. Vel quod autem necessitatibus delectus. Et eligendi asperiores qui consequuntur repudiandae accusantium ullam. Aliquid ut sed eos. Ea officiis quam culpa quidem quo molestias optio. Quia et dolorem rerum nihil ad aliquam ratione doloribus. Quia dolor repellendus nihil dolor tempora. Et odio nisi et nostrum non quaerat. Ab beatae beatae iste veritatis excepturi ipsam.', 523.00, '2021-08-27', '2021-08-31', 86, 1, 5, 12, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(18, 'Laborum libero voluptas explicabo odio rerum qui sit vel voluptatem ullam.', 'laborum-libero-voluptas-explicabo-odio-rerum-qui-sit-vel-voluptatem-ullam', '0b2b8e7d862ec63e62800ffdd6b5ae4f.png', 'Ratione doloremque ut repellat totam eveniet omnis quisquam. Et quam eos reiciendis earum nihil magni ut. Porro aut cumque voluptatem et sunt. Aut nisi molestiae voluptate minus iusto qui. Repudiandae dicta et nobis ex quia sint maxime. Dignissimos dolorem ab ullam. Consectetur et maxime sunt qui dolores eaque. Saepe excepturi quisquam voluptatum dolores iure corrupti. Repudiandae magnam possimus mollitia ut id sit porro quia. Et quas quaerat enim modi facere suscipit aspernatur. Nisi perferendis et dignissimos vero sunt dolores. Sed consequatur molestiae eligendi ea quae et ab unde. Esse provident tenetur laudantium. Enim ut ipsum impedit magnam vitae cumque beatae. Et quidem voluptas dolorem ipsa. Possimus doloremque tempora corporis natus dolorem quasi saepe. Sit reprehenderit ipsam distinctio nostrum qui impedit et cupiditate. Esse doloremque voluptatem consectetur impedit sit dolores dolorem. Fugit mollitia sunt suscipit ipsam. Odio est tempora delectus quibusdam enim necessitatibus. Qui doloremque ipsum voluptas est ab. Qui accusantium ea rerum libero dolor at eos. Ea exercitationem quis qui temporibus quis aut voluptatem. Natus non culpa veniam ea neque autem. Eaque at minima praesentium repellat. Et quibusdam dolore nisi unde minus accusamus qui animi. Laudantium autem iure aut sit. Dolore nostrum et molestiae assumenda. Quis ut quis tempora et. Tempora et rem iure consequuntur pariatur.', 122.00, '2021-08-27', '2021-08-28', 10, 1, 2, 5, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(19, 'Quisquam porro delectus est asperiores laudantium ut eum nobis.', 'quisquam-porro-delectus-est-asperiores-laudantium-ut-eum-nobis', 'ccc4ac10a8d58a3a4ef7032bd237e3ab.png', 'Molestias placeat delectus reiciendis soluta sed occaecati. Accusamus nulla quam minus perspiciatis error. Dolores quo ab nulla odio accusamus maxime. Nobis culpa in rem est. Maiores distinctio mollitia praesentium voluptates similique ipsam. Alias perferendis quo quidem recusandae culpa voluptas porro. Adipisci nihil omnis ut officia. A eveniet quae blanditiis quae natus. Fugiat et dignissimos itaque sapiente nulla iure veritatis. Expedita officiis beatae nemo id est. Earum atque officia soluta earum veniam. Dicta nihil tenetur aut est libero. Ut eum voluptate voluptas. Corrupti vero sint rerum qui ut asperiores. Culpa aut laborum laudantium sapiente excepturi. Iusto ipsum ut rerum impedit quaerat. Beatae blanditiis ut libero. Unde ab mollitia magni recusandae adipisci. Qui ea enim illum laborum. Aliquid doloremque repellendus rerum veniam sapiente vel ipsum.', 281.00, '2021-08-27', '2021-08-30', 99, 0, 5, 6, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(20, 'Perferendis veritatis eum distinctio quo reiciendis possimus quam accusamus quo et enim inventore quibusdam aut.', 'perferendis-veritatis-eum-distinctio-quo-reiciendis-possimus-quam-accusamus-quo-et-enim-inventore-quibusdam-aut', 'c7a7295cb6d14b720e908fdeaf55e41a.png', 'Cumque enim sint sit nam. Facere quaerat inventore saepe sapiente consequuntur qui quo. Eum facilis quo sit eligendi soluta laborum molestiae placeat. Sint a temporibus omnis quis sit dolores eligendi. Laboriosam voluptatem saepe consequatur deserunt. Corrupti dicta aut voluptatem numquam autem. Nobis mollitia odit rerum in minus. Deserunt alias assumenda cum omnis esse. Veritatis sit repellat modi. Qui aut laboriosam placeat earum eligendi consequatur ullam. Tenetur aliquam cumque aliquid ut. Vitae sint praesentium suscipit. Non nisi doloremque cumque error dolorum dolores quibusdam. Aut quibusdam odio odit molestiae. Est dicta ullam blanditiis sit. Ea labore qui quas illo. Et temporibus id architecto nostrum quae voluptas. Voluptatem vel voluptatem rerum qui itaque asperiores. Eligendi perferendis vel odit. Labore non veniam qui voluptas consectetur. Doloribus ipsam ut quia tempore. Aut impedit quisquam eum nesciunt. Sunt molestiae nostrum rem facilis modi. Totam eum suscipit quia quisquam dicta aut ut. Natus saepe enim asperiores et culpa reprehenderit aperiam. Culpa rerum pariatur ullam omnis sit est nihil. Nihil enim debitis velit minus. Quo magni est et ea animi quidem adipisci. Molestias eligendi corrupti rerum et blanditiis nam facilis. Cupiditate doloremque dicta iure alias suscipit dolorem aut. Quia perspiciatis sunt est ratione. Quasi ab ut nemo.', 79.00, '2021-08-27', '2021-08-30', 92, 1, 5, 6, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(21, 'Nihil impedit provident non eos explicabo consequatur est voluptatem aut et neque et est.', 'nihil-impedit-provident-non-eos-explicabo-consequatur-est-voluptatem-aut-et-neque-et-est', '2c4d574224030a599e4a8ac3a1bb6d02.png', 'Odio adipisci est nulla. Dolorem odit ex nisi veritatis. Voluptatibus earum pariatur ut consequuntur. Consectetur quia aliquid aut assumenda qui laborum. Consequatur ut nihil pariatur cum. Optio vitae dolore dolores et totam blanditiis. Sapiente et recusandae nobis aperiam qui. Vero perferendis consequatur ratione rerum. Aspernatur error doloribus quia quidem. Nulla autem saepe omnis eum. Architecto quae qui aut cumque dolores placeat doloremque. At quibusdam voluptates aspernatur nostrum quaerat vel explicabo dicta. Laborum ducimus recusandae eveniet ipsam. Aut quis aliquam consequatur quaerat laborum et. Sit consequatur ipsa vitae. Quasi ea commodi vel quia nihil mollitia. Neque nam quos ut veritatis et. Alias sit molestiae non et vel porro repellat. Perspiciatis ad qui doloremque animi facilis facilis. Ipsam molestias ut omnis est ipsa et. Eos consequatur delectus fugit omnis. Architecto dolor deserunt enim sit voluptas. Numquam explicabo nesciunt dicta cupiditate. Repellat velit fugit quasi. Vel sed blanditiis rerum magni impedit repudiandae nam. Aspernatur eum nihil commodi suscipit laudantium.', 230.00, '2021-08-27', '2021-08-28', 39, 0, 5, 6, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(22, 'Est in ad suscipit illo voluptatem corrupti rerum aut quis.', 'est-in-ad-suscipit-illo-voluptatem-corrupti-rerum-aut-quis', '7a9679ab22c32ae79081f94a1e69b606.png', 'Et saepe adipisci quis ea optio magnam quis rerum. Autem animi nihil et illo recusandae vel. Rerum harum id ipsa officiis enim vero. Mollitia dolorem eum possimus qui. Aut alias sed voluptatibus et. Qui et maiores doloremque enim est. Perferendis recusandae delectus sit ea dolorum. Voluptatem cupiditate cupiditate assumenda vel a vitae incidunt sapiente. Alias omnis eveniet nam. Sed non iusto nulla qui accusantium beatae non iste. Aut qui saepe tempore nihil. Possimus laborum itaque fuga minus quam sed quod. Et laborum a ullam dicta sequi inventore impedit. Aperiam ducimus illo nobis laborum. Qui quos facere voluptatem iusto veniam tempora. Explicabo ut omnis doloremque doloribus. Quas temporibus vero quia veritatis. Ut nemo fugiat eius ut facilis. Et reiciendis facere porro illo libero nam. Iusto a qui doloremque non nobis. Dolorem et sint tempora autem eos. Voluptatem incidunt cum et provident laboriosam. Perspiciatis quam aliquam ut error consequatur laudantium dolor. Voluptatum non animi in nihil ad et. Unde in aut earum repellendus. Quis quam eum odit adipisci. Omnis veritatis id quos non nihil itaque. Qui temporibus ipsam illum veritatis molestiae ut eum. Nisi rerum sed reiciendis laborum. Numquam qui nihil aut placeat voluptatem. Dolorem dolores temporibus magnam qui ut omnis soluta. Fugiat est aut enim nam et. Cupiditate ut delectus modi. Accusamus iste repellat consectetur qui.', 307.00, '2021-08-27', '2021-08-30', 2, 0, 2, 13, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(23, 'Fugiat esse eaque ipsa fuga nam at debitis debitis.', 'fugiat-esse-eaque-ipsa-fuga-nam-at-debitis-debitis', '670f1b046d3e471a46b9a525f0448d1e.png', 'Laudantium dolores ex aut et explicabo dignissimos blanditiis. Voluptas rerum et cupiditate ratione unde. Perferendis et vero laudantium consequatur et quis sunt. Praesentium consequatur vero suscipit cum aliquid qui consectetur. Officia est qui distinctio. Ex necessitatibus non dolor necessitatibus. Delectus consequatur deserunt necessitatibus. Sapiente ut provident sed adipisci dolorem. Est et quis qui voluptatibus nisi. Rem consequatur soluta earum soluta adipisci. Qui facilis exercitationem ut dolores excepturi. Consequatur voluptatibus aliquam qui. Ut minus perspiciatis tempora quod. Omnis et quos accusamus error saepe at dolorem. Quis consequatur sint harum neque enim sequi. Ut qui pariatur ab reiciendis facilis. Itaque quibusdam temporibus ut omnis totam qui molestiae. Vel itaque sed id voluptates repudiandae quisquam. Quisquam inventore aut beatae a est aut. Ut ut ratione voluptatem illum ab praesentium illo. Minus perspiciatis eveniet quis veritatis. Nostrum ut rem sit dolore voluptatem. Natus et iusto dolor est dicta non blanditiis. Ea aut quae vitae voluptatem qui. Nisi aperiam sunt temporibus non sint nemo quas perspiciatis.', 173.00, '2021-08-27', '2021-08-28', 88, 0, 5, 13, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(24, 'Quidem qui distinctio doloribus occaecati nesciunt error nulla.', 'quidem-qui-distinctio-doloribus-occaecati-nesciunt-error-nulla', '6b1c61b12e3d3e2f529d615633aa2ea2.png', 'Ut iure consequuntur quo totam. Accusantium et facere provident ex repudiandae eius commodi. Nisi rem adipisci vitae voluptas ipsa quia sapiente. Molestiae est sed velit hic. Magnam et ut autem quis. In perferendis temporibus quam. Non eum rem non sunt eos iure. Ut eius dolor qui sint et fuga voluptatum. Et est quis fuga deleniti et quia odio. Soluta et nam voluptas officia quia dolorum aperiam. Consequatur eaque est aliquid nisi illum et dolorem. Odit harum veniam numquam incidunt ullam et est. Rerum et excepturi ipsa ipsum dignissimos odit nobis. Ducimus et vel delectus veniam voluptas ut. Enim voluptatem nemo voluptates laboriosam. Tempore vel est deleniti quisquam id saepe quo odio. Vitae voluptatem recusandae et qui sit. Aut ea deleniti id consequatur. Eveniet placeat qui quaerat quisquam nihil. Est minus nisi quia saepe eos. Soluta officia nesciunt sed et. Ad aliquam earum dolore aliquid repellat non quas. Eaque consequatur corrupti quos nesciunt. Doloremque quas eum quisquam nobis autem non officiis. Molestias recusandae et quisquam unde. Ex rem deserunt consequuntur. Voluptate magni vel repellat. Deleniti ea totam qui ipsum. Ipsam quia temporibus voluptates in maxime ut. Recusandae consequatur reiciendis et dolor qui. Aspernatur id praesentium eaque qui iure quia ut.', 330.00, '2021-08-27', '2021-08-31', 17, 1, 6, 2, '2021-08-27 07:38:11', '2021-08-27 07:38:11'),
(25, 'Rem natus quia et dolor ipsam quod omnis.', 'rem-natus-quia-et-dolor-ipsam-quod-omnis', 'd52773404caccb0c91b71dc9671b3fe0.png', 'Aut quae at assumenda occaecati. Vel rerum et qui. Maxime rem exercitationem at consequatur facere. Rem quis voluptatem minus sapiente. Sed consequatur alias vero quas voluptatem aliquid natus. Dolores quae quia velit hic maiores qui. Fugit et facere nihil sed iure. Mollitia repellendus commodi excepturi sunt ea sed odit. Consectetur earum excepturi dolores numquam similique voluptatem nam. Sit quod sequi blanditiis a fugit. Aut natus repellat et voluptatibus corporis. Sed deserunt ea distinctio. Eos atque aspernatur est beatae quos. Aut qui sed et maxime dolorem magnam. Error omnis debitis quia rerum. Aut tenetur aliquid harum illum exercitationem rerum quis. Architecto suscipit et non laboriosam illo qui. Odio ipsam dicta pariatur iure dolorum. Qui repudiandae et dignissimos qui dignissimos minima. Eaque ullam quod est ab.', 351.00, '2021-08-27', '2021-08-30', 57, 1, 5, 12, '2021-08-27 07:38:12', '2021-08-27 07:38:12');

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
(1, 4, 8),
(2, 10, 11),
(3, 2, 17),
(4, 2, 1),
(5, 5, 24),
(6, 9, 8),
(7, 6, 1),
(8, 7, 10),
(9, 11, 6),
(10, 7, 25),
(11, 6, 15),
(12, 7, 25),
(13, 8, 14),
(14, 10, 20),
(15, 9, 14),
(16, 4, 8),
(17, 6, 15),
(18, 10, 15),
(19, 7, 25),
(20, 8, 24),
(21, 13, 11),
(22, 9, 15),
(23, 3, 20),
(24, 11, 25),
(25, 11, 10);

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
(39, '2014_10_12_000000_create_users_table', 1),
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2019_08_19_000000_create_failed_jobs_table', 1),
(42, '2021_06_02_081830_create_categories_table', 1),
(43, '2021_06_03_065517_create_courses_table', 1),
(44, '2021_06_04_164951_create_videos_table', 1),
(45, '2021_06_05_135736_create_jobs_table', 1),
(46, '2021_06_05_193426_create_tags_table', 1),
(47, '2021_06_06_111621_create_taggables_table', 1),
(48, '2021_06_08_140455_create_posts_table', 1),
(49, '2021_06_10_224639_create_sliders_table', 1),
(50, '2021_06_11_225041_create_slider_images_table', 1),
(51, '2021_06_19_083932_create_comments_table', 1),
(52, '2021_06_20_185444_create_visitors_table', 1),
(53, '2021_06_20_224437_create_likes_table', 1),
(54, '2021_06_22_180910_create_ratings_table', 1),
(55, '2021_06_26_222254_create_notifications_table', 1),
(56, '2021_06_29_193421_create_favorites_table', 1),
(57, '2021_06_30_220209_create_user_follow_table', 1);

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
(1, 'Debitis asperiores consequatur quidem et sunt laborum eaque ipsum doloribus.', 'debitis-asperiores-consequatur-quidem-et-sunt-laborum-eaque-ipsum-doloribus', 'Laboriosam libero quis tempore incidunt ratione. Et error delectus ut est et repellendus. Enim quasi aut dolor ullam. Totam iste molestiae in odit. Aut et autem amet in. Iure est atque illum exercitationem accusamus ad modi in. Et voluptatem vitae consectetur. Enim velit dolor rerum est sit accusamus. Autem sed voluptatem repellendus molestias cupiditate voluptate asperiores. Corrupti et nihil esse et. Accusamus quisquam voluptatem aliquid. Est pariatur voluptate voluptas possimus. Officia iure exercitationem rerum consectetur. Maxime voluptate eligendi laborum pariatur. Saepe et et dicta consequatur est tempore unde. Voluptatem quod commodi voluptatem sed adipisci quae dolorum. Sit velit autem eum unde. Aliquid eaque aut est qui similique consequatur. Tenetur blanditiis molestias nobis ipsum tempora quia sunt. Ipsa illo hic vero quos. Odit et perferendis ipsa rerum repellat maiores. Veritatis doloremque amet nemo placeat. Nobis sit voluptatum dolore exercitationem ipsa quod nisi. Et voluptatem dignissimos fugit sint. Voluptatum adipisci natus possimus atque. Omnis quae aspernatur assumenda nostrum hic.', 'c2b1a8695fe15899b54388793cfd8e7f.png', 1, 2, 5, '2021-08-27 07:39:02', '2021-08-27 07:39:02'),
(2, 'Reprehenderit fugit ipsa alias quis sapiente aut quia vel corrupti.', 'reprehenderit-fugit-ipsa-alias-quis-sapiente-aut-quia-vel-corrupti', 'Iure cumque inventore illo reprehenderit aut. Facilis soluta ratione sint quaerat dolores fugiat numquam aut. Totam asperiores fugit quod deleniti consequatur qui maxime. Quia eum consequatur quos. Nulla eum culpa perferendis optio ea amet id. Laboriosam adipisci aut eos explicabo laboriosam qui culpa. Ut et est et veritatis. Ducimus est velit iste reiciendis. Perferendis est placeat consectetur cupiditate nemo magnam accusantium. Quia et aliquid molestias perferendis tenetur earum. Non voluptatum nihil aliquid nulla cupiditate voluptatem ea. Veniam sed ut necessitatibus rerum velit voluptas beatae alias. Id id quos impedit officia quis vel dolor id. Necessitatibus dolorem incidunt similique in. Aut est placeat adipisci aut. Dolorem nemo enim eveniet facere. Voluptas voluptatem explicabo eius soluta repudiandae. Officiis quia tempore odio voluptatem amet tempora dolor quis. Eos quae ad sequi fugiat assumenda. Et voluptas sed et est eum illo deleniti et. Aperiam officia enim quaerat. Harum et esse distinctio neque nisi distinctio. Quia ut pariatur repellendus ipsa asperiores. Unde molestiae dolore cum quo. Ex omnis sit enim aut quas. Alias accusantium vel pariatur qui veniam consequatur ut enim. Suscipit delectus ea aut autem sed quos. Voluptatem adipisci eum quidem. Quibusdam nobis error rerum qui et vitae ratione.', 'b8ef907911a8d91b121e0c8cc12168fd.png', 1, 6, 6, '2021-08-27 07:39:02', '2021-08-27 07:39:02'),
(3, 'Repellendus tenetur voluptatibus aperiam iure molestiae ullam ratione doloremque et perferendis odio numquam.', 'repellendus-tenetur-voluptatibus-aperiam-iure-molestiae-ullam-ratione-doloremque-et-perferendis-odio-numquam', 'Dolor itaque voluptate quibusdam quam qui qui error. Similique facilis quidem minima. Dolorem repudiandae repudiandae voluptas et temporibus nulla. Pariatur voluptas enim minus suscipit quaerat illo. Ea nihil culpa quibusdam ab velit soluta doloribus. Sunt enim incidunt rerum libero animi et. Ut excepturi suscipit sint quibusdam. Qui quos adipisci voluptatum neque fuga qui totam. Quia dicta ea omnis soluta incidunt. Facere deleniti dicta sed veniam dolores nihil ut. Occaecati sequi dolor aut aut sunt. At facere enim atque reprehenderit rerum aut repellendus quibusdam. Eius est est occaecati saepe. Iure voluptas iste cupiditate quia et esse. Et dolor quaerat quo sed veritatis id excepturi odit. Nihil culpa aliquam perferendis aut facere officiis omnis. Minima voluptatum ea facilis. Doloremque sunt nulla quia quis. Eaque sed exercitationem consequatur cum suscipit. Sapiente et hic tempora. Itaque blanditiis sit possimus sint.', '04f35344cca9c007f97c7e0f8b561914.png', 0, 2, 12, '2021-08-27 07:39:02', '2021-08-27 07:39:02'),
(4, 'Rerum aut non autem ea explicabo reprehenderit nesciunt provident provident sunt.', 'rerum-aut-non-autem-ea-explicabo-reprehenderit-nesciunt-provident-provident-sunt', 'Qui sed molestias quia quia. Qui esse non soluta alias veniam. Ut voluptate sint sapiente est temporibus deserunt. Est sint minima quos consequuntur iure. Quis enim quae libero sit. Est ut commodi sapiente repudiandae sapiente. Sequi qui aut sed ad et. Quia illum excepturi cum et possimus iste. Facilis exercitationem ipsam atque hic neque totam. Quos temporibus ut maiores enim. Saepe qui iusto iure vel non. Aliquid aliquid voluptatem quis repudiandae exercitationem unde. Voluptatem possimus ex provident sequi eaque error. Atque minus distinctio voluptatem repellendus. Amet sit error eos tempora. Ullam velit voluptates quia aliquid itaque architecto qui neque. Et voluptatem quam adipisci iste totam et. Mollitia iusto quae ea et. Et suscipit eveniet asperiores. Atque explicabo amet qui incidunt ut consequatur. Temporibus sed odio officia exercitationem consequatur. Temporibus sequi nihil qui itaque eveniet suscipit incidunt. Non dolores alias consequatur aspernatur fuga. Vel eum aut natus quo nihil. Non culpa qui corrupti non placeat. Maiores nemo est maxime autem cupiditate voluptate optio. Atque atque molestias facilis dicta. Nemo odio magni quo provident. Dignissimos saepe culpa amet. Qui optio architecto libero magni tenetur recusandae qui suscipit. Qui corporis saepe facilis vitae.', '2f6b8a839873bfa93917f72f2bd468ea.png', 1, 6, 12, '2021-08-27 07:39:02', '2021-08-27 07:39:02'),
(5, 'Id quia veritatis voluptatem ut cumque deserunt fuga cumque ipsa.', 'id-quia-veritatis-voluptatem-ut-cumque-deserunt-fuga-cumque-ipsa', 'Atque omnis sed tempore quis accusantium labore. Voluptate illum assumenda enim. Aut enim eius eveniet magni vitae mollitia. Repellat et voluptas quisquam vel quisquam dicta ut. Voluptatibus eius ipsa ipsam enim officiis ea consequatur sunt. Omnis alias dicta iure amet dolorum est. Provident voluptas quis dignissimos qui et temporibus. Reiciendis repudiandae maxime et quo. Nam nesciunt praesentium doloribus accusantium. Corporis esse rerum omnis ut qui ea minima natus. Perspiciatis necessitatibus magnam tempora nemo qui quidem qui quia. Porro sint facilis et at. Consequatur sit quod consequatur inventore molestias sed nisi. Quia nesciunt quo ea ut error. Dolore voluptates deleniti iste ducimus suscipit consequatur quas. Itaque et consequatur dicta in facere enim iusto explicabo. Eaque quo optio blanditiis vel enim. Perferendis qui autem aliquid dicta. Et dicta pariatur nihil tenetur quis. Dignissimos dolor et ut. Quas soluta autem sed. Optio eius error magni qui saepe. Nostrum debitis distinctio maxime corrupti impedit nobis neque minus. In eaque suscipit sed quia consectetur animi. Odio sed hic consequatur nemo. Sapiente suscipit enim veniam ut. Velit unde et et pariatur consequatur ad. Consequatur voluptas inventore quis quia ipsam. Hic expedita animi ab quae error quasi voluptatem. Et enim ut accusantium dolorum tenetur. Est soluta occaecati dolores fugiat quo.', '9bdf0b78c58de4a797c3525cc9cfc1fb.png', 1, 5, 12, '2021-08-27 07:39:02', '2021-08-27 07:39:02'),
(6, 'Ullam consequuntur voluptas necessitatibus dolores in provident possimus quod ea.', 'ullam-consequuntur-voluptas-necessitatibus-dolores-in-provident-possimus-quod-ea', 'Ullam voluptas et quos amet aut. Iure consequatur velit pariatur autem voluptatem. Et repellat doloremque et. Ut sit id mollitia enim dolor est. Non quae veritatis occaecati voluptatem aut. Et quae consequatur quos quas ab facere autem. Voluptates voluptatem ducimus eveniet et. Voluptatibus commodi omnis assumenda doloribus enim ut repellat at. Quia ullam corporis ea dolor sed. Quia sit ut et aut cumque. Voluptates ratione et libero ea. Culpa veniam et ipsum officiis. Earum quod doloribus blanditiis nesciunt blanditiis est. Consequuntur ut nihil inventore dignissimos. Est et aliquam accusantium esse eius eaque consectetur saepe. Autem aut beatae similique placeat molestiae architecto. Ut ullam id aliquam accusamus ab libero minus explicabo. Velit molestiae sint quam voluptatem est dolore. Optio quia unde dolores impedit. Ut sapiente vel dolores velit minus nisi. Dolorem necessitatibus omnis numquam recusandae et pariatur. A debitis eum illo aut officiis consequatur repellendus voluptatem. Iste ducimus praesentium expedita tenetur vero doloribus. At autem quis aut iste recusandae et. Esse omnis dolore quas quia ut. Deserunt qui repellendus sint cum tempore adipisci. Et eum ea itaque autem ratione sapiente. Explicabo voluptatem qui sed est est enim optio voluptas. Non sequi est deserunt atque doloremque ea. Quidem harum in delectus sed ratione culpa totam ut.', 'd9b516baacb3e635e5ee0d3583852bc3.png', 0, 6, 2, '2021-08-27 07:39:02', '2021-08-27 07:39:02'),
(7, 'Perferendis quis laudantium sapiente enim doloremque error.', 'perferendis-quis-laudantium-sapiente-enim-doloremque-error', 'Et voluptate amet harum illo dolor et sequi exercitationem. Veritatis aut veritatis aut et aut optio. Id corrupti rerum iste sed eos veniam. Officiis quos cupiditate totam ipsam et dicta dolore tempora. Ipsam laboriosam repudiandae quasi id doloremque labore quibusdam. Et itaque totam non cum beatae et. Quia quisquam incidunt laboriosam temporibus. Fugit molestiae molestias quam. Iste ipsam aut quisquam quisquam aut. Quis et ipsa laudantium illum excepturi. Quam accusamus qui fugit quibusdam odio quaerat amet. Reprehenderit fuga aperiam velit qui. Corporis necessitatibus vel dolore repellendus sunt amet vero. Adipisci cupiditate eaque similique tempora quo. Voluptatibus saepe officia ea ipsam non. Iusto fugiat vitae adipisci deleniti et. Dolorem fugit et in sunt adipisci quod sint tempore. Voluptatem ratione quos officia quia. Provident aspernatur est atque aut ut. Suscipit distinctio ex eveniet voluptate numquam. Quia quia inventore et odio sit.', '8cd8ca0f418455d6bf821b9fc0412ba8.png', 0, 5, 12, '2021-08-27 07:39:02', '2021-08-27 07:39:02'),
(8, 'Quo maiores non sequi iure velit aperiam libero rerum dolores repellat.', 'quo-maiores-non-sequi-iure-velit-aperiam-libero-rerum-dolores-repellat', 'Voluptas id voluptatem deserunt consequatur numquam in. Molestiae perspiciatis aut non necessitatibus rerum voluptatem. Temporibus quae molestias officiis explicabo quis. Ducimus accusantium facilis temporibus. Rerum ipsum aut et modi reiciendis. Eum repellendus ut quisquam quos quod exercitationem veniam. Perferendis dolorum tempore quidem corporis rem numquam. Eos sit velit repellat aut id. Nemo adipisci aut exercitationem in quas consequatur. Fuga est pariatur tempore est. Explicabo qui maxime est modi dolorem suscipit. Accusamus accusamus et itaque delectus unde possimus quia. Quae voluptatem sint dicta ut cupiditate temporibus est. Eum reiciendis vero corporis aut natus doloribus maiores deleniti. Exercitationem ut impedit tenetur ipsam provident. Exercitationem nisi sunt et quod ut velit. Veniam ipsam sint voluptatum mollitia debitis est quibusdam.', 'c579ab98e30cfa9af3206119fa17b3e5.png', 1, 6, 6, '2021-08-27 07:39:02', '2021-08-27 07:39:02'),
(9, 'A architecto dolorem cupiditate quae consequatur culpa eaque et occaecati nihil veniam.', 'a-architecto-dolorem-cupiditate-quae-consequatur-culpa-eaque-et-occaecati-nihil-veniam', 'Et et quae impedit quasi. Quisquam molestias ipsa ut corrupti est. Ea eum est necessitatibus ut id. Dolore et labore autem itaque sit debitis itaque. Repudiandae sequi repellat corporis ipsum assumenda. In illum et eius assumenda ipsa vitae. Eos dolore sunt consequatur. Animi inventore quo minima reiciendis molestias deleniti cupiditate. Quam voluptatem alias nobis explicabo. Soluta distinctio sit tempora aut aut et distinctio. Quo vitae minima porro quidem et tempora consequatur. Repudiandae dolores et ipsum quisquam. Corporis amet ut eos. Eligendi provident inventore soluta perspiciatis sed delectus. Aut ipsum aut itaque dolore facere et quo. Non voluptatem asperiores dolorem est magni. Numquam quo sint et aspernatur praesentium possimus. Ducimus illum perferendis maxime sunt. Libero assumenda tempore impedit ea. Ipsum accusantium ex nihil debitis. Et ut nulla qui sit quas. Quia eos omnis ipsum saepe animi et. Aliquam suscipit hic ut corporis numquam blanditiis.', '264876056d626b1898d8be691d72e907.png', 0, 6, 12, '2021-08-27 07:39:02', '2021-08-27 07:39:02'),
(10, 'Ut non sit necessitatibus et vero quasi fuga nihil aut assumenda vel eum aut fugit.', 'ut-non-sit-necessitatibus-et-vero-quasi-fuga-nihil-aut-assumenda-vel-eum-aut-fugit', 'Vero cumque amet quis quia officia molestias. Et ipsum qui hic quidem maxime nobis. Ad neque quia dolorum. Ea doloribus architecto et possimus unde. Aut vero perferendis non aspernatur aut qui magni. Nemo sequi numquam eius tempora. Est ut placeat consequatur cumque sit dolorum. Est a hic quam nisi. Aut id voluptatem sed est natus. Voluptas non nobis consequatur ut doloremque qui. Dolorem nostrum consequuntur cum. Quia dolor voluptas quia dolore ut. Non animi est beatae est. Nostrum quos qui ipsa quas debitis sunt suscipit. Quisquam veritatis nemo rerum aliquid. Voluptatem repellat itaque corrupti. Et voluptatem assumenda quaerat eveniet error vel. Aut quas veritatis sunt qui distinctio et. Illum sint sed praesentium eum consequatur alias quod. Aut illo corporis consequatur officiis. Cumque enim quia illo aut et illum. Maxime et aliquid exercitationem totam dignissimos. Nisi est eum beatae nihil porro sequi repudiandae. Consequatur ipsa molestiae libero eveniet. Voluptatum voluptate voluptas temporibus qui rerum. Cumque cumque ullam velit. Dolore laboriosam accusantium est ut quibusdam. Omnis voluptatem est magnam porro est. Quia qui est voluptatem sit non magnam. Dignissimos officia sunt ducimus in et autem aliquid. Tempora et omnis voluptates dicta itaque omnis.', 'd0d68b272d029fee6ae511b8479d7cae.png', 0, 2, 2, '2021-08-27 07:39:02', '2021-08-27 07:39:02');

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
(1, 'App\\Models\\Course', 10, 3, '250.49.15.54', 'Opera/8.88 (X11; Linux i686; sl-SI) Presto/2.8.175 Version/12.00'),
(2, 'App\\Models\\Course', 18, 2, '7.36.152.180', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5341 (KHTML, like Gecko) Chrome/37.0.894.0 Mobile Safari/5341'),
(3, 'App\\Models\\Course', 7, 5, '244.178.23.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_1 rv:3.0; en-US) AppleWebKit/531.26.7 (KHTML, like Gecko) Version/4.1 Safari/531.26.7'),
(4, 'App\\Models\\Course', 18, 5, '14.69.14.184', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_2) AppleWebKit/5352 (KHTML, like Gecko) Chrome/40.0.875.0 Mobile Safari/5352'),
(5, 'App\\Models\\Course', 15, 1, '208.13.221.160', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_2_1 like Mac OS X; en-US) AppleWebKit/533.9.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6533.9.4'),
(6, 'App\\Models\\Course', 1, 3, '44.157.79.184', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 4.0; Trident/3.0)'),
(7, 'App\\Models\\Course', 1, 5, '163.200.43.13', 'Opera/8.86 (X11; Linux x86_64; en-US) Presto/2.11.344 Version/12.00'),
(8, 'App\\Models\\Course', 15, 3, '182.64.157.86', 'Mozilla/5.0 (Windows CE; sl-SI; rv:1.9.1.20) Gecko/20150621 Firefox/36.0'),
(9, 'App\\Models\\Course', 18, 4, '151.36.83.182', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 95; Trident/4.0)'),
(10, 'App\\Models\\Course', 11, 1, '136.115.80.251', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_5 rv:2.0; sl-SI) AppleWebKit/531.4.1 (KHTML, like Gecko) Version/5.0 Safari/531.4.1'),
(11, 'App\\Models\\Course', 14, 2, '243.54.6.235', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_8 rv:4.0; en-US) AppleWebKit/531.7.7 (KHTML, like Gecko) Version/5.1 Safari/531.7.7'),
(12, 'App\\Models\\Course', 7, 5, '143.115.124.55', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows CE; Trident/5.1)'),
(13, 'App\\Models\\Course', 11, 1, '18.122.58.229', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_8 rv:6.0; en-US) AppleWebKit/533.9.3 (KHTML, like Gecko) Version/5.0.2 Safari/533.9.3'),
(14, 'App\\Models\\Course', 17, 3, '127.81.112.32', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows CE; Trident/5.0)'),
(15, 'App\\Models\\Course', 24, 2, '101.149.135.206', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.1; Trident/4.0)'),
(16, 'App\\Models\\Course', 18, 3, '194.55.103.32', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_3 rv:4.0; en-US) AppleWebKit/534.9.5 (KHTML, like Gecko) Version/5.0 Safari/534.9.5'),
(17, 'App\\Models\\Course', 6, 3, '52.85.202.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_1 rv:3.0) Gecko/20140314 Firefox/37.0'),
(18, 'App\\Models\\Course', 10, 2, '83.45.237.4', 'Opera/8.12 (X11; Linux i686; en-US) Presto/2.8.257 Version/10.00'),
(19, 'App\\Models\\Course', 15, 3, '77.181.207.141', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_7 rv:3.0) Gecko/20100813 Firefox/35.0'),
(20, 'App\\Models\\Course', 10, 1, '205.233.235.96', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20101115 Firefox/37.0'),
(21, 'App\\Models\\Course', 15, 1, '60.169.167.109', 'Opera/9.83 (Windows CE; sl-SI) Presto/2.10.348 Version/11.00'),
(22, 'App\\Models\\Course', 17, 4, '109.107.255.165', 'Opera/9.18 (Windows NT 4.0; sl-SI) Presto/2.10.258 Version/10.00'),
(23, 'App\\Models\\Course', 7, 5, '232.101.169.12', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5342 (KHTML, like Gecko) Chrome/38.0.889.0 Mobile Safari/5342'),
(24, 'App\\Models\\Course', 15, 5, '242.134.126.95', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_8 rv:3.0) Gecko/20120421 Firefox/37.0'),
(25, 'App\\Models\\Course', 15, 4, '59.144.198.74', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_2) AppleWebKit/5342 (KHTML, like Gecko) Chrome/37.0.898.0 Mobile Safari/5342'),
(26, 'App\\Models\\Course', 10, 5, '89.143.182.20', 'Mozilla/5.0 (iPad; CPU OS 7_1_1 like Mac OS X; en-US) AppleWebKit/533.9.6 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6533.9.6'),
(27, 'App\\Models\\Course', 24, 3, '128.12.27.67', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_5 rv:5.0; sl-SI) AppleWebKit/534.49.7 (KHTML, like Gecko) Version/5.0 Safari/534.49.7'),
(28, 'App\\Models\\Course', 10, 4, '16.124.76.55', 'Mozilla/5.0 (Windows CE) AppleWebKit/5332 (KHTML, like Gecko) Chrome/38.0.815.0 Mobile Safari/5332'),
(29, 'App\\Models\\Course', 7, 4, '207.193.156.239', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5352 (KHTML, like Gecko) Chrome/38.0.885.0 Mobile Safari/5352'),
(30, 'App\\Models\\Course', 14, 5, '202.196.215.9', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_9) AppleWebKit/5330 (KHTML, like Gecko) Chrome/40.0.874.0 Mobile Safari/5330'),
(31, 'App\\Models\\Course', 20, 5, '188.193.70.74', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_2 rv:4.0; en-US) AppleWebKit/531.8.5 (KHTML, like Gecko) Version/4.0.3 Safari/531.8.5'),
(32, 'App\\Models\\Course', 6, 1, '187.233.31.47', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20100319 Firefox/36.0'),
(33, 'App\\Models\\Course', 10, 5, '253.117.79.116', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5340 (KHTML, like Gecko) Chrome/38.0.889.0 Mobile Safari/5340'),
(34, 'App\\Models\\Course', 25, 3, '118.79.123.162', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows CE; Trident/5.0)'),
(35, 'App\\Models\\Course', 7, 5, '78.69.148.115', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.0; Trident/4.0)'),
(36, 'App\\Models\\Course', 18, 5, '67.206.182.76', 'Opera/9.95 (Windows NT 5.1; en-US) Presto/2.8.179 Version/11.00'),
(37, 'App\\Models\\Course', 15, 3, '136.100.30.123', 'Opera/8.15 (Windows NT 5.0; en-US) Presto/2.8.209 Version/12.00'),
(38, 'App\\Models\\Course', 24, 3, '189.74.101.31', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5322 (KHTML, like Gecko) Chrome/37.0.819.0 Mobile Safari/5322'),
(39, 'App\\Models\\Course', 14, 5, '29.82.108.6', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_2) AppleWebKit/5362 (KHTML, like Gecko) Chrome/39.0.893.0 Mobile Safari/5362'),
(40, 'App\\Models\\Course', 1, 4, '163.51.33.253', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20130604 Firefox/35.0'),
(41, 'App\\Models\\Course', 20, 3, '31.209.8.254', 'Mozilla/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit/535.49.5 (KHTML, like Gecko) Version/5.0.1 Safari/535.49.5'),
(42, 'App\\Models\\Course', 11, 5, '91.247.139.30', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/5.0)'),
(43, 'App\\Models\\Course', 24, 3, '233.40.14.219', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20120118 Firefox/35.0'),
(44, 'App\\Models\\Course', 10, 3, '100.26.74.133', 'Opera/9.23 (X11; Linux x86_64; sl-SI) Presto/2.11.194 Version/10.00'),
(45, 'App\\Models\\Course', 7, 3, '248.184.222.73', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_1 rv:5.0) Gecko/20150326 Firefox/37.0'),
(46, 'App\\Models\\Course', 18, 3, '38.102.4.155', 'Mozilla/5.0 (Windows NT 5.0; en-US; rv:1.9.1.20) Gecko/20170426 Firefox/37.0'),
(47, 'App\\Models\\Course', 11, 1, '22.163.150.47', 'Opera/8.53 (Windows NT 5.1; en-US) Presto/2.9.248 Version/12.00'),
(48, 'App\\Models\\Course', 15, 1, '124.223.94.7', 'Opera/9.46 (Windows NT 6.0; en-US) Presto/2.8.185 Version/12.00'),
(49, 'App\\Models\\Course', 24, 1, '171.30.255.115', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5341 (KHTML, like Gecko) Chrome/38.0.841.0 Mobile Safari/5341'),
(50, 'App\\Models\\Course', 17, 3, '211.145.208.195', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20151009 Firefox/35.0'),
(51, 'App\\Models\\Course', 15, 3, '196.77.40.226', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20111113 Firefox/37.0'),
(52, 'App\\Models\\Course', 17, 3, '2.245.175.211', 'Opera/9.22 (X11; Linux i686; sl-SI) Presto/2.12.206 Version/12.00'),
(53, 'App\\Models\\Course', 11, 2, '8.210.126.199', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_7 rv:5.0) Gecko/20200313 Firefox/35.0'),
(54, 'App\\Models\\Course', 25, 5, '242.21.34.41', 'Opera/8.32 (Windows 98; en-US) Presto/2.10.348 Version/11.00'),
(55, 'App\\Models\\Course', 6, 3, '226.95.229.210', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows CE; Trident/3.0)'),
(56, 'App\\Models\\Course', 15, 4, '163.34.219.189', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5352 (KHTML, like Gecko) Chrome/38.0.832.0 Mobile Safari/5352'),
(57, 'App\\Models\\Course', 7, 5, '99.50.121.14', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/5360 (KHTML, like Gecko) Chrome/40.0.814.0 Mobile Safari/5360'),
(58, 'App\\Models\\Course', 20, 3, '64.169.36.113', 'Mozilla/5.0 (Windows 95; en-US; rv:1.9.1.20) Gecko/20110304 Firefox/36.0'),
(59, 'App\\Models\\Course', 20, 3, '175.199.225.66', 'Opera/8.54 (Windows NT 5.0; en-US) Presto/2.11.247 Version/11.00'),
(60, 'App\\Models\\Course', 1, 3, '243.248.205.181', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows CE; Trident/5.1)'),
(61, 'App\\Models\\Course', 18, 1, '35.27.109.177', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident/3.0)'),
(62, 'App\\Models\\Course', 8, 3, '134.57.31.42', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_5 rv:3.0; en-US) AppleWebKit/534.21.2 (KHTML, like Gecko) Version/4.0.4 Safari/534.21.2'),
(63, 'App\\Models\\Course', 1, 1, '236.210.227.176', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.01; Trident/4.0)'),
(64, 'App\\Models\\Course', 10, 2, '137.234.236.16', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5342 (KHTML, like Gecko) Chrome/36.0.865.0 Mobile Safari/5342'),
(65, 'App\\Models\\Course', 17, 4, '3.1.29.111', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5312 (KHTML, like Gecko) Chrome/36.0.822.0 Mobile Safari/5312'),
(66, 'App\\Models\\Course', 17, 4, '16.52.214.204', 'Mozilla/5.0 (Windows 95) AppleWebKit/5311 (KHTML, like Gecko) Chrome/36.0.861.0 Mobile Safari/5311'),
(67, 'App\\Models\\Course', 20, 3, '43.202.64.94', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.1; Trident/3.0)'),
(68, 'App\\Models\\Course', 1, 3, '240.16.33.73', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows 98; Trident/3.0)'),
(69, 'App\\Models\\Course', 7, 1, '252.38.98.179', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20110627 Firefox/35.0'),
(70, 'App\\Models\\Course', 6, 4, '131.152.203.239', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20190821 Firefox/35.0'),
(71, 'App\\Models\\Course', 15, 4, '108.188.6.221', 'Opera/8.63 (X11; Linux x86_64; en-US) Presto/2.11.220 Version/12.00'),
(72, 'App\\Models\\Course', 20, 2, '206.79.37.229', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.2; Trident/3.1)'),
(73, 'App\\Models\\Course', 20, 5, '20.165.134.69', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows CE; Trident/5.1)'),
(74, 'App\\Models\\Course', 14, 3, '88.200.116.82', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20160829 Firefox/37.0'),
(75, 'App\\Models\\Course', 15, 2, '113.242.135.217', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5312 (KHTML, like Gecko) Chrome/38.0.853.0 Mobile Safari/5312'),
(76, 'App\\Models\\Course', 18, 1, '102.153.20.18', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_1 rv:2.0) Gecko/20110330 Firefox/37.0'),
(77, 'App\\Models\\Course', 17, 2, '229.46.187.195', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20160909 Firefox/36.0'),
(78, 'App\\Models\\Course', 11, 5, '230.170.238.148', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5320 (KHTML, like Gecko) Chrome/39.0.862.0 Mobile Safari/5320'),
(79, 'App\\Models\\Course', 20, 3, '207.93.230.21', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.1)'),
(80, 'App\\Models\\Course', 10, 4, '146.158.125.190', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20201019 Firefox/37.0'),
(81, 'App\\Models\\Course', 11, 1, '224.89.144.99', 'Opera/8.69 (X11; Linux i686; en-US) Presto/2.9.232 Version/12.00'),
(82, 'App\\Models\\Course', 7, 5, '80.60.181.187', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20170515 Firefox/37.0'),
(83, 'App\\Models\\Course', 15, 1, '75.242.138.118', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_7 rv:4.0) Gecko/20181013 Firefox/36.0'),
(84, 'App\\Models\\Course', 11, 2, '53.44.92.162', 'Mozilla/5.0 (Windows 98) AppleWebKit/5322 (KHTML, like Gecko) Chrome/39.0.849.0 Mobile Safari/5322'),
(85, 'App\\Models\\Course', 10, 2, '89.43.89.182', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_7 rv:4.0; sl-SI) AppleWebKit/533.41.1 (KHTML, like Gecko) Version/4.0 Safari/533.41.1'),
(86, 'App\\Models\\Course', 1, 4, '154.61.34.124', 'Mozilla/5.0 (Windows NT 6.1; en-US; rv:1.9.1.20) Gecko/20161128 Firefox/37.0'),
(87, 'App\\Models\\Course', 14, 1, '71.93.87.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_2_2 like Mac OS X; sl-SI) AppleWebKit/531.14.5 (KHTML, like Gecko) Version/4.0.5 Mobile/8B112 Safari/6531.14.5'),
(88, 'App\\Models\\Course', 18, 3, '54.160.160.140', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.2; Trident/5.0)'),
(89, 'App\\Models\\Course', 1, 5, '154.19.12.151', 'Opera/8.50 (X11; Linux i686; sl-SI) Presto/2.12.178 Version/10.00'),
(90, 'App\\Models\\Course', 18, 5, '96.34.240.253', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_6 rv:4.0; en-US) AppleWebKit/535.22.7 (KHTML, like Gecko) Version/5.0 Safari/535.22.7'),
(91, 'App\\Models\\Course', 15, 4, '34.148.21.59', 'Opera/9.58 (X11; Linux i686; sl-SI) Presto/2.11.161 Version/11.00'),
(92, 'App\\Models\\Course', 14, 1, '45.72.80.199', 'Opera/9.12 (Windows NT 4.0; en-US) Presto/2.10.339 Version/11.00'),
(93, 'App\\Models\\Course', 14, 5, '92.145.64.148', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.01; Trident/5.0)'),
(94, 'App\\Models\\Course', 18, 4, '249.56.41.58', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20150914 Firefox/35.0'),
(95, 'App\\Models\\Course', 10, 1, '82.154.24.166', 'Opera/9.26 (Windows 95; en-US) Presto/2.9.236 Version/12.00'),
(96, 'App\\Models\\Course', 7, 1, '4.248.139.29', 'Mozilla/5.0 (Windows 98) AppleWebKit/5340 (KHTML, like Gecko) Chrome/36.0.854.0 Mobile Safari/5340'),
(97, 'App\\Models\\Course', 7, 3, '85.216.36.16', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_3 rv:5.0; en-US) AppleWebKit/532.25.6 (KHTML, like Gecko) Version/5.0.3 Safari/532.25.6'),
(98, 'App\\Models\\Course', 17, 3, '75.106.108.34', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; en-US) AppleWebKit/533.27.2 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6533.27.2'),
(99, 'App\\Models\\Course', 17, 5, '244.97.254.238', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident/5.0)'),
(100, 'App\\Models\\Course', 7, 3, '139.65.251.233', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 6.1; Trident/5.0)');

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
(1, 'Esse non possimus occaecati iure dolorem eos.', 'Saepe ab rerum voluptatibus eaque vel ut.', '83c3669912d859bf328fc87dfe3d71f7.png', 1),
(2, 'Quos qui et ratione.', 'Voluptas quis nulla quo ut optio quis officia.', '1977e7b709b6fe079db806d0ccd19416.png', 1),
(3, 'Quis quo facere voluptas.', 'Voluptas omnis vel accusamus vero.', '4b3b8de686020a86649a586f7cae48f0.png', 1),
(4, 'Quod neque magnam nisi harum consequatur.', 'Omnis voluptas necessitatibus minus ut necessitatibus.', '095c69baf7f1bca19a74d3480186cb36.png', 1);

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
(17, 'App\\Models\\Video', 24),
(10, 'App\\Models\\Video', 13),
(13, 'App\\Models\\Video', 11),
(11, 'App\\Models\\Video', 38),
(15, 'App\\Models\\Video', 30),
(3, 'App\\Models\\Video', 45),
(6, 'App\\Models\\Video', 37),
(3, 'App\\Models\\Video', 27),
(16, 'App\\Models\\Video', 6),
(7, 'App\\Models\\Video', 14),
(2, 'App\\Models\\Video', 6),
(6, 'App\\Models\\Video', 36),
(17, 'App\\Models\\Video', 4),
(19, 'App\\Models\\Video', 4),
(8, 'App\\Models\\Video', 11),
(17, 'App\\Models\\Video', 38),
(12, 'App\\Models\\Video', 50),
(7, 'App\\Models\\Video', 26),
(9, 'App\\Models\\Video', 5),
(15, 'App\\Models\\Video', 47),
(4, 'App\\Models\\Video', 40),
(7, 'App\\Models\\Video', 35),
(5, 'App\\Models\\Video', 34),
(13, 'App\\Models\\Video', 35),
(20, 'App\\Models\\Video', 46),
(16, 'App\\Models\\Video', 43),
(6, 'App\\Models\\Video', 48),
(5, 'App\\Models\\Video', 34),
(8, 'App\\Models\\Video', 40),
(18, 'App\\Models\\Video', 40),
(8, 'App\\Models\\Video', 9),
(15, 'App\\Models\\Video', 44),
(19, 'App\\Models\\Video', 28),
(9, 'App\\Models\\Video', 38),
(6, 'App\\Models\\Video', 30),
(15, 'App\\Models\\Video', 3),
(6, 'App\\Models\\Video', 25),
(10, 'App\\Models\\Video', 7),
(17, 'App\\Models\\Video', 44),
(20, 'App\\Models\\Video', 11),
(13, 'App\\Models\\Video', 11),
(6, 'App\\Models\\Video', 34),
(1, 'App\\Models\\Video', 34),
(4, 'App\\Models\\Video', 42),
(4, 'App\\Models\\Video', 33),
(19, 'App\\Models\\Video', 31),
(4, 'App\\Models\\Video', 18),
(9, 'App\\Models\\Video', 40),
(12, 'App\\Models\\Video', 23),
(20, 'App\\Models\\Video', 13),
(17, 'App\\Models\\Video', 2),
(1, 'App\\Models\\Video', 27),
(19, 'App\\Models\\Video', 27),
(1, 'App\\Models\\Video', 4),
(10, 'App\\Models\\Video', 32),
(18, 'App\\Models\\Video', 42),
(3, 'App\\Models\\Video', 36),
(16, 'App\\Models\\Video', 23),
(13, 'App\\Models\\Video', 36),
(17, 'App\\Models\\Video', 48),
(8, 'App\\Models\\Video', 29),
(12, 'App\\Models\\Video', 34),
(8, 'App\\Models\\Video', 6),
(17, 'App\\Models\\Video', 21),
(2, 'App\\Models\\Video', 47),
(18, 'App\\Models\\Video', 17),
(17, 'App\\Models\\Video', 31),
(12, 'App\\Models\\Video', 31),
(15, 'App\\Models\\Video', 16),
(18, 'App\\Models\\Video', 28),
(1, 'App\\Models\\Post', 1),
(4, 'App\\Models\\Post', 5),
(14, 'App\\Models\\Post', 8),
(16, 'App\\Models\\Post', 4),
(19, 'App\\Models\\Post', 5),
(18, 'App\\Models\\Post', 7),
(7, 'App\\Models\\Post', 3),
(19, 'App\\Models\\Post', 9),
(11, 'App\\Models\\Post', 1),
(10, 'App\\Models\\Post', 8),
(7, 'App\\Models\\Post', 10),
(7, 'App\\Models\\Post', 9),
(7, 'App\\Models\\Post', 2),
(8, 'App\\Models\\Post', 6),
(10, 'App\\Models\\Post', 7),
(6, 'App\\Models\\Post', 6),
(1, 'App\\Models\\Post', 7),
(10, 'App\\Models\\Post', 1),
(19, 'App\\Models\\Post', 7),
(5, 'App\\Models\\Post', 5),
(18, 'App\\Models\\Post', 3),
(10, 'App\\Models\\Post', 8),
(8, 'App\\Models\\Post', 8),
(12, 'App\\Models\\Post', 3),
(13, 'App\\Models\\Post', 3),
(12, 'App\\Models\\Post', 8),
(13, 'App\\Models\\Post', 7),
(9, 'App\\Models\\Post', 9),
(12, 'App\\Models\\Post', 10),
(19, 'App\\Models\\Post', 9),
(20, 'App\\Models\\Post', 1),
(7, 'App\\Models\\Post', 7),
(4, 'App\\Models\\Post', 3),
(16, 'App\\Models\\Post', 6),
(17, 'App\\Models\\Post', 8),
(6, 'App\\Models\\Post', 3),
(12, 'App\\Models\\Post', 8),
(2, 'App\\Models\\Post', 5),
(14, 'App\\Models\\Post', 6),
(12, 'App\\Models\\Post', 2),
(11, 'App\\Models\\Post', 6),
(6, 'App\\Models\\Post', 3),
(2, 'App\\Models\\Post', 9),
(14, 'App\\Models\\Post', 5),
(2, 'App\\Models\\Post', 5),
(5, 'App\\Models\\Post', 9),
(11, 'App\\Models\\Post', 8),
(17, 'App\\Models\\Post', 6),
(18, 'App\\Models\\Post', 7),
(15, 'App\\Models\\Post', 8),
(5, 'App\\Models\\Post', 1),
(14, 'App\\Models\\Post', 3),
(18, 'App\\Models\\Post', 2),
(12, 'App\\Models\\Post', 5),
(18, 'App\\Models\\Post', 4),
(17, 'App\\Models\\Post', 3),
(6, 'App\\Models\\Post', 6),
(7, 'App\\Models\\Post', 4),
(6, 'App\\Models\\Post', 8),
(6, 'App\\Models\\Post', 4),
(4, 'App\\Models\\Post', 8),
(6, 'App\\Models\\Post', 1),
(16, 'App\\Models\\Post', 7),
(18, 'App\\Models\\Post', 3),
(12, 'App\\Models\\Post', 5),
(10, 'App\\Models\\Post', 3),
(15, 'App\\Models\\Post', 1),
(3, 'App\\Models\\Post', 3),
(7, 'App\\Models\\Post', 7),
(1, 'App\\Models\\Post', 3);

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
(8, 'excel', 'excel', 1, 'fas fa-file-excel'),
(9, 'powerpoint', 'powerpoint', 1, 'fas fa-file-powerpoint'),
(10, 'chrome', 'chrome', 1, 'fab fa-chrome'),
(11, 'firefox', 'firefox', 1, 'fab fa-firefox-browser'),
(12, 'safari', 'safari', 1, 'fab fa-safari'),
(13, 'opera', 'opera', 0, 'fab fa-opera'),
(14, 'IE', 'internet-explorer', 1, 'fab fa-internet-explorer'),
(15, 'css', 'css', 0, 'fab fa-css3'),
(16, 'js', 'js', 0, 'fab fa-js-square'),
(17, 'vue.js', 'vue.js', 1, 'fab fa-vuejs'),
(18, 'php', 'php', 0, 'fab fa-php'),
(19, 'laravel', 'laravel', 0, 'fab fa-laravel'),
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
(1, 'Admin', 'admin@app.com', '72f6d8652862cc406f48c9f1d7d479b8.png', NULL, NULL, '2021-08-27 07:36:09', '$2y$10$GI81Q0pLYC1Xi83zQwjyzerVrTy6keNJhpczgZvfGoIb20AWLx0nm', 1, 0, 'lV879nbFFn', NULL, NULL),
(2, 'Teacher', 'teacher@app.com', '834c0ca4d7235c0e5ae7a9ba4bc2c37a.png', NULL, NULL, '2021-08-27 07:36:15', '$2y$10$.UVJWH60OIfxxkQsu8hpy.B02Cr.j3.ypHiBT.EuzX5GZomLcbF.a', 0, 1, '6OLMIYbBoW', NULL, NULL),
(3, 'user', 'user@app.com', '8096d748b3d1431505d2dbc1ec8c32f0.png', NULL, NULL, '2021-08-27 07:36:17', '$2y$10$6XT58saDJoNbb37nwBPLouRKOL2I2XFmXcjQ9jtl4BkjfB4gnVoIy', 0, 0, 'muRmTklEHd', NULL, NULL),
(4, 'Mr. Shayne Sauer', 'kiarra.kub@example.net', '89444caf4c06c5de003122efad235e84.png', NULL, NULL, '2021-08-27 07:36:17', '$2y$10$ezs7Cr.sm2ElgwMs9x76.uwkzdZ174w4lKbd/FOk6l5NHcut5r7kS', 0, 0, 'HQkKn1HXlL', '2021-08-27 07:36:48', '2021-08-27 07:36:48'),
(5, 'Anya Considine', 'elenora29@example.net', '4761ac81aca3f856d5b794d8897ba256.png', NULL, NULL, '2021-08-27 07:36:19', '$2y$10$5HNZw3d4Cvl6WuvTRoKvGOZO4IKF7V6bwPbV/oZNTT4w/owDhVvNK', 0, 1, 'B438sS5J3O', '2021-08-27 07:36:48', '2021-08-27 07:36:48'),
(6, 'Valentine Hoppe', 'nienow.cleveland@example.org', 'aefe1a6526bcc237eccabe1ccc30f4c7.png', NULL, NULL, '2021-08-27 07:36:21', '$2y$10$PGmyl/S1fjpeCJ3mzYhIiu13Ymvsx3g7ghL5FdWHvDYXv3qSbhbzW', 0, 1, 'hRjWY2K4LN', '2021-08-27 07:36:48', '2021-08-27 07:36:48'),
(7, 'Mrs. Brigitte Howell III', 'moises04@example.org', 'c81b4ee0194af0e36459313671248f1b.png', NULL, NULL, '2021-08-27 07:36:23', '$2y$10$J5PIqSTDPK63ZQe6LlsTHeo2AgtTR2tlcsBO9.Yr53fzkbmff9PJu', 0, 0, 'TYZ0t9YLEV', '2021-08-27 07:36:48', '2021-08-27 07:36:48'),
(8, 'Elliott O\'Connell', 'akuhic@example.org', '2053470c6a53394199d782487385d9db.png', NULL, NULL, '2021-08-27 07:36:24', '$2y$10$7RCdbLwlcZcczKyArOkx4.VQdktjz9.aZ0AWuWbbsMXMs5IKFNaeK', 0, 0, 'Emq4aKr5R4', '2021-08-27 07:36:48', '2021-08-27 07:36:48'),
(9, 'Mr. Isaiah Gibson', 'dlindgren@example.net', 'e1067defe29314492108d6c5abea7bd1.png', NULL, NULL, '2021-08-27 07:36:26', '$2y$10$bGu1QyxWH2mAKEe/NohXju1Eps4ARzC6Zd73JnlkoLhMLL0pMcSDG', 0, 0, 'ikz5djrr6I', '2021-08-27 07:36:48', '2021-08-27 07:36:48'),
(10, 'Dr. Cristina Abshire MD', 'urban.funk@example.net', '375f7d0ae1b3ae8cc84f86b407b6a675.png', NULL, NULL, '2021-08-27 07:36:28', '$2y$10$6j3sIMH/IhEntgh6tq0/ze9xzyTS8ytfws0D//QEywlHYdpB9WTIe', 0, 0, 'QYoiD90qke', '2021-08-27 07:36:48', '2021-08-27 07:36:48'),
(11, 'Braulio Nikolaus V', 'aparker@example.net', '15a4af337e9e487aea210670e8baf850.png', NULL, NULL, '2021-08-27 07:36:31', '$2y$10$852DcYOI9zDCpnYWHX6KMe6Txtsga4U4GmXOdznLG8L6qqcfA0A9y', 0, 0, 'ArmNY4R7sb', '2021-08-27 07:36:48', '2021-08-27 07:36:48'),
(12, 'Elyssa Runolfsson', 'josefina45@example.com', '43180fc4eec8aaa3853453069742d491.png', NULL, NULL, '2021-08-27 07:36:34', '$2y$10$1m/bn3uSYkGMFrOteCGYKOgiDhf6uCMRxyUuQ6OlRm1NhAVJFf7C.', 0, 1, 'WonsAcp3Up', '2021-08-27 07:36:49', '2021-08-27 07:36:49'),
(13, 'Isidro Lockman', 'darrin.veum@example.com', '31dbe657e441bfd823e9a5d9da76bfe0.png', NULL, NULL, '2021-08-27 07:36:38', '$2y$10$P1xOecX.5ucnBcZLuUeWMe4VDfq42bFjlkyZGl6uDcGSiGTnSBDri', 0, 1, '9xkBqQehfS', '2021-08-27 07:36:49', '2021-08-27 07:36:49');

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
(1, 10, 7),
(2, 13, 3),
(3, 1, 6),
(4, 13, 5),
(5, 8, 1),
(6, 9, 5),
(7, 6, 5),
(8, 8, 12),
(9, 7, 11),
(10, 2, 3),
(11, 5, 10),
(12, 12, 3),
(13, 11, 10),
(14, 4, 8),
(15, 7, 10),
(16, 10, 3),
(17, 11, 6),
(18, 5, 2),
(19, 7, 8),
(20, 2, 5);

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
(1, 'Iusto eum nam veniam esse molestiae iste voluptates modi cum fugit non et nisi.', 'iusto-eum-nam-veniam-esse-molestiae-iste-voluptates-modi-cum-fugit-non-et-nisi', 'Et debitis soluta repellat vero dolores sit ut. Quia reiciendis repellendus perspiciatis harum perferendis eos in. Ipsam asperiores dolor sit qui. Unde quae qui rerum cum. Molestiae distinctio voluptatem doloribus eos. Et impedit eaque esse hic est consequatur ipsum et. Fuga eligendi natus laboriosam incidunt repudiandae quia. Voluptas laborum eaque sit et aut. In vel laudantium quo quod tempora cumque ab. Est aliquam recusandae nihil iure. Repudiandae exercitationem eos exercitationem id ut molestiae. Ullam reprehenderit et dolores dolores nulla in. Sed est ea ut culpa. Facilis natus aliquam consequuntur dolores quisquam. Dolore dolorem quis rerum illum et voluptas. Pariatur unde optio voluptatem commodi sit. Optio dolorem dolore minus consequuntur nesciunt. Exercitationem optio impedit enim nam id explicabo. Animi sequi quasi ipsum quo. Fugit quisquam aut et ut sequi non eos. Earum rerum eos aliquid repudiandae. Odit eaque minus assumenda ut. Ea earum numquam necessitatibus et. Omnis quisquam cum enim voluptates iure. Voluptatibus maxime hic nemo hic. At et molestiae nobis illum incidunt vel est eum. In mollitia maxime sint incidunt aspernatur voluptatum perferendis ut. Molestiae at eum accusantium eum. Sit animi fugit ipsum qui ea laudantium voluptatem.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 8, '2021-08-27 07:38:20', '2021-08-27 07:38:20'),
(2, 'Dolore delectus consequatur animi ullam ea consequuntur.', 'dolore-delectus-consequatur-animi-ullam-ea-consequuntur', 'Ipsam recusandae sed tempore odio aut rerum corrupti ea. Et veniam esse consequatur sunt. Ut in consequatur non doloribus. Aut voluptatem voluptatem vitae voluptas. Dicta quam aspernatur ipsam et harum. Nihil similique quis voluptas praesentium dolores. Voluptatem labore qui velit deleniti. Assumenda inventore vel molestiae non nihil nulla similique. Numquam qui aspernatur minima et. Similique rerum quia sequi magnam quos officia quis. Velit nihil est repudiandae perspiciatis nemo. Temporibus error ut mollitia et voluptas qui. Quia magni fugiat eos magnam. Sed omnis quis recusandae aspernatur totam et dignissimos eveniet. Hic est voluptas placeat sunt voluptatum repellendus. Magni asperiores officia sit reprehenderit molestiae repellendus inventore. Voluptatem rerum quis quam veniam et id et. Voluptatem velit ullam natus qui veniam. Cupiditate et porro accusantium quaerat nobis in. Est ut ut voluptatem omnis. Fugiat sit temporibus dolor nihil beatae. Accusantium soluta earum est exercitationem. Qui et placeat doloribus cupiditate sint. Rerum esse sapiente id.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 11, '2021-08-27 07:38:20', '2021-08-27 07:38:20'),
(3, 'Cupiditate corporis commodi culpa reprehenderit facere qui tenetur vero nihil beatae quaerat.', 'cupiditate-corporis-commodi-culpa-reprehenderit-facere-qui-tenetur-vero-nihil-beatae-quaerat', 'Voluptatibus ullam quisquam eligendi aut. Repudiandae est et reiciendis voluptates inventore blanditiis necessitatibus. Ducimus corrupti praesentium dolor ea saepe. Omnis impedit sed culpa aut aperiam iusto et veritatis. Deleniti voluptas sed quod perferendis ab ratione eaque. Aperiam inventore et est qui enim. Aut inventore voluptatibus id nulla et. Temporibus ullam blanditiis vero ab officia aut. Ratione praesentium recusandae doloribus laborum eveniet porro. Adipisci aut esse id odio ea ut. Iusto quae voluptate voluptatibus aliquam ut. Nostrum quae distinctio voluptates omnis aut est quis ad. Blanditiis fugit molestiae repellat voluptatum. Et iusto soluta voluptas. Provident similique reiciendis quod quisquam quis non. A earum sint quam non voluptatum perferendis enim. Voluptas ut dolore magnam porro. Voluptatem nemo ipsam culpa pariatur. Illo in aspernatur sit amet ullam quia quia. Aut odio qui omnis voluptas enim. Provident excepturi architecto incidunt eum. Corporis alias debitis doloribus odio. Animi explicabo et possimus molestiae ducimus saepe voluptas. Ad ipsa non voluptas dolores. Aspernatur dolore libero corrupti doloribus corporis quia cum nesciunt. Illum ut voluptas illo dolore sit. Accusamus velit unde distinctio. Natus voluptas a dolorem qui temporibus amet aut.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 20, '2021-08-27 07:38:20', '2021-08-27 07:38:20'),
(4, 'Sunt enim error officia totam earum est nihil excepturi debitis est minus velit.', 'sunt-enim-error-officia-totam-earum-est-nihil-excepturi-debitis-est-minus-velit', 'Fugit sed aut aut quo molestiae eos suscipit debitis. Dolor voluptates neque non ad et deleniti dignissimos ea. Laboriosam qui voluptates reiciendis natus non. Praesentium libero nobis et. Qui voluptatum doloremque molestias sunt eos error est. Quis commodi deserunt et voluptatem recusandae cumque. Nostrum libero optio magni laboriosam tenetur tempore repellat fugit. Commodi iure consequatur at itaque corrupti at. Nemo hic nulla non consequuntur sed molestiae quasi. Reiciendis autem quod pariatur asperiores iste. Sint minus ut sequi velit dolor atque et. Quibusdam exercitationem occaecati omnis ab. Enim rerum reprehenderit quae ipsam eos optio modi. Saepe neque velit iure illum. Architecto consequuntur molestiae accusantium doloremque illum. Molestias illum qui ut omnis. Esse rem ratione dignissimos explicabo. Dolor qui non vel quibusdam animi autem. Velit amet consequatur est nisi. Quo saepe id consequatur quia. Mollitia necessitatibus optio quasi dolor. Cupiditate assumenda quia at occaecati illo. Cum voluptas sint rerum a recusandae error perspiciatis. Repellat harum tempora asperiores neque facere facere dolor. Ipsam perferendis et cum ipsum ea molestiae. Enim asperiores quia in dolor sequi. Et quis labore culpa veritatis iste voluptates ratione.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 24, '2021-08-27 07:38:20', '2021-08-27 07:38:20'),
(5, 'Non aut magni libero ut fugiat laborum nam.', 'non-aut-magni-libero-ut-fugiat-laborum-nam', 'Minus et atque debitis qui. Vero beatae quia doloribus vel ea eligendi expedita. Et expedita atque est a provident. Ea et voluptatem mollitia qui veniam. Tempora consectetur natus et veritatis voluptas. Voluptas dolorem ut vitae quos. Minus nemo consectetur ea esse consequatur aliquam. Atque neque ut ullam facere non delectus tenetur. Maxime eum corrupti omnis hic ipsum quia asperiores. Molestiae aut aut molestias expedita. Unde eveniet voluptatum quia aut distinctio. Molestiae asperiores et voluptatem. Suscipit libero aut et dignissimos. Fugiat inventore sint beatae. Itaque corrupti itaque libero repellendus. Facilis quia quod est officiis eveniet ratione. Nobis ea deserunt voluptatem. Voluptas corrupti ipsum quo perferendis velit corrupti tempore. Molestias commodi quos delectus vel quo. Eligendi id dolores harum exercitationem nihil rerum ratione. Nihil id provident quasi quaerat. Tempora in sunt quisquam dignissimos.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 20, '2021-08-27 07:38:21', '2021-08-27 07:38:21'),
(6, 'Consequatur aut minus repellat veritatis pariatur.', 'consequatur-aut-minus-repellat-veritatis-pariatur', 'Quia quis ipsa ut. Quia repellendus tempore porro et inventore mollitia. Aut tempore harum dolor similique qui facere. Dicta quia eveniet ut quam iure. Ut exercitationem dolores dolorum sint esse quibusdam dolorem odit. Nemo est officiis et. Quaerat ea et consequuntur illo ducimus repellat impedit tempora. Modi eum possimus fuga dicta praesentium porro maxime. Eos magni quos dignissimos reiciendis beatae sapiente quia. Velit necessitatibus temporibus et enim quaerat porro. Ea rerum vel nesciunt excepturi fugit. Quia consequatur quia pariatur atque. Est quis quam fuga eveniet. Enim ut voluptatem asperiores. Voluptas cum veritatis asperiores. Blanditiis et quia et aspernatur quos id. Cupiditate possimus nam reprehenderit ut aut facilis qui et. Earum sunt possimus eum temporibus ex fugit. Consectetur ullam est quia dignissimos est. Enim id voluptatem laudantium quia qui provident qui sapiente. Voluptates veniam maiores qui dolorum dolorem. Sed et ullam eum quae repellendus. Sit rerum at aut excepturi magnam. Consequatur et voluptatem ipsa. Et impedit quia placeat magnam est reiciendis. Earum dolor ut ea ut repellendus id commodi aperiam.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 11, '2021-08-27 07:38:21', '2021-08-27 07:38:21'),
(7, 'Debitis fuga ut sint voluptatem consequatur id delectus laborum.', 'debitis-fuga-ut-sint-voluptatem-consequatur-id-delectus-laborum', 'Maiores et perferendis qui eius eligendi illo. Voluptas illum similique repellendus et non. Rem perferendis minus eveniet rem. Vel alias libero ea voluptatum. Ratione accusantium dolores nihil veritatis amet quasi facere. Placeat tempore esse saepe assumenda delectus cupiditate eum. Porro facilis id ex odit. Eius et commodi voluptatem cum. Quis nostrum rerum minus sunt nostrum ut. Aut id est repellat recusandae maiores. Repellendus commodi sint est itaque. Quisquam nihil dolorem sunt minus quia magnam. Modi voluptatem voluptates nemo modi. Id ullam dolorem ut accusantium. Similique autem sint aut et dolore beatae sapiente. Corporis et eveniet accusamus et omnis. Est reprehenderit tempora id. Error qui ea quae dolor. Voluptas voluptatibus maxime quia quia velit. Veritatis exercitationem quam consequatur consequuntur sunt illum saepe. Quae sint voluptatem assumenda unde. Accusantium ut molestiae nulla nemo alias sint impedit. Dicta ducimus provident nisi quae vel. Placeat pariatur earum ut voluptatum. Labore vitae enim corrupti ut ut voluptatem. Aut alias soluta unde vel. Tempora quas nihil ea ducimus voluptatem molestiae. Consequatur sed optio temporibus nesciunt cumque. Quae impedit rem error voluptatibus.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 10, '2021-08-27 07:38:21', '2021-08-27 07:38:21'),
(8, 'Delectus omnis eos non ut maiores quia vel.', 'delectus-omnis-eos-non-ut-maiores-quia-vel', 'Nesciunt ut corrupti magnam et expedita esse nulla. Autem accusantium deleniti nesciunt culpa non ab ducimus nihil. Et explicabo et corrupti. Nesciunt repellendus distinctio laboriosam quis. Et possimus excepturi assumenda quas id expedita quisquam. Impedit voluptates a nesciunt quis id alias. Similique dolor necessitatibus vel suscipit. Nihil maxime asperiores consequatur quae et. Quis enim harum id ipsam ea. Fuga aut quidem voluptatem aperiam perspiciatis ipsum maiores. Quos ut velit repellendus ut. Officia et error animi ipsa velit. Sed temporibus reprehenderit recusandae eaque. Accusantium repellat non nobis neque dignissimos quaerat. Eos numquam non temporibus aut quas placeat sit aliquam. Iusto asperiores est quis et. Porro error dicta consequatur eveniet dolor tenetur doloribus. Voluptas quam ex ut aut suscipit quo beatae quis.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 10, '2021-08-27 07:38:21', '2021-08-27 07:38:21'),
(9, 'Eum nesciunt at nam et aut consectetur iste reprehenderit eos cumque natus quis molestiae vitae voluptatem minima.', 'eum-nesciunt-at-nam-et-aut-consectetur-iste-reprehenderit-eos-cumque-natus-quis-molestiae-vitae-voluptatem-minima', 'Voluptates quidem id dolores asperiores. Numquam minima culpa est cupiditate. Cum accusantium omnis totam. Deserunt dolor est provident maiores id ut. Est ratione rerum sapiente voluptatibus consequatur et. Dolorem corporis consectetur ipsum et dolores aliquid. Sunt soluta hic quidem nisi et dolorem sunt. Adipisci nesciunt qui at perspiciatis optio consequatur sunt. Sequi aut ullam a quae repellat est omnis illo. Officiis molestiae modi non. Commodi dolorem suscipit rerum minus. Et voluptatem facilis temporibus culpa commodi dolore. Excepturi quisquam architecto esse error. Nihil voluptatem est mollitia. Porro voluptatibus enim aut voluptatem reiciendis. Accusamus error praesentium provident quae velit fugit provident. Laudantium consectetur voluptatem enim enim numquam laudantium temporibus. Debitis nulla accusantium ut inventore nihil fuga rem. Explicabo numquam eaque quas doloribus et. Aut facere eveniet vero aut voluptatem qui in.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 1, '2021-08-27 07:38:21', '2021-08-27 07:38:21'),
(10, 'Illo dolore id eum qui tempora est saepe quidem aut.', 'illo-dolore-id-eum-qui-tempora-est-saepe-quidem-aut', 'Quae eveniet et esse beatae. Est nulla corrupti voluptatem explicabo nulla placeat. Consequuntur quisquam optio tenetur reprehenderit harum nulla aspernatur recusandae. Laborum sequi blanditiis neque distinctio quis. Magnam libero et nisi sed et iusto dicta omnis. Rem minima atque placeat aut expedita cumque quibusdam. Fuga ex soluta sed amet incidunt id. Ut earum eum aut earum in qui tempora ducimus. Deleniti incidunt provident dolores. Aspernatur optio repellat nihil nemo. Occaecati laboriosam facere earum distinctio tempora iste eum hic. Est placeat est quasi doloremque impedit. Quae autem ipsum libero voluptatibus ratione. Eaque maxime et quia quidem voluptates sit sed. Enim est consectetur quas asperiores est ullam quo. Officiis molestias nam sunt consequatur. Ab odio consequatur vel hic molestiae odio. Sequi ea aut voluptatum incidunt quia. Labore deserunt aut quos et. Nam dicta placeat omnis aliquam. Quas voluptatem non provident ut voluptates magni qui. Fugit aperiam sapiente autem nisi nam velit. Sit saepe reprehenderit sed rerum est consectetur nisi repudiandae. Ut qui itaque dolores modi vel porro ducimus. Quod ratione esse reprehenderit accusantium sint nemo iusto. Ut quasi debitis vero perferendis vel. Commodi nulla et molestiae consequuntur.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 10, '2021-08-27 07:38:21', '2021-08-27 07:38:21'),
(11, 'Quibusdam impedit voluptas ad nulla voluptatem dolorem aut ut soluta.', 'quibusdam-impedit-voluptas-ad-nulla-voluptatem-dolorem-aut-ut-soluta', 'Non suscipit et quos est molestias nesciunt laborum nobis. Dolore qui eum temporibus consequatur. Et incidunt mollitia iure adipisci voluptatem ea maxime. Aliquid saepe accusantium perspiciatis perferendis a. Dolor quae iusto occaecati placeat cum. Maiores qui officiis id et impedit ea ea tempora. Explicabo qui accusamus quas pariatur. Ipsa delectus voluptatem culpa magni amet vel est. Necessitatibus facere nemo aut sunt eveniet similique. Eveniet adipisci nostrum fugiat qui necessitatibus delectus quia ad. Adipisci quasi quae nam temporibus. Ex quia a dolor provident. Distinctio facere id atque quisquam quae qui vel cupiditate. Nulla culpa ut quas numquam voluptas id. Aliquam dolor sed voluptatem assumenda ab. Dolores cumque est aut perferendis asperiores perspiciatis nostrum. Qui repellat atque voluptate assumenda at esse et. Vel adipisci doloribus incidunt soluta. Libero eaque et architecto ipsa. Magnam est ut est eum nisi sed accusantium id. Occaecati cumque quo officia. Odit incidunt harum rerum ducimus ullam aut. Odio molestias quaerat libero tenetur dolores nihil optio corrupti. Explicabo aut voluptatem illum eos deleniti consequatur enim. Et omnis expedita adipisci temporibus fugiat qui et.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 7, '2021-08-27 07:38:21', '2021-08-27 07:38:21'),
(12, 'Sed vel perferendis voluptatem sed quod magni animi consequatur iste blanditiis.', 'sed-vel-perferendis-voluptatem-sed-quod-magni-animi-consequatur-iste-blanditiis', 'Id et ad deserunt qui. Iusto sed molestiae minima aliquid. Consequuntur nihil et nobis laudantium explicabo dolore. Qui debitis dolor necessitatibus ut repellat possimus. Possimus saepe sequi tenetur et eos neque maxime. Rerum consectetur atque et dignissimos officia ab enim assumenda. Adipisci sed aut blanditiis quidem. Id corporis qui suscipit nisi animi. Quibusdam facilis ratione debitis et et amet laborum. Aut eum provident in odit porro at. Eaque sint exercitationem rerum necessitatibus quia. Vero perspiciatis dolores nihil est sapiente facilis. Architecto impedit perspiciatis totam maiores porro dolore. Nihil minima soluta qui fugiat quo nulla. Quis hic voluptatum est laboriosam velit corrupti magni dolores. Inventore illum est nihil distinctio reiciendis aliquam. Corrupti culpa eveniet voluptatem corporis nobis. Id minima beatae quibusdam veniam et accusantium pariatur. Mollitia quidem repudiandae est omnis dolores non dolorem. In enim nulla est dolor nesciunt ut et quidem.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 6, '2021-08-27 07:38:21', '2021-08-27 07:38:21'),
(13, 'Quia autem quia ratione tempore est quidem.', 'quia-autem-quia-ratione-tempore-est-quidem', 'Ullam architecto et consequatur voluptate. Unde qui tenetur reiciendis exercitationem aut dolor impedit. Aut et velit odio. Nostrum dolores delectus et voluptate quas qui ut. Veritatis quia illo quae cupiditate et eos quaerat iusto. Dignissimos odio rem voluptas eligendi qui sapiente. Consequuntur optio modi repudiandae quia non. Inventore voluptatem enim dolorem dicta sed qui. Et ut reiciendis officia ab. Facilis est labore quidem id accusamus praesentium sed qui. Rerum harum placeat sed libero labore. Temporibus quo quis nihil aliquam et. Et ipsum est aperiam ut. Architecto ut nobis est. Eos voluptatem sit ad tenetur. Sapiente nobis eveniet dolor et tenetur eveniet omnis suscipit. Repellat inventore dicta atque odit. Consequatur velit qui eaque sed. At sequi similique dolore non voluptatem odio. Cum quam ipsum provident sed. Impedit ipsa accusantium et qui officiis. Aperiam quo quia eum. Dolores quae deleniti doloremque. Magnam ipsa adipisci laudantium id culpa. Aut cupiditate perspiciatis fugit quae quas distinctio. Ducimus tempore blanditiis nisi. Corporis esse earum ea molestiae porro sit enim. Nesciunt natus totam ut sit eius. Accusantium voluptatem illum sint autem consectetur similique aut. Fuga dignissimos rerum mollitia molestiae asperiores. Commodi nobis omnis cupiditate est.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 15, '2021-08-27 07:38:21', '2021-08-27 07:38:21'),
(14, 'Quos facere porro et id ut modi iure voluptas omnis qui debitis provident cupiditate.', 'quos-facere-porro-et-id-ut-modi-iure-voluptas-omnis-qui-debitis-provident-cupiditate', 'Eius vero eius tempore explicabo nihil totam perspiciatis. Sed consequatur aspernatur illo soluta facilis distinctio quos perspiciatis. Sint accusantium est voluptates vel sed quae tenetur. Amet rem repellendus perspiciatis voluptatibus possimus. Ut praesentium omnis iusto velit amet necessitatibus. Quibusdam illo et est ipsam consequatur ipsam. Earum consectetur quaerat ipsum dolor voluptas corporis id. Laboriosam sapiente sit consequatur id commodi quidem consequatur. Sed eum in officiis a. Aliquid laborum ipsam facilis qui perspiciatis. Tenetur hic commodi excepturi ipsam. Sed temporibus nisi temporibus dolore voluptate. Eum vero accusantium maiores voluptatem. Autem porro eum cupiditate optio rerum et.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 10, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(15, 'Animi nihil totam dolorem omnis aut accusantium placeat rerum eum.', 'animi-nihil-totam-dolorem-omnis-aut-accusantium-placeat-rerum-eum', 'Mollitia quidem qui libero laudantium corporis. Est animi fugit fugiat porro. Nobis amet cupiditate numquam dolores quis error. Labore doloremque iusto sit aut. Ut culpa iure illo et placeat. Placeat architecto quia est minima esse. Dolores sunt sunt tempora quia deserunt sed. Facilis corporis neque possimus quisquam ex ducimus. Qui fuga cupiditate non perferendis. Non necessitatibus impedit corrupti. Ratione quia sapiente doloremque porro. Nemo provident qui non sequi dolores laborum consequatur. Et sed et provident nihil voluptas. Sed temporibus culpa ut voluptates tempore. Commodi nihil vitae sit ratione ut. Sunt numquam assumenda aliquid cum iste ea. Autem ipsam totam hic in earum commodi sed. Dolore accusamus quisquam et enim atque necessitatibus accusantium nesciunt. Et non vitae odit quia sunt et consectetur est. Sed est debitis non commodi soluta.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 24, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(16, 'Consequatur quas odio ex iure maiores qui illum.', 'consequatur-quas-odio-ex-iure-maiores-qui-illum', 'Voluptates debitis quae temporibus mollitia voluptatum voluptatem voluptatem accusantium. Quisquam quod rerum nostrum earum et dolorem dolore. Laborum saepe excepturi natus accusamus asperiores. Sunt incidunt harum omnis ea. Atque et nulla quia vitae. Sint consequatur autem quaerat similique commodi. Est nam amet eum et eos aut. Et et minima dolor quos maiores nam non. Consequatur repellat doloribus sed voluptas esse quis. Autem id iusto tenetur nihil nostrum quo aut. Itaque perspiciatis et quis quos repellendus. Reiciendis saepe dolor vel odio excepturi perspiciatis sint. Temporibus dolor est voluptatibus iste amet. Dignissimos esse inventore fuga unde at. Veritatis qui earum autem adipisci quis. Enim eveniet neque et tenetur quia. Itaque cupiditate sint adipisci facere. Omnis doloribus dolorem aut sunt laborum ut. Facilis ullam quo facilis. Praesentium odio eos porro aut esse reiciendis quod. Non dolores et in. Sed ut est quia. Quasi labore rerum harum quo molestias exercitationem neque dolorem.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 8, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(17, 'Sint sit eos nisi perspiciatis quia blanditiis quibusdam deserunt natus.', 'sint-sit-eos-nisi-perspiciatis-quia-blanditiis-quibusdam-deserunt-natus', 'Dolores eaque eligendi vel iure corporis deserunt ea. Sed sapiente eum aut ex qui porro fugit. Provident voluptates ipsa autem earum veritatis sit voluptatem. Eos et dolorum minima quo aut numquam sed ea. Nisi in rerum aut autem. Ea reprehenderit dolores tenetur quidem sit et accusantium qui. Dolores provident rerum tempore reprehenderit. Magnam repellendus consequatur eos sint animi fugit. Quod quia itaque vitae ut optio. Mollitia corporis vel qui dolorum et. Soluta sequi rerum et provident facere impedit. At quidem expedita quis vitae et. Consequatur autem ratione porro ipsum neque nihil exercitationem. Vitae et reiciendis rem consequuntur distinctio. Et necessitatibus veritatis est. Aperiam quaerat sit quasi doloremque aut aut. Dolorum reprehenderit commodi ratione totam velit ratione. Id rem dolorem reiciendis tempore qui. In consequuntur omnis veritatis incidunt porro. Hic est asperiores molestiae enim. Est dicta culpa magni sit et. Et dolor dolore minus delectus quo.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 24, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(18, 'Perferendis iusto omnis qui ipsam et debitis quis aliquid.', 'perferendis-iusto-omnis-qui-ipsam-et-debitis-quis-aliquid', 'Tempora qui eum blanditiis explicabo ut. Aspernatur sit sint explicabo assumenda officia. Minus assumenda rerum quis delectus quos. Nam nihil placeat nihil maiores rem accusamus. Molestias voluptatum fugiat dignissimos sunt quia cupiditate. Quia aut dolores libero odit et reiciendis. Dignissimos et est eos et ex ut fugiat. Porro quod incidunt ut ad. Incidunt sed nihil sit sit odio voluptatibus corporis. Libero rerum voluptatem dignissimos. Blanditiis quidem quis aut repellendus at. Aut expedita culpa similique ut impedit est. Quod distinctio in nihil voluptatibus quis sit ipsam. Repellendus nesciunt rerum officia mollitia. Distinctio aut voluptatem laborum eum quo ut atque. Beatae qui ab sed. Porro pariatur possimus praesentium repellendus est laboriosam ipsa.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 17, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(19, 'Ut qui quis et natus maxime ut.', 'ut-qui-quis-et-natus-maxime-ut', 'Eius optio beatae veniam occaecati cum ut veritatis quae. Rem rem corporis rerum enim ad voluptas. Numquam temporibus nobis et molestiae deserunt. Quasi suscipit nulla maxime sequi. Dolores odio in ut in sunt. Voluptatum et omnis dolorum facere blanditiis. Aut rerum natus autem sit nam provident vero corporis. Ullam et totam sunt veritatis. Ut dolorum animi sint consequatur culpa et voluptatem. Est facilis ducimus sed totam. Possimus asperiores harum omnis recusandae qui modi sed non. Voluptates et in aliquid optio laudantium et deleniti. Voluptatem quisquam porro commodi. Nemo consectetur qui itaque possimus eum. Dolore nihil odio voluptates et. Nihil aut quos nostrum qui nam. Cum possimus doloremque temporibus tempora voluptas est. Assumenda aut omnis laudantium minima totam. Modi voluptas maiores eveniet sit nam voluptatem vitae porro. Autem cupiditate deleniti praesentium perferendis aspernatur veritatis. Qui quae eveniet maiores eaque deleniti. Praesentium iste dolor aut temporibus. Dolor voluptas quis harum sunt optio quis. Commodi totam et sed minima dolor. Fugit cumque reiciendis sed aliquid quidem. In impedit dolore illum asperiores molestiae.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 10, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(20, 'Ipsa aut blanditiis repellendus sed suscipit neque temporibus ipsam sit dolore est cumque.', 'ipsa-aut-blanditiis-repellendus-sed-suscipit-neque-temporibus-ipsam-sit-dolore-est-cumque', 'Quo nisi aut id temporibus sit repellendus. Molestiae quibusdam natus velit. Mollitia qui voluptatem repellat doloremque quo. Ut nihil earum nihil ut nostrum. Odit aliquam ad qui earum id fuga. Sed culpa quia omnis ratione nesciunt sint. Unde qui officiis qui nemo omnis distinctio quia. Nostrum deserunt qui iure voluptatum quasi. Rerum aut vel possimus corporis. Quod eos ut esse officiis est quae dolor ut. Ea rerum veniam quia et. Quis aut voluptate suscipit a voluptatibus repellendus. Enim vitae et nulla tempore. Sunt quaerat minima rerum voluptatem id officia. Esse explicabo consequatur occaecati. Et adipisci labore sint quae. Labore et nobis natus est laboriosam dicta. Consequatur consequatur ut iste voluptatem perferendis occaecati. Laudantium ut optio occaecati numquam quis. Vel voluptas accusantium ad quia sapiente magnam ut delectus. Quidem eos similique voluptates. Omnis quasi excepturi reiciendis qui explicabo consequuntur. Dolore velit perferendis et odio assumenda consequatur ut. Et quibusdam ipsa dolor cumque.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 18, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(21, 'Velit saepe sit recusandae nihil eligendi.', 'velit-saepe-sit-recusandae-nihil-eligendi', 'Dolores et sint qui sed animi. Velit nihil dignissimos minima nobis beatae. Impedit non vel magnam aliquid. Asperiores similique facere quia magni voluptate aut officiis. Nam et delectus voluptates quas aliquid libero. Amet quae odit nulla. Quis qui sint est voluptatem. Et et nemo optio possimus suscipit. Quaerat architecto et et provident quidem animi et numquam. Pariatur non pariatur ipsum occaecati. Suscipit illo nihil enim fugiat. Numquam dolorem et facere iste rerum. Quo maxime modi expedita officiis sint beatae inventore. Dolor delectus pariatur ut ea ea. Voluptatem explicabo officiis ratione et ex quia iure veniam. Enim eos quis sed magnam dolorum. Qui nihil necessitatibus quod enim. Et quae aspernatur consequatur ut labore. Ratione possimus sit quaerat doloribus laudantium neque qui. Consequatur aut reprehenderit fuga impedit deserunt. Ut voluptates sapiente qui atque dolores. Commodi quas voluptatibus sunt aliquam omnis. Et officiis accusantium dolores nulla quis rerum. Aut quos hic mollitia sed. Asperiores et minus aspernatur iusto distinctio sequi et quas. Mollitia non cum qui est possimus omnis. Autem tempora ex at. Temporibus quae iusto omnis dolores. Blanditiis dignissimos beatae dolor voluptas voluptates.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 17, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(22, 'Ut autem vero aperiam ut saepe nobis.', 'ut-autem-vero-aperiam-ut-saepe-nobis', 'Et et tempora enim ut optio dolor quo consectetur. Et at aut dicta. Illo consequatur voluptate consequatur modi iure quo dolorem. Enim quam et iusto. Maxime omnis aperiam voluptatem sed et tempora a. Perspiciatis provident voluptatibus blanditiis numquam et. Et eum est voluptatem suscipit reprehenderit ex eos. Dolores sint voluptatem deleniti commodi in saepe velit quia. Dolorem cupiditate voluptatem consequatur ad minima quae. Saepe deserunt alias aliquam voluptatibus. Non et tempore deserunt quo incidunt. Eveniet non officiis unde consequatur perferendis. Fuga facere nihil dolorem aut et consequatur officia. Laudantium soluta labore sint quas est sunt optio est. Quod eos hic laudantium omnis aut voluptas maiores. Laborum nam enim soluta sed voluptatem illo repudiandae. Et laboriosam qui non aut necessitatibus sint. Dolorum optio enim sint quis quo qui.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 14, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(23, 'Ut optio veniam labore dolor eum sed inventore dolore quia eligendi.', 'ut-optio-veniam-labore-dolor-eum-sed-inventore-dolore-quia-eligendi', 'Nam sit aut totam provident vero. Vero totam illum suscipit ratione soluta excepturi sunt ea. Alias sunt saepe aspernatur ad velit. Numquam molestiae et at magni porro. Impedit magnam consequatur aspernatur et enim. Qui aut aut perspiciatis deleniti. Quia qui dolores quae magnam totam. Et et ullam et cumque dicta fugiat aut. Et quos magni explicabo molestias. Et aperiam voluptas autem magnam quas aut qui. Omnis beatae aut laborum repellendus. Nisi possimus voluptas sunt dolorum minima magnam consequuntur. Perspiciatis temporibus commodi ut sunt id rerum. Est ratione adipisci autem enim magnam quo laborum. Fugit eum aut distinctio minima sit. Culpa quaerat maxime est non ut aut. Eligendi cupiditate laudantium hic accusantium. Maxime cupiditate dolorem voluptatem animi repudiandae explicabo. Doloribus veritatis aliquid aut ducimus deleniti voluptatibus itaque enim. Quaerat ut at praesentium recusandae corrupti perferendis. Voluptatem sint ut labore autem. Ut eaque est at. Delectus nulla officiis excepturi ratione. Vel cumque minus officiis quis veniam numquam. Dolore sint minima quis laborum odit suscipit sint. Alias molestias adipisci vel eum omnis quam voluptatem. Velit molestiae esse et dolorem et. Sint dolorem repellendus tenetur facere.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 7, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(24, 'Quibusdam facilis consequatur consectetur aliquam laborum et.', 'quibusdam-facilis-consequatur-consectetur-aliquam-laborum-et', 'Quia culpa officia impedit odit veniam aut eius. Dicta atque molestiae quo dolorum sunt nam a. Reiciendis quia autem dicta. Dolor adipisci iste eum reprehenderit. Et facere dolorem et quis aperiam. Quis rem consequatur nihil nam quis. Fugit omnis architecto nihil aperiam voluptas. Quia et voluptate ipsa ullam eveniet ut. Minima ab quam laudantium illo quo nostrum corrupti. Saepe aspernatur quae esse sequi aperiam aut. Ea recusandae est quia quod aut dolor vel quis. Quo voluptas iure fugiat aut magni libero rerum. Voluptate qui maiores et ea saepe. Assumenda ab ex quas modi. Animi sunt reprehenderit et earum adipisci. Ad non esse aspernatur accusantium aut veritatis. Aspernatur natus ad quas enim. Nesciunt officiis deleniti sequi ut est recusandae. Libero est aliquam illum reprehenderit nemo in. Nobis ab ut sunt. Quo ut perspiciatis atque aut tempore. Et earum quae doloribus accusantium ducimus. Alias consectetur sunt pariatur. Laudantium assumenda ut tempora placeat. Quam voluptatum alias aliquam sit fuga. Cupiditate ipsa non ea voluptatem. Iusto ipsum sit incidunt expedita. Qui voluptates exercitationem autem vero quis voluptatum. Consectetur illo vel aut consequuntur harum. Laborum officiis labore dicta dolores eaque ratione facere eos. Omnis enim perferendis sunt dolores. Nemo in ipsum delectus. Tempora reprehenderit iusto animi eum sed numquam. Magnam quod ex et.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 7, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(25, 'Quidem neque eum alias aut et minus sit non.', 'quidem-neque-eum-alias-aut-et-minus-sit-non', 'Et harum blanditiis quia odio. Necessitatibus est iusto ea quas iusto aperiam rerum. Qui asperiores est ea at amet atque voluptatem velit. Rerum blanditiis maiores aliquid. Ut sunt et aut sunt velit sint iste. Ducimus voluptatem fuga sed nobis dicta quasi mollitia. Eveniet eveniet magnam doloribus ad non fuga. Ipsam cum harum nihil autem sequi dolor non. Est tempore voluptas omnis et atque animi aut. Culpa quos dignissimos temporibus harum aut. Maiores expedita in reprehenderit veritatis. Distinctio deserunt ipsam tempore vel vel impedit aut. Itaque sed minima est ratione. Ratione nobis voluptatibus tempora qui. Explicabo non omnis labore. Sunt minima porro sequi sit. Fugiat minima nostrum iusto cum commodi. Tenetur suscipit vitae voluptatem ut. Dolorem commodi voluptas delectus laboriosam sit omnis dolores. Et earum earum odio voluptatem. Consequatur inventore minus pariatur consequatur necessitatibus recusandae fugit. Ut in enim dolorum esse culpa et eligendi. At et accusantium sunt quaerat amet. Quae accusantium nulla cupiditate in.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 1, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(26, 'Ea qui est laborum qui provident asperiores et dolor et.', 'ea-qui-est-laborum-qui-provident-asperiores-et-dolor-et', 'Modi rem quia perspiciatis ipsam aliquid est corrupti autem. Recusandae et ipsa dolorum similique est. Alias possimus cum voluptas sapiente mollitia tempora magnam. Magnam est nobis et doloribus. Pariatur suscipit eius similique autem ratione tenetur. Ea quibusdam et voluptas temporibus nemo. Illo quia maxime ipsam voluptatem dolores minima id. Vero pariatur voluptatem voluptates dignissimos non culpa quia. Ullam est non laborum non dolor. Recusandae dolor ipsa architecto officia. Architecto deserunt nihil quia est. Velit laborum qui ut accusantium aut. Enim aperiam praesentium molestias quia aut non. Atque necessitatibus nostrum dolorum dolorum officia. Recusandae maxime qui eaque repellat. Culpa placeat incidunt ad impedit est ipsam nulla. Quos saepe odio nihil temporibus. Odit in earum sint dolores. Fugiat minima rerum aut quia praesentium assumenda placeat rerum. Et libero alias ut temporibus asperiores est. Animi vel modi aliquam rem aliquid. Accusantium sint sit minima perspiciatis nihil explicabo dolorem. Quo est dolores accusamus fugiat doloribus aut. Non assumenda possimus quos nihil.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 6, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(27, 'Cupiditate hic cum ut voluptatem aperiam voluptatem sed ut et consequatur magnam.', 'cupiditate-hic-cum-ut-voluptatem-aperiam-voluptatem-sed-ut-et-consequatur-magnam', 'Quis officiis similique ea sint et aut nihil nemo. Qui dicta excepturi ut et est harum adipisci quaerat. Aut dolorem ea fugiat aliquam. Sunt consequatur quidem est eos. Itaque sunt voluptate nostrum consequatur. Quod sed molestiae dolor veritatis nihil. Dolorem aperiam et possimus rerum. Eligendi nisi est voluptates eos. Suscipit cupiditate quisquam praesentium sunt quos commodi sequi sed. Non et pariatur minima odit maiores non. Et nesciunt ullam nesciunt a repellat voluptate sapiente iure. Delectus dolorem ipsa dolor accusamus nemo quae excepturi dolores. Iusto similique tenetur quis debitis. Excepturi quaerat iure esse ullam. Tempora rerum tempore ut qui aut voluptatem. Iste eos quia quam saepe numquam. Quam qui numquam ex fugit consequatur aut. Minus quasi quia quia natus voluptatem distinctio. Eveniet illo harum qui iste quia sapiente iure. Eligendi qui sit molestias eaque facere molestiae. Eveniet fugiat sed omnis soluta ipsum consequatur. Sed suscipit dolor vitae ut ex quis. Ad in saepe aliquam aut et rerum qui. Dolorem omnis qui et sint. Dolorem quia nemo voluptatem ut et aperiam consequuntur.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 25, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(28, 'Commodi minus laudantium placeat quas eveniet perspiciatis modi.', 'commodi-minus-laudantium-placeat-quas-eveniet-perspiciatis-modi', 'Hic eaque eius porro minus. Aliquam veritatis accusantium non quam eaque optio aut. Quis nemo omnis praesentium occaecati inventore. Est eveniet voluptatem doloremque. Ab et beatae mollitia sit. Quas nihil non alias consectetur ut. Alias voluptatem assumenda odit voluptas ratione impedit consectetur atque. Adipisci molestias at et maxime voluptatem fugit sit. Corrupti eum quod quis quibusdam ea reprehenderit voluptatem. Dolore nobis in sapiente fugiat culpa non. Reprehenderit molestiae dolorem a deleniti temporibus assumenda non. Deserunt eveniet possimus illum maiores. Impedit quisquam esse officiis impedit voluptas. Omnis incidunt non est architecto aut cum. Dicta officia officia vel pariatur. Quis qui in voluptatem qui repellat fugit incidunt. Vero assumenda suscipit magni fugiat vero. Odio est et aut natus. In quam fugit quibusdam. Cumque reprehenderit veniam quisquam et aut. Atque autem illo qui. Sequi aliquid veritatis numquam ex incidunt corrupti. Voluptas illum et eligendi et consequatur. Omnis esse delectus ut exercitationem eos non perspiciatis.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 7, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(29, 'Officiis suscipit maxime dolores sed commodi labore sit quisquam sunt.', 'officiis-suscipit-maxime-dolores-sed-commodi-labore-sit-quisquam-sunt', 'Suscipit repellat quam fuga animi porro et dignissimos. Asperiores numquam eius porro est consequatur. Et repellat quis quia. Aspernatur aspernatur sed ut deserunt. Numquam rem quia facilis delectus ea in. Pariatur consequuntur vel ullam laborum. Provident ea quasi asperiores ab pariatur. Aut natus et neque et mollitia numquam. Tempora dolorum iste ut nisi maiores. Facere aliquid veritatis id. Error velit in unde nam architecto. Nobis ab fugiat quas fugit rerum quod quibusdam. Possimus deserunt perspiciatis natus sit voluptate. Optio modi aspernatur voluptate sint odio. Aut quisquam nesciunt id voluptatem voluptatum ut. Atque facere tempora voluptatem itaque eum dignissimos. Omnis quis suscipit vel velit laboriosam temporibus. Inventore qui at hic qui doloribus quis. Modi minus qui hic repudiandae. Soluta minus officia voluptate voluptas animi. Cupiditate sed magnam in vel blanditiis excepturi ab illum. Earum facilis cupiditate ea qui. Voluptatem at dolorem est rerum. Veritatis ut qui unde aut earum atque quia facilis. Consectetur eligendi est iusto esse. Sit nemo laborum ex voluptas consequatur excepturi. Iure est qui et quo. Corporis ut qui maxime qui.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 11, '2021-08-27 07:38:22', '2021-08-27 07:38:22'),
(30, 'Unde assumenda omnis est explicabo non et enim neque eveniet rerum nobis minus.', 'unde-assumenda-omnis-est-explicabo-non-et-enim-neque-eveniet-rerum-nobis-minus', 'Aut aut voluptas hic labore et qui. Explicabo sed ex ipsa qui ut sit corrupti voluptas. Et amet totam delectus ducimus aut repellat. Dolorem consequatur sint quaerat cumque. Quos et quibusdam qui ut quia quia. Quia tempora commodi laboriosam quo. Quibusdam voluptas voluptas repellendus sint quos. Amet saepe fuga dolorum qui quia nulla. Fugiat officia dolores officiis facilis. Beatae expedita qui ullam ea sed quos autem. Ullam et nihil qui repudiandae mollitia. Ut molestiae maxime qui rerum et. Dolore quidem aut consequuntur delectus fuga quam qui voluptatem. Eos consequuntur id sed non repellendus veritatis libero voluptas. Sunt sit quae eos unde. Molestias porro officiis fugit maxime. Facere et fugit ut sit optio ipsam voluptatem dignissimos. Fuga velit ad sint eius distinctio. Rem eos voluptatem fugiat illum eum quas aut. Sit recusandae dignissimos omnis. Iure sint quia neque temporibus. Accusamus ducimus sint qui ullam omnis dignissimos.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 25, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(31, 'Laborum voluptas fuga nisi in consequatur molestias doloribus placeat est aut.', 'laborum-voluptas-fuga-nisi-in-consequatur-molestias-doloribus-placeat-est-aut', 'Dolorem sit sunt deleniti sunt. Dolor voluptas quia a possimus consequuntur. Est optio voluptate culpa praesentium voluptatum autem. Ex mollitia est molestias excepturi. Incidunt facere cumque in voluptates quia a. Rem sit rerum dolores et officia modi ut. Ad quas eveniet repellat ut animi voluptatibus. Ex eaque amet quis quasi quis numquam quam. Inventore nesciunt assumenda quidem soluta aut qui est vel. Aut enim et ut. Perspiciatis aut repellat similique perferendis eos voluptates. Similique unde doloribus esse aliquam. Et tenetur quia qui itaque perspiciatis nam quaerat. Sapiente pariatur excepturi sed quis voluptatum. Vel doloribus occaecati laborum rerum quisquam ut fugit. Vel dolor voluptatum non at sed. Tenetur enim dicta dignissimos ut impedit sed ut. Tempore eius ut laborum ut ut alias quae. Et cumque ut officiis accusantium aut voluptas. Ab fugiat consequatur dolorum. Quis qui repellat error accusamus. Vero quas delectus totam quasi aspernatur fugit. Dolore et ducimus et. Natus minima asperiores et quisquam laboriosam. Ab error quis magni maiores cumque et temporibus similique. Veritatis eaque amet eos dignissimos soluta aliquid neque. Tempore autem neque maxime voluptatum. Quidem eligendi eius est id id eveniet ut. In id sint recusandae. Beatae vitae atque ratione eligendi. Vero libero dolor ut. Consequatur et quidem est dolorum eius possimus. Illum omnis sint vitae deserunt autem sed dolore. Dolorum non vero eaque enim.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 17, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(32, 'In sint veniam est blanditiis dolorum debitis quaerat mollitia.', 'in-sint-veniam-est-blanditiis-dolorum-debitis-quaerat-mollitia', 'Sit autem rerum ab sed commodi nesciunt molestiae. Accusamus est perspiciatis fugit hic. Voluptatem modi molestias quod amet. Error sunt tempore voluptas id culpa sed est. Autem molestias minima ipsum quo. Rerum eos maiores voluptas excepturi iure voluptatibus qui dolor. Dolore necessitatibus voluptas consequatur esse enim assumenda. Est quidem earum adipisci repellat numquam amet mollitia voluptates. Aut voluptatem aperiam alias animi dolor veniam. Omnis voluptates officiis quia exercitationem non voluptate rerum. Soluta mollitia ducimus a officiis. Officia omnis eum esse est. Numquam totam dolor animi quia. Voluptatem reiciendis totam facilis quos hic cumque rem. Inventore similique inventore velit quam voluptatem omnis aut. Dolore qui autem distinctio beatae illum asperiores sequi. Quia nisi tempora sapiente quia veritatis. Saepe aut ut quia accusantium totam asperiores. Dolor error rem veritatis vel voluptas unde saepe. Sint omnis nisi veritatis eum rerum. Earum aut rerum qui debitis. Consequatur fuga et minima quo pariatur sunt maxime. Corporis voluptate est id voluptatem praesentium vero. Animi adipisci est est recusandae. Quam omnis consequatur error voluptates. Et impedit voluptatum quia sit porro voluptatem officia.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 17, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(33, 'Laboriosam sint sint et necessitatibus et qui voluptates necessitatibus illum omnis quia.', 'laboriosam-sint-sint-et-necessitatibus-et-qui-voluptates-necessitatibus-illum-omnis-quia', 'Consequatur qui harum nostrum dolorem earum officia at. Iste maiores earum consequatur. Omnis asperiores cumque qui omnis perferendis eius earum hic. Ut tempore molestiae dolores. Minima consequatur doloremque rerum dolore et est officiis necessitatibus. Impedit quidem illo tempore aut perspiciatis quia non et. Qui illum dolor nobis quis autem dolore recusandae. Molestiae aut et ut ut. Voluptatibus molestias magnam voluptatem. Autem eius et sit vitae soluta. Ut delectus velit corrupti maxime quia perferendis voluptatibus. Maxime nam aut molestiae consequatur culpa nobis amet. Ad officia sapiente doloribus omnis dolorem. Cum quae est ipsam illum blanditiis ea. Numquam distinctio molestias aut aut impedit nam qui. Eveniet facilis delectus cum exercitationem error aliquid aut. Deserunt voluptatem aut aut voluptatem qui molestias corporis. Itaque quo ea dolorem similique natus voluptatem voluptatibus. Laudantium est ea officiis est consequuntur. Voluptates ea tempore aut magnam numquam. Id dolorem voluptatem dolores rerum. Laudantium dolorum id vero est nobis. Eius cumque nemo vel rerum ex. Et nemo unde cum quisquam eos qui. Esse qui sunt voluptas et.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 20, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(34, 'Beatae optio voluptatum ipsa adipisci quae commodi autem quod autem aut.', 'beatae-optio-voluptatum-ipsa-adipisci-quae-commodi-autem-quod-autem-aut', 'Repudiandae quisquam corporis sit velit ea. Officia nemo corrupti ea occaecati modi. Harum incidunt nemo quos necessitatibus quidem. Error dolor excepturi corrupti consequuntur debitis provident. Fugiat corrupti eveniet aut. Eos delectus quia quisquam nulla et aut iure accusamus. Soluta sunt delectus impedit reprehenderit architecto fuga. Officia alias eum quae quia debitis. Et nulla placeat corrupti facere vel expedita. Qui provident eaque sed nisi. Sint eos eaque magni tenetur amet vitae sint. Porro qui qui fuga qui ut ut rerum aut. Aut deserunt odio harum quia corrupti. Harum minima assumenda accusamus corporis. Eaque a voluptates eius quis natus. Enim eligendi blanditiis inventore facilis est. Quia distinctio nisi quos ab. Quibusdam non eius ratione quis. Doloribus iusto possimus modi. Qui enim est nihil blanditiis laboriosam dolorum nemo. Tempora tenetur deserunt vitae dolore. Porro voluptatem magnam non qui qui rerum qui. Culpa dolorem qui aspernatur est. Consequuntur fugiat praesentium et velit quisquam numquam. Quas laboriosam qui dolores tempora qui perspiciatis. Veniam totam explicabo assumenda ex. Quae illo cum sint ea accusantium porro deleniti. Animi culpa rem voluptas. Et vel totam necessitatibus. Sint occaecati saepe ab ut eos voluptas. Autem in sed eaque temporibus inventore officiis. Velit voluptatum quia et quia repellat odit facere. Saepe hic accusamus asperiores maiores. Aut deserunt est aut ut illum.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 20, '2021-08-27 07:38:23', '2021-08-27 07:38:23');
INSERT INTO `videos` (`id`, `title`, `slug`, `desc`, `file`, `url`, `type`, `course_id`, `created_at`, `updated_at`) VALUES
(35, 'Excepturi non corporis aperiam perferendis accusamus rerum.', 'excepturi-non-corporis-aperiam-perferendis-accusamus-rerum', 'Voluptatem vel quis libero eveniet distinctio reprehenderit saepe. At aut qui debitis. Saepe et velit velit et repudiandae et. Similique autem perspiciatis ex incidunt libero. Dolor natus deleniti ipsum. Cumque vitae excepturi pariatur omnis eum fugiat. Quisquam cumque placeat nam fuga. Quos qui autem vel exercitationem voluptatibus at voluptas. Qui quibusdam qui in molestiae. Magnam et totam dolor vitae nulla. Suscipit tempora esse harum corporis alias. Dolorem sed perferendis sint cupiditate. Consequuntur animi omnis reiciendis nemo. Occaecati ut atque ipsam tenetur nihil debitis. Sit temporibus iure molestias est. Soluta optio debitis explicabo qui ratione ratione temporibus. Aut sed dolor et quo est ea impedit. Incidunt esse itaque harum nulla adipisci officia aspernatur. Labore est itaque quidem accusantium iure repellendus. Ut odio distinctio harum aperiam mollitia labore rerum dolores. Quam non repellendus nisi velit rem ex eius.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 8, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(36, 'Occaecati ducimus non aliquam pariatur sapiente occaecati nam reiciendis et.', 'occaecati-ducimus-non-aliquam-pariatur-sapiente-occaecati-nam-reiciendis-et', 'Voluptatem cum ipsum ducimus placeat. Qui perspiciatis consequatur velit recusandae. Sed sunt vero id qui animi. Fugit eaque animi eos facilis. Voluptates sunt dicta necessitatibus autem laudantium perspiciatis. Minus excepturi quaerat provident tempora omnis dolores. Explicabo nam ut ut quia placeat. Qui eaque voluptates est. Sint tempore a at voluptatem libero id. Ut id quis tenetur cupiditate. Doloribus odit eius earum eum sed. Molestiae in minus quas ab facere quia voluptate. Necessitatibus aut sunt inventore et. In qui est vitae magni tempore veritatis quis eveniet. Non qui consequuntur aut ut odit eligendi id. Eveniet enim fuga ut et totam velit. Et iure recusandae molestiae enim ducimus eos. Aut officiis maxime placeat enim architecto quibusdam aut. Veniam autem quasi quia expedita perferendis. A velit ratione omnis praesentium. Laudantium ut accusantium sunt exercitationem doloribus soluta. Repellat velit totam corporis maxime dicta. Et sunt et inventore corporis nesciunt saepe. Non distinctio earum perspiciatis modi.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 17, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(37, 'Vel perferendis quae animi error autem et et.', 'vel-perferendis-quae-animi-error-autem-et-et', 'Excepturi ex officiis qui sit commodi eaque et. Doloribus rerum hic in labore est nostrum. Explicabo cum enim vel nam enim placeat. Voluptatem vel vitae fugit ut quisquam voluptatibus. Quam quia nihil quae quo et velit quis. Corporis sit sit at commodi ullam blanditiis. Et et velit officiis culpa repudiandae assumenda. At totam voluptate consequatur. Quibusdam dolores deserunt doloremque est quia dolores deleniti praesentium. Officia id occaecati est perspiciatis quo quod. Labore est et voluptas quae autem enim. Nihil porro asperiores pariatur aliquam. Quo nemo et ratione. Minus qui vero nihil aut ex quo. Exercitationem facere et ipsam. Iure pariatur debitis occaecati laborum nihil. Ea et eos totam dolor laudantium placeat. Recusandae aut eum id. Et unde aperiam id voluptates et. Praesentium adipisci dolores est et magnam. Consectetur consequatur iure dolores deserunt vitae. Qui molestiae alias et autem eos neque et dicta. Quo repellat quaerat corporis quo iusto deserunt beatae tempora. Qui facilis ut vel sint.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 17, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(38, 'Eaque perferendis mollitia omnis quis aut aut eum alias omnis voluptatibus.', 'eaque-perferendis-mollitia-omnis-quis-aut-aut-eum-alias-omnis-voluptatibus', 'Quo adipisci quas recusandae. Cumque provident cum culpa. Tempora hic quibusdam qui quo ut voluptatibus. Natus deserunt fugiat animi rerum est. Exercitationem in alias exercitationem ratione. Sit adipisci qui ducimus nesciunt officiis. Voluptas qui voluptatem qui. Voluptatem sed optio nemo laborum est. Perferendis repudiandae qui odit eos impedit sit. Voluptatem ad commodi perferendis animi quia porro. Consequatur et explicabo sed ad. Similique est adipisci quo. Iste aut qui quis sint optio. Ipsa officiis iure facilis culpa sed et. Ipsam vitae veniam incidunt. Ratione dolores velit eveniet neque. Itaque omnis id tenetur. Neque nulla dolore delectus incidunt tempora molestiae. Ut quia quos est ut sit maxime. Doloribus deserunt inventore consequatur neque. In eveniet quibusdam quo est quo incidunt. Amet doloremque expedita qui voluptas cupiditate nobis. Nesciunt assumenda quos ullam sapiente. Culpa nihil nam aut mollitia. Hic voluptatem omnis dolorem quisquam modi. Aut et autem quisquam consequuntur. Sit unde voluptatibus consequatur sit ut aut. Provident ratione quaerat officiis. Esse consequatur delectus facilis explicabo reiciendis et voluptatum. Optio autem voluptas et eos. Ut soluta et quae voluptatem porro magni dolor natus. Iure sit vitae provident sequi tempore. Perferendis repudiandae ut mollitia impedit.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 7, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(39, 'Qui est facere nesciunt nostrum excepturi quo natus.', 'qui-est-facere-nesciunt-nostrum-excepturi-quo-natus', 'Eligendi nostrum sint autem ad est incidunt. Voluptatem id et voluptates dolorum voluptatem tempora numquam maiores. Et quasi autem ratione fugit. Sunt excepturi eos esse rem quo. Voluptatem ducimus deserunt voluptatum voluptatem voluptatum. Eum mollitia dolor delectus cupiditate ipsam eos repellendus. Corrupti rerum eos corporis architecto non et ab id. Praesentium minima temporibus aut. Perferendis maxime qui reiciendis distinctio. Sed deserunt nihil qui velit quaerat error. Minima excepturi necessitatibus quis qui. Ipsam nemo nobis vero sint nam quia possimus. Ut nam ipsa dolor. Et omnis nihil perferendis dolores voluptates eum. Eum dolorem explicabo et est et. Dolor adipisci ad fugit sint autem cupiditate. Illum velit error facilis. Voluptatem qui exercitationem iure sed perferendis necessitatibus asperiores. Qui expedita natus tenetur laborum eius atque. Laudantium magni nam explicabo ad molestiae et voluptatem. Et aut dolorem dolores sunt eveniet. Facilis magnam ut labore ex doloremque iste recusandae. Neque eum et non quae voluptates velit dolorem. Quisquam molestiae et facilis possimus repellendus. Aliquid est voluptatem quibusdam tempore. Expedita itaque earum et iste explicabo corrupti quidem. Error voluptatum iste et voluptatem maxime aut. Commodi harum dolore recusandae nam qui ut.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 24, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(40, 'Saepe hic iste aliquam aliquam dolore aut et eaque sed et eos voluptas.', 'saepe-hic-iste-aliquam-aliquam-dolore-aut-et-eaque-sed-et-eos-voluptas', 'Et facere ipsum est hic cum molestias velit. Recusandae fuga molestiae sit ut possimus. Consequatur est quibusdam hic quas odio. Voluptatibus qui placeat iusto eum excepturi ipsum deleniti. Dicta alias doloremque perferendis dolorum facere et. Sint quos laborum aut fugiat rerum ipsum est. Est qui quo omnis laudantium quidem neque sint. Voluptas blanditiis iusto eos quas consequatur minima. Totam recusandae modi et. Non perferendis et sit iusto aliquam sunt aspernatur nemo. Consequatur quia sed aliquid facilis laboriosam tempora. Sed hic nihil explicabo odio voluptatibus porro. Natus ratione est omnis aliquam sint. Laboriosam nostrum a deleniti. Repellendus assumenda quia expedita et voluptatem debitis. Iusto autem esse pariatur voluptatem ipsa aperiam. Earum reprehenderit ullam adipisci ut. Eveniet nihil vero dolor doloremque debitis. Dolorem quos consectetur sit earum quo voluptatem ex.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 8, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(41, 'Omnis iure iusto et deserunt fugiat ut beatae eum placeat quos fugiat consectetur et qui.', 'omnis-iure-iusto-et-deserunt-fugiat-ut-beatae-eum-placeat-quos-fugiat-consectetur-et-qui', 'Voluptas qui animi provident repellendus. Et qui repellendus ad asperiores error quisquam natus. Quos quasi et provident quis et voluptas. Voluptas id praesentium quis accusantium repellat accusantium. Ut ullam et explicabo. Magni earum ut sint suscipit occaecati cum. Nulla soluta maiores maiores nesciunt rem hic. Ut commodi veniam dolores facilis. Sequi recusandae doloremque asperiores ex et laborum non. Excepturi deserunt velit aliquid nam quibusdam placeat. Velit non provident ex voluptas cumque consequatur laborum. Tempore id vel id consequatur itaque ea. Ducimus nemo dolore molestias perferendis. Rerum sequi odio animi. Cupiditate recusandae id quia cupiditate doloribus. Distinctio deleniti ex facilis inventore qui voluptatem aut. Odio doloribus quisquam placeat doloremque.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 15, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(42, 'Placeat numquam enim possimus voluptates non ex cum voluptatum sit.', 'placeat-numquam-enim-possimus-voluptates-non-ex-cum-voluptatum-sit', 'Est excepturi placeat nam. Est enim voluptas est aut. Tenetur earum dolorem vel veritatis eveniet occaecati repellat eum. Aspernatur nihil quasi eius quia voluptatem. Labore id totam quia. Et illo dolorum laboriosam. Quo et consequuntur quidem impedit et ipsum aliquid recusandae. Est vel voluptas ut alias. Ea assumenda sit voluptatum at et earum totam ducimus. Laudantium aut ullam accusamus. Aut non unde praesentium rerum ipsa quidem. Quisquam quam aut qui. Voluptas occaecati id dolore et voluptatem eos. Voluptas nobis excepturi aspernatur eos ut et quae reiciendis. Quam sit laborum consequatur ut id similique. Expedita dolorem eos odit nostrum enim consequuntur. Quidem nihil excepturi officiis quis. Libero quia odit sunt et. In ducimus aliquid consequatur commodi doloremque aperiam. Omnis numquam voluptate eveniet magni. Sed molestiae incidunt alias sed. Quaerat voluptatem aspernatur blanditiis consequatur omnis.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 1, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(43, 'Odit placeat molestias porro dolores aliquid nam qui quaerat voluptates dolores.', 'odit-placeat-molestias-porro-dolores-aliquid-nam-qui-quaerat-voluptates-dolores', 'Nam nam dolore ipsum veniam rerum hic et. Ducimus officiis distinctio placeat esse quos ut non. Et distinctio vitae similique quia nihil harum. Possimus ut voluptas beatae doloribus voluptatem. Sed qui corrupti libero laudantium. Voluptatum praesentium quae quisquam natus aperiam et rerum. Et tempora nihil voluptates provident voluptatem qui. Aperiam dolorem ratione dolor vero suscipit vitae. Mollitia voluptatem omnis quis. Omnis qui quo ex corporis provident iure quo. Est exercitationem fuga voluptas necessitatibus velit officia aperiam. Et omnis earum ex sit quam. Quasi et deleniti possimus provident explicabo sint. Quaerat hic laborum quasi natus quia quod. Esse et nihil eligendi nemo dignissimos. Amet eos suscipit temporibus dolor ut quia provident. Voluptas dolore quisquam dolorem. Voluptas molestiae recusandae perspiciatis accusamus. Reiciendis quia voluptatum in voluptates. Earum fugiat quia dolor et aliquid. Rem numquam eum rem dicta et soluta voluptatum. Aut et fugit quia quae. Blanditiis culpa sed voluptatem. Porro ea doloribus ducimus possimus. Rerum vero dolor voluptates in sit et iure vero. Harum beatae et corrupti repudiandae. Vel autem aut sequi ipsam eius. Sint eligendi quia atque optio.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 11, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(44, 'Quo sunt earum dolores deserunt laborum omnis dolorum maiores recusandae nihil illo.', 'quo-sunt-earum-dolores-deserunt-laborum-omnis-dolorum-maiores-recusandae-nihil-illo', 'Dolore fuga est quam adipisci asperiores. Temporibus illum ea quas est voluptatum deserunt dolorem. Dolorem rerum velit ad ut. Inventore voluptatum voluptatem dolores dolores omnis et impedit. Iusto est a libero enim omnis. Debitis eos eveniet similique occaecati. Et consequatur iusto repellat architecto molestiae animi. Sit nulla et voluptatem. Exercitationem voluptatem iusto dolorem voluptatem nemo saepe. Eveniet distinctio at atque eius error et. Suscipit tenetur nesciunt laborum eum porro eum sit. Saepe qui non molestiae commodi rem sunt. Molestias amet nihil voluptatum. Et inventore assumenda voluptatem recusandae corrupti qui. Quos voluptas voluptatum quo deserunt deleniti alias in. Magni sunt fugit id modi autem natus. Aspernatur eum ullam molestiae et est. Excepturi accusantium laboriosam fugit eligendi veritatis ut. In fuga impedit praesentium doloremque nam voluptatem repellendus. Qui nihil non id est. Aliquid corporis totam modi cumque. Facilis optio ducimus sapiente quia. Occaecati molestias est corrupti earum ducimus dolor. Excepturi animi hic quam et.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 14, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(45, 'Consequatur distinctio qui eum nihil nam dolores.', 'consequatur-distinctio-qui-eum-nihil-nam-dolores', 'Et dignissimos iusto ut voluptas. Rerum sit deserunt dolorem dolorum porro natus quasi cum. Sequi quam mollitia accusantium suscipit illo. Et est dolores et et quia laudantium. Saepe omnis deserunt neque quam ratione qui omnis quaerat. Qui ut magnam aut. Sapiente perferendis rem quis aut odit. Necessitatibus consequatur odio veritatis sapiente ratione. Consequatur tenetur dolorem suscipit explicabo dolorem vel commodi recusandae. Aspernatur et et nostrum. Dolores consequatur tenetur iure error ducimus ducimus dolor. Est repellendus aperiam quam aut sunt rerum. Porro nam aut voluptas in ratione. In sed alias aspernatur dolor recusandae perferendis facere. Ex numquam natus quisquam ullam exercitationem. Repudiandae totam voluptatem eligendi repudiandae.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 24, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(46, 'Repudiandae ipsa quibusdam commodi quos sed veniam vitae suscipit blanditiis harum sunt sint reprehenderit.', 'repudiandae-ipsa-quibusdam-commodi-quos-sed-veniam-vitae-suscipit-blanditiis-harum-sunt-sint-reprehenderit', 'Optio nulla sint nesciunt rem sunt aut delectus. Expedita distinctio autem et distinctio et odit quod. Quas aliquam earum doloribus nostrum consectetur. Non quidem quos earum eum. Dolor corrupti et neque ipsa vel. Enim facilis ab ut in a alias voluptatem. Molestiae quibusdam mollitia fugit laboriosam et explicabo. Qui voluptatibus nisi accusantium dolores rerum. Minus maxime impedit voluptatem minus. Eum sit est fuga perspiciatis consequuntur magni. Nostrum eligendi ea aliquam totam. Dolores quas aliquid mollitia et harum. Odit cupiditate nihil corporis. Qui repudiandae recusandae alias voluptas. Nostrum et in nulla alias porro. Voluptatem libero possimus neque. Dolor illum qui ipsa amet. Sed quaerat reprehenderit unde ipsam corrupti error corrupti perferendis. Eveniet dolor et nisi ut. Aut aperiam architecto eligendi. Eveniet non minima et quam dolor.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 11, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(47, 'Unde quia nihil vel qui et quod voluptatum enim corporis qui.', 'unde-quia-nihil-vel-qui-et-quod-voluptatum-enim-corporis-qui', 'Quam harum sequi hic omnis aliquam eligendi. Magnam consequuntur voluptas dolorum molestias similique. Quia et delectus quia ullam. Voluptatem repellat officia quia quia beatae. Ut voluptatem nulla amet aut saepe quia aut. Sed harum repellendus et hic illo dicta. Sint magnam ea omnis nam nemo blanditiis nulla. Eius laudantium unde consequatur debitis illo aut. Et possimus labore eligendi laborum eos quis eveniet. Illum dolores tenetur nisi quos. Soluta fuga et magni aliquid corrupti. Eaque at tempora est non quod ut. Officia sed nihil laborum debitis autem quia. Dolor non quasi commodi iusto et aut aut atque. Ipsam nam earum facilis exercitationem repudiandae est. Commodi voluptate officia modi. Nihil quidem aut maxime molestiae repudiandae consequatur reprehenderit laboriosam. Qui qui eveniet dolor corporis quibusdam consequuntur facilis. Iusto quia dolorum fuga eaque ipsa. Optio sed officiis id occaecati fugiat. Error nemo corporis animi et non. Doloribus sunt aut assumenda quaerat. Autem laboriosam excepturi placeat eligendi ipsum sequi. Tempora asperiores omnis laudantium dolores vero. Illo expedita rerum iusto reprehenderit reprehenderit voluptas explicabo. Alias incidunt numquam eum ab reiciendis quia ipsum aliquid. Magni aut sequi aut nisi voluptatem cupiditate. Voluptatibus labore dignissimos aut dolores quae ipsa.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 14, '2021-08-27 07:38:23', '2021-08-27 07:38:23'),
(48, 'Ratione aut maiores dolore doloribus enim illum excepturi sapiente aliquam consectetur architecto.', 'ratione-aut-maiores-dolore-doloribus-enim-illum-excepturi-sapiente-aliquam-consectetur-architecto', 'Ut id numquam id sit unde sit minima. Facilis voluptate iure rerum fugit et minus. Molestias ad molestiae labore ratione ut. Omnis incidunt et et ut nisi voluptas. Voluptatem unde aspernatur quo qui magni id. Est a saepe sint adipisci eum nihil velit. Officia in quis vel reiciendis qui eaque et. Nesciunt sed sequi nam labore quo et. Quae quidem incidunt et aut. Cum quis accusamus corrupti aliquam numquam voluptatem est nulla. Possimus odit aut rem ut et tempora et. Aut molestiae laboriosam sint omnis nostrum voluptas. Dolor corrupti sed ea culpa autem non quas. Voluptatibus tempore voluptatum maxime aut qui veniam voluptas. Error rerum voluptas repudiandae rem delectus tempora quis officiis. Provident architecto mollitia cupiditate voluptatum. Ut aut sint quidem veritatis autem minus. Et eos fuga soluta fugit suscipit expedita sint. Ipsa nihil deleniti amet ab ut. Quisquam omnis sapiente voluptatem quas aut officia. Porro pariatur error ut eveniet debitis voluptatem. Occaecati totam illo libero veniam eius consequuntur veniam minima. Ipsa aut aliquid aliquid sed officiis aliquid. Consequatur omnis eos sapiente consequatur est quis. Voluptates dolor inventore est perferendis molestiae. Omnis ipsa deleniti asperiores quisquam magnam facere est. Illo iure ea fugiat quae numquam ipsam.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 8, '2021-08-27 07:38:24', '2021-08-27 07:38:24'),
(49, 'Praesentium veritatis dolore labore omnis neque corrupti et dignissimos ea alias possimus numquam nobis distinctio id.', 'praesentium-veritatis-dolore-labore-omnis-neque-corrupti-et-dignissimos-ea-alias-possimus-numquam-nobis-distinctio-id', 'Nihil ut eos deserunt. Corporis rerum aut qui incidunt aut eveniet et. Et maiores laborum illo est consectetur et fugiat quis. Qui et vero ipsam iste repudiandae aut. Repellat sint doloremque cum sit iste libero. Vel qui et iure. Facilis quam aut tenetur. Quia excepturi porro aut exercitationem tempore. Totam deserunt velit mollitia voluptatibus optio optio debitis exercitationem. Voluptatum qui dignissimos commodi sed. Aperiam nesciunt explicabo nesciunt doloribus magni a maxime provident. Suscipit quod sint ducimus quo. Nulla magni consequatur molestiae aut. Explicabo at est perspiciatis voluptates magni. Quos dolor minima aliquid soluta aut qui quos perferendis. Fugit praesentium est expedita dolore. Ex beatae alias vel. Nihil ad repudiandae quia id. Itaque quisquam saepe aspernatur repudiandae mollitia. Tempore non consequatur eaque. Beatae eligendi aut laboriosam. Aut temporibus impedit consequuntur sunt aspernatur. Consequuntur sapiente esse in omnis. Sed natus error harum quos sint repellendus. Ut cum corporis necessitatibus eius aliquam. Laudantium aut deserunt dolores.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 6, '2021-08-27 07:38:24', '2021-08-27 07:38:24'),
(50, 'Laboriosam deleniti explicabo soluta porro dicta voluptas vitae sed excepturi quas dolorum eos.', 'laboriosam-deleniti-explicabo-soluta-porro-dicta-voluptas-vitae-sed-excepturi-quas-dolorum-eos', 'Voluptas et illo cum corrupti. Earum voluptatum nihil est ut facere laboriosam porro. Ut ratione quo fuga ut. Aut sed laborum magni maiores hic nihil. Et earum et inventore ipsum non non vero. Quia facilis vitae aut quam quibusdam. Rerum ullam sit dolores illo est maiores. Accusamus ullam aut ducimus. Neque dolores sit quia est. Vitae deserunt alias tempore voluptates numquam. Veritatis vel et sunt voluptates doloremque natus possimus. Unde dolor quos blanditiis recusandae libero quis reprehenderit consequatur. Iusto dolores impedit sint et. Non quia consequuntur asperiores aut rerum repudiandae. Consequuntur est nulla quia quisquam est deleniti. Aut enim libero consequatur maiores odio sequi explicabo. Facilis et deleniti reiciendis sit qui natus. Quidem repellat est temporibus cum et alias. Quam corrupti vitae et harum dolor. Adipisci voluptatum facilis dolores ut.', NULL, 'https://marketplace.canva.com/EAD8ATWwGKQ/1/0/800w/canva-yellow-and-black-companies-remote-work-16%3A9-video-30H71nWosEs.mp4', 'url', 11, '2021-08-27 07:38:24', '2021-08-27 07:38:24');

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
(1, '84.248.81.172', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident/5.0)', 'App\\Models\\Video', 20),
(2, '1.157.4.230', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5321 (KHTML, like Gecko) Chrome/36.0.883.0 Mobile Safari/5321', 'App\\Models\\Video', 43),
(3, '83.20.231.57', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6) AppleWebKit/5332 (KHTML, like Gecko) Chrome/39.0.870.0 Mobile Safari/5332', 'App\\Models\\Video', 9),
(4, '200.63.77.57', 'Mozilla/5.0 (Windows NT 5.01) AppleWebKit/5331 (KHTML, like Gecko) Chrome/37.0.832.0 Mobile Safari/5331', 'App\\Models\\Video', 33),
(5, '236.34.254.214', 'Mozilla/5.0 (Windows CE) AppleWebKit/5321 (KHTML, like Gecko) Chrome/37.0.855.0 Mobile Safari/5321', 'App\\Models\\Video', 4),
(6, '107.133.193.88', 'Opera/8.16 (X11; Linux i686; sl-SI) Presto/2.12.311 Version/11.00', 'App\\Models\\Video', 19),
(7, '101.115.42.238', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5350 (KHTML, like Gecko) Chrome/37.0.885.0 Mobile Safari/5350', 'App\\Models\\Video', 29),
(8, '190.156.11.24', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.0; Trident/3.0)', 'App\\Models\\Video', 37),
(9, '108.185.183.105', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 95; Trident/3.0)', 'App\\Models\\Video', 1),
(10, '207.138.136.111', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/534.47.2 (KHTML, like Gecko) Version/4.0.5 Safari/534.47.2', 'App\\Models\\Video', 48),
(11, '71.92.172.91', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5360 (KHTML, like Gecko) Chrome/38.0.813.0 Mobile Safari/5360', 'App\\Models\\Video', 46),
(12, '142.194.147.18', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6) AppleWebKit/5320 (KHTML, like Gecko) Chrome/40.0.894.0 Mobile Safari/5320', 'App\\Models\\Video', 30),
(13, '103.171.17.27', 'Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/533.41.4 (KHTML, like Gecko) Version/4.1 Safari/533.41.4', 'App\\Models\\Video', 13),
(14, '47.129.39.122', 'Opera/8.12 (X11; Linux i686; en-US) Presto/2.11.352 Version/11.00', 'App\\Models\\Video', 34),
(15, '107.71.144.67', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 4.0; Trident/3.0)', 'App\\Models\\Video', 3),
(16, '64.6.222.86', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_9 rv:4.0) Gecko/20190914 Firefox/37.0', 'App\\Models\\Video', 36),
(17, '240.191.29.183', 'Opera/9.83 (X11; Linux i686; sl-SI) Presto/2.11.235 Version/10.00', 'App\\Models\\Video', 16),
(18, '171.65.54.25', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5340 (KHTML, like Gecko) Chrome/36.0.834.0 Mobile Safari/5340', 'App\\Models\\Video', 1),
(19, '157.76.211.143', 'Opera/8.22 (X11; Linux i686; sl-SI) Presto/2.12.282 Version/11.00', 'App\\Models\\Video', 15),
(20, '28.0.47.172', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5342 (KHTML, like Gecko) Chrome/37.0.858.0 Mobile Safari/5342', 'App\\Models\\Video', 26),
(21, '220.137.148.59', 'Opera/8.48 (X11; Linux i686; sl-SI) Presto/2.11.200 Version/12.00', 'App\\Models\\Video', 14),
(22, '77.35.97.65', 'Mozilla/5.0 (Windows NT 5.2; sl-SI; rv:1.9.2.20) Gecko/20151217 Firefox/35.0', 'App\\Models\\Video', 36),
(23, '125.144.168.58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5311 (KHTML, like Gecko) Chrome/39.0.848.0 Mobile Safari/5311', 'App\\Models\\Video', 15),
(24, '179.102.186.107', 'Mozilla/5.0 (Windows NT 6.1; sl-SI; rv:1.9.0.20) Gecko/20210208 Firefox/35.0', 'App\\Models\\Video', 22),
(25, '185.74.166.69', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows 98; Trident/3.0)', 'App\\Models\\Video', 46),
(26, '113.196.101.137', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; sl-SI) AppleWebKit/535.18.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B112 Safari/6535.18.7', 'App\\Models\\Video', 3),
(27, '197.246.44.19', 'Mozilla/5.0 (Windows NT 6.0; sl-SI; rv:1.9.1.20) Gecko/20151211 Firefox/35.0', 'App\\Models\\Video', 46),
(28, '158.22.96.44', 'Opera/8.84 (Windows 98; en-US) Presto/2.11.186 Version/10.00', 'App\\Models\\Video', 46),
(29, '10.212.172.117', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20120519 Firefox/35.0', 'App\\Models\\Video', 41),
(30, '62.142.27.220', 'Opera/9.14 (X11; Linux x86_64; en-US) Presto/2.9.193 Version/12.00', 'App\\Models\\Video', 6),
(31, '96.128.109.12', 'Opera/8.98 (X11; Linux i686; en-US) Presto/2.9.298 Version/10.00', 'App\\Models\\Video', 36),
(32, '164.135.101.20', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20110711 Firefox/36.0', 'App\\Models\\Video', 33),
(33, '170.95.160.89', 'Opera/9.55 (X11; Linux i686; en-US) Presto/2.10.227 Version/10.00', 'App\\Models\\Video', 34),
(34, '147.76.69.83', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/534.38.5 (KHTML, like Gecko) Version/4.0.1 Safari/534.38.5', 'App\\Models\\Video', 15),
(35, '192.197.33.58', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.0; Trident/5.0)', 'App\\Models\\Video', 10),
(36, '12.16.10.93', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows 98; Trident/3.0)', 'App\\Models\\Video', 32),
(37, '10.179.219.125', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.2; Trident/4.0)', 'App\\Models\\Video', 48),
(38, '192.41.4.115', 'Opera/9.13 (X11; Linux x86_64; sl-SI) Presto/2.8.171 Version/10.00', 'App\\Models\\Video', 16),
(39, '26.238.77.27', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5361 (KHTML, like Gecko) Chrome/36.0.891.0 Mobile Safari/5361', 'App\\Models\\Video', 33),
(40, '106.211.105.244', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_0 rv:5.0) Gecko/20150215 Firefox/36.0', 'App\\Models\\Video', 19),
(41, '202.230.21.63', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5 rv:5.0) Gecko/20110512 Firefox/36.0', 'App\\Models\\Video', 27),
(42, '188.64.51.150', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 98; Win 9x 4.90; Trident/4.1)', 'App\\Models\\Video', 34),
(43, '217.243.207.193', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_1 rv:6.0) Gecko/20141003 Firefox/35.0', 'App\\Models\\Video', 12),
(44, '119.167.119.107', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 4.0; Trident/3.0)', 'App\\Models\\Video', 14),
(45, '97.54.32.127', 'Mozilla/5.0 (Windows; U; Windows NT 5.2) AppleWebKit/534.47.7 (KHTML, like Gecko) Version/4.0 Safari/534.47.7', 'App\\Models\\Video', 36),
(46, '1.93.10.186', 'Opera/8.16 (Windows NT 5.1; en-US) Presto/2.8.250 Version/11.00', 'App\\Models\\Video', 14),
(47, '20.46.250.149', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20120113 Firefox/37.0', 'App\\Models\\Video', 9),
(48, '198.183.229.43', 'Mozilla/5.0 (iPad; CPU OS 8_2_2 like Mac OS X; en-US) AppleWebKit/532.48.2 (KHTML, like Gecko) Version/4.0.5 Mobile/8B111 Safari/6532.48.2', 'App\\Models\\Video', 31),
(49, '53.207.185.156', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 4.0; Trident/5.1)', 'App\\Models\\Video', 9),
(50, '235.43.208.98', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 6.2; Trident/4.1)', 'App\\Models\\Video', 10),
(51, '204.221.9.19', 'Mozilla/5.0 (Windows 98; Win 9x 4.90; en-US; rv:1.9.2.20) Gecko/20160405 Firefox/37.0', 'App\\Models\\Video', 36),
(52, '230.45.182.224', 'Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X; en-US) AppleWebKit/532.43.1 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6532.43.1', 'App\\Models\\Video', 2),
(53, '139.119.214.252', 'Mozilla/5.0 (Windows CE) AppleWebKit/5341 (KHTML, like Gecko) Chrome/40.0.829.0 Mobile Safari/5341', 'App\\Models\\Video', 7),
(54, '227.52.198.231', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/535.16.3 (KHTML, like Gecko) Version/5.0 Safari/535.16.3', 'App\\Models\\Video', 11),
(55, '19.151.239.92', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.2; Trident/3.1)', 'App\\Models\\Video', 7),
(56, '226.250.19.131', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Win 9x 4.90; Trident/5.1)', 'App\\Models\\Video', 30),
(57, '10.95.124.78', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5331 (KHTML, like Gecko) Chrome/36.0.857.0 Mobile Safari/5331', 'App\\Models\\Video', 44),
(58, '102.146.239.8', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5340 (KHTML, like Gecko) Chrome/39.0.885.0 Mobile Safari/5340', 'App\\Models\\Video', 28),
(59, '75.86.84.65', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5352 (KHTML, like Gecko) Chrome/39.0.887.0 Mobile Safari/5352', 'App\\Models\\Video', 15),
(60, '55.173.118.49', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5360 (KHTML, like Gecko) Chrome/36.0.826.0 Mobile Safari/5360', 'App\\Models\\Video', 15),
(61, '19.166.183.166', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5322 (KHTML, like Gecko) Chrome/38.0.851.0 Mobile Safari/5322', 'App\\Models\\Video', 11),
(62, '190.190.212.62', 'Opera/9.57 (X11; Linux i686; en-US) Presto/2.12.344 Version/11.00', 'App\\Models\\Video', 42),
(63, '80.83.82.102', 'Mozilla/5.0 (Windows NT 6.0; en-US; rv:1.9.0.20) Gecko/20200716 Firefox/37.0', 'App\\Models\\Video', 25),
(64, '25.87.183.211', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 4.0; Trident/3.1)', 'App\\Models\\Video', 22),
(65, '137.13.127.243', 'Opera/8.59 (X11; Linux i686; sl-SI) Presto/2.8.310 Version/10.00', 'App\\Models\\Video', 17),
(66, '167.200.181.173', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5361 (KHTML, like Gecko) Chrome/39.0.871.0 Mobile Safari/5361', 'App\\Models\\Video', 1),
(67, '35.10.172.114', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2_1 like Mac OS X; en-US) AppleWebKit/535.31.1 (KHTML, like Gecko) Version/4.0.5 Mobile/8B112 Safari/6535.31.1', 'App\\Models\\Video', 1),
(68, '180.177.222.9', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20201113 Firefox/36.0', 'App\\Models\\Video', 31),
(69, '94.254.126.213', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_2_2 like Mac OS X; en-US) AppleWebKit/535.18.5 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6535.18.5', 'App\\Models\\Video', 28),
(70, '223.203.28.86', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/532.3.6 (KHTML, like Gecko) Version/5.0.5 Safari/532.3.6', 'App\\Models\\Video', 6),
(71, '205.41.41.153', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 95; Trident/4.1)', 'App\\Models\\Video', 9),
(72, '225.87.87.146', 'Mozilla/5.0 (Windows CE) AppleWebKit/5320 (KHTML, like Gecko) Chrome/39.0.849.0 Mobile Safari/5320', 'App\\Models\\Video', 29),
(73, '52.128.1.184', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.2; Trident/5.0)', 'App\\Models\\Video', 19),
(74, '43.180.9.183', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 95; Trident/4.1)', 'App\\Models\\Video', 14),
(75, '196.183.175.88', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/5.1)', 'App\\Models\\Video', 22),
(76, '32.189.85.196', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_1) AppleWebKit/5331 (KHTML, like Gecko) Chrome/37.0.874.0 Mobile Safari/5331', 'App\\Models\\Video', 26),
(77, '91.116.171.126', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows 95; Trident/4.1)', 'App\\Models\\Video', 11),
(78, '17.138.163.123', 'Opera/8.17 (Windows NT 5.1; sl-SI) Presto/2.8.239 Version/10.00', 'App\\Models\\Video', 2),
(79, '102.75.10.197', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5312 (KHTML, like Gecko) Chrome/39.0.893.0 Mobile Safari/5312', 'App\\Models\\Video', 19),
(80, '38.229.191.45', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.2; Trident/4.0)', 'App\\Models\\Video', 23),
(81, '114.28.137.95', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_9 rv:5.0) Gecko/20141113 Firefox/35.0', 'App\\Models\\Video', 22),
(82, '200.204.54.166', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 4.0; Trident/4.1)', 'App\\Models\\Video', 7),
(83, '178.229.101.3', 'Opera/8.22 (Windows NT 5.01; en-US) Presto/2.12.289 Version/12.00', 'App\\Models\\Video', 29),
(84, '216.166.20.95', 'Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/534.33.3 (KHTML, like Gecko) Version/5.1 Safari/534.33.3', 'App\\Models\\Video', 17),
(85, '217.202.44.219', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 4.0; Trident/4.0)', 'App\\Models\\Video', 23),
(86, '44.250.205.116', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0 rv:6.0) Gecko/20190707 Firefox/36.0', 'App\\Models\\Video', 7),
(87, '119.248.15.69', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20201108 Firefox/37.0', 'App\\Models\\Video', 15),
(88, '60.252.207.86', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows 98; Trident/5.0)', 'App\\Models\\Video', 33),
(89, '15.34.73.45', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.1; Trident/4.0)', 'App\\Models\\Video', 29),
(90, '58.100.68.220', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_3 rv:2.0) Gecko/20140729 Firefox/35.0', 'App\\Models\\Video', 49),
(91, '218.57.36.105', 'Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/531.45.1 (KHTML, like Gecko) Version/5.0.2 Safari/531.45.1', 'App\\Models\\Video', 30),
(92, '240.94.185.47', 'Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/535.23.5 (KHTML, like Gecko) Version/5.0.1 Safari/535.23.5', 'App\\Models\\Video', 12),
(93, '213.25.227.199', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_2 rv:6.0; en-US) AppleWebKit/535.44.6 (KHTML, like Gecko) Version/5.0.4 Safari/535.44.6', 'App\\Models\\Video', 14),
(94, '236.169.165.86', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/534.45.1 (KHTML, like Gecko) Version/4.0.1 Safari/534.45.1', 'App\\Models\\Video', 10),
(95, '23.56.181.64', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5332 (KHTML, like Gecko) Chrome/40.0.841.0 Mobile Safari/5332', 'App\\Models\\Video', 37),
(96, '150.239.50.180', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/40.0.893.0 Mobile Safari/5331', 'App\\Models\\Video', 5),
(97, '102.17.152.254', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5312 (KHTML, like Gecko) Chrome/38.0.862.0 Mobile Safari/5312', 'App\\Models\\Video', 22),
(98, '120.104.148.181', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows 98; Win 9x 4.90; Trident/5.1)', 'App\\Models\\Video', 32),
(99, '131.134.229.211', 'Mozilla/5.0 (Windows; U; Windows CE) AppleWebKit/534.34.4 (KHTML, like Gecko) Version/5.0.5 Safari/534.34.4', 'App\\Models\\Video', 47),
(100, '209.155.251.42', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; en-US) AppleWebKit/532.31.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B112 Safari/6532.31.4', 'App\\Models\\Video', 24),
(101, '58.72.116.49', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.01; Trident/5.0)', 'App\\Models\\Post', 2),
(102, '139.26.178.10', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 98; Win 9x 4.90; Trident/3.1)', 'App\\Models\\Post', 5),
(103, '125.185.194.224', 'Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/535.6.6 (KHTML, like Gecko) Version/4.0 Safari/535.6.6', 'App\\Models\\Post', 2),
(104, '36.202.110.34', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5361 (KHTML, like Gecko) Chrome/36.0.851.0 Mobile Safari/5361', 'App\\Models\\Post', 4),
(105, '56.201.10.238', 'Opera/9.41 (Windows NT 6.1; en-US) Presto/2.12.239 Version/11.00', 'App\\Models\\Post', 8),
(106, '153.125.155.157', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/4.0)', 'App\\Models\\Post', 4),
(107, '251.209.1.15', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.2; Trident/4.1)', 'App\\Models\\Post', 2),
(108, '33.102.171.232', 'Opera/9.98 (X11; Linux x86_64; sl-SI) Presto/2.8.234 Version/12.00', 'App\\Models\\Post', 4),
(109, '178.182.35.68', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_4 rv:5.0) Gecko/20150728 Firefox/36.0', 'App\\Models\\Post', 1),
(110, '168.229.143.43', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/5.1)', 'App\\Models\\Post', 1),
(111, '66.190.97.64', 'Opera/9.28 (X11; Linux x86_64; sl-SI) Presto/2.10.167 Version/10.00', 'App\\Models\\Post', 1),
(112, '131.122.11.125', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 4.0; Trident/3.0)', 'App\\Models\\Post', 2),
(113, '191.21.117.146', 'Opera/8.65 (X11; Linux x86_64; sl-SI) Presto/2.12.334 Version/12.00', 'App\\Models\\Post', 1),
(114, '241.252.149.61', 'Opera/8.88 (X11; Linux x86_64; sl-SI) Presto/2.8.209 Version/10.00', 'App\\Models\\Post', 5),
(115, '139.176.237.150', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/535.8.6 (KHTML, like Gecko) Version/4.0 Safari/535.8.6', 'App\\Models\\Post', 2),
(116, '239.220.232.246', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_7 rv:6.0; en-US) AppleWebKit/533.13.3 (KHTML, like Gecko) Version/4.0.2 Safari/533.13.3', 'App\\Models\\Post', 8),
(117, '1.128.210.129', 'Mozilla/5.0 (Windows 98; en-US; rv:1.9.0.20) Gecko/20120120 Firefox/36.0', 'App\\Models\\Post', 4),
(118, '237.27.246.69', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_7) AppleWebKit/5341 (KHTML, like Gecko) Chrome/38.0.827.0 Mobile Safari/5341', 'App\\Models\\Post', 5),
(119, '145.248.240.166', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.01; Trident/3.0)', 'App\\Models\\Post', 1),
(120, '135.85.75.206', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_3 rv:2.0; sl-SI) AppleWebKit/531.44.4 (KHTML, like Gecko) Version/4.0.1 Safari/531.44.4', 'App\\Models\\Post', 1),
(121, '164.30.217.95', 'Opera/8.79 (X11; Linux i686; en-US) Presto/2.11.314 Version/12.00', 'App\\Models\\Post', 5),
(122, '23.132.242.207', 'Opera/9.23 (X11; Linux i686; en-US) Presto/2.11.250 Version/11.00', 'App\\Models\\Post', 5),
(123, '176.253.170.96', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/3.1)', 'App\\Models\\Post', 5),
(124, '195.213.223.24', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_9 rv:5.0) Gecko/20150304 Firefox/36.0', 'App\\Models\\Post', 1),
(125, '139.136.153.108', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows 98; Win 9x 4.90; Trident/3.0)', 'App\\Models\\Post', 1),
(126, '215.46.197.46', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows 95; Trident/4.1)', 'App\\Models\\Post', 4),
(127, '117.154.103.145', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5312 (KHTML, like Gecko) Chrome/39.0.806.0 Mobile Safari/5312', 'App\\Models\\Post', 1),
(128, '164.253.184.121', 'Opera/8.85 (X11; Linux x86_64; en-US) Presto/2.9.182 Version/10.00', 'App\\Models\\Post', 4),
(129, '251.87.110.40', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/532.25.4 (KHTML, like Gecko) Version/5.0.5 Safari/532.25.4', 'App\\Models\\Post', 4),
(130, '240.88.66.167', 'Opera/8.67 (Windows NT 5.2; sl-SI) Presto/2.11.240 Version/12.00', 'App\\Models\\Post', 1),
(131, '51.25.183.6', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 98; Trident/3.0)', 'App\\Models\\Post', 8),
(132, '249.254.210.232', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_6 rv:5.0) Gecko/20151201 Firefox/37.0', 'App\\Models\\Post', 2),
(133, '186.16.8.48', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 95; Trident/5.1)', 'App\\Models\\Post', 5),
(134, '88.251.78.219', 'Opera/8.91 (Windows NT 5.01; en-US) Presto/2.11.178 Version/12.00', 'App\\Models\\Post', 1),
(135, '27.172.177.212', 'Mozilla/5.0 (iPad; CPU OS 7_2_2 like Mac OS X; sl-SI) AppleWebKit/533.14.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B116 Safari/6533.14.4', 'App\\Models\\Post', 4),
(136, '195.200.245.100', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', 'App\\Models\\Post', 1),
(137, '56.186.234.105', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_2 rv:4.0; sl-SI) AppleWebKit/535.47.5 (KHTML, like Gecko) Version/5.1 Safari/535.47.5', 'App\\Models\\Post', 2),
(138, '36.69.236.105', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5341 (KHTML, like Gecko) Chrome/37.0.847.0 Mobile Safari/5341', 'App\\Models\\Post', 4),
(139, '104.195.178.195', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/36.0.844.0 Mobile Safari/5310', 'App\\Models\\Post', 1),
(140, '75.52.210.222', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_7) AppleWebKit/5330 (KHTML, like Gecko) Chrome/36.0.819.0 Mobile Safari/5330', 'App\\Models\\Post', 8),
(141, '151.15.242.168', 'Mozilla/5.0 (iPad; CPU OS 8_2_1 like Mac OS X; en-US) AppleWebKit/532.1.4 (KHTML, like Gecko) Version/3.0.5 Mobile/8B112 Safari/6532.1.4', 'App\\Models\\Post', 1),
(142, '52.208.35.86', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5361 (KHTML, like Gecko) Chrome/39.0.882.0 Mobile Safari/5361', 'App\\Models\\Post', 5),
(143, '40.172.248.254', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0)', 'App\\Models\\Post', 4),
(144, '76.213.243.153', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_4) AppleWebKit/5310 (KHTML, like Gecko) Chrome/38.0.898.0 Mobile Safari/5310', 'App\\Models\\Post', 1),
(145, '240.230.101.159', 'Mozilla/5.0 (Windows 98; en-US; rv:1.9.1.20) Gecko/20180816 Firefox/35.0', 'App\\Models\\Post', 1),
(146, '83.150.6.253', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_2 rv:2.0) Gecko/20150609 Firefox/35.0', 'App\\Models\\Post', 8),
(147, '159.247.11.96', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20110903 Firefox/37.0', 'App\\Models\\Post', 2),
(148, '75.210.57.17', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_4) AppleWebKit/5351 (KHTML, like Gecko) Chrome/39.0.883.0 Mobile Safari/5351', 'App\\Models\\Post', 2),
(149, '248.102.49.100', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20100929 Firefox/36.0', 'App\\Models\\Post', 5),
(150, '7.208.75.232', 'Opera/9.97 (Windows 98; Win 9x 4.90; en-US) Presto/2.11.238 Version/12.00', 'App\\Models\\Post', 4),
(151, '93.51.58.151', 'Mozilla/5.0 (Windows NT 4.0; sl-SI; rv:1.9.1.20) Gecko/20100718 Firefox/37.0', 'App\\Models\\Post', 5),
(152, '37.136.24.213', 'Mozilla/5.0 (iPad; CPU OS 7_1_1 like Mac OS X; en-US) AppleWebKit/534.47.6 (KHTML, like Gecko) Version/3.0.5 Mobile/8B115 Safari/6534.47.6', 'App\\Models\\Post', 4),
(153, '160.212.66.82', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_1) AppleWebKit/5330 (KHTML, like Gecko) Chrome/36.0.895.0 Mobile Safari/5330', 'App\\Models\\Post', 2),
(154, '9.107.255.134', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.2; Trident/3.0)', 'App\\Models\\Post', 5),
(155, '68.189.4.161', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20161018 Firefox/35.0', 'App\\Models\\Post', 1),
(156, '60.19.84.172', 'Opera/8.25 (Windows NT 6.0; en-US) Presto/2.10.217 Version/12.00', 'App\\Models\\Post', 2),
(157, '57.254.198.33', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_6 rv:2.0) Gecko/20170731 Firefox/36.0', 'App\\Models\\Post', 4),
(158, '139.57.88.58', 'Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/534.45.1 (KHTML, like Gecko) Version/5.1 Safari/534.45.1', 'App\\Models\\Post', 2),
(159, '101.203.52.246', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident/3.1)', 'App\\Models\\Post', 4),
(160, '208.11.148.182', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20161215 Firefox/35.0', 'App\\Models\\Post', 1),
(161, '93.214.13.167', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_7 rv:2.0; sl-SI) AppleWebKit/531.49.7 (KHTML, like Gecko) Version/5.0 Safari/531.49.7', 'App\\Models\\Post', 5),
(162, '28.208.111.63', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.2; Trident/4.0)', 'App\\Models\\Post', 5),
(163, '6.239.163.168', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident/5.0)', 'App\\Models\\Post', 5),
(164, '121.48.110.217', 'Opera/8.92 (X11; Linux x86_64; sl-SI) Presto/2.8.200 Version/12.00', 'App\\Models\\Post', 1),
(165, '239.242.70.146', 'Opera/8.63 (X11; Linux i686; sl-SI) Presto/2.9.225 Version/10.00', 'App\\Models\\Post', 1),
(166, '118.201.152.19', 'Opera/8.60 (X11; Linux x86_64; sl-SI) Presto/2.9.160 Version/12.00', 'App\\Models\\Post', 4),
(167, '107.213.135.19', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_4 rv:6.0) Gecko/20210630 Firefox/36.0', 'App\\Models\\Post', 2),
(168, '171.178.49.99', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.0; Trident/5.1)', 'App\\Models\\Post', 5),
(169, '32.149.93.190', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5331 (KHTML, like Gecko) Chrome/36.0.835.0 Mobile Safari/5331', 'App\\Models\\Post', 1),
(170, '175.217.120.111', 'Opera/9.90 (X11; Linux i686; sl-SI) Presto/2.11.246 Version/10.00', 'App\\Models\\Post', 8),
(171, '154.171.162.69', 'Mozilla/5.0 (Windows NT 5.1; sl-SI; rv:1.9.0.20) Gecko/20150423 Firefox/36.0', 'App\\Models\\Post', 1),
(172, '73.235.21.169', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident/3.0)', 'App\\Models\\Post', 1),
(173, '230.186.119.4', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/40.0.831.0 Mobile Safari/5310', 'App\\Models\\Post', 8),
(174, '226.3.126.53', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5352 (KHTML, like Gecko) Chrome/38.0.841.0 Mobile Safari/5352', 'App\\Models\\Post', 2),
(175, '151.113.91.247', 'Opera/9.52 (X11; Linux i686; sl-SI) Presto/2.11.315 Version/12.00', 'App\\Models\\Post', 5),
(176, '69.48.42.45', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/531.12.6 (KHTML, like Gecko) Version/4.0.5 Safari/531.12.6', 'App\\Models\\Post', 1),
(177, '249.1.43.41', 'Opera/8.48 (Windows NT 4.0; en-US) Presto/2.10.272 Version/10.00', 'App\\Models\\Post', 2),
(178, '204.189.191.237', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X; en-US) AppleWebKit/533.30.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B111 Safari/6533.30.7', 'App\\Models\\Post', 5),
(179, '19.50.79.103', 'Opera/8.53 (Windows NT 5.0; sl-SI) Presto/2.12.200 Version/12.00', 'App\\Models\\Post', 4),
(180, '63.177.247.199', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_0) AppleWebKit/5342 (KHTML, like Gecko) Chrome/39.0.884.0 Mobile Safari/5342', 'App\\Models\\Post', 1),
(181, '97.1.63.22', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.1; Trident/5.1)', 'App\\Models\\Post', 5),
(182, '94.61.66.213', 'Opera/8.65 (X11; Linux i686; en-US) Presto/2.10.203 Version/10.00', 'App\\Models\\Post', 8),
(183, '184.119.241.70', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/39.0.845.0 Mobile Safari/5331', 'App\\Models\\Post', 4),
(184, '253.15.131.20', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; en-US) AppleWebKit/535.5.3 (KHTML, like Gecko) Version/4.0.5 Mobile/8B119 Safari/6535.5.3', 'App\\Models\\Post', 8),
(185, '228.52.135.23', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5331 (KHTML, like Gecko) Chrome/39.0.808.0 Mobile Safari/5331', 'App\\Models\\Post', 1),
(186, '82.34.186.83', 'Opera/8.34 (Windows NT 6.0; sl-SI) Presto/2.11.292 Version/11.00', 'App\\Models\\Post', 4),
(187, '154.59.110.118', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5330 (KHTML, like Gecko) Chrome/38.0.859.0 Mobile Safari/5330', 'App\\Models\\Post', 4),
(188, '200.228.112.53', 'Mozilla/5.0 (Windows NT 6.2; sl-SI; rv:1.9.0.20) Gecko/20170425 Firefox/36.0', 'App\\Models\\Post', 8),
(189, '4.112.234.37', 'Mozilla/5.0 (iPad; CPU OS 7_2_2 like Mac OS X; sl-SI) AppleWebKit/531.33.6 (KHTML, like Gecko) Version/3.0.5 Mobile/8B118 Safari/6531.33.6', 'App\\Models\\Post', 5),
(190, '195.193.141.51', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.1; Trident/5.1)', 'App\\Models\\Post', 2),
(191, '197.204.63.54', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_8 rv:5.0) Gecko/20131130 Firefox/36.0', 'App\\Models\\Post', 4),
(192, '219.30.133.128', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20120216 Firefox/35.0', 'App\\Models\\Post', 8),
(193, '28.133.148.17', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5360 (KHTML, like Gecko) Chrome/36.0.833.0 Mobile Safari/5360', 'App\\Models\\Post', 1),
(194, '123.204.1.68', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_2 rv:2.0) Gecko/20191121 Firefox/37.0', 'App\\Models\\Post', 2),
(195, '248.64.186.139', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X; sl-SI) AppleWebKit/534.20.2 (KHTML, like Gecko) Version/4.0.5 Mobile/8B111 Safari/6534.20.2', 'App\\Models\\Post', 1),
(196, '26.36.111.50', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20190205 Firefox/37.0', 'App\\Models\\Post', 1),
(197, '97.180.47.138', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_2) AppleWebKit/5362 (KHTML, like Gecko) Chrome/36.0.851.0 Mobile Safari/5362', 'App\\Models\\Post', 2),
(198, '129.184.46.19', 'Mozilla/5.0 (Windows NT 6.2; sl-SI; rv:1.9.1.20) Gecko/20201024 Firefox/35.0', 'App\\Models\\Post', 5),
(199, '49.54.139.207', 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5322 (KHTML, like Gecko) Chrome/38.0.816.0 Mobile Safari/5322', 'App\\Models\\Post', 1),
(200, '147.78.79.241', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows 98; Trident/5.1)', 'App\\Models\\Post', 5);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
