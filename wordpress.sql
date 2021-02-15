-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 14 Février 2021 à 21:19
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1
-- Version de PHP :  7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://blog.thecolek.com/', 'yes'),
(2, 'home', 'http://blog.thecolek.com/', 'yes'),
(3, 'blogname', 'Colek', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vitaleyohann@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', '', 'yes'),
(20, 'default_ping_status', '', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '1', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:99:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:29:\"pdf-embedder/pdf_embedder.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'materialis', 'yes'),
(41, 'stylesheet', 'materialis', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1623765742', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'fr_CA', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:24:\"materialis_pages_sidebar\";a:0:{}s:17:\"first_box_widgets\";a:0:{}s:18:\"second_box_widgets\";a:0:{}s:17:\"third_box_widgets\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:5:{i:1613358143;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613397743;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1613397753;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613743343;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1612270791;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(155, 'w3tc_state', '{\"common.install\":1608214531,\"common.install_version\":\"2.0.0\",\"license.status\":\"no_key\",\"license.next_check\":1609216253,\"license.terms\":\"\",\"license.community_terms\":\"accept\",\"minify.hide_minify_help\":true,\"common.show_note.flush_posts_needed\":false,\"common.show_note.flush_posts_needed.timestamp\":1608215201,\"common.show_note.plugins_updated\":false,\"common.show_note.plugins_updated.timestamp\":1608215201,\"common.hide_note_wp_content_permissions\":\"true\"}', 'no'),
(156, 'recently_activated', 'a:3:{s:25:\"pdf-poster/pdf-poster.php\";i:1612543634;s:47:\"google-drive-embedder/google_drive_embedder.php\";i:1612272437;s:39:\"google-apps-login/google_apps_login.php\";i:1612272435;}', 'yes'),
(157, 'w3tc_extensions_hooks', '{\"actions\":[],\"filters\":[],\"next_check_date\":1608870655}', 'yes'),
(160, 'w3tc_setupguide_completed', '1608214592', 'no'),
(161, 'w3tc_generic_widgetservices', '{\"content\":{\"items\":[{\"name\":\"Premium Support Response (Usually <1h First Response)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Premium Support Response (Usually <1h First Response)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Plugin Configuration\",\"parameter_name\":\"field4\",\"parameter_value\":\"Plugin Configuration\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"SSL Performance Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"SSL Performance Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Full Site Delivery Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"Full Site Delivery Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Hosting Environment Troubleshooting\",\"parameter_name\":\"field4\",\"parameter_value\":\"Hosting Environment Troubleshooting\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Monitoring\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Monitoring\",\"form_hash\":\"m5pom8z0qy59rm\"}],\"ui_strings\":{\"cdn.maxcdn.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.maxcdn.signUpAndSave.description\":\"MaxCDN is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"cdn.stackpath.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now and save!\",\"cdn.stackpath2.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath2.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"minify.general.header\":\"Reduce load time by decreasing the size and number of <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym> and <acronym title=\'JavaScript\'>JS<\\/acronym> files. Automatically remove unncessary data from <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym>, <acronym title=\'JavaScript\'>JS<\\/acronym>, feed, page and post <acronym title=\'Hypertext Markup Language\'>HTML<\\/acronym>.\",\"newrelic.general.header\":\"New Relic may not be installed or not active on this server. <a href=\'%s\' target=\'_blank\'>Sign up for a (free) account<\\/a>. Visit <a href=\'%s\' target=\'_blank\'>New Relic<\\/a> for installation instructions.\",\"reverseproxy.general.header\":\"A reverse proxy adds scale to an server by handling requests before WordPress does. Purge settings are set on the <a href=\'%s\'>Page Cache settings<\\/a> page and <a href=\'%s\'>Browser Cache settings<\\/a> are set on the browser cache settings page.\",\"cdnfsd.general.header\":\"Host the entire website with your compatible <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> provider to reduce page load time.\",\"cdn.general.header\":\"Host static files with your <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> to reduce page load time.\",\"cdn.stackpath.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.works_magically\":\"StackPath works magically with W3 Total Cache.\",\"cdn.stackpath.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\",\"cdn.stackpath2.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\"}},\"expires\":1608839296}', 'no'),
(176, 'w3tc_minify', '{\"0cfd5.js\":[\"wp-includes\\/js\\/hoverintent-js.min.js\",\"wp-includes\\/js\\/admin-bar.min.js\",\"wp-content\\/themes\\/twentytwentyone\\/assets\\/js\\/polyfills.js\",\"wp-content\\/themes\\/twentytwentyone\\/assets\\/js\\/responsive-embeds.js\",\"wp-includes\\/js\\/wp-embed.min.js\"],\"37929.css\":[\"wp-includes\\/css\\/dashicons.min.css\",\"wp-includes\\/css\\/admin-bar.min.css\"],\"91090.css\":[\"wp-includes\\/css\\/dist\\/block-library\\/style.min.css\",\"wp-includes\\/css\\/dist\\/block-library\\/theme.min.css\",\"wp-content\\/themes\\/twentytwentyone\\/style.css\"],\"0bea9.js\":[\"wp-content\\/themes\\/twentytwentyone\\/assets\\/js\\/polyfills.js\",\"wp-content\\/themes\\/twentytwentyone\\/assets\\/js\\/responsive-embeds.js\",\"wp-includes\\/js\\/wp-embed.min.js\"],\"4753b.js\":[\"wp-includes\\/js\\/comment-reply.min.js\",\"wp-content\\/themes\\/twentytwentyone\\/assets\\/js\\/polyfills.js\",\"wp-content\\/themes\\/twentytwentyone\\/assets\\/js\\/responsive-embeds.js\",\"wp-includes\\/js\\/wp-embed.min.js\"],\"5dc46.css\":[\"wp-includes\\/css\\/dist\\/block-library\\/style.min.css\",\"wp-includes\\/css\\/dist\\/block-library\\/theme.min.css\",\"wp-content\\/themes\\/twentytwentyone\\/assets\\/css\\/ie.css\"]}', 'no'),
(223, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":2}', 'yes'),
(2303, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(2305, 'theme_mods_materialis', 'a:6:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:20:\"theme_default_preset\";s:11:\"dark-purple\";s:12:\"header_title\";s:26:\"Portfolio de Yohann Vitale\";s:22:\"header_content_buttons\";a:2:{i:0;a:4:{s:5:\"label\";s:16:\"Curriculum vitae\";s:3:\"url\";s:43:\"https://blog.thecolek.com/curriculum-vitae/\";s:6:\"target\";s:5:\"_self\";s:5:\"class\";s:47:\"button btn-default big color1 mdc-elevation--z3\";}i:1;a:4:{s:5:\"label\";s:8:\"A propos\";s:3:\"url\";s:40:\"https://blog.thecolek.com/page-a-propos/\";s:6:\"target\";s:5:\"_self\";s:5:\"class\";s:54:\"button btn-default big white outline mdc-elevation--z3\";}}s:23:\"header_front_page_image\";s:75:\"http://blog.thecolek.com/wp-content/uploads/2021/02/cegep-matane-entree.jpg\";}', 'yes'),
(2309, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6.1-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.6\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-rollback-0.zip\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.6\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1613354571;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}', 'no'),
(2450, 'category_children', 'a:0:{}', 'yes'),
(2482, 'current_theme', 'Materialis', 'yes'),
(2483, 'theme_switched', '', 'yes'),
(2491, 'poweredby', 'off', 'no'),
(2494, 'pdfemb', 'a:6:{s:12:\"pdfemb_width\";s:3:\"max\";s:13:\"pdfemb_height\";s:3:\"max\";s:14:\"pdfemb_toolbar\";s:6:\"bottom\";s:19:\"pdfemb_toolbarfixed\";s:3:\"off\";s:14:\"pdfemb_version\";s:5:\"4.6.1\";s:9:\"poweredby\";s:3:\"off\";}', 'yes'),
(2509, 'galogin', 'a:11:{s:11:\"ga_clientid\";s:39:\"https://drive.google.com/drive/my-drive\";s:15:\"ga_clientsecret\";s:39:\"https://drive.google.com/drive/my-drive\";s:24:\"ga_ms_usesubsitecallback\";b:0;s:20:\"ga_force_permissions\";b:0;s:13:\"ga_auto_login\";b:0;s:12:\"ga_poweredby\";b:1;s:13:\"ga_rememberme\";b:0;s:23:\"btn_google_signin_image\";s:32:\"btn_google_signin_dark_focus_web\";s:18:\"ga_loginbuttontext\";s:0:\"\";s:14:\"ga_domainadmin\";s:0:\"\";s:10:\"ga_version\";s:5:\"3.4.3\";}', 'no'),
(2530, '__materialis_cached_values__', 'a:2:{s:23:\"materialis_google_fonts\";s:186:\"https://fonts.googleapis.com/css?family=Roboto:300,300italic,400,400italic,500,500italic,700,700italic,900,900italic%7CPlayfair Display:400,400italic,700,700italic&subset=latin,latin-ext\";s:40:\"materialis_cached_kirki_style_materialis\";s:808:\".header-homepage{background-position:center bottom;}.header{background-position:center center;}.header-homepage.color-overlay:before{background:#181818;}.header-homepage .background-overlay,.header-homepage.color-overlay::before{opacity:0.4;}.header.color-overlay:before{background:#181818;}.header .background-overlay,.header.color-overlay::before{opacity:0.4;}.header-homepage .hero-title{color:#ffffff;}.header-homepage .header-description-row{padding-top:20%;padding-bottom:24%;}.inner-header-description{padding-top:10%;padding-bottom:10%;}@media screen and (max-width:767px){.header-homepage .header-description-row{padding-top:10%;padding-bottom:10%;}}@media only screen and (min-width: 768px){.header-content .align-holder{width:85%!important;}.inner-header-description{text-align:center!important;}}\";}', 'yes'),
(2572, 'auto_core_update_failed', 'a:6:{s:9:\"attempted\";s:5:\"5.6.1\";s:7:\"current\";s:3:\"5.6\";s:10:\"error_code\";s:32:\"copy_failed_for_update_core_file\";s:10:\"error_data\";s:33:\"wp-admin/includes/update-core.php\";s:9:\"timestamp\";i:1612404598;s:5:\"retry\";b:0;}', 'no'),
(2573, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:4:\"fail\";s:5:\"email\";s:22:\"vitaleyohann@gmail.com\";s:7:\"version\";s:5:\"5.6.1\";s:9:\"timestamp\";i:1612404598;}', 'no'),
(2720, '_site_transient_timeout_browser_fd1885f00291b83c2cb49a9bbb9a909a', '1613377716', 'no'),
(2721, '_site_transient_browser_fd1885f00291b83c2cb49a9bbb9a909a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.169\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2732, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613354572;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.8\";s:9:\"hello.php\";s:5:\"1.7.2\";s:29:\"pdf-embedder/pdf_embedder.php\";s:5:\"4.6.1\";s:25:\"pdf-poster/pdf-poster.php\";s:5:\"1.6.3\";s:26:\"wp-lastweets/lastweets.php\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"pdf-embedder/pdf_embedder.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/pdf-embedder\";s:4:\"slug\";s:12:\"pdf-embedder\";s:6:\"plugin\";s:29:\"pdf-embedder/pdf_embedder.php\";s:11:\"new_version\";s:5:\"4.6.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/pdf-embedder/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/pdf-embedder.4.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/pdf-embedder/assets/icon-256x256.png?rev=2292517\";s:2:\"1x\";s:65:\"https://ps.w.org/pdf-embedder/assets/icon-128x128.png?rev=2292517\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/pdf-embedder/assets/banner-1544x500.png?rev=2292517\";s:2:\"1x\";s:67:\"https://ps.w.org/pdf-embedder/assets/banner-772x250.png?rev=2292517\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"pdf-poster/pdf-poster.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/pdf-poster\";s:4:\"slug\";s:10:\"pdf-poster\";s:6:\"plugin\";s:25:\"pdf-poster/pdf-poster.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/pdf-poster/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/pdf-poster.1.6.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/pdf-poster/assets/icon-128x128.png?rev=2065896\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/pdf-poster/assets/banner-772x250.png?rev=2065896\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(2854, '_site_transient_timeout_php_check_2bd835122fdc4f0e2ce94cd2e6f48f9d', '1613745704', 'no'),
(2855, '_site_transient_php_check_2bd835122fdc4f0e2ce94cd2e6f48f9d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2916, '_site_transient_timeout_theme_roots', '1613356372', 'no'),
(2917, '_site_transient_theme_roots', 'a:4:{s:10:\"materialis\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(2918, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613354572;s:7:\"checked\";a:4:{s:10:\"materialis\";s:6:\"1.1.14\";s:14:\"twentynineteen\";s:3:\"1.8\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:10:\"materialis\";a:6:{s:5:\"theme\";s:10:\"materialis\";s:11:\"new_version\";s:6:\"1.1.14\";s:3:\"url\";s:40:\"https://wordpress.org/themes/materialis/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/materialis.1.1.14.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1611774245:1'),
(4, 6, '_wp_attached_file', '2021/01/entree.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1163;s:4:\"file\";s:18:\"2021/01/entree.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"entree-300x218.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"entree-1024x744.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:744;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"entree-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"entree-768x558.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:558;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"entree-1536x1116.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1116;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"entree-1568x1140.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 7, '_wp_attached_file', '2021/01/cegep-matane-entree.jpg'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1250;s:6:\"height\";i:703;s:4:\"file\";s:31:\"2021/01/cegep-matane-entree.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cegep-matane-entree-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"cegep-matane-entree-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cegep-matane-entree-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"cegep-matane-entree-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 5, '_customize_restore_dismissed', '1'),
(9, 8, '_edit_lock', '1611779540:1'),
(12, 2, '_wp_trash_meta_status', 'publish'),
(13, 2, '_wp_trash_meta_time', '1612213068'),
(14, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(15, 3, '_wp_trash_meta_status', 'draft'),
(16, 3, '_wp_trash_meta_time', '1612213070'),
(17, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(21, 13, '_edit_lock', '1612213523:2'),
(24, 15, '_edit_lock', '1612281067:1'),
(25, 18, '_edit_lock', '1612270941:1'),
(26, 19, '_wp_attached_file', '2021/02/cegep-matane-entree.jpg'),
(27, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1250;s:6:\"height\";i:703;s:4:\"file\";s:31:\"2021/02/cegep-matane-entree.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cegep-matane-entree-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"cegep-matane-entree-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cegep-matane-entree-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"cegep-matane-entree-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"cegep-matane-entree-1232x693.jpg\";s:5:\"width\";i:1232;s:6:\"height\";i:693;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 20, '_wp_attached_file', '2021/02/entree.jpg'),
(29, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1163;s:4:\"file\";s:18:\"2021/02/entree.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"entree-300x218.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"entree-1024x744.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:744;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"entree-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"entree-768x558.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:558;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"entree-1536x1116.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1116;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"entree-1232x896.jpg\";s:5:\"width\";i:1232;s:6:\"height\";i:896;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"materialis-full-hd\";a:4:{s:4:\"file\";s:20:\"entree-1486x1080.jpg\";s:5:\"width\";i:1486;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 18, '_wp_trash_meta_status', 'publish'),
(31, 18, '_wp_trash_meta_time', '1612270973'),
(32, 21, '_edit_lock', '1612275442:1'),
(34, 24, '_wp_trash_meta_status', 'publish'),
(35, 24, '_wp_trash_meta_time', '1612271213'),
(40, 31, '_edit_lock', '1612277007:1'),
(41, 31, '_edit_last', '1'),
(42, 31, 'meta-image', 'http://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx.pdf'),
(44, 32, '_wp_trash_meta_status', 'publish'),
(45, 32, '_wp_trash_meta_time', '1612275293'),
(47, 21, '_wp_trash_meta_status', 'publish'),
(48, 21, '_wp_trash_meta_time', '1612275586'),
(49, 21, '_wp_desired_post_slug', 'curriculum-vitae'),
(50, 36, '_edit_lock', '1612825316:1'),
(52, 37, '_wp_attached_file', '2021/02/CV_yohann2020.docx.pdf'),
(53, 31, 'pdfp_onei_pp_height', '1122'),
(54, 39, '_wp_attached_file', '2021/02/CV_yohann2020.docx_1.jpg'),
(55, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1242;s:6:\"height\";i:1756;s:4:\"file\";s:32:\"2021/02/CV_yohann2020.docx_1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"CV_yohann2020.docx_1-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"CV_yohann2020.docx_1-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"CV_yohann2020.docx_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"CV_yohann2020.docx_1-768x1086.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"CV_yohann2020.docx_1-1086x1536.jpg\";s:5:\"width\";i:1086;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"CV_yohann2020.docx_1-1232x1742.jpg\";s:5:\"width\";i:1232;s:6:\"height\";i:1742;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"materialis-full-hd\";a:4:{s:4:\"file\";s:33:\"CV_yohann2020.docx_1-764x1080.jpg\";s:5:\"width\";i:764;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 41, '_wp_trash_meta_status', 'publish'),
(57, 41, '_wp_trash_meta_time', '1612278229'),
(58, 42, '_wp_trash_meta_status', 'publish'),
(59, 42, '_wp_trash_meta_time', '1612278265'),
(60, 44, '_edit_lock', '1612278242:1'),
(63, 46, '_wp_trash_meta_status', 'publish'),
(64, 46, '_wp_trash_meta_time', '1612278404'),
(65, 15, '_edit_last', '1'),
(66, 15, '_wp_page_template', 'default'),
(67, 49, '_wp_attached_file', '2021/02/k.xzcjbnjklhbkjsfjkbncgxjkl.jpg'),
(68, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:608;s:6:\"height\";i:1080;s:4:\"file\";s:39:\"2021/02/k.xzcjbnjklhbkjsfjkbncgxjkl.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"k.xzcjbnjklhbkjsfjkbncgxjkl-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"k.xzcjbnjklhbkjsfjkbncgxjkl-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"k.xzcjbnjklhbkjsfjkbncgxjkl-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 15, '_thumbnail_id', '53'),
(70, 50, '_wp_trash_meta_status', 'publish'),
(71, 50, '_wp_trash_meta_time', '1612280003'),
(72, 52, '_wp_trash_meta_status', 'publish'),
(73, 52, '_wp_trash_meta_time', '1612280039'),
(74, 53, '_wp_attached_file', '2021/02/iceland-2111810_1920.jpg'),
(75, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:880;s:6:\"height\";i:609;s:4:\"file\";s:32:\"2021/02/iceland-2111810_1920.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"iceland-2111810_1920-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"iceland-2111810_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"iceland-2111810_1920-768x531.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 44, '_wp_trash_meta_status', 'publish'),
(77, 44, '_wp_trash_meta_time', '1612280340'),
(78, 44, '_wp_desired_post_slug', 'cv'),
(79, 13, '_wp_trash_meta_status', 'publish'),
(80, 13, '_wp_trash_meta_time', '1612280340'),
(81, 13, '_wp_desired_post_slug', 'test'),
(82, 56, '_edit_lock', '1612281066:1'),
(83, 57, '_wp_attached_file', '2021/02/images.jpg'),
(84, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2021/02/images.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 56, '_thumbnail_id', '57'),
(89, 63, '_edit_lock', '1612444812:1'),
(90, 63, '_thumbnail_id', '57'),
(91, 56, '_wp_trash_meta_status', 'publish'),
(92, 56, '_wp_trash_meta_time', '1612445001'),
(93, 56, '_wp_desired_post_slug', 'mes-objectifs'),
(97, 73, '_wp_attached_file', '2021/02/CV_Yohann_Vitale.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(13, 2, '2021-02-01 21:07:25', '2021-02-01 21:07:25', '', 'Test', '', 'trash', 'open', 'open', '', 'test__trashed', '', '', '2021-02-02 15:39:00', '2021-02-02 15:39:00', '', 0, 'http://blog.thecolek.com/?p=13', 0, 'post', '', 0),
(14, 2, '2021-02-01 21:07:25', '2021-02-01 21:07:25', '', 'Test', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-02-01 21:07:25', '2021-02-01 21:07:25', '', 13, 'https://blog.thecolek.com/non-classe/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2021-02-01 21:08:01', '2021-02-01 21:08:01', '<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":49,\"mediaType\":\"image\",\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top\"><figure class=\"wp-block-media-text__media\"><img src=\"http://blog.thecolek.com/wp-content/uploads/2021/02/k.xzcjbnjklhbkjsfjkbncgxjkl-576x1024.jpg\" alt=\"\" class=\"wp-image-49 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph -->\n<p>Bonjour, je m\'appel Yohann Vitale j\'ai 22ans. Cela fais maintenant presque 4 ans que je vie au Québec seul. Je n\'ai pas peur de relever des défis.<br>Je suis une personne très persévérante, je n\'aime pas aussi ne pas finir ce que j\'ai commencer. Je me trouve assez bon en montage de LEGO, donc je trouve que l\'architecture et fait pour moi, car j\'arrive a bien rassembler différente classe pour les fonctionnaient entre elles.<br>Je suis une personne rigoureuse, et organisé. Je pense que l\'organisation et très important dans ce domaine.<br>Je sais utiliser plusieurs type de langage, même si je tire plus facilement mon épingle du jeu en Java car beaucoup plus pratique.<br>Malgré mes études en informatique je pense quitter le monde de l\'informatique. J\'aimerais travailler avec des personne attend d\'handicape,<br>car je pense que c\'est personnes on beaucoup a me donné, leurs vision du monde, leurs expérience etc …. quant a moi, je pense que je peux aussi leurs apporte ma vision du monde et mes expériences dans celui-ci.</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'A propos', '', 'publish', 'closed', 'closed', '', 'page-a-propos', '', '', '2021-02-02 15:38:07', '2021-02-02 15:38:07', '', 0, 'http://blog.thecolek.com/?page_id=15', 0, 'page', '', 0),
(16, 2, '2021-02-01 21:08:01', '2021-02-01 21:08:01', '', 'Page Test', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-02-01 21:08:01', '2021-02-01 21:08:01', '', 15, 'https://blog.thecolek.com/non-classe/15-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2021-02-02 13:02:53', '2021-02-02 13:02:53', '{\n    \"materialis::header_title\": {\n        \"value\": \"Portfolio de Yohann Vitale\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 13:01:10\"\n    },\n    \"materialis::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Curriculum vitae\",\n                \"url\": \"#\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big color1 mdc-elevation--z3\"\n            },\n            {\n                \"label\": \"A propos\",\n                \"url\": \"#\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big white outline mdc-elevation--z3\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 13:02:21\"\n    },\n    \"materialis::header_front_page_image\": {\n        \"value\": \"http://blog.thecolek.com/wp-content/uploads/2021/02/cegep-matane-entree.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 13:02:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a2e63364-1d11-4e97-968c-96a12408cf46', '', '', '2021-02-02 13:02:53', '2021-02-02 13:02:53', '', 0, 'http://blog.thecolek.com/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2021-02-02 13:02:12', '2021-02-02 13:02:12', '', 'cegep-matane-entree', '', 'inherit', '', 'closed', '', 'cegep-matane-entree', '', '', '2021-02-02 13:02:12', '2021-02-02 13:02:12', '', 0, 'http://blog.thecolek.com/wp-content/uploads/2021/02/cegep-matane-entree.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2021-02-02 13:02:27', '2021-02-02 13:02:27', '', 'entree', '', 'inherit', '', 'closed', '', 'entree', '', '', '2021-02-02 13:02:27', '2021-02-02 13:02:27', '', 0, 'http://blog.thecolek.com/wp-content/uploads/2021/02/entree.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2021-02-02 13:06:13', '2021-02-02 13:06:13', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:meta-box/document-embedder {\"id\":\"block_kko37dbno5xmwxf05yd\",\"data\":{\"tringle_text\":\"31\"}} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Curriculum vitae', '', 'trash', 'closed', 'closed', '', 'curriculum-vitae__trashed', '', '', '2021-02-02 14:19:46', '2021-02-02 14:19:46', '', 0, 'http://blog.thecolek.com/?page_id=21', 0, 'page', '', 0),
(23, 1, '2021-02-02 13:06:13', '2021-02-02 13:06:13', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:file {\"id\":22,\"href\":\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx.pdf\"} -->\n<div class=\"wp-block-file\"><a href=\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx.pdf\">CV_yohann2020.docx</a><a href=\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx.pdf\" class=\"wp-block-file__button\" download>Télécharger</a></div>\n<!-- /wp:file --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-02-02 13:06:13', '2021-02-02 13:06:13', '', 21, 'https://blog.thecolek.com/non-classe/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2021-02-02 13:06:53', '2021-02-02 13:06:53', '{\n    \"materialis::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Curriculum vitae\",\n                \"url\": \"https://blog.thecolek.com/curriculum-vitae/\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big color1 mdc-elevation--z3\"\n            },\n            {\n                \"label\": \"A propos\",\n                \"url\": \"#\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big white outline mdc-elevation--z3\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 13:06:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4eb41f50-cab7-4c64-bdec-c45fbb776226', '', '', '2021-02-02 13:06:53', '2021-02-02 13:06:53', '', 0, 'http://blog.thecolek.com/non-classe/4eb41f50-cab7-4c64-bdec-c45fbb776226/', 0, 'customize_changeset', '', 0),
(26, 1, '2021-02-02 14:18:28', '2021-02-02 14:18:28', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:meta-box/document-embedder {\"id\":\"block_kko37dbno5xmwxf05yd\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2021-02-02 14:18:28', '2021-02-02 14:18:28', '', 21, 'https://blog.thecolek.com/non-classe/21-autosave-v1/', 0, 'revision', '', 0),
(28, 1, '2021-02-02 13:17:40', '2021-02-02 13:17:40', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:media-text {\"mediaId\":27,\"mediaLink\":\"http://blog.thecolek.com/curriculum-vitae/attachment/cv_yohann2020-docx-2/\",\"mediaType\":\"application\"} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Contenu…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:file {\"id\":25,\"href\":\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx-1.pdf\"} -->\n<div class=\"wp-block-file\"><a href=\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx-1.pdf\">CV_yohann2020.docx-1</a><a href=\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx-1.pdf\" class=\"wp-block-file__button\" download>Télécharger</a></div>\n<!-- /wp:file --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-02-02 13:17:40', '2021-02-02 13:17:40', '', 21, 'https://blog.thecolek.com/non-classe/21-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2021-02-02 14:21:48', '2021-02-02 14:21:48', '', 'curriculum vitae', '', 'publish', 'closed', 'closed', '', 'curriculum-vitae', '', '', '2021-02-02 14:24:10', '2021-02-02 14:24:10', '', 0, 'http://blog.thecolek.com/?post_type=pdfposter&#038;p=31', 0, 'pdfposter', '', 0),
(32, 1, '2021-02-02 14:14:53', '2021-02-02 14:14:53', '{\n    \"materialis::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Curriculum vitae\",\n                \"url\": \"http://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx.pdf\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big color1 mdc-elevation--z3\"\n            },\n            {\n                \"label\": \"A propos\",\n                \"url\": \"#\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big white outline mdc-elevation--z3\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 14:14:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2d88ba55-aeb3-4079-9cd0-315b14d572cf', '', '', '2021-02-02 14:14:53', '2021-02-02 14:14:53', '', 0, 'http://blog.thecolek.com/non-classe/2d88ba55-aeb3-4079-9cd0-315b14d572cf/', 0, 'customize_changeset', '', 0),
(34, 1, '2021-02-02 14:18:08', '2021-02-02 14:18:08', '<!-- wp:meta-box/document-embedder {\"id\":\"block_kko33zfkjip4e7weob\"} /-->', 'Bloc réutilisable sans titre', '', 'publish', 'closed', 'closed', '', 'bloc-reutilisable-sans-titre', '', '', '2021-02-02 14:18:08', '2021-02-02 14:18:08', '', 0, 'https://blog.thecolek.com/non-classe/bloc-reutilisable-sans-titre/', 0, 'wp_block', '', 0),
(35, 1, '2021-02-02 14:19:08', '2021-02-02 14:19:08', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:meta-box/document-embedder {\"id\":\"block_kko37dbno5xmwxf05yd\",\"data\":{\"tringle_text\":\"31\"}} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-02-02 14:19:08', '2021-02-02 14:19:08', '', 21, 'https://blog.thecolek.com/non-classe/21-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2021-02-02 15:03:29', '2021-02-02 15:03:29', '<!-- wp:pdfemb/pdf-embedder-viewer {\"pdfID\":73,\"url\":\"http://blog.thecolek.com/wp-content/uploads/2021/02/CV_Yohann_Vitale.pdf\"} -->\n<p class=\"wp-block-pdfemb-pdf-embedder-viewer\"></p>\n<!-- /wp:pdfemb/pdf-embedder-viewer -->', 'Curriculum vitae', '', 'publish', 'closed', 'closed', '', 'curriculum-vitae', '', '', '2021-02-08 23:03:53', '2021-02-08 23:03:53', '', 0, 'http://blog.thecolek.com/?page_id=36', 0, 'page', '', 0),
(37, 1, '2021-02-02 14:23:31', '2021-02-02 14:23:31', '', 'CV_Yohann', '', 'inherit', 'closed', 'closed', '', 'cv_yohann2020-docx', '', '', '2021-02-02 14:24:05', '2021-02-02 14:24:05', '', 0, 'http://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx.pdf', 0, 'attachment', 'application/pdf', 0),
(39, 1, '2021-02-02 14:51:47', '2021-02-02 14:51:47', '', 'CV_yohann2020.docx_1', '', 'inherit', '', 'closed', '', 'cv_yohann2020-docx_1', '', '', '2021-02-02 14:51:47', '2021-02-02 14:51:47', '', 36, 'http://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-02-02 15:03:29', '2021-02-02 15:03:29', '<!-- wp:image {\"id\":39,\"width\":736,\"height\":1041,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx_1-724x1024.jpg\" alt=\"\" class=\"wp-image-39\" width=\"736\" height=\"1041\"/></figure>\n<!-- /wp:image -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-02-02 15:03:29', '2021-02-02 15:03:29', '', 36, 'https://blog.thecolek.com/non-classe/36-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2021-02-02 15:03:49', '2021-02-02 15:03:49', '{\n    \"materialis::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Curriculum vitae\",\n                \"url\": \"https://blog.thecolek.com/curriculum-vitae/\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big color1 mdc-elevation--z3\"\n            },\n            {\n                \"label\": \"A propos\",\n                \"url\": \"#\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big white outline mdc-elevation--z3\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 15:03:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '75c5f5a1-c1a9-4770-9006-6bfa4af313ec', '', '', '2021-02-02 15:03:49', '2021-02-02 15:03:49', '', 0, 'http://blog.thecolek.com/non-classe/75c5f5a1-c1a9-4770-9006-6bfa4af313ec/', 0, 'customize_changeset', '', 0),
(42, 1, '2021-02-02 15:04:25', '2021-02-02 15:04:25', '{\n    \"materialis::header_front_page_image\": {\n        \"value\": \"http://blog.thecolek.com/wp-content/uploads/2021/02/cegep-matane-entree.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 15:04:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c8c8e717-8466-46f5-a0c4-119b64861e4f', '', '', '2021-02-02 15:04:25', '2021-02-02 15:04:25', '', 0, 'http://blog.thecolek.com/non-classe/c8c8e717-8466-46f5-a0c4-119b64861e4f/', 0, 'customize_changeset', '', 0),
(43, 1, '2021-02-02 15:05:41', '2021-02-02 15:05:41', '', 'A propos', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-02-02 15:05:41', '2021-02-02 15:05:41', '', 15, 'https://blog.thecolek.com/non-classe/15-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2021-02-02 15:06:18', '2021-02-02 15:06:18', '<!-- wp:image {\"id\":39,\"width\":899,\"height\":1271,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx_1-724x1024.jpg\" alt=\"\" class=\"wp-image-39\" width=\"899\" height=\"1271\"/></figure>\n<!-- /wp:image -->', 'CV', '', 'trash', 'closed', '', '', 'cv__trashed', '', '', '2021-02-02 15:39:00', '2021-02-02 15:39:00', '', 0, 'http://blog.thecolek.com/?p=44', 0, 'post', '', 0),
(45, 1, '2021-02-02 15:06:18', '2021-02-02 15:06:18', '<!-- wp:image {\"id\":39,\"width\":899,\"height\":1271,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx_1-724x1024.jpg\" alt=\"\" class=\"wp-image-39\" width=\"899\" height=\"1271\"/></figure>\n<!-- /wp:image -->', 'CV', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-02-02 15:06:18', '2021-02-02 15:06:18', '', 44, 'https://blog.thecolek.com/non-classe/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2021-02-02 15:06:44', '2021-02-02 15:06:44', '{\n    \"materialis::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Curriculum vitae\",\n                \"url\": \"https://blog.thecolek.com/curriculum-vitae/\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big color1 mdc-elevation--z3\"\n            },\n            {\n                \"label\": \"A propos\",\n                \"url\": \"https://blog.thecolek.com/non-classe/cv/\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big white outline mdc-elevation--z3\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 15:06:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b528b755-155d-4b5a-a376-bbd1930fbc5c', '', '', '2021-02-02 15:06:44', '2021-02-02 15:06:44', '', 0, 'http://blog.thecolek.com/non-classe/b528b755-155d-4b5a-a376-bbd1930fbc5c/', 0, 'customize_changeset', '', 0),
(48, 1, '2021-02-02 15:30:45', '2021-02-02 15:30:45', '<!-- wp:paragraph -->\n<p>Bonjour, je m\'appel Yohann Vitale j\'ai 22ans. Cela fais maintenant presque 4 ans que je vie au Québec seul. Je n\'ai pas peur de relever des défis.<br>Je suis une personne très persévérante, je n\'aime pas aussi ne pas finir ce que j\'ai commencer. Je me trouve assez bon en montage de LEGO, donc je trouve que l\'architecture et fait pour moi, car j\'arrive a bien rassembler différente classe pour les fonctionnaient entre elles.<br>Je suis une personne rigoureuse, et organisé. Je pense que l\'organisation et très important dans ce domaine.<br>Je sais utiliser plusieurs type de langage, même si je tire plus facilement mon épingle du jeu en Java car beaucoup plus pratique.<br>Malgré mes études en informatique je pense quitter le monde de l\'informatique. J\'aimerais travailler avec des personne attend d\'handicape,<br>car je pense que c\'est personnes on beaucoup a me donné, leurs vision du monde, leurs expérience etc …. quant a moi, je pense que je peux aussi leurs apporte ma vision du monde et mes expériences dans celui-ci.</p>\n<!-- /wp:paragraph -->', 'A propos', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-02-02 15:30:45', '2021-02-02 15:30:45', '', 15, 'https://blog.thecolek.com/non-classe/15-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2021-02-02 15:32:51', '2021-02-02 15:32:51', '', 'PhotoDeMoi', '', 'inherit', 'closed', 'closed', '', 'k-xzcjbnjklhbkjsfjkbncgxjkl', '', '', '2021-02-02 15:33:00', '2021-02-02 15:33:00', '', 15, 'http://blog.thecolek.com/wp-content/uploads/2021/02/k.xzcjbnjklhbkjsfjkbncgxjkl.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-02-02 15:33:23', '2021-02-02 15:33:23', '{\n    \"materialis::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Curriculum vitae\",\n                \"url\": \"https://blog.thecolek.com/curriculum-vitae/\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big color1 mdc-elevation--z3\"\n            },\n            {\n                \"label\": \"A propos\",\n                \"url\": \"http://blog.thecolek.com/page-a-propos/(ouvre dans un nouvel onglet)\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big white outline mdc-elevation--z3\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 15:33:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1ca6598f-a30b-42da-91d7-e0b14a1548c4', '', '', '2021-02-02 15:33:23', '2021-02-02 15:33:23', '', 0, 'http://blog.thecolek.com/non-classe/1ca6598f-a30b-42da-91d7-e0b14a1548c4/', 0, 'customize_changeset', '', 0),
(52, 1, '2021-02-02 15:33:59', '2021-02-02 15:33:59', '{\n    \"materialis::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Curriculum vitae\",\n                \"url\": \"https://blog.thecolek.com/curriculum-vitae/\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big color1 mdc-elevation--z3\"\n            },\n            {\n                \"label\": \"A propos\",\n                \"url\": \"https://blog.thecolek.com/page-a-propos/\",\n                \"target\": \"_self\",\n                \"class\": \"button btn-default big white outline mdc-elevation--z3\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-02 15:33:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '872ffe76-bee8-4145-8aa9-8aecc9c7d3ea', '', '', '2021-02-02 15:33:59', '2021-02-02 15:33:59', '', 0, 'http://blog.thecolek.com/non-classe/872ffe76-bee8-4145-8aa9-8aecc9c7d3ea/', 0, 'customize_changeset', '', 0),
(53, 1, '2021-02-02 15:35:20', '2021-02-02 15:35:20', '', 'iceland-2111810_1920', '', 'inherit', '', 'closed', '', 'iceland-2111810_1920', '', '', '2021-02-02 15:35:20', '2021-02-02 15:35:20', '', 15, 'http://blog.thecolek.com/wp-content/uploads/2021/02/iceland-2111810_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-02-02 15:38:07', '2021-02-02 15:38:07', '<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":49,\"mediaType\":\"image\",\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top\"><figure class=\"wp-block-media-text__media\"><img src=\"http://blog.thecolek.com/wp-content/uploads/2021/02/k.xzcjbnjklhbkjsfjkbncgxjkl-576x1024.jpg\" alt=\"\" class=\"wp-image-49 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph -->\n<p>Bonjour, je m\'appel Yohann Vitale j\'ai 22ans. Cela fais maintenant presque 4 ans que je vie au Québec seul. Je n\'ai pas peur de relever des défis.<br>Je suis une personne très persévérante, je n\'aime pas aussi ne pas finir ce que j\'ai commencer. Je me trouve assez bon en montage de LEGO, donc je trouve que l\'architecture et fait pour moi, car j\'arrive a bien rassembler différente classe pour les fonctionnaient entre elles.<br>Je suis une personne rigoureuse, et organisé. Je pense que l\'organisation et très important dans ce domaine.<br>Je sais utiliser plusieurs type de langage, même si je tire plus facilement mon épingle du jeu en Java car beaucoup plus pratique.<br>Malgré mes études en informatique je pense quitter le monde de l\'informatique. J\'aimerais travailler avec des personne attend d\'handicape,<br>car je pense que c\'est personnes on beaucoup a me donné, leurs vision du monde, leurs expérience etc …. quant a moi, je pense que je peux aussi leurs apporte ma vision du monde et mes expériences dans celui-ci.</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'A propos', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-02-02 15:38:07', '2021-02-02 15:38:07', '', 15, 'https://blog.thecolek.com/non-classe/15-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2021-02-02 15:41:43', '2021-02-02 15:41:43', '<!-- wp:paragraph -->\n<p>Mes objectif a cours terme et d\'avoir mes papiers de résidents permanent, par la suite j\'aimerais trouve une domaine qui me donne la joie de vivre, et qu\'importe le salaire,<br>car pour moi il est plus important d\'aimer ce que l\'on fait que de travailler sans aimes sa.</p>\n<!-- /wp:paragraph -->', 'Mes Objectifs', '', 'trash', 'closed', '', '', 'mes-objectifs__trashed', '', '', '2021-02-04 13:23:21', '2021-02-04 13:23:21', '', 0, 'http://blog.thecolek.com/?p=56', 0, 'post', '', 0),
(57, 1, '2021-02-02 15:41:17', '2021-02-02 15:41:17', '', 'PassPort', '', 'inherit', 'closed', 'closed', '', 'images', '', '', '2021-02-02 15:41:29', '2021-02-02 15:41:29', '', 56, 'http://blog.thecolek.com/wp-content/uploads/2021/02/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2021-02-02 15:41:43', '2021-02-02 15:41:43', '<!-- wp:paragraph -->\n<p>Mes objectif a cours terme et d\'avoir mes papiers de résidents permanent, par la suite j\'aimerais trouve une domaine qui me donne la joie de vivre, et qu\'importe le salaire,<br>car pour moi il est plus important d\'aimer ce que l\'on fait que de travailler sans aimes sa.</p>\n<!-- /wp:paragraph -->', 'Mes Objectifs', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-02-02 15:41:43', '2021-02-02 15:41:43', '', 56, 'https://blog.thecolek.com/non-classe/56-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2021-02-02 15:55:53', '2021-02-02 15:55:53', '<!-- wp:image {\"align\":\"center\",\"id\":39,\"width\":933,\"height\":1320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx_1-724x1024.jpg\" alt=\"\" class=\"wp-image-39\" width=\"933\" height=\"1320\"/></figure></div>\n<!-- /wp:image -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-02-02 15:55:53', '2021-02-02 15:55:53', '', 36, 'https://blog.thecolek.com/non-classe/36-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2021-02-02 15:57:04', '2021-02-02 15:57:04', '<!-- wp:image {\"align\":\"center\",\"id\":39,\"width\":933,\"height\":1320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx_1-724x1024.jpg\" alt=\"\" class=\"wp-image-39\" width=\"933\" height=\"1320\"/></figure></div>\n<!-- /wp:image -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-02-02 15:57:04', '2021-02-02 15:57:04', '', 36, 'https://blog.thecolek.com/non-classe/36-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2021-02-04 13:21:34', '2021-02-04 13:21:34', '<!-- wp:paragraph -->\n<p>Mes objectif a cours terme et d’avoir mes papiers de résidents permanent, par la suite j’aimerais trouve une domaine qui me donne la joie de vivre, et qu’importe le salaire,<br>car pour moi il est plus important d’aimer ce que l’on fait que de travailler sans aimes sa.</p>\n<!-- /wp:paragraph -->', 'Mes Objectifs', '', 'publish', 'closed', 'closed', '', 'mes-objectifs', '', '', '2021-02-04 13:22:24', '2021-02-04 13:22:24', '', 0, 'http://blog.thecolek.com/?page_id=63', 0, 'page', '', 0),
(64, 1, '2021-02-04 13:21:34', '2021-02-04 13:21:34', '', 'Mes Objectifs', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2021-02-04 13:21:34', '2021-02-04 13:21:34', '', 63, 'https://blog.thecolek.com/non-classe/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2021-02-04 13:22:24', '2021-02-04 13:22:24', '<!-- wp:paragraph -->\n<p>Mes objectif a cours terme et d’avoir mes papiers de résidents permanent, par la suite j’aimerais trouve une domaine qui me donne la joie de vivre, et qu’importe le salaire,<br>car pour moi il est plus important d’aimer ce que l’on fait que de travailler sans aimes sa.</p>\n<!-- /wp:paragraph -->', 'Mes Objectifs', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2021-02-04 13:22:24', '2021-02-04 13:22:24', '', 63, 'https://blog.thecolek.com/non-classe/63-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2021-02-05 16:45:43', '2021-02-05 16:45:43', '<!-- wp:image {\"align\":\"center\",\"id\":39,\"width\":933,\"height\":1320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx_1-724x1024.jpg\" alt=\"\" class=\"wp-image-39\" width=\"933\" height=\"1320\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:meta-box/document-embedder {\"id\":\"block_kksis0ebmv5b269cvw\",\"data\":{\"tringle_text\":\"31\"}} /-->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-02-05 16:45:43', '2021-02-05 16:45:43', '', 36, 'https://blog.thecolek.com/non-classe/36-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2021-02-05 16:48:45', '2021-02-05 16:48:45', '<!-- wp:image {\"align\":\"center\",\"id\":39,\"width\":933,\"height\":1320,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx_1-724x1024.jpg\" alt=\"\" class=\"wp-image-39\" width=\"933\" height=\"1320\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:pdfemb/pdf-embedder-viewer {\"pdfID\":37,\"url\":\"http://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx.pdf\"} -->\n<p class=\"wp-block-pdfemb-pdf-embedder-viewer\"></p>\n<!-- /wp:pdfemb/pdf-embedder-viewer -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-02-05 16:48:45', '2021-02-05 16:48:45', '', 36, 'https://blog.thecolek.com/non-classe/36-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2021-02-05 16:49:10', '2021-02-05 16:49:10', '<!-- wp:pdfemb/pdf-embedder-viewer {\"pdfID\":37,\"url\":\"http://blog.thecolek.com/wp-content/uploads/2021/02/CV_yohann2020.docx.pdf\"} -->\n<p class=\"wp-block-pdfemb-pdf-embedder-viewer\"></p>\n<!-- /wp:pdfemb/pdf-embedder-viewer -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-02-05 16:49:10', '2021-02-05 16:49:10', '', 36, 'https://blog.thecolek.com/non-classe/36-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2021-02-06 03:26:29', '2021-02-06 03:26:29', '<!-- wp:pdfemb/pdf-embedder-viewer {\"pdfID\":70,\"url\":\"http://blog.thecolek.com/wp-content/uploads/2021/02/CV_YohannVitale_2021.pdf\"} -->\n<p class=\"wp-block-pdfemb-pdf-embedder-viewer\"></p>\n<!-- /wp:pdfemb/pdf-embedder-viewer -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-02-06 03:26:29', '2021-02-06 03:26:29', '', 36, 'https://blog.thecolek.com/non-classe/36-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2021-02-08 23:03:30', '2021-02-08 23:03:30', '', 'CV_Yohann_Vitale', '', 'inherit', '', 'closed', '', 'cv_yohann_vitale', '', '', '2021-02-08 23:03:30', '2021-02-08 23:03:30', '', 0, 'http://blog.thecolek.com/wp-content/uploads/2021/02/CV_Yohann_Vitale.pdf', 0, 'attachment', 'application/pdf', 0),
(74, 1, '2021-02-08 23:03:53', '2021-02-08 23:03:53', '<!-- wp:pdfemb/pdf-embedder-viewer {\"pdfID\":73,\"url\":\"http://blog.thecolek.com/wp-content/uploads/2021/02/CV_Yohann_Vitale.pdf\"} -->\n<p class=\"wp-block-pdfemb-pdf-embedder-viewer\"></p>\n<!-- /wp:pdfemb/pdf-embedder-viewer -->', 'Curriculum vitae', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-02-08 23:03:53', '2021-02-08 23:03:53', '', 36, 'https://blog.thecolek.com/non-classe/36-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'categorie', 'categorie', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(13, 2, 0),
(44, 1, 0),
(56, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'yohann'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '17'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"75.152.91.0\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1611774248'),
(22, 2, 'nickname', 'nadine'),
(23, 2, 'first_name', ''),
(24, 2, 'last_name', ''),
(25, 2, 'description', 'test'),
(26, 2, 'rich_editing', 'true'),
(27, 2, 'syntax_highlighting', 'true'),
(28, 2, 'comment_shortcuts', 'false'),
(29, 2, 'admin_color', 'fresh'),
(30, 2, 'use_ssl', '0'),
(31, 2, 'show_admin_bar_front', 'true'),
(32, 2, 'locale', ''),
(33, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(34, 2, 'wp_user_level', '10'),
(35, 2, 'dismissed_wp_pointers', ''),
(36, 2, 'show_welcome_panel', '1'),
(37, 2, 'wp_dashboard_quick_press_last_post_id', '61'),
(38, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"198.100.145.0\";}'),
(39, 2, 'session_tokens', 'a:1:{s:64:\"65014f250ff2973183443fe756a2bf49559a7475168149115153ca2322db501a\";a:4:{s:10:\"expiration\";i:1612945716;s:2:\"ip\";s:15:\"198.100.145.141\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1612772916;}}'),
(40, 2, 'wp_user-settings', 'libraryContent=browse'),
(41, 2, 'wp_user-settings-time', '1611774248'),
(42, 1, 'tgmpa_dismissed_notice_materialis', '1'),
(43, 1, 'meta-box-order_pdfposter', 'a:7:{s:8:\"form_top\";s:0:\"\";s:16:\"before_permalink\";s:0:\"\";s:11:\"after_title\";s:0:\"\";s:12:\"after_editor\";s:0:\"\";s:4:\"side\";s:37:\"submitdiv,myplugin_sectionid,myplugin\";s:6:\"normal\";s:31:\"prfx_meta,demo_meta_box,slugdiv\";s:8:\"advanced\";s:8:\"donation\";}'),
(44, 1, 'screen_layout_pdfposter', '2'),
(45, 1, 'wp_media_library_mode', 'list');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'yohann', '$P$B9E/ze35STXYtvjl1EgEJ0uAWjv8Zx.', 'yohann', 'vitaleyohann@gmail.com', 'https://blog.thecolek.com/', '2020-12-17 14:02:23', '', 0, 'yohann'),
(2, 'nadine', '$P$BR8s94J/UnwGZIci5.3v083g64UI/3/', 'nadine', 'nadineducegep@gmail.com', 'https://blog.thecolek.com/', '2020-12-17 14:02:23', '', 0, 'nadine'),
(3, 'temporaire', '$P$B9E/ze35STXYtvjl1EgEJ0uAWjv8Zx.', 'temporaire', 'vitaleyohann@gmail.com', 'http://51.161.33.87', '2020-12-17 14:02:23', '', 0, 'yohann');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2919;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
