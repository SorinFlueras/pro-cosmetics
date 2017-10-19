-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 19 Oct 2017 la 22:20
-- Versiune server: 5.6.25-73.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `procosme_wp273`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_commentmeta`
--

CREATE TABLE `wpdo_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_comments`
--

CREATE TABLE `wpdo_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_comments`
--

INSERT INTO `wpdo_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-10-11 19:42:29', '2017-10-11 19:42:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 47, 'WooCommerce', 'woocommerce@pro-cosmetics.eu', '', '', '2017-10-12 15:07:02', '2017-10-12 13:07:02', 'Plata va fi efectuată la livrarea comenzii. Starea comenzii s-a modificat de la Plată în așteptare la Se prelucrează.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 47, 'WooCommerce', 'woocommerce@pro-cosmetics.eu', '', '', '2017-10-12 15:07:02', '2017-10-12 13:07:02', 'Stocul Pelerină tuns BARBER SHOP (#39) redus de la 10 la 9.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 47, 'WooCommerce', 'woocommerce@pro-cosmetics.eu', '', '', '2017-10-12 15:07:02', '2017-10-12 13:07:02', 'Stocul Pămătuf pentru bărbierit Omega – Culori Asortate - Negru (#44)<span class=\"description\"></span> redus de la 5 la -3.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 47, 'WooCommerce', 'woocommerce@pro-cosmetics.eu', '', '', '2017-10-12 15:07:02', '2017-10-12 13:07:02', 'Stocul Pămătuf pentru bărbierit Omega – Culori Asortate - Alb (#43)<span class=\"description\"></span> redus de la 5 la 4.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 47, 'admin', 'admin@pro-cosmetics.eu', '', '', '2017-10-12 15:10:24', '2017-10-12 13:10:24', 'Starea comenzii s-a modificat de la Se prelucrează la Finalizată.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_links`
--

CREATE TABLE `wpdo_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_options`
--

CREATE TABLE `wpdo_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_options`
--

INSERT INTO `wpdo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://pro-cosmetics.eu', 'yes'),
(2, 'home', 'https://pro-cosmetics.eu', 'yes'),
(3, 'blogname', 'Pro Cosmetics', 'yes'),
(4, 'blogdescription', 'Cosmetice Profesionale', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'procosmeticstm@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:10:\"magazin/?$\";s:27:\"index.php?post_type=product\";s:40:\"magazin/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:35:\"magazin/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:27:\"magazin/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"categorie-produs/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"categorie-produs/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"categorie-produs/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"categorie-produs/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"categorie-produs/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:56:\"eticheta-produs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:51:\"eticheta-produs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:32:\"eticheta-produs/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:44:\"eticheta-produs/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:26:\"eticheta-produs/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:34:\"produs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"produs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"produs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"produs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"produs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"produs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"produs/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:27:\"produs/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:47:\"produs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:42:\"produs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:35:\"produs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:42:\"produs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:32:\"produs/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:38:\"produs/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"produs/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"produs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:23:\"produs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"produs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"produs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"produs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"produs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"produs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '2', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'pro', 'yes'),
(41, 'stylesheet', 'pro', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'customer', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wpdo_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:6:\"Client\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:15:\"Manager magazin\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:28:\"woocommerce_product_search-2\";i:1;s:26:\"woocommerce_price_filter-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:9:{i:1508442149;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1508442240;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1508443476;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1508450400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1508460362;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1508503509;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1508503562;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510012800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(111, '_transient_twentyseventeen_categories', '1', 'yes'),
(114, 'WPLANG', 'ro_RO', 'yes'),
(124, 'widget_wrt_recent_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(125, 'widget_wrt_social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(126, 'widget_wrt_about', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(130, 'can_compress_scripts', '0', 'no'),
(137, '_transient_timeout_feed_428f6caffd7e5783f408c286f51a5122', '1508460310', 'no');
INSERT INTO `wpdo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(138, '_transient_feed_428f6caffd7e5783f408c286f51a5122', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"În Română\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ro.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Sep 2017 06:39:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"ro-RO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=4.9-beta2-41930\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordCamp București 2017 se apropie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://ro.wordpress.org/2017/09/13/wordcamp-bucuresti-2017-se-apropie/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://ro.wordpress.org/2017/09/13/wordcamp-bucuresti-2017-se-apropie/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Sep 2017 05:19:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Evenimente\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:433:\"WordCamp București 2017 se apropie cu repeziciune&#8230; deci grăbește-te și tu! Evenimentul va avea loc în perioada 7-8 octombrie 2017 la București. S-au suplimentat biletele, așa că du-te și ia-ți-le acum dacă nu ai făcut-o deja! (https://2017.bucharest.wordcamp.org/tickets/) Grăbește-te să-ți rezervi locul la cel mai mare eveniment dedicat WordPress din România și cu asta accesul la 14 prezentări [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Adrian Pop\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:981:\"<p><img class=\"wp-image-1704 size-full alignright\" title=\"Bucharest WordCamp 2017\" src=\"https://ro.wordpress.org/files/2017/09/WCB-2017.png\" alt=\"\" width=\"180\" height=\"260\" /></p>\n<p>WordCamp București 2017 se apropie cu repeziciune&#8230; deci grăbește-te și tu! Evenimentul va avea loc în perioada 7-8 octombrie 2017 la București.</p>\n<p>S-au suplimentat biletele, așa că <a href=\"https://2017.bucharest.wordcamp.org/tickets/\" target=\"_blank\" rel=\"noopener\">du-te și ia-ți-le acum</a> dacă nu ai făcut-o deja! (<a href=\"https://2017.bucharest.wordcamp.org/tickets/\" target=\"_blank\" rel=\"noopener\">https://2017.bucharest.wordcamp.org/tickets/</a>)</p>\n<p>Grăbește-te să-ți rezervi locul la cel mai mare eveniment dedicat WordPress din România și cu asta accesul la 14 prezentări de excepție, la faimoasa <em>Petrecere </em><span class=\"aBn\"><span class=\"aQJ\"><em>de sâmbătă seara</em> sau la <em>Ziua contributorilor </em>de duminică.</span></span></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://ro.wordpress.org/2017/09/13/wordcamp-bucuresti-2017-se-apropie/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 4.8.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://ro.wordpress.org/2017/08/03/wordpress-4-8-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://ro.wordpress.org/2017/08/03/wordpress-4-8-1/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Aug 2017 12:48:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Lansări\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Minore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1696\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:425:\"WordPress 4.8.1 este disponibil acum și în limba română. Au fost rezolvate mai multe erori și probleme de securitate. Deoarece au fost soluționate probleme de securitate, îți recomandăm să faci actualizarea cât mai curând. Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă WordPress 4.8.1 în limba română! Pentru mai multe informații citește și [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Adrian Pop\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:895:\"<p><img class=\"alignright\" src=\"https://ro.wordpress.org/wp-admin/images/wordpress-logo.svg?ver=20131107\" alt=\"WordPress logo\" longdesc=\"https://ro.wordpress.org/wp-admin/WordPress%20logo\" />WordPress 4.8.1 este disponibil acum și în limba română. Au fost rezolvate mai multe erori și probleme de securitate. Deoarece au fost soluționate probleme de securitate, îți recomandăm să faci actualizarea cât mai curând.</p>\n<p>Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă <a href=\"https://ro.wordpress.org/wordpress-4.8.1-ro_RO.zip\" target=\"_blank\" rel=\"noopener noreferrer\">WordPress 4.8.1 în limba română</a>!</p>\n<p>Pentru mai multe informații citește și <a href=\"https://wordpress.org/news/2017/08/wordpress-4-8-1-maintenance-release/\" target=\"_blank\" rel=\"noopener noreferrer\">notele de lansare</a> (în engleză).</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ro.wordpress.org/2017/08/03/wordpress-4-8-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:46:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 4.8 „Evans”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://ro.wordpress.org/2017/06/08/wordpress-4-8-evans/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://ro.wordpress.org/2017/06/08/wordpress-4-8-evans/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Jun 2017 19:36:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Lansări\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Majore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1678\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:435:\"(localizarea articolului original de Matt Mullenweg) O actualizare cu Tine în gând Echipează-te pentru un WordPress mult mai intuitiv! WordPress 4.8, namită &#8222;Evans&#8221; în onoarea pianistului și compozitorului de jazz William John &#8222;Bill&#8221; Evans, este disponibil pentru descărcare sau actualizare în panoul de control WordPress. Noile funcționalități ale versiunii 4.8 îți oferă acum mai multe [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:68:\"https://videos.files.wordpress.com/8BDWH3QG/3-link-boundaries_hd.mp4\";s:6:\"length\";s:7:\"1219247\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Adrian Pop\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:33925:\"<div class=\"meta\"><em>(localizarea <a href=\"https://wordpress.org/news/2017/06/evans/\" target=\"_blank\" rel=\"noopener\">articolului original</a> de <a href=\"https://profiles.wordpress.org/matt\">Matt Mullenweg</a>)</em></div>\n<h2>O actualizare cu Tine în gând</h2>\n<p><img class=\"aligncenter size-large wp-image-4816\" src=\"https://i0.wp.com/wordpress.org/news/files/2017/06/release-featured-image.png?resize=632%2C316&amp;ssl=1\" alt=\"\" width=\"632\" height=\"316\" /></p>\n<h3>Echipează-te pentru un WordPress mult mai intuitiv!</h3>\n<p>WordPress 4.8, namită &#8222;Evans&#8221; în onoarea pianistului și compozitorului de jazz William John &#8222;Bill&#8221; Evans, este disponibil pentru descărcare sau actualizare în panoul de control WordPress. Noile funcționalități ale versiunii 4.8 îți oferă acum mai multe modalități de a te exprima și de a-ți face cunoscută imaginea.</p>\n<p><span id=\"more-1678\"></span></p>\n<p>Deși unele actualizări par minore, ele au fost construite de sute de contributori cu gândul la <em>tine</em>. Pregătește-te pentru funcționalități noi pe care le vei primi ca pe un vechi prieten: îmbunătățiri pentru legături, <em>trei</em> noi piese media pentru imagini, audio și video, o piesă pentru text îmbunătățită care suportă editarea vizuală și o secțiune de știri actualizată în panoul tău de control care îți aduce viitoare evenimente WordPress din apropierea ta.</p>\n<hr />\n<h2>Actualizări incitante de piese</h2>\n<p><img class=\"size-large wp-image-4776 aligncenter\" src=\"https://i1.wp.com/wordpress.org/news/files/2017/06/widgets-with-all-four.png?resize=632%2C436&amp;ssl=1\" alt=\"\" width=\"632\" height=\"436\" /></p>\n<h3>Piesă imagine</h3>\n<p>Adăugarea unei imagini într-o piesă este acum o treabă simplă care poate fi realizată de orice utilizator WordPress fără cunoștințe de programare. Pur și simplu introduci imaginea direct în setările piesei. Încearcă să adaugi ceva, un portret sau o fotografie făcută în ultimul weekend — și ea va apărea automat.</p>\n<h3>Piesă video</h3>\n<p>Un video de bun venit este o modalitate excelentă de a umaniza personalizarea sitului tău web. Acum poți adăuga oricare video din Biblioteca media într-o bară laterală de pe situl tău cu noua piesă Video. Folosește-o pentru a afișa un video de întâmpinare pentru a-ți prezenta situl vizitatorilor tăi sau pentru a-ți promova cel mai recent și important conținut.</p>\n<h3>Piesă audio</h3>\n<p>Ești un producător de podcast, un muzician sau un bloger pasionat? Adăugarea unei piese cu fișierul tău audio nu a fost niciodată mai ușoară. Încarcă-ți fișierul audio în Biblioteca media, du-te la setările piesei, selectează fișierul și ești gata pentru ascultători. Aceasta ar putea fi și o modalitate ușoară de a adăuga un mesaj de întâmpinare mai personal!</p>\n<h3>Piesă text îmbogățit</h3>\n<p>Această funcționalitate merită o paradă în centrul orașului! Posibilitatea de a edita a textului îmbogățit este acum nativă pentru piesele Text. Adaugi oriunde o piesă și o formatezi. Creezi liste, adaugi sublinieri și introduci rapid și ușor legături. Distrează-te cu noua ta putere de a formata și vezi câte poți face într-o scurtă perioadă de timp.</p>\n<hr />\n<h2>Limite legătură</h2>\n<div id=\"v-8BDWH3QG-2\" class=\"video-player\"><video id=\"v-8BDWH3QG-2-video\" width=\"692\" height=\"374\" poster=\"https://videos.files.wordpress.com/8BDWH3QG/3-link-boundaries_dvd.original.jpg\" controls=\"true\" preload=\"metadata\" dir=\"ltr\" lang=\"en\"><source src=\"https://videos.files.wordpress.com/8BDWH3QG/3-link-boundaries_dvd.mp4\" type=\"video/mp4; codecs=&quot;avc1.64001E, mp4a.40.2&quot;\" /><source src=\"https://videos.files.wordpress.com/8BDWH3QG/3-link-boundaries_fmt1.ogv\" type=\"video/ogg; codecs=&quot;theora, vorbis&quot;\" /><div><img alt=\"Link Boundaries\" src=\"https://videos.files.wordpress.com/8BDWH3QG/3-link-boundaries_dvd.original.jpg\" width=\"692\" height=\"374\" /></div><p>Link Boundaries</p></video></div>\n<p>Ai încercat vreodată să actualizezi o legătură sau textul adiacent unei legături și să ai impresia că nu o poți face corect? Când editezi textul după legătură, noul text se adaugă celui al legăturii. Sau când editezi textul din legătură, ce ai adăugat ajunge în afara ei. Acest lucru poate fi frustrant! Cu limitele legăturii, o nouă funcționalitate importantă, procesul este simplificat și legăturile tale vor funcționa bine. Vei fi mulțumit. Promitem.</p>\n<hr />\n<h2>Evenimente WordPress în apropiere</h2>\n<p><img class=\"aligncenter wp-image-4779 size-large\" src=\"https://i2.wp.com/wordpress.org/news/files/2017/06/events-widget.png?resize=632%2C465&amp;ssl=1\" alt=\"\" width=\"632\" height=\"465\" /></p>\n<p>Știai că WordPress are o comunitate offline înfloritoare cu grupuri care se întâlnesc în mod regulat în peste 400 de orașe din întreaga lume? Acum WordPress îți atrage atenția asupra evenimentelor care te ajută să continui îmbunătățirea cunoștințelor tale de WordPress, să te întâlnești cu prietenii și, bineînțeles, să publici!</p>\n<p>Aceasta devine rapid una dintre funcționalitățile noastre preferate. În timp ce ești în panoul de control (deoarece faci actualizări și scrii articole, nu-i așa?) vor fi afișate toate WordCamp-urile și Meetup-urile WordPress viitoare — din apropierea ta.</p>\n<p>Să faci parte din comunitate te poate ajuta în a-ți îmbunătăți cunoștințele de WordPress și a putea să intri în legătură cu persoane pe care nu le-ai fi putut întâlni altfel. Acum poți găsi cu ușurință evenimente locale doar prin autentificarea în panoul tău de control și privind piesa evenimente și știri.</p>\n<hr />\n<h2>Și mai multă fericire pentru dezvoltatori  <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f60a.png\" alt=\"😊\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></h2>\n<h3><a href=\"https://make.wordpress.org/core/2017/05/17/cleaner-headings-in-the-admin-screens/\">Antete mai accesibile ale panourilor de administrare</a></h3>\n<p>Noi reguli CSS înseamnă că un conținut extern (cum ar fi o legătură „Adaugă nou”) nu mai trebuie să fie incluse în antetele zonelor administrative. Aceste antete de panouri oferă acum o experiența îmbunătățită persoanelor care folosesc tehnologii asistențiale.</p>\n<div class=\"col\">\n<h3><a href=\"https://make.wordpress.org/core/2017/05/22/removal-of-core-embedding-support-for-wmv-and-wma-file-formats/\">Înlăturarea suportului nucleului pentru fișiere WMV și WMA</a></h3>\n<p>Deoarece tot mai puține navigatoare oferă suport Silverlight, formatele de fișier care necesită prezența modulului Silverlight sunt înlăturate din suportul nucleului. Fișierele vor fi afișate în continuare ca o legătură de descărcare, dar nu vor mai fi înglobate automat.</p>\n</div>\n<div class=\"col\">\n<h3><a href=\"https://make.wordpress.org/core/2017/05/22/multisite-focused-changes-in-4-8/\">Actualizări multi-sit</a></h3>\n<p>În 4.8 au fost introduse capabilități noi cu scopul de a înlătura apelările către <code>is_super_admin()</code>. În plus, au fost adăugate cârlige noi și ajustări fine pentru a controla situl în detaliu precum și numărarea utilizatorilor per rețea.</p>\n</div>\n<div class=\"col\">\n<h3><a href=\"https://make.wordpress.org/core/2017/05/23/addition-of-tinymce-to-the-text-widget/\">JavaScript API pentru editor text</a></h3>\n<p>Prin adăugarea lui TinyMCE la piesa text în 4.8 apare un nou JavaScript API pentru a instanțierea editorului după încărcarea paginii. Acesta poate fi folosit pentru a adăuga i instanță de editor oricărei zone de text și pentru a-l personaliza cu butoane și funcții. Excelent pentru autorii de module!</p>\n</div>\n<div class=\"col\">\n<h3><a href=\"https://make.wordpress.org/core/2017/05/26/media-widgets-for-images-video-and-audio/\">API piese media</a></h3>\n<p>Introducerea în 4.8 a unei scheme REST API pentru noua piesă media de bază deschide acum posibilități pentru și mai multe piese media pe viitor (cum ar fi galerii sau liste de redare). Cele trei piese media noi sunt propulsate de o clasă de bază comună care acoperă majoritatea interacțiunilor cu un modal media. Această clasă ușurează de asemenea crearea de noi piese media și deschide calea spre și mai multe pe viitor.</p>\n</div>\n<div class=\"col\">\n<h3><a href=\"https://make.wordpress.org/core/2017/05/16/customizer-sidebar-width-is-now-variable/\">Lățime variabilă pentru personalizator</a></h3>\n<p>Bucură-te! Au fost adăugate puncte noi de comutare responsivă în bara laterală a personalizatorului pentru a-l face mai lat pe ecranele cu rezoluție mare. Comenzile personalizatorului ar trebui să folosească lățimi bazate pe procente în loc de pixeli.</p>\n</div>\n<hr />\n<h2>Echipa</h2>\n<p>Această versiune a fost condusă de <a href=\"https://matt.blog/\">Matt</a> și <a href=\"https://profiles.wordpress.org/jbpaul17\">Jeff Paul</a> cu ajutorul acestor extraordinari oameni. Sunt 347 de contributori cu propuneri pentru această versiune, dintre care 106 au contribuit pentru prima dată. Pune-ți un Bill Evans pe serviciul tău de muzică preferat și uită-te pe profilele unora dintre ei:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/4nickpick\">4nickpick</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abhishek\">abhishek</a>, <a href=\"https://profiles.wordpress.org/abhishekfdd\">Abhishek Kumar</a>, <a href=\"https://profiles.wordpress.org/abrain\">abrain</a>, <a href=\"https://profiles.wordpress.org/kawauso\">Adam Harley (Kawauso)</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/adamsoucie\">Adam Soucie</a>, <a href=\"https://profiles.wordpress.org/afzalmultani\">Afzal Multani</a>, <a href=\"https://profiles.wordpress.org/mrahmadawais\">Ahmad Awais</a>, <a href=\"https://profiles.wordpress.org/ajoah\">ajoah</a>, <a href=\"https://profiles.wordpress.org/xknown\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/apmarshall\">Alex Floyd Marshall</a>, <a href=\"https://profiles.wordpress.org/alexkingorg\">Alex King</a>, <a href=\"https://profiles.wordpress.org/tellyworth\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/nacin\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rockwell15\">Andrew Rockwell</a>, <a href=\"https://profiles.wordpress.org/kelderic\">Andy Mercer</a>, <a href=\"https://profiles.wordpress.org/ankit-k-gupta\">Ankit K Gupta</a>, <a href=\"https://profiles.wordpress.org/arena94\">arena94</a>, <a href=\"https://profiles.wordpress.org/arshidkv12\">Arshid</a>, <a href=\"https://profiles.wordpress.org/aryamaaru\">Arun</a>, <a href=\"https://profiles.wordpress.org/asalce\">asalce</a>, <a href=\"https://profiles.wordpress.org/ashokkumar24\">ashokkumar24</a>, <a href=\"https://profiles.wordpress.org/barryceelen\">Barry Ceelen</a>, <a href=\"https://profiles.wordpress.org/bcworkz\">bcworkz</a>, <a href=\"https://profiles.wordpress.org/bharatkambariya\">Bharat Kambariya</a>, <a href=\"https://profiles.wordpress.org/blobfolio\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/gitlost\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges\">Boone B. Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/bradt\">Brad Touesnard</a>, <a href=\"https://profiles.wordpress.org/bradyvercher\">Brady Vercher</a>, <a href=\"https://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/drrobotnik\">Brandon Lavigne</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard\">Bridget Willard</a>, <a href=\"https://profiles.wordpress.org/bhargavbhandari90\">Bunty</a>, <a href=\"https://profiles.wordpress.org/camikaos\">Cami Kaos</a>, <a href=\"https://profiles.wordpress.org/carl-alberto\">Carl Alberto</a>, <a href=\"https://profiles.wordpress.org/caseypatrickdriscoll\">Casey Driscoll</a>, <a href=\"https://profiles.wordpress.org/cazm\">cazm</a>, <a href=\"https://profiles.wordpress.org/ccprog\">ccprog</a>, <a href=\"https://profiles.wordpress.org/chandrapatel\">Chandra Patel</a>, <a href=\"https://profiles.wordpress.org/chesio\">chesio</a>, <a href=\"https://profiles.wordpress.org/ketuchetan\">chetansatasiya</a>, <a href=\"https://profiles.wordpress.org/chiragpatel\">Chirag Patel</a>, <a href=\"https://profiles.wordpress.org/chouby\">Chouby</a>, <a href=\"https://profiles.wordpress.org/cklosows\">Chris Klosowski</a>, <a href=\"https://profiles.wordpress.org/chris_dev\">Chris Mok</a>, <a href=\"https://profiles.wordpress.org/chriseverson\">chriseverson</a>, <a href=\"https://profiles.wordpress.org/christian1012\">Christian Chung</a>, <a href=\"https://profiles.wordpress.org/coreymckrill\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/courtneypk\">Courtney P.K.</a>, <a href=\"https://profiles.wordpress.org/cristianozanca\">Cristiano Zanca</a>, <a href=\"https://profiles.wordpress.org/csloisel\">csloisel</a>, <a href=\"https://profiles.wordpress.org/curdin\">Curdin Krummenacher</a>, <a href=\"https://profiles.wordpress.org/clarinetlord\">Cyrus Collier</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber </a>, <a href=\"https://profiles.wordpress.org/diddledan\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/mte90\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/nerrad\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/darshan02\">Darshan_dj</a>, <a href=\"https://profiles.wordpress.org/darthaud\">darthaud</a>, <a href=\"https://profiles.wordpress.org/dllh\">Daryl L. L. Houston (dllh)</a>, <a href=\"https://profiles.wordpress.org/davidakennedy\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/davidanderson\">David Anderson</a>, <a href=\"https://profiles.wordpress.org/davidbinda\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/dlh\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dshanske\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/davidbenton\">davidbenton</a>, <a href=\"https://profiles.wordpress.org/designsimply\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dhanendran\">Dhanendran</a>, <a href=\"https://profiles.wordpress.org/dharm1025\">Dharmesh Patel</a>, <a href=\"https://profiles.wordpress.org/dhaval-parekh\">Dhaval Parekh</a>, <a href=\"https://profiles.wordpress.org/dingo_bastard\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dotancohen\">Dotan Cohen</a>, <a href=\"https://profiles.wordpress.org/doublehhh\">DoubleH</a>, <a href=\"https://profiles.wordpress.org/dreamon11\">DreamOn11</a>, <a href=\"https://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/drivingralle\">Drivingralle</a>, <a href=\"https://profiles.wordpress.org/dspilka\">dspilka</a>, <a href=\"https://profiles.wordpress.org/chopinbach\">Edwin Cromley</a>, <a href=\"https://profiles.wordpress.org/ejner69\">Ejner Galaz</a>, <a href=\"https://profiles.wordpress.org/iseulde\">Ella Iseulde Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/emirpprime\">emirpprime</a>, <a href=\"https://profiles.wordpress.org/ericlewis\">Eric Andrew Lewis</a>, <a href=\"https://profiles.wordpress.org/ethitter\">Erick Hitter</a>, <a href=\"https://profiles.wordpress.org/endif-media\">Ethan Allen</a>, <a href=\"https://profiles.wordpress.org/fab1en\">Fabien Quatravaux</a>, <a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fibonaccina\">fibonaccina</a>, <a href=\"https://profiles.wordpress.org/mista-flo\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/francina\">Francesca Marano</a>, <a href=\"https://profiles.wordpress.org/fstaude\">Frank Neumann-Staude</a>, <a href=\"https://profiles.wordpress.org/f-j-kaiser\">Franz Josef Kaiser</a>, <a href=\"https://profiles.wordpress.org/gma992\">Gabriel Maldonado</a>, <a href=\"https://profiles.wordpress.org/voldemortensen\">Garth Mortensen</a>, <a href=\"https://profiles.wordpress.org/garyc40\">Gary Cao</a>, <a href=\"https://profiles.wordpress.org/pento\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/georgestephanis\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/ghosttoast\">Gustave F. Gerhardt</a>, <a href=\"https://profiles.wordpress.org/hedgefield\">hedgefield</a>, <a href=\"https://profiles.wordpress.org/helen\">Helen Hou-Sandí</a>, <a href=\"https://profiles.wordpress.org/helgatheviking\">helgatheviking</a>, <a href=\"https://profiles.wordpress.org/hristo-sg\">Hristo Pandjarov</a>, <a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ig_communitysites\">ig_communitysites</a>, <a href=\"https://profiles.wordpress.org/zinigor\">Igor Zinovyev</a>, <a href=\"https://profiles.wordpress.org/imath\">imath</a>, <a href=\"https://profiles.wordpress.org/ipstenu\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/ireneyoast\">ireneyoast</a>, <a href=\"https://profiles.wordpress.org/iv3rson76\">Ivan Stefanov</a>, <a href=\"https://profiles.wordpress.org/ivantedja\">ivantedja</a>, <a href=\"https://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jackreichert\">Jack Reichert</a>, <a href=\"https://profiles.wordpress.org/whyisjake\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jnylen0\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jaydeep-rami\">Jaydeep Rami</a>, <a href=\"https://profiles.wordpress.org/jazbek\">jazbek</a>, <a href=\"https://profiles.wordpress.org/jblz\">Jeff Bowen</a>, <a href=\"https://profiles.wordpress.org/jfarthing84\">Jeff Farthing</a>, <a href=\"https://profiles.wordpress.org/jbpaul17\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/cheffheid\">Jeffrey de Wit</a>, <a href=\"https://profiles.wordpress.org/jenblogs4u\">Jen Miller</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jpry\">Jeremy Pry</a>, <a href=\"https://profiles.wordpress.org/jigneshnakrani\">Jignesh Nakrani</a>, <a href=\"https://profiles.wordpress.org/jipmoors\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/jjcomack\">jjcomack</a>, <a href=\"https://profiles.wordpress.org/joedolson\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnregan3\">John Regan</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/chanthaboune\">Josepha</a>, <a href=\"https://profiles.wordpress.org/shelob9\">Josh Pollock</a>, <a href=\"https://profiles.wordpress.org/juhise\">Juhi Saxena</a>, <a href=\"https://profiles.wordpress.org/kopepasah\">Justin Kopepasah</a>, <a href=\"https://profiles.wordpress.org/certainstrings\">Justin Tucker</a>, <a href=\"https://profiles.wordpress.org/kadamwhite\">K.Adam White</a>, <a href=\"https://profiles.wordpress.org/kafleg\">kafleg</a>, <a href=\"https://profiles.wordpress.org/trepmal\">Kailey (trepmal)</a>, <a href=\"https://profiles.wordpress.org/karinedo\">karinedo</a>, <a href=\"https://profiles.wordpress.org/zoonini\">Kathryn</a>, <a href=\"https://profiles.wordpress.org/kaushik\">kaushik</a>, <a href=\"https://profiles.wordpress.org/kkoppenhaver\">Keanan Koppenhaver</a>, <a href=\"https://profiles.wordpress.org/keesiemeijer\">keesiemeijer</a>, <a href=\"https://profiles.wordpress.org/ryelle\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/ixkaito\">Kite</a>, <a href=\"https://profiles.wordpress.org/kjellr\">kjellr</a>, <a href=\"https://profiles.wordpress.org/kovshenin\">Konstantin Kovshenin</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/kostasx\">kostasx</a>, <a href=\"https://profiles.wordpress.org/kubik-rubik\">kubik-rubik</a>, <a href=\"https://profiles.wordpress.org/kuck1u\">KUCKLU</a>, <a href=\"https://profiles.wordpress.org/lancewillett\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/laurelfulford\">Laurel Fulford</a>, <a href=\"https://profiles.wordpress.org/leewillis77\">Lee Willis</a>, <a href=\"https://profiles.wordpress.org/leemon\">leemon</a>, <a href=\"https://profiles.wordpress.org/lewiscowles\">LewisCowles</a>, <a href=\"https://profiles.wordpress.org/liammcarthur\">LiamMcArthur</a>, <a href=\"https://profiles.wordpress.org/lucasstark\">Lucas Stark</a>, <a href=\"https://profiles.wordpress.org/lukasbesch\">lukasbesch</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/maedahbatool\">Maedah Batool</a>, <a href=\"https://profiles.wordpress.org/maguiar\">maguiar</a>, <a href=\"https://profiles.wordpress.org/mp518\">Mahesh Prajapati</a>, <a href=\"https://profiles.wordpress.org/mantismamita\">mantismamita</a>, <a href=\"https://profiles.wordpress.org/tyxla\">Marin Atanasov</a>, <a href=\"https://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mrwweb\">Mark Root-Wiley</a>, <a href=\"https://profiles.wordpress.org/mapk\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markoheijnen\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/matheusfd\">Matheus Martins</a>, <a href=\"https://profiles.wordpress.org/matheusgimenez\">MatheusGimenez</a>, <a href=\"https://profiles.wordpress.org/mathieuhays\">mathieuhays</a>, <a href=\"https://profiles.wordpress.org/matias\">matias</a>, <a href=\"https://profiles.wordpress.org/mattwiebe\">Matt Wiebe</a>, <a href=\"https://profiles.wordpress.org/mboynes\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattheu\">Matthew Haines-Young</a>, <a href=\"https://profiles.wordpress.org/mattyrob\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/maximeculea\">Maxime Culea</a>, <a href=\"https://profiles.wordpress.org/mayukojpn\">Mayo Moriyama</a>, <a href=\"https://profiles.wordpress.org/mayurk\">Mayur Keshwani</a>, <a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/menakas\">Menaka S.</a>, <a href=\"https://profiles.wordpress.org/michaelarestad\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/michalzuber\">michalzuber</a>, <a href=\"https://profiles.wordpress.org/michelleweber\">michelleweber</a>, <a href=\"https://profiles.wordpress.org/stubgo\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/mihai2u\">Mike Crantea</a>, <a href=\"https://profiles.wordpress.org/mikehansenme\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikejolley\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/mikelittle\">Mike Little</a>, <a href=\"https://profiles.wordpress.org/mnelson4\">Mike Nelson</a>, <a href=\"https://profiles.wordpress.org/mikeschroder\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/dimadin\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/milindmore22\">Milind More</a>, <a href=\"https://profiles.wordpress.org/mitraval192\">Mithun Raval</a>, <a href=\"https://profiles.wordpress.org/mmdeveloper\">MMDeveloper</a>, <a href=\"https://profiles.wordpress.org/batmoo\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/mohanjith\">mohanjith</a>, <a href=\"https://profiles.wordpress.org/monikarao\">monikarao</a>, <a href=\"https://profiles.wordpress.org/morganestes\">Morgan Estes</a>, <a href=\"https://profiles.wordpress.org/mt8biz\">moto hachi ( mt8.biz )</a>, <a href=\"https://profiles.wordpress.org/mrgregwaugh\">MrGregWaugh</a>, <a href=\"https://profiles.wordpress.org/mschadegg\">mschadegg</a>, <a href=\"https://profiles.wordpress.org/codegeass\">Muhammet Arslan</a>, <a href=\"https://profiles.wordpress.org/dots\">MULTIDOTS</a>, <a href=\"https://profiles.wordpress.org/nao\">Naoko Takano</a>, <a href=\"https://profiles.wordpress.org/naomicbush\">Naomi C. Bush</a>, <a href=\"https://profiles.wordpress.org/natereist\">Nate Reist</a>, <a href=\"https://profiles.wordpress.org/greatislander\">Ned Zimmerman</a>, <a href=\"https://profiles.wordpress.org/celloexpressions\">Nick Halsey </a>, <a href=\"https://profiles.wordpress.org/nikschavan\">Nikhil Chavan</a>, <a href=\"https://profiles.wordpress.org/nitin-kevadiya\">Nitin Kevadiya</a>, <a href=\"https://profiles.wordpress.org/kailanitish90\">Nitish Kaila</a>, <a href=\"https://profiles.wordpress.org/nobremarcos\">nobremarcos</a>, <a href=\"https://profiles.wordpress.org/nosegraze\">NoseGraze</a>, <a href=\"https://profiles.wordpress.org/nsundberg\">nsundberg</a>, <a href=\"https://profiles.wordpress.org/nullvariable\">nullvariable</a>, <a href=\"https://profiles.wordpress.org/odysseygate\">odyssey</a>, <a href=\"https://profiles.wordpress.org/iaaxpage\">page-carbajal</a>, <a href=\"https://profiles.wordpress.org/swissspidy\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/pbearne\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/pauldewouters\">Paul de Wouters</a>, <a href=\"https://profiles.wordpress.org/figureone\">Paul Ryan</a>, <a href=\"https://profiles.wordpress.org/pavelevap\">pavelevap</a>, <a href=\"https://profiles.wordpress.org/sirbrillig\">Payton Swick</a>, <a href=\"https://profiles.wordpress.org/pdufour\">pdufour</a>, <a href=\"https://profiles.wordpress.org/piewp\">Perdaan</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/philipjohn\">Philip John</a>, <a href=\"https://profiles.wordpress.org/delawski\">Piotr Delawski</a>, <a href=\"https://profiles.wordpress.org/psoluch\">Piotr Soluch</a>, <a href=\"https://profiles.wordpress.org/postpostmodern\">postpostmodern</a>, <a href=\"https://profiles.wordpress.org/pranalipatel\">Pranali Patel</a>, <a href=\"https://profiles.wordpress.org/pratikshrestha\">Pratik Shrestha</a>, <a href=\"https://profiles.wordpress.org/presskopp\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/printsachen1\">printsachen1</a>, <a href=\"https://profiles.wordpress.org/priyankabehera155\">Priyanka Behera</a>, <a href=\"https://profiles.wordpress.org/prosti\">prosti</a>, <a href=\"https://profiles.wordpress.org/ptbello\">ptbello</a>, <a href=\"https://profiles.wordpress.org/rachelbaker\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rafaehlers\">Rafael Ehlers</a>, <a href=\"https://profiles.wordpress.org/raggedrobins\">raggedrobins</a>, <a href=\"https://profiles.wordpress.org/raisonon\">raisonon</a>, <a href=\"https://profiles.wordpress.org/ramiy\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ramiabraham\">ramiabraham</a>, <a href=\"https://profiles.wordpress.org/ranh\">ranh</a>, <a href=\"https://profiles.wordpress.org/rclations\">RC Lations</a>, <a href=\"https://profiles.wordpress.org/redrambles\">redrambles</a>, <a href=\"https://profiles.wordpress.org/reidbusi\">reidbusi</a>, <a href=\"https://profiles.wordpress.org/reldev\">reldev</a>, <a href=\"https://profiles.wordpress.org/rellect\">rellect</a>, <a href=\"https://profiles.wordpress.org/arena\">RENAUT</a>, <a href=\"https://profiles.wordpress.org/rensw90\">rensw90</a>, <a href=\"https://profiles.wordpress.org/reportermike\">reportermike</a>, <a href=\"https://profiles.wordpress.org/rianrietveld\">Rian Rietveld</a>, <a href=\"https://profiles.wordpress.org/riddhiehta02\">Riddhi Mehta</a>, <a href=\"https://profiles.wordpress.org/aussieguy123\">Robbie Cahill</a>, <a href=\"https://profiles.wordpress.org/sanchothefat\">Robert O&#8217;Rourke</a>, <a href=\"https://profiles.wordpress.org/littlerchicken\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/runciters\">runciters</a>, <a href=\"https://profiles.wordpress.org/ryan\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/sagarjadhav\">Sagar Jadhav</a>, <a href=\"https://profiles.wordpress.org/sagarprajapati\">Sagar Prajapati</a>, <a href=\"https://profiles.wordpress.org/sagarkbhatt\">sagarkbhatt</a>, <a href=\"https://profiles.wordpress.org/salcode\">Sal Ferrarello</a>, <a href=\"https://profiles.wordpress.org/samantha-miller\">Samantha Miller</a>, <a href=\"https://profiles.wordpress.org/samikeijonen\">Sami Keijonen</a>, <a href=\"https://profiles.wordpress.org/samuelsidler\">Samuel Sidler</a>, <a href=\"https://profiles.wordpress.org/sanketparmar\">Sanket Parmar</a>, <a href=\"https://profiles.wordpress.org/sathyapulse\">sathyapulse</a>, <a href=\"https://profiles.wordpress.org/sboisvert\">sboisvert</a>, <a href=\"https://profiles.wordpress.org/coffee2code\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/seanchayes\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sfpt\">sfpt</a>, <a href=\"https://profiles.wordpress.org/sgolemon\">sgolemon</a>, <a href=\"https://profiles.wordpress.org/shadyvb\">Shady Sharaf</a>, <a href=\"https://profiles.wordpress.org/shashwatmittal\">shashwatmittal</a>, <a href=\"https://profiles.wordpress.org/shazahm1hotmailcom\">shazahm1</a>, <a href=\"https://profiles.wordpress.org/shulard\">shulard</a>, <a href=\"https://profiles.wordpress.org/slbmeh\">slbmeh</a>, <a href=\"https://profiles.wordpress.org/soean\">Soren Wrede</a>, <a href=\"https://profiles.wordpress.org/sstoqnov\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/stephdau\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/netweb\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/stephenharris\">Stephen Harris</a>, <a href=\"https://profiles.wordpress.org/stevenkword\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/stormrockwell\">stormrockwell</a>, <a href=\"https://profiles.wordpress.org/sudar\">Sudar Muthu</a>, <a href=\"https://profiles.wordpress.org/supercoder\">Supercoder</a>, <a href=\"https://profiles.wordpress.org/cybr\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/szaqal21\">szaqal21</a>, <a href=\"https://profiles.wordpress.org/gonom9\">taggon</a>, <a href=\"https://profiles.wordpress.org/miyauchi\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/takayukister\">Takayuki Miyoshi</a>, <a href=\"https://profiles.wordpress.org/karmatosed\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/technopolitica\">technopolitica</a>, <a href=\"https://profiles.wordpress.org/teinertb\">teinertb</a>, <a href=\"https://profiles.wordpress.org/tejas5989\">tejas5989</a>, <a href=\"https://profiles.wordpress.org/terwdan\">terwdan</a>, <a href=\"https://profiles.wordpress.org/tharsheblows\">tharsheblows</a>, <a href=\"https://profiles.wordpress.org/themiked\">theMikeD</a>, <a href=\"https://profiles.wordpress.org/thepelkus\">thepelkus</a>, <a href=\"https://profiles.wordpress.org/tfrommen\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/timmydcrawford\">Timmy Crawford</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/timph\">timph</a>, <a href=\"https://profiles.wordpress.org/tmatsuur\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tomdxw\">tomdxw</a>, <a href=\"https://profiles.wordpress.org/topher1kenobe\">Topher</a>, <a href=\"https://profiles.wordpress.org/wpsmith\">Travis Smith</a>, <a href=\"https://profiles.wordpress.org/triplejumper12\">triplejumper12</a>, <a href=\"https://profiles.wordpress.org/truongwp\">truongwp</a>, <a href=\"https://profiles.wordpress.org/tymvie\">tymvie</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/utkarshpatel\">Utkarsh</a>, <a href=\"https://profiles.wordpress.org/vaishuagola27\">vaishu.agola27</a>, <a href=\"https://profiles.wordpress.org/vijustin\">vijustin</a>, <a href=\"https://profiles.wordpress.org/vortfu\">vortfu</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/wpfo\">wpfo</a>, <a href=\"https://profiles.wordpress.org/xrmx\">xrmx</a>, <a href=\"https://profiles.wordpress.org/ze3kr\">ze3kr</a>, și <a href=\"https://profiles.wordpress.org/h3llas\">Zeljko Ascic</a>.</p>\n<p>La final, mulțumiri întregii comunități a traducătorilor ce au lucrat la versiunea WordPress 4.8. Efortul lor aduce WordPress 4.8 complet tradus în 38 de limbi la data lansării, cu multe ce vor veni în zilele următoare.</p>\n<p>Vrei să faci un articol despre WordPress 4.8? Am pregătit aici un <a href=\"https://s.w.org/images/core/4.8/wp-4-8_press-kit.zip\">comunicat de presă (în engleză)</a> cu informații despre funcționalitățile acestei versiuni, precum și câteva elemente media de suport.</p>\n<p>Dacă vrei să ne fii alături sau să dai o mână de ajutor, uită-te la <a href=\"https://make.wordpress.org/\">Make WordPress</a> și la <a href=\"https://make.wordpress.org/core/\" target=\"_blank\" rel=\"noopener\">blogul nostru pentru dezvoltarea nucleului</a>. Îți mulțumim că ai ales WordPress  — sperăm să te bucuri de el!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://ro.wordpress.org/2017/06/08/wordpress-4-8-evans/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WordPress Meetup Cluj-Napoca – Întâlnirea din mai: Arhitectura CSS\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://ro.wordpress.org/2017/05/29/wordpress-meetup-cluj-napoca-intalnirea-din-mai-arhitectura-css/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"https://ro.wordpress.org/2017/05/29/wordpress-meetup-cluj-napoca-intalnirea-din-mai-arhitectura-css/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 29 May 2017 14:23:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Evenimente\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"MeetUp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1671\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:342:\"Salut, Pe 30 mai ne întâlnim din nou, de data aceasta pentru o prezentare ținută de Tudor Chira despre arhitectura CSS-ul pentru un site. Tudor este Designer și Front-end Developer la Forward. Lucrează cu CSS de pe vremea când aranjamentul în pagină se făcea cu tabele. Tudor e mereu interesat de noutățile din lumea CSS [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Anda Pop\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5822:\"<p>Salut,</p>\n<p>Pe 30 mai ne întâlnim din nou, de data aceasta pentru o prezentare ținută de Tudor Chira despre arhitectura CSS-ul pentru un site.</p>\n<p>Tudor este Designer și Front-end Developer la Forward.<br />\nLucrează cu CSS de pe vremea când aranjamentul în pagină se făcea cu tabele. Tudor e mereu interesat de noutățile din lumea CSS și caută să aplice tot timpul practicile cele mai bune.<span id=\"more-1671\"></span></p>\n<p>În prezentarea sa ne va vorbi despre:</p>\n<p>• folosirea Framework-urilor CSS și a preprocesoarelor</p>\n<p>• concepte ca <span id=\":1c9.co\" class=\"tL8wMe EMoHub\" dir=\"ltr\">Object Oriented CSS</span>, BEM</p>\n<p>• abordări de structurare a codului</p>\n<p>• și ne va ghida prin procesul de a scrie CSS-ul pentru un proiect: de unde să începem, care sunt pașii pricipali, cum să împărțim pagina pe componente, etc.</p>\n<p>&nbsp;</p>\n<p>Tudor este o sursă minunată de sfaturi și trucuri despre CSS,  așa că vă încurajăm să veniți cu orice întrebări sau curiozități aveți.</p>\n<p>Suntem bucuroși să îl avem ca invitat și sperăm că veți fi și voi.</p>\n<p>&nbsp;</p>\n<p><em>Întâlnirea are loc <strong>marți</strong>, <strong>30 Mai</strong>, la ora <strong>18:30</strong>, la biroul <strong>Forward România, </strong>pe<strong> strada Năsăud 22, et. 1, ap 7</strong>. (Cluj-Napoca)<br />\nDacă puteți, vă rugăm să vă anunțați prezența pe meetup.com, la linkul de mai jos</em></p>\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style>\n<div id=\"meetup_oembed\" style=\"height:302px\">\n<div style=\"max-height:262px;overflow:hidden\">\n<h3>May Meetup &#8211; CSS Architecture</h3>\n<p style=\"margin:5px 0;font-size:16px\">Tuesday, May 30, 2017,  6:30 PM</p>\n<p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">The office of Forward România</span><br /><span style=\"font-size:12px;\">Str. Năsăud 22, scara A, ap. 7, et. 1 Cluj-Napoca, RO</span></p>\n<p>          <span style=\"color:#4F8A10;font-size:16px;\">23 Members Attending</span>           </p>\n<div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/5/f/0/d/thumb_250584333.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/8/a/9/9/thumb_243755481.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/c/1/a/2/thumb_266929570.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/5/5/b/thumb_11401371.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/7/2/7/e/thumb_262529310.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/9/8/4/6/thumb_159758982.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/9/0/6/4/thumb_265356964.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/a/9/1/5/thumb_262423285.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/7/0/f/7/thumb_267028919.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/1/5/b/8/thumb_267185560.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/e/6/3/e/thumb_95758942.jpeg\" /></div>\n</p></div>\n<p style=\"line-height:16px\">Hello,This month we&#8217;ll meet Tuesday, May 30th for a presentation / discussion with Tudor Chira about the architecture of CSS for a site or theme.Tudor is a Designer and Front-end Developer at Forward.  He&#8217;s been working with CSS since the days when layouts were being built with tables. He&#8217;s on a continuous lookout for new paradigms, best practice&#8230;</p>\n</p></div>\n<p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/Cluj-Napoca-WordPress-Meetup/events/240178068/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p>\n</div>\n<p>&nbsp;</p>\n<p><em>Aceste întâlniri sunt cu intrare liberă, oricine este binevenit.</em><br />\n<em>Adu un prieten, răspândește poezia!</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://ro.wordpress.org/2017/05/29/wordpress-meetup-cluj-napoca-intalnirea-din-mai-arhitectura-css/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:51:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 4.7.5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://ro.wordpress.org/2017/05/17/wordpress-4-7-5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://ro.wordpress.org/2017/05/17/wordpress-4-7-5/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 May 2017 19:40:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:8:\"Lansări\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Minore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:12:\"mentenanță\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"securitate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1669\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:425:\"WordPress 4.7.5 este disponibil acum și în limba română. Au fost rezolvate mai multe erori și probleme de securitate. Deoarece au fost soluționate probleme de securitate, îți recomandăm să faci actualizarea cât mai curând. Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă WordPress 4.7.5 în limba română! Pentru mai multe informații citește și [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Alin Marcu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:859:\"<p><img class=\"alignright\" src=\"https://ro.wordpress.org/wp-admin/images/wordpress-logo.svg?ver=20131107\" alt=\"WordPress logo\" longdesc=\"https://ro.wordpress.org/wp-admin/WordPress%20logo\" />WordPress 4.7.5 este disponibil acum și în limba română. Au fost rezolvate mai multe erori și probleme de securitate. Deoarece au fost soluționate probleme de securitate, îți recomandăm să faci actualizarea cât mai curând.</p>\n<p>Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă <a href=\"https://ro.wordpress.org/releases/\" target=\"_blank\" rel=\"noopener noreferrer\">WordPress 4.7.5 în limba română</a>!</p>\n<p>Pentru mai multe informații citește și <a href=\"https://wordpress.org/news/2017/05/wordpress-4-7-5/\" target=\"_blank\" rel=\"noopener noreferrer\">notele de lansare</a> (în engleză).</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ro.wordpress.org/2017/05/17/wordpress-4-7-5/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:48:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 4.7.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://ro.wordpress.org/2017/04/20/wordpress-4-7-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://ro.wordpress.org/2017/04/20/wordpress-4-7-4/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 22:15:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:8:\"Lansări\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Minore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:12:\"mentenanță\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1664\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:422:\"WordPress 4.7.4 este disponibil acum și în limba română. Au fost rezolvate 47 de erori. Pentru a avea o experiență mai bună cu WordPress, îți recomandăm actualizarea la această ultimă versiune. Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă WordPress 4.7.4 în limba română! Pentru mai multe informații citește și notele de lansare (în engleză).\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Alin Marcu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:795:\"<p><img class=\"alignright\" src=\"https://ro.wordpress.org/wp-admin/images/wordpress-logo.svg?ver=20131107\" alt=\"WordPress logo\" longdesc=\"WordPress logo\" />WordPress 4.7.4 este disponibil acum și în limba română. Au fost rezolvate 47 de erori. Pentru a avea o experiență mai bună cu WordPress, îți recomandăm actualizarea la această ultimă versiune.</p>\n<p>Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă <a href=\"https://ro.wordpress.org/releases/\" target=\"_blank\" rel=\"noopener noreferrer\">WordPress 4.7.4 în limba română</a>!</p>\n<p>Pentru mai multe informații citește și <a href=\"https://wordpress.org/news/2017/04/wordpress-4-7-4/\" target=\"_blank\" rel=\"noopener noreferrer\">notele de lansare</a> (în engleză).</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ro.wordpress.org/2017/04/20/wordpress-4-7-4/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WordPress Meetup Cluj-Napoca – Întâlnirea din aprilie: Workshop WP-CLI\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://ro.wordpress.org/2017/04/14/wordpress-meetup-cluj-napoca-intalnirea-din-aprilie-workshop-wp-cli/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://ro.wordpress.org/2017/04/14/wordpress-meetup-cluj-napoca-intalnirea-din-aprilie-workshop-wp-cli/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Apr 2017 14:48:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Evenimente\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"MeetUp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1651\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"Salut, În luna aprilie ne întâlnim pe data de 27 pentru a învăța despre WP-CLI, interfața WordPress pentru linia de comandă. WP-CLI e o unealtă extrem de utilă, pe care o veți putea folosi imediat ce învățați câteva comenzi. Vom descoperi împreună cât e de simplu să facem majoritatea operațiunilor zilnice de WordPress direct din consolă. Vom trece [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Anda Pop\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5846:\"<p>Salut,</p>\n<p>În luna aprilie ne întâlnim pe data de 27 pentru a învăța despre <a href=\"http://wp-cli.org/\">WP-CLI</a>, interfața WordPress pentru linia de comandă.<span id=\"more-1651\"></span></p>\n<p>WP-CLI e o unealtă extrem de utilă, pe care o veți putea folosi imediat ce învățați câteva comenzi.</p>\n<ul>\n<li>Vom descoperi împreună cât e de simplu să facem majoritatea operațiunilor zilnice de WordPress direct din consolă.</li>\n<li>Vom trece prin câteva scenarii des întâlnite atunci când folosim WP-CLI:\n<ul>\n<li>instalare / actualizare WordPress</li>\n<li>operațiuni cu module</li>\n<li>migrarea bazei de date de pe local pe staging și vice-versa</li>\n</ul>\n</li>\n</ul>\n<p>Vă rog să vă aduceți laptopurile și să veniți pregătiți să tastați, nu să dați click <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n<p>Până atunci vă urez Paște Fericite!<br />\n( și să fie generos Iepurașul <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f600.png\" alt=\"😀\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> )</p>\n<p><em>Întâlnirea are loc <strong>joi</strong>, <strong>27 Aprilie</strong>, la ora <strong>18:30</strong>, la biroul <strong>Forward România, </strong>pe<strong> strada Năsăud 22, et. 1, ap 7</strong>. (Cluj-Napoca)<br />\nDacă puteți, vă rugăm să vă anunțați prezența pe meetup.com, la linkul de mai jos</em></p>\n<style type=\"text/css\">#meetup_oembed .mu_clearfix:after { visibility: hidden; display: block; font-size: 0; content: \" \"; clear: both; height: 0; }* html #meetup_oembed .mu_clearfix, *:first-child+html #meetup_oembed .mu_clearfix { zoom: 1; }#meetup_oembed { background:#eee;border:1px solid #ccc;padding:10px;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;margin:0; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; }#meetup_oembed h3 { font-weight:normal; margin:0 0 10px; padding:0; line-height:26px; font-family:Georgia,Palatino,serif; font-size:24px }#meetup_oembed p { margin: 0 0 10px; padding:0; line-height:16px; }#meetup_oembed img { border:none; margin:0; padding:0; }#meetup_oembed a, #meetup_oembed a:visited, #meetup_oembed a:link { color: #1B76B3; text-decoration: none; cursor: hand; cursor: pointer; }#meetup_oembed a:hover { color: #1B76B3; text-decoration: underline; }#meetup_oembed a.mu_button { font-size:14px; -moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;border:2px solid #A7241D;color:white!important;text-decoration:none;background-color: #CA3E47; background-image: -moz-linear-gradient(top, #ca3e47, #a8252e); background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #a8252e), color-stop(1, #ca3e47));disvplay:inline-block;padding:5px 10px; }#meetup_oembed a.mu_button:hover { color: #fff!important; text-decoration: none; }#meetup_oembed .photo { width:50px; height:50px; overflow:hidden;background:#ccc;float:left;margin:0 5px 0 0;text-align:center;padding:1px; }#meetup_oembed .photo img { height:50px }#meetup_oembed .number { font-size:18px; }#meetup_oembed .thing { text-transform: uppercase; color: #555; }</style>\n<div id=\"meetup_oembed\" style=\"height:302px\">\n<div style=\"max-height:262px;overflow:hidden\">\n<h3>April Meetup &#8211; WP-CLI workshop</h3>\n<p style=\"margin:5px 0;font-size:16px\">Thursday, Apr 27, 2017,  6:30 PM</p>\n<p style=\"margin: 0 0 5px;\"><span style=\"font-size:14px\">The office of Forward România</span><br /><span style=\"font-size:12px;\">Str. Năsăud 22, scara A, ap. 7, et. 1 Cluj-Napoca, RO</span></p>\n<p>          <span style=\"color:#4F8A10;font-size:16px;\">20 Members Went</span>           </p>\n<div style=\"margin:5px 0 10px\" class=\"mu_clearfix\">\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/a/3/3/b/thumb_260981787.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/7/2/7/e/thumb_262529310.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/a/c/1/5/thumb_260924053.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/9/8/4/6/thumb_159758982.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/8/e/c/thumb_6175532.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/e/4/2/3/thumb_265318403.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/a/9/1/5/thumb_262423285.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/d/a/4/thumb_264236740.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/5/0/8/8/thumb_261320616.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/d/9/8/1/thumb_264235681.jpeg\" /></div>\n<div class=\"photo\"><img src=\"https://secure.meetupstatic.com/photos/member/3/f/c/d/thumb_262396333.jpeg\" /></div>\n</p></div>\n<p style=\"line-height:16px\">Hello everyoneOn April 27th we’ll meet up for a new workshop: Learning about WP-CLI, the command line interface for WordPress.WP-CLI is a great tool that you won&#8217;t want to stop using once you get the hang of it.* We&#8217;ll discover how easy it is to do many of our day-to-day WordPress tasks directly from the console.* We&#8217;ll go through some really c&#8230;</p>\n</p></div>\n<p style=\"margin:10px 0 0;\"><a href=\"https://www.meetup.com/Cluj-Napoca-WordPress-Meetup/events/239209472/\" target=\"_blank\" class=\"mu_button\"><strong>Check out this Meetup &rarr;</strong></a></p>\n</div>\n<p>&nbsp;</p>\n<p><em>Aceste întâlniri sunt cu intrare liberă, oricine este binevenit.</em><br />\n<em>Adu un prieten, răspândește poezia!</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"https://ro.wordpress.org/2017/04/14/wordpress-meetup-cluj-napoca-intalnirea-din-aprilie-workshop-wp-cli/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WordPress Meetup Cluj-Napoca – Întâlnirea din martie: Cu ce te putem ajuta?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"https://ro.wordpress.org/2017/03/09/wordpress-meetup-cluj-napoca-intalnirea-din-martie-cu-ce-te-putem-ajuta/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://ro.wordpress.org/2017/03/09/wordpress-meetup-cluj-napoca-intalnirea-din-martie-cu-ce-te-putem-ajuta/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 Mar 2017 14:36:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Evenimente\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"MeetUp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1613\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:368:\"Servustoc 🙂 În luna aceasta ne întâlnim pe 20 martie, pentru un workshop de rezolvat probleme de WordPress. Problemele cui, vă întrebați? Ale voastre! 😀 Vă așteptăm să veniți cu orice probleme aveți momentan și vom încerca să le rezolvăm împreună. Ne vom împărți pe echipe și vom rezolva cât mai multe probleme. E o oportunitate [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Anda Pop\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1989:\"<p>Servustoc <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n<p>În luna aceasta ne întâlnim pe 20 martie, pentru un <strong>workshop de rezolvat probleme de WordPress</strong>.</p>\n<p>Problemele cui, vă întrebați? Ale voastre! <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f600.png\" alt=\"😀\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n<p>Vă așteptăm să veniți cu orice probleme aveți momentan și vom încerca să le rezolvăm împreună. Ne vom împărți pe echipe și vom rezolva cât mai multe probleme.</p>\n<p>E o oportunitate bună pentru toată lumea: dacă ai o problemă vei primi niște răspunsuri, dacă ești programator vei putea să lucrezi împreună cu alții la niște probleme reale, să înveți de la ceilalți sau să vezi ce abordări au ei. Cu siguranță ne vom simți bine ajutându-ne reciproc!</p>\n<p>Așa că aduceți-vă laptopurile și problemele de WordPress!<span id=\"more-1613\"></span></p>\n<p>Notă: Dacă doriți să ridicați o problemă, vă rugăm frumos să vă asigurați că aveți datele necesare pentru a accesa codul site-ului și panoul de control WordPress: link-ul, numele de utilizator și parola la cpanel / FTP / phpMyAdmin, numele de utilizator și parola de la panoul de control WordPress.</p>\n<p>Așadar vă așteptăm <strong>luni 20 Martie</strong>, la ora <strong>18:30</strong>, la biroul <strong>Forward România, </strong>pe<strong> strada Năsăud 22, et. 1, ap 7</strong>. (Cluj-Napoca)</p>\n<p>Dacă puteți, vă rugăm să vă anunțați prezența pe meetup.com, la linkul de mai jos:</p>\n<p><a href=\"https://www.meetup.com/Cluj-Napoca-WordPress-Meetup/events/238239406/\">https://www.meetup.com/Cluj-Napoca-WordPress-Meetup/events/238239406/</a></p>\n<p><em>Aceste întâlniri sunt cu intrare liberă, oricine este binevenit.</em><br />\n<em> Adu un prieten, răspândește poezia!</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://ro.wordpress.org/2017/03/09/wordpress-meetup-cluj-napoca-intalnirea-din-martie-cu-ce-te-putem-ajuta/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 4.7.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://ro.wordpress.org/2017/03/08/wordpress-4-7-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://ro.wordpress.org/2017/03/08/wordpress-4-7-3/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 Mar 2017 09:33:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:8:\"Lansări\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Minore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"csrf\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:12:\"mentenanță\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:10:\"securitate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:3:\"xss\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1610\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:425:\"WordPress 4.7.3 este disponibil acum și în limba română. Au fost rezolvate mai multe erori și probleme de securitate. Deoarece au fost soluționate probleme de securitate, îți recomandăm să faci actualizarea cât mai curând. Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă WordPress 4.7.3 în limba română! Pentru mai multe informații citește și [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Alin Marcu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:840:\"<p><img class=\"alignright\" src=\"https://ro.wordpress.org/wp-admin/images/wordpress-logo.svg?ver=20131107\" alt=\"WordPress logo\" longdesc=\"https://ro.wordpress.org/wp-admin/WordPress%20logo\" />WordPress 4.7.3 este disponibil acum și în limba română. Au fost rezolvate mai multe erori și probleme de securitate. Deoarece au fost soluționate probleme de securitate, îți recomandăm să faci actualizarea cât mai curând.</p>\n<p>Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă <a href=\"https://ro.wordpress.org/releases/\" target=\"_blank\">WordPress 4.7.3 în limba română</a>!</p>\n<p>Pentru mai multe informații citește și <a href=\"https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/\" target=\"_blank\">notele de lansare</a> (în engleză).</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ro.wordpress.org/2017/03/08/wordpress-4-7-3/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:48:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 4.7.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://ro.wordpress.org/2017/01/27/wordpress-4-7-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://ro.wordpress.org/2017/01/27/wordpress-4-7-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Jan 2017 16:05:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:8:\"Lansări\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"Minore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"securitate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ro.wordpress.org/?p=1603\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:425:\"WordPress 4.7.2 este disponibil acum și în limba română. Au fost rezolvate mai multe probleme de securitate. Deoarece au fost soluționate probleme de securitate, îți recomandăm să faci actualizarea cât mai curând. Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă WordPress 4.7.2 în limba română! Pentru mai multe informații citește și notele de [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Alin Marcu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:814:\"<p><img class=\"alignright\" src=\"https://ro.wordpress.org/wp-admin/images/wordpress-logo.svg?ver=20131107\" alt=\"WordPress logo\" longdesc=\"https://ro.wordpress.org/wp-admin/WordPress%20logo\" />WordPress 4.7.2 este disponibil acum și în limba română. Au fost rezolvate mai multe probleme de securitate. Deoarece au fost soluționate probleme de securitate, îți recomandăm să faci actualizarea cât mai curând.</p>\n<p>Dacă ai dezactivat actualizările automate, actualizează acum din panoul de control sau descarcă <a href=\"https://ro.wordpress.org/releases/\" target=\"_blank\">WordPress 4.7.2 în limba română</a>!</p>\n<p>Pentru mai multe informații citește și <a href=\"https://wordpress.org/news/2017/01/wordpress-4-7-2-security-release/\" target=\"_blank\">notele de lansare</a> (în engleză).</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ro.wordpress.org/2017/01/27/wordpress-4-7-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://ro.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 19 Oct 2017 12:45:08 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Thu, 14 Sep 2017 06:39:35 GMT\";s:4:\"link\";s:61:\"<https://ro.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";}}s:5:\"build\";s:14:\"20130911010210\";}', 'no');
INSERT INTO `wpdo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(139, '_transient_timeout_feed_mod_428f6caffd7e5783f408c286f51a5122', '1508460310', 'no'),
(140, '_transient_feed_mod_428f6caffd7e5783f408c286f51a5122', '1508417110', 'no'),
(147, '_transient_timeout_plugin_slugs', '1508519628', 'no'),
(148, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:27:\"woocommerce/woocommerce.php\";}', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(154, 'theme_mods_writee', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1507751291;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(160, 'woocommerce_store_address', 'Vasile Parvan', 'yes'),
(161, 'woocommerce_store_address_2', '', 'yes'),
(162, 'woocommerce_store_city', 'Timisoara', 'yes'),
(163, 'woocommerce_default_country', 'RO:TM', 'yes'),
(164, 'woocommerce_store_postcode', '300300', 'yes'),
(165, 'woocommerce_allowed_countries', 'specific', 'yes'),
(166, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(167, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"RO\";}', 'yes'),
(168, 'woocommerce_ship_to_countries', '', 'yes'),
(169, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(170, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(171, 'woocommerce_calc_taxes', 'no', 'yes'),
(172, 'woocommerce_demo_store', 'no', 'yes'),
(173, 'woocommerce_demo_store_notice', 'Acesta magazin demo pentru testare &mdash; nici o comandă nu va fi onorată.', 'no'),
(174, 'woocommerce_currency', 'RON', 'yes'),
(175, 'woocommerce_currency_pos', 'right_space', 'yes'),
(176, 'woocommerce_price_thousand_sep', '.', 'yes'),
(177, 'woocommerce_price_decimal_sep', ',', 'yes'),
(178, 'woocommerce_price_num_decimals', '2', 'yes'),
(179, 'woocommerce_weight_unit', 'kg', 'yes'),
(180, 'woocommerce_dimension_unit', 'cm', 'yes'),
(181, 'woocommerce_enable_reviews', 'yes', 'yes'),
(182, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(183, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(184, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(185, 'woocommerce_review_rating_required', 'yes', 'no'),
(186, 'woocommerce_shop_page_id', '4', 'yes'),
(187, 'woocommerce_shop_page_display', '', 'yes'),
(188, 'woocommerce_category_archive_display', '', 'yes'),
(189, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(190, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(191, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(192, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}', 'yes'),
(193, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}', 'yes'),
(194, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}', 'yes'),
(195, 'woocommerce_manage_stock', 'yes', 'yes'),
(196, 'woocommerce_hold_stock_minutes', '60', 'no'),
(197, 'woocommerce_notify_low_stock', 'yes', 'no'),
(198, 'woocommerce_notify_no_stock', 'yes', 'no'),
(199, 'woocommerce_stock_email_recipient', 'procosmeticstm@gmail.com', 'no'),
(200, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(201, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(202, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(203, 'woocommerce_stock_format', '', 'yes'),
(204, 'woocommerce_file_download_method', 'force', 'no'),
(205, 'woocommerce_downloads_require_login', 'no', 'no'),
(206, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(207, 'woocommerce_prices_include_tax', 'no', 'yes'),
(208, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(209, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(210, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(211, 'woocommerce_tax_classes', 'Rată rate\nZero redusă', 'yes'),
(212, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(213, 'woocommerce_tax_display_cart', 'excl', 'no'),
(214, 'woocommerce_price_display_suffix', '', 'yes'),
(215, 'woocommerce_tax_total_display', 'itemized', 'no'),
(216, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(217, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(218, 'woocommerce_ship_to_destination', 'billing', 'no'),
(219, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(220, 'woocommerce_enable_coupons', 'yes', 'yes'),
(221, 'woocommerce_calc_discounts_sequentially', 'yes', 'no'),
(222, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(223, 'woocommerce_force_ssl_checkout', 'yes', 'yes'),
(224, 'woocommerce_cart_page_id', '5', 'yes'),
(225, 'woocommerce_checkout_page_id', '6', 'yes'),
(226, 'woocommerce_terms_page_id', '63', 'no'),
(227, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(228, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(229, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(230, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(231, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(232, 'woocommerce_myaccount_page_id', '7', 'yes'),
(233, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(234, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(235, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(236, 'woocommerce_registration_generate_username', 'yes', 'no'),
(237, 'woocommerce_registration_generate_password', 'yes', 'no'),
(238, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(239, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(240, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(241, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(242, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(243, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(244, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(245, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(246, 'woocommerce_email_from_name', 'Pro Cosmetics', 'no'),
(247, 'woocommerce_email_from_address', 'procosmeticstm@gmail.com', 'no'),
(248, 'woocommerce_email_header_image', '', 'no'),
(249, 'woocommerce_email_footer_text', 'Pro Cosmetics', 'no'),
(250, 'woocommerce_email_base_color', '#96588a', 'no'),
(251, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(252, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(253, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(254, 'woocommerce_api_enabled', 'yes', 'yes'),
(260, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(261, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(262, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:22:\"Filtrează după preț\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_product_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(277, 'woocommerce_product_type', 'physical', 'yes'),
(278, 'woocommerce_allow_tracking', 'yes', 'yes'),
(279, 'woocommerce_tracker_last_send', '1508417006', 'yes'),
(280, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(281, 'woocommerce_paypal_settings', 'a:2:{s:7:\"enabled\";s:3:\"yes\";s:5:\"email\";s:24:\"procosmeticstm@gmail.com\";}', 'yes'),
(282, '_transient_shipping-transient-version', '1507811742', 'yes'),
(283, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:8:\"Forfetar\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"20\";}', 'yes'),
(289, 'current_theme', 'Monografie Contabila', 'yes'),
(290, 'theme_mods_storefront', 'a:7:{i:0;b:0;s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f8f8f8;\n			}\n\n			table tbody td {\n				background-color: #fdfdfd;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #fbfbfb;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e6e6e6;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f8f8f8;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #ffffff;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #fafafa;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #f5f5f5;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #f0f0f0;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #ffffff;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f8f8f8;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #e3e3e3;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f8f8f8 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f8f8f8 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:23;s:9:\"secondary\";i:0;s:8:\"handheld\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1508417428;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:10:\"archives-2\";i:2;s:12:\"categories-2\";i:3;s:6:\"meta-2\";i:4;s:28:\"woocommerce_product_search-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(291, 'theme_switched', '', 'yes'),
(292, 'storefront_nux_fresh_site', '0', 'yes'),
(304, 'storefront_nux_dismissed', '1', 'yes'),
(312, '_transient_product_query-transient-version', '1507813184', 'yes'),
(315, '_transient_product-transient-version', '1507813622', 'yes'),
(335, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(344, 'woocommerce_tracker_ua', 'a:1:{i:0;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/61.0.3163.100 safari/537.36\";}', 'yes'),
(363, 'woocommerce_free_shipping_2_settings', 'a:3:{s:5:\"title\";s:17:\"Livrare gratuită\";s:8:\"requires\";s:10:\"min_amount\";s:10:\"min_amount\";s:3:\"200\";}', 'yes'),
(364, 'woocommerce_bacs_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:22:\"Transfer bancar direct\";s:11:\"description\";s:193:\"Fă plata direct în contul nostru bancar. Te rog folosește ID-ul comenzii tale ca referință de plată. Comanda nu va fi livrată până când fondurile nu vor fi vărsate în contul nostru.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";}', 'yes'),
(365, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}', 'yes'),
(367, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:18:\"Numerar la livrare\";s:11:\"description\";s:33:\"Plătește cu numerar la livrare.\";s:12:\"instructions\";s:33:\"Plătește cu numerar la livrare.\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(369, '_transient_timeout_wc_shipping_method_count_1_1507811742', '1510404002', 'no'),
(370, '_transient_wc_shipping_method_count_1_1507811742', '2', 'no'),
(375, 'woocommerce_new_order_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:9:\"recipient\";s:32:\"procosmeticstm@gmail.com, Client\";s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:10:\"email_type\";s:4:\"html\";}', 'yes'),
(387, 'product_cat_children', 'a:0:{}', 'yes'),
(388, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:6:\"culori\";s:15:\"attribute_label\";s:6:\"Culori\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(394, '_transient_timeout_external_ip_address_213.233.84.105', '1508417697', 'no'),
(395, '_transient_external_ip_address_213.233.84.105', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(449, '_transient_timeout_wc_term_counts', '1510405624', 'no'),
(450, '_transient_wc_term_counts', 'a:2:{i:19;s:1:\"1\";i:18;s:1:\"1\";}', 'no'),
(460, '_transient_orders-transient-version', '1507813823', 'yes'),
(469, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(470, '_transient_timeout_external_ip_address_89.42.218.124', '1508418813', 'no'),
(471, '_transient_external_ip_address_89.42.218.124', '89.42.216.240', 'no'),
(476, '_transient_timeout_wc_product_children_41', '1510406711', 'no'),
(477, '_transient_wc_product_children_41', 'a:2:{s:3:\"all\";a:3:{i:0;i:43;i:1;i:44;i:2;i:45;}s:7:\"visible\";a:3:{i:0;i:43;i:1;i:44;i:2;i:45;}}', 'no'),
(478, '_transient_timeout_wc_var_prices_41', '1510406711', 'no'),
(479, '_transient_wc_var_prices_41', '{\"version\":\"1507813622\",\"35b9c34328efde70d593af14191ad36c\":{\"price\":{\"43\":\"40.00\",\"44\":\"50.00\",\"45\":\"60.00\"},\"regular_price\":{\"43\":\"40.00\",\"44\":\"50.00\",\"45\":\"60.00\"},\"sale_price\":{\"43\":\"40.00\",\"44\":\"50.00\",\"45\":\"60.00\"}},\"7253c28fb58ddd2c52bf7031fc20d557\":{\"price\":{\"43\":\"40.00\",\"44\":\"50.00\",\"45\":\"60.00\"},\"regular_price\":{\"43\":\"40.00\",\"44\":\"50.00\",\"45\":\"60.00\"},\"sale_price\":{\"43\":\"40.00\",\"44\":\"50.00\",\"45\":\"60.00\"}}}', 'no'),
(480, '_transient_timeout_wc_child_has_weight_41', '1510406712', 'no'),
(481, '_transient_wc_child_has_weight_41', '', 'no'),
(482, '_transient_timeout_wc_child_has_dimensions_41', '1510406712', 'no'),
(483, '_transient_wc_child_has_dimensions_41', '', 'no'),
(486, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(500, '_transient_timeout_wc_low_stock_count', '1510431601', 'no'),
(501, '_transient_wc_low_stock_count', '0', 'no'),
(502, '_transient_timeout_wc_outofstock_count', '1510431601', 'no'),
(503, '_transient_wc_outofstock_count', '1', 'no'),
(506, '_transient_timeout_external_ip_address_79.113.76.120', '1508446752', 'no'),
(507, '_transient_external_ip_address_79.113.76.120', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(513, '_transient_timeout_external_ip_address_34.208.61.49', '1508532737', 'no'),
(514, '_transient_external_ip_address_34.208.61.49', '89.42.216.240', 'no'),
(523, '_transient_timeout_external_ip_address_184.173.226.128', '1508625296', 'no'),
(524, '_transient_external_ip_address_184.173.226.128', '89.42.216.240', 'no'),
(531, '_transient_timeout_external_ip_address_34.212.65.157', '1508706383', 'no'),
(532, '_transient_external_ip_address_34.212.65.157', '89.42.216.240', 'no'),
(539, '_transient_timeout_external_ip_address_35.166.132.47', '1508791970', 'no'),
(540, '_transient_external_ip_address_35.166.132.47', '89.42.216.240', 'no'),
(562, '_transient_timeout_external_ip_address_84.232.227.171', '1509021798', 'no'),
(563, '_transient_external_ip_address_84.232.227.171', '89.42.216.240', 'no'),
(570, '_site_transient_timeout_browser_a9db4d03969fdd98d377b682b063efe6', '1509021903', 'no'),
(571, '_site_transient_browser_a9db4d03969fdd98d377b682b063efe6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"61.0.3163.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(572, '_transient_timeout_wc_report_sales_by_date', '1508527188', 'no'),
(573, '_transient_wc_report_sales_by_date', 'a:40:{s:32:\"8b2244555ae26729e2e53a32c1a4e13a\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"1186d93c5bdcd6066c29dcf5e79ad88e\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"reducere50\";s:15:\"discount_amount\";s:1:\"5\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"92899c95c558242b590de46f8fe3ef6a\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:2:\"10\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"a1f564c04549ca4d4db40ae8ac022b69\";N;s:32:\"7527b367e969b25613396114ddc4577b\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:3:\"535\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"8684a1021be18b27ded115bf3e87da80\";a:0:{}s:32:\"d739f0149ed420d5d0685a472a408255\";a:0:{}s:32:\"76886a191fef440c7af5e9c2f40bc33d\";a:0:{}s:32:\"383428884e3f70b9ee8e287d1636068d\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"962795de2a5162dd63665b36ee6fa788\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"reducere50\";s:15:\"discount_amount\";s:1:\"5\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"2096f5d4be84a16daad6d7407e965878\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:2:\"10\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"ee841498acde01e8b78708c6cc601f69\";N;s:32:\"ef38e7ba0f20dccb754aef94bca39c5e\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:3:\"535\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"138fd94dd50ce04e48137daddca51b69\";a:0:{}s:32:\"bc69102c328798ff4faf2de609bdb082\";a:0:{}s:32:\"cbaf19e7a86d1fde5848eb8c468b9412\";a:0:{}s:32:\"a547e6df9222fd030f581990f7ba0ca9\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"aa42efedc86f1d64268cb5c12d42a678\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"reducere50\";s:15:\"discount_amount\";s:1:\"5\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"8205bf6a563ff21923ca8e0962b32ee5\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:2:\"10\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"5f8416431f3f6dd1e80eacc78a80e8a7\";N;s:32:\"0671bb78641440c23656b07ced9f2ec0\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:3:\"535\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"dda79a2655d7166bc34bb8436ac53af7\";a:0:{}s:32:\"aa30bd234a98596d026873f51c92e1ac\";a:0:{}s:32:\"75de8d7b5d260c5ec9154e2b34b6f301\";a:0:{}s:32:\"08a23cf4ae9aac30703bdd649bb215ca\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"f5d70f4c693e7dc062f75f2fc00c1f5a\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"reducere50\";s:15:\"discount_amount\";s:1:\"5\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"6caae18328f85d3842316ecbf8a0f698\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:2:\"10\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"25b91a250d15079cb8756dfec1e9a953\";N;s:32:\"62a802a66ac5b0c7673ad9d3bb2fd593\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:3:\"535\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"920e9e9911dc21c11c8cec1c105c03fe\";a:0:{}s:32:\"e6c19884d5b02e488a92896c13d5a6ed\";a:0:{}s:32:\"62c55736b5aa975022efbe5e0b4af9d5\";a:0:{}s:32:\"bcbec12a92d612232530694ae4c380a8\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"f82f4c3cdae3adfae9d4aa8a41cd3567\";a:1:{i:0;O:8:\"stdClass\":3:{s:15:\"order_item_name\";s:10:\"reducere50\";s:15:\"discount_amount\";s:1:\"5\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"04f03464a8caa3063b68ec8b8c3e857e\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:2:\"10\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"14d9163ffe5dc55717139930a807e4ce\";N;s:32:\"b9baefbc56440f5dcc4a8408237de8bd\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:3:\"535\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"f63624b65f8e8c1cb17b65f13f5d20c6\";a:0:{}s:32:\"5bd66b3097f42a303d51f069bc3ca726\";a:0:{}s:32:\"132228b9764d62eff828d1216549a427\";a:0:{}}', 'no'),
(574, '_transient_timeout_wc_admin_report', '1508503503', 'no'),
(575, '_transient_wc_admin_report', 'a:2:{s:32:\"dfdaf0f6b22f344b84f8879b6c74791e\";a:1:{i:0;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:3:\"535\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}s:32:\"81129c29a0f73e35ce30ba9aac91d06d\";a:1:{i:0;O:8:\"stdClass\":3:{s:10:\"product_id\";s:2:\"41\";s:15:\"sparkline_value\";s:1:\"9\";s:9:\"post_date\";s:19:\"2017-10-12 15:07:00\";}}}', 'no'),
(576, '_site_transient_timeout_community-events-0440dc29cbea2861a710d958ba81c4f8', '1508460306', 'no'),
(577, '_site_transient_community-events-0440dc29cbea2861a710d958ba81c4f8', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"84.232.227.0\";}s:6:\"events\";a:0:{}}', 'no'),
(578, '_transient_timeout_feed_8298c8502a52d5e8112e4dd6f2f1b473', '1508460310', 'no'),
(579, '_transient_feed_8298c8502a52d5e8112e4dd6f2f1b473', 'a:3:{s:3:\"url\";s:34:\"http://ro.wordpress.org/blog/feed/\";s:8:\"feed_url\";s:30:\"https://ro.wordpress.org/feed/\";s:5:\"build\";s:14:\"20130911010210\";}', 'no'),
(580, '_transient_timeout_feed_mod_8298c8502a52d5e8112e4dd6f2f1b473', '1508460310', 'no'),
(581, '_transient_feed_mod_8298c8502a52d5e8112e4dd6f2f1b473', '1508417110', 'no'),
(582, '_transient_timeout_dash_v2_905047ed2e5e55060b58c8967be41bba', '1508460310', 'no'),
(583, '_transient_dash_v2_905047ed2e5e55060b58c8967be41bba', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ro.wordpress.org/2017/09/13/wordcamp-bucuresti-2017-se-apropie/\'>WordCamp București 2017 se apropie</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ro.wordpress.org/2017/09/13/wordcamp-bucuresti-2017-se-apropie/\'>WordCamp București 2017 se apropie</a></li><li><a class=\'rsswidget\' href=\'https://ro.wordpress.org/2017/08/03/wordpress-4-8-1/\'>WordPress 4.8.1</a></li><li><a class=\'rsswidget\' href=\'https://ro.wordpress.org/2017/06/08/wordpress-4-8-evans/\'>WordPress 4.8 „Evans”</a></li></ul></div>', 'no'),
(587, '_transient_timeout__woocommerce_helper_updates', '1508460337', 'no'),
(588, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1508417137;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(589, '_transient_timeout_wc_upgrade_notice_3.2.1', '1508503539', 'no'),
(590, '_transient_wc_upgrade_notice_3.2.1', '', 'no'),
(594, 'woocommerce_version', '3.2.1', 'yes'),
(595, 'woocommerce_db_version', '3.2.1', 'yes'),
(597, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ro_RO/wordpress-4.8.2.zip\";s:6:\"locale\";s:5:\"ro_RO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ro_RO/wordpress-4.8.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.2\";s:7:\"version\";s:5:\"4.8.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1508439973;s:15:\"version_checked\";s:5:\"4.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(598, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1508440001;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.0.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(600, 'theme_mods_pro', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:23;s:9:\"secondary\";i:0;s:8:\"handheld\";i:0;}}', 'yes'),
(603, '_transient_timeout_wc_related_41', '1508515382', 'no'),
(604, '_transient_wc_related_41', 'a:0:{}', 'no'),
(605, '_transient_timeout_external_ip_address_213.157.170.123', '1509033741', 'no'),
(606, '_transient_external_ip_address_213.157.170.123', '89.42.216.240', 'no'),
(608, '_transient_timeout_wc_related_39', '1508527126', 'no'),
(609, '_transient_wc_related_39', 'a:0:{}', 'no'),
(610, '_site_transient_timeout_community-events-ab6b75376abccd11b47d7722357054f8', '1508472371', 'no'),
(611, '_site_transient_community-events-ab6b75376abccd11b47d7722357054f8', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"213.157.170.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:24:\"October WordPress Meetup\";s:3:\"url\";s:67:\"https://www.meetup.com/Bucharest-WordPress-Meetup/events/244111173/\";s:6:\"meetup\";s:26:\"Bucharest WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Bucharest-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-10-19 18:45:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Bucharest, Romania\";s:7:\"country\";s:2:\"ro\";s:8:\"latitude\";d:44.4171070000000014488250599242746829986572265625;s:9:\"longitude\";d:26.11432599999999837336872587911784648895263671875;}}}}', 'no'),
(612, 'category_children', 'a:0:{}', 'yes'),
(614, '_transient_timeout_external_ip_address_70.39.246.37', '1509035195', 'no'),
(615, '_transient_external_ip_address_70.39.246.37', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(617, '_transient_timeout_wc_shipping_method_count_0_1507811742', '1511023752', 'no'),
(618, '_transient_wc_shipping_method_count_0_1507811742', '2', 'no'),
(621, '_site_transient_timeout_available_translations', '1508443421', 'no');
INSERT INTO `wpdo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(622, '_site_transient_available_translations', 'a:110:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-02 13:13:49\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-29 08:49:40\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.6\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.6/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-26 18:50:50\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.2/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-09 09:24:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-08 21:01:45\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 08:46:26\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-19 16:27:32\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-03 23:25:51\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-09 11:51:58\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-01 18:14:36\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.8.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-01 18:14:59\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-09 11:53:31\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.8.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-10 19:51:38\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-25 10:03:08\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-08 11:31:20\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-25 19:47:01\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-02 03:57:05\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.7.6\";s:7:\"updated\";s:19:\"2017-01-26 15:53:43\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.6/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-26 10:38:53\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-30 16:09:17\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/es_CR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-04 05:23:56\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-05 17:50:24\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-01 04:48:11\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-13 17:00:30\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 16:37:11\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-19 12:08:05\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-09 15:50:45\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-28 11:00:29\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-14 18:07:51\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-28 09:14:18\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-28 12:37:07\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-26 12:45:35\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-17 14:23:13\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-12 21:37:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-28 10:29:26\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-22 14:47:25\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-28 12:45:08\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.6\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.6/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-30 11:12:28\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-09 07:51:37\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-09 06:06:41\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-22 15:33:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-28 10:48:16\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-28 11:02:15\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.6\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.6/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.6\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.6/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-30 06:25:41\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.7.6\";s:7:\"updated\";s:19:\"2017-03-05 09:45:10\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.6/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.19\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.19/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-02 21:02:39\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-31 08:47:10\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-30 07:58:32\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.8.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-02 15:25:12\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-13 12:25:56\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-25 10:02:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.2/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-20 08:02:58\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.19\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.19/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-29 08:57:23\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.8.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-13 11:55:41\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-30 17:15:54\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-17 12:16:26\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-23 11:17:01\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-30 08:21:26\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-12 12:51:50\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.7.6\";s:7:\"updated\";s:19:\"2017-04-24 08:35:30\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.6/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-07-28 12:07:44\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-08 16:15:48\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-07 02:08:56\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-12 12:20:32\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-19 19:56:39\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-03 08:22:57\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-15 05:40:58\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-10-03 09:08:47\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-27 14:50:31\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-08-04 07:53:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.8.2\";s:7:\"updated\";s:19:\"2017-09-12 11:35:05\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(631, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1508444031', 'no');
INSERT INTO `wpdo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(632, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4386;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2512;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2369;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2352;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1837;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1609;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1598;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1437;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1360;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1354;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1346;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1279;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1273;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1144;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1059;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1052;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:998;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:959;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:827;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:825;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:816;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:778;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:773;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:672;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:672;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:666;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:656;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:653;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:647;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:638;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:630;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:615;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:600;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:594;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:588;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:586;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:580;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:579;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:563;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:560;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:547;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:535;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:529;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:520;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:507;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:503;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:499;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:493;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:477;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:475;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:475;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:475;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:452;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:448;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:447;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:443;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:441;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:440;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:425;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:417;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:412;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:411;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:408;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:405;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:404;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:397;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:391;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:383;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:382;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:372;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:356;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:347;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:342;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:333;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:333;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:331;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:331;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:330;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:330;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:327;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:324;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:323;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:323;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:317;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:311;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:302;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:300;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:295;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:294;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:293;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:292;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:286;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:284;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:283;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:280;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:278;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:277;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:276;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:273;}s:7:\"captcha\";a:3:{s:4:\"name\";s:7:\"captcha\";s:4:\"slug\";s:7:\"captcha\";s:5:\"count\";i:270;}}', 'no'),
(633, '_transient_timeout_external_ip_address_86.127.183.64', '1509044675', 'no'),
(634, '_transient_external_ip_address_86.127.183.64', '89.42.216.240', 'no'),
(636, '_site_transient_timeout_community-events-a0cabc7835d1995667bab2a051eddb3b', '1508483168', 'no'),
(637, '_site_transient_community-events-a0cabc7835d1995667bab2a051eddb3b', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"86.127.183.0\";}s:6:\"events\";a:0:{}}', 'no'),
(638, '_transient_timeout__woocommerce_helper_subscriptions', '1508440870', 'no'),
(639, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(640, '_site_transient_timeout_theme_roots', '1508441770', 'no'),
(641, '_site_transient_theme_roots', 'a:6:{s:3:\"pro\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:6:\"writee\";s:7:\"/themes\";}', 'no'),
(642, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1508440003;s:7:\"checked\";a:6:{s:3:\"pro\";s:0:\"\";s:10:\"storefront\";s:5:\"2.2.5\";s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";s:6:\"writee\";s:5:\"1.4.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_postmeta`
--

CREATE TABLE `wpdo_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_postmeta`
--

INSERT INTO `wpdo_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(466, 39, '_wc_review_count', '0'),
(467, 39, '_wc_rating_count', 'a:0:{}'),
(468, 39, '_wc_average_rating', '0'),
(469, 39, '_edit_last', '1'),
(470, 39, '_edit_lock', '1507839509:1'),
(471, 40, '_wp_attached_file', '2017/10/pelerina-tuns-BARBER-SHOP-Labor-Pro-Italia-A035-produse-cosmetice-profesionale.jpg'),
(472, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:750;s:4:\"file\";s:90:\"2017/10/pelerina-tuns-BARBER-SHOP-Labor-Pro-Italia-A035-produse-cosmetice-profesionale.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:90:\"pelerina-tuns-BARBER-SHOP-Labor-Pro-Italia-A035-produse-cosmetice-profesionale-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:90:\"pelerina-tuns-BARBER-SHOP-Labor-Pro-Italia-A035-produse-cosmetice-profesionale-228x300.jpg\";s:5:\"width\";i:228;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:90:\"pelerina-tuns-BARBER-SHOP-Labor-Pro-Italia-A035-produse-cosmetice-profesionale-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:90:\"pelerina-tuns-BARBER-SHOP-Labor-Pro-Italia-A035-produse-cosmetice-profesionale-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:90:\"pelerina-tuns-BARBER-SHOP-Labor-Pro-Italia-A035-produse-cosmetice-profesionale-570x600.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(473, 39, '_thumbnail_id', '40'),
(474, 39, '_sku', ''),
(475, 39, '_regular_price', '100'),
(476, 39, '_sale_price', ''),
(477, 39, '_sale_price_dates_from', ''),
(478, 39, '_sale_price_dates_to', ''),
(479, 39, 'total_sales', '1'),
(480, 39, '_tax_status', 'taxable'),
(481, 39, '_tax_class', ''),
(482, 39, '_manage_stock', 'yes'),
(483, 39, '_backorders', 'yes'),
(484, 39, '_sold_individually', 'no'),
(485, 39, '_weight', ''),
(486, 39, '_length', ''),
(487, 39, '_width', ''),
(488, 39, '_height', ''),
(489, 39, '_upsell_ids', 'a:0:{}'),
(490, 39, '_crosssell_ids', 'a:0:{}'),
(491, 39, '_purchase_note', ''),
(492, 39, '_default_attributes', 'a:0:{}'),
(493, 39, '_virtual', 'no'),
(494, 39, '_downloadable', 'no'),
(495, 39, '_product_image_gallery', ''),
(496, 39, '_download_limit', '-1'),
(497, 39, '_download_expiry', '-1'),
(498, 39, '_stock', '9'),
(499, 39, '_stock_status', 'instock'),
(500, 39, '_product_version', '3.2.0'),
(501, 39, '_price', '100'),
(502, 41, '_wc_review_count', '0'),
(503, 41, '_wc_rating_count', 'a:0:{}'),
(504, 41, '_wc_average_rating', '0'),
(505, 41, '_edit_last', '1'),
(506, 41, '_edit_lock', '1507813140:1'),
(507, 41, '_sku', ''),
(508, 41, '_regular_price', ''),
(509, 41, '_sale_price', ''),
(510, 41, '_sale_price_dates_from', ''),
(511, 41, '_sale_price_dates_to', ''),
(512, 41, 'total_sales', '9'),
(513, 41, '_tax_status', 'taxable'),
(514, 41, '_tax_class', ''),
(515, 41, '_manage_stock', 'yes'),
(516, 41, '_backorders', 'yes'),
(517, 41, '_sold_individually', 'no'),
(518, 41, '_weight', ''),
(519, 41, '_length', ''),
(520, 41, '_width', ''),
(521, 41, '_height', ''),
(522, 41, '_upsell_ids', 'a:0:{}'),
(523, 41, '_crosssell_ids', 'a:0:{}'),
(524, 41, '_purchase_note', ''),
(525, 41, '_default_attributes', 'a:0:{}'),
(526, 41, '_virtual', 'no'),
(527, 41, '_downloadable', 'no'),
(528, 41, '_product_image_gallery', ''),
(529, 41, '_download_limit', '-1'),
(530, 41, '_download_expiry', '-1'),
(531, 41, '_stock', '10'),
(532, 41, '_stock_status', 'instock'),
(533, 41, '_product_attributes', 'a:1:{s:9:\"pa_culori\";a:6:{s:4:\"name\";s:9:\"pa_culori\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(534, 41, '_product_version', '3.2.0'),
(536, 42, '_wp_attached_file', '2017/10/C517-1-2.jpg'),
(537, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:750;s:4:\"file\";s:20:\"2017/10/C517-1-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"C517-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"C517-1-2-228x300.jpg\";s:5:\"width\";i:228;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"C517-1-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"C517-1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"C517-1-2-570x600.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(538, 41, '_thumbnail_id', '42'),
(539, 43, '_variation_description', ''),
(540, 43, '_sku', ''),
(541, 43, '_regular_price', '40'),
(542, 43, '_sale_price', ''),
(543, 43, '_sale_price_dates_from', ''),
(544, 43, '_sale_price_dates_to', ''),
(545, 43, 'total_sales', '0'),
(546, 43, '_tax_status', 'taxable'),
(547, 43, '_tax_class', ''),
(548, 43, '_manage_stock', 'yes'),
(549, 43, '_backorders', 'yes'),
(550, 43, '_sold_individually', 'no'),
(551, 43, '_weight', ''),
(552, 43, '_length', ''),
(553, 43, '_width', ''),
(554, 43, '_height', ''),
(555, 43, '_upsell_ids', 'a:0:{}'),
(556, 43, '_crosssell_ids', 'a:0:{}'),
(557, 43, '_purchase_note', ''),
(558, 43, '_default_attributes', 'a:0:{}'),
(559, 43, '_virtual', 'no'),
(560, 43, '_downloadable', 'no'),
(561, 43, '_product_image_gallery', ''),
(562, 43, '_download_limit', '-1'),
(563, 43, '_download_expiry', '-1'),
(564, 43, '_stock', '4'),
(565, 43, '_stock_status', 'instock'),
(566, 43, '_wc_average_rating', '0'),
(567, 43, '_wc_rating_count', 'a:0:{}'),
(568, 43, '_wc_review_count', '0'),
(569, 43, '_downloadable_files', 'a:0:{}'),
(570, 43, '_price', '40'),
(571, 43, '_product_version', '3.2.0'),
(572, 44, '_variation_description', ''),
(573, 44, '_sku', ''),
(574, 44, '_regular_price', '50'),
(575, 44, '_sale_price', ''),
(576, 44, '_sale_price_dates_from', ''),
(577, 44, '_sale_price_dates_to', ''),
(578, 44, 'total_sales', '0'),
(579, 44, '_tax_status', 'taxable'),
(580, 44, '_tax_class', ''),
(581, 44, '_manage_stock', 'yes'),
(582, 44, '_backorders', 'yes'),
(583, 44, '_sold_individually', 'no'),
(584, 44, '_weight', ''),
(585, 44, '_length', ''),
(586, 44, '_width', ''),
(587, 44, '_height', ''),
(588, 44, '_upsell_ids', 'a:0:{}'),
(589, 44, '_crosssell_ids', 'a:0:{}'),
(590, 44, '_purchase_note', ''),
(591, 44, '_default_attributes', 'a:0:{}'),
(592, 44, '_virtual', 'no'),
(593, 44, '_downloadable', 'no'),
(594, 44, '_product_image_gallery', ''),
(595, 44, '_download_limit', '-1'),
(596, 44, '_download_expiry', '-1'),
(597, 44, '_stock', '-3'),
(598, 44, '_stock_status', 'instock'),
(599, 44, '_wc_average_rating', '0'),
(600, 44, '_wc_rating_count', 'a:0:{}'),
(601, 44, '_wc_review_count', '0'),
(602, 44, '_downloadable_files', 'a:0:{}'),
(603, 44, '_price', '50'),
(604, 44, '_product_version', '3.2.0'),
(605, 45, '_variation_description', ''),
(606, 45, '_sku', ''),
(607, 45, '_regular_price', '60'),
(608, 45, '_sale_price', ''),
(609, 45, '_sale_price_dates_from', ''),
(610, 45, '_sale_price_dates_to', ''),
(611, 45, 'total_sales', '0'),
(612, 45, '_tax_status', 'taxable'),
(613, 45, '_tax_class', ''),
(614, 45, '_manage_stock', 'yes'),
(615, 45, '_backorders', 'yes'),
(616, 45, '_sold_individually', 'no'),
(617, 45, '_weight', ''),
(618, 45, '_length', ''),
(619, 45, '_width', ''),
(620, 45, '_height', ''),
(621, 45, '_upsell_ids', 'a:0:{}'),
(622, 45, '_crosssell_ids', 'a:0:{}'),
(623, 45, '_purchase_note', ''),
(624, 45, '_default_attributes', 'a:0:{}'),
(625, 45, '_virtual', 'no'),
(626, 45, '_downloadable', 'no'),
(627, 45, '_product_image_gallery', ''),
(628, 45, '_download_limit', '-1'),
(629, 45, '_download_expiry', '-1'),
(630, 45, '_stock', '5'),
(631, 45, '_stock_status', 'instock'),
(632, 45, '_wc_average_rating', '0'),
(633, 45, '_wc_rating_count', 'a:0:{}'),
(634, 45, '_wc_review_count', '0'),
(635, 45, '_downloadable_files', 'a:0:{}'),
(636, 45, '_price', '60'),
(637, 45, '_product_version', '3.2.0'),
(638, 43, 'attribute_pa_culori', 'alb'),
(639, 44, 'attribute_pa_culori', 'negru'),
(640, 45, 'attribute_pa_culori', 'rosu'),
(644, 46, '_edit_last', '1'),
(645, 46, '_edit_lock', '1507813349:1'),
(646, 46, 'discount_type', 'percent'),
(647, 46, 'coupon_amount', '10'),
(648, 46, 'individual_use', 'yes'),
(649, 46, 'product_ids', ''),
(650, 46, 'exclude_product_ids', ''),
(651, 46, 'usage_limit', '1'),
(652, 46, 'usage_limit_per_user', '1'),
(653, 46, 'limit_usage_to_x_items', '1'),
(654, 46, 'usage_count', '1'),
(655, 46, 'date_expires', '1507845600'),
(656, 46, 'expiry_date', '2017-10-13'),
(657, 46, 'free_shipping', 'no'),
(658, 46, 'product_categories', 'a:0:{}'),
(659, 46, 'exclude_product_categories', 'a:0:{}'),
(660, 46, 'exclude_sale_items', 'no'),
(661, 46, 'minimum_amount', '100'),
(662, 46, 'maximum_amount', ''),
(663, 46, 'customer_email', 'a:0:{}'),
(664, 47, '_order_key', 'wc_order_59df68f58cffc'),
(665, 47, '_customer_user', '1'),
(666, 47, '_payment_method', 'cod'),
(667, 47, '_payment_method_title', 'Numerar la livrare'),
(668, 47, '_transaction_id', ''),
(669, 47, '_customer_ip_address', '213.233.84.105'),
(670, 47, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/61.0.3163.100 safari/537.36'),
(671, 47, '_created_via', 'checkout'),
(672, 47, '_date_completed', '1507813823'),
(673, 47, '_completed_date', '2017-10-12 15:10:23'),
(674, 47, '_date_paid', '1507813823'),
(675, 47, '_paid_date', '2017-10-12 15:10:23'),
(676, 47, '_cart_hash', '770d289c92f5762df8238e2032c2feec'),
(677, 47, '_billing_first_name', 'Test'),
(678, 47, '_billing_last_name', 'Test'),
(679, 47, '_billing_company', ''),
(680, 47, '_billing_address_1', 'TEst'),
(681, 47, '_billing_address_2', ''),
(682, 47, '_billing_city', 'Timisoara'),
(683, 47, '_billing_state', 'TM'),
(684, 47, '_billing_postcode', '300290'),
(685, 47, '_billing_country', 'RO'),
(686, 47, '_billing_email', 'admin@pro-cosmetics.eu'),
(687, 47, '_billing_phone', '0724789456'),
(688, 47, '_shipping_first_name', 'Test'),
(689, 47, '_shipping_last_name', 'Test'),
(690, 47, '_shipping_company', ''),
(691, 47, '_shipping_address_1', 'TEst'),
(692, 47, '_shipping_address_2', ''),
(693, 47, '_shipping_city', 'Timisoara'),
(694, 47, '_shipping_state', 'TM'),
(695, 47, '_shipping_postcode', '300290'),
(696, 47, '_shipping_country', 'RO'),
(697, 47, '_order_currency', 'RON'),
(698, 47, '_cart_discount', '5'),
(699, 47, '_cart_discount_tax', '0'),
(700, 47, '_order_shipping', '0'),
(701, 47, '_order_shipping_tax', '0'),
(702, 47, '_order_tax', '0'),
(703, 47, '_order_total', '535.00'),
(704, 47, '_order_version', '3.2.0'),
(705, 47, '_prices_include_tax', 'no'),
(706, 47, '_billing_address_index', 'Test Test  TEst  Timisoara TM 300290 RO admin@pro-cosmetics.eu 0724789456'),
(707, 47, '_shipping_address_index', 'Test Test  TEst  Timisoara TM 300290 RO'),
(708, 47, '_download_permissions_granted', 'yes'),
(709, 47, '_recorded_sales', 'yes'),
(710, 47, '_recorded_coupon_usage_counts', 'yes'),
(711, 46, '_used_by', '1'),
(712, 47, '_order_stock_reduced', 'yes'),
(713, 41, '_price', '40'),
(714, 41, '_price', '50'),
(715, 41, '_price', '60'),
(716, 47, '_edit_lock', '1507814360:1'),
(717, 47, '_edit_last', '1'),
(718, 48, '_menu_item_type', 'custom'),
(719, 48, '_menu_item_menu_item_parent', '0'),
(720, 48, '_menu_item_object_id', '48'),
(721, 48, '_menu_item_object', 'custom'),
(722, 48, '_menu_item_target', ''),
(723, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(724, 48, '_menu_item_xfn', ''),
(725, 48, '_menu_item_url', 'https://pro-cosmetics.eu/'),
(727, 49, '_menu_item_type', 'post_type'),
(728, 49, '_menu_item_menu_item_parent', '0'),
(729, 49, '_menu_item_object_id', '7'),
(730, 49, '_menu_item_object', 'page'),
(731, 49, '_menu_item_target', ''),
(732, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(733, 49, '_menu_item_xfn', ''),
(734, 49, '_menu_item_url', ''),
(745, 51, '_menu_item_type', 'post_type'),
(746, 51, '_menu_item_menu_item_parent', '0'),
(747, 51, '_menu_item_object_id', '4'),
(748, 51, '_menu_item_object', 'page'),
(749, 51, '_menu_item_target', ''),
(750, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(751, 51, '_menu_item_xfn', ''),
(752, 51, '_menu_item_url', ''),
(763, 53, '_menu_item_type', 'taxonomy'),
(764, 53, '_menu_item_menu_item_parent', '51'),
(765, 53, '_menu_item_object_id', '18'),
(766, 53, '_menu_item_object', 'product_cat'),
(767, 53, '_menu_item_target', ''),
(768, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(769, 53, '_menu_item_xfn', ''),
(770, 53, '_menu_item_url', ''),
(772, 54, '_menu_item_type', 'taxonomy'),
(773, 54, '_menu_item_menu_item_parent', '51'),
(774, 54, '_menu_item_object_id', '19'),
(775, 54, '_menu_item_object', 'product_cat'),
(776, 54, '_menu_item_target', ''),
(777, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(778, 54, '_menu_item_xfn', ''),
(779, 54, '_menu_item_url', ''),
(781, 1, '_edit_lock', '1508431118:1'),
(782, 56, '_wp_attached_file', '2017/10/cosmeticiana-pensat-articol-blog-visuel-2017-600x450.jpg'),
(783, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:64:\"2017/10/cosmeticiana-pensat-articol-blog-visuel-2017-600x450.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"cosmeticiana-pensat-articol-blog-visuel-2017-600x450-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"cosmeticiana-pensat-articol-blog-visuel-2017-600x450-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"postimage\";a:4:{s:4:\"file\";s:64:\"cosmeticiana-pensat-articol-blog-visuel-2017-600x450-600x352.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:352;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"cosmeticiana-pensat-articol-blog-visuel-2017-600x450-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:64:\"cosmeticiana-pensat-articol-blog-visuel-2017-600x450-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:64:\"cosmeticiana-pensat-articol-blog-visuel-2017-600x450-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(784, 1, '_edit_last', '1'),
(785, 1, '_thumbnail_id', '56'),
(790, 2, '_edit_lock', '1508431042:1'),
(791, 2, '_edit_last', '1'),
(792, 2, '_thumbnail_id', '56'),
(793, 61, '_edit_last', '1'),
(794, 61, '_edit_lock', '1508431493:1'),
(795, 61, '_wp_page_template', 'tmpl-articole.php'),
(796, 63, '_edit_last', '1'),
(797, 63, '_wp_page_template', 'default'),
(798, 63, '_edit_lock', '1508431642:1');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_posts`
--

CREATE TABLE `wpdo_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_posts`
--

INSERT INTO `wpdo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-10-11 19:42:29', '2017-10-11 19:42:29', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-10-19 18:29:26', '2017-10-19 16:29:26', '', 0, 'https://pro-cosmetics.eu/?p=1', 0, 'post', '', 1),
(2, 1, '2017-10-11 19:42:29', '2017-10-11 19:42:29', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<!--more-->\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"https://pro-cosmetics.eu/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-10-19 18:38:37', '2017-10-19 16:38:37', '', 0, 'https://pro-cosmetics.eu/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-10-11 21:46:55', '2017-10-11 19:46:55', '', 'Magazin', '', 'publish', 'closed', 'closed', '', 'magazin', '', '', '2017-10-11 21:46:55', '2017-10-11 19:46:55', '', 0, 'https://pro-cosmetics.eu/magazin/', 0, 'page', '', 0),
(5, 1, '2017-10-11 21:46:56', '2017-10-11 19:46:56', '[woocommerce_cart]', 'Coș', '', 'publish', 'closed', 'closed', '', 'cos', '', '', '2017-10-11 21:46:56', '2017-10-11 19:46:56', '', 0, 'https://pro-cosmetics.eu/cos/', 0, 'page', '', 0),
(6, 1, '2017-10-11 21:46:56', '2017-10-11 19:46:56', '[woocommerce_checkout]', 'Plată', '', 'publish', 'closed', 'closed', '', 'plata', '', '', '2017-10-11 21:46:56', '2017-10-11 19:46:56', '', 0, 'https://pro-cosmetics.eu/plata/', 0, 'page', '', 0),
(7, 1, '2017-10-11 21:46:56', '2017-10-11 19:46:56', '[woocommerce_my_account]', 'Contul meu', '', 'publish', 'closed', 'closed', '', 'contul-meu', '', '', '2017-10-11 21:46:56', '2017-10-11 19:46:56', '', 0, 'https://pro-cosmetics.eu/contul-meu/', 0, 'page', '', 0),
(39, 1, '2017-10-12 14:48:53', '2017-10-12 12:48:53', '<strong>CARACTERISTICI GENERALE:</strong>\r\n<ul>\r\n 	<li>Material: 100% poliester</li>\r\n 	<li>Culoare: negru, crem, mat</li>\r\n 	<li>Măsură universală: 145 x 140cm</li>\r\n 	<li>Produs importat din Italia</li>\r\n</ul>', 'Pelerină tuns BARBER SHOP', '', 'publish', 'open', 'closed', '', 'pelerina-tuns-barber-shop', '', '', '2017-10-12 14:48:53', '2017-10-12 12:48:53', '', 0, 'https://pro-cosmetics.eu/?post_type=product&#038;p=39', 0, 'product', '', 0),
(40, 1, '2017-10-12 14:46:50', '2017-10-12 12:46:50', '', 'pelerina-tuns-BARBER-SHOP-Labor-Pro-Italia-A035-produse-cosmetice-profesionale', '', 'inherit', 'open', 'closed', '', 'pelerina-tuns-barber-shop-labor-pro-italia-a035-produse-cosmetice-profesionale', '', '', '2017-10-12 14:46:50', '2017-10-12 12:46:50', '', 39, 'https://pro-cosmetics.eu/wp-content/uploads/2017/10/pelerina-tuns-BARBER-SHOP-Labor-Pro-Italia-A035-produse-cosmetice-profesionale.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2017-10-12 14:57:03', '2017-10-12 12:57:03', 'Pămătuf pentru bărbierit.\r\n\r\n<strong>CARACTERISTICI GENERALE:</strong>\r\n<ul>\r\n 	<li>Material: păr naturaal de porc mistreț, lemn</li>\r\n 	<li>Culori disponibile: alb, roșu</li>\r\n 	<li><span class=\"_5yl5\">Produs <strong>fabricat 100% în ITALIA</strong></span></li>\r\n</ul>', 'Pămătuf pentru bărbierit Omega – Culori Asortate', '', 'publish', 'open', 'closed', '', 'pamatuf-pentru-barbierit-omega-culori-asortate', '', '', '2017-10-12 14:59:44', '2017-10-12 12:59:44', '', 0, 'https://pro-cosmetics.eu/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2017-10-12 14:57:21', '2017-10-12 12:57:21', '', 'C517-1-2', '', 'inherit', 'open', 'closed', '', 'c517-1-2', '', '', '2017-10-12 14:57:21', '2017-10-12 12:57:21', '', 41, 'https://pro-cosmetics.eu/wp-content/uploads/2017/10/C517-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2017-10-12 14:58:00', '2017-10-12 12:58:00', '', 'Pămătuf pentru bărbierit Omega – Culori Asortate - Alb', '', 'publish', 'closed', 'closed', '', 'pamatuf-pentru-barbierit-omega-culori-asortate', '', '', '2017-10-12 14:59:40', '2017-10-12 12:59:40', '', 41, 'https://pro-cosmetics.eu/produs/pamatuf-pentru-barbierit-omega-culori-asortate/', 0, 'product_variation', '', 0),
(44, 1, '2017-10-12 14:58:31', '2017-10-12 12:58:31', '', 'Pămătuf pentru bărbierit Omega – Culori Asortate - Negru', '', 'publish', 'closed', 'closed', '', 'pamatuf-pentru-barbierit-omega-culori-asortate-2', '', '', '2017-10-12 14:59:40', '2017-10-12 12:59:40', '', 41, 'https://pro-cosmetics.eu/produs/pamatuf-pentru-barbierit-omega-culori-asortate/', 0, 'product_variation', '', 0),
(45, 1, '2017-10-12 14:58:49', '2017-10-12 12:58:49', '', 'Pămătuf pentru bărbierit Omega – Culori Asortate - Rosu', '', 'publish', 'closed', 'closed', '', 'pamatuf-pentru-barbierit-omega-culori-asortate-3', '', '', '2017-10-12 14:59:40', '2017-10-12 12:59:40', '', 41, 'https://pro-cosmetics.eu/produs/pamatuf-pentru-barbierit-omega-culori-asortate/', 0, 'product_variation', '', 0),
(46, 1, '2017-10-12 15:04:44', '2017-10-12 13:04:44', '', 'reducere50', 'text', 'publish', 'closed', 'closed', '', 'reducere50', '', '', '2017-10-12 15:04:44', '2017-10-12 13:04:44', '', 0, 'https://pro-cosmetics.eu/?post_type=shop_coupon&#038;p=46', 0, 'shop_coupon', '', 0),
(47, 1, '2017-10-12 15:07:00', '2017-10-12 13:07:00', '', 'Order &ndash; octombrie 12, 2017 @ 03:07 PM', '', 'wc-completed', 'closed', 'closed', 'order_59df68f58d189', 'comanda-oct-12-2017-0107-pm', '', '', '2017-10-12 15:10:23', '2017-10-12 13:10:23', '', 0, 'https://pro-cosmetics.eu/?post_type=shop_order&#038;p=47', 0, 'shop_order', '', 5),
(48, 1, '2017-10-12 15:26:22', '2017-10-12 13:26:22', '', 'Prima pagină', '', 'publish', 'closed', 'closed', '', 'prima-pagina', '', '', '2017-10-19 15:33:35', '2017-10-19 13:33:35', '', 0, 'https://pro-cosmetics.eu/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2017-10-12 15:26:22', '2017-10-12 13:26:22', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2017-10-19 15:33:35', '2017-10-19 13:33:35', '', 0, 'https://pro-cosmetics.eu/?p=49', 2, 'nav_menu_item', '', 0),
(51, 1, '2017-10-12 15:26:22', '2017-10-12 13:26:22', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2017-10-19 15:33:35', '2017-10-19 13:33:35', '', 0, 'https://pro-cosmetics.eu/?p=51', 3, 'nav_menu_item', '', 0),
(53, 1, '2017-10-12 15:26:22', '2017-10-12 13:26:22', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2017-10-19 15:33:35', '2017-10-19 13:33:35', '', 0, 'https://pro-cosmetics.eu/?p=53', 5, 'nav_menu_item', '', 0),
(54, 1, '2017-10-12 15:26:22', '2017-10-12 13:26:22', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2017-10-19 15:33:35', '2017-10-19 13:33:35', '', 0, 'https://pro-cosmetics.eu/?p=54', 4, 'nav_menu_item', '', 0),
(55, 1, '2017-10-19 18:06:07', '0000-00-00 00:00:00', '', 'Autosalvare ciornă', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-10-19 18:06:07', '0000-00-00 00:00:00', '', 0, 'https://pro-cosmetics.eu/?p=55', 0, 'post', '', 0),
(56, 1, '2017-10-19 18:26:26', '2017-10-19 16:26:26', '', 'cosmeticiana-pensat-articol-blog-visuel-2017-600x450', '', 'inherit', 'open', 'closed', '', 'cosmeticiana-pensat-articol-blog-visuel-2017-600x450', '', '', '2017-10-19 18:26:26', '2017-10-19 16:26:26', '', 1, 'https://pro-cosmetics.eu/wp-content/uploads/2017/10/cosmeticiana-pensat-articol-blog-visuel-2017-600x450.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-10-19 18:26:30', '2017-10-19 16:26:30', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-10-19 18:26:30', '2017-10-19 16:26:30', '', 1, 'https://pro-cosmetics.eu/2017/10/19/1-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-10-19 18:29:26', '2017-10-19 16:29:26', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing! Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\nWelcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-10-19 18:29:26', '2017-10-19 16:29:26', '', 1, 'https://pro-cosmetics.eu/2017/10/19/1-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-10-19 18:37:15', '2017-10-19 16:37:15', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"https://pro-cosmetics.eu/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-10-19 18:37:15', '2017-10-19 16:37:15', '', 2, 'https://pro-cosmetics.eu/2017/10/19/2-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-10-19 18:38:37', '2017-10-19 16:38:37', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<!--more-->\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"https://pro-cosmetics.eu/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-10-19 18:38:37', '2017-10-19 16:38:37', '', 2, 'https://pro-cosmetics.eu/2017/10/19/2-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-10-19 18:42:11', '2017-10-19 16:42:11', '', 'Articole', '', 'publish', 'closed', 'closed', '', 'articole', '', '', '2017-10-19 18:42:11', '2017-10-19 16:42:11', '', 0, 'https://pro-cosmetics.eu/?page_id=61', 0, 'page', '', 0),
(62, 1, '2017-10-19 18:42:11', '2017-10-19 16:42:11', '', 'Articole', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-10-19 18:42:11', '2017-10-19 16:42:11', '', 61, 'https://pro-cosmetics.eu/2017/10/19/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-10-19 18:49:38', '2017-10-19 16:49:38', '', 'Termeni si conditii', '', 'publish', 'closed', 'closed', '', 'termeni-si-conditii', '', '', '2017-10-19 18:49:38', '2017-10-19 16:49:38', '', 0, 'https://pro-cosmetics.eu/?page_id=63', 0, 'page', '', 0),
(64, 1, '2017-10-19 18:49:38', '2017-10-19 16:49:38', '', 'Termeni si conditii', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-10-19 18:49:38', '2017-10-19 16:49:38', '', 63, 'https://pro-cosmetics.eu/2017/10/19/63-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_termmeta`
--

CREATE TABLE `wpdo_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_termmeta`
--

INSERT INTO `wpdo_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(7, 18, 'order', '0'),
(8, 18, 'product_count_product_cat', '1'),
(9, 19, 'order', '0'),
(10, 19, 'display_type', ''),
(11, 19, 'thumbnail_id', '0'),
(12, 20, 'order_pa_culori', '0'),
(13, 21, 'order_pa_culori', '0'),
(14, 22, 'order_pa_culori', '0'),
(15, 19, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_terms`
--

CREATE TABLE `wpdo_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_terms`
--

INSERT INTO `wpdo_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(18, 'Pelerine Tuns', 'pelerine-tuns', 0),
(19, 'Pamatuf', 'pamatuf', 0),
(20, 'Negru', 'negru', 0),
(21, 'Alb', 'alb', 0),
(22, 'Rosu', 'rosu', 0),
(23, 'Meniu', 'meniu', 0),
(24, 'Noutati', 'noutati', 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_term_relationships`
--

CREATE TABLE `wpdo_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_term_relationships`
--

INSERT INTO `wpdo_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 24, 0),
(39, 2, 0),
(39, 18, 0),
(41, 4, 0),
(41, 19, 0),
(41, 20, 0),
(41, 21, 0),
(41, 22, 0),
(48, 23, 0),
(49, 23, 0),
(51, 23, 0),
(53, 23, 0),
(54, 23, 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_term_taxonomy`
--

CREATE TABLE `wpdo_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_term_taxonomy`
--

INSERT INTO `wpdo_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 1),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(18, 18, 'product_cat', '', 0, 1),
(19, 19, 'product_cat', '', 0, 1),
(20, 20, 'pa_culori', '', 0, 1),
(21, 21, 'pa_culori', '', 0, 1),
(22, 22, 'pa_culori', '', 0, 1),
(23, 23, 'nav_menu', '', 0, 5),
(24, 24, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_usermeta`
--

CREATE TABLE `wpdo_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_usermeta`
--

INSERT INTO `wpdo_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Test'),
(3, 1, 'last_name', 'Test'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wpdo_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wpdo_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:3:{s:64:\"ff1015bda40c3c4203f40ec17e2b38d5fa75cfc8b493e3f291bb2d8b812bf8b5\";a:4:{s:10:\"expiration\";i:1508589902;s:2:\"ip\";s:14:\"84.232.227.171\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1508417102;}s:64:\"c1d4a4e7d3bfcee541ff023a7c05f6beaa0022af7496c7485e1d27bc1d01525a\";a:4:{s:10:\"expiration\";i:1508602453;s:2:\"ip\";s:15:\"213.157.170.123\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1508429653;}s:64:\"3573b56cc219b0475ea78cbfd873efb1c1bf866d2c721762ea689f22f4a0d741\";a:4:{s:10:\"expiration\";i:1508612763;s:2:\"ip\";s:13:\"86.127.183.64\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1508439963;}}'),
(16, 1, 'wpdo_dashboard_quick_press_last_post_id', '55'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"86.127.183.0\";}'),
(19, 1, 'wpdo_user-settings', 'libraryContent=browse&hidetb=1'),
(20, 1, 'wpdo_user-settings-time', '1508431113'),
(21, 1, 'last_update', '1507813823'),
(22, 1, 'billing_first_name', 'Test'),
(23, 1, 'billing_last_name', 'Test'),
(24, 1, 'billing_address_1', 'TEst'),
(25, 1, 'billing_city', 'Timisoara'),
(26, 1, 'billing_state', 'TM'),
(27, 1, 'billing_postcode', '300290'),
(28, 1, 'billing_country', 'RO'),
(29, 1, 'billing_email', 'admin@pro-cosmetics.eu'),
(30, 1, 'billing_phone', '0724789456'),
(31, 1, 'shipping_first_name', 'Test'),
(32, 1, 'shipping_last_name', 'Test'),
(33, 1, 'shipping_address_1', 'TEst'),
(34, 1, 'shipping_city', 'Timisoara'),
(35, 1, 'shipping_state', 'TM'),
(36, 1, 'shipping_postcode', '300290'),
(37, 1, 'shipping_country', 'RO'),
(38, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:2\";}'),
(40, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"d67d8ab4f4c10bf22aa353e27879133c\";a:10:{s:3:\"key\";s:32:\"d67d8ab4f4c10bf22aa353e27879133c\";s:10:\"product_id\";i:39;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:4;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:400;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:400;s:8:\"line_tax\";i:0;}}}'),
(41, 1, 'paying_customer', '1'),
(42, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(43, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";}'),
(44, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(45, 1, 'nav_menu_recently_edited', '23');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_users`
--

CREATE TABLE `wpdo_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wpdo_users`
--

INSERT INTO `wpdo_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B4vN9JHG4ssZPQe5d/TiTxn.yQUAN61', 'admin', 'admin@pro-cosmetics.eu', '', '2017-10-11 19:42:29', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_api_keys`
--

CREATE TABLE `wpdo_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wpdo_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Salvarea datelor din tabel `wpdo_woocommerce_attribute_taxonomies`
--

INSERT INTO `wpdo_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'culori', 'Culori', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wpdo_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_log`
--

CREATE TABLE `wpdo_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_order_itemmeta`
--

CREATE TABLE `wpdo_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Salvarea datelor din tabel `wpdo_woocommerce_order_itemmeta`
--

INSERT INTO `wpdo_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '39'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '100'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '100'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '41'),
(11, 2, '_variation_id', '44'),
(12, 2, '_qty', '8'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '400'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '395'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 2, 'pa_culori', 'negru'),
(20, 3, '_product_id', '41'),
(21, 3, '_variation_id', '43'),
(22, 3, '_qty', '1'),
(23, 3, '_tax_class', ''),
(24, 3, '_line_subtotal', '40'),
(25, 3, '_line_subtotal_tax', '0'),
(26, 3, '_line_total', '40'),
(27, 3, '_line_tax', '0'),
(28, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(29, 3, 'pa_culori', 'alb'),
(30, 4, 'method_id', 'free_shipping:2'),
(31, 4, 'cost', '0.00'),
(32, 4, 'total_tax', '0'),
(33, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(34, 4, 'Elemente', 'Pelerină tuns BARBER SHOP &times; 1, Pămătuf pentru bărbierit Omega – Culori Asortate - Negru &times; 8, Pămătuf pentru bărbierit Omega – Culori Asortate - Alb &times; 1'),
(35, 5, 'discount_amount', '5'),
(36, 5, 'discount_amount_tax', '0'),
(37, 5, 'coupon_data', 'a:25:{s:2:\"id\";i:46;s:4:\"code\";s:10:\"reducere50\";s:6:\"amount\";s:2:\"10\";s:12:\"date_created\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:7200;s:4:\"date\";s:26:\"2017-10-12 13:04:44.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:13:\"date_modified\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:7200;s:4:\"date\";s:26:\"2017-10-12 13:04:44.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:12:\"date_expires\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:7200;s:4:\"date\";s:26:\"2017-10-12 22:00:00.000000\";s:13:\"timezone_type\";i:1;s:8:\"timezone\";s:6:\"+00:00\";}s:13:\"discount_type\";s:7:\"percent\";s:11:\"description\";s:4:\"text\";s:11:\"usage_count\";i:0;s:14:\"individual_use\";b:1;s:11:\"product_ids\";a:0:{}s:20:\"excluded_product_ids\";a:0:{}s:11:\"usage_limit\";i:1;s:20:\"usage_limit_per_user\";i:1;s:22:\"limit_usage_to_x_items\";i:1;s:13:\"free_shipping\";b:0;s:18:\"product_categories\";a:0:{}s:27:\"excluded_product_categories\";a:0:{}s:18:\"exclude_sale_items\";b:0;s:14:\"minimum_amount\";s:3:\"100\";s:14:\"maximum_amount\";s:0:\"\";s:18:\"email_restrictions\";a:0:{}s:7:\"used_by\";a:0:{}s:7:\"virtual\";b:0;s:9:\"meta_data\";a:0:{}}');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_order_items`
--

CREATE TABLE `wpdo_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Salvarea datelor din tabel `wpdo_woocommerce_order_items`
--

INSERT INTO `wpdo_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Pelerină tuns BARBER SHOP', 'line_item', 47),
(2, 'Pămătuf pentru bărbierit Omega – Culori Asortate - Negru', 'line_item', 47),
(3, 'Pămătuf pentru bărbierit Omega – Culori Asortate - Alb', 'line_item', 47),
(4, 'Livrare gratuită', 'shipping', 47),
(5, 'reducere50', 'coupon', 47);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wpdo_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_payment_tokens`
--

CREATE TABLE `wpdo_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_sessions`
--

CREATE TABLE `wpdo_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Salvarea datelor din tabel `wpdo_woocommerce_sessions`
--

INSERT INTO `wpdo_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(36, '1', 'a:12:{s:8:\"customer\";s:749:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:6:\"300290\";s:4:\"city\";s:9:\"Timisoara\";s:9:\"address_1\";s:4:\"TEst\";s:7:\"address\";s:4:\"TEst\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"TM\";s:7:\"country\";s:2:\"RO\";s:17:\"shipping_postcode\";s:6:\"300290\";s:13:\"shipping_city\";s:9:\"Timisoara\";s:18:\"shipping_address_1\";s:4:\"TEst\";s:16:\"shipping_address\";s:4:\"TEst\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"TM\";s:16:\"shipping_country\";s:2:\"RO\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:4:\"Test\";s:9:\"last_name\";s:4:\"Test\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"0724789456\";s:5:\"email\";s:22:\"admin@pro-cosmetics.eu\";s:19:\"shipping_first_name\";s:4:\"Test\";s:18:\"shipping_last_name\";s:4:\"Test\";s:16:\"shipping_company\";s:0:\"\";}\";s:4:\"cart\";s:356:\"a:1:{s:32:\"d67d8ab4f4c10bf22aa353e27879133c\";a:10:{s:3:\"key\";s:32:\"d67d8ab4f4c10bf22aa353e27879133c\";s:10:\"product_id\";i:39;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:4;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:400;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:400;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:398:\"a:15:{s:8:\"subtotal\";s:3:\"400\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:2:\"20\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";s:1:\"0\";s:19:\"cart_contents_total\";s:3:\"400\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:3:\"420\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:22:\"shipping_for_package_0\";s:720:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_7e6e9cf5ebcb4dcc0fc78b4df527d280\";s:5:\"rates\";a:2:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:8:\"Forfetar\";s:4:\"cost\";s:5:\"20.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Elemente\";s:36:\"Pelerină tuns BARBER SHOP &times; 4\";}}s:15:\"free_shipping:2\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:2\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:2;s:5:\"label\";s:17:\"Livrare gratuită\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Elemente\";s:36:\"Pelerină tuns BARBER SHOP &times; 4\";}}}}\";s:25:\"previous_shipping_methods\";s:66:\"a:1:{i:0;a:2:{i:0;s:11:\"flat_rate:1\";i:1;s:15:\"free_shipping:2\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:2;}\";}', 1508604604);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_shipping_zones`
--

CREATE TABLE `wpdo_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Salvarea datelor din tabel `wpdo_woocommerce_shipping_zones`
--

INSERT INTO `wpdo_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'România', 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wpdo_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Salvarea datelor din tabel `wpdo_woocommerce_shipping_zone_locations`
--

INSERT INTO `wpdo_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'RO', 'country');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wpdo_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Salvarea datelor din tabel `wpdo_woocommerce_shipping_zone_methods`
--

INSERT INTO `wpdo_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(1, 2, 'free_shipping', 2, 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_tax_rates`
--

CREATE TABLE `wpdo_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wpdo_woocommerce_tax_rate_locations`
--

CREATE TABLE `wpdo_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpdo_commentmeta`
--
ALTER TABLE `wpdo_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpdo_comments`
--
ALTER TABLE `wpdo_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wpdo_links`
--
ALTER TABLE `wpdo_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wpdo_options`
--
ALTER TABLE `wpdo_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wpdo_postmeta`
--
ALTER TABLE `wpdo_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpdo_posts`
--
ALTER TABLE `wpdo_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wpdo_termmeta`
--
ALTER TABLE `wpdo_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpdo_terms`
--
ALTER TABLE `wpdo_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wpdo_term_relationships`
--
ALTER TABLE `wpdo_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wpdo_term_taxonomy`
--
ALTER TABLE `wpdo_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wpdo_usermeta`
--
ALTER TABLE `wpdo_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpdo_users`
--
ALTER TABLE `wpdo_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wpdo_woocommerce_api_keys`
--
ALTER TABLE `wpdo_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wpdo_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wpdo_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wpdo_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wpdo_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wpdo_woocommerce_log`
--
ALTER TABLE `wpdo_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wpdo_woocommerce_order_itemmeta`
--
ALTER TABLE `wpdo_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wpdo_woocommerce_order_items`
--
ALTER TABLE `wpdo_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wpdo_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wpdo_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wpdo_woocommerce_payment_tokens`
--
ALTER TABLE `wpdo_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wpdo_woocommerce_sessions`
--
ALTER TABLE `wpdo_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wpdo_woocommerce_shipping_zones`
--
ALTER TABLE `wpdo_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wpdo_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wpdo_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wpdo_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wpdo_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wpdo_woocommerce_tax_rates`
--
ALTER TABLE `wpdo_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wpdo_woocommerce_tax_rate_locations`
--
ALTER TABLE `wpdo_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wpdo_commentmeta`
--
ALTER TABLE `wpdo_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpdo_comments`
--
ALTER TABLE `wpdo_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wpdo_links`
--
ALTER TABLE `wpdo_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpdo_options`
--
ALTER TABLE `wpdo_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=643;
--
-- AUTO_INCREMENT for table `wpdo_postmeta`
--
ALTER TABLE `wpdo_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=799;
--
-- AUTO_INCREMENT for table `wpdo_posts`
--
ALTER TABLE `wpdo_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `wpdo_termmeta`
--
ALTER TABLE `wpdo_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wpdo_terms`
--
ALTER TABLE `wpdo_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wpdo_term_taxonomy`
--
ALTER TABLE `wpdo_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wpdo_usermeta`
--
ALTER TABLE `wpdo_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `wpdo_users`
--
ALTER TABLE `wpdo_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_api_keys`
--
ALTER TABLE `wpdo_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wpdo_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wpdo_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_log`
--
ALTER TABLE `wpdo_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_order_itemmeta`
--
ALTER TABLE `wpdo_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_order_items`
--
ALTER TABLE `wpdo_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wpdo_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_payment_tokens`
--
ALTER TABLE `wpdo_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_sessions`
--
ALTER TABLE `wpdo_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_shipping_zones`
--
ALTER TABLE `wpdo_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wpdo_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wpdo_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_tax_rates`
--
ALTER TABLE `wpdo_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpdo_woocommerce_tax_rate_locations`
--
ALTER TABLE `wpdo_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
