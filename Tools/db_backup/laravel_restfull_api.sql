-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2018 at 12:24 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_restfull_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_19_051734_create_products_table', 1),
(4, '2018_09_19_111017_create_students_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `title`, `description`, `price`, `availability`) VALUES
(1, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Prof.', 'Velit et doloremque vitae voluptas soluta. Nesciunt illum ea totam occaecati et voluptas itaque. Sit dolorem nihil quibusdam fugiat in consequatur est. Qui velit voluptatem reiciendis quia dolores qui.', 77, 0),
(2, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Mr.', 'Deserunt quia molestias quia hic voluptas voluptates. Eveniet optio libero optio asperiores dolorem. Fugiat eveniet voluptatibus beatae expedita hic aut. Eius corporis ipsum accusantium aut voluptatem.', 97, 0),
(3, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Prof.', 'Sed nemo harum earum consequatur aut eius perferendis. Incidunt dicta minima rerum similique. In rem suscipit totam est. Aut architecto doloremque quia quas optio non saepe.', 54, 0),
(4, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Mr.', 'Ipsa quam necessitatibus autem beatae. Sit aspernatur ea consequatur consectetur sint asperiores in nam. Similique dolorem modi eius molestiae qui voluptates blanditiis. Nihil ipsum molestias id.', 52, 0),
(5, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Prof.', 'Odio sit fugiat nobis aut officiis. Quod ipsa explicabo dolores ipsam ut. Qui et molestiae a et. Nostrum aut illum et dolores.', 40, 0),
(6, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Prof.', 'Voluptatem nihil et hic ullam. Esse autem voluptatem quasi perferendis sunt et id nulla. Officia sed quia nesciunt ex aut sunt nihil. Assumenda illo libero expedita soluta ut et voluptatem.', 64, 1),
(7, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Mr.', 'Magnam architecto asperiores sit. Sit velit temporibus impedit vitae et qui et. Libero voluptatem eum sunt et. Libero accusantium ullam dolorem ducimus aut accusantium aut.', 55, 1),
(8, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Dr.', 'Ut laudantium est dolore velit. Reprehenderit commodi adipisci praesentium tempore. Et earum rem autem praesentium exercitationem ex alias. Commodi repudiandae ut laborum ut.', 4, 0),
(9, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Prof.', 'Hic eum ab qui dolorem exercitationem quaerat. Tempora aut qui facere. Dolorem architecto numquam eum temporibus quo commodi quo voluptatem. Modi blanditiis harum libero voluptate et.', 65, 0),
(10, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Mr.', 'Doloribus tenetur quia voluptate. Consequatur facilis inventore dolor sint aut. Praesentium aut explicabo iusto cum aut. Tempore cupiditate quasi aut impedit sit consequuntur sint.', 23, 1),
(11, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Miss', 'Nostrum vero commodi aliquid in est. Dolor numquam libero ut sint dolorem omnis. Voluptatem quod eos odit laborum.', 98, 0),
(12, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Prof.', 'Iusto dolores dolorem repellendus omnis enim. Reiciendis fugiat beatae omnis voluptas cupiditate deserunt ut. Officiis asperiores velit quaerat consequatur. Voluptatum aut et nisi. Enim expedita non perferendis quae.', 9, 1),
(13, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Ms.', 'Reprehenderit sint excepturi dolor. Et dolores eum eum error ipsum. Mollitia ut repellat illo quia ex est quis.', 70, 0),
(14, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Mr.', 'Minus commodi magnam minus eligendi ipsum explicabo. Optio qui dolore earum voluptatibus sint molestias. Et aut quas porro aut nihil recusandae. Minima consequuntur ad reiciendis.', 44, 1),
(15, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Ms.', 'Quis et harum occaecati. Sequi ducimus numquam et porro nostrum et voluptatem. Rerum eos sequi soluta excepturi. Officia dolor nisi autem et.', 58, 1),
(16, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Dr.', 'Enim sunt qui possimus expedita qui non delectus. Officia tempora vero dolores possimus non. Labore officia et quidem autem et saepe voluptas numquam.', 78, 0),
(17, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Mr.', 'A consequatur ex id molestiae voluptatibus modi. Itaque natus inventore officiis possimus. Cum quia dicta dolore repellendus. Soluta reprehenderit sit et vero sapiente cupiditate iusto. Deserunt cumque laborum quisquam dignissimos et corporis expedita quam.', 65, 0),
(18, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Mr.', 'Quia eveniet placeat nostrum. Natus voluptas est non voluptatibus. In neque beatae rerum non odio.', 9, 1),
(19, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Mr.', 'Cumque ut excepturi quos quia laborum quia consequatur. Labore quae non earum est. Sunt rerum eos totam. Rerum eligendi placeat facilis quo corrupti.', 87, 1),
(20, '2018-09-19 00:37:43', '2018-09-19 00:37:43', 'Ms.', 'Laboriosam quam dolorem ut vel dolore. Omnis repudiandae consequatur velit totam temporibus ad voluptatem maxime. Est exercitationem et eaque officiis quaerat cum est.', 34, 0),
(22, '2018-09-19 05:31:17', '2018-09-19 05:31:17', 'title a vdvdvd', 'desc', 55, 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Trent O\'Conner Jr.', 'dlemke@hotmail.com', 2068, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(2, 'Nichole Pouros DDS', 'clay90@hotmail.com', 49, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(3, 'Mr. Wilbert Waelchi I', 'vidal.bradtke@yost.biz', 5577, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(4, 'Heloise Kerluke', 'mschowalter@greenholt.com', 4457, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(5, 'Mr. Carmine Carroll', 'jacky.gerhold@gmail.com', 8911, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(6, 'Dr. Loy Hackett DVM', 'favian.heidenreich@yahoo.com', 4121, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(7, 'Dr. German Keeling III', 'fisher.jamison@hotmail.com', 4308, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(8, 'Prof. Marie Moore', 'meaghan.oreilly@borer.info', 1309, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(9, 'Alec Huels', 'lavon16@yahoo.com', 500, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(10, 'Dr. Thomas O\'Connell', 'malika.larson@blanda.com', 722, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(11, 'Harry Schumm', 'lauriane.balistreri@hotmail.com', 7279, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(12, 'Elian Nitzsche', 'powlowski.haley@berge.com', 3839, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(13, 'Reyna Breitenberg', 'jaren.adams@abshire.com', 6165, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(14, 'Ceasar Stracke', 'rempel.sheldon@yahoo.com', 5304, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(15, 'Annamae Casper', 'ngoodwin@reynolds.com', 7592, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(16, 'Dr. Herbert Brown', 'dicki.delores@mitchell.net', 5922, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(17, 'Robbie Jenkins', 'bauch.erwin@hettinger.org', 8356, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(18, 'Kendrick Dooley', 'rocio.wuckert@altenwerth.net', 6049, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(19, 'Reece Miller', 'heidenreich.ilene@kozey.com', 1884, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(20, 'Jovani Dibbert', 'mcdermott.mason@gutmann.info', 6909, '2018-09-19 05:48:21', '2018-09-19 05:48:21'),
(22, 'savan222', 'savan\'@gmail.com2', 7777777, '2018-09-19 06:39:33', '2018-09-19 06:39:33'),
(23, 'satish', 'satish6073@gmail.com', 879878999, '2018-09-19 06:39:49', '2018-09-19 06:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
