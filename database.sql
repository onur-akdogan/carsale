-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2025 at 12:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carsale`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_image` varchar(255) DEFAULT NULL,
  `car_image` varchar(255) DEFAULT NULL,
  `review_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `about_image`, `car_image`, `review_image`, `created_at`, `updated_at`) VALUES
(1, 'uploads/website-images/about-us-2024-01-28-11-59-22-4954.webp', 'uploads/website-images/car-icon-2024-01-28-12-04-05-4440.webp', 'uploads/website-images/reveiw-icon-2024-01-28-12-10-10-8157.webp', NULL, '2024-01-28 06:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `about_us_translations`
--

CREATE TABLE `about_us_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(10) NOT NULL,
  `about_us_id` int(11) NOT NULL,
  `header` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `total_car` varchar(255) DEFAULT NULL,
  `total_car_title` varchar(255) DEFAULT NULL,
  `total_review` varchar(255) DEFAULT NULL,
  `total_review_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_translations`
--

INSERT INTO `about_us_translations` (`id`, `lang_code`, `about_us_id`, `header`, `title`, `description`, `total_car`, `total_car_title`, `total_review`, `total_review_title`, `created_at`, `updated_at`) VALUES
(1, 'en', 1, 'About Our Company', 'CARBAZ Provides an Extensive Inventory of Vehicles', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<p>Over 25 years&rsquo; experience providing top quality car Booking rant and sell for your Amazing Dream &amp; Make you Happy</p>', '90k+ Car Listing', 'Believe in our service & Care', '12k+ 5Star Reviews', 'Happy Customers Say About Us', NULL, '2024-04-23 10:39:40'),
(37, 'hi', 1, 'हमारी कंपनी के बारे में', 'लिस्लाइन वाहनों की एक विस्तृत सूची प्रदान करता है', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम के अंशों की कई विविधताएँ उपलब्ध हैं, लेकिन अधिकांश को किसी न किसी रूप में, हास्य-विनोद या यादृच्छिक शब्दों के माध्यम से परिवर्तन का सामना करना पड़ा है, जो थोड़ा सा भी विश्वसनीय नहीं लगता है। यदि आप लोरेम इप्सम के एक अंश का उपयोग करने जा रहे हैं।\r\n\r\nआपके अद्भुत सपने के लिए सर्वोत्तम गुणवत्ता वाली कार बुकिंग करने और बेचने तथा आपको खुश करने का 25 वर्षों से अधिक का अनुभव</span></pre>', '90k+ कार लिस्टिंग', 'हमारी सेवा और देखभाल पर विश्वास करें', '12k+ 5स्टार समीक्षाएँ', 'खुश ग्राहक हमारे बारे में कहते हैं', '2024-02-24 22:06:13', '2024-02-28 00:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_type` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `about_me` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `forget_password_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `designation`, `email`, `image`, `email_verified_at`, `password`, `created_at`, `updated_at`, `admin_type`, `status`, `about_me`, `facebook`, `twitter`, `linkedin`, `instagram`, `forget_password_token`) VALUES
(1, 'John Doe', 'Web Developer', 'admin@gmail.com', 'uploads/website-images/john-doe-2024-04-19-04-25-33-2622.png', NULL, '$2y$10$gwCPsOqZ3afWZWLpUXMbs.umV/cA.ouwuJYy8FQ8ny/ueruTdaO.G', NULL, '2024-04-19 10:25:33', 1, 'active', 'Sure there isn\'t anything embarrassing hden in the middle of text. All repeat predefined chunks as the as necessliary, making this the first 200 our asliatin words, combined with a handful.', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.instagram.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_banners`
--

CREATE TABLE `ads_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `position_key` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads_banners`
--

INSERT INTO `ads_banners` (`id`, `position`, `position_key`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home-1 featured car side bar', 'home1_featured_car_sidebar', 'uploads/website-images/Home1-2024-04-25-05-19-57-5680.png', 'https://carbaz.minionionbd.com/listing/2019-camfo-explorer', 'enable', NULL, '2024-04-25 11:19:57'),
(2, 'Home-2 brand side bar', 'home2_brand_sidebar', 'uploads/website-images/Home1-2024-04-25-07-39-11-1549.png', 'https://carbaz.minionionbd.com/listing/2018-honda-city-13-ivtec', 'enable', NULL, '2024-04-25 13:39:11'),
(3, 'Home-3 featured side bar', 'home3_featured_sidebar', 'uploads/website-images/Home1-2024-04-25-05-31-12-1733.png', 'https://carbaz.minionionbd.com/listing/2023-shevrolet-corvette-z51', 'enable', NULL, '2024-04-25 11:31:12'),
(4, 'Listing page sidebar', 'listing_page_sidebar', 'uploads/website-images/Home1-2024-04-23-04-58-53-7422.png', 'https://carbaz.minionionbd.com/listings', 'enable', NULL, '2024-04-23 10:58:53'),
(5, 'Listing detail page banner', 'listing_detail_page_banner', 'uploads/website-images/Home1-2024-04-25-05-48-27-7880.png', 'https://carbaz.minionionbd.com/listings', 'enable', NULL, '2024-04-25 12:48:27'),
(6, 'Dealer detail page banner', 'dealer_detail_page_banner', 'uploads/website-images/Home1-2024-04-25-06-28-21-8799.png', 'https://carbaz.minionionbd.com/listing/2007-altra-benz-cclass', 'enable', NULL, '2024-04-25 13:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `bank_payments`
--

CREATE TABLE `bank_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_info` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_payments`
--

INSERT INTO `bank_payments` (`id`, `status`, `account_info`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 'uploads/website-images/bank-2024-02-14-08-16-12-6584.png', NULL, '2024-02-14 02:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `banner_sliders`
--

CREATE TABLE `banner_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `slug` text NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `show_homepage` varchar(255) NOT NULL DEFAULT 'no',
  `is_popular` varchar(255) NOT NULL DEFAULT 'no',
  `tags` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `slug`, `blog_category_id`, `image`, `views`, `status`, `show_homepage`, `is_popular`, `tags`, `created_at`, `updated_at`) VALUES
(13, 1, 'the-friends-are-traveling-by-a-yellow-cabriolet', 13, 'uploads/custom-images/blog--2024-04-23-03-49-20-6466.webp', 11, 1, 'no', 'yes', '[{\"value\":\"car sell\"},{\"value\":\"car rent\"},{\"value\":\"dealer\"},{\"value\":\"carlisto\"}]', '2024-02-25 21:56:39', '2024-04-25 12:29:14'),
(14, 1, 'front-view-of-a-black-sedan-car-the-bridge', 13, 'uploads/custom-images/blog--2024-04-23-03-49-03-4161.webp', 7, 1, 'no', 'no', '[{\"value\":\"car rent\"},{\"value\":\"car sale\"},{\"value\":\"visit car\"},{\"value\":\"carlisto\"},{\"value\":\"car listing\"}]', '2024-02-25 22:00:23', '2024-04-23 10:46:42'),
(15, 1, 'happy-young-male-driver-behind-the-wheel', 14, 'uploads/custom-images/blog--2024-04-23-03-48-47-5585.webp', 10, 1, 'no', 'yes', '[{\"value\":\"car listing\"},{\"value\":\"finding car\"},{\"value\":\"rent car\"},{\"value\":\"sale car\"}]', '2024-02-25 22:04:47', '2024-04-23 10:46:42'),
(16, 1, 'coupe-sport-car-standing-on-the-road', 15, 'uploads/custom-images/blog--2024-04-23-03-48-13-8865.webp', 7, 1, 'no', 'no', '[{\"value\":\"listo\"},{\"value\":\"lisline\"},{\"value\":\"car rent\"},{\"value\":\"sale car\"},{\"value\":\"car finding\"}]', '2024-02-25 22:08:42', '2024-04-25 13:04:38'),
(17, 1, 'young-man-choosing-a-car-in-a-car-showroom', 14, 'uploads/custom-images/blog--2024-04-23-03-47-48-7270.webp', 9, 1, 'no', 'yes', '[{\"value\":\"tag2\"},{\"value\":\"tag1\"},{\"value\":\"tag3\"},{\"value\":\"tag4\"}]', '2024-02-25 22:12:32', '2024-04-23 10:46:38'),
(18, 1, 'mini-coupe-parking-on-the-highway-bridge', 16, 'uploads/custom-images/blog--2024-04-23-03-47-17-6858.webp', 5, 1, 'no', 'no', '[{\"value\":\"car\"},{\"value\":\"listing\"},{\"value\":\"rent car\"},{\"value\":\"sale car\"}]', '2024-02-25 22:14:53', '2024-04-23 10:46:39'),
(19, 1, 'stylish-and-elegant-old-man-in-a-car-salon', 16, 'uploads/custom-images/blog--2024-04-23-03-24-48-2419.webp', 20, 1, 'no', 'no', '[{\"value\":\"tag1\"},{\"value\":\"tag2\"},{\"value\":\"tag3\"},{\"value\":\"tag4\"}]', '2024-02-25 22:17:09', '2024-04-28 22:06:53'),
(20, 1, 'professional-man-working-on-car-full-shot', 16, 'uploads/custom-images/blog--2024-04-23-03-24-23-9934.webp', 44, 1, 'no', 'no', '[{\"value\":\"car repair\"},{\"value\":\"car listing\"},{\"value\":\"sale car\"}]', '2024-02-25 22:30:51', '2024-04-28 10:40:36'),
(21, 1, 'car-on-highway-directional-road-signs', 15, 'uploads/custom-images/blog--2024-04-23-03-23-41-7233.webp', 23, 1, 'no', 'no', '[{\"value\":\"car rent\"},{\"value\":\"car sale\"},{\"value\":\"listing car\"}]', '2024-02-25 22:34:48', '2024-04-25 13:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(13, 'bmw', 1, '2024-02-25 21:51:32', '2024-02-25 21:51:32'),
(14, 'hyundai', 1, '2024-02-25 21:51:50', '2024-02-25 21:51:50'),
(15, 'mercedesbenz', 1, '2024-02-25 21:52:05', '2024-02-25 21:52:05'),
(16, 'toyota', 1, '2024-02-25 21:52:20', '2024-02-25 21:52:20'),
(17, 'renault', 1, '2024-02-25 21:52:30', '2024-02-25 21:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_translations`
--

CREATE TABLE `blog_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category_translations`
--

INSERT INTO `blog_category_translations` (`id`, `lang_code`, `blog_category_id`, `name`, `created_at`, `updated_at`) VALUES
(137, 'en', 13, 'BMW', '2024-02-25 21:51:32', '2024-02-25 21:51:32'),
(138, 'hi', 13, 'बीएमडब्ल्यू', '2024-02-25 21:51:32', '2024-02-28 00:59:39'),
(139, 'en', 14, 'Hyundai', '2024-02-25 21:51:50', '2024-02-25 21:51:50'),
(140, 'hi', 14, 'हुंडई', '2024-02-25 21:51:50', '2024-02-28 00:59:52'),
(141, 'en', 15, 'Mercedes-Benz', '2024-02-25 21:52:05', '2024-02-25 21:52:05'),
(142, 'hi', 15, 'मर्सिडीज बेंज', '2024-02-25 21:52:05', '2024-02-28 01:00:06'),
(143, 'en', 16, 'Toyota', '2024-02-25 21:52:20', '2024-02-25 21:52:20'),
(144, 'hi', 16, 'टोयोटा', '2024-02-25 21:52:20', '2024-02-28 01:00:21'),
(145, 'en', 17, 'Renault', '2024-02-25 21:52:30', '2024-02-25 21:52:30'),
(146, 'hi', 17, 'रेनॉल्ट', '2024-02-25 21:52:30', '2024-02-28 01:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `comment` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `phone`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(8, 21, 'John Doe', 'user@gmail.com', NULL, 'There are many variations of passages of Lorem Ipsum available, but the majoritys have suai alteration in som don&#039;t. Randomised words which don&#039;t look even slightly believable.', 1, '2024-02-25 22:48:17', '2024-02-25 22:48:55'),
(9, 21, 'David Richard', 'user@gmail.com', NULL, 'Dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.', 1, '2024-02-25 22:48:45', '2024-02-25 22:48:54'),
(10, 20, 'John Doe', 'agent@gmail.com', NULL, 'There are many variations of passages of Lorem Ipsum available, but the majoritys have suai alteration in som don&#039;t. Randomised words which don&#039;t look even slightly believable.', 1, '2024-02-25 22:49:38', '2024-02-25 22:50:28'),
(11, 20, 'David Simmons', 'user@gmail.com', NULL, 'Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei', 1, '2024-02-25 22:50:13', '2024-03-09 08:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL DEFAULT 0,
  `lang_code` varchar(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `seo_title` text NOT NULL,
  `seo_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `blog_id`, `lang_code`, `title`, `description`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 13, 'en', 'The friends are traveling by a yellow cabriolet', '<p>Embark on a delectable journey as we delve into the world of culinary delights and gastronomic adventures. Food is not just sustenance; it\'s an art that connects cultures, evokes memories, and stirs emotions. In this blog, we invite you to join us as we explore the fascinating realm of flavors, aromas, and the stories behind every dish. Whether you\'re a seasoned foodie or simply curious about the magic that happens in the kitchen, our culinary exploration promises to satisfy your appetite for knowledge and inspiration.</p>\r\n<p><img src=\"../../../../uploads/custom-images/blog--2024-04-23-03-49-20-6466.webp\" alt=\"\" width=\"1026\" height=\"618\"></p>\r\n<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no.&nbsp;</p>\r\n<p>Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>', 'The friends are traveling by a yellow cabriolet', 'The friends are traveling by a yellow cabriolet', '2024-02-25 21:56:39', '2024-04-23 09:57:55'),
(2, 13, 'hi', 'मित्र पीली कैब्रियोलेट से यात्रा कर रहे हैं', '\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">एक मनोरम यात्रा पर निकल पड़ें क्योंकि हम पाककला के आनंद और गैस्ट्रोनॉमिक रोमांच की दुनिया में उतरेंगे। भोजन केवल जीविका नहीं है; यह एक कला है जो संस्कृतियों को जोड़ती है, यादें ताजा करती है और भावनाओं को जगाती है। इस ब्लॉग में, हम आपको हमारे साथ जुड़ने के लिए आमंत्रित करते हैं क्योंकि हम स्वाद, सुगंध और हर व्यंजन के पीछे की कहानियों के आकर्षक क्षेत्र का पता लगाते हैं। चाहे आप अनुभवी खाने के शौकीन हों या रसोई में होने वाले जादू के बारे में उत्सुक हों, हमारा पाक अन्वेषण ज्ञान और प्रेरणा की आपकी भूख को संतुष्ट करने का वादा करता है।</span></pre>\r\n\r\n\r\n<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no.&nbsp;</p>\r\n<p>Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>', 'मित्र पीली कैब्रियोलेट से यात्रा कर रहे हैं', 'मित्र पीली कैब्रियोलेट से यात्रा कर रहे हैं', '2024-02-25 21:56:39', '2024-02-28 01:02:58'),
(3, 14, 'en', 'Front view of a black sedan car the bridge.', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p><img src=\"../../../../uploads/custom-images/blog--2024-04-23-03-49-03-4161.webp\" alt=\"\" width=\"1026\" height=\"618\"></p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has. Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>', 'Front view of a black sedan sport car on the bridge.', 'Front view of a black sedan sport car on the bridge.', '2024-02-25 22:00:23', '2024-04-23 10:02:35'),
(4, 14, 'hi', 'पुल पर एक काली सेडान स्पोर्ट कार का सामने का दृश्य।', '<p>लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है। एलिक्विप पर्सियस में सीयू, ओपोर्टेरे एडवर्सेरियम मेई एन, जस्टो फैबुलस इन विक्स है।</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has. Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>', 'पुल पर एक काली सेडान स्पोर्ट कार का सामने का दृश्य।', 'पुल पर एक काली सेडान स्पोर्ट कार का सामने का दृश्य।', '2024-02-25 22:00:23', '2024-02-28 01:06:21'),
(5, 15, 'en', 'Happy young male driver behind the wheel', '<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>\r\n<p><img src=\"../../../../uploads/custom-images/blog--2024-04-23-03-48-47-5585.webp\" alt=\"\" width=\"1026\" height=\"618\"></p>\r\n<p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.</p>\r\n<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p>\r\n<p>Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit. Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum.</p>\r\n<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'Happy young male driver behind the wheel', 'Happy young male driver behind the wheel', '2024-02-25 22:04:47', '2024-04-23 09:57:22'),
(6, 15, 'hi', 'गाड़ी चला रहा खुश युवा पुरुष ड्राइवर', '\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">यह मुझे शहरी लोगों के बारे में बताता है। अस्सुम पेरीकुलिस ते मेल, लाइब्रिस क्विदम ते सिट। क्वी निस्ल नेमोरे एलीफेंड आईडी, इलुड उल्लुम सागर में। यूट नुस्क्वाम सेपिएंटेम कॉम्प्रिहेंसम आईयूएस. उसका मोलेस्टी कंप्लिचर पूर्व।</span></pre>\r\n\r\n\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>\r\n<p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.</p>\r\n<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p>\r\n<p>Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit. Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum.</p>\r\n<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'गाड़ी चला रहा खुश युवा पुरुष ड्राइवर', 'गाड़ी चला रहा खुश युवा पुरुष ड्राइवर', '2024-02-25 22:04:47', '2024-02-28 01:07:29'),
(7, 16, 'en', 'Coupe sport car standing on the road', '<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p>\r\n<p><img src=\"../../../../uploads/custom-images/blog--2024-04-23-03-48-13-8865.webp\" alt=\"\" width=\"1026\" height=\"618\"></p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>\r\n<p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.</p>\r\n<p>Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.</p>', 'Coupe sport car standing on the road, front view', 'Coupe sport car standing on the road, front view', '2024-02-25 22:08:42', '2024-04-23 10:02:08'),
(8, 16, 'hi', 'सड़क पर खड़ी कूप स्पोर्ट कार, सामने का दृश्य', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">मेरे विदेश मंत्रालय द्वारा निर्धारित परिभाषा, हमें न्यूनतम आवश्यकता है। प्रो एपिकुरेई संविधान ने, एटक्वी ल्यूसिलियस इंडोक्टम नाम आईडी। आपका समय बहुत अच्छा है, आप संपूर्णता के साथ आगे बढ़ते हैं, आपके कारण सपेरेट ईएम हैं। न्यूनतम प्रोबेटस विम ते, ईयू ईम एंसीलाए मेंटिटम कॉम्प्रिहेंसम। टैंटास डेकोर एडिपिस्की विक्स नं.</span></pre>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>\r\n<p>Pri tempor appareat no, eruditi repudiandae vix at. Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.</p>\r\n<p>Eos at brute omnesque voluptaria, facer putent intellegam eu pri. Mei debitis ullamcorper eu, at quo idque mundi. Vis in suas porro consequat, nec ad dolor adversarium, ut praesent cotidieque sit. Veniam civibus omittantur duo ut, te his alterum complectitur. Mea omnis oratio impedit ne.</p>', 'सड़क पर खड़ी कूप स्पोर्ट कार, सामने का दृश्य', 'सड़क पर खड़ी कूप स्पोर्ट कार, सामने का दृश्य', '2024-02-25 22:08:42', '2024-02-28 01:08:12'),
(9, 17, 'en', 'Young man choosing a car in a car showroom', '<p>Malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.&nbsp;</p>\r\n<p><img src=\"../../../../uploads/custom-images/blog--2024-04-23-03-47-48-7270.webp\" alt=\"\" width=\"1026\" height=\"618\"></p>\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>\r\n<p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.</p>\r\n<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p>\r\n<p>Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit. Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum.</p>\r\n<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'Young man choosing a car in a car showroom', 'Young man choosing a car in a car showroom', '2024-02-25 22:12:32', '2024-04-23 09:52:03'),
(10, 17, 'hi', 'कार शोरूम में कार चुनता युवक', '\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">मैं एक कुशल व्यक्ति हूँ। माज़िम डोलर डेनिक डुओ विज्ञापन, ऑग्यू ऑर्नाटस सेंटेंटिया वेल एट यूट क्वि एलीगेंडी अर्बनिटास। अस्सुम पेरीकुलिस ते मेल, लाइब्रिस क्विदम ते सिट। क्वी निस्ल नेमोरे एलीफेंड आईडी, इलुड उल्लुम सागर में। यूट नुस्क्वाम सेपिएंटेम कॉम्प्रिहेंसम आईयूएस. उसका मोलेस्टी कंप्लिचर पूर्व।</span></pre>\r\n\r\n\r\n<p>Ei usu malis aeque efficiantur. Mazim dolor denique duo ad, augue ornatus sententiae vel at, duo id sumo vulputate. His legimus assueverit ut, commune maluisset deterruisset id mel. Oblique volumus eos ut, quo autem posidonium definitiones cu. Cu usu lorem consul concludaturque, pro ea fuisset consectetuer. Ex aeterno forensibus has, dicta propriae est ei, ex alterum apeirian quo.</p>\r\n<p>Meliore inimicus duo ut, tation veritus elaboraret eam cu. Cum in alii agam aliquip, aperiam salutandi et per. Ex vis summo probatus ocurreret, ex assum sententiae pri, blandit sensibus moderatius ei eos. Vix nobis phaedrum neglegentur et.</p>\r\n<p>Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit.</p>\r\n<p>Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum, sit quis simul accusam cu. Usu ei perfecto repudiare tincidunt, ut quas malis erant vim. An mel vidit iudicabit. Id est maiorum volutpat, ad nominavi suscipit suscipiantur vix. Ut ius veri aperiam reprehendunt. Ut per unum sapientem consequuntur, usu ut quot scripta. Sea te nisl expetenda, ad quo congue argumentum.</p>\r\n<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>', 'कार शोरूम में कार चुनता युवक', 'कार शोरूम में कार चुनता युवक', '2024-02-25 22:12:32', '2024-02-28 01:08:57'),
(11, 18, 'en', 'Mini coupe parking on the highway bridge', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p><img src=\"../../../../uploads/custom-images/blog--2024-04-23-03-47-17-6858.webp\" alt=\"\" width=\"1026\" height=\"618\"></p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has. Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>', 'Mini coupe parking on the highway under bridge.', 'Mini coupe parking on the highway under bridge.', '2024-02-25 22:14:53', '2024-04-23 10:01:44'),
(12, 18, 'hi', 'हाइवे अंडर ब्रिज पर मिनी कूप पार्किंग।', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है। एलिक्विप पर्सियस में सीयू, ओपोर्टेरे एडवर्सेरियम मेई एन, जस्टो फैबुलस इन विक्स है।</span></pre>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has. Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>', 'हाइवे अंडर ब्रिज पर मिनी कूप पार्किंग।', 'हाइवे अंडर ब्रिज पर मिनी कूप पार्किंग।', '2024-02-25 22:14:53', '2024-02-28 01:09:40'),
(13, 19, 'en', 'Stylish and elegant old man in a car salon', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p><img src=\"../../../../uploads/custom-images/blog--2024-04-23-03-24-48-2419.webp\" alt=\"\" width=\"1026\" height=\"618\"></p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has. Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>', 'Stylish and elegant old man in a car salon', 'Stylish and elegant old man in a car salon', '2024-02-25 22:17:09', '2024-04-23 09:51:02'),
(14, 19, 'hi', 'कार सैलून में स्टाइलिश और सुरुचिपूर्ण बूढ़ा आदमी', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है। एलिक्विप पर्सियस में सीयू, ओपोर्टेरे एडवर्सेरियम मेई एन, जस्टो फैबुलस इन विक्स है।</span></pre>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has. Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>', 'कार सैलून में स्टाइलिश और सुरुचिपूर्ण बूढ़ा आदमी', 'कार सैलून में स्टाइलिश और सुरुचिपूर्ण बूढ़ा आदमी', '2024-02-25 22:17:09', '2024-02-28 01:10:14'),
(15, 20, 'en', 'Professional man working on car full shot', '<p>Embark on a delectable journey as we delve into the world of culinary delights and gastronomic adventures. Food is not just sustenance; it\'s an art that connects cultures, evokes memories, and stirs emotions. In this blog, we invite you to join us as we explore the fascinating realm of flavors, aromas, and the stories behind every dish. Whether you\'re a seasoned foodie or simply curious about the magic that happens in the kitchen, our culinary exploration promises to satisfy your appetite for knowledge and inspiration.</p>\r\n<p><img src=\"../../../../uploads/custom-images/blog--2024-04-23-03-24-23-9934.webp\" alt=\"\" width=\"1026\" height=\"618\"></p>\r\n<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no.&nbsp;</p>\r\n<p>Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>', 'Professional man working on car full shot', 'Professional man working on car full shot', '2024-02-25 22:30:51', '2024-04-23 09:50:06'),
(16, 20, 'hi', 'पेशेवर व्यक्ति कार फुल शॉट पर काम कर रहा है', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">एक मनोरम यात्रा पर निकल पड़ें क्योंकि हम पाककला के आनंद और गैस्ट्रोनॉमिक रोमांच की दुनिया में उतरेंगे। भोजन केवल जीविका नहीं है; यह एक कला है जो संस्कृतियों को जोड़ती है, यादें ताजा करती है और भावनाओं को जगाती है। इस ब्लॉग में, हम आपको हमारे साथ जुड़ने के लिए आमंत्रित करते हैं क्योंकि हम स्वाद, सुगंध और हर व्यंजन के पीछे की कहानियों के आकर्षक क्षेत्र का पता लगाते हैं। चाहे आप अनुभवी खाने के शौकीन हों या रसोई में होने वाले जादू के बारे में उत्सुक हों, हमारा पाक अन्वेषण ज्ञान और प्रेरणा की आपकी भूख को संतुष्ट करने का वादा करता है।</span></pre>\r\n<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no.&nbsp;</p>\r\n<p>Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>', 'पेशेवर व्यक्ति कार फुल शॉट पर काम कर रहा है', 'पेशेवर व्यक्ति कार फुल शॉट पर काम कर रहा है', '2024-02-25 22:30:51', '2024-02-28 01:11:00'),
(17, 21, 'en', 'Car on highway directional road signs', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p><img src=\"../../../../uploads/custom-images/blog--2024-04-23-03-23-41-7233.webp\" alt=\"\" width=\"1026\" height=\"618\"></p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has. Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>', 'Car on highway with blank directional road signs', 'Car on highway with blank directional road signs', '2024-02-25 22:34:48', '2024-04-23 10:01:12'),
(18, 21, 'hi', 'खाली दिशात्मक सड़क संकेतों के साथ राजमार्ग पर कार', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है। एलिक्विप पर्सियस में सीयू, ओपोर्टेरे एडवर्सेरियम मेई एन, जस्टो फैबुलस इन विक्स है।</span></pre>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has. Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>\r\n<p>Consetetur definitionem cu mea, usu legere minimum ne. Pro epicurei constituam ne, atqui lucilius indoctum nam id. Eu timeam volumus vel, eos te movet complectitur, te causae saperet eam. Minimum probatus vim te, eu eum ancillae mentitum comprehensam. Tantas decore adipisci vix no.</p>\r\n<p>Ut qui eligendi urbanitas. Assum periculis te mel, libris quidam te sit. Qui nisl nemore eleifend id, in illud ullum sea. Ut nusquam sapientem comprehensam ius. His molestie complectitur ex.</p>', 'खाली दिशात्मक सड़क संकेतों के साथ राजमार्ग पर कार', 'खाली दिशात्मक सड़क संकेतों के साथ राजमार्ग पर कार', '2024-02-25 22:34:48', '2024-02-28 01:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('enable','disable') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(7, 'uploads/custom-images/brand--2024-05-01-12-55-33-6014.webp', 'chevrolet', 'enable', '2024-02-28 01:55:00', '2024-05-01 06:55:33'),
(8, 'uploads/custom-images/brand--2024-05-01-12-55-42-9195.webp', 'honda', 'enable', '2024-02-28 01:55:31', '2024-05-01 06:55:43'),
(9, 'uploads/custom-images/brand--2024-05-01-12-55-52-1391.webp', 'bmw', 'enable', '2024-02-28 01:56:25', '2024-05-01 06:55:52'),
(10, 'uploads/custom-images/brand--2024-05-01-12-56-01-6653.webp', 'hyundai', 'enable', '2024-02-28 02:01:56', '2024-05-01 06:56:01'),
(11, 'uploads/custom-images/brand--2024-05-01-12-56-12-1262.webp', 'mercedes', 'enable', '2024-02-28 02:03:14', '2024-05-01 06:56:12'),
(14, 'uploads/custom-images/brand--2024-05-01-12-56-24-7146.webp', 'nissan', 'enable', '2024-02-28 02:05:31', '2024-05-01 06:56:24'),
(15, 'uploads/custom-images/brand--2024-05-01-12-56-42-7705.webp', 'renault', 'enable', '2024-02-28 02:06:36', '2024-05-01 06:56:42'),
(16, 'uploads/custom-images/brand--2024-05-01-12-56-30-8752.webp', 'alfa-remoe', 'enable', '2024-02-28 02:07:35', '2024-05-01 06:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `lang_code`, `brand_id`, `name`, `created_at`, `updated_at`) VALUES
(25, 'en', 7, 'Chevrolet', '2024-02-28 01:55:00', '2024-02-28 01:55:00'),
(26, 'hi', 7, 'शेवरलेट', '2024-02-28 01:55:00', '2024-02-28 01:55:13'),
(27, 'en', 8, 'Honda', '2024-02-28 01:55:31', '2024-02-28 01:55:31'),
(28, 'hi', 8, 'होंडा', '2024-02-28 01:55:31', '2024-02-28 01:55:44'),
(29, 'en', 9, 'BMW', '2024-02-28 01:56:25', '2024-02-28 01:56:25'),
(30, 'hi', 9, 'बीएमडब्ल्यू', '2024-02-28 01:56:25', '2024-02-28 01:56:43'),
(31, 'en', 10, 'Hyundai', '2024-02-28 02:01:56', '2024-02-28 02:01:56'),
(32, 'hi', 10, 'हुंडई', '2024-02-28 02:01:56', '2024-02-28 02:02:46'),
(33, 'en', 11, 'Mercedes', '2024-02-28 02:03:14', '2024-04-25 12:26:52'),
(34, 'hi', 11, 'मर्सिडीज बेंज', '2024-02-28 02:03:14', '2024-02-28 02:03:27'),
(39, 'en', 14, 'Nissan', '2024-02-28 02:05:31', '2024-02-28 02:05:31'),
(40, 'hi', 14, 'निसान', '2024-02-28 02:05:32', '2024-02-28 02:05:42'),
(41, 'en', 15, 'Renault', '2024-02-28 02:06:36', '2024-02-28 02:06:36'),
(42, 'hi', 15, 'रेनॉल्ट', '2024-02-28 02:06:36', '2024-02-28 02:06:48'),
(43, 'en', 16, 'Alfa Remoe', '2024-02-28 02:07:35', '2024-02-28 02:07:35'),
(44, 'hi', 16, 'अल्फा रोमियो', '2024-02-28 02:07:35', '2024-02-28 02:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` int(11) NOT NULL DEFAULT 0,
  `brand_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `features` text DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `condition` varchar(255) NOT NULL,
  `total_view` bigint(20) NOT NULL DEFAULT 0,
  `regular_price` decimal(8,2) NOT NULL,
  `offer_price` decimal(8,2) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `video_image` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `body_type` varchar(255) DEFAULT NULL,
  `engine_size` varchar(255) DEFAULT NULL,
  `drive` varchar(255) DEFAULT NULL,
  `interior_color` varchar(255) DEFAULT NULL,
  `exterior_color` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `mileage` varchar(255) DEFAULT NULL,
  `number_of_owner` varchar(255) DEFAULT NULL,
  `fuel_type` varchar(255) DEFAULT NULL,
  `transmission` varchar(255) DEFAULT NULL,
  `seller_type` varchar(255) DEFAULT NULL,
  `expired_date` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) NOT NULL DEFAULT 'disable',
  `status` varchar(255) NOT NULL DEFAULT 'disable',
  `approved_by_admin` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rent_period` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `car_model` varchar(255) DEFAULT NULL,
  `is_draft` enum('enable','disable') NOT NULL DEFAULT 'disable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `agent_id`, `brand_id`, `city_id`, `thumb_image`, `slug`, `features`, `purpose`, `condition`, `total_view`, `regular_price`, `offer_price`, `video_id`, `video_image`, `google_map`, `body_type`, `engine_size`, `drive`, `interior_color`, `exterior_color`, `year`, `mileage`, `number_of_owner`, `fuel_type`, `transmission`, `seller_type`, `expired_date`, `is_featured`, `status`, `approved_by_admin`, `created_at`, `updated_at`, `rent_period`, `country_id`, `car_model`, `is_draft`) VALUES
(13, 24, 8, 8, 'uploads/custom-images/car-2024-10-01-12-32-05-5712.webp', '2018-honda-city-13-ivtec', '[\"2\",\"3\",\"5\",\"6\",\"8\",\"9\",\"11\",\"12\"]', 'Rent', 'Used', 141, 120.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-01-26-50-1295.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2012', '1,20,520(mi)', '1', 'Gasoline', 'Auto', 'Dealer', NULL, 'enable', 'enable', 'approved', '2024-03-01 19:26:51', '2024-12-18 10:48:54', 'Hourly', 4, NULL, 'disable'),
(14, 24, 15, 6, 'uploads/custom-images/car-2024-10-01-12-33-46-3406.webp', '2015-shevrolet-corvette-z51', '[\"2\",\"3\",\"5\",\"6\",\"8\",\"9\",\"11\",\"12\"]', 'Rent', 'Used', 44, 100.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-02-14-54-7158.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2012', '1,20,520(mi)', '1', 'Gasoline', 'Auto', 'Dealer', NULL, 'disable', 'enable', 'approved', '2024-03-01 19:26:51', '2024-10-01 06:33:47', 'Hourly', 4, NULL, 'disable'),
(15, 17, 7, 6, 'uploads/custom-images/car-2024-10-01-12-26-52-5408.webp', '2019-camfo-explorer', '[\"2\",\"3\",\"5\",\"6\",\"8\",\"9\",\"11\",\"12\"]', 'Rent', 'New', 14, 120.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-02-12-19-3485.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2012', '1,20,520(mi)', '1', 'Gasoline', 'Auto', 'Dealer', NULL, 'enable', 'enable', 'approved', '2024-03-01 19:26:51', '2024-10-01 06:27:59', 'Monthly', 4, NULL, 'disable'),
(16, 17, 9, 3, 'uploads/custom-images/car--2024-04-23-04-15-50-9232.webp', '2020-camford-mustang', '[\"2\",\"3\",\"5\",\"6\",\"8\",\"9\",\"11\",\"12\"]', 'Rent', 'Used', 26, 120.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-02-10-09-4237.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2012', '1,20,520(mi)', '1', 'Gasoline', 'Auto', 'Dealer', NULL, 'disable', 'enable', 'approved', '2024-03-01 19:26:51', '2024-10-01 05:52:33', 'Hourly', 2, NULL, 'disable'),
(17, 17, 14, 3, 'uploads/custom-images/car-2024-10-01-12-30-57-9158.webp', '2019-adx-alfa-romeo-giulia', '[\"2\",\"3\",\"5\",\"6\",\"8\",\"9\",\"11\",\"12\"]', 'Rent', 'New', 13, 180.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-02-02-37-9961.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2012', '1,20,520(mi)', '1', 'Gasoline', 'Auto', 'Dealer', NULL, 'disable', 'enable', 'approved', '2024-03-01 19:26:51', '2024-10-01 06:30:57', 'Hourly', 2, NULL, 'disable'),
(18, 21, 10, 4, 'uploads/custom-images/car--2024-04-23-04-16-21-3003.webp', '2022-camz-ferrari-portofino', '[\"2\",\"3\",\"5\",\"6\",\"8\",\"9\",\"11\",\"12\"]', 'Rent', 'Used', 8, 200.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-01-59-23-8247.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2012', '1,20,520(mi)', '1', 'Gasoline', 'Auto', 'Dealer', NULL, 'disable', 'enable', 'approved', '2024-03-01 19:26:51', '2024-10-01 05:52:09', 'Monthly', 4, NULL, 'disable'),
(19, 21, 8, 5, 'uploads/custom-images/car--2024-04-23-04-16-38-9150.webp', '2012-honda-city-14-ivtec', '[\"2\",\"3\",\"5\",\"6\",\"8\",\"9\",\"11\",\"12\"]', 'Rent', 'Used', 12, 150.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-01-58-19-5906.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2012', '1,20,520(mi)', '1', 'Gasoline', 'Auto', 'Dealer', NULL, 'disable', 'enable', 'approved', '2024-03-01 19:26:51', '2024-10-01 05:51:54', 'Daily', 4, NULL, 'disable'),
(20, 17, 7, 4, 'uploads/custom-images/car--2024-04-23-04-17-03-6397.webp', '2020-altra-benz-cclass', '[\"2\",\"3\",\"5\",\"6\",\"8\",\"9\",\"11\",\"12\"]', 'Rent', 'New', 16, 500.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-01-57-11-7792.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2012', '1,20,520(mi)', '1', 'Gasoline', 'Auto', 'Dealer', NULL, 'disable', 'enable', 'approved', '2024-03-01 19:26:51', '2024-10-01 05:51:42', 'Yearly', 4, NULL, 'disable'),
(21, 17, 9, 6, 'uploads/custom-images/car--2024-04-23-03-58-03-7942.webp', '1998-camz-ferrari-portofino', '[\"2\",\"4\",\"5\",\"7\",\"8\",\"9\",\"12\",\"13\"]', 'Rent', 'Used', 15, 50.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-03-21-14-2529.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '1996', '1,20,520(mi)', '1', 'Gasoline', 'Auto', 'Dealer', NULL, 'enable', 'enable', 'approved', '2024-03-01 21:21:14', '2024-10-01 05:53:45', 'Monthly', 4, NULL, 'disable'),
(22, 17, 10, 5, 'uploads/custom-images/car--2024-04-23-03-56-28-9164.webp', '2007-altra-benz-cclass', '[\"2\",\"4\",\"5\",\"7\",\"8\",\"11\",\"12\",\"13\"]', 'Sale', 'New', 12, 3000.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-03-35-10-2993.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '1990', '1,20,520(mi)', '2', 'Gasoline', 'Auto', 'Personal', NULL, 'enable', 'enable', 'approved', '2024-03-01 21:35:10', '2024-10-01 05:54:03', NULL, 4, NULL, 'disable'),
(23, 17, 8, 4, 'uploads/custom-images/car--2024-04-23-03-55-38-7334.webp', '2023-shevrolet-corvette-z51', '[\"2\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"13\"]', 'Sale', 'Used', 15, 800.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-03-53-37-4277.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2023', '1,20,520(mi)', '2', 'Gasoline', 'Auto', 'Personal', NULL, 'enable', 'enable', 'approved', '2024-03-01 21:53:37', '2024-10-01 05:54:18', NULL, 4, NULL, 'disable'),
(24, 17, 7, 3, 'uploads/custom-images/car--2024-04-23-03-53-47-5255.webp', '2017-camford-mustang', '[\"2\",\"3\",\"5\",\"7\",\"8\",\"10\",\"11\",\"13\"]', 'Sale', 'Used', 37, 800.00, NULL, 'pWVwVaYAVlM', 'uploads/custom-images/car-video--2024-03-02-04-04-47-6492.webp', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701155025573!5m2!1sen!2sbd', 'Sedan', '2,350 (cc)', 'FWD', 'Navy-blue', 'Solid Silver', '2017', '1,20,520(mi)', '2', 'Gasoline', 'Auto', 'Personal', NULL, 'enable', 'enable', 'approved', '2024-03-01 22:04:48', '2024-12-18 10:49:42', NULL, 2, 'CamFord Mustang', 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `car_galleries`
--

CREATE TABLE `car_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_galleries`
--

INSERT INTO `car_galleries` (`id`, `car_id`, `image`, `created_at`, `updated_at`) VALUES
(103, 24, 'uploads/custom-images/car-gallery-2024-04-23-04-30-35-41000.webp', '2024-04-23 10:30:35', '2024-04-23 10:30:35'),
(104, 24, 'uploads/custom-images/car-gallery-2024-04-23-04-30-35-57721.webp', '2024-04-23 10:30:35', '2024-04-23 10:30:35'),
(105, 24, 'uploads/custom-images/car-gallery-2024-04-23-04-30-35-54182.webp', '2024-04-23 10:30:36', '2024-04-23 10:30:36'),
(106, 24, 'uploads/custom-images/car-gallery-2024-04-23-04-30-36-32303.webp', '2024-04-23 10:30:36', '2024-04-23 10:30:36'),
(107, 24, 'uploads/custom-images/car-gallery-2024-04-23-04-30-36-20744.webp', '2024-04-23 10:30:36', '2024-04-23 10:30:36'),
(108, 24, 'uploads/custom-images/car-gallery-2024-04-23-04-30-36-11475.webp', '2024-04-23 10:30:37', '2024-04-23 10:30:37'),
(109, 23, 'uploads/custom-images/car-gallery-2024-04-23-04-31-38-14610.webp', '2024-04-23 10:31:39', '2024-04-23 10:31:39'),
(110, 23, 'uploads/custom-images/car-gallery-2024-04-23-04-31-39-48731.webp', '2024-04-23 10:31:39', '2024-04-23 10:31:39'),
(111, 23, 'uploads/custom-images/car-gallery-2024-04-23-04-31-39-92712.webp', '2024-04-23 10:31:39', '2024-04-23 10:31:39'),
(112, 23, 'uploads/custom-images/car-gallery-2024-04-23-04-31-39-30013.webp', '2024-04-23 10:31:39', '2024-04-23 10:31:39'),
(113, 23, 'uploads/custom-images/car-gallery-2024-04-23-04-31-39-68144.webp', '2024-04-23 10:31:40', '2024-04-23 10:31:40'),
(114, 23, 'uploads/custom-images/car-gallery-2024-04-23-04-31-40-57775.webp', '2024-04-23 10:31:40', '2024-04-23 10:31:40'),
(115, 22, 'uploads/custom-images/car-gallery-2024-04-23-04-33-39-43460.webp', '2024-04-23 10:33:39', '2024-04-23 10:33:39'),
(116, 22, 'uploads/custom-images/car-gallery-2024-04-23-04-33-39-13611.webp', '2024-04-23 10:33:40', '2024-04-23 10:33:40'),
(117, 22, 'uploads/custom-images/car-gallery-2024-04-23-04-33-40-90812.webp', '2024-04-23 10:33:40', '2024-04-23 10:33:40'),
(118, 22, 'uploads/custom-images/car-gallery-2024-04-23-04-33-40-81883.webp', '2024-04-23 10:33:41', '2024-04-23 10:33:41'),
(119, 22, 'uploads/custom-images/car-gallery-2024-04-23-04-33-41-61024.webp', '2024-04-23 10:33:42', '2024-04-23 10:33:42'),
(120, 22, 'uploads/custom-images/car-gallery-2024-04-23-04-33-42-60155.webp', '2024-04-23 10:33:42', '2024-04-23 10:33:42'),
(121, 21, 'uploads/custom-images/car-gallery-2024-04-23-04-34-00-56760.webp', '2024-04-23 10:34:00', '2024-04-23 10:34:00'),
(122, 21, 'uploads/custom-images/car-gallery-2024-04-23-04-34-00-56721.webp', '2024-04-23 10:34:01', '2024-04-23 10:34:01'),
(123, 21, 'uploads/custom-images/car-gallery-2024-04-23-04-34-01-50442.webp', '2024-04-23 10:34:01', '2024-04-23 10:34:01'),
(124, 21, 'uploads/custom-images/car-gallery-2024-04-23-04-34-01-23373.webp', '2024-04-23 10:34:01', '2024-04-23 10:34:01'),
(125, 21, 'uploads/custom-images/car-gallery-2024-04-23-04-34-01-82344.webp', '2024-04-23 10:34:02', '2024-04-23 10:34:02'),
(126, 21, 'uploads/custom-images/car-gallery-2024-04-23-04-34-02-39345.webp', '2024-04-23 10:34:02', '2024-04-23 10:34:02'),
(127, 13, 'uploads/custom-images/car-gallery-2024-04-23-04-34-21-63560.webp', '2024-04-23 10:34:21', '2024-04-23 10:34:21'),
(128, 13, 'uploads/custom-images/car-gallery-2024-04-23-04-34-21-16701.webp', '2024-04-23 10:34:22', '2024-04-23 10:34:22'),
(129, 13, 'uploads/custom-images/car-gallery-2024-04-23-04-34-22-47262.webp', '2024-04-23 10:34:22', '2024-04-23 10:34:22'),
(130, 13, 'uploads/custom-images/car-gallery-2024-04-23-04-34-22-27673.webp', '2024-04-23 10:34:22', '2024-04-23 10:34:22'),
(131, 13, 'uploads/custom-images/car-gallery-2024-04-23-04-34-22-91624.webp', '2024-04-23 10:34:22', '2024-04-23 10:34:22'),
(132, 13, 'uploads/custom-images/car-gallery-2024-04-23-04-34-22-98425.webp', '2024-04-23 10:34:23', '2024-04-23 10:34:23'),
(133, 14, 'uploads/custom-images/car-gallery-2024-04-23-04-34-39-97760.webp', '2024-04-23 10:34:40', '2024-04-23 10:34:40'),
(134, 14, 'uploads/custom-images/car-gallery-2024-04-23-04-34-40-97921.webp', '2024-04-23 10:34:40', '2024-04-23 10:34:40'),
(135, 14, 'uploads/custom-images/car-gallery-2024-04-23-04-34-40-80882.webp', '2024-04-23 10:34:40', '2024-04-23 10:34:40'),
(136, 14, 'uploads/custom-images/car-gallery-2024-04-23-04-34-40-20753.webp', '2024-04-23 10:34:41', '2024-04-23 10:34:41'),
(137, 14, 'uploads/custom-images/car-gallery-2024-04-23-04-34-41-55504.webp', '2024-04-23 10:34:41', '2024-04-23 10:34:41'),
(138, 14, 'uploads/custom-images/car-gallery-2024-04-23-04-34-41-80865.webp', '2024-04-23 10:34:41', '2024-04-23 10:34:41'),
(139, 15, 'uploads/custom-images/car-gallery-2024-04-23-04-35-00-56630.webp', '2024-04-23 10:35:00', '2024-04-23 10:35:00'),
(141, 15, 'uploads/custom-images/car-gallery-2024-04-23-04-35-00-30432.webp', '2024-04-23 10:35:01', '2024-04-23 10:35:01'),
(142, 15, 'uploads/custom-images/car-gallery-2024-04-23-04-35-01-81983.webp', '2024-04-23 10:35:01', '2024-04-23 10:35:01'),
(143, 15, 'uploads/custom-images/car-gallery-2024-04-23-04-35-01-67244.webp', '2024-04-23 10:35:02', '2024-04-23 10:35:02'),
(144, 15, 'uploads/custom-images/car-gallery-2024-04-23-04-35-02-83025.webp', '2024-04-23 10:35:02', '2024-04-23 10:35:02'),
(147, 15, 'uploads/custom-images/car-gallery-2024-04-23-04-35-19-35082.webp', '2024-04-23 10:35:20', '2024-04-23 10:35:20'),
(148, 15, 'uploads/custom-images/car-gallery-2024-04-23-04-35-20-16533.webp', '2024-04-23 10:35:20', '2024-04-23 10:35:20'),
(151, 16, 'uploads/custom-images/car-gallery-2024-04-23-04-36-12-13000.webp', '2024-04-23 10:36:13', '2024-04-23 10:36:13'),
(152, 16, 'uploads/custom-images/car-gallery-2024-04-23-04-36-13-67041.webp', '2024-04-23 10:36:13', '2024-04-23 10:36:13'),
(153, 16, 'uploads/custom-images/car-gallery-2024-04-23-04-36-13-80582.webp', '2024-04-23 10:36:13', '2024-04-23 10:36:13'),
(154, 16, 'uploads/custom-images/car-gallery-2024-04-23-04-36-13-99853.webp', '2024-04-23 10:36:14', '2024-04-23 10:36:14'),
(155, 16, 'uploads/custom-images/car-gallery-2024-04-23-04-36-14-80344.webp', '2024-04-23 10:36:14', '2024-04-23 10:36:14'),
(156, 16, 'uploads/custom-images/car-gallery-2024-04-23-04-36-14-13925.webp', '2024-04-23 10:36:14', '2024-04-23 10:36:14'),
(157, 17, 'uploads/custom-images/car-gallery-2024-04-23-04-37-00-64850.webp', '2024-04-23 10:37:00', '2024-04-23 10:37:00'),
(158, 17, 'uploads/custom-images/car-gallery-2024-04-23-04-37-00-17991.webp', '2024-04-23 10:37:01', '2024-04-23 10:37:01'),
(159, 17, 'uploads/custom-images/car-gallery-2024-04-23-04-37-01-34052.webp', '2024-04-23 10:37:01', '2024-04-23 10:37:01'),
(160, 17, 'uploads/custom-images/car-gallery-2024-04-23-04-37-01-83493.webp', '2024-04-23 10:37:01', '2024-04-23 10:37:01'),
(162, 17, 'uploads/custom-images/car-gallery-2024-04-23-04-37-02-88925.webp', '2024-04-23 10:37:02', '2024-04-23 10:37:02'),
(163, 18, 'uploads/custom-images/car-gallery-2024-04-23-04-37-20-50030.webp', '2024-04-23 10:37:21', '2024-04-23 10:37:21'),
(164, 18, 'uploads/custom-images/car-gallery-2024-04-23-04-37-21-63931.webp', '2024-04-23 10:37:21', '2024-04-23 10:37:21'),
(165, 18, 'uploads/custom-images/car-gallery-2024-04-23-04-37-21-73652.webp', '2024-04-23 10:37:21', '2024-04-23 10:37:21'),
(166, 18, 'uploads/custom-images/car-gallery-2024-04-23-04-37-21-69273.webp', '2024-04-23 10:37:21', '2024-04-23 10:37:21'),
(167, 18, 'uploads/custom-images/car-gallery-2024-04-23-04-37-21-28454.webp', '2024-04-23 10:37:22', '2024-04-23 10:37:22'),
(168, 18, 'uploads/custom-images/car-gallery-2024-04-23-04-37-22-88115.webp', '2024-04-23 10:37:22', '2024-04-23 10:37:22'),
(169, 19, 'uploads/custom-images/car-gallery-2024-04-23-04-37-47-26590.webp', '2024-04-23 10:37:47', '2024-04-23 10:37:47'),
(170, 19, 'uploads/custom-images/car-gallery-2024-04-23-04-37-47-64071.webp', '2024-04-23 10:37:47', '2024-04-23 10:37:47'),
(171, 19, 'uploads/custom-images/car-gallery-2024-04-23-04-37-47-57992.webp', '2024-04-23 10:37:48', '2024-04-23 10:37:48'),
(172, 19, 'uploads/custom-images/car-gallery-2024-04-23-04-37-48-23033.webp', '2024-04-23 10:37:48', '2024-04-23 10:37:48'),
(173, 19, 'uploads/custom-images/car-gallery-2024-04-23-04-37-48-89034.webp', '2024-04-23 10:37:48', '2024-04-23 10:37:48'),
(174, 19, 'uploads/custom-images/car-gallery-2024-04-23-04-37-48-44485.webp', '2024-04-23 10:37:48', '2024-04-23 10:37:48'),
(175, 20, 'uploads/custom-images/car-gallery-2024-04-23-04-38-06-95570.webp', '2024-04-23 10:38:06', '2024-04-23 10:38:06'),
(176, 20, 'uploads/custom-images/car-gallery-2024-04-23-04-38-06-81781.webp', '2024-04-23 10:38:07', '2024-04-23 10:38:07'),
(177, 20, 'uploads/custom-images/car-gallery-2024-04-23-04-38-07-21372.webp', '2024-04-23 10:38:07', '2024-04-23 10:38:07'),
(178, 20, 'uploads/custom-images/car-gallery-2024-04-23-04-38-07-21953.webp', '2024-04-23 10:38:07', '2024-04-23 10:38:07'),
(179, 20, 'uploads/custom-images/car-gallery-2024-04-23-04-38-07-16984.webp', '2024-04-23 10:38:08', '2024-04-23 10:38:08'),
(180, 20, 'uploads/custom-images/car-gallery-2024-04-23-04-38-08-68645.webp', '2024-04-23 10:38:08', '2024-04-23 10:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `car_translations`
--

CREATE TABLE `car_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` int(11) NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `video_description` text DEFAULT NULL,
  `address` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_translations`
--

INSERT INTO `car_translations` (`id`, `car_id`, `lang_code`, `title`, `description`, `video_description`, `address`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(27, 13, 'en', '2018 Honda City 1.3 i-VTEC', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2018 Honda City 1.3 i-VTEC', '2018 Honda City 1.3 i-VTEC', '2024-03-01 19:26:51', '2024-03-01 19:26:51'),
(28, 13, 'hi', '2018 होंडा सिटी 1.3 आई-वीटीईसी', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2018 Honda City 1.3 i-VTEC', '2018 Honda City 1.3 i-VTEC', '2024-03-01 19:26:51', '2024-03-01 19:32:03'),
(29, 14, 'en', '2015 Shevrolet Corvette Z51', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2015 Shevrolet Corvette Z51', '2015 Shevrolet Corvette Z51', '2024-03-01 19:26:51', '2024-03-01 20:14:54'),
(30, 14, 'hi', '2018 होंडा सिटी 1.3 आई-वीटीईसी', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2018 Honda City 1.3 i-VTEC', '2018 Honda City 1.3 i-VTEC', '2024-03-01 19:26:51', '2024-03-01 19:32:03'),
(31, 15, 'en', '2019 CamFo Explorer', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2019 CamFo Explorer', '2019 CamFo Explorer', '2024-03-01 19:26:51', '2024-03-01 20:12:20'),
(32, 15, 'hi', '2019 कैमफ़ो एक्सप्लोरर', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2019 कैमफ़ो एक्सप्लोरर', '2019 कैमफ़ो एक्सप्लोरर', '2024-03-01 19:26:51', '2024-03-01 20:12:43'),
(33, 16, 'en', '2020 CamFord Mustang', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2020 CamFord Mustang', '2020 CamFord Mustang', '2024-03-01 19:26:51', '2024-03-01 20:10:10'),
(34, 16, 'hi', '2020 कैमफोर्ड मस्टैंग', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2020 कैमफोर्ड मस्टैंग', '2020 कैमफोर्ड मस्टैंग', '2024-03-01 19:26:51', '2024-03-01 20:10:27'),
(35, 17, 'en', '2019 Adx Alfa Romeo Giulia', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2019 Adx Alfa Romeo Giulia', '2019 Adx Alfa Romeo Giulia', '2024-03-01 19:26:51', '2024-03-01 20:02:37'),
(36, 17, 'hi', '2019 एडीएक्स अल्फ़ा रोमियो गिउलिया', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2019 एडीएक्स अल्फ़ा रोमियो गिउलिया', '2019 एडीएक्स अल्फ़ा रोमियो गिउलिया', '2024-03-01 19:26:51', '2024-03-01 20:02:54'),
(37, 17, 'en', '2018 Honda City 1.3 i-VTEC', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2018 Honda City 1.3 i-VTEC', '2018 Honda City 1.3 i-VTEC', '2024-03-01 19:26:51', '2024-03-01 19:26:51'),
(38, 17, 'hi', '2018 होंडा सिटी 1.3 आई-वीटीईसी', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2018 Honda City 1.3 i-VTEC', '2018 Honda City 1.3 i-VTEC', '2024-03-01 19:26:51', '2024-03-01 19:32:03'),
(39, 18, 'en', '2022 Camz Ferrari Portofino', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2022 Camz Ferrari Portofino', '2022 Camz Ferrari Portofino', '2024-03-01 19:26:51', '2024-03-01 19:59:24'),
(40, 18, 'hi', '2022 कैम्ज़ फेरारी पोर्टोफिनो', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2022 कैम्ज़ फेरारी पोर्टोफिनो', '2022 कैम्ज़ फेरारी पोर्टोफिनो', '2024-03-01 19:26:51', '2024-03-01 19:59:38'),
(41, 19, 'en', '2012 Honda City 1.4 i-VTEC', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2012 Honda City 1.4 i-VTEC', '2012 Honda City 1.4 i-VTEC', '2024-03-01 19:26:51', '2024-03-01 19:48:16'),
(42, 19, 'hi', '2012 होंडा सिटी 1.4 आई-वीटीईसी', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2012 होंडा सिटी 1.4 आई-वीटीईसी', '2012 होंडा सिटी 1.4 आई-वीटीईसी', '2024-03-01 19:26:51', '2024-03-01 20:00:08'),
(43, 20, 'en', '2020 Altra Benz C-Class', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2020 Altra Benz C-Class', '2020 Altra Benz C-Class', '2024-03-01 19:26:51', '2024-10-01 05:51:42'),
(44, 20, 'hi', '2018 होंडा सिटी 1.3 आई-वीटीईसी', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '1901 Thornridge Cir. Shiloh, London, United Kingdom', '2018 Honda City 1.3 i-VTEC', '2018 Honda City 1.3 i-VTEC', '2024-03-01 19:26:51', '2024-03-01 19:32:03'),
(45, 21, 'en', '1998 Camz Ferrari Portofino', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Los Angeles, CA, USA', '1998 Camz Ferrari Portofino', '1998 Camz Ferrari Portofino', '2024-03-01 21:21:14', '2024-03-01 21:22:03'),
(46, 21, 'hi', '1998 ক্যামজ ফেরারি পোর্টোফিনো', '&lt;p&gt;How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&amp;rsquo;s manoeuvre simply glorious. The captain had said &amp;ldquo;between eleven and twelve knots,&amp;rdquo; and the Henrietta confirmed his prediction.If, then&amp;mdash;for there were &amp;ldquo;ifs&amp;rdquo; still&amp;mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.&lt;br&gt;&lt;br&gt;The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.&lt;/p&gt;', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Los Angeles, CA, USA', '1998 ক্যামজ ফেরারি পোর্টোফিনো', '1998 ক্যামজ ফেরারি পোর্টোফিনো', '2024-03-01 21:21:14', '2024-03-01 21:21:51'),
(47, 22, 'en', '2007 Altra Benz C-Class', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Los Angeles, CA, USA', '2007 Altra Benz C-Class', '2007 Altra Benz C-Class', '2024-03-01 21:35:10', '2024-04-23 09:56:28'),
(48, 22, 'hi', '2007 আলট্রা বেঞ্জ সি-ক্লাস', '&lt;p&gt;How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&amp;rsquo;s manoeuvre simply glorious. The captain had said &amp;ldquo;between eleven and twelve knots,&amp;rdquo; and the Henrietta confirmed his prediction.If, then&amp;mdash;for there were &amp;ldquo;ifs&amp;rdquo; still&amp;mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.&lt;br&gt;&lt;br&gt;The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.&lt;/p&gt;', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Los Angeles, CA, USA', '2007 আলট্রা বেঞ্জ সি-ক্লাস', '2007 Altra Benz C-Class', '2024-03-01 21:35:10', '2024-03-01 21:35:33'),
(49, 23, 'en', '2023 Shevrolet Corvette Z51', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Los Angeles, CA, USA', '2023 Shevrolet Corvette Z51', '2023 Shevrolet Corvette Z51', '2024-03-01 21:53:37', '2024-04-23 09:55:38'),
(50, 23, 'hi', '2023 शेवरले कार्वेट Z51', '&lt;p&gt;How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&amp;rsquo;s manoeuvre simply glorious. The captain had said &amp;ldquo;between eleven and twelve knots,&amp;rdquo; and the Henrietta confirmed his prediction.If, then&amp;mdash;for there were &amp;ldquo;ifs&amp;rdquo; still&amp;mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.&lt;br&gt;&lt;br&gt;The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.&lt;/p&gt;', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Los Angeles, CA, USA', '2023 शेवरले कार्वेट Z51', '2023 Shevrolet Corvette Z51', '2024-03-01 21:53:37', '2024-03-01 21:54:04'),
(51, 24, 'en', '2017 CamFord Mustang', '<p>How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&rsquo;s manoeuvre simply glorious. The captain had said &ldquo;between eleven and twelve knots,&rdquo; and the Henrietta confirmed his prediction.If, then&mdash;for there were &ldquo;ifs&rdquo; still&mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.<br><br>The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Los Angeles, CA, USA', '2017 CamFord Mustang', '2017 CamFord Mustang', '2024-03-01 22:04:48', '2024-04-18 05:14:39'),
(52, 24, 'hi', '2017 कैमफोर्ड मस्टैंग', '&lt;p&gt;How the adventure ended will be seen anon. Aouda was anxious, though she said nothing. As for Passepartout, he thought Mr Fogg&amp;rsquo;s manoeuvre simply glorious. The captain had said &amp;ldquo;between eleven and twelve knots,&amp;rdquo; and the Henrietta confirmed his prediction.If, then&amp;mdash;for there were &amp;ldquo;ifs&amp;rdquo; still&amp;mdash;the sea did not become too boisterous, if the wind did not veer round to the east if no accident happened to the boat or its machinery.&lt;br&gt;&lt;br&gt;The Henrietta might cross the three thousand miles from New York to Liverpool in the nine days, between the 12th and the 21 st of December. It is true that, once arrived, the affair on board the Henrietta.&lt;/p&gt;', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Los Angeles, CA, USA', '2017 कैमफोर्ड मस्टैंग', '2017 CamFord Mustang', '2024-03-01 22:04:48', '2024-03-01 22:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `country_id`) VALUES
(3, '2024-01-30 23:09:30', '2024-10-01 05:15:43', 2),
(4, '2024-01-30 23:09:45', '2024-10-01 05:15:24', 4),
(5, '2024-01-30 23:10:31', '2024-10-01 05:15:18', 4),
(6, '2024-01-30 23:10:41', '2024-10-01 05:15:11', 4),
(8, '2024-01-30 23:11:14', '2024-10-01 05:15:03', 4);

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `city_id`, `lang_code`, `name`, `created_at`, `updated_at`) VALUES
(3, 3, 'en', 'Kalkata', '2024-01-30 23:09:30', '2024-10-01 05:15:43'),
(5, 4, 'en', 'Mirpur', '2024-01-30 23:09:45', '2024-01-30 23:09:45'),
(7, 5, 'en', 'Dinajpur', '2024-01-30 23:10:31', '2024-01-30 23:10:31'),
(9, 6, 'en', 'Rangpur', '2024-01-30 23:10:41', '2024-01-30 23:10:41'),
(13, 8, 'en', 'Rajshahi', '2024-01-30 23:11:14', '2024-01-30 23:11:14'),
(69, 3, 'hi', 'Dhaka', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(70, 4, 'hi', 'Mirpur', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(71, 5, 'hi', 'Dinajpur', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(72, 6, 'hi', 'Rangpur', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(73, 8, 'hi', 'Rajshahi', '2024-02-24 22:06:13', '2024-02-24 22:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `compare_lists`
--

CREATE TABLE `compare_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `map_code` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `phone`, `email`, `map_code`, `created_at`, `updated_at`) VALUES
(1, '+88 234 567 8991', 'quomodosoft@gmail.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.681138843672!2d-73.89482218459395!3d40.747041279328165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25f01328248b3%3A0x62300784dd275f96!2s7232%20Broadway%20%23%20308%2C%20Flushing%2C%20NY%2011372%2C%20USA!5e0!3m2!1sen!2sbd!4v1652467683397!5m2!1sen!2sbd', NULL, '2024-04-18 05:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_translations`
--

CREATE TABLE `contact_us_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_us_id` int(11) NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us_translations`
--

INSERT INTO `contact_us_translations` (`id`, `contact_us_id`, `lang_code`, `address`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Los Angeles, CA, USA', 'How Can We Help You?', 'Award-winning, family owned dealership of new and pre-owned lisline with several locations across the city. Lowest prices and the best customer service guaranteed.', '2024-01-28 09:47:29', '2024-01-28 04:03:57'),
(16, 1, 'hi', 'लॉस एंजिल्स, सीए, यूएसए', 'हम आपकी कैसे मदद कर सकते हैं?', 'शहर भर में कई स्थानों पर नई और पूर्व-स्वामित्व वाली लिस्लाइन की पुरस्कार विजेता, पारिवारिक स्वामित्व वाली डीलरशिप। सबसे कम कीमतें और सर्वोत्तम ग्राहक सेवा की गारंटी।', '2024-02-24 22:06:13', '2024-02-28 00:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_consents`
--

CREATE TABLE `cookie_consents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookie_consents`
--

INSERT INTO `cookie_consents` (`id`, `status`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', NULL, '2024-04-19 09:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(2, 'India', NULL, '2024-10-01 05:03:48', '2024-10-01 05:03:48'),
(4, 'Bangladesh', NULL, '2024-10-01 05:06:08', '2024-10-01 05:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(4, 'custom-page-one', 1, '2024-02-28 00:34:04', '2024-02-28 00:34:04'),
(5, 'custom-page-two', 1, '2024-02-28 00:37:35', '2024-02-28 00:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `custom_page_translations`
--

CREATE TABLE `custom_page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_page_id` int(11) NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_page_translations`
--

INSERT INTO `custom_page_translations` (`id`, `custom_page_id`, `lang_code`, `page_name`, `description`, `created_at`, `updated_at`) VALUES
(35, 4, 'en', 'Custom Page One', '<p><strong>1. What is custom page?</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriefss asbut also the on leap into a electironc typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andeiss more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p><strong>2. How does work custom page</strong></p>\r\n<p>While it&rsquo;s not legally required for ecommerce websites to have a terms and conditions agreement, adding one will help protect your as sonline business.As terms and conditions are legally enforceable rules, they allow you to set standards for how users interact with your site. Here are some of the major abenefits of including terms and conditions on your ecommerce site:</p>\r\n<p>It has survived not only five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the obb1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop.</p>\r\n<p><strong>Features :</strong></p>\r\n<ul>\r\n<li>Slim body with metal cover</li>\r\n<li>Latest Intel Core i5-1135G7 processor (4 cores / 8 threads)</li>\r\n<li>8GB DDR4 RAM and fast 512GB PCIe SSD</li>\r\n<li>NVIDIA GeForce MX350 2GB GDDR5 graphics card backlit keyboard, touchpad with gesture support</li>\r\n</ul>\r\n<p><strong>3. Protect Your Property</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriezcs but also the on leap into as eylectronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraszvxet sheets containing Lorem Ipsum our spassages, andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book. five centuries but also a the on leap into electronic typesetting, remaining essentially unchanged. It aswasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop our aspublishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p><strong>4. What to Include in Terms and Conditions for Online Stores</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five as centuries but also the on leap into as electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of as Leitraset sheets containing Loriem Ipsum passages, our andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p>Five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing software like Aldus PageMaker our as including versions of Loriem Ipsum to make a type specimen book. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets as containing Lorem Ipsum passages, andei more recently with a desktop publishing software like Aldus PageMaker including versions of Loremas&nbsp; Ipsum to make a type specimen book.</p>\r\n<p><strong>05.Pricing and Payment Terms</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five as centuries but also as the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release as of Letraset sheets containing Lorem Ipsum our spassages, andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p>Five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing software like Aldus PageMaker our as including versions of Lorem aIpsum to make a type specimen book. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheetsasd containing Lorem Ipsum passages, andei more recentlysl with desktop publishing software like Aldus PageMaker including versions of Loremadfsfds Ipsum to make a type specimen book.</p>\r\n<p>It has survived not only five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the our 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing asou software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>', '2024-02-28 00:34:04', '2024-02-28 00:34:04'),
(36, 4, 'hi', 'कस्टम पेज वन', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwjRwOnw3c2EAxXw1zgGHSiXCOAQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">1. कस्टम पेज क्या है?\r\n\r\nलोरेम इप्सम केवल मुद्रण और टाइपसेटिंग उद्योग का नकली पाठ है। लोरेम इप्सम 1500 के दशक से ही उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गैली ली और उसे एक प्रकार की नमूना पुस्तक बनाने के लिए तैयार किया। यह न केवल पाँच शताब्दियों तक जीवित रहा, बल्कि इलेक्ट्रॉनिक टाइपसेटिंग में भी छलांग लगाता रहा, मूलतः अपरिवर्तित रहा। यह 1960 के दशक में लोरेम इप्सम मार्ग वाले लेट्रासेट शीट के रिलीज के साथ लोकप्रिय नहीं हुआ था, और हाल ही में एल्डस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ लोरेम इप्सम के संस्करणों सहित एक प्रकार की नमूना पुस्तक बनाने के लिए लोकप्रिय हुआ।</span></pre>', '2024-02-28 00:34:04', '2024-02-28 00:36:22'),
(37, 5, 'en', 'Custom Page Two', '<p><strong>1. What is custom page?</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriefss asbut also the on leap into a electironc typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andeiss more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p><strong>2. How does work custom page</strong></p>\r\n<p>While it&rsquo;s not legally required for ecommerce websites to have a terms and conditions agreement, adding one will help protect your as sonline business.As terms and conditions are legally enforceable rules, they allow you to set standards for how users interact with your site. Here are some of the major abenefits of including terms and conditions on your ecommerce site:</p>\r\n<p>It has survived not only five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the obb1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop.</p>\r\n<p><strong>Features :</strong></p>\r\n<ul>\r\n<li>Slim body with metal cover</li>\r\n<li>Latest Intel Core i5-1135G7 processor (4 cores / 8 threads)</li>\r\n<li>8GB DDR4 RAM and fast 512GB PCIe SSD</li>\r\n<li>NVIDIA GeForce MX350 2GB GDDR5 graphics card backlit keyboard, touchpad with gesture support</li>\r\n</ul>\r\n<p><strong>3. Protect Your Property</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriezcs but also the on leap into as eylectronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraszvxet sheets containing Lorem Ipsum our spassages, andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book. five centuries but also a the on leap into electronic typesetting, remaining essentially unchanged. It aswasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop our aspublishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p><strong>4. What to Include in Terms and Conditions for Online Stores</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five as centuries but also the on leap into as electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of as Leitraset sheets containing Loriem Ipsum passages, our andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p>Five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing software like Aldus PageMaker our as including versions of Loriem Ipsum to make a type specimen book. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets as containing Lorem Ipsum passages, andei more recently with a desktop publishing software like Aldus PageMaker including versions of Loremas&nbsp; Ipsum to make a type specimen book.</p>\r\n<p><strong>05.Pricing and Payment Terms</strong></p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five as centuries but also as the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release as of Letraset sheets containing Lorem Ipsum our spassages, andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p>Five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing software like Aldus PageMaker our as including versions of Lorem aIpsum to make a type specimen book. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheetsasd containing Lorem Ipsum passages, andei more recentlysl with desktop publishing software like Aldus PageMaker including versions of Loremadfsfds Ipsum to make a type specimen book.</p>\r\n<p>It has survived not only five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the our 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing asou software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>', '2024-02-28 00:37:35', '2024-02-28 00:37:35'),
(38, 5, 'hi', 'कस्टम पेज दो', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwjRwOnw3c2EAxXw1zgGHSiXCOAQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">1. कस्टम पेज क्या है?\r\n\r\nलोरेम इप्सम केवल मुद्रण और टाइपसेटिंग उद्योग का नकली पाठ है। लोरेम इप्सम 1500 के दशक से ही उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गैली ली और उसे एक प्रकार की नमूना पुस्तक बनाने के लिए तैयार किया। यह न केवल पाँच शताब्दियों तक जीवित रहा, बल्कि इलेक्ट्रॉनिक टाइपसेटिंग में भी छलांग लगाता रहा, मूलतः अपरिवर्तित रहा। यह 1960 के दशक में लोरेम इप्सम मार्ग वाले लेट्रासेट शीट के रिलीज के साथ लोकप्रिय नहीं हुआ था, और हाल ही में एल्डस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ लोरेम इप्सम के संस्करणों सहित एक प्रकार की नमूना पुस्तक बनाने के लिए लोकप्रिय हुआ।</span></pre>', '2024-02-28 00:37:35', '2024-02-28 00:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `sender_name`, `mail_host`, `mail_port`, `email`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
(1, 'CARBAZ', 'sandbox.smtp.mailtrap.io', '587', 'aboutkhalil.83@gmail.com', 'b7ca21902a4a93', '1ca1ae1fccf0d4', 'tls', NULL, '2025-02-18 11:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <strong>{{user_name}}</strong>,</h4><p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p><p><strong>{{reset_link}}</strong></p><p>&nbsp;</p><p>Thank You</p><p>QuomodoSoft</p>', NULL, '2024-01-24 06:43:38'),
(2, 'Contact Email', 'Contact Email', '<p>Hello there,</p><p><strong>Mr. {{user_name}} </strong>has send a new email to you. See the message description below:</p><p>Email: <strong>{{user_email}}</strong></p><p>Phone: <strong>{{user_phone}}</strong></p><p><span style=\"background-color: transparent;\">Subject: <strong>{{message_subject}}</strong></span></p><p>Message: <strong>{{message}}</strong></p><p>&nbsp;</p><p>Thank You</p><p>QuomodoSoft</p>', NULL, '2024-01-24 06:54:37'),
(3, 'Newsletter Verification', 'Newsletter Verification', '<h2><strong>Hi there</strong>,</h2><p>Congratulations! Your Subscription has been created successfully. Please Click the following link and Verified Your Subscription.&nbsp;</p><p><strong>{{verification_link}}</strong></p><p>&nbsp;</p><p>Thank You</p><p>QuomodoSoft</p>', NULL, '2024-01-24 06:57:23'),
(4, 'User Verification', 'User Verification', '<p>Dear <strong>{{user_name}}</strong>,</p><p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p><p><strong>{{varification_link}}</strong></p><p>&nbsp;</p><p>Thank You</p><p>QuomodoSoft</p>', NULL, '2024-01-24 07:01:13'),
(12, 'User Verification OTP', 'User Verification OTP', '<p>Dear <strong>{{user_name}}</strong>,</p><p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p><p><strong>{{varification_otp}}</strong></p><p>&nbsp;</p><p>Thank You</p><p>QuomodoSoft</p>', '2025-02-18 11:37:27', '2025-02-18 11:37:27'),
(13, 'Password Reset OTP', 'Password Reset OTP', '<h4>Dear <strong>{{user_name}}</strong>,</h4><p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p><p><strong>{{reset_otp}}</strong></p><p>&nbsp;</p><p>Thank You</p><p>QuomodoSoft</p>', '2025-02-18 11:37:27', '2025-02-18 11:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_pixels`
--

CREATE TABLE `facebook_pixels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `app_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_pixels`
--

INSERT INTO `facebook_pixels` (`id`, `status`, `app_id`, `created_at`, `updated_at`) VALUES
(1, 1, '972911606915059', NULL, '2024-01-17 16:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `created_at`, `updated_at`) VALUES
(8, '2024-02-28 00:29:01', '2024-02-28 00:29:01'),
(9, '2024-02-28 00:30:19', '2024-02-28 00:30:19'),
(10, '2024-02-28 00:30:33', '2024-02-28 00:30:33'),
(11, '2024-02-28 00:30:49', '2024-02-28 00:30:49'),
(12, '2024-02-28 00:31:06', '2024-02-28 00:31:06'),
(13, '2024-02-28 00:31:23', '2024-02-28 00:31:23'),
(14, '2024-02-28 00:31:37', '2024-02-28 00:31:37'),
(15, '2024-02-28 00:32:02', '2024-02-28 00:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `faq_translates`
--

CREATE TABLE `faq_translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `faq_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_translates`
--

INSERT INTO `faq_translates` (`id`, `lang_code`, `faq_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(99, 'en', 8, 'How do I handle test drives and inspections?', '<p>Vestibulum quis neque nunc. Maecenas pharetra libero id efficitur gravida. Aenean risus enim, condimentum vela aliquams in, consequat nec lacus. Aenean faucibus venenatis aliquet. Sed nulla quam, vehicula ut libero molestie volu our as satpat quam. Phasellus semper vitae tellus sit amet scelerisque</p>', '2024-02-28 00:29:01', '2024-02-28 00:29:01'),
(100, 'hi', 8, 'मैं टेस्ट ड्राइव और निरीक्षण कैसे संभालूँ?', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">वेस्टिबुलम अभी भी नहीं है. मैकेनास फेरेट्रा लिबरो आईडी एफिसिटुर ग्रेविडा। एनियन रिसस एनिम, कॉन्डिमेंटम वेला एलिक्वाम्स इन, कॉन्सक्वेट नेक लैकस। एनीन फौसीबस वेनेनाटिस एलिकेट। सेड नल्ला क्वाम, वेहिकुला यूट लिबरो मोलेस्टी वोलु आवर अस सतपत क्वाम। फ़ैसेलस सेम्पर विटे टेलस सिट अमेट स्केलेरिस्क</span></pre>', '2024-02-28 00:29:01', '2024-02-28 00:44:36'),
(101, 'en', 9, 'What precautions should I take to avoid scams?', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur.</p>', '2024-02-28 00:30:19', '2024-02-28 00:30:19'),
(102, 'hi', 9, 'घोटालों से बचने के लिए मुझे क्या सावधानियां बरतनी चाहिए?', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है।</span></pre>', '2024-02-28 00:30:19', '2024-02-28 00:45:11'),
(103, 'en', 10, 'What documents do I need to sell my car?', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur.</p>', '2024-02-28 00:30:33', '2024-02-28 00:30:33'),
(104, 'hi', 10, 'मुझे अपनी कार बेचने के लिए किन दस्तावेज़ों की आवश्यकता होगी?', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है।</span></pre>', '2024-02-28 00:30:33', '2024-02-28 00:46:21'),
(105, 'en', 11, 'How can I increase the visibility of my car listing?', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur.</p>', '2024-02-28 00:30:49', '2024-02-28 00:30:49'),
(106, 'hi', 11, 'मैं अपनी कार सूची की दृश्यता कैसे बढ़ा सकता हूँ?', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है।</span></pre>', '2024-02-28 00:30:49', '2024-02-28 00:46:44'),
(107, 'en', 12, 'Can I upload multiple pictures of my car?', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur.</p>', '2024-02-28 00:31:06', '2024-02-28 00:31:06'),
(108, 'hi', 12, 'क्या मैं अपनी कार की अनेक तस्वीरें अपलोड कर सकता हूँ?', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है।</span></pre>', '2024-02-28 00:31:06', '2024-02-28 00:47:12'),
(109, 'en', 13, 'How do I determine the asking price for my car?', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur.</p>', '2024-02-28 00:31:23', '2024-02-28 00:31:23'),
(110, 'hi', 13, 'मैं अपनी कार के लिए मांगी गई कीमत कैसे निर्धारित करूं?', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है।</span></pre>', '2024-02-28 00:31:23', '2024-02-28 00:47:57'),
(111, 'en', 14, 'What information do I need to include in my car listing?', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur.</p>', '2024-02-28 00:31:37', '2024-02-28 00:31:37'),
(112, 'hi', 14, 'मुझे अपनी कार सूची में कौन सी जानकारी शामिल करने की आवश्यकता है?', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है।</span></pre>', '2024-02-28 00:31:37', '2024-02-28 00:56:11'),
(113, 'en', 15, 'How do I create a car listing?', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur.</p>', '2024-02-28 00:32:02', '2024-02-28 00:32:02'),
(114, 'hi', 15, 'मैं कार सूची कैसे बनाऊं?', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">लोरेम इप्सम डोलोर सिट अमेट, निभ सपेरेट ते प्री, एट नाम डाइसेरेट डिस्प्यूटेशनी। एक कौंसुल के आदेश के अनुसार, हमें हमेशा असहमति का सामना करना पड़ता है, न्यूनतम नामांकन और विक्स की आवश्यकता होती है। एक प्रति उत्परिवर्तित आदिपिसी। एक पेरिकुला डिसेंटियास सेड, यह एक मोडस ग्लोरीएटर है।</span></pre>', '2024-02-28 00:32:02', '2024-02-28 00:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `created_at`, `updated_at`) VALUES
(2, '2024-01-31 00:58:18', '2024-01-31 00:58:18'),
(3, '2024-01-31 00:58:29', '2024-01-31 00:58:29'),
(4, '2024-01-31 00:58:40', '2024-01-31 00:58:40'),
(5, '2024-01-31 00:58:52', '2024-01-31 00:58:52'),
(6, '2024-02-12 23:14:12', '2024-02-12 23:14:12'),
(7, '2024-02-12 23:14:24', '2024-02-12 23:14:24'),
(8, '2024-02-12 23:14:31', '2024-02-12 23:14:31'),
(9, '2024-03-01 19:19:35', '2024-03-01 19:19:35'),
(10, '2024-03-01 19:19:49', '2024-03-01 19:19:49'),
(11, '2024-03-01 19:20:02', '2024-03-01 19:20:02'),
(12, '2024-03-01 19:20:15', '2024-03-01 19:20:15'),
(13, '2024-03-01 19:20:25', '2024-03-01 19:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `feature_translations`
--

CREATE TABLE `feature_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` int(11) NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_translations`
--

INSERT INTO `feature_translations` (`id`, `feature_id`, `lang_code`, `name`, `created_at`, `updated_at`) VALUES
(3, 2, 'en', 'Auxiliary heating', '2024-01-31 00:58:18', '2024-01-31 00:58:18'),
(5, 3, 'en', 'Head-up display', '2024-01-31 00:58:29', '2024-01-31 00:58:29'),
(7, 4, 'en', 'Alloy wheels', '2024-01-31 00:58:40', '2024-01-31 00:58:40'),
(9, 5, 'en', 'Power Steering', '2024-01-31 00:58:52', '2024-01-31 00:58:52'),
(27, 6, 'en', 'Central locking', '2024-02-12 23:14:12', '2024-02-12 23:14:12'),
(29, 7, 'en', 'Panoramic roof', '2024-02-12 23:14:24', '2024-02-12 23:14:24'),
(31, 8, 'en', 'Alloy wheels', '2024-02-12 23:14:31', '2024-02-12 23:15:05'),
(33, 2, 'hi', 'Auxiliary heating', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(34, 3, 'hi', 'Head-up display', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(35, 4, 'hi', 'Alloy wheels', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(36, 5, 'hi', 'Power Steering', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(37, 6, 'hi', 'Central locking', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(38, 7, 'hi', 'Panoramic roof', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(39, 8, 'hi', 'Alloy wheels', '2024-02-24 22:06:13', '2024-02-24 22:06:13'),
(40, 9, 'en', 'Bluetooth', '2024-03-01 19:19:35', '2024-03-01 19:19:35'),
(41, 9, 'hi', 'Bluetooth', '2024-03-01 19:19:35', '2024-03-01 19:19:35'),
(42, 10, 'en', 'Electric side mirror', '2024-03-01 19:19:49', '2024-03-01 19:19:49'),
(43, 10, 'hi', 'Electric side mirror', '2024-03-01 19:19:49', '2024-03-01 19:19:49'),
(44, 11, 'en', 'CD player', '2024-03-01 19:20:02', '2024-03-01 19:20:02'),
(45, 11, 'hi', 'CD player', '2024-03-01 19:20:02', '2024-03-01 19:20:02'),
(46, 12, 'en', 'Navigation system', '2024-03-01 19:20:15', '2024-03-01 19:20:15'),
(47, 12, 'hi', 'Navigation system', '2024-03-01 19:20:15', '2024-03-01 19:20:15'),
(48, 13, 'en', 'Sports package', '2024-03-01 19:20:25', '2024-03-01 19:20:25'),
(49, 13, 'hi', 'Sports package', '2024-03-01 19:20:25', '2024-03-01 19:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `flutterwaves`
--

CREATE TABLE `flutterwaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `public_key` text NOT NULL,
  `secret_key` text NOT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flutterwaves`
--

INSERT INTO `flutterwaves` (`id`, `public_key`, `secret_key`, `currency_rate`, `country_code`, `currency_code`, `title`, `logo`, `status`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X', 'FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X', 460.49, 'NG', 'NGN', 'CARBAZ', 'uploads/website-images/flutterwave-2024-04-23-05-04-32-1263.png', 1, NULL, '2024-04-23 11:04:32', 2);

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `analytic_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_analytics`
--

INSERT INTO `google_analytics` (`id`, `analytic_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'UA-84213520-6', 1, NULL, '2024-01-17 16:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `google_recaptchas`
--

CREATE TABLE `google_recaptchas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_recaptchas`
--

INSERT INTO `google_recaptchas` (`id`, `site_key`, `secret_key`, `status`, `created_at`, `updated_at`) VALUES
(1, '6LeEoFkpAAAAAHmBeu4R5r8PtCkRj4BZh_0YemJM', '6LeEoFkpAAAAAPfvKeJSq0U0OJ_Y4RN3SLd-AkLC', 0, NULL, '2024-04-25 16:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

CREATE TABLE `home_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home1_intro_image` varchar(255) DEFAULT NULL,
  `home1_intro_bg` varchar(255) DEFAULT NULL,
  `home2_intro_image` varchar(255) DEFAULT NULL,
  `home3_intro_image` varchar(255) DEFAULT NULL,
  `video_bg_image` varchar(255) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `dealer_bg_image` varchar(255) DEFAULT NULL,
  `dealer_foreground_image` varchar(255) DEFAULT NULL,
  `mobile_user_image` varchar(255) DEFAULT NULL,
  `mobile_app_image` varchar(255) DEFAULT NULL,
  `mobile_app_image2` varchar(255) DEFAULT NULL,
  `mobile_playstore` varchar(255) DEFAULT NULL,
  `mobile_appstore` varchar(255) DEFAULT NULL,
  `mobile_total_download` varchar(255) DEFAULT NULL,
  `working_step_icon1` varchar(255) DEFAULT NULL,
  `working_step_icon2` varchar(255) DEFAULT NULL,
  `working_step_icon3` varchar(255) DEFAULT NULL,
  `working_step_icon4` varchar(255) DEFAULT NULL,
  `counter_icon1` varchar(255) DEFAULT NULL,
  `counter_icon2` varchar(255) DEFAULT NULL,
  `counter_icon3` varchar(255) DEFAULT NULL,
  `counter_qty1` varchar(255) DEFAULT NULL,
  `counter_qty2` varchar(255) DEFAULT NULL,
  `counter_qty3` varchar(255) DEFAULT NULL,
  `callus_phone` varchar(255) DEFAULT NULL,
  `callus_image` varchar(255) DEFAULT NULL,
  `loan_bg_image` varchar(255) DEFAULT NULL,
  `loan_foreground_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_pages`
--

INSERT INTO `home_pages` (`id`, `home1_intro_image`, `home1_intro_bg`, `home2_intro_image`, `home3_intro_image`, `video_bg_image`, `video_id`, `dealer_bg_image`, `dealer_foreground_image`, `mobile_user_image`, `mobile_app_image`, `mobile_app_image2`, `mobile_playstore`, `mobile_appstore`, `mobile_total_download`, `working_step_icon1`, `working_step_icon2`, `working_step_icon3`, `working_step_icon4`, `counter_icon1`, `counter_icon2`, `counter_icon3`, `counter_qty1`, `counter_qty2`, `counter_qty3`, `callus_phone`, `callus_image`, `loan_bg_image`, `loan_foreground_image`, `created_at`, `updated_at`) VALUES
(1, 'uploads/website-images/home1-intro-image-2024-04-28-04-53-18-2809.webp', 'uploads/website-images/home1-intro-bg-2024-04-02-03-25-18-9448.webp', 'uploads/website-images/home2-intro-image-2024-04-05-10-26-49-9079.webp', 'uploads/website-images/home3-intro-image-2024-04-25-03-26-17-8377.webp', 'uploads/website-images/video-bg-image-2024-02-04-09-18-21-9838.webp', 'gG3EmODlRJY', 'uploads/website-images/dealer-bg-image-2024-02-04-09-35-48-5944.webp', 'uploads/website-images/dealer-forground-image-2024-04-25-05-18-30-6847.webp', 'uploads/website-images/mobile-app-user-2024-02-04-10-25-36-3723.webp', 'uploads/website-images/mobile-app-image-2024-05-01-02-01-03-1600.webp', 'uploads/website-images/mobile-app-image2-2024-02-04-10-12-03-7726.webp', 'https://play.google.com/', 'https://www.apple.com/app-store/', '520', 'uploads/website-images/video-bg-image-2024-02-25-03-48-27-5837.webp', 'uploads/website-images/video-bg-image-2024-02-25-03-48-57-8385.webp', 'uploads/website-images/video-bg-image-2024-02-25-03-49-17-3885.webp', 'uploads/website-images/video-bg-image-2024-02-25-03-49-55-4858.webp', 'uploads/website-images/counter-2024-02-04-12-00-31-4773.webp', 'uploads/website-images/counter-2024-02-04-12-04-14-3961.webp', 'uploads/website-images/counter-2024-02-04-12-08-24-8148.webp', '56', '58', '60', '(431) 529 2093', 'uploads/website-images/callus-image-2024-02-05-04-38-13-3934.webp', 'uploads/website-images/dealer-bg-image-2024-04-25-04-41-26-9692.webp', 'uploads/website-images/dealer-forground-image-2024-02-20-01-50-11-7843.webp', NULL, '2024-05-01 08:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_translations`
--

CREATE TABLE `home_page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_page_id` int(11) NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `home1_intro_short_title` varchar(255) DEFAULT NULL,
  `home1_intro_title` varchar(255) DEFAULT NULL,
  `home2_intro_short_title` varchar(255) DEFAULT NULL,
  `home2_intro_title` varchar(255) DEFAULT NULL,
  `home3_intro_short_title` varchar(255) DEFAULT NULL,
  `home3_intro_title` varchar(255) DEFAULT NULL,
  `home3_intro_des` text DEFAULT NULL,
  `video_short_title` varchar(255) DEFAULT NULL,
  `video_title` varchar(255) DEFAULT NULL,
  `dealer_short_title` varchar(255) DEFAULT NULL,
  `dealer_title` varchar(255) DEFAULT NULL,
  `mobile_short_title` varchar(255) DEFAULT NULL,
  `mobile_title` varchar(255) DEFAULT NULL,
  `mobile_description` varchar(255) DEFAULT NULL,
  `working_step_title1` varchar(255) DEFAULT NULL,
  `working_step_title2` varchar(255) DEFAULT NULL,
  `working_step_title3` varchar(255) DEFAULT NULL,
  `working_step_title4` varchar(255) DEFAULT NULL,
  `working_step_des1` varchar(255) DEFAULT NULL,
  `working_step_des2` varchar(255) DEFAULT NULL,
  `working_step_des3` varchar(255) DEFAULT NULL,
  `working_step_des4` varchar(255) DEFAULT NULL,
  `counter_title1` varchar(255) DEFAULT NULL,
  `counter_title2` varchar(255) DEFAULT NULL,
  `counter_title3` varchar(255) DEFAULT NULL,
  `callus_title` varchar(255) DEFAULT NULL,
  `callus_header1` varchar(255) DEFAULT NULL,
  `callus_header2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_translations`
--

INSERT INTO `home_page_translations` (`id`, `home_page_id`, `lang_code`, `home1_intro_short_title`, `home1_intro_title`, `home2_intro_short_title`, `home2_intro_title`, `home3_intro_short_title`, `home3_intro_title`, `home3_intro_des`, `video_short_title`, `video_title`, `dealer_short_title`, `dealer_title`, `mobile_short_title`, `mobile_title`, `mobile_description`, `working_step_title1`, `working_step_title2`, `working_step_title3`, `working_step_title4`, `working_step_des1`, `working_step_des2`, `working_step_des3`, `working_step_des4`, `counter_title1`, `counter_title2`, `counter_title3`, `callus_title`, `callus_header1`, `callus_header2`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Find Your Perfect Car', 'World of Luxury Automobiles', 'Welcome to CARBAZ', 'Welcome to the World of Luxury Automobiles.', 'Find Your Perfect Car', 'The Most Powerful Directory & Listing', 'Fulfill Your Dreams with This Luxurious and Powerful Ride. Top-notch Performance, Unmatched Elegance - Drive Your Passion', 'Watch the Video', 'Do You Want To Earn With Us? So Don\'t Be Late.', 'Join Our Dealer', 'Do You Want To Car Dealer with CARBAZ?', 'Download App Now', 'Car Listing Mobile App', 'The internet has changed our ways of accessing knowledge as well as information go to a library, bookstore, magazine stand.', 'Search Your Dream Car', 'Check Price with Feature', 'Contact With Vendor', 'Enjoy Your Dream Car', 'It is a long established fact that a reader will be distracted.', 'It is a long established fact that a reader will be distracted.', 'It is a long established fact that a reader will be distracted.', 'It is a long established fact that a reader will be distracted.', 'Happy Customers', 'Number of Cars', 'Our Car Dealers', 'Need Any Help?', 'We Are Proud Of Our Business.', 'Car Listing Now!', NULL, '2024-04-23 10:14:36'),
(43, 1, 'hi', 'लिस्लाइन में आपका स्वागत है', 'क्या आप एक कार की तलाश में हैं?', 'लिस्लाइन में आपका स्वागत है', 'लक्जरी ऑटोमोबाइल की दुनिया में आपका स्वागत है।', 'अपनी आदर्श कार खोजें', 'सबसे शक्तिशाली निर्देशिका और सूची लिस्लाइन', 'Fulfill Your Dreams with This Luxurious and Powerful Ride. Top-notch Performance, Unmatched Elegance - Drive Your Passion', 'वह वीडियो देखें', 'क्या आप हमारे साथ कमाई करना चाहते हैं? तो देर मत करो.', 'हमारे डीलर से जुड़ें', 'क्या आप लिस्लाइन के साथ कार डीलर बनना चाहते हैं?', 'अभी ऐप डाउनलोड करें', 'कार लिस्टिंग मोबाइल ऐप', 'इंटरनेट ने ज्ञान के साथ-साथ पुस्तकालय, किताबों की दुकान, पत्रिका स्टैंड तक जानकारी तक पहुंचने के हमारे तरीकों को बदल दिया है।', 'अपनी सपनों की कार खोजें', 'फ़ीचर के साथ कीमत जांचें', 'विक्रेता से संपर्क करें', 'अपनी सपनों की कार का आनंद लें', 'यह लंबे समय से स्थापित तथ्य है कि पाठक विचलित हो जाएगा।', 'यह लंबे समय से स्थापित तथ्य है कि पाठक विचलित हो जाएगा।', 'यह लंबे समय से स्थापित तथ्य है कि पाठक विचलित हो जाएगा।', 'यह लंबे समय से स्थापित तथ्य है कि पाठक विचलित हो जाएगा।', 'खुश ग्राहक', 'कारों की संख्या', 'हमारे कार डीलर', 'किसी मदद की ज़रूरत?', 'हमें अपने व्यवसाय पर गर्व है।', 'कार लिस्टिंग अभी!', '2024-02-24 22:06:13', '2024-04-06 05:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `instamojo_payments`
--

CREATE TABLE `instamojo_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text NOT NULL,
  `auth_token` text NOT NULL,
  `currency_rate` varchar(255) NOT NULL DEFAULT '1',
  `account_mode` varchar(255) NOT NULL DEFAULT 'Sandbox',
  `status` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instamojo_payments`
--

INSERT INTO `instamojo_payments` (`id`, `api_key`, `auth_token`, `currency_rate`, `account_mode`, `status`, `image`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 'test_5f4a2c9a58ef216f8a1a688910f', 'test_994252ada69ce7b3d282b9941c2', '81.98', 'Sandbox', 1, 'uploads/website-images/instamojo-2024-02-14-08-07-43-4250.png', NULL, '2024-02-14 02:10:32', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kyc_information`
--

CREATE TABLE `kyc_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kyc_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kyc_information`
--

INSERT INTO `kyc_information` (`id`, `kyc_id`, `user_id`, `file`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 17, 'uploads/custom-images/document-2024-05-13-04-25-16-1237.jpeg', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 1, '2024-05-13 10:25:16', '2024-05-13 10:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_types`
--

CREATE TABLE `kyc_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kyc_types`
--

INSERT INTO `kyc_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NID', 1, '2024-05-13 10:24:13', '2024-05-13 10:24:13'),
(2, 'Passport', 1, '2024-05-13 10:24:21', '2024-05-13 10:24:21'),
(3, 'Driving Licence', 1, '2024-05-13 10:24:29', '2024-05-13 10:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `is_default` varchar(255) NOT NULL DEFAULT 'no',
  `status` int(11) NOT NULL DEFAULT 0,
  `lang_direction` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang_name`, `lang_code`, `is_default`, `status`, `lang_direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'Yes', 1, 'left_to_right', '2023-08-23 00:21:38', '2024-01-25 03:31:44'),
(49, 'Hindi', 'hi', 'No', 1, 'left_to_right', '2024-02-24 22:06:13', '2024-02-24 22:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_21_121608_create_admins_table', 2),
(6, '2023_08_22_052128_add_admin_info_to_admins', 3),
(7, '2023_08_22_060633_create_settings_table', 4),
(8, '2023_08_22_091046_add_footer_logo_to_settings', 5),
(9, '2023_08_22_092103_create_cookie_consents_table', 6),
(10, '2023_08_23_041831_add_contact_info_to_settings', 7),
(11, '2023_08_23_061207_create_languages_table', 8),
(12, '2023_08_23_065713_create_blogs_table', 9),
(13, '2023_08_23_070243_create_blog_translations_table', 9),
(16, '2023_08_23_070627_create_blog_categories_table', 10),
(17, '2023_08_23_070722_create_blog_category_translations_table', 10),
(18, '2023_08_24_041827_create_blog_comments_table', 11),
(19, '2023_08_24_062632_create_about_us_table', 12),
(20, '2023_08_24_063507_create_about_us_translations_table', 12),
(21, '2023_08_24_091604_create_contact_us_table', 13),
(24, '2023_08_24_093106_create_custom_pages_table', 14),
(25, '2023_08_24_093124_create_custom_page_translations_table', 14),
(26, '2023_08_28_041811_create_term_and_conditions_table', 15),
(27, '2023_08_28_045030_create_privacy_policies_table', 16),
(28, '2023_08_28_051357_create_faq_translates_table', 17),
(29, '2023_08_28_051729_create_faqs_table', 17),
(30, '2023_08_28_060623_add_error_page_to_settings', 18),
(52, '2023_09_12_054101_create_seo_settings_table', 29),
(70, '2023_10_10_065008_add_login_page_bg_to_settings', 40),
(71, '2023_10_10_110758_create_social_login_infos_table', 41),
(72, '2023_10_10_120814_add_social_info_to_users', 42),
(73, '2023_10_11_085004_add_footer_info_to_settings', 43),
(75, '2023_10_11_093736_add_copyright_to_settings', 44),
(76, '2023_11_05_154747_create_paymongo_payments_table', 45),
(77, '2023_11_09_154516_create_iyzico_payments_table', 45),
(78, '2023_11_11_085653_create_mercado_pago_payments_table', 45),
(79, '2023_11_07_051924_create_multi_currencies_table', 46),
(80, '2023_11_20_164611_add_currency_id_to_paypal_payments', 47),
(81, '2023_11_20_170037_add_to_currency_id_stripe_payments', 48),
(82, '2023_11_20_170738_add_currency_id_to_razorpay_payments', 49),
(83, '2023_11_20_171803_add_currency_id_to_flutterwave_payments', 50),
(84, '2023_11_23_152129_add_currency_id_to_paystack_and_mollies', 51),
(85, '2023_11_23_154330_add_currency_id_to_instamojo_payments', 52),
(86, '2024_01_28_094246_create_contact_us_translations_table', 53),
(87, '2024_01_30_104319_create_brands_table', 54),
(88, '2024_01_30_110607_create_brand_translations_table', 54),
(89, '2024_01_31_044113_create_cities_table', 55),
(90, '2024_01_31_045030_create_city_translations_table', 55),
(91, '2024_01_31_061927_create_features_table', 56),
(92, '2024_01_31_062008_create_feature_translations_table', 56),
(93, '2024_01_31_090220_create_cars_table', 57),
(94, '2024_01_31_092624_create_car_translations_table', 57),
(95, '2024_02_01_084639_add_rent_period_to_cars', 58),
(97, '2024_02_01_104552_create_car_galleries_table', 59),
(100, '2024_02_04_065149_create_home_pages_table', 60),
(101, '2024_02_04_065240_create_home_page_translation_table', 60),
(102, '2024_02_05_050042_create_testimonials_table', 61),
(103, '2024_02_05_050053_create_testimonial_translations_table', 61),
(104, '2024_02_11_095157_create_subscription_plans_table', 61),
(106, '2024_02_14_121751_create_subscription_histories_table', 62),
(107, '2024_02_19_051501_create_wishlists_table', 63),
(108, '2024_02_19_051727_create_reviews_table', 64),
(109, '2024_02_20_052322_create_ads_banners_table', 65),
(110, '2024_05_01_050338_create_kyc_types_table', 66),
(111, '2024_05_01_082702_create_kyc_information_table', 66),
(112, '2024_09_29_054314_create_countries_table', 67),
(113, '2024_09_29_054836_add_country_id_to_listings', 68),
(114, '2024_09_29_060753_add_country_id_to_cities', 68),
(115, '2024_12_17_120336_add_car_model_to_cars_table', 69),
(116, '2025_01_19_054054_create_banner_sliders_table', 70),
(117, '2025_01_19_080637_add_kyc_status_to_users', 70),
(118, '2025_01_19_082620_create_sliders_table', 70),
(119, '2025_01_19_101436_add_verification_otp_to_users', 70),
(120, '2025_01_19_102726_add_forget_password_otp_to_users', 70),
(121, '2025_01_22_055452_add_draft_to_cars', 70),
(122, '2025_01_22_090438_add_banner_image_to_users', 70),
(123, '2025_01_22_093838_create_compare_lists_table', 70);

-- --------------------------------------------------------

--
-- Table structure for table `multi_currencies`
--

CREATE TABLE `multi_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_icon` varchar(255) NOT NULL,
  `is_default` varchar(255) NOT NULL,
  `currency_rate` decimal(8,2) NOT NULL,
  `currency_position` varchar(255) NOT NULL DEFAULT 'before_price',
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_currencies`
--

INSERT INTO `multi_currencies` (`id`, `currency_name`, `country_code`, `currency_code`, `currency_icon`, `is_default`, `currency_rate`, `currency_position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USD', 'USD', 'USD', '$', 'no', 1.00, 'before_price', 'active', '2023-11-20 02:04:45', '2024-04-19 11:26:00'),
(2, 'NGN', 'NG', 'NGN', '₦', 'no', 3.00, 'before_price', 'active', '2023-11-20 02:07:35', '2024-04-19 11:27:05'),
(3, 'INR', 'IN', 'INR', '₹', 'no', 2.00, 'before_price', 'active', '2023-11-20 03:06:44', '2024-04-19 11:27:28'),
(4, 'CAD', 'CAD', 'CAD', 'C$', 'no', 1.00, 'before_price', 'active', '2023-11-23 01:35:23', '2024-04-19 11:26:08'),
(5, 'PHP', 'PHP', 'PHP', '₱', 'no', 10.00, 'before_price', 'active', '2023-11-23 01:59:31', '2024-04-19 11:27:16'),
(6, 'Turkish lira', 'TL', 'TRY', '₺', 'no', 0.04, 'before_price', 'active', '2023-11-23 02:08:32', '2024-04-19 11:27:37'),
(7, 'ARS', 'ARS', 'ARS', '$', 'no', 2.00, 'before_price', 'active', '2023-11-23 02:10:11', '2024-04-19 11:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('client@gmail.com', '$2y$10$2CsKFrogomPge4bSgdC53em5VTOUY8LqtE0JMPZLCNOIhaEsFzwBu', '2023-09-16 04:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payments`
--

CREATE TABLE `paypal_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_mode` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `secret_id` text DEFAULT NULL,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `currency_rate` double NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_payments`
--

INSERT INTO `paypal_payments` (`id`, `status`, `account_mode`, `client_id`, `secret_id`, `country_code`, `currency_code`, `currency_rate`, `image`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 1, 'sandbox', 'AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy', 'EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn', 'US', 'USD', 1, 'uploads/website-images/paypal-2024-04-23-05-01-19-1913.png', NULL, '2024-04-23 11:01:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paystack_and_mollies`
--

CREATE TABLE `paystack_and_mollies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mollie_key` varchar(255) DEFAULT NULL,
  `mollie_status` int(11) NOT NULL DEFAULT 0,
  `mollie_currency_rate` double NOT NULL DEFAULT 1,
  `paystack_public_key` varchar(255) DEFAULT NULL,
  `paystack_secret_key` varchar(255) DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT 1,
  `paystack_status` int(11) NOT NULL DEFAULT 0,
  `mollie_country_code` varchar(191) NOT NULL,
  `mollie_currency_code` varchar(191) NOT NULL,
  `paystack_country_code` varchar(191) NOT NULL,
  `paystack_currency_code` varchar(191) NOT NULL,
  `mollie_image` varchar(255) DEFAULT NULL,
  `paystack_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paystack_currency_id` int(11) NOT NULL DEFAULT 0,
  `mollie_currency_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paystack_and_mollies`
--

INSERT INTO `paystack_and_mollies` (`id`, `mollie_key`, `mollie_status`, `mollie_currency_rate`, `paystack_public_key`, `paystack_secret_key`, `paystack_currency_rate`, `paystack_status`, `mollie_country_code`, `mollie_currency_code`, `paystack_country_code`, `paystack_currency_code`, `mollie_image`, `paystack_image`, `created_at`, `updated_at`, `paystack_currency_id`, `mollie_currency_id`) VALUES
(1, 'test_HFc5UhscNSGD5jujawhtNFs3wM3B4n', 1, 1.38, 'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38', 'sk_test_77cb93329abbdc18104466e694c9f720a7d69c97', 460.49, 1, 'CA', 'CAD', 'US', 'USD', 'uploads/website-images/mollie-2024-04-23-05-03-41-6183.png', 'uploads/website-images/paystact-2024-02-14-07-58-38-3469.png', NULL, '2024-04-23 11:03:41', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `lang_code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'en', '<h4>1. What Are Privacy Policy?</h4>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown our printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriefss asbut also the on leap into a electironc typesetting, remaining as essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andeiss more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<h4>2. CARBAZ Terms and Conditions Examples</h4>\r\n<p>While it&rsquo;s not legally required for ecommerce websites to have a terms and conditions agreement, adding one will help protect your as sonline business.As terms and conditions are legally enforceable rules, they allow you to set standards for how users interact with your site. Here are some of the major abenefits of including terms and conditions on your ecommerce site:</p>\r\n<p>It has survived not only five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the obb1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop.</p>\r\n<h4>Features :</h4>\r\n<ul>\r\n<li>slim body with metal cover</li>\r\n<li>latest Intel Core i5-1135G7 processor (4 cores / 8 threads)</li>\r\n<li>8GB DDR4 RAM and fast 512GB PCIe SSD</li>\r\n<li>NVIDIA GeForce MX350 2GB GDDR5 graphics card backlit keyboard, touchpad with gesture support</li>\r\n</ul>\r\n<h4>3. Protect Your Property</h4>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown as printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriezcs but also the on leap into as eylectronic typesetting, remaining as essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraszvxet sheets containing Lorem Ipsum our spassages, andei more recently with a desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book. five centuries but also a the on leap into electronic typesetting, remaining essentially unchanged. It aswasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop our aspublishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<h4>4. What to Include in Terms and Conditions for Online Stores</h4>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the as1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five as centuries but also the on leap into as electronic ki typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of as Leitraset sheets containing Loriem Ipsum passages, our andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p>five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset as sheets containing Lorem Ipsum passages, andei more recently with desktop publishing software like Aldus PageMaker our as including versions of Loriem Ipsum to make a type our as specimen book. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets as containing Lorem Ipsum passages, andei more recently with a desktop publishing software like Aldus PageMaker including versions of Loremas Ipsum to make a type specimen book.</p>\r\n<h4>05.Pricing and Payment Terms</h4>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the as 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five as centuries but also as the on leap into electronic as typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release as of Letraset sheets containing Lorem Ipsum our spassages, andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p>five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing software like Aldus PageMaker our as including versions of Lorem aIpsum to make a type specimen our as book. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheetsasd containing Lorem Ipsum passages, andei more recentlysl with desktop publishing software like Aldus PageMaker including versions of Loremadfsfds Ipsum to make a type specimen book.</p>\r\n<p>It has survived not only five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the our 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing asou software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>', NULL, '2024-04-23 10:07:36'),
(36, 'hi', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">1. गोपनीयता नीति क्या हैं?\r\n\r\nलोरेम इप्सम केवल मुद्रण और टाइपसेटिंग उद्योग का नकली पाठ है। लोरेम इप्सम 1500 के दशक से ही उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात हमारे प्रिंटर ने एक प्रकार की गैली ली और उसे एक प्रकार की नमूना पुस्तक बनाने के लिए तैयार किया। यह न केवल पांच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टाइपसेटिंग में छलांग लगाने के बाद भी अनिवार्य रूप से अपरिवर्तित रहा है। यह 1960 के दशक में लोरेम इप्सम मार्ग वाले लेट्रासेट शीट के रिलीज के साथ लोकप्रिय नहीं हुआ था, और हाल ही में एल्डस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ लोरेम इप्सम के संस्करणों सहित एक प्रकार की नमूना पुस्तक बनाने के लिए लोकप्रिय हुआ।</span></pre>', '2024-02-24 22:06:13', '2024-02-28 00:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_payments`
--

CREATE TABLE `razorpay_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `razorpay_payments`
--

INSERT INTO `razorpay_payments` (`id`, `status`, `name`, `currency_rate`, `country_code`, `currency_code`, `description`, `image`, `color`, `key`, `secret_key`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 1, 'CARBAZ', 74.66, 'IN', 'INR', 'This is description', 'uploads/website-images/razorpay-2024-04-23-05-02-28-2782.png', '#95bb0c', 'rzp_test_K7CipNQYyyMPiS', 'zSBmNMorJrirOrnDrbOd1ALO', NULL, '2024-04-23 11:02:28', 2);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `agent_id`, `car_id`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(6, 21, 17, 24, 4, 'There are many variations of passages of Lorem Ipsum available, but the majoritys have su alteration in some form, by injected humour, or randomised words which don&#039;t.', 'enable', '2024-03-03 06:49:51', '2024-03-03 06:50:13'),
(7, 21, 17, 23, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'enable', '2024-03-03 06:54:16', '2024-03-03 06:55:25'),
(8, 21, 17, 21, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'enable', '2024-03-03 06:54:55', '2024-03-03 06:55:14'),
(9, 23, 17, 24, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'enable', '2024-03-03 06:59:22', '2024-03-03 07:00:54'),
(10, 23, 17, 23, 5, 'There are many variations of passages of Lorem Ipsum available, but the majoritys have su alteration in some form, by injected humour, or randomised words which don&#039;t.', 'enable', '2024-03-03 07:00:16', '2024-03-03 07:00:42'),
(12, 17, 24, 13, 5, 'There are many variations of passages of Lorem Ipsum available, but the majoritys have su alteration in some form, by injected humour, or randomised words which don&#039;t.', 'enable', '2024-03-03 07:07:21', '2024-03-03 07:07:46'),
(13, 17, 24, 14, 5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The as point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'disable', '2024-03-03 07:09:13', '2024-03-03 07:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `seo_keyword` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page_name`, `seo_keyword`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'inflaner', 'CARBAZ || Car listing & Car Rental Directory Laravel Script', '<p>Car listing &amp; Car Rental Directory Laravel Script</p>', '2023-09-12 05:43:51', '2024-04-23 12:56:32'),
(2, 'Blogs', 'inflaner', 'Our Blog ||  Car listing & Car Rental Directory Laravel Script', '<p>Car Listings &amp; Dealership Laravel Script</p>', '2023-09-12 05:43:51', '2024-04-23 12:59:21'),
(3, 'About Us', 'inflaner', 'About Us ||  Car listing & Car Rental Directory Laravel Script', '<p>Car Listings &amp; Dealership Laravel Script</p>', '2023-09-12 05:43:51', '2024-04-23 12:59:43'),
(4, 'Contact Us', 'inflaner', 'Contact Us || Car Listings & Dealership Laravel Script', '<p>Car Listings &amp; Dealership Laravel Script</p>', '2023-09-12 05:43:51', '2024-04-23 13:00:46'),
(5, 'FAQ', 'inflaner', 'FAQ || Car Listings & Dealership Laravel Script', '<p>Car Listings &amp; Dealership Laravel Script</p>', '2023-09-12 05:43:51', '2024-04-23 13:01:05'),
(6, 'Terms & Conditions', 'inflaner', 'CARBAZ || Car listing & Car Rental Directory Laravel Script', '<p>CARBAZ || Car listing &amp; Car Rental Directory Laravel Script</p>', '2023-09-12 05:43:51', '2024-04-23 13:02:13'),
(7, 'Privacy Policy', 'inflaner', 'CARBAZ || Car listing & Car Rental Directory Laravel Script', '<p>CARBAZ || Car listing &amp; Car Rental Directory Laravel Script</p>', '2023-09-12 05:43:51', '2024-04-23 13:02:26'),
(10, 'Listing', 'Listing', 'Listing || Car listing & Car Rental Directory Laravel Script', '<p>Car Listings &amp; Dealership Laravel Script</p>', '2023-09-12 05:43:51', '2024-04-23 13:03:33'),
(11, 'Dealers', 'Dealders', 'Dealers || Car listing & Car Rental Directory Laravel Script', '<p>Car Listings &amp; Dealership Laravel Script</p>', '2023-09-12 05:43:51', '2024-04-23 13:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `logo_2` varchar(255) DEFAULT NULL,
  `inner_logo` varchar(255) DEFAULT NULL,
  `home2_logo` varchar(255) DEFAULT NULL,
  `home2_logo2` varchar(255) DEFAULT NULL,
  `home3_logo` varchar(255) DEFAULT NULL,
  `home3_logo2` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) NOT NULL,
  `text_direction` varchar(255) NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `currency_icon` varchar(255) DEFAULT NULL,
  `currency_rate` varchar(255) DEFAULT NULL,
  `default_avatar` varchar(255) DEFAULT NULL,
  `selected_theme` varchar(255) NOT NULL DEFAULT 'theme_one',
  `currency_position` varchar(255) NOT NULL DEFAULT 'before_price',
  `commission_type` varchar(255) NOT NULL DEFAULT 'commission',
  `live_chat` varchar(255) NOT NULL DEFAULT 'disable',
  `app_version` varchar(255) NOT NULL DEFAULT 'Version - 1.1',
  `show_provider_contact_info` varchar(255) NOT NULL DEFAULT 'enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `footer_logo` varchar(255) NOT NULL,
  `contact_message_mail` varchar(255) DEFAULT NULL,
  `send_contact_message` varchar(255) NOT NULL DEFAULT 'enable',
  `save_contact_message` varchar(255) NOT NULL DEFAULT 'enable',
  `error_image` varchar(255) DEFAULT NULL,
  `breadcrumb_image` varchar(255) DEFAULT NULL,
  `placeholder_image` varchar(255) DEFAULT NULL,
  `preloader_status` varchar(10) NOT NULL DEFAULT 'disable',
  `login_page_bg` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `about_us` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `maintenance_status` int(11) NOT NULL DEFAULT 0,
  `maintenance_text` text DEFAULT NULL,
  `maintenance_image` varchar(255) DEFAULT NULL,
  `admin_login` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `logo`, `logo_2`, `inner_logo`, `home2_logo`, `home2_logo2`, `home3_logo`, `home3_logo2`, `favicon`, `text_direction`, `timezone`, `currency_name`, `currency_icon`, `currency_rate`, `default_avatar`, `selected_theme`, `currency_position`, `commission_type`, `live_chat`, `app_version`, `show_provider_contact_info`, `created_at`, `updated_at`, `footer_logo`, `contact_message_mail`, `send_contact_message`, `save_contact_message`, `error_image`, `breadcrumb_image`, `placeholder_image`, `preloader_status`, `login_page_bg`, `email`, `phone`, `about_us`, `address`, `copyright`, `twitter`, `instagram`, `linkedin`, `facebook`, `maintenance_status`, `maintenance_text`, `maintenance_image`, `admin_login`) VALUES
(1, 'CARBAZ', 'uploads/website-images/logo-2024-10-01-11-49-51-5358.png', 'uploads/website-images/logo2-2024-10-01-11-50-16-6248.png', 'uploads/website-images/inner_logo-2024-10-01-11-50-34-7185.png', 'uploads/website-images/home2-logo-2024-04-19-02-50-35-5557.png', 'uploads/website-images/home2-logo2-2024-04-19-02-50-35-5239.png', 'uploads/website-images/home2-logo-2024-04-19-02-53-21-5868.png', 'uploads/website-images/home2-logo2-2024-04-19-02-53-21-3685.png', 'uploads/website-images/favicon-2024-04-19-02-44-52-7716.png', '', 'Asia/Dhaka', 'USD', '$', NULL, 'uploads/website-images/default-avatar-2024-04-19-04-25-20-9701.png', 'all_theme', 'before_price', '', '', '2.0.0', '', NULL, '2025-02-18 11:37:28', 'uploads/website-images/logo-2023-08-22-09-14-55-4248.png', 'demo@gmail.com', 'enable', 'enable', 'uploads/website-images/error-image-2024-04-19-03-43-09-6477.png', 'uploads/website-images/breadcrumb-image-2024-04-25-06-10-19-8247.png', 'uploads/website-images/placeholder-image.png', 'enable', 'uploads/website-images/login-image-2024-02-13-06-26-34-3495.png', 'user@gmail.com', '123-343-4444', 'There are many variations of passages of Lorem Ipsum a majority have suffered alteration in some form, by injecte randomised words which.', 'Bazar West, Panthapath North, Dhaka 1215', 'Copyright 2024 QuomodoSoft. All Rights Reserved.', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com', 'https://www.facebook.com', 0, 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', 'uploads/website-images/maintenance-image-2024-04-20-10-59-01-4365.png', 'uploads/website-images/login-image-2024-02-28-06-20-42-7139.png');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_login_infos`
--

CREATE TABLE `social_login_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_facebook` int(11) NOT NULL DEFAULT 0,
  `facebook_client_id` text DEFAULT NULL,
  `facebook_secret_id` text DEFAULT NULL,
  `facebook_ca` text DEFAULT NULL,
  `is_gmail` int(11) NOT NULL DEFAULT 0,
  `gmail_client_id` text DEFAULT NULL,
  `gmail_secret_id` text DEFAULT NULL,
  `facebook_redirect_url` text DEFAULT NULL,
  `gmail_redirect_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_login_infos`
--

INSERT INTO `social_login_infos` (`id`, `is_facebook`, `facebook_client_id`, `facebook_secret_id`, `facebook_ca`, `is_gmail`, `gmail_client_id`, `gmail_secret_id`, `facebook_redirect_url`, `gmail_redirect_url`, `created_at`, `updated_at`) VALUES
(1, 0, '1844188565781706', 'f32f45abcf57a4dc23ac6f2b2e8e2241', NULL, 1, '673210704627-7uumvkn9e5o77119mpnh65eshef5311s.apps.googleusercontent.com', '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', 'http://localhost/callback/facebook', 'https://carbaz.minionionbd.com/callback/google', NULL, '2024-04-24 06:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payments`
--

CREATE TABLE `stripe_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `stripe_key` text DEFAULT NULL,
  `stripe_secret` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_rate` double NOT NULL,
  `image` text DEFAULT NULL,
  `currency_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_payments`
--

INSERT INTO `stripe_payments` (`id`, `status`, `stripe_key`, `stripe_secret`, `created_at`, `updated_at`, `country_code`, `currency_code`, `currency_rate`, `image`, `currency_id`) VALUES
(1, 1, 'pk_test_51JU61aF56Pb8BOOX5ucAe5DlDwAkCZyffqlKMDUWsAwhKbdtuY71VvIzr0NgFKjq4sOVVaaeeyVXXnNWwu5dKgeq00kMzCBUm5', 'sk_test_51JU61aF56Pb8BOOXlz7jGkzJsCkozuAoRlFJskYGsgunfaHLmcvKLubYRQLCQOuyYHq0mvjoBFLzV7d8F6q8f6Hv00CGwULEEV', NULL, '2024-04-23 11:01:10', 'US', 'USD', 1, 'uploads/website-images/stripe-2024-04-23-05-01-10-8424.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `verified_token` text DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_histories`
--

CREATE TABLE `subscription_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subscription_plan_id` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `plan_price` decimal(8,2) NOT NULL,
  `expiration_date` varchar(255) NOT NULL,
  `expiration` varchar(255) NOT NULL,
  `max_car` varchar(255) NOT NULL,
  `featured_car` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'inactive',
  `transaction` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_histories`
--

INSERT INTO `subscription_histories` (`id`, `order_id`, `user_id`, `subscription_plan_id`, `plan_name`, `plan_price`, `expiration_date`, `expiration`, `max_car`, `featured_car`, `status`, `payment_method`, `payment_status`, `transaction`, `created_at`, `updated_at`) VALUES
(22, '101056860', 17, 3, 'Free', 0.00, '2024-03-27', 'monthly', '5', '0', 'expired', 'Freemium', 'success', 'Freemium', '2024-01-31 21:16:26', '2024-09-23 10:15:26'),
(23, '1069222053', 17, 4, 'Premium', 50.00, '2025-02-25', 'yearly', '4', '2', 'expired', 'Paypal', 'success', 'ZUJKUEUDELUGE', '2024-01-31 21:36:18', '2024-09-23 10:15:26'),
(24, '195037142', 17, 5, 'Gold', 59.00, 'lifetime', 'lifetime', '50', '10', 'expired', 'Stripe', 'success', 'txn_3OnxohF56Pb8BOOX1uHBKdhk', '2024-02-25 21:37:39', '2024-09-23 10:15:26'),
(25, '208174828', 17, 5, 'Gold', 59.00, 'lifetime', 'lifetime', '50', '10', 'expired', 'Bank_Payment', 'success', 'Bank Name: Your bank name\r\nAccount Number: Your bank account number', '2024-02-25 21:38:56', '2024-09-23 10:15:26'),
(26, '883574320', 21, 3, 'Free', 0.00, '2024-04-01', 'monthly', '5', '0', 'expired', 'Freemium', 'success', 'Freemium', '2024-02-29 20:48:28', '2024-09-23 10:15:26'),
(27, '825700521', 21, 4, 'Premium', 50.00, '2025-03-02', 'yearly', '4', '2', 'expired', 'Paypal', 'success', 'ZUJKUEUDELUGE', '2024-02-29 20:55:59', '2024-09-23 10:15:26'),
(28, '231056354', 21, 4, 'Premium', 50.00, '2025-03-02', 'yearly', '4', '2', 'expired', 'Stripe', 'success', 'txn_3OplYcF56Pb8BOOX1oQDNewe', '2024-02-29 20:56:26', '2024-09-23 10:15:26'),
(29, '784045231', 23, 3, 'Free', 0.00, '2024-04-01', 'monthly', '5', '0', 'expired', 'Freemium', 'success', 'Freemium', '2024-03-01 21:01:16', '2024-09-23 10:15:26'),
(30, '165803428', 24, 3, 'Free', 0.00, '2024-04-01', 'monthly', '5', '0', 'expired', 'Freemium', 'success', 'Freemium', '2024-02-29 21:05:40', '2024-09-23 10:15:26'),
(31, '1583489512', 24, 4, 'Premium', 50.00, '2025-03-02', 'yearly', '4', '2', 'expired', 'Stripe', 'success', 'txn_3OplhtF56Pb8BOOX0lt0kxwX', '2024-03-01 21:06:01', '2024-09-23 10:15:26'),
(32, '827317765', 24, 5, 'Gold', 59.00, 'lifetime', 'lifetime', '50', '10', 'expired', 'Paypal', 'success', 'ZUJKUEUDELUGE', '2024-03-01 21:11:53', '2024-09-23 10:15:26'),
(33, '731928693', 21, 4, 'Premium', 50.00, '2025-03-02', 'yearly', '4', '2', 'expired', 'Stripe', 'success', 'txn_3OplobF56Pb8BOOX1bhye46A', '2024-03-01 21:12:57', '2024-09-23 10:15:26'),
(34, '1177432635', 17, 5, 'Gold', 59.00, 'lifetime', 'lifetime', '50', '10', 'expired', 'Paypal', 'success', 'ZUJKUEUDELUGE', '2024-03-02 16:25:20', '2024-09-23 10:15:26'),
(35, '395157728', 17, 5, 'Gold', 59.00, 'lifetime', 'lifetime', '50', '10', 'expired', 'Stripe', 'success', 'txn_3Oq8W7F56Pb8BOOX1d04Mn2Q', '2024-03-03 06:27:27', '2024-09-23 10:15:26'),
(36, '1560076617', 17, 5, 'Gold', 59.00, 'lifetime', 'lifetime', '50', '10', 'expired', 'Stripe', 'success', 'txn_3OqTnnF56Pb8BOOX0JaUiaU7', '2024-03-04 05:11:05', '2024-09-23 10:15:26'),
(37, '907491767', 17, 5, 'Gold', 59.00, 'lifetime', 'lifetime', '50', '10', 'expired', 'Paypal', 'success', 'ZUJKUEUDELUGE', '2024-03-04 05:12:14', '2024-09-23 10:15:26'),
(38, '1563881261', 17, 3, 'Free', 0.00, 'lifetime', 'lifetime', '100000', '0', 'expired', 'free_enrolled', 'success', 'free_enrolled', '2024-09-23 10:14:50', '2024-09-23 10:15:26'),
(39, '930303888', 17, 3, 'Free', 0.00, 'lifetime', 'lifetime', '100000', '0', 'active', 'free_enrolled', 'success', 'free_enrolled', '2024-09-23 10:15:26', '2024-09-23 10:15:26'),
(40, '1158470211', 21, 3, 'Free', 0.00, 'lifetime', 'lifetime', '100000', '0', 'active', 'free_enrolled', 'success', 'free_enrolled', '2024-09-23 10:15:26', '2024-09-23 10:15:26'),
(41, '396183239', 23, 3, 'Free', 0.00, 'lifetime', 'lifetime', '100000', '0', 'active', 'free_enrolled', 'success', 'free_enrolled', '2024-09-23 10:15:26', '2024-09-23 10:15:26'),
(42, '677219908', 24, 3, 'Free', 0.00, 'lifetime', 'lifetime', '100000', '0', 'active', 'free_enrolled', 'success', 'free_enrolled', '2024-09-23 10:15:26', '2024-09-23 10:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `plan_price` decimal(8,2) NOT NULL,
  `expiration_date` varchar(255) NOT NULL,
  `max_car` int(11) NOT NULL,
  `featured_car` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `serial` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `plan_name`, `plan_price`, `expiration_date`, `max_car`, `featured_car`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(3, 'Free', 0.00, 'lifetime', 100000, 0, 'active', 1, '2024-02-12 20:30:07', '2024-09-23 10:05:53'),
(4, 'Premium', 50.00, 'yearly', 4, 2, 'active', 2, '2024-02-12 20:30:26', '2024-02-21 02:16:52'),
(5, 'Gold', 59.00, 'lifetime', 50, 10, 'active', 3, '2024-02-12 20:31:11', '2024-02-12 20:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `tawk_chats`
--

CREATE TABLE `tawk_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_link` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tawk_chats`
--

INSERT INTO `tawk_chats` (`id`, `chat_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://embed.tawk.to/5a7c31ded7591465c7077c48/default', 1, NULL, '2024-04-23 11:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `term_and_conditions`
--

CREATE TABLE `term_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term_and_conditions`
--

INSERT INTO `term_and_conditions` (`id`, `lang_code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'en', '<h4>1. What Are Terms &amp; Conditions?</h4>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown our printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriefss asbut also the on leap into a electironc typesetting, remaining as essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andeiss more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<h4>2. CARBAZ Terms and Conditions Examples</h4>\r\n<p>While it&rsquo;s not legally required for ecommerce websites to have a terms and conditions agreement, adding one will help protect your as sonline business.As terms and conditions are legally enforceable rules, they allow you to set standards for how users interact with your site. Here are some of the major abenefits of including terms and conditions on your ecommerce site:</p>\r\n<p>It has survived not only five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the obb1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop.</p>\r\n<h4>Features :</h4>\r\n<ul>\r\n<li>slim body with metal cover</li>\r\n<li>latest Intel Core i5-1135G7 processor (4 cores / 8 threads)</li>\r\n<li>8GB DDR4 RAM and fast 512GB PCIe SSD</li>\r\n<li>NVIDIA GeForce MX350 2GB GDDR5 graphics card backlit keyboard, touchpad with gesture support</li>\r\n</ul>\r\n<h4>3. Protect Your Property</h4>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown as printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriezcs but also the on leap into as eylectronic typesetting, remaining as essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraszvxet sheets containing Lorem Ipsum our spassages, andei more recently with a desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book. five centuries but also a the on leap into electronic typesetting, remaining essentially unchanged. It aswasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop our aspublishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<h4>4. What to Include in Terms and Conditions for Online Stores</h4>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the as1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five as centuries but also the on leap into as electronic ki typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of as Leitraset sheets containing Loriem Ipsum passages, our andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p>five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset as sheets containing Lorem Ipsum passages, andei more recently with desktop publishing software like Aldus PageMaker our as including versions of Loriem Ipsum to make a type our as specimen book. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets as containing Lorem Ipsum passages, andei more recently with a desktop publishing software like Aldus PageMaker including versions of Loremas Ipsum to make a type specimen book.</p>\r\n<h4>05.Pricing and Payment Terms</h4>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the as 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five as centuries but also as the on leap into electronic as typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release as of Letraset sheets containing Lorem Ipsum our spassages, andei more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>\r\n<p>five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing software like Aldus PageMaker our as including versions of Lorem aIpsum to make a type specimen our as book. It wasn&rsquo;t popularised in the 1960s with the release of Letraset sheetsasd containing Lorem Ipsum passages, andei more recentlysl with desktop publishing software like Aldus PageMaker including versions of Loremadfsfds Ipsum to make a type specimen book.</p>\r\n<p>It has survived not only five centuries but also the on leap into electronic typesetting, remaining essentially unchanged. It wasn&rsquo;t popularised in the our 1960s with the release of Letraset sheets containing Lorem Ipsum passages, andei more recently with desktop publishing asou software like Aldus PageMaker including versions of Lorem Ipsum to make a type specimen book.</p>', NULL, '2024-04-23 10:07:26'),
(37, 'hi', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\" data-ved=\"2ahUKEwiE1LHw3s2EAxXD1zgGHYs0C1sQ3ewLegQIBRAU\"><span class=\"Y2IQFc\" lang=\"hi\">1. नियम एवं शर्तें क्या हैं?\r\n\r\nलोरेम इप्सम केवल मुद्रण और टाइपसेटिंग उद्योग का नकली पाठ है। लोरेम इप्सम 1500 के दशक से ही उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात हमारे प्रिंटर ने एक प्रकार की गैली ली और उसे एक प्रकार की नमूना पुस्तक बनाने के लिए तैयार किया। यह न केवल पांच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टाइपसेटिंग में छलांग लगाने के बाद भी अनिवार्य रूप से अपरिवर्तित रहा है। यह 1960 के दशक में लोरेम इप्सम मार्ग वाले लेट्रासेट शीट के रिलीज के साथ लोकप्रिय नहीं हुआ था, और हाल ही में एल्डस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ लोरेम इप्सम के संस्करणों सहित एक प्रकार की नमूना पुस्तक बनाने के लिए लोकप्रिय हुआ।</span></pre>', '2024-02-24 22:06:13', '2024-02-28 00:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(7, 'uploads/custom-images/rashaini-chan-20240423041955.png', 'active', '2024-02-28 01:46:05', '2024-04-23 10:19:55'),
(8, 'uploads/custom-images/nawyantong-20240423041946.png', 'active', '2024-02-28 01:47:29', '2024-04-23 10:19:46'),
(9, 'uploads/custom-images/sufankho-jhon-20240423041937.png', 'active', '2024-02-28 01:48:55', '2024-04-23 10:19:37'),
(10, 'uploads/custom-images/john-abraham-20240423041855.png', 'active', '2024-02-28 01:51:04', '2024-04-23 10:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_translations`
--

CREATE TABLE `testimonial_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(255) NOT NULL,
  `testimonial_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial_translations`
--

INSERT INTO `testimonial_translations` (`id`, `lang_code`, `testimonial_id`, `name`, `designation`, `comment`, `created_at`, `updated_at`) VALUES
(67, 'en', 7, 'Rashaini Chan', 'Web Developer', 'There are many variatoncs of passages as majority have suffered alteraton in some a randomised words which don\'t look a even to use a passage of Lorem as kIpsum, you embarrassing in the middle of text.', '2024-02-28 01:46:05', '2024-02-28 01:46:05'),
(68, 'hi', 7, 'राशैनी चान', 'वेब डेवलपर', 'अनुच्छेदों के कई रूप हैं क्योंकि अधिकांश को कुछ यादृच्छिक शब्दों में परिवर्तन का सामना करना पड़ा है, जो लोरेम के एक अंश को किप्सम के रूप में उपयोग करने के लिए भी नहीं दिखता है, आप पाठ के बीच में शर्मनाक हैं।', '2024-02-28 01:46:05', '2024-02-28 01:46:50'),
(69, 'en', 8, 'Nawyantong', 'Graphic Designer', 'There are many variatoncs of passages as majority have suffered alteraton in some a randomised words which don\'t look a even to use a passage of Lorem as kIpsum, you embarrassing in the middle of text.', '2024-02-28 01:47:29', '2024-02-28 01:47:29'),
(70, 'hi', 8, 'नव्यानतोंग', 'ग्राफिक डिजाइनर', 'अनुच्छेदों के कई रूप हैं क्योंकि अधिकांश को कुछ यादृच्छिक शब्दों में परिवर्तन का सामना करना पड़ा है, जो लोरेम के एक अंश को किप्सम के रूप में उपयोग करने के लिए भी नहीं दिखता है, आप पाठ के बीच में शर्मनाक हैं।', '2024-02-28 01:47:29', '2024-02-28 01:47:58'),
(71, 'en', 9, 'Sufankho Jhon', 'Web Designer', 'There are many variatoncs of passages as majority have suffered alteraton in some a randomised words which don\'t look a even to use a passage of Lorem as kIpsum, you embarrassing in the middle of text.', '2024-02-28 01:48:55', '2024-02-28 01:48:55'),
(72, 'hi', 9, 'सुफ़ानखो झोन', 'वेब डिजाइनर', 'अनुच्छेदों के कई रूप हैं क्योंकि अधिकांश को कुछ यादृच्छिक शब्दों में परिवर्तन का सामना करना पड़ा है, जो लोरेम के एक अंश को किप्सम के रूप में उपयोग करने के लिए भी नहीं दिखता है, आप पाठ के बीच में शर्मनाक हैं।', '2024-02-28 01:48:55', '2024-02-28 01:49:23'),
(73, 'en', 10, 'John Abraham', 'Real Estate Broker', 'There are many variatoncs of passages as majority have suffered alteraton in some a randomised words which don\'t look a even to use a passage of Lorem as kIpsum, you embarrassing in the middle of text.', '2024-02-28 01:51:04', '2024-02-28 01:51:21'),
(74, 'hi', 10, 'जॉन अब्राहम', 'रियल एस्टेट ब्रोकर', 'अनुच्छेदों के कई रूप हैं क्योंकि अधिकांश को कुछ यादृच्छिक शब्दों में परिवर्तन का सामना करना पड़ा है, जो लोरेम के एक अंश को किप्सम के रूप में उपयोग करने के लिए भी नहीं दिखता है, आप पाठ के बीच में शर्मनाक हैं।', '2024-02-28 01:51:04', '2024-02-28 01:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `about_me` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `sunday` varchar(255) DEFAULT NULL,
  `monday` varchar(255) DEFAULT NULL,
  `tuesday` varchar(255) DEFAULT NULL,
  `wednesday` varchar(255) DEFAULT NULL,
  `thursday` varchar(255) DEFAULT NULL,
  `friday` varchar(255) DEFAULT NULL,
  `saturday` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `verification_otp` varchar(255) DEFAULT NULL,
  `forget_password_otp` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_token` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `forget_password_token` varchar(255) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'disable',
  `is_banned` varchar(10) NOT NULL DEFAULT 'no',
  `image` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `is_dealer` int(1) NOT NULL DEFAULT 0,
  `kyc_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `banner_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `username`, `address`, `country`, `designation`, `about_me`, `google_map`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `email`, `verification_otp`, `forget_password_otp`, `email_verified_at`, `verification_token`, `password`, `remember_token`, `forget_password_token`, `status`, `is_banned`, `image`, `facebook`, `twitter`, `instagram`, `linkedin`, `created_at`, `updated_at`, `provider`, `provider_id`, `is_dealer`, `kyc_status`, `banner_image`) VALUES
(17, 'John Doe', '123-343-4444', 'john-doe-20240226', 'Los Angeles, CA, USA', NULL, 'Web Developer', 'There are many variations of passages of Lorem Ipsum available, our a but the majority have suffered hello alteration in some form, by injected ha humour, or randomised words which don&#039;t look even slightly believable.', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701237009812!5m2!1sen!2sbd', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', 'Off-day', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', 'user@gmail.com', NULL, NULL, '2024-02-25 20:55:26', NULL, '$2y$10$Jx.YTl2xLbuKzp84wjNGQuAmt3wvHpU6Sr9qlcitkHcZyK/PFdTPG', NULL, NULL, 'enable', 'no', 'uploads/custom-images/john-doe-2024-04-24-10-21-09-7205.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com', '2024-02-25 20:53:47', '2024-04-24 04:21:09', NULL, NULL, 1, 'disable', NULL),
(21, 'Daniel Paul', '123-874-6548', 'daniel-paul-20240302024140', 'Los Angeles, CA, USA', NULL, 'Web Developer', 'There are many variations of passages of Lorem Ipsum available, our a but the majority have suffered hello alteration in some form, by injected ha humour, or randomised words which don&#039;t look even slightly believable.', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701237009812!5m2!1sen!2sbd', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', 'Off-day', '09:30 AM - 06:00 PM', 'Off-day', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', 'user2@gmail.com', NULL, NULL, '2024-03-01 20:42:27', NULL, '$2y$10$Xe2BDqDJF9dfcvq/fjTuZ.mgg4MdWDMzS/s5gAgUMQGu7gmaENy/m', NULL, NULL, 'enable', 'no', 'uploads/custom-images/daniel-paul-2024-03-02-02-47-59-5305.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com', '2024-03-01 20:41:40', '2024-03-01 20:48:28', NULL, NULL, 1, 'disable', NULL),
(23, 'David Simmons', '123-874-6548', 'david-simmons-20240302024035', 'Los Angeles, CA, USA', NULL, 'Web Developer', 'There are many variations of passages of Lorem Ipsum available, our a but the majority have suffered hello alteration in some form, by injected ha humour, or randomised words which don&#039;t look even slightly believable.', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701237009812!5m2!1sen!2sbd', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', 'Off-day', '09:30 AM - 06:00 PM', 'Off-day', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', 'user3@gmail.com', NULL, NULL, '2024-03-01 20:42:27', NULL, '$2y$10$Xe2BDqDJF9dfcvq/fjTuZ.mgg4MdWDMzS/s5gAgUMQGu7gmaENy/m', NULL, NULL, 'enable', 'no', 'uploads/custom-images/david-simmons-2024-03-02-03-01-05-4473.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com', '2024-03-01 20:41:40', '2024-03-09 08:36:21', NULL, NULL, 1, 'disable', NULL),
(24, 'David Richard', '123-874-6548', 'david-richard-20240302021933', 'Los Angeles, CA, USA', NULL, 'Web Developer', 'There are many variations of passages of Lorem Ipsum available, our a but the majority have suffered hello alteration in some form, by injected ha humour, or randomised words which don&#039;t look even slightly believable.', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.579502735794!2d90.36542960000001!3d23.82233695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1701237009812!5m2!1sen!2sbd', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', 'Off-day', '09:30 AM - 06:00 PM', 'Off-day', '09:30 AM - 06:00 PM', '09:30 AM - 06:00 PM', 'user4@gmail.com', NULL, NULL, '2024-03-01 20:42:27', NULL, '$2y$10$Xe2BDqDJF9dfcvq/fjTuZ.mgg4MdWDMzS/s5gAgUMQGu7gmaENy/m', NULL, NULL, 'enable', 'no', 'uploads/custom-images/david-richard-2024-03-02-03-06-20-2421.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.linkedin.com', '2024-03-01 20:41:40', '2024-03-01 21:06:20', NULL, NULL, 1, 'disable', NULL),
(27, 'Junaid Siddik', NULL, 'junaid-siddik-20250218054456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'junaid235@gmail.com', '222754', NULL, NULL, NULL, '$2y$10$XFVA1JZYItOmT.hzo3LjEOC.TqVbH/GMYV3QjYtVdbw/wGRhPV.1q', NULL, NULL, 'enable', 'no', NULL, NULL, NULL, NULL, NULL, '2025-02-18 11:44:56', '2025-02-18 11:44:56', NULL, NULL, 0, 'disable', NULL),
(28, 'Junaid Siddik', NULL, 'junaid-siddik-20250218054553', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'junaid2335@gmail.com', '764972', NULL, NULL, NULL, '$2y$10$AFfVuYIyjjyvYMCIotv9Oe/WAAQ8r8adEEv1N6AHLCW4ouLrszvS2', NULL, NULL, 'enable', 'no', NULL, NULL, NULL, NULL, NULL, '2025-02-18 11:45:53', '2025-02-18 11:45:53', NULL, NULL, 0, 'disable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `car_id`, `created_at`, `updated_at`) VALUES
(15, 17, 13, '2024-04-24 04:34:27', '2024-04-24 04:34:27'),
(16, 17, 14, '2024-04-24 04:34:30', '2024-04-24 04:34:30'),
(17, 17, 16, '2024-04-24 04:34:33', '2024-04-24 04:34:33'),
(18, 17, 19, '2024-04-24 04:34:40', '2024-04-24 04:34:40'),
(19, 17, 22, '2024-04-24 04:34:44', '2024-04-24 04:34:44'),
(20, 17, 24, '2024-04-24 04:34:48', '2024-04-24 04:34:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_us_translations`
--
ALTER TABLE `about_us_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `ads_banners`
--
ALTER TABLE `ads_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_payments`
--
ALTER TABLE `bank_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_sliders`
--
ALTER TABLE `banner_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_galleries`
--
ALTER TABLE `car_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_translations`
--
ALTER TABLE `car_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compare_lists`
--
ALTER TABLE `compare_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_translations`
--
ALTER TABLE `contact_us_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_page_translations`
--
ALTER TABLE `custom_page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_translates`
--
ALTER TABLE `faq_translates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_translations`
--
ALTER TABLE `feature_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_translations`
--
ALTER TABLE `home_page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_information`
--
ALTER TABLE `kyc_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_types`
--
ALTER TABLE `kyc_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_currencies`
--
ALTER TABLE `multi_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_login_infos`
--
ALTER TABLE `social_login_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_histories`
--
ALTER TABLE `subscription_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term_and_conditions`
--
ALTER TABLE `term_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us_translations`
--
ALTER TABLE `about_us_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ads_banners`
--
ALTER TABLE `ads_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bank_payments`
--
ALTER TABLE `bank_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_sliders`
--
ALTER TABLE `banner_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `car_galleries`
--
ALTER TABLE `car_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `car_translations`
--
ALTER TABLE `car_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `compare_lists`
--
ALTER TABLE `compare_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us_translations`
--
ALTER TABLE `contact_us_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `custom_page_translations`
--
ALTER TABLE `custom_page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `faq_translates`
--
ALTER TABLE `faq_translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `feature_translations`
--
ALTER TABLE `feature_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_page_translations`
--
ALTER TABLE `home_page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyc_information`
--
ALTER TABLE `kyc_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyc_types`
--
ALTER TABLE `kyc_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `multi_currencies`
--
ALTER TABLE `multi_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_login_infos`
--
ALTER TABLE `social_login_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscription_histories`
--
ALTER TABLE `subscription_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `term_and_conditions`
--
ALTER TABLE `term_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
