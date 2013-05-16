-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 05 月 16 日 05:22
-- 服务器版本: 5.1.41
-- PHP 版本: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `senluonirvana`
--

-- --------------------------------------------------------

--
-- 表的结构 `sn_assets`
--

CREATE TABLE IF NOT EXISTS `sn_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- 转存表中的数据 `sn_assets`
--

INSERT INTO `sn_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 117, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 60, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 61, 62, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 63, 64, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 65, 66, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 67, 68, 1, 'com_login', 'com_login', '{}'),
(13, 1, 69, 70, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 71, 72, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 73, 74, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 75, 76, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 77, 78, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 79, 80, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 81, 84, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 85, 86, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 87, 88, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 89, 90, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 91, 92, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 93, 96, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 97, 100, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 101, 102, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 23, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 82, 83, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 98, 99, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 94, 95, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 103, 104, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(35, 1, 105, 106, 1, 'com_jce', 'jce', '{}'),
(36, 8, 24, 33, 2, 'com_content.category.8', 'Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(37, 36, 25, 26, 3, 'com_content.article.1', 'Suspendisse non malesuada', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 36, 27, 28, 3, 'com_content.article.3', 'Consectetur Adipiscing', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 36, 29, 30, 3, 'com_content.article.4', 'Lorem Ipsum', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 36, 31, 32, 3, 'com_content.article.5', 'Dolor Sit Amet', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 27, 19, 20, 3, 'com_content.article.6', 'What Our Client Says', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 27, 21, 22, 3, 'com_content.article.7', 'Recent Blog Posts', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 8, 34, 45, 2, 'com_content.category.9', 'Typography', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(47, 44, 35, 36, 3, 'com_content.article.8', 'Heading', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 44, 37, 38, 3, 'com_content.article.9', 'Columns', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 44, 39, 40, 3, 'com_content.article.10', 'Lists', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 44, 41, 42, 3, 'com_content.article.11', 'Buttons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 44, 43, 44, 3, 'com_content.article.12', 'Pricing Tables', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 55, 47, 48, 3, 'com_content.article.13', 'PiroBox', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 55, 49, 50, 3, 'com_content.article.14', 'Portfolio', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 55, 51, 52, 3, 'com_content.article.15', 'Photo Gallery', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 8, 46, 59, 2, 'com_content.category.10', 'Features', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(56, 55, 53, 54, 3, 'com_content.article.16', 'FAQ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 1, 115, 116, 1, 'com_kunena', 'com_kunena', '{}'),
(58, 1, 113, 114, 1, 'com_gantry', 'gantry', '{}'),
(60, 55, 55, 56, 3, 'com_content.article.17', 'Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 55, 57, 58, 3, 'com_content.article.18', 'Sliders', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- 表的结构 `sn_associations`
--

CREATE TABLE IF NOT EXISTS `sn_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_associations`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_banners`
--

CREATE TABLE IF NOT EXISTS `sn_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_banners`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_banner_clients`
--

CREATE TABLE IF NOT EXISTS `sn_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_banner_clients`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `sn_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_banner_tracks`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_categories`
--

CREATE TABLE IF NOT EXISTS `sn_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `sn_categories`
--

INSERT INTO `sn_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 25, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 505, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 505, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 505, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 505, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 505, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 505, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users.notes', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 505, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 36, 1, 19, 20, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 505, '2012-03-11 12:17:19', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 44, 1, 21, 22, 1, 'typography', 'com_content', 'Typography', 'typography', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 505, '2012-03-21 21:30:01', 0, '0000-00-00 00:00:00', 0, '*'),
(10, 55, 1, 23, 24, 1, 'features', 'com_content', 'Features', 'features', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 505, '2012-03-24 20:10:25', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- 表的结构 `sn_contact_details`
--

CREATE TABLE IF NOT EXISTS `sn_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `sn_contact_details`
--

INSERT INTO `sn_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Administration', 'administration', '', '', '', '', '', '', '', '', '', '', NULL, 'info@joomforest.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"0","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":null,"linkb_name":"","linkb":null,"linkc_name":"","linkc":null,"linkd_name":"","linkd":null,"linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2012-03-24 22:44:20', 505, '', '2012-03-24 22:51:46', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `sn_content`
--

CREATE TABLE IF NOT EXISTS `sn_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `sn_content`
--

INSERT INTO `sn_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 37, 'Suspendisse non malesuada', 'suspendisse-non-malesuada', '', '<div class="jf-blog-image"><dd class="jf-blog-category">Category: <a href="#">Blog</a></dd><dd class="jf-blog-date">11 March 2012</dd><dd class="jf-blog-author">Written by - <a href="#">Super User</a></dd><img alt="JoomForest" title="JoomForest" src="/corporate-j25-1/images/joomforest/jf-blog/1.jpg" width="676px" /></div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra erat nec ipsum tincidunt condimentum vulputate ligula tincidunt. Donec sit amet dolor nunc. Pellentesque ut justo metus. Ut id arcu vitae quam mattis lobortis feugiat at nisl. Curabitur convallis ultricies odio sed rhoncus. Fusce tincidunt euismod nibh ut rhoncus. Sed dapibus scelerisque consequat. Maecenas vel arcu a nisl mollis blandit. Suspendisse non malesuada nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque non velit lectus, vitae congue dolor. Nunc tristique, risus vitae rutrum sagittis, ligula elit fermentum mauris, sit amet laoreet mi est ac quam. Pellentesque mi odio, consectetur sit amet egestas lacinia, cursus id leo. Ut bibendum laoreet odio, eget sodales risus viverra a. Donec interdum nunc in turpis adipiscing sit amet gravida lectus lacinia. Duis eget massa vitae arcu hendrerit ornare sed posuere lorem. Mauris cursus malesuada nibh, fringilla pellentesque orci auctor quis.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra erat nec ipsum tincidunt condimentum vulputate ligula tincidunt. Donec sit amet dolor nunc. Pellentesque ut justo metus. Ut id arcu vitae quam mattis lobortis feugiat at nisl. Curabitur convallis ultricies odio sed rhoncus. Fusce tincidunt euismod nibh ut rhoncus. Sed dapibus scelerisque consequat. Maecenas vel arcu a nisl mollis blandit. Suspendisse non malesuada nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque non velit lectus, vitae congue dolor. Nunc tristique, risus vitae rutrum sagittis, ligula elit fermentum mauris, sit amet laoreet mi est ac quam. Pellentesque mi odio, consectetur sit amet egestas lacinia, cursus id leo. Ut bibendum laoreet odio, eget sodales risus viverra a. Donec interdum nunc in turpis adipiscing sit amet gravida lectus lacinia. Duis eget massa vitae arcu hendrerit ornare sed posuere lorem. Mauris cursus malesuada nibh, fringilla pellentesque orci auctor quis.</p>', 1, 0, 0, 8, '2012-03-11 12:18:58', 505, '', '2012-03-19 21:34:39', 42, 0, '0000-00-00 00:00:00', '2012-03-11 12:18:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 0, 0, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 39, 'Consectetur Adipiscing', 'consectetur-adipiscing', '', '<div class="jf-blog-image">\r\n    <dd class="jf-blog-category">Category: <a href="#">Blog</a></dd>\r\n    <dd class="jf-blog-date">11 March 2012</dd>\r\n    <dd class="jf-blog-author">Written by - <a href="#">Super User</a></dd>\r\n    <img alt="JoomForest" title="JoomForest" src="/corporate-j25-1/images/joomforest/jf-blog/4.jpg" width="676px">\r\n</div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra erat nec ipsum tincidunt condimentum vulputate ligula tincidunt. Donec sit amet dolor nunc. Pellentesque ut justo metus. Ut id arcu vitae quam mattis lobortis feugiat at nisl. Curabitur convallis ultricies odio sed rhoncus. Fusce tincidunt euismod nibh ut rhoncus. Sed dapibus scelerisque consequat. Maecenas vel arcu a nisl mollis blandit. Suspendisse non malesuada nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque non velit lectus, vitae congue dolor. Nunc tristique, risus vitae rutrum sagittis, ligula elit fermentum mauris, sit amet laoreet mi est ac quam. Pellentesque mi odio, consectetur sit amet egestas lacinia, cursus id leo. Ut bibendum laoreet odio, eget sodales risus viverra a. Donec interdum nunc in turpis adipiscing sit amet gravida lectus lacinia. Duis eget massa vitae arcu hendrerit ornare sed posuere lorem. Mauris cursus malesuada nibh, fringilla pellentesque orci auctor quis.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra erat nec ipsum tincidunt condimentum vulputate ligula tincidunt. Donec sit amet dolor nunc. Pellentesque ut justo metus. Ut id arcu vitae quam mattis lobortis feugiat at nisl. Curabitur convallis ultricies odio sed rhoncus. Fusce tincidunt euismod nibh ut rhoncus. Sed dapibus scelerisque consequat. Maecenas vel arcu a nisl mollis blandit. Suspendisse non malesuada nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque non velit lectus, vitae congue dolor. Nunc tristique, risus vitae rutrum sagittis, ligula elit fermentum mauris, sit amet laoreet mi est ac quam. Pellentesque mi odio, consectetur sit amet egestas lacinia, cursus id leo. Ut bibendum laoreet odio, eget sodales risus viverra a. Donec interdum nunc in turpis adipiscing sit amet gravida lectus lacinia. Duis eget massa vitae arcu hendrerit ornare sed posuere lorem. Mauris cursus malesuada nibh, fringilla pellentesque orci auctor quis.</p>\r\n', 1, 0, 0, 8, '2012-03-11 12:18:58', 505, '', '2012-04-25 13:58:53', 42, 0, '0000-00-00 00:00:00', '2012-03-11 12:18:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 40, 'Lorem Ipsum', 'lorem-ipsum', '', '<div class="jf-blog-image">\r\n    <dd class="jf-blog-category">Category: <a href="#">Blog</a></dd>\r\n    <dd class="jf-blog-date">11 March 2012</dd>\r\n    <dd class="jf-blog-author">Written by - <a href="#">Super User</a></dd>\r\n    <img alt="JoomForest" title="JoomForest" src="/corporate-j25-1/images/joomforest/jf-blog/3.jpg" width="676px">\r\n</div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra erat nec ipsum tincidunt condimentum vulputate ligula tincidunt. Donec sit amet dolor nunc. Pellentesque ut justo metus. Ut id arcu vitae quam mattis lobortis feugiat at nisl. Curabitur convallis ultricies odio sed rhoncus. Fusce tincidunt euismod nibh ut rhoncus. Sed dapibus scelerisque consequat. Maecenas vel arcu a nisl mollis blandit. Suspendisse non malesuada nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque non velit lectus, vitae congue dolor. Nunc tristique, risus vitae rutrum sagittis, ligula elit fermentum mauris, sit amet laoreet mi est ac quam. Pellentesque mi odio, consectetur sit amet egestas lacinia, cursus id leo. Ut bibendum laoreet odio, eget sodales risus viverra a. Donec interdum nunc in turpis adipiscing sit amet gravida lectus lacinia. Duis eget massa vitae arcu hendrerit ornare sed posuere lorem. Mauris cursus malesuada nibh, fringilla pellentesque orci auctor quis.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra erat nec ipsum tincidunt condimentum vulputate ligula tincidunt. Donec sit amet dolor nunc. Pellentesque ut justo metus. Ut id arcu vitae quam mattis lobortis feugiat at nisl. Curabitur convallis ultricies odio sed rhoncus. Fusce tincidunt euismod nibh ut rhoncus. Sed dapibus scelerisque consequat. Maecenas vel arcu a nisl mollis blandit. Suspendisse non malesuada nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque non velit lectus, vitae congue dolor. Nunc tristique, risus vitae rutrum sagittis, ligula elit fermentum mauris, sit amet laoreet mi est ac quam. Pellentesque mi odio, consectetur sit amet egestas lacinia, cursus id leo. Ut bibendum laoreet odio, eget sodales risus viverra a. Donec interdum nunc in turpis adipiscing sit amet gravida lectus lacinia. Duis eget massa vitae arcu hendrerit ornare sed posuere lorem. Mauris cursus malesuada nibh, fringilla pellentesque orci auctor quis.</p>\r\n', 1, 0, 0, 8, '2012-03-11 12:18:58', 505, '', '2012-04-25 13:59:17', 42, 0, '0000-00-00 00:00:00', '2012-03-11 12:18:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 41, 'Dolor Sit Amet', 'dolor-sit-amet', '', '<div class="jf-blog-image">\r\n    <dd class="jf-blog-category">Category: <a href="#">Blog</a></dd>\r\n    <dd class="jf-blog-date">11 March 2012</dd>\r\n    <dd class="jf-blog-author">Written by - <a href="#">Super User</a></dd>\r\n    <img alt="JoomForest" title="JoomForest" src="/corporate-j25-1/images/joomforest/jf-blog/2.jpg" width="676px">\r\n</div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra erat nec ipsum tincidunt condimentum vulputate ligula tincidunt. Donec sit amet dolor nunc. Pellentesque ut justo metus. Ut id arcu vitae quam mattis lobortis feugiat at nisl. Curabitur convallis ultricies odio sed rhoncus. Fusce tincidunt euismod nibh ut rhoncus. Sed dapibus scelerisque consequat. Maecenas vel arcu a nisl mollis blandit. Suspendisse non malesuada nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque non velit lectus, vitae congue dolor. Nunc tristique, risus vitae rutrum sagittis, ligula elit fermentum mauris, sit amet laoreet mi est ac quam. Pellentesque mi odio, consectetur sit amet egestas lacinia, cursus id leo. Ut bibendum laoreet odio, eget sodales risus viverra a. Donec interdum nunc in turpis adipiscing sit amet gravida lectus lacinia. Duis eget massa vitae arcu hendrerit ornare sed posuere lorem. Mauris cursus malesuada nibh, fringilla pellentesque orci auctor quis.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra erat nec ipsum tincidunt condimentum vulputate ligula tincidunt. Donec sit amet dolor nunc. Pellentesque ut justo metus. Ut id arcu vitae quam mattis lobortis feugiat at nisl. Curabitur convallis ultricies odio sed rhoncus. Fusce tincidunt euismod nibh ut rhoncus. Sed dapibus scelerisque consequat. Maecenas vel arcu a nisl mollis blandit. Suspendisse non malesuada nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque non velit lectus, vitae congue dolor. Nunc tristique, risus vitae rutrum sagittis, ligula elit fermentum mauris, sit amet laoreet mi est ac quam. Pellentesque mi odio, consectetur sit amet egestas lacinia, cursus id leo. Ut bibendum laoreet odio, eget sodales risus viverra a. Donec interdum nunc in turpis adipiscing sit amet gravida lectus lacinia. Duis eget massa vitae arcu hendrerit ornare sed posuere lorem. Mauris cursus malesuada nibh, fringilla pellentesque orci auctor quis.</p>\r\n', 1, 0, 0, 8, '2012-03-11 12:18:58', 505, '', '2012-04-25 13:59:47', 42, 0, '0000-00-00 00:00:00', '2012-03-11 12:18:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 42, 'What Our Client Says', 'what-our-client-says', '', '<div class="jf-review-block">\r\n<div class="user"><img src="images/joomforest/jf-clients/user1.jpg" alt="" original-title="John Doe" /></div>\r\n<div class="review-wrapper">\r\n<div class="review">\r\n<p>Long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using...</p>\r\n</div>\r\n</div>\r\n<div class="clear">nbsp</div>\r\n</div>\r\n<div class="jf-review-block">\r\n<div class="user"><img src="images/joomforest/jf-clients/user2.jpg" alt="" original-title="John Doe" /></div>\r\n<div class="review-wrapper">\r\n<div class="review">\r\n<p>Long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using...</p>\r\n</div>\r\n</div>\r\n<div class="clear">nbsp</div>\r\n</div>\r\n<div class="jf-review-block">\r\n<div class="user"><img src="images/joomforest/jf-clients/user3.jpg" alt="" original-title="John Doe" /></div>\r\n<div class="review-wrapper">\r\n<div class="review">\r\n<p>Long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using...</p>\r\n</div>\r\n</div>\r\n<div class="clear">nbsp</div>\r\n</div>', '', 1, 0, 0, 2, '2012-03-11 14:12:19', 505, '', '2012-03-11 20:25:51', 42, 0, '0000-00-00 00:00:00', '2012-03-11 14:12:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(7, 43, 'Recent Blog Posts', 'recent-blog-posts', '', '<ul id="jf-post-items"><!-- Item #1 -->\r\n<li class="single-item">\r\n<div class="date"><span class="number">25</span> <span class="month">Oct</span></div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet...</p>\r\n<div class="sg-meta"><span>by <a>John Doe</a></span> / <span><a>20 March 2012</a></span> / <span><a href="#" target="_blank">read more</a></span></div>\r\n</li>\r\n<!-- end Item #1 -->\r\n<li class="list-divider"></li>\r\n<!-- Item #2 -->\r\n<li class="single-item">\r\n<div class="date"><span class="number">21</span> <span class="month">Oct</span></div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet...</p>\r\n<div class="sg-meta"><span>by <a>John Doe</a></span> / <span><a>21 March 2012</a></span> / <span><a href="#" target="_blank">read more</a></span></div>\r\n</li>\r\n<!-- end Item #2 -->\r\n<li class="list-divider"></li>\r\n<!-- Item #3 -->\r\n<li class="single-item">\r\n<div class="date"><span class="number">19</span> <span class="month">Oct</span></div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet...</p>\r\n<div class="sg-meta"><span>by <a>John Doe</a></span> / <span><a>22 March 2012</a></span> / <span><a href="#" target="_blank">read more</a></span></div>\r\n</li>\r\n<!-- end Item #3 -->\r\n<li class="list-divider"></li>\r\n</ul>', '', 1, 0, 0, 2, '2012-03-11 14:12:55', 505, '', '2012-03-11 19:22:58', 42, 0, '0000-00-00 00:00:00', '2012-03-11 14:12:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(8, 47, 'Heading', 'heading', '', '<h1>This is Heading 1</h1>\r\n<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Nam egestas elementum enim a luctus. Ut in sollicitudin justo. Morbi mi risus, lobortis a interdum id, dictum semper elit. Donec tincidunt facilisis nibh non venenatis. Vivamus nec nisi a diam condimentum laoreet eu et tellus. In leo dui, sodales id volutpat id, euismod ac tellus. Vivamus dictum dapibus rhoncus. Maecenas semper ornare nisi et egestas. Aenean vel mi ipsum. Fusce orci arcu, cursus vitae adipiscing vel, pharetra id dui.</p>\r\n<h2>This is Heading 2</h2>\r\n<p>Vivamus felis purus, scelerisque a tincidunt placerat, aliquam eu metus. Pellentesque rhoncus posuere accumsan. Duis euismod, libero in bibendum pulvinar, felis ante viverra sapien, in porta nibh nunc vitae lacus. Nam dapibus ligula ut elit elementum sit amet consectetur nibh molestie. Suspendisse potenti. Praesent viverra justo sit amet sapien rutrum viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris fermentum, est ac congue accumsan, nibh augue bibendum mi, at mattis justo urna eget odio.</p>\r\n<h3>This is Heading 3</h3>\r\n<p>Nunc sed rhoncus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris ipsum ligula, tempor vitae sodales ut, tempor nec metus. Quisque condimentum egestas sodales. Nam eget nulla et velit hendrerit placerat vel vitae sapien. Nullam eget nulla eget erat tincidunt tempus vel et quam. Aliquam malesuada lacinia magna, in lacinia urna euismod sit amet. Proin mollis tincidunt augue, non tincidunt augue pellentesque id. Duis commodo venenatis libero quis pulvinar. Nullam sit amet porttitor mi.</p>\r\n<h4>This is Heading 4</h4>\r\n<p>Etiam eget orci diam. Sed metus turpis, consequat id congue ac, pretium nec neque. Maecenas tempor, eros quis lacinia ultrices, massa neque malesuada magna, semper suscipit leo tortor at enim. Cras vel bibendum libero. Cras quis massa eu leo vulputate tempus. Maecenas rhoncus dignissim nulla, non tincidunt felis varius non. Suspendisse vulputate accumsan euismod. Aliquam eget lectus orci. Nullam ullamcorper sem ac enim dictum mattis aliquet nisi sagittis. Curabitur condimentum dignissim tempor. Proin vitae urna leo.</p>\r\n<h5>This is Heading 5</h5>\r\n<p>Nulla sed urna vitae urna varius vestibulum at ac ligula. Morbi volutpat tincidunt lorem et tempor. In hac habitasse platea dictumst. Cras varius nisl id ligula commodo varius. Praesent cursus egestas sapien ac pharetra. Morbi pharetra quam non velit cursus non commodo est laoreet. Sed eu sem eget quam porttitor pharetra. Pellentesque eu sem vitae nisl vulputate consectetur eget sit amet ante. Integer est libero, viverra at consequat vitae, vehicula porta nunc. Duis dictum risus et lectus laoreet ac ornare ligula facilisis.</p>\r\n<h6>This is Heading 6</h6>\r\n<p>Nullam ac nisi ac felis consectetur ultricies. Donec dui ante, molestie et malesuada interdum, suscipit nec lorem. Donec non purus mauris. Nunc pulvinar eleifend urna quis volutpat. Duis suscipit, odio et mattis iaculis, ipsum arcu faucibus magna, in rhoncus nisi tortor nec augue. Proin id varius elit.</p> ', '', 1, 0, 0, 9, '2012-03-21 21:33:50', 505, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-21 21:33:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 5, '', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 48, 'Columns', 'columns', '', '    <div class="jf-column-1">\r\n        <h2>One</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam. Sed sodales rhoncus pellentesque. Donec nec magna diam. Ut luctus auctor magna a tempor. Mauris fringilla fringilla imperdiet. Cras posuere dolor eu augue cursus eget pharetra tortor lacinia.\r\n    </div>\r\n    <div class="jf-column-1-2 first">\r\n        <h2>One Half</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam. Sed sodales rhoncus pellentesque. Donec nec magna diam. Ut luctus auctor magna a tempor. Mauris fringilla fringilla imperdiet. Cras posuere dolor eu augue cursus eget pharetra tortor lacinia.\r\n    </div>\r\n    <div class="jf-column-1-2 last">\r\n        <h2>One Half</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam. Sed sodales rhoncus pellentesque. Donec nec magna diam. Ut luctus auctor magna a tempor. Mauris fringilla fringilla imperdiet. Cras posuere dolor eu augue cursus eget pharetra tortor lacinia.\r\n    </div>\r\n    <div class="jf-column-1-3 first">\r\n        <h2>One Third</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam.\r\n    </div>\r\n    <div class="jf-column-1-3">\r\n        <h2>One Third</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam.\r\n    </div>\r\n    <div class="jf-column-1-3 last">\r\n        <h2>One Third</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam.\r\n    </div>\r\n    <div class="jf-column-1-3 first">\r\n        <h2>One Third</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam.\r\n    </div>\r\n    <div class="jf-column-2-3 last">\r\n        <h2>Two Third</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam. Sed sodales rhoncus pellentesque. Donec nec magna diam. Ut luctus auctor magna a tempor. Mauris fringilla fringilla imperdiet. Cras posuere dolor eu augue cursus eget pharetra tortor lacinia.\r\n    </div>\r\n    <div class="jf-column-1-4 first">\r\n        <h2>One Fourth</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam. Sed sodales rhoncus pellentesque. Donec nec magna diam. Ut luctus auctor magna a tempor. Mauris fringilla fringilla imperdiet. Cras posuere dolor eu augue cursus eget pharetra tortor lacinia.\r\n    </div>\r\n    <div class="jf-column-1-4">\r\n        <h2>One Fourth</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam. Sed sodales rhoncus pellentesque. Donec nec magna diam. Ut luctus auctor magna a tempor. Mauris fringilla fringilla imperdiet. Cras posuere dolor eu augue cursus eget pharetra tortor lacinia.\r\n    </div>\r\n    <div class="jf-column-1-4">\r\n        <h2>One Fourth</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam. Sed sodales rhoncus pellentesque. Donec nec magna diam. Ut luctus auctor magna a tempor. Mauris fringilla fringilla imperdiet. Cras posuere dolor eu augue cursus eget pharetra tortor lacinia.\r\n    </div>\r\n    <div class="jf-column-1-4 last">\r\n        <h2>One Fourth</h2>\r\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tellus erat, dapibus vel ultrices molestie, cursus auctor quam. Sed sodales rhoncus pellentesque. Donec nec magna diam. Ut luctus auctor magna a tempor. Mauris fringilla fringilla imperdiet. Cras posuere dolor eu augue cursus eget pharetra tortor lacinia.\r\n    </div>\r\n    <div class="clear"></div>\r\n    <div class="clear">nbsp</div>\r\n    <br />', '', 1, 0, 0, 9, '2012-03-21 21:34:12', 505, '', '2012-03-23 19:33:35', 42, 0, '0000-00-00 00:00:00', '2012-03-21 21:34:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 4, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 49, 'Lists', 'lists', '', '<div class="jf-column-1-4 first">\r\n    <h4>Arrow List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-arrow"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-arrow"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-arrow"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4">\r\n    <h4>Circle List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-circle"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-circle"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-circle"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4">\r\n    <h4>Check List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-check"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-check"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-check"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4 last">\r\n    <h4>Dollar List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-dollar"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-dollar"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-dollar"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4 first">\r\n    <h4>Pound List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-pound"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-pound"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-pound"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4">\r\n    <h4>Yen List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-euro"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-euro"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-euro"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4">\r\n    <h4>Euro List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-yen"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-yen"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-yen"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4 last">\r\n    <h4>Alert List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-alert"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-alert"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-alert"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4 first">\r\n    <h4>Box List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-box"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-box"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-box"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4">\r\n    <h4>Email List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-email"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-email"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-email"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4">\r\n    <h4>Star List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-star"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-star"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-star"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4 last">\r\n    <h4>Phone List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-phone"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-phone"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-phone"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4 first">\r\n    <h4>Print List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-print"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-print"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-print"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4">\r\n    <h4>Monitor List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-monitor"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-monitor"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-monitor"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4">\r\n    <h4>Download List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-download"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-download"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-download"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="jf-column-1-4 last">\r\n    <h4>Location List</h4>\r\n    <ul class="jf-typo-list icon">\r\n        <li class="list-location"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-location"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n        <li class="list-location"><span class="icon"> </span>Lorem ipsum dolor sit amet.</li>\r\n    </ul>\r\n</div>\r\n<div class="clear">nbsp</div>\r\n<br />', '', 1, 0, 0, 9, '2012-03-21 21:45:22', 505, '', '2012-03-23 19:33:08', 42, 0, '0000-00-00 00:00:00', '2012-03-21 21:45:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 17, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 50, 'Buttons', 'buttons', '', '<h2>Custom Button - Style1</h2>\r\n<div class="jf-column-1-4 first" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Blue-Style1</div>\r\n    <a class="button-blue-style1">Button 1</a>\r\n</div>\r\n<div class="jf-column-1-4" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Red-Style1</div>\r\n    <a class="button-red-style1">Button 2</a>\r\n</div>\r\n<div class="jf-column-1-4" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Green-Style1</div>\r\n    <a class="button-green-style1">Button 3</a>\r\n</div>\r\n<div class="jf-column-1-4 last" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Black-Style1</div>\r\n    <a class="button-black-style1">Button 4</a>\r\n</div>\r\n\r\n<h2>Custom Button - Style2</h2>\r\n<div class="jf-column-1-4 first" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Blue-Style2</div>\r\n    <a class="button-blue-style2">Button 1</a>\r\n</div>\r\n<div class="jf-column-1-4" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Red-Style2</div>\r\n    <a class="button-red-style2">Button 2</a>\r\n</div>\r\n<div class="jf-column-1-4" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Green-Style2</div>\r\n    <a class="button-green-style2">Button 3</a>\r\n</div>\r\n<div class="jf-column-1-4 last" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Black-Style2</div>\r\n    <a class="button-black-style2">Button 4</a>\r\n</div>\r\n\r\n<h2>Custom Button - Style3</h2>\r\n<div class="jf-column-1-4 first" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Blue-Style3</div>\r\n    <a class="button-blue-style3">Button 1</a>\r\n</div>\r\n<div class="jf-column-1-4" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Red-Style3</div>\r\n    <a class="button-red-style3">Button 2</a>\r\n</div>\r\n<div class="jf-column-1-4" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Green-Style1</div>\r\n    <a class="button-green-style3">Button 3</a>\r\n</div>\r\n<div class="jf-column-1-4 last" style="height: 70px;">\r\n    <div style="margin-bottom: 10px;">Custom Button-Black-Style3</div>\r\n    <a class="button-black-style3">Button 4</a>\r\n</div>\r\n<div class="clear">nbsp</div>\r\n<br />', '', 1, 0, 0, 9, '2012-03-21 22:39:11', 505, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-21 22:39:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `sn_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(12, 51, 'Pricing Tables', 'pricing-tables', '', '<!-- Start Blue Color Version -------------------------------------------------->\r\n<h1>3 Column Pricing Table - Blue</h1>\r\n<div id="jf-pricing-table" class="jf-blue-pricing-table">\r\n    <div class="jf-pricing-column jf-pricing-3-col">\r\n        <h3>Basic<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $20<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-3-col jf-recommended">\r\n        <h3>Advanced<span class="jf-bestvalue-button"></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $40<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-3-col">\r\n        <h3>Expert<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $60<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="clear">\r\n    </div>\r\n</div>\r\n<h1>4 Column Pricing Table - Blue</h1>\r\n<div id="jf-pricing-table" class="jf-blue-pricing-table">\r\n    <div class="jf-pricing-column jf-pricing-4-col">\r\n        <h3>Basic<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $20<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col jf-recommended">\r\n        <h3>Advanced<span class="jf-recommended-button"></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $40<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col ">\r\n        <h3>Expert<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $60<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col ">\r\n        <h3>Custom<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                &gt; $80<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="clear">\r\n    </div>\r\n</div>\r\n<!-- END blue Color Version ---------------------------------------------------->\r\n\r\n<!-- Start Red Color Version -------------------------------------------------->\r\n<h1>3 Column Pricing Table - Red</h1>\r\n<div id="jf-pricing-table" class="jf-red-pricing-table">\r\n    <div class="jf-pricing-column jf-pricing-3-col">\r\n        <h3>Basic<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $20<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-3-col jf-recommended">\r\n        <h3>Advanced<span class="jf-bestvalue-button"></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $40<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-3-col">\r\n        <h3>Expert<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $60<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="clear">\r\n    </div>\r\n</div>\r\n<h1>4 Column Pricing Table - Red</h1>\r\n<div id="jf-pricing-table" class="jf-red-pricing-table">\r\n    <div class="jf-pricing-column jf-pricing-4-col">\r\n        <h3>Basic<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $20<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col jf-recommended">\r\n        <h3>Advanced<span class="jf-recommended-button"></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $40<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col ">\r\n        <h3>Expert<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $60<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col ">\r\n        <h3>Custom<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                &gt; $80<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="clear">\r\n    </div>\r\n</div>\r\n<!-- END Red Color Version ---------------------------------------------------->\r\n\r\n<!-- Start Green Color Version -------------------------------------------------->\r\n<h1>3 Column Pricing Table - Green</h1>\r\n<div id="jf-pricing-table" class="jf-green-pricing-table">\r\n    <div class="jf-pricing-column jf-pricing-3-col">\r\n        <h3>Basic<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $20<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-3-col jf-recommended">\r\n        <h3>Advanced<span class="jf-bestvalue-button"></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $40<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-3-col">\r\n        <h3>Expert<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $60<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="clear">\r\n    </div>\r\n</div>\r\n<h1>4 Column Pricing Table - Green</h1>\r\n<div id="jf-pricing-table" class="jf-green-pricing-table">\r\n    <div class="jf-pricing-column jf-pricing-4-col">\r\n        <h3>Basic<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $20<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col jf-recommended">\r\n        <h3>Advanced<span class="jf-recommended-button"></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $40<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col ">\r\n        <h3>Expert<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $60<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col ">\r\n        <h3>Custom<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                &gt; $80<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="clear">\r\n    </div>\r\n</div>\r\n<!-- END Green Color Version ---------------------------------------------------->\r\n\r\n<!-- Start Black Color Version -------------------------------------------------->\r\n<h1>3 Column Pricing Table - Black</h1>\r\n<div id="jf-pricing-table" class="jf-black-pricing-table">\r\n    <div class="jf-pricing-column jf-pricing-3-col">\r\n        <h3>Basic<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $20<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-3-col jf-recommended">\r\n        <h3>Advanced<span class="jf-bestvalue-button"></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $40<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-3-col">\r\n        <h3>Expert<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $60<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="clear">\r\n    </div>\r\n</div>\r\n<h1>4 Column Pricing Table - Black</h1>\r\n<div id="jf-pricing-table" class="jf-black-pricing-table">\r\n    <div class="jf-pricing-column jf-pricing-4-col">\r\n        <h3>Basic<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $20<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col jf-recommended">\r\n        <h3>Advanced<span class="jf-recommended-button"></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $40<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col ">\r\n        <h3>Expert<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                $60<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="jf-pricing-column jf-pricing-4-col ">\r\n        <h3>Custom<span class=""></span></h3>\r\n        <div class="jf-cost">\r\n            <p>\r\n                &gt; $80<span>/month</span>\r\n            </p>\r\n        </div>\r\n        <div class="jf-features">\r\n            <ul>\r\n                <li>Item One Description</li>\r\n                <li>Item Two Description</li>\r\n                <li>Item Three Description</li>\r\n                <li>Item Four Description</li>\r\n                <li>Item Five Description</li>\r\n            </ul>\r\n        </div>\r\n        <div class="jf-buynow">\r\n            <a href="#" class="button large">Purchase</a>\r\n        </div>\r\n    </div>\r\n    <div class="clear">\r\n    </div>\r\n</div>\r\n<!-- END Black Color Version ---------------------------------------------------->', '', 1, 0, 0, 9, '2012-03-23 19:41:08', 505, '', '2012-03-24 12:14:34', 42, 0, '0000-00-00 00:00:00', '2012-03-23 19:41:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 0, 1, '', '', 1, 71, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 52, 'PiroBox', 'pirobox', '', '\r\n<h2>Image gallery with zoom option for large images</h2>\r\n    <a href="images/joomforest/jf-images/33.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com">\r\n        <img src="images/joomforest/jf-images/33s.jpg"  />\r\n    </a>\r\n        \r\n<h2>Single image</h2>\r\n    <a href="images/joomforest/jf-images/33.jpg" rel="single" class="pirobox" title="JoomForest.com">\r\n        <img src="images/joomforest/jf-images/33s.jpg"  />\r\n    </a>\r\n    \r\n<h2>URL image error</h2>\r\n    <a href="img/mmsmsmsmsm.jpg" rel="single"  class="pirobox" title="JoomForest.com">\r\n        <img src="images/joomforest/jf-images/33s.jpg"  />\r\n    </a>\r\n    \r\n<h2>\r\n    <a href="#inline" rel="inline-800-250" class="pirobox_gall1" title="Inline content">\r\n        Inline content - Open (800x250px)\r\n    </a>\r\n    <div id="inline" style="display:none;">\r\n        <h2>Inline content</h2>\r\n        <p style="padding:20px;">\r\n            <a href="images/joomforest/jf-images/33s.jpg" rel="single"  class="pirobox" title="Lights">\r\n                <img src="images/joomforest/jf-images/33s.jpg" style="float:left; margin:0 5px 0 0;"  />\r\n            </a>\r\n            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n        </p>\r\n    </div>\r\n</h2>\r\n    \r\n<h2>\r\n    <a href="http://www.youtube-nocookie.com/v/Bkjv9SscotY&amp;hl=it_IT&amp;fs=1?rel=0" rel="flash-640-505"  class="pirobox_gall1" title="You tube ">\r\n        YouTube - Open (640x505px)\r\n    </a>\r\n</h2>\r\n\r\n\r\n<h2>\r\n    <a href="http://www.joomforest.com" rel="iframe-full-full" class="pirobox_gall1" title="JoomForest.com">\r\n        Iframe - Full Screen\r\n    </a>\r\n</h2>\r\n\r\n\r\n<h2>\r\n    <a href="http://vimeo.com/moogaloop.swf?clip_id=15627158&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=1&amp;color=00ADEF&amp;fullscreen=1&amp;autoplay=0&amp;loop=0" class="pirobox_gall1" rel="flash-600-400" title="Intro">\r\n        Vimeo - Open (600x400px)\r\n    </a>\r\n</h2>\r\n\r\n<h2 style="float:right">Check More on - http://www.pirolab.it/pirobox/</h3>\r\n<div class="clear">nbsp</div>', '', 1, 0, 0, 10, '2012-03-24 13:36:06', 505, '', '2012-03-24 20:44:12', 42, 0, '0000-00-00 00:00:00', '2012-03-24 13:36:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 26, 0, 3, '', '', 1, 85, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 53, 'Portfolio', 'portfolio', '', '\r\n    <ul id="jf-portfolio">\r\n        <li>\r\n            <div class="jf-portfolio-item jf-portfolio-item-ninth">\r\n                <img src="images/joomforest/jf-portfolio/1.jpg" alt="" width="250" height="170">\r\n                <div class="mask mask-1"></div>\r\n                <div class="mask mask-2"></div>\r\n                <div class="content">\r\n                    <a href="#"><h2>My Portfolio Item</h2></a>\r\n                    <p>Hac est eros placerat elit placerat phasellus vel mus</p>\r\n                    <a href="images/joomforest/jf-portfolio/1.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"></a>\r\n                </div>\r\n            </div>\r\n        </li>\r\n        <li>\r\n            <div class="jf-portfolio-item jf-portfolio-item-ninth">\r\n                <img src="images/joomforest/jf-portfolio/2.jpg" alt="" width="250" height="170">\r\n                <div class="mask mask-1"></div>\r\n                <div class="mask mask-2"></div>\r\n                <div class="content">\r\n                    <a href="#"><h2>My Portfolio Item</h2></a>\r\n                    <p>Hac est eros placerat elit placerat phasellus vel mus</p>\r\n                    <a href="images/joomforest/jf-portfolio/2.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"></a>\r\n                </div>\r\n            </div>\r\n        </li>\r\n        <li>\r\n            <div class="jf-portfolio-item jf-portfolio-item-ninth">\r\n                <img src="images/joomforest/jf-portfolio/3.jpg" alt="" width="250" height="170">\r\n                <div class="mask mask-1"></div>\r\n                <div class="mask mask-2"></div>\r\n                <div class="content">\r\n                    <a href="#"><h2>My Portfolio Item</h2></a>\r\n                    <p>Hac est eros placerat elit placerat phasellus vel mus</p>\r\n                    <a href="images/joomforest/jf-portfolio/3.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"></a>\r\n                </div>\r\n            </div>\r\n        </li>\r\n        <li>\r\n            <div class="jf-portfolio-item jf-portfolio-item-ninth">\r\n                <img src="images/joomforest/jf-portfolio/4.jpg" alt="" width="250" height="170">\r\n                <div class="mask mask-1"></div>\r\n                <div class="mask mask-2"></div>\r\n                <div class="content">\r\n                    <a href="#"><h2>My Portfolio Item</h2></a>\r\n                    <p>Hac est eros placerat elit placerat phasellus vel mus</p>\r\n                    <a href="images/joomforest/jf-portfolio/4.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"></a>\r\n                </div>\r\n            </div>\r\n        </li>\r\n        <li>\r\n            <div class="jf-portfolio-item jf-portfolio-item-ninth">\r\n                <img src="images/joomforest/jf-portfolio/5.jpg" alt="" width="250" height="170">\r\n                <div class="mask mask-1"></div>\r\n                <div class="mask mask-2"></div>\r\n                <div class="content">\r\n                    <a href="#"><h2>My Portfolio Item</h2></a>\r\n                    <p>Hac est eros placerat elit placerat phasellus vel mus</p>\r\n                    <a href="images/joomforest/jf-portfolio/5.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"></a>\r\n                </div>\r\n            </div>\r\n        </li>\r\n        <li>\r\n            <div class="jf-portfolio-item jf-portfolio-item-ninth">\r\n                <img src="images/joomforest/jf-portfolio/6.jpg" alt="" width="250" height="170">\r\n                <div class="mask mask-1"></div>\r\n                <div class="mask mask-2"></div>\r\n                <div class="content">\r\n                    <a href="#"><h2>My Portfolio Item</h2></a>\r\n                    <p>Hac est eros placerat elit placerat phasellus vel mus</p>\r\n                    <a href="images/joomforest/jf-portfolio/6.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"></a>\r\n                </div>\r\n            </div>\r\n        </li>\r\n        <li>\r\n            <div class="jf-portfolio-item jf-portfolio-item-ninth">\r\n                <img src="images/joomforest/jf-portfolio/7.jpg" alt="" width="250" height="170">\r\n                <div class="mask mask-1"></div>\r\n                <div class="mask mask-2"></div>\r\n                <div class="content">\r\n                    <a href="#"><h2>My Portfolio Item</h2></a>\r\n                    <p>Hac est eros placerat elit placerat phasellus vel mus</p>\r\n                    <a href="images/joomforest/jf-portfolio/7.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"></a>\r\n                </div>\r\n            </div>\r\n        </li>\r\n        <li>\r\n            <div class="jf-portfolio-item jf-portfolio-item-ninth">\r\n                <img src="images/joomforest/jf-portfolio/8.jpg" alt="" width="250" height="170">\r\n                <div class="mask mask-1"></div>\r\n                <div class="mask mask-2"></div>\r\n                <div class="content">\r\n                    <a href="#"><h2>My Portfolio Item</h2></a>\r\n                    <p>Hac est eros placerat elit placerat phasellus vel mus</p>\r\n                    <a href="images/joomforest/jf-portfolio/8.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"></a>\r\n                </div>\r\n            </div>\r\n        </li>\r\n        <li>\r\n            <div class="jf-portfolio-item jf-portfolio-item-ninth">\r\n                <img src="images/joomforest/jf-portfolio/9.jpg" alt="" width="250" height="170">\r\n                <div class="mask mask-1"></div>\r\n                <div class="mask mask-2"></div>\r\n                <div class="content">\r\n                    <a href="#"><h2>My Portfolio Item</h2></a>\r\n                    <p>Hac est eros placerat elit placerat phasellus vel mus</p>\r\n                    <a href="images/joomforest/jf-portfolio/9.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"></a>\r\n                </div>\r\n            </div>\r\n        </li>\r\n        <div class="clear">nbsp</div>\r\n    </ul>', '', 1, 0, 0, 10, '2012-03-24 17:49:33', 505, '', '2012-03-25 10:34:11', 42, 0, '0000-00-00 00:00:00', '2012-03-24 17:49:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 5, '', '', 1, 37, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 54, 'Photo Gallery', 'photo-gallery', '', '<ul class="jf-photo-gallery">\r\n<li><a href="images/joomforest/jf-portfolio/1.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/1.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Dolor sit amet</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/2.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/2.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Dolor sit amet</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/3.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/3.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Quisque ac felis</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/4.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/4.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Curabitur tristique</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/5.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/5.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Sed at leo</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/6.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/6.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Sed ac elit</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/7.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/7.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Lorem ipsum</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/8.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/8.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Ut hendrerit</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/9.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/9.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Quisque ac felis</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/10.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/10.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Sed ac elit</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/11.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/11.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Ut hendrerit</span> </a></li>\r\n<li><a href="images/joomforest/jf-portfolio/12.jpg" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/12.jpg" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Quisque ac felis</span> </a></li>\r\n<div class="clear">nbsp</div>\r\n</ul>', '', 1, 0, 0, 10, '2012-03-24 19:16:16', 505, '', '2012-03-24 20:10:58', 42, 0, '0000-00-00 00:00:00', '2012-03-24 19:16:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 0, 4, '', '', 1, 65, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 56, 'FAQ', 'faq', '', '<div class="jf-faq">\r\n    <h2 class="jf-faq-trigger active"><a href="#">Web Design &amp; Development</a></h2>\r\n    <div class="jf-faq-container">\r\n        <div class="block">\r\n            <p>\r\n                Consequat te olim letalis premo ad hos olim odio olim indoles ut venio iusto. Euismod, sagaciter diam neque antehabeo blandit, jumentum transverbero luptatum. Lenis vel diam praemitto molior facilisi facilisi suscipere abico, ludus, at. Wisi suscipere nisl ad capto comis esse, autem genitus. Feugiat immitto ullamcorper hos luptatum gilvus eum. Delenit patria nunc os pneum acsi nulla magna singularis proprius autem exerci accumsan.\r\n            </p>\r\n            <p>\r\n                Praesent duis vel similis usitas camur, nostrud eros opes verto epulae feugiat ad. Suscipit modo magna letalis amet et tego accumsan facilisi, meus. Vindico luptatum blandit ulciscor mos caecus praesent sed meus velit si quis lobortis praemitto, uxor.\r\n            </p>\r\n        </div>\r\n    </div>\r\n    <h2 class="jf-faq-trigger"><a href="#">Logo / Corporate Identity</a></h2>\r\n    <div class="jf-faq-container">\r\n        <div class="block">\r\n            <p>\r\n                Consequat te olim letalis premo ad hos olim odio olim indoles ut venio iusto. Euismod, sagaciter diam neque antehabeo blandit, jumentum transverbero luptatum. Lenis vel diam praemitto molior facilisi facilisi suscipere abico, ludus, at. Wisi suscipere nisl ad capto comis esse, autem genitus. Feugiat immitto ullamcorper hos luptatum gilvus eum. Delenit patria nunc os pneum acsi nulla magna singularis proprius autem exerci accumsan.\r\n            </p>\r\n            <p>\r\n                Praesent duis vel similis usitas camur, nostrud eros opes verto epulae feugiat ad. Suscipit modo magna letalis amet et tego accumsan facilisi, meus. Vindico luptatum blandit ulciscor mos caecus praesent sed meus velit si quis lobortis praemitto, uxor.\r\n            </p>\r\n        </div>\r\n    </div>\r\n    <h2 class="jf-faq-trigger"><a href="#">Consequat te olim</a></h2>\r\n    <div class="jf-faq-container">\r\n        <div class="block">\r\n            <p>\r\n                Consequat te olim letalis premo ad hos olim odio olim indoles ut venio iusto. Euismod, sagaciter diam neque antehabeo blandit, jumentum transverbero luptatum. Lenis vel diam praemitto molior facilisi facilisi suscipere abico, ludus, at. Wisi suscipere nisl ad capto comis esse, autem genitus. Feugiat immitto ullamcorper hos luptatum gilvus eum. Delenit patria nunc os pneum acsi nulla magna singularis proprius autem exerci accumsan.\r\n            </p>\r\n            <p>\r\n                Praesent duis vel similis usitas camur, nostrud eros opes verto epulae feugiat ad. Suscipit modo magna letalis amet et tego accumsan facilisi, meus. Vindico luptatum blandit ulciscor mos caecus praesent sed meus velit si quis lobortis praemitto, uxor.\r\n            </p>\r\n        </div>\r\n    </div>\r\n    <h2 class="jf-faq-trigger"><a href="#">Praesent duis vel</a></h2>\r\n    <div class="jf-faq-container">\r\n        <div class="block">\r\n            <p>\r\n                Consequat te olim letalis premo ad hos olim odio olim indoles ut venio iusto. Euismod, sagaciter diam neque antehabeo blandit, jumentum transverbero luptatum. Lenis vel diam praemitto molior facilisi facilisi suscipere abico, ludus, at. Wisi suscipere nisl ad capto comis esse, autem genitus. Feugiat immitto ullamcorper hos luptatum gilvus eum. Delenit patria nunc os pneum acsi nulla magna singularis proprius autem exerci accumsan.\r\n            </p>\r\n            <p>\r\n                Praesent duis vel similis usitas camur, nostrud eros opes verto epulae feugiat ad. Suscipit modo magna letalis amet et tego accumsan facilisi, meus. Vindico luptatum blandit ulciscor mos caecus praesent sed meus velit si quis lobortis praemitto, uxor.\r\n            </p>\r\n        </div>\r\n    </div>\r\n    <h2 class="jf-faq-trigger"><a href="#">letalis premo a?</a></h2>\r\n    <div class="jf-faq-container">\r\n        <div class="block">\r\n            <p>\r\n                Consequat te olim letalis premo ad hos olim odio olim indoles ut venio iusto. Euismod, sagaciter diam neque antehabeo blandit, jumentum transverbero luptatum. Lenis vel diam praemitto molior facilisi facilisi suscipere abico, ludus, at. Wisi suscipere nisl ad capto comis esse, autem genitus. Feugiat immitto ullamcorper hos luptatum gilvus eum. Delenit patria nunc os pneum acsi nulla magna singularis proprius autem exerci accumsan.\r\n            </p>\r\n            <p>\r\n                Praesent duis vel similis usitas camur, nostrud eros opes verto epulae feugiat ad. Suscipit modo magna letalis amet et tego accumsan facilisi, meus. Vindico luptatum blandit ulciscor mos caecus praesent sed meus velit si quis lobortis praemitto, uxor.\r\n            </p>\r\n        </div>\r\n    </div>\r\n    <h2 class="jf-faq-trigger"><a href="#">premo ad hos olim?</a></h2>\r\n    <div class="jf-faq-container">\r\n        <div class="block">\r\n            <p>\r\n                Consequat te olim letalis premo ad hos olim odio olim indoles ut venio iusto. Euismod, sagaciter diam neque antehabeo blandit, jumentum transverbero luptatum. Lenis vel diam praemitto molior facilisi facilisi suscipere abico, ludus, at. Wisi suscipere nisl ad capto comis esse, autem genitus. Feugiat immitto ullamcorper hos luptatum gilvus eum. Delenit patria nunc os pneum acsi nulla magna singularis proprius autem exerci accumsan.\r\n            </p>\r\n            <p>\r\n                Praesent duis vel similis usitas camur, nostrud eros opes verto epulae feugiat ad. Suscipit modo magna letalis amet et tego accumsan facilisi, meus. Vindico luptatum blandit ulciscor mos caecus praesent sed meus velit si quis lobortis praemitto, uxor.\r\n            </p>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div class="clear">nbsp</div>', '', 1, 0, 0, 10, '2012-03-24 21:27:48', 505, '', '2012-03-24 21:29:10', 42, 0, '0000-00-00 00:00:00', '2012-03-24 21:27:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `sn_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(17, 60, 'Features', 'features', '', '<div style="font-family: ''Yanone Kaffeesatz'',''Helvetica'',arial,serif; font-size: 16px;">\r\n<div style="text-align: center;"><img src="images/joomforest/jf-features/features-cover.png" alt="JoomForest - JF Corporate Features" title="JoomForest - JF Corporate Features" /></div>\r\n<div class="clear">nbsp</div>\r\n<p>JF Corporate is free Joomla Corporate/Portfolio template. It is Based On Gantry Framework, With JomSocial &amp; Kunena Forum Theme, Beautiful Sliders, typography &amp; Much More.</p>\r\n<p style="color: #c00; margin-top: 30px; font-size: 18px;">"JF Corporate" Joomla Template Features:</p>\r\n<ul class="jf-typo-list icon">\r\n<li class="list-arrow"><span class="icon"></span>Template based on Gantry Framework;</li>\r\n<li class="list-arrow"><span class="icon"></span>Theme For JomSocial (Joomla Social Networking Component) and for Kunena Forum;</li>\r\n<li class="list-arrow"><span class="icon"></span>3 Diffrent Sliders (Simple Slider, Object Carousel, Nivo Slider);</li>\r\n<li class="list-arrow"><span class="icon"></span>4 Color variation (Blue, Red, Green, Black);</li>\r\n<li class="list-arrow"><span class="icon"></span>Inbuilt Pirobox Gallery;</li>\r\n<li class="list-arrow"><span class="icon"></span>Quickstart package;</li>\r\n<li class="list-arrow"><span class="icon"></span>Pricing Tables;</li>\r\n<li class="list-arrow"><span class="icon"></span>FAQ Section;</li>\r\n<li class="list-arrow"><span class="icon"></span>&amp; much much more...</li>\r\n</ul>\r\n<div class="clear">nbsp</div>\r\n<p style="color: #c00; margin-top: 30px; font-size: 18px;">"JF Corporate" JomSocial Template Features:</p>\r\n<ul class="jf-typo-list icon">\r\n<li class="list-arrow"><span class="icon"></span>4 Color Themes;</li>\r\n<li class="list-arrow"><span class="icon"></span>Clean Style;</li>\r\n<li class="list-arrow"><span class="icon"></span>Left Floating Menu;</li>\r\n<li class="list-arrow"><span class="icon"></span>Some Color Anymations on JS Toolbar;</li>\r\n<li class="list-arrow"><span class="icon"></span>&amp; much more...</li>\r\n</ul>\r\n<div class="clear">nbsp</div>\r\n<p style="color: #c00; margin-top: 30px; font-size: 18px;">"JF Corporate" Kunena Template Features:</p>\r\n<ul class="jf-typo-list icon" style="margin-bottom: 30px;">\r\n<li class="list-arrow"><span class="icon"></span>Unlimited Color Styles;</li>\r\n<li class="list-arrow"><span class="icon"></span>Clean Business/Corporate Style;</li>\r\n<li class="list-arrow"><span class="icon"></span>Popup Login/Search Based on Pirobox;</li>\r\n<li class="list-arrow"><span class="icon"></span>Color Anymations on Kunena Menu;</li>\r\n<li class="list-arrow"><span class="icon"></span>&amp; much more...</li>\r\n</ul>\r\n<div class="clear">nbsp</div>\r\n<div style="background: #F6F6F6; padding-left: 10px; border: 1px solid #DDD;">\r\n<p style="color: #c00; padding-top: 20px; font-size: 18px;">Extensions:</p>\r\n<div style="margin-left: 30px;">\r\n<p style="color: #c00;">Components:</p>\r\n<ul class="jf-typo-list icon" style="margin-bottom: 15px;">\r\n<li class="list-circle"><span class="icon"></span>Gantry Framework - <span style="color: #006380;">http://www.gantry-framework.org/</span></li>\r\n<li class="list-circle"><span class="icon"></span>JomSocial - <span style="color: #006380;">http://www.jomsocial.com/</span></li>\r\n<li class="list-circle"><span class="icon"></span>Kunena Forum - <span style="color: #006380;">http://extensions.joomla.org/extensions/communication/forum/7256</span></li>\r\n<li class="list-circle"><span class="icon"></span>JCE Editor - <span style="color: #006380;">http://extensions.joomla.org/extensions/edition/editors/88</span></li>\r\n</ul>\r\n<p style="color: #c00;">Modules:</p>\r\n<ul class="jf-typo-list icon" style="margin-bottom: 15px;">\r\n<li class="list-circle"><span class="icon"></span>JGMap - <span style="color: #006380;">http://extensions.joomla.org/extensions/maps-a-weather/maps-a-locations/maps/10543</span></li>\r\n</ul>\r\n</div>\r\n<p style="color: #c00; font-size: 18px;">Scripts:</p>\r\n<ul class="jf-typo-list icon" style="margin-bottom: 15px;">\r\n<li class="list-circle"><span class="icon"></span>jQuery - <span style="color: #006380;">http://jquery.com/</span></li>\r\n<li class="list-circle"><span class="icon"></span>PiroBox - <span style="color: #006380;">http://www.pirolab.it/pirobox/</span></li>\r\n<li class="list-circle"><span class="icon"></span>Slides - <span style="color: #006380;">http://slidesjs.com/</span></li>\r\n<li class="list-circle"><span class="icon"></span>Nivo Slider - <span style="color: #006380;">http://nivo.dev7studios.com/</span></li>\r\n<li class="list-circle"><span class="icon"></span>Object Carousel - <span style="color: #006380;">http://caroufredsel.frebsite.nl</span></li>\r\n<li class="list-circle"><span class="icon"></span>Quovolver - <span style="color: #006380;">http://sandbox.sebnitu.com/jquery/quovolver</span></li>\r\n</ul>\r\n<p style="color: #c00; font-size: 18px;">Icons:</p>\r\n<ul class="jf-typo-list icon" style="margin-bottom: 30px;">\r\n<li class="list-circle"><span class="icon"></span>Wireframe mono icons - <span style="color: #006380;">http://www.gentleface.com/</span></li>\r\n</ul>\r\n<div class="clear">nbsp</div>\r\n</div>\r\n<p style="color: #c00; padding-top: 20px; font-size: 18px;">Screens:</p>\r\n<div style="background: #F6F6F6; border: 1px solid #DDD; padding-left: 3px; margin-bottom: 15px;">\r\n<ul class="jf-photo-gallery">\r\n<li><a href="images/joomforest/jf-features/big/1.png" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-features/thumb/1.png" alt="" height="150" width="220" /> <span class="jf-gallery-caption">JomSocial Template</span> </a></li>\r\n<li><a href="images/joomforest/jf-features/big/2.png" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-features/thumb/2.png" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Kunena Template</span> </a></li>\r\n<li><a href="images/joomforest/jf-features/big/3.png" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-features/thumb/3.png" alt="" height="150" width="220" /> <span class="jf-gallery-caption">JomSocial Template Features</span> </a></li>\r\n<li><a href="images/joomforest/jf-features/big/4.png" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-features/thumb/4.png" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Kunena Template Features</span> </a></li>\r\n<li><a href="images/joomforest/jf-features/big/5.png" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-features/thumb/5.png" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Nivo Slider</span> </a></li>\r\n<li><a href="images/joomforest/jf-features/big/6.png" rel="gallery" class="jf-zoom pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-features/thumb/6.png" alt="" height="150" width="220" /> <span class="jf-gallery-caption">Object Carousel Slider</span> </a></li>\r\n<div class="clear">nbsp</div>\r\n</ul>\r\n</div>\r\n<div class="clear">nbsp</div>\r\n</div>', '', 1, 0, 0, 10, '2012-04-24 21:39:40', 505, '', '2012-05-06 10:20:47', 42, 0, '0000-00-00 00:00:00', '2012-04-24 21:39:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 36, 0, 1, '', '', 1, 47, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 61, 'Sliders', 'sliders', '', '<p>lorem Ipsum</p>', '', 1, 0, 0, 10, '2012-04-24 21:40:15', 505, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-24 21:40:15', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `sn_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_content_frontpage`
--

INSERT INTO `sn_content_frontpage` (`content_id`, `ordering`) VALUES
(6, 2),
(7, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sn_content_rating`
--

CREATE TABLE IF NOT EXISTS `sn_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_content_rating`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `sn_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_core_log_searches`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_extensions`
--

CREATE TABLE IF NOT EXISTS `sn_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10070 ;

--
-- 转存表中的数据 `sn_extensions`
--

INSERT INTO `sn_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","useractivation":"0","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `sn_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"6LdVHccSAAAAAEQpm3yOFClG-HpiHkRpGRj7fxzD","private_key":"6LdVHccSAAAAAAz3JZc9rBxHpWGRvImW1yQwu8gF","theme":"red"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"June 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokExtender","type":"plugin","creationDate":"February 24, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"System - Gantry","group":""}', '{"registered":"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10006, 'RokNavMenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokNavMenu","type":"module","creationDate":"June 19, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.12","description":"RocketTheme Customizable Navigation Menu","group":""}', '{"limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","filteringspacer2":"","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Editor - JCE', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"legacy":true,"name":"Editor - JCE","type":"plugin","creationDate":"16 July 2012","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.2.4","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"legacy":true,"name":"JCE","type":"component","creationDate":"16 July 2012","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2012 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.2.4","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'MOD_JGMAP', 'module', 'mod_JGMap', '', 0, 1, 0, 0, '{"legacy":false,"name":"MOD_JGMAP","type":"module","creationDate":"June 13, 2010","author":"Kermode Bear Software - James Hansen","copyright":"Copyright 2011 Notice","authorEmail":"kermode@kermodesoftware.com","authorUrl":"www.kermodesoftware.com","version":"0.16.35","description":"MOD_JGMAP_XML_DESCRIPTION","group":""}', '{"width":"200","height":"150","mapName":"map","smallmap":"1","static":"0","lat":"48.5747","lng":"-123","zoom":"3","marker_title":"","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'System - RokGZipper', 'plugin', 'rokgzipper', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"System - RokGZipper","type":"plugin","creationDate":"March 2, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"Plugin to gzip-bundle js and css files","group":""}', '{"cache_time":"900","expires_header_time":"1440","show_contains_comments":"0","ignored_files":"\\/components\\/com_kunena\\/template\\/jf_corporate\\/css\\/kunena.forum-min.css\\r\\n\\/components\\/com_kunena\\/template\\/jf_corporate\\/css\\/kunena.forum-joomforest.css","strip_css":"1"}', '', '', 0, '0000-00-00 00:00:00', 100, 0),
(10023, 'gantry', 'component', 'com_gantry', '', 0, 1, 0, 0, '{"legacy":false,"name":"Gantry","type":"component","creationDate":"June 19, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.20","description":"${project.description}","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Gantry","type":"plugin","creationDate":"June 19, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.20","description":"Gantry System Plugin for Joomla","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10025, 'rt_gantry', 'template', 'rt_gantry', '', 0, 1, 1, 0, '{"legacy":false,"name":"rt_gantry","type":"template","creationDate":"February 8, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.16","description":"${project.description}","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'jf_corporate', 'template', 'jf_corporate', '', 0, 1, 1, 0, '{"legacy":false,"name":"jf_corporate","type":"template","creationDate":"26.07.12","author":"JoomForest","copyright":"(C) 2012 JoomForest. All rights reserved.","authorEmail":"info@joomforest.com","authorUrl":"http:\\/\\/www.joomforest.com","version":"1.1","description":"JF Corporate v1.1","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'System - RokBooster', 'plugin', 'rokbooster', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"System - RokBooster","type":"plugin","creationDate":"June 26, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0.1","description":"\\n        \\n        <div class=\\"booster-description\\">\\n        <img src=\\"..\\/plugins\\/system\\/rokbooster\\/assets\\/images\\/rokbooster.jpg\\" class=\\"img-padding\\" \\/><h1>RokBooster<\\/h1>\\n        <p>Increase the speed of your site by enabling the RokBooster plug-in.  This advanced extensions will <strong>compress<\\/strong> and <strong>combine<\\/strong> your <strong>CSS<\\/strong> and <strong>JavaScript<\\/strong> into as few files as possible each.  RokBooster can dramatically reduce the number of HTTP calls a browser has to make, and sending those compressed files GZipped means your pages will load faster with less load on your server.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n            <li>Combine and compress CSS and JavaScript into as few files as possible<\\/li>\\n            <li>GZip compression used to send CSS and JavaScript files<\\/li>\\n            <li>Compress Inline CSS and JavaScript<\\/li>\\n            <li>Customizable cache timeout<\\/li>\\n            <li>Background rendering, so initial file processing won''t slow your users down<\\/li>\\n            <li>Full page scan allows for non-header JavaScript and CSS to be included<\\/li>\\n            <li>Ability to ignore specific CSS and JavaScript files<\\/li>\\n        <\\/ul>\\n        <p class=\\"note\\"><strong>NOTE:<\\/strong> Clearing the Joomla cache will remove the RokBooster compressed cache files causing them to regenerate on the next page hit<\\/p>\\n        <\\/div>\\n        \\n    ","group":""}', '{"cache_time":"60","minify_css":"1","style_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_css":"1","imported_css":"1","minify_js":"1","script_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_js":"1","ignored_files":"","scan_method":"header","use_background_processing":"1","disable_for_ie":"1"}', '', '', 0, '0000-00-00 00:00:00', 100, 0),
(10046, 'Gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"library","creationDate":"June 19, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.20","description":"${project.description}","group":""}', '{}', '{"last_update":1343304503}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'com_kunena', 'component', 'com_kunena', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_kunena","type":"component","creationDate":"2012-07-07","author":"Kunena Team","copyright":"(C) 2008 - 2012 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"COM_KUNENA_XML_DESCRIPTION","group":""}', '{"liveupdate":"stuck=0\\nlastcheck=1343423331\\nupdatedata=\\"\\"{\\\\\\"supported\\\\\\":true,\\\\\\"stuck\\\\\\":false,\\\\\\"version\\\\\\":\\\\\\"2.0.1\\\\\\",\\\\\\"date\\\\\\":\\\\\\"2012-07-07\\\\\\",\\\\\\"stability\\\\\\":\\\\\\"stable\\\\\\",\\\\\\"downloadURL\\\\\\":\\\\\\"http:\\\\\\\\\\\\\\/\\\\\\\\\\\\\\/joomlacode.org\\\\\\\\\\\\\\/gf\\\\\\\\\\\\\\/download\\\\\\\\\\\\\\/frsrelease\\\\\\\\\\\\\\/17270\\\\\\\\\\\\\\/75110\\\\\\\\\\\\\\/com_kunena_v2.0.1_2012-07-07.zip\\\\\\",\\\\\\"infoURL\\\\\\":\\\\\\"http:\\\\\\\\\\\\\\/\\\\\\\\\\\\\\/www.kunena.org\\\\\\\\\\\\\\/component\\\\\\\\\\\\\\/ars\\\\\\\\\\\\\\/repository\\\\\\\\\\\\\\/kunena\\\\\\\\\\\\\\/201\\\\\\",\\\\\\"releasenotes\\\\\\":\\\\\\"<p> Please read <a href=\\\\\\\\\\\\\\"http:\\\\\\\\\\\\\\/\\\\\\\\\\\\\\/docs.kunena.org\\\\\\\\\\\\\\/index.php\\\\\\\\\\\\\\/Kunena_2.0.1_Read_Me\\\\\\\\\\\\\\">Kunena 2.0.1 Read Me<\\\\\\\\\\\\\\/a>.<\\\\\\\\\\\\\\/p>\\\\\\"}\\"\\""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'plg_system_kunena', 'plugin', 'kunena', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_kunena","type":"plugin","creationDate":"2012-07-07","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"PLG_SYSTEM_KUNENA_DESC","group":""}', '{"jcontentevents":"0","jcontentevent_target":"body"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'plg_quickicon_kunena', 'plugin', 'kunena', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_kunena","type":"plugin","creationDate":"2012-07-07","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"PLG_QUICKICON_KUNENA_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'plg_kunena_alphauserpoints', 'plugin', 'alphauserpoints', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_alphauserpoints","type":"plugin","creationDate":"2012-07-07","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"PLG_KUNENA_ALPHAUSERPOINTS_DESCRIPTION","group":""}', '{"activity":"1","avatar":"1","profile":"1","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10059, 'plg_kunena_community', 'plugin', 'community', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_community","type":"plugin","creationDate":"2012-07-07","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"PLG_KUNENA_COMMUNITY_DESCRIPTION","group":""}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1","activity_points_limit":"0","activity_stream_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10060, 'plg_kunena_comprofiler', 'plugin', 'comprofiler', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_comprofiler","type":"plugin","creationDate":"2012-07-07","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"PLG_KUNENA_COMPROFILER_DESCRIPTION","group":""}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10061, 'plg_kunena_gravatar', 'plugin', 'gravatar', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_gravatar","type":"plugin","creationDate":"2012-07-07","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"PLG_KUNENA_GRAVATAR_DESCRIPTION","group":""}', '{"avatar":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10062, 'plg_kunena_uddeim', 'plugin', 'uddeim', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_uddeim","type":"plugin","creationDate":"2012-07-07","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"PLG_KUNENA_UDDEIM_DESCRIPTION","group":""}', '{"private":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10063, 'plg_kunena_kunena', 'plugin', 'kunena', 'kunena', 0, 1, 1, 0, '{"legacy":false,"name":"plg_kunena_kunena","type":"plugin","creationDate":"2012-07-07","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"PLG_KUNENA_KUNENA_DESCRIPTION","group":""}', '{"avatar":"1","profile":"1"}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10064, 'plg_kunena_joomla', 'plugin', 'joomla', 'kunena', 0, 1, 1, 0, '{"legacy":false,"name":"plg_kunena_joomla","type":"plugin","creationDate":"2012-07-07","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"PLG_KUNENA_JOOMLA_17_DESCRIPTION","group":""}', '{"access":"1","login":"1"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10065, 'com_gantry', 'component', 'com_gantry', '', 1, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"component","creationDate":"June 19, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.20","description":"${project.description}","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10067, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"April 2012","author":"Ryan Demmer","copyright":"Copyright (C) 2012 Ryan Demmer. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10068, 'mod_kunenalogin', 'module', 'mod_kunenalogin', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_kunenalogin","type":"module","creationDate":"2012-07-07","author":"Kunena Team","copyright":"(C) 2008 - 2012 Kunena Team. All rights reserved.","authorEmail":"admin@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"MOD_KUNENALOGIN_DESCRIPTION","group":""}', '{"template":"vertical","pretext":"","login":"","logout":"","greeting":"1","lastlog":"1","showav":"1","avatar_w":"128px","avatar_h":"128px","showprofile":"1","showmyposts":"1","showrecent":"1","showmessage":"0","cache":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10069, 'mod_kunenasearch', 'module', 'mod_kunenasearch', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_kunenasearch","type":"module","creationDate":"2012-07-07","author":"Kunena Team","copyright":"(C) 2008 - 2012 Kunena Team. All rights reserved.","authorEmail":"admin@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.1","description":"MOD_KUNENASEARCH_DESCRIPTION","group":""}', '{"ksearch_width":"20","ksearch_txt":"","ksearch_button":"","ksearch_button_pos":"right","ksearch_button_txt":"Search","@spacer":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_filters`
--

CREATE TABLE IF NOT EXISTS `sn_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_finder_filters`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_finder_links`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms0`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms1`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms2`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms3`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms4`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms5`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms6`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms7`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms8`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_terms9`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_termsa`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_termsb`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_termsc`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_termsd`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_termse`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `sn_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_links_termsf`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `sn_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `sn_finder_taxonomy`
--

INSERT INTO `sn_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `sn_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_taxonomy_map`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_terms`
--

CREATE TABLE IF NOT EXISTS `sn_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_finder_terms`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `sn_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_terms_common`
--

INSERT INTO `sn_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `sn_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_tokens`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `sn_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_finder_tokens_aggregate`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_finder_types`
--

CREATE TABLE IF NOT EXISTS `sn_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `sn_finder_types`
--

INSERT INTO `sn_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Web Link', '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_aliases`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_aliases` (
  `alias` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `alias` (`alias`),
  KEY `state` (`state`),
  KEY `item` (`item`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_aliases`
--

INSERT INTO `sn_kunena_aliases` (`alias`, `type`, `item`, `state`) VALUES
('announcement', 'view', 'announcement', 1),
('category', 'view', 'category', 1),
('category/create', 'layout', 'category.create', 1),
('category/default', 'layout', 'category.default', 1),
('category/edit', 'layout', 'category.edit', 1),
('category/manage', 'layout', 'category.manage', 1),
('category/moderate', 'layout', 'category.moderate', 1),
('category/user', 'layout', 'category.user', 1),
('common', 'view', 'common', 1),
('create', 'layout', 'category.create', 0),
('credits', 'view', 'credits', 1),
('default', 'layout', 'category.default', 0),
('edit', 'layout', 'category.edit', 0),
('home', 'view', 'home', 1),
('main-forum', 'catid', '1', 1),
('manage', 'layout', 'category.manage', 0),
('misc', 'view', 'misc', 1),
('moderate', 'layout', 'category.moderate', 0),
('search', 'view', 'search', 1),
('statistics', 'view', 'statistics', 1),
('suggestion-box', 'catid', '3', 1),
('topic', 'view', 'topic', 1),
('topics', 'view', 'topics', 1),
('user', 'view', 'user', 1),
('welcome-mat', 'catid', '2', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_announcement`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_announcement` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_kunena_announcement`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_attachments`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `hash` char(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mesid` (`mesid`),
  KEY `userid` (`userid`),
  KEY `hash` (`hash`),
  KEY `filename` (`filename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `sn_kunena_attachments`
--

INSERT INTO `sn_kunena_attachments` (`id`, `mesid`, `userid`, `hash`, `size`, `folder`, `filetype`, `filename`) VALUES
(1, 2, 43, '02b0f8157ab13c86b2a77fcda73145d1', 28573, 'media/kunena/attachments/43', 'image/jpeg', 'logo_2012-07-28.jpg'),
(2, 2, 43, 'e8247fbaeeb6d2e9e0a091a38ec84a7a', 156, 'media/kunena/attachments/43', '', 'nothing_2012-07-28.zip');

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_categories`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `category_access` (`accesstype`,`access`),
  KEY `published_pubaccess_id` (`published`,`pub_access`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `sn_kunena_categories`
--

INSERT INTO `sn_kunena_categories` (`id`, `parent_id`, `name`, `alias`, `icon_id`, `locked`, `accesstype`, `access`, `pub_access`, `pub_recurse`, `admin_access`, `admin_recurse`, `ordering`, `published`, `channels`, `checked_out`, `checked_out_time`, `review`, `allow_anonymous`, `post_anonymous`, `hits`, `description`, `headerdesc`, `class_sfx`, `allow_polls`, `topic_ordering`, `numTopics`, `numPosts`, `last_topic_id`, `last_post_id`, `last_post_time`, `params`) VALUES
(1, 0, 'Main Forum', 'main-forum', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'This is the main forum section. It serves as a container for categories for your topics.', 'The section header is used to display additional information about the categories of topics that it contains.', '', 0, 'lastpost', 0, 0, 0, 0, 0, ''),
(2, 1, 'Welcome Mat', 'welcome-mat', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 2, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'We encourage new members to introduce themselves here. Get to know one another and share your interests.', '[b]Welcome to the Kunena forum![/b] \n\n Tell us and our members who you are, what you like and why you became a member of this site. \n We welcome all new members and hope to see you around a lot!', '', 0, 'lastpost', 2, 2, 2, 2, 1343470824, '{}'),
(3, 1, 'Suggestion Box', 'suggestion-box', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 3, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Have some feedback and input to share? \n Don''t be shy and drop us a note. We want to hear from you and strive to make our site better and more user friendly for our guests and members a like.', 'This is the optional category header for the Suggestion Box.', '', 1, 'lastpost', 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_configuration`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_configuration`
--

INSERT INTO `sn_kunena_configuration` (`id`, `params`) VALUES
(1, '{"board_title":"JoomForest - JF Corporate Kunena Template","email":"change@me.com","board_offline":"0","offline_message":"<h2>The Forum is currently offline for maintenance.<\\/h2>\\r\\n<div>Check back soon!<\\/div>","enablerss":"1","threads_per_page":"20","messages_per_page":"6","messages_per_page_search":"15","showhistory":"1","historylimit":"6","shownew":"1","disemoticons":"0","template":"jf_corporate","showannouncement":"1","avataroncat":"0","catimagepath":"category_images","showchildcaticon":"1","rtewidth":"450","rteheight":"300","enableforumjump":"1","reportmsg":"1","username":"1","askemail":"0","showemail":"0","showuserstats":"1","showkarma":"1","useredit":"1","useredittime":"0","useredittimegrace":"600","editmarkup":"1","allowsubscriptions":"1","subscriptionschecked":"1","allowfavorites":"1","maxsubject":"50","maxsig":"300","regonly":"0","changename":"0","pubwrite":"0","floodprotection":"0","mailmod":"0","mailadmin":"0","captcha":"0","mailfull":"1","allowavatarupload":"1","allowavatargallery":"1","avatarquality":"75","avatarsize":"2048","imageheight":"800","imagewidth":"800","imagesize":"150","filetypes":"txt,rtf,pdf,zip,tar.gz,tgz,tar.bz2","filesize":"120","showranking":"1","rankimages":"1","userlist_rows":"30","userlist_online":"1","userlist_avatar":"1","userlist_name":"1","userlist_posts":"1","userlist_karma":"1","userlist_email":"0","userlist_usertype":"0","userlist_joindate":"1","userlist_lastvisitdate":"1","userlist_userhits":"1","latestcategory":"","showstats":"1","showwhoisonline":"1","showgenstats":"1","showpopuserstats":"1","popusercount":"5","showpopsubjectstats":"1","popsubjectcount":"5","usernamechange":"0","showspoilertag":"1","showvideotag":"1","showebaytag":"1","trimlongurls":"1","trimlongurlsfront":"40","trimlongurlsback":"20","autoembedyoutube":"1","autoembedebay":"1","ebaylanguagecode":"en-us","sessiontimeout":"1800","highlightcode":"0","rss_type":"topic","rss_timelimit":"month","rss_limit":"100","rss_included_categories":"","rss_excluded_categories":"","rss_specification":"rss2.0","rss_allow_html":"1","rss_author_format":"name","rss_author_in_title":"1","rss_word_count":"0","rss_old_titles":"1","rss_cache":"900","defaultpage":"recent","default_sort":"asc","sef":"1","sefutf8":0,"showimgforguest":"1","showfileforguest":"1","pollnboptions":"4","pollallowvoteone":"1","pollenabled":"1","poppollscount":"5","showpoppollstats":"1","polltimebtvotes":"00:15:00","pollnbvotesbyuser":"100","pollresultsuserslist":"1","maxpersotext":"50","ordering_system":"mesid","post_dateformat":"ago","post_dateformat_hover":"datetime","hide_ip":"1","imagetypes":"jpg,jpeg,gif,png","checkmimetypes":"1","imagemimetypes":"image\\/jpeg,image\\/jpg,image\\/gif,image\\/png","imagequality":"50","thumbheight":"32","thumbwidth":"32","hideuserprofileinfo":"put_empty","boxghostmessage":"0","userdeletetmessage":"0","latestcategory_in":"1","topicicons":"1","debug":"0","catsautosubscribed":0,"showbannedreason":"0","version_check":"1","showthankyou":"1","showpopthankyoustats":"1","popthankscount":"5","mod_see_deleted":"0","bbcode_img_secure":"text","listcat_show_moderators":"1","lightbox":"1","show_list_time":"720","show_session_type":"0","show_session_starttime":"0","userlist_allowed":"0","userlist_count_users":"1","enable_threaded_layouts":"0","category_subscriptions":"post","topic_subscriptions":"every","pubprofile":"1","thankyou_max":"10","email_recipient_count":"0","email_recipient_privacy":"bcc","email_visible_address":"","captcha_post_limit":"0","recaptcha_publickey":"","recaptcha_privatekey":"","recaptcha_theme":"white","keywords":0,"userkeywords":0,"image_upload":"registered","file_upload":"registered","topic_layout":"flat","time_to_create_page":"1","show_imgfiles_manage_profile":"1","hold_newusers_posts":"0","hold_guest_posts":"0","attachment_limit":"8","pickup_category":"0","article_display":"intro","send_emails":"1","stopforumspam_key":"","fallback_english":"1","cache":"1","cache_time":"60","ebay_affiliate_id":"5337089937"}');

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_keywords`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `public_count` int(11) NOT NULL,
  `total_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `public_count` (`public_count`),
  KEY `total_count` (`total_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_kunena_keywords`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_keywords_map`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_keywords_map` (
  `keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  UNIQUE KEY `keyword_user_topic` (`keyword_id`,`user_id`,`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `topic_user` (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_keywords_map`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_messages`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext,
  `subject` tinytext,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext,
  PRIMARY KEY (`id`),
  KEY `thread` (`thread`),
  KEY `ip` (`ip`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `locked` (`locked`),
  KEY `hold_time` (`hold`,`time`),
  KEY `parent_hits` (`parent`,`hits`),
  KEY `catid_parent` (`catid`,`parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `sn_kunena_messages`
--

INSERT INTO `sn_kunena_messages` (`id`, `parent`, `thread`, `catid`, `name`, `userid`, `email`, `subject`, `time`, `ip`, `topic_emoticon`, `locked`, `hold`, `ordering`, `hits`, `moved`, `modified_by`, `modified_time`, `modified_reason`) VALUES
(1, 0, 1, 2, 'Kunena', 42, NULL, 'Welcome to Kunena!', 1343312409, '127.0.0.1', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(2, 0, 2, 2, 'demo1', 43, '', 'Test Topic is solved', 1343470824, '127.0.0.1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_messages_text`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`mesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_messages_text`
--

INSERT INTO `sn_kunena_messages_text` (`mesid`, `message`) VALUES
(1, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]'),
(2, 'Nunc lundium augue et mauris adipiscing? Eu elementum? Scelerisque porta proin, elit amet enim, et velit enim, adipiscing risus est, odio cras mid pellentesque mus sit duis, magna, urna aliquam, ac elementum vel rhoncus elementum nunc, dis scelerisque integer sit. Aenean habitasse ut tempor, porta, pulvinar! Ultrices adipiscing, ac augue lundium tincidunt in scelerisque magna integer enim? Cras, placerat adipiscing, pulvinar, augue etiam ridiculus tempor habitasse rhoncus montes, porttitor, ac ridiculus augue.[code]thtrhtrhrhtr [/code]\r\n[table]\r\n  [tr]\r\n    [td]12[/td]\r\n    [td]23[/td]\r\n  [/tr]\r\n  [tr]\r\n    [td]45[/td]\r\n    [td]67[/td]\r\n  [/tr]\r\n[/table]\r\n[sub]lorem ipsum[/sub]\r\n\r\n[sup]ipsum[/sup]\r\n\r\n[size=4]test[/size]\r\n\r\n\r\n[ul]\r\n  [li]sd[/li]\r\n  [li]dsd[/li]\r\n[/ul]\r\n\r\n[ol]\r\n  [li]ds[/li]\r\n  [li]ds[/li]\r\n[/ol]\r\n[quote]lorem ipsum dil sot amet[/quote]\r\n[spoiler]spoiler[/spoiler]\r\n[hide]hitten text[/hide]\r\n[img size=100]http://joomforest.com/images/stories/blog/jf-chrome-blog-cover.png[/img]\r\n[url=http://joomforest.com]JoomForest Site[/url]');

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_polls`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `threadid` (`threadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_kunena_polls`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_polls_options`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_polls_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_kunena_polls_options`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_polls_users`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvote` int(11) DEFAULT NULL,
  UNIQUE KEY `pollid` (`pollid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_polls_users`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_ranks`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `sn_kunena_ranks`
--

INSERT INTO `sn_kunena_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Fresh Boarder', 0, 0, 'rank1.gif'),
(2, 'Junior Boarder', 20, 0, 'rank2.gif'),
(3, 'Senior Boarder', 40, 0, 'rank3.gif'),
(4, 'Expert Boarder', 80, 0, 'rank4.gif'),
(5, 'Gold Boarder', 160, 0, 'rank5.gif'),
(6, 'Platinum Boarder', 320, 0, 'rank6.gif'),
(7, 'Administrator', 0, 1, 'rankadmin.gif'),
(8, 'Moderator', 0, 1, 'rankmod.gif'),
(9, 'Spammer', 0, 1, 'rankspammer.gif'),
(10, 'Banned', 0, 1, 'rankbanned.gif');

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_sessions`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `currvisit` (`currvisit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_sessions`
--

INSERT INTO `sn_kunena_sessions` (`userid`, `allowed`, `lasttime`, `readtopics`, `currvisit`) VALUES
(43, 'na', 1343358187, '0', 1343471578);

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_smileys`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_smileys` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `sn_kunena_smileys`
--

INSERT INTO `sn_kunena_smileys` (`id`, `code`, `location`, `greylocation`, `emoticonbar`) VALUES
(1, 'B)', 'cool.png', 'cool-grey.png', 1),
(2, '8)', 'cool.png', 'cool-grey.png', 0),
(3, '8-)', 'cool.png', 'cool-grey.png', 0),
(4, ':-(', 'sad.png', 'sad-grey.png', 0),
(5, ':(', 'sad.png', 'sad-grey.png', 1),
(6, ':sad:', 'sad.png', 'sad-grey.png', 0),
(7, ':cry:', 'sad.png', 'sad-grey.png', 0),
(8, ':)', 'smile.png', 'smile-grey.png', 1),
(9, ':-)', 'smile.png', 'smile-grey.png', 0),
(10, ':cheer:', 'cheerful.png', 'cheerful-grey.png', 1),
(11, ';)', 'wink.png', 'wink-grey.png', 1),
(12, ';-)', 'wink.png', 'wink-grey.png', 0),
(13, ':wink:', 'wink.png', 'wink-grey.png', 0),
(14, ';-)', 'wink.png', 'wink-grey.png', 0),
(15, ':P', 'tongue.png', 'tongue-grey.png', 1),
(16, ':p', 'tongue.png', 'tongue-grey.png', 0),
(17, ':-p', 'tongue.png', 'tongue-grey.png', 0),
(18, ':-P', 'tongue.png', 'tongue-grey.png', 0),
(19, ':razz:', 'tongue.png', 'tongue-grey.png', 0),
(20, ':angry:', 'angry.png', 'angry-grey.png', 1),
(21, ':mad:', 'angry.png', 'angry-grey.png', 0),
(22, ':unsure:', 'unsure.png', 'unsure-grey.png', 1),
(23, ':o', 'shocked.png', 'shocked-grey.png', 0),
(24, ':-o', 'shocked.png', 'shocked-grey.png', 0),
(25, ':O', 'shocked.png', 'shocked-grey.png', 0),
(26, ':-O', 'shocked.png', 'shocked-grey.png', 0),
(27, ':eek:', 'shocked.png', 'shocked-grey.png', 0),
(28, ':ohmy:', 'shocked.png', 'shocked-grey.png', 1),
(29, ':huh:', 'wassat.png', 'wassat-grey.png', 1),
(30, ':?', 'confused.png', 'confused-grey.png', 0),
(31, ':-?', 'confused.png', 'confused-grey.png', 0),
(32, ':???', 'confused.png', 'confused-grey.png', 0),
(33, ':dry:', 'ermm.png', 'ermm-grey.png', 1),
(34, ':ermm:', 'ermm.png', 'ermm-grey.png', 0),
(35, ':lol:', 'grin.png', 'grin-grey.png', 1),
(36, ':X', 'sick.png', 'sick-grey.png', 0),
(37, ':x', 'sick.png', 'sick-grey.png', 0),
(38, ':sick:', 'sick.png', 'sick-grey.png', 1),
(39, ':silly:', 'silly.png', 'silly-grey.png', 1),
(40, ':y32b4:', 'silly.png', 'silly-grey.png', 0),
(41, ':blink:', 'blink.png', 'blink-grey.png', 1),
(42, ':blush:', 'blush.png', 'blush-grey.png', 1),
(43, ':oops:', 'blush.png', 'blush-grey.png', 1),
(44, ':kiss:', 'kissing.png', 'kissing-grey.png', 1),
(45, ':rolleyes:', 'blink.png', 'blink-grey.png', 0),
(46, ':roll:', 'blink.png', 'blink-grey.png', 0),
(47, ':woohoo:', 'w00t.png', 'w00t-grey.png', 1),
(48, ':side:', 'sideways.png', 'sideways-grey.png', 1),
(49, ':S', 'dizzy.png', 'dizzy-grey.png', 1),
(50, ':s', 'dizzy.png', 'dizzy-grey.png', 0),
(51, ':evil:', 'devil.png', 'devil-grey.png', 1),
(52, ':twisted:', 'devil.png', 'devil-grey.png', 0),
(53, ':whistle:', 'whistling.png', 'whistling-grey.png', 1),
(54, ':pinch:', 'pinch.png', 'pinch-grey.png', 1),
(55, ':D', 'laughing.png', 'laughing-grey.png', 0),
(56, ':-D', 'laughing.png', 'laughing-grey.png', 0),
(57, ':grin:', 'laughing.png', 'laughing-grey.png', 0),
(58, ':laugh:', 'laughing.png', 'laughing-grey.png', 0),
(59, ':|', 'neutral.png', 'neutral-grey.png', 0),
(60, ':-|', 'neutral.png', 'neutral-grey.png', 0),
(61, ':neutral:', 'neutral.png', 'neutral-grey.png', 0),
(62, ':mrgreen:', 'mrgreen.png', 'mrgreen-grey.png', 0),
(63, ':?:', 'question.png', 'question-grey.png', 0),
(64, ':!:', 'exclamation.png', 'exclamation-grey.png', 0),
(65, ':arrow:', 'arrow.png', 'arrow-grey.png', 0),
(66, ':idea:', 'idea.png', 'idea-grey.png', 0);

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_thankyou`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  UNIQUE KEY `postid` (`postid`,`userid`),
  KEY `userid` (`userid`),
  KEY `targetuserid` (`targetuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_thankyou`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_topics`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text,
  `first_post_guest_name` tinytext,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text,
  `last_post_guest_name` tinytext,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `locked` (`locked`),
  KEY `hold` (`hold`),
  KEY `posts` (`posts`),
  KEY `hits` (`hits`),
  KEY `first_post_userid` (`first_post_userid`),
  KEY `last_post_userid` (`last_post_userid`),
  KEY `first_post_time` (`first_post_time`),
  KEY `last_post_time` (`last_post_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `sn_kunena_topics`
--

INSERT INTO `sn_kunena_topics` (`id`, `category_id`, `subject`, `icon_id`, `locked`, `hold`, `ordering`, `posts`, `hits`, `attachments`, `poll_id`, `moved_id`, `first_post_id`, `first_post_time`, `first_post_userid`, `first_post_message`, `first_post_guest_name`, `last_post_id`, `last_post_time`, `last_post_userid`, `last_post_message`, `last_post_guest_name`, `params`) VALUES
(1, 2, 'Welcome to Kunena!', 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1343312409, 42, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]', 'Kunena', 1, 1343312409, 42, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]', 'Kunena', ''),
(2, 2, 'Test Topic is solved', 0, 0, 0, 0, 1, 1, 2, 0, 0, 2, 1343470824, 43, 'Nunc lundium augue et mauris adipiscing? Eu elementum? Scelerisque porta proin, elit amet enim, et velit enim, adipiscing risus est, odio cras mid pellentesque mus sit duis, magna, urna aliquam, ac elementum vel rhoncus elementum nunc, dis scelerisque integer sit. Aenean habitasse ut tempor, porta, pulvinar! Ultrices adipiscing, ac augue lundium tincidunt in scelerisque magna integer enim? Cras, placerat adipiscing, pulvinar, augue etiam ridiculus tempor habitasse rhoncus montes, porttitor, ac ridiculus augue.[code]thtrhtrhrhtr [/code]\r\n[table]\r\n  [tr]\r\n    [td]12[/td]\r\n    [td]23[/td]\r\n  [/tr]\r\n  [tr]\r\n    [td]45[/td]\r\n    [td]67[/td]\r\n  [/tr]\r\n[/table]\r\n[sub]lorem ipsum[/sub]\r\n\r\n[sup]ipsum[/sup]\r\n\r\n[size=4]test[/size]\r\n\r\n\r\n[ul]\r\n  [li]sd[/li]\r\n  [li]dsd[/li]\r\n[/ul]\r\n\r\n[ol]\r\n  [li]ds[/li]\r\n  [li]ds[/li]\r\n[/ol]\r\n[quote]lorem ipsum dil sot amet[/quote]\r\n[spoiler]spoiler[/spoiler]\r\n[hide]hitten text[/hide]\r\n[img size=100]http://joomforest.com/images/stories/blog/jf-chrome-blog-cover.png[/img]\r\n[url=http://joomforest.com]JoomForest Site[/url]', 'demo1', 2, 1343470824, 43, 'Nunc lundium augue et mauris adipiscing? Eu elementum? Scelerisque porta proin, elit amet enim, et velit enim, adipiscing risus est, odio cras mid pellentesque mus sit duis, magna, urna aliquam, ac elementum vel rhoncus elementum nunc, dis scelerisque integer sit. Aenean habitasse ut tempor, porta, pulvinar! Ultrices adipiscing, ac augue lundium tincidunt in scelerisque magna integer enim? Cras, placerat adipiscing, pulvinar, augue etiam ridiculus tempor habitasse rhoncus montes, porttitor, ac ridiculus augue.[code]thtrhtrhrhtr [/code]\r\n[table]\r\n  [tr]\r\n    [td]12[/td]\r\n    [td]23[/td]\r\n  [/tr]\r\n  [tr]\r\n    [td]45[/td]\r\n    [td]67[/td]\r\n  [/tr]\r\n[/table]\r\n[sub]lorem ipsum[/sub]\r\n\r\n[sup]ipsum[/sup]\r\n\r\n[size=4]test[/size]\r\n\r\n\r\n[ul]\r\n  [li]sd[/li]\r\n  [li]dsd[/li]\r\n[/ul]\r\n\r\n[ol]\r\n  [li]ds[/li]\r\n  [li]ds[/li]\r\n[/ol]\r\n[quote]lorem ipsum dil sot amet[/quote]\r\n[spoiler]spoiler[/spoiler]\r\n[hide]hitten text[/hide]\r\n[img size=100]http://joomforest.com/images/stories/blog/jf-chrome-blog-cover.png[/img]\r\n[url=http://joomforest.com]JoomForest Site[/url]', 'demo1', '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_users`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `view` varchar(8) NOT NULL DEFAULT 'flat',
  `signature` text,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `karma` int(11) DEFAULT '0',
  `karma_time` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `aim` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `gtalk` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `thankyou` int(11) DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `group_id` (`group_id`),
  KEY `posts` (`posts`),
  KEY `uhits` (`uhits`),
  KEY `banned` (`banned`),
  KEY `moderator` (`moderator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_users`
--

INSERT INTO `sn_kunena_users` (`userid`, `view`, `signature`, `moderator`, `banned`, `ordering`, `posts`, `avatar`, `karma`, `karma_time`, `group_id`, `uhits`, `personalText`, `gender`, `birthdate`, `location`, `icq`, `aim`, `yim`, `msn`, `skype`, `twitter`, `facebook`, `gtalk`, `myspace`, `linkedin`, `delicious`, `friendfeed`, `digg`, `blogspot`, `flickr`, `bebo`, `websitename`, `websiteurl`, `rank`, `hideEmail`, `showOnline`, `thankyou`) VALUES
(42, 'flat', NULL, 0, NULL, 0, 1, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(43, 'flat', NULL, 0, NULL, 0, 1, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(44, 'flat', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(45, 'flat', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(46, 'flat', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(47, 'flat', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(48, 'flat', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_users_banned`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_users_banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text,
  `reason_public` text,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `ip` (`ip`),
  KEY `expiration` (`expiration`),
  KEY `created_time` (`created_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_kunena_users_banned`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_user_categories`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` datetime DEFAULT NULL,
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`user_id`,`category_id`),
  KEY `category_subscribed` (`category_id`,`subscribed`),
  KEY `role` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_user_categories`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_user_read`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `category_user_id` (`category_id`,`user_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_user_read`
--

INSERT INTO `sn_kunena_user_read` (`user_id`, `topic_id`, `category_id`, `message_id`, `time`) VALUES
(43, 1, 2, 1, 1343345585),
(43, 2, 2, 2, 1343471047);

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_user_topics`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `posts` (`posts`),
  KEY `owner` (`owner`),
  KEY `favorite` (`favorite`),
  KEY `subscribed` (`subscribed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_kunena_user_topics`
--

INSERT INTO `sn_kunena_user_topics` (`user_id`, `topic_id`, `category_id`, `posts`, `last_post_id`, `owner`, `favorite`, `subscribed`, `params`) VALUES
(42, 1, 2, 1, 1, 1, 0, 0, ''),
(43, 2, 2, 1, 2, 1, 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_kunena_version`
--

CREATE TABLE IF NOT EXISTS `sn_kunena_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL,
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `sn_kunena_version`
--

INSERT INTO `sn_kunena_version` (`id`, `version`, `versiondate`, `installdate`, `build`, `versionname`, `state`) VALUES
(1, '2.0.1', '2012-07-07', '2012-07-26', '', 'Balozi', '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_languages`
--

CREATE TABLE IF NOT EXISTS `sn_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`),
  KEY `idx_access` (`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `sn_languages`
--

INSERT INTO `sn_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sn_menu`
--

CREATE TABLE IF NOT EXISTS `sn_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=253 ;

--
-- 转存表中的数据 `sn_menu`
--

INSERT INTO `sn_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 191, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 43, 44, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"0","num_intro_articles":"2","num_columns":"2","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"0","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"JoomForest - JF Corporate Joomla Template","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"16","fusion_module_positions":"","splitmenu_item_subtext":""}', 29, 30, 1, '*', 0),
(103, 'mainmenu', 'Features', 'features', '', 'features', 'index.php?option=com_content&view=article&id=17', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"JoomForest - JF Corporate Features","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 45, 62, 0, '*', 0),
(104, 'mainmenu', 'Sliders', 'sliders', '', 'features/sliders', 'index.php?option=com_content&view=article&id=17', 'component', 1, 103, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 46, 53, 0, '*', 0),
(105, 'mainmenu', 'Portfolio', 'portfolio', '', 'features/portfolio', 'index.php?option=com_content&view=article&id=14', 'component', 1, 103, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 54, 55, 0, '*', 0),
(106, 'mainmenu', 'Photo Gallery', 'photo-gallery', '', 'features/photo-gallery', 'index.php?option=com_content&view=article&id=15', 'component', 1, 103, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 56, 57, 0, '*', 0),
(107, 'mainmenu', 'FAQ', 'faq', '', 'features/faq', 'index.php?option=com_content&view=article&id=16', 'component', 1, 103, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 60, 61, 0, '*', 0),
(108, 'mainmenu', 'Styles', '2012-02-28-13-25-18', '', '2012-02-28-13-25-18', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 63, 72, 0, '*', 0),
(109, 'mainmenu', 'Typography', 'typography', '', 'typography', 'index.php?option=com_content&view=category&id=9', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 73, 84, 0, '*', 0),
(110, 'mainmenu', 'Blog', 'blog', '', 'blog', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"3","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 85, 86, 0, '*', 0),
(111, 'mainmenu', 'Contact', 'contact', '', 'contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 87, 88, 0, '*', 0),
(119, 'mainmenu', 'Simple Slider', '2012-03-07-18-34-28', '', 'features/sliders/2012-03-07-18-34-28', '', 'url', 1, 104, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"16","fusion_module_positions":"","splitmenu_item_subtext":""}', 47, 48, 0, '*', 0),
(120, 'mainmenu', 'Object Carousel', 'object-carousel', '', 'features/sliders/object-carousel', 'index.php?option=com_content&view=featured', 'component', 1, 104, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"0","num_intro_articles":"2","num_columns":"2","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"16","fusion_module_positions":"","splitmenu_item_subtext":""}', 49, 50, 0, '*', 0),
(121, 'mainmenu', 'Nivo Slider', 'nivo-slider', '', 'features/sliders/nivo-slider', 'index.php?option=com_content&view=featured', 'component', 1, 104, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"0","num_intro_articles":"2","num_columns":"2","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"16","fusion_module_positions":"","splitmenu_item_subtext":""}', 51, 52, 0, '*', 0),
(122, 'mainmenu', 'Heading', 'heading', '', 'typography/heading', 'index.php?option=com_content&view=article&id=8', 'component', 1, 109, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 74, 75, 0, '*', 0),
(123, 'mainmenu', 'Columns', 'columns', '', 'typography/columns', 'index.php?option=com_content&view=article&id=9', 'component', 1, 109, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 76, 77, 0, '*', 0),
(124, 'mainmenu', 'Lists', 'lists', '', 'typography/lists', 'index.php?option=com_content&view=article&id=10', 'component', 1, 109, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 78, 79, 0, '*', 0),
(125, 'mainmenu', 'Buttons', 'buttons', '', 'typography/buttons', 'index.php?option=com_content&view=article&id=11', 'component', 1, 109, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 80, 81, 0, '*', 0),
(126, 'mainmenu', 'Pricing Tables', 'pricing-tables', '', 'typography/pricing-tables', 'index.php?option=com_content&view=article&id=12', 'component', 1, 109, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 82, 83, 0, '*', 0),
(128, 'mainmenu', 'PiroBox', 'pirobox', '', 'features/pirobox', 'index.php?option=com_content&view=article&id=13', 'component', 1, 103, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 58, 59, 0, '*', 0),
(166, 'jomsocial', 'Profile', 'profile', '', 'profile', 'index.php?option=com_community&view=profile', 'component', 1, 1, 1, 10026, 1, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 125, 140, 0, '*', 0),
(167, 'jomsocial', 'Change Profile Picture', 'change-profile-picture', '', 'profile/change-profile-picture', 'index.php?option=com_community&view=profile&task=uploadAvatar', 'component', 1, 166, 2, 10026, 1, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 126, 127, 0, '*', 0),
(168, 'jomsocial', 'Change Profile Video', 'change-profile-video', '', 'profile/change-profile-video', 'index.php?option=com_community&view=profile&task=linkVideo', 'component', 1, 166, 2, 10026, 2, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 128, 129, 0, '*', 0),
(169, 'jomsocial', 'Edit Profile', 'edit-profile', '', 'profile/edit-profile', 'index.php?option=com_community&view=profile&task=edit', 'component', 1, 166, 2, 10026, 3, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 130, 131, 0, '*', 0),
(170, 'jomsocial', 'Edit Details', 'edit-details', '', 'profile/edit-details', 'index.php?option=com_community&view=profile&task=editDetails', 'component', 1, 166, 2, 10026, 4, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 132, 133, 0, '*', 0),
(171, 'jomsocial', 'Privacy', 'privacy', '', 'profile/privacy', 'index.php?option=com_community&view=profile&task=privacy', 'component', 1, 166, 2, 10026, 5, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 134, 135, 0, '*', 0),
(172, 'jomsocial', 'Preferences', 'preferences', '', 'profile/preferences', 'index.php?option=com_community&view=profile&task=preferences', 'component', 1, 166, 2, 10026, 6, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 136, 137, 0, '*', 0),
(173, 'jomsocial', 'Customize My Page', 'customize-my-page', '', 'profile/customize-my-page', 'index.php?option=com_community&view=profile&task=editPage', 'component', 1, 166, 2, 10026, 7, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 138, 139, 0, '*', 0),
(174, 'jomsocial', 'Friends', 'friends', '', 'friends', 'index.php?option=com_community&view=friends', 'component', 1, 1, 1, 10026, 2, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 141, 154, 0, '*', 0),
(175, 'jomsocial', 'Show All', 'show-all', '', 'friends/show-all', 'index.php?option=com_community&view=friends', 'component', 1, 174, 2, 10026, 1, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 142, 143, 0, '*', 0),
(176, 'jomsocial', 'Search', 'search', '', 'friends/search', 'index.php?option=com_community&view=search', 'component', 1, 174, 2, 10026, 2, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 144, 145, 0, '*', 0),
(177, 'jomsocial', 'Advanced Search', 'advanced-search', '', 'friends/advanced-search', 'index.php?option=com_community&view=search&task=advancesearch', 'component', 1, 174, 2, 10026, 3, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 146, 147, 0, '*', 0),
(178, 'jomsocial', 'Invite Friends', 'invite-friends', '', 'friends/invite-friends', 'index.php?option=com_community&view=friends&task=invite', 'component', 1, 174, 2, 10026, 4, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 148, 149, 0, '*', 0),
(179, 'jomsocial', 'Request Sent', 'request-sent', '', 'friends/request-sent', 'index.php?option=com_community&view=friends&task=sent', 'component', 1, 174, 2, 10026, 5, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 150, 151, 0, '*', 0),
(180, 'jomsocial', 'Pending my approval', 'pending-my-approval', '', 'friends/pending-my-approval', 'index.php?option=com_community&view=friends&task=pending', 'component', 1, 174, 2, 10026, 6, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 152, 153, 0, '*', 0),
(181, 'jomsocial', 'Groups', 'groups', '', 'groups', 'index.php?option=com_community&view=groups&task=mygroupupdate', 'component', 1, 1, 1, 10026, 3, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 155, 156, 0, '*', 0),
(182, 'jomsocial', 'Photos', 'photos', '', 'photos', 'index.php?option=com_community&view=photos&task=myphotos', 'component', 1, 1, 1, 10026, 4, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 157, 158, 0, '*', 0),
(183, 'jomsocial', 'Videos', 'videos', '', 'videos', 'index.php?option=com_community&view=videos&task=myvideos', 'component', 1, 1, 1, 10026, 5, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 159, 160, 0, '*', 0),
(184, 'jomsocial', 'Events', 'events', '', 'events', 'index.php?option=com_community&view=events&task=myevents', 'component', 1, 1, 1, 10026, 6, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 161, 162, 0, '*', 0),
(185, 'mainmenu', 'Blue (Default)', '2012-04-23-21-24-27', '', '2012-02-28-13-25-18/2012-04-23-21-24-27', '?presets=blue', 'url', 1, 108, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 64, 65, 0, '*', 0),
(186, 'mainmenu', 'Red', '2012-04-23-21-24-48', '', '2012-02-28-13-25-18/2012-04-23-21-24-48', '?presets=red', 'url', 1, 108, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 66, 67, 0, '*', 0),
(187, 'mainmenu', 'Green', '2012-04-23-21-25-17', '', '2012-02-28-13-25-18/2012-04-23-21-25-17', '?presets=green', 'url', 1, 108, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 68, 69, 0, '*', 0),
(188, 'mainmenu', 'Black', '2012-04-23-21-25-42', '', '2012-02-28-13-25-18/2012-04-23-21-25-42', '?presets=black', 'url', 1, 108, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 70, 71, 0, '*', 0),
(198, 'main', 'COM_KUNENA', 'com-kunena', '', 'com-kunena', 'index.php?option=com_kunena', 'component', 0, 1, 1, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '', 89, 104, 0, '', 1),
(199, 'main', 'COM_KUNENA_CONFIGURATION', 'com-kunena-configuration', '', 'com-kunena/com-kunena-configuration', 'index.php?option=com_kunena&view=config', 'component', 0, 198, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-config.png', 0, '', 90, 91, 0, '', 1),
(200, 'main', 'COM_KUNENA_CATEGORY_MANAGER', 'com-kunena-category-manager', '', 'com-kunena/com-kunena-category-manager', 'index.php?option=com_kunena&view=categories', 'component', 0, 198, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-categories.png', 0, '', 92, 93, 0, '', 1),
(201, 'main', 'COM_KUNENA_USER_MANAGER', 'com-kunena-user-manager', '', 'com-kunena/com-kunena-user-manager', 'index.php?option=com_kunena&view=users', 'component', 0, 198, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-users.png', 0, '', 94, 95, 0, '', 1),
(202, 'main', 'COM_KUNENA_TEMPLATE_MANAGER', 'com-kunena-template-manager', '', 'com-kunena/com-kunena-template-manager', 'index.php?option=com_kunena&view=templates', 'component', 0, 198, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-templates.png', 0, '', 96, 97, 0, '', 1),
(203, 'main', 'COM_KUNENA_EMOTICON_MANAGER', 'com-kunena-emoticon-manager', '', 'com-kunena/com-kunena-emoticon-manager', 'index.php?option=com_kunena&view=smilies', 'component', 0, 198, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-smileys.png', 0, '', 98, 99, 0, '', 1),
(204, 'main', 'COM_KUNENA_RANK_MANAGER', 'com-kunena-rank-manager', '', 'com-kunena/com-kunena-rank-manager', 'index.php?option=com_kunena&view=ranks', 'component', 0, 198, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-ranks.png', 0, '', 100, 101, 0, '', 1),
(205, 'main', 'COM_KUNENA_TRASH_MANAGER', 'com-kunena-trash-manager', '', 'com-kunena/com-kunena-trash-manager', 'index.php?option=com_kunena&view=trash', 'component', 0, 198, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-trash.png', 0, '', 102, 103, 0, '', 1),
(216, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 163, 172, 0, '', 1),
(217, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 216, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 164, 165, 0, '', 1),
(218, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 216, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 166, 167, 0, '', 1),
(219, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 216, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 168, 169, 0, '', 1),
(220, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 216, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 170, 171, 0, '', 1),
(223, 'kunenamenu', 'Forum', 'forum', '', 'forum', 'index.php?option=com_kunena&view=home&defaultmenu=225', 'component', 1, 1, 1, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"catids":0}', 173, 190, 0, '*', 0),
(224, 'kunenamenu', 'Index', 'index', '', 'forum/index', 'index.php?option=com_kunena&view=category&layout=list', 'component', 1, 223, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 174, 175, 0, '*', 0),
(225, 'kunenamenu', 'Recent Topics', 'recent', '', 'forum/recent', 'index.php?option=com_kunena&view=topics&mode=replies', 'component', 1, 223, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":1,"topics_categories":0,"topics_time":720}', 176, 177, 0, '*', 0),
(226, 'kunenamenu', 'New Topic', 'newtopic', '', 'forum/newtopic', 'index.php?option=com_kunena&view=topic&layout=create', 'component', 1, 223, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 178, 179, 0, '*', 0),
(227, 'kunenamenu', 'No Replies', 'noreplies', '', 'forum/noreplies', 'index.php?option=com_kunena&view=topics&mode=noreplies', 'component', 1, 223, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":1,"topics_categories":0,"topics_time":-1}', 180, 181, 0, '*', 0),
(228, 'kunenamenu', 'My Topics', 'mylatest', '', 'forum/mylatest', 'index.php?option=com_kunena&view=topics&layout=user&mode=default', 'component', 1, 223, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":1,"topics_categories":0,"topics_time":-1}', 182, 183, 0, '*', 0),
(229, 'kunenamenu', 'Profile', 'profile', '', 'forum/profile', 'index.php?option=com_kunena&view=user', 'component', 1, 223, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"integration":1}', 184, 185, 0, '*', 0),
(230, 'kunenamenu', 'Help', 'help', '', 'forum/help', 'index.php?option=com_kunena&view=misc', 'component', 1, 223, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"body":"This help page is a menu item inside [b]Kunena Menu[\\/b], which allows easy navigation in your forum. \\n\\n You can use Joomla Menu Manager to edit items in this menu. Please go to [b]Administration[\\/b] >> [b]Menus[\\/b] >> [b]Kunena Menu[\\/b] >> [b]Help[\\/b] to edit or remove this menu item. \\n\\n In this menu item you can use Plain Text, BBCode or HTML. If you want to bind article into this page, you may use article BBCode (with article id): [code][article=full]123[\\/article][\\/code] \\n\\n If you want to create your own menu for Kunena, please start by creating [b]Home Page[\\/b] first. In that page you can select default menu item, which is shown when you enter to Kunena.","body_format":"bbcode"}', 186, 187, 0, '*', 0),
(231, 'kunenamenu', 'Search', 'search', '', 'forum/search', 'index.php?option=com_kunena&view=search', 'component', 1, 223, 2, 10055, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 188, 189, 0, '*', 0),
(232, 'mainmenu', 'Kunena Forum', 'kunena-forum', '', 'kunena-forum', 'index.php?Itemid=223', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"224","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"105","fusion_module_positions":"","splitmenu_item_subtext":""}', 123, 124, 0, '*', 0);

-- --------------------------------------------------------

--
-- 表的结构 `sn_menu_types`
--

CREATE TABLE IF NOT EXISTS `sn_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `sn_menu_types`
--

INSERT INTO `sn_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(3, 'jomsocial', 'JomSocial toolbar', 'Toolbar items for JomSocial toolbar'),
(5, 'kunenamenu', 'Kunena Menu', 'This is the default Kunena menu. It is used as the top navigation for Kunena. It can be publish in any module position. Simply unpublish items that are not required.');

-- --------------------------------------------------------

--
-- 表的结构 `sn_messages`
--

CREATE TABLE IF NOT EXISTS `sn_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_messages`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `sn_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_messages_cfg`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_modules`
--

CREATE TABLE IF NOT EXISTS `sn_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- 转存表中的数据 `sn_modules`
--

INSERT INTO `sn_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 1, 'jf-login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'JF Search', '', '', 1, 'jf-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"15","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"GO","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(88, 'JF Object Carousel', '', '<section id="slider-object-carousel">\r\n<div id="jf-object-carousel">\r\n<div><img class="img-front" src="images/joomforest/jf-object-carousel/slideshow-object-1.png" alt="Image description" height="350" width="450" /> <img class="img-back" src="images/joomforest/jf-object-carousel/slideshow-object-1-1.png" alt="Image description" height="275" width="350" />\r\n<h3>Project title goes here</h3>\r\n<p>Two lines project description goes here. Circular, responsive jQuery carousel.</p>\r\n<a class="round-button" href="#">Visit site</a></div>\r\n<div><img class="img-front" src="images/joomforest/jf-object-carousel/slideshow-object-2.png" alt="Image description" style="left: 100px;" height="325" width="450" />\r\n<h3>Project title goes here</h3>\r\n<p>Two lines project description goes here. Circular, responsive jQuery carousel.</p>\r\n<a class="round-button grey" href="#">Visit site</a></div>\r\n<div><img class="img-front" src="images/joomforest/jf-object-carousel/slideshow-object-3.png" alt="Image description" height="350" width="450" /> <img class="img-back" src="images/joomforest/jf-object-carousel/slideshow-object-3-1.png" alt="Image description" height="275" width="350" />\r\n<h3>Project title goes here</h3>\r\n<p>Two lines project description goes here. Circular, responsive jQuery carousel.</p>\r\n<a class="round-button blue" href="#">Visit site</a></div>\r\n</div>\r\n<ul class="jf-object-carousel-direction-nav">\r\n<li><a id="prev" href="#"></a></li>\r\n<li><a id="next" href="#"></a></li>\r\n</ul>\r\n</section>', 1, 'jf-object-carousel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 'JF Simple Slider', '', '<div id="jf-slider-wrapper">\r\n<div id="slider-bg">\r\n<div id="slider-photos">\r\n<div id="jf-simple-slider-slides">\r\n<div class="slides_container">\r\n<div class="slide"><a href="#" title="Photo Title"><img src="images/joomforest/jf-simple-slider/1.png" alt="Slide 1" height="360" width="940" /></a>\r\n<div class="jf-simple-slider-caption">\r\n<h1 style="background: #c00;">Free Joomla 2.5 Template (Gantry Framework)</h1>\r\n<p style="background: #000;">Clean Corporate Template - Pricing Tables, FAQ Section &amp; Many Others</p>\r\n</div>\r\n</div>\r\n<div class="slide"><a href="#" title="Photo Title"><img src="images/joomforest/jf-simple-slider/2.png" alt="Slide 2" height="360" width="940" /></a>\r\n<div class="jf-simple-slider-caption">\r\n<h1>Free JomSocial 2.6 Template</h1>\r\n<p>Clean Business/Corporate Style Template</p>\r\n</div>\r\n</div>\r\n<div class="slide"><a href="#" title="Photo Title"><img src="images/joomforest/jf-simple-slider/3.png" alt="Slide 3" height="360" width="940" /></a>\r\n<div class="jf-simple-slider-caption">\r\n<h1 style="background: #c00;">Free Kunena forum v1.7 Template</h1>\r\n<p style="background: #000;">Clean Professional Style for Business/Corporate website</p>\r\n</div>\r\n</div>\r\n<div class="slide"><a href="#" title="Photo Title"><img src="images/joomforest/jf-simple-slider/4.png" alt="Slide 4" height="360" width="940" /></a>\r\n<div class="jf-simple-slider-caption">\r\n<h1 style="background: #c00;">Free JomSocial 2.6 Theme</h1>\r\n<p style="background: #000;">Clean Professional Business/Corporate Style Template</p>\r\n</div>\r\n</div>\r\n<div class="slide"><a href="#" title="Photo Title"><img src="images/joomforest/jf-simple-slider/5.png" alt="Slide 5" height="360" width="940" /></a>\r\n<div class="jf-simple-slider-caption">\r\n<h1 style="background: #c00;">Free Kunena Template</h1>\r\n<p style="background: #000;">Professional Business/Corporate Forum Template</p>\r\n</div>\r\n</div>\r\n<div class="slide"><a href="#" title="Photo Title"><img src="images/joomforest/jf-simple-slider/6.png" alt="Slide 6" height="360" width="940" /></a>\r\n<div class="jf-simple-slider-caption">\r\n<h1>This is the title</h1>\r\n<p>This is the place for Your funky image caption!</p>\r\n</div>\r\n</div>\r\n</div>\r\n<a href="#" class="prev"></a> <a href="#" class="next"></a></div>\r\n</div>\r\n</div>\r\n</div>', 1, 'jf-simple-slider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 'JF Nivo Slider', '', '<div id="jf-slider-wrapper">\r\n<div id="slider-bg">\r\n<div id="slider-photos">\r\n<div id="slider-nivo" class="nivoSlider"><img src="images/joomforest/jf-nivo-slider/1.png" alt="photo" title="#htmlcaption" /> <img src="images/joomforest/jf-nivo-slider/2.png" alt="photo" /> <img src="images/joomforest/jf-nivo-slider/3.png" alt="photo" /> <img src="images/joomforest/jf-nivo-slider/4.png" alt="photo" /> <img src="images/joomforest/jf-nivo-slider/5.png" alt="photo" /> <a href="http://joomforest.com"> <img src="images/joomforest/jf-nivo-slider/6.png" alt="photo" title="This is an example of a caption" /> </a></div>\r\n<div id="htmlcaption" class="nivo-html-caption"><strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>.</div>\r\n</div>\r\n</div>\r\n</div>', 1, 'jf-nivo-slider', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'Welcome to JF Corporate', '', '<h1 style="text-align: center;">Welcome to <span style="color: #da0000;">JF Corporate</span> - Free Joomla Corporate/Portfolio Template!</h1>\r\n<div class="jf-welcome-desc">Based On Gantry Framework, With JomSocial &amp; Kunena Forum Theme, Beautiful Sliders &amp; typography</div>\r\n<div class="jf-front_page_element jf-padding20px-top-bottom"><a href="#">\r\n<div class="jf-featured_item">\r\n<div class="jf-featured_item_content">\r\n<div class="jf-featured_icon_wrapper">\r\n<div class="jf-featured_icon"><img src="images/joomforest/jf-welcome/case.png" alt="Our Resent Projects" /></div>\r\n</div>\r\n<div class="jf-featured_text"><span class="jf-google-font">Our Resent Projects</span></div>\r\n</div>\r\n</div>\r\n</a> <a href="#">\r\n<div class="jf-featured_item">\r\n<div class="jf-featured_item_content">\r\n<div class="jf-featured_icon_wrapper">\r\n<div class="jf-featured_icon"><img src="images/joomforest/jf-welcome/gear.png" alt="Services - What We Do" /></div>\r\n</div>\r\n<div class="jf-featured_text"><span class="jf-google-font">Services - What We Do</span></div>\r\n</div>\r\n</div>\r\n</a> <a href="#">\r\n<div class="jf-featured_item">\r\n<div class="jf-featured_item_content">\r\n<div class="jf-featured_icon_wrapper">\r\n<div class="jf-featured_icon"><img src="images/joomforest/jf-welcome/users.png" alt="Our Community" /></div>\r\n</div>\r\n<div class="jf-featured_text"><span class="jf-google-font">Our <br />Community</span></div>\r\n</div>\r\n</div>\r\n</a> <a href="#">\r\n<div class="jf-featured_item">\r\n<div class="jf-featured_item_content">\r\n<div class="jf-featured_icon_wrapper">\r\n<div class="jf-featured_icon"><img src="images/joomforest/jf-welcome/info.png" alt="Great Support" /></div>\r\n</div>\r\n<div class="jf-featured_text"><span class="jf-google-font">Great <br />Support</span></div>\r\n</div>\r\n</div>\r\n</a> <a href="#">\r\n<div class="jf-featured_item last">\r\n<div class="jf-featured_item_content">\r\n<div class="jf-featured_icon_wrapper">\r\n<div class="jf-featured_icon"><img src="images/joomforest/jf-welcome/money.png" alt="Money Back Guarantee" /></div>\r\n</div>\r\n<div class="jf-featured_text"><span class="jf-google-font">Money Back Guarantee</span></div>\r\n</div>\r\n</div>\r\n</a></div>', 1, 'jf-welcome', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(92, 'What We Do', '', '<p>Arcu, parturient habitasse hac, ultricies phasellus placerat tincidunt. Sed. Amet rhoncus facilisis in porttitor enim sed. Dolor facilisis. Nec, etiam ut adipiscing</p>\r\n<p>Elit auctor sed odio scelerisque aliquam tristique adipiscing nec porttitor porta scelerisque ac aliquam integer turpis placerat lectus dis pulvinar egestas nisi lacus urna et sed etiam, ultrices in, Etiam. Nunc adipiscing et adipiscing adipiscing ultrices sociis, In tincidunt, Pellentesque, elementum turpis, mus, placerat.</p>\r\n<div class="jf-talk-to-us">\r\n<div class="jf-google-font jf-font-size-20px">Free On-line Support</div>\r\n<span>Talk Us On <a href="http://skype.com">Skype </a> or <a href="http://gtalk.com">Gtalk</a></span></div>\r\n<div class="jf-online-sup">\r\n<div class="jf-google-font jf-font-size-20px">We on-line 24 hours</div>\r\n<span><a href="http://skype.com">Call now</a></span></div>\r\n<div class="clear">nbsp</div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(93, 'How We Do', '', '<div id="how-we-do">\r\n<div id="tj_container" class="tj_container">\r\n<div class="tj_nav"><span id="tj_prev" class="tj_prev">Previous</span> <span id="tj_next" class="tj_next">Next</span></div>\r\n<div class="tj_wrapper">\r\n<ul class="tj_gallery">\r\n<li><span>18 JAN, 2012</span> <a href="images/joomforest/jf-portfolio/1.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/1.jpg" alt="image01" /> </a></li>\r\n<li><span>12 JAN, 2012</span> <a href="images/joomforest/jf-portfolio/2.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/2.jpg" alt="image02" /> </a></li>\r\n<li><span>27 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/3.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/3.jpg" alt="image03" /> </a></li>\r\n<li><span>15 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/5.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/5.jpg" alt="image04" /> </a></li>\r\n<li><span>01 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/8.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/8.jpg" alt="image05" /> </a></li>\r\n<li><span>24 MAR, 2012</span> <a href="images/joomforest/jf-portfolio/10.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/10.jpg" alt="image06" /> </a></li>\r\n<li><span>09 MAR, 2012</span> <a href="images/joomforest/jf-portfolio/11.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/11.jpg" alt="image01" /> </a></li>\r\n<li><span>18 JAN, 2012</span> <a href="images/joomforest/jf-portfolio/1.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/1.jpg" alt="image01" /> </a></li>\r\n<li><span>12 JAN, 2012</span> <a href="images/joomforest/jf-portfolio/2.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/2.jpg" alt="image02" /> </a></li>\r\n<li><span>27 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/3.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/3.jpg" alt="image03" /> </a></li>\r\n<li><span>15 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/5.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/5.jpg" alt="image04" /> </a></li>\r\n<li><span>01 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/8.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/8.jpg" alt="image05" /> </a></li>\r\n<li><span>24 MAR, 2012</span> <a href="images/joomforest/jf-portfolio/10.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/10.jpg" alt="image06" /> </a></li>\r\n<li><span>09 MAR, 2012</span> <a href="images/joomforest/jf-portfolio/11.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/11.jpg" alt="image01" /> </a></li>\r\n<li><span>18 JAN, 2012</span> <a href="images/joomforest/jf-portfolio/1.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/1.jpg" alt="image01" /> </a></li>\r\n<li><span>12 JAN, 2012</span> <a href="images/joomforest/jf-portfolio/2.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/2.jpg" alt="image02" /> </a></li>\r\n<li><span>27 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/3.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/3.jpg" alt="image03" /> </a></li>\r\n<li><span>15 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/5.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/5.jpg" alt="image04" /> </a></li>\r\n<li><span>01 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/8.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/8.jpg" alt="image05" /> </a></li>\r\n<li><span>24 MAR, 2012</span> <a href="images/joomforest/jf-portfolio/10.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/10.jpg" alt="image06" /> </a></li>\r\n<li><span>09 MAR, 2012</span> <a href="images/joomforest/jf-portfolio/11.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/11.jpg" alt="image01" /> </a></li>\r\n<li><span>18 JAN, 2012</span> <a href="images/joomforest/jf-portfolio/1.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/1.jpg" alt="image01" /> </a></li>\r\n<li><span>12 JAN, 2012</span> <a href="images/joomforest/jf-portfolio/2.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/2.jpg" alt="image02" /> </a></li>\r\n<li><span>27 FEB, 2012</span> <a href="images/joomforest/jf-portfolio/3.jpg" rel="gallery" class="pirobox_gall" title="JoomForest.com"> <img src="images/joomforest/jf-portfolio/thumbs/3.jpg" alt="image03" /> </a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="clear">nbsp</div>', 1, 'showcase-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(96, 'Breadcrumbs', '', '', 1, 'navigation', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(97, 'Right Menu', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(102, 'CONTACT INFOS', '', '<div class="jf-bottom-sep">&nbsp;</div>\r\n<ul class="jf-bottom-contact-info">\r\n<li class="jf-bottom-contact-info-location">123, Wall Street, New York</li>\r\n<li class="jf-bottom-contact-info-phone">123-(1)-111-222</li>\r\n<li class="jf-bottom-contact-info-email">info(at)joomforest.com</li>\r\n<li class="jf-bottom-contact-info-fb">On Facebook</li>\r\n<li class="jf-bottom-contact-info-twitter">On Twitter</li>\r\n</ul>', 1, 'footer-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 'ABOUT US', '', '<div class="jf-bottom-sep"></div>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum vestibul nisi, vel scelerisque nunc vehicula in. Proin porttitor fringilla tortor a iaculis.</p>', 1, 'footer-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(104, 'TESTIMONIAL', '', '<div class="jf-bottom-sep"></div>\r\n<div class="jf-testimonial_widget">\r\n    <blockquote>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <cite>John Doe</cite></p>\r\n    </blockquote>\r\n    <blockquote>\r\n        <p>Do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit! Et habitasse rhoncus. Amet pid, magna, quis! <cite>Ashley Miller</cite></p>\r\n    </blockquote>\r\n</div>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(105, 'RECENT TWEETS', '', '<div class="jf-bottom-sep"></div>\r\n<script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>\r\n<script>\r\n    new TWTR.Widget({\r\n      version: 2,\r\n      type: ''profile'',\r\n      rpp: 1,\r\n      interval: 30000,\r\n      width: 220,\r\n      height: 300,\r\n      theme: {\r\n        shell: {\r\n          background: ''none'',\r\n          color: ''#ffffff''\r\n        },\r\n        tweets: {\r\n          background: ''#000'',\r\n          color: ''#ffffff'',\r\n          links: ''#777777''\r\n        }\r\n      },\r\n      features: {\r\n        scrollbar: false,\r\n        loop: false,\r\n        live: false,\r\n        behavior: ''default''\r\n      }\r\n    }).render().setUser(''joomforest'').start();\r\n</script>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(106, 'Search', '', '', 2, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"34","text":"type here to search...","button":"1","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(107, 'Authorization', '', '', 3, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(108, 'MOD_JGMAP', '', '', 1, 'jf-map', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_JGMap', 1, 1, '{"width":"950","height":"340","mapName":"map","mapType":"ROADMAP","smallmap":"1","static":"0","lat":"40.715328650387875","lng":"-74.00322651796876","zoom":"15","marker":"1","marker_lat":"40.7143528","marker_lng":"-74.0059731","marker_title":"New York, NY, USA","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(113, 'Kunena Login', '', '', 1, 'jf-kunena-login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_kunenalogin', 1, 0, '{"template":"vertical","pretext":"","posttext":"","login":"166","logout":"166","greeting":"1","lastlog":"1","showav":"1","avatar_w":"128px","avatar_h":"128px","showprofile":"1","showmyposts":"1","showrecent":"1","showmessage":"0","cache":"0","moduleclass_sfx":""}', 0, '*'),
(114, 'Kunena Search', '', '', 1, 'jf-kunena-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_kunenasearch', 1, 0, '{"ksearch_width":"20","ksearch_txt":"","ksearch_button":"1","ksearch_button_pos":"right","ksearch_button_txt":"Search","moduleclass_sfx":""}', 0, '*');

-- --------------------------------------------------------

--
-- 表的结构 `sn_modules_menu`
--

CREATE TABLE IF NOT EXISTS `sn_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_modules_menu`
--

INSERT INTO `sn_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 120),
(89, 101),
(90, 121),
(91, 101),
(91, 119),
(91, 120),
(91, 121),
(92, 101),
(92, 119),
(92, 120),
(92, 121),
(93, 101),
(93, 119),
(93, 120),
(93, 121),
(96, 103),
(96, 104),
(96, 105),
(96, 106),
(96, 107),
(96, 108),
(96, 109),
(96, 110),
(96, 111),
(96, 122),
(96, 123),
(96, 124),
(96, 125),
(96, 126),
(96, 128),
(96, 165),
(96, 223),
(96, 224),
(96, 225),
(96, 226),
(96, 227),
(96, 228),
(96, 229),
(96, 230),
(96, 231),
(96, 232),
(97, 103),
(97, 104),
(97, 107),
(97, 108),
(97, 109),
(97, 110),
(97, 111),
(97, 112),
(97, 113),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 110),
(107, 110),
(108, 111),
(109, 0),
(112, 0),
(113, 0),
(114, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sn_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `sn_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_newsfeeds`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_overrider`
--

CREATE TABLE IF NOT EXISTS `sn_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_overrider`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_redirect_links`
--

CREATE TABLE IF NOT EXISTS `sn_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `sn_redirect_links`
--

INSERT INTO `sn_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/corporate-j25-1/2012-02-28-13-25-36/index.php', '', 'http://localhost/corporate-j25-1/2012-02-28-13-25-36/buttons.html', '', 0, 0, '2012-03-23 21:03:11', '0000-00-00 00:00:00'),
(2, 'http://localhost/corporate-j25-1/2012-02-27-17-38-58/index.php', '', 'http://localhost/corporate-j25-1/2012-02-27-17-38-58/portfolio.html', '', 0, 0, '2012-03-24 20:12:08', '0000-00-00 00:00:00'),
(3, 'http://localhost/corporate-j25-1/forum/index.php', '', 'http://localhost/corporate-j25-1/forum/index.html', '', 0, 0, '2012-03-25 12:47:58', '0000-00-00 00:00:00'),
(4, 'http://localhost/corporate-j25-1/2012-02-27-17-38-58/2012-02-27-17-39-23/index.php', '', 'http://localhost/corporate-j25-1/2012-02-27-17-38-58/2012-02-27-17-39-23/object-carousel.html', '', 0, 0, '2012-04-23 21:36:00', '0000-00-00 00:00:00'),
(5, 'http://localhost/corporate-j25-1/2012-02-27-17-38-58/portfolio.html', '', 'http://localhost/corporate-j25-1/?presets=blue', '', 0, 0, '2012-04-24 22:30:58', '0000-00-00 00:00:00'),
(6, 'http://localhost/corporate-j25-1/features/index.php', '', 'http://localhost/corporate-j25-1/features/photo-gallery.html', '', 0, 0, '2012-04-25 11:36:17', '0000-00-00 00:00:00'),
(7, 'http://localhost/corporate-j25-1/typography/index.php', '', 'http://localhost/corporate-j25-1/typography/lists.html', '', 0, 0, '2012-04-25 11:41:28', '0000-00-00 00:00:00'),
(8, 'http://localhost/corporate-j25-1/forum/default.html', '', 'http://localhost/corporate-j25-1/forum/index.html', '', 6, 0, '2012-07-27 00:33:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `sn_schemas`
--

CREATE TABLE IF NOT EXISTS `sn_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_schemas`
--

INSERT INTO `sn_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.6');

-- --------------------------------------------------------

--
-- 表的结构 `sn_session`
--

CREATE TABLE IF NOT EXISTS `sn_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_session`
--

INSERT INTO `sn_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('90276do4lqq8hm3f70m54l2r97', 0, 1, '1368681602', '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1368681601;s:18:"session.timer.last";i:1368681601;s:17:"session.timer.now";i:1368681601;s:22:"session.client.browser";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"b726f01c3ff9893b58d88879109fdd3f";}', 0, '', ''),
('co9a0urp7dhnf7n9ld29prpck2', 0, 1, '1368681591', '__default|a:8:{s:15:"session.counter";i:2;s:19:"session.timer.start";i:1368681580;s:18:"session.timer.last";i:1368681580;s:17:"session.timer.now";i:1368681590;s:22:"session.client.browser";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"1ba8b159b91fa065958cf8ed3a3bcdbf";}', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_template_styles`
--

CREATE TABLE IF NOT EXISTS `sn_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `sn_template_styles`
--

INSERT INTO `sn_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(10, 'rt_gantry', 0, '0', 'rt_gantry - Default', '{"master":"true","current_id":"10","template_full_name":"Gantry Template","grid_system":"12","template_prefix":"gantry-","cookie_time":"31536000","copy_lang_files_if_diff":"1","cssstyle":"style1","bgcolor":"#f3f3f3","headercolor":"#060C17","bottomcolor":"#060C17","footercolor":"#666666","jfmoduletitlecolor":"#060C17","jfreadmorecolor":"#060C17","linkcolor":"#cc0000","jflinkhovercolor":"#ff0000","webfonts":{"enabled":"1","source":"google"},"font":{"family":"Yanone Kaffeesatz","size":"default","size-is":"default"},"viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","fontsizer-priority":"5","iphonegradients-priority":"6","date-priority":"7","totop-priority":"8","systemmessages-priority":"9","inactive-priority":"10","iphoneimages-priority":"11","morearticles-priority":"12","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","belatedpng-priority":"17","fusionmenu-priority":"18","ie6menu-priority":"19","ie6warn-priority":"20","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","suckerfishmenu-priority":"25","touchmenu-priority":"26","webfonts-priority":"27","styledeclaration-enabled":"1","logo":{"enabled":"1","position":"header-a","autosize":"0","perstyle":"0","css":"body #rt-logo"},"date":{"enabled":"0","position":"top-d","clientside":"0","formats":"%A, %B %d, %Y"},"fontsizer":{"enabled":"0","position":"jf-features-options"},"copyright":{"enabled":"1","position":"copyright","text":"Copyright 2012 JoomForest. All Rights Reserved"},"smartload":{"enabled":"0","text":"50","ignores":"com_contact","exclusion":""},"totop":{"enabled":"0","position":"copyright","text":"Scroll to Top"},"systemmessages":{"enabled":"1","position":"drawer"},"resetsettings":{"enabled":"0","position":"copyright","text":"Reset Settings"},"ie6warn":{"enabled":"1","delay":"2000"},"analytics":{"enabled":"0","code":""},"jf_social_twitter":{"enabled":"1","position":"jf-social-twitter","jf_social_twitter_link":"http:\\/\\/twitter.com\\/#!\\/JoomForest","jf_social_twitter_title":"Follow us on Twitter"},"jf_social_facebook":{"enabled":"1","position":"jf-social-facebook","jf_social_facebook_link":"http:\\/\\/www.facebook.com\\/JoomForest","jf_social_facebook_title":"Find us on Facebook"},"jf_social_gplus":{"enabled":"1","position":"jf-social-gplus","jf_social_gplus_link":"https:\\/\\/plus.google.com\\/103966139078974284716\\/","jf_social_gplus_title":"Follow us on Google+"},"jf_social_rss":{"enabled":"1","position":"jf-social-rss","jf_social_rss_link":"http:\\/\\/feeds.feedburner.com\\/JoomforestBlog","jf_social_rss_title":"Subscribe to RSS"},"jf_social_myspace":{"enabled":"1","position":"jf-social-myspace","jf_social_myspace_link":"#","jf_social_myspace_title":"Follow Us on MySpace"},"jf_social_linkedin":{"enabled":"1","position":"jf-social-linkedin","jf_social_linkedin_link":"#","jf_social_linkedin_title":"Find us on LinkedIn"},"jf_object_carousel":{"enabled":"1","position":"jf-features-options","jf_object_carousel_duration":"4000"},"jf_simple_slider":{"enabled":"1","position":"jf-features-options","jf_simple_slider_duration":"4000"},"jf_nivo_slider":{"enabled":"1","position":"jf-features-options","jf_nivo_slider_effect":"random","jf_nivo_slider_duration":"4000","jf_nivo_slider_animation_duration":"500"},"jf_pirobox":{"enabled":"1","position":"jf-features-options","jf_pirobox_speed":"700","jf_pirobox_background-opacity":"5","jf_pirobox_navigation-position":"bottom"},"menu":{"enabled":"1","type":"fusionmenu","fusionmenu":{"menutype":"mainmenu","position":"header-b","enable_js":"1","opacity":"1","effect":"slidefade","hidedelay":"500","menu-animation":"Circ.easeOut","menu-duration":"300","centered-offset":"0","tweak-initial-x":"-10","tweak-initial-y":"-13","tweak-subsequent-x":"0","tweak-subsequent-y":"0","tweak-width":"20","tweak-height":"20","enable-current-id":"0","theme":"gantry-fusion","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","module_cache":"1"},"splitmenu":{"menutype":"mainmenu","theme":"gantry-splitmenu","cache":"0","module_cache":"1","mainmenu-position":"header-b","mainmenu-limit_levels":"1","mainmenu-startLevel":"0","mainmenu-endLevel":"0","mainmenu-class_sfx":"top","submenu-position":"sidebar-a","submenu-limit_levels":"1","submenu-startLevel":"1","submenu-endLevel":"9","submenu-class_sfx":""}},"top":{"layout":"5,7","showall":"0","showmax":"6"},"header":{"layout":"a:1:{i:12;a:6:{i:2;a:2:{i:0;i:4;i:1;i:8;}i:1;a:1:{i:0;i:12;}i:5;a:5:{i:0;i:3;i:1;i:2;i:2;i:2;i:3;i:2;i:4;i:3;}i:3;a:3:{i:0;i:4;i:1;i:4;i:2;i:4;}i:4;a:4:{i:0;i:3;i:1;i:3;i:2;i:3;i:3;i:3;}i:6;a:6:{i:0;i:2;i:1;i:2;i:2;i:2;i:3;i:2;i:4;i:2;i:5;i:2;}}}","showall":"0","showmax":"6"},"showcase":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"feature":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"utility":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"maintop":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"6,3,3","mainbottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"iphone-enabled":"1","android-enabled":"1","iphone-scalable":"0","iphone-switcher":{"enabled":"0","position":"mobile-header"},"touchmenu":{"menutype":"mainmenu","enabled":"1","position":"mobile-navigation","theme":"touch","animation":"cube","cache":"0","module_cache":"1","startLevel":"0","endLevel":"20","showAllChildren":"1"},"iphoneimages":{"enabled":"1","minWidth":"80","percentage":"33"},"iphone-header-gradient":{"from":"#545353","to":"#262626","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"iphone-showcase-gradient":{"from":"#ededed","to":"#fff","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"iphone-copyright-gradient":{"from":"#545353","to":"#262626","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"mobile":{"drawer":"drawer","top":"top-a","header":"header-a","navigation":"mobile-navigation","showcase":"mobile-showcase","footer":"footer-a","copyright":"copyright"},"cache":{"enabled":"0","time":"900"},"gzipper":{"enabled":"0","time":"600","expirestime":"1440","stripwhitespace":"1"},"inputstyling":{"enabled":"0","exclusions":"''.content_vote''"},"component-enabled":"1","rtl-enabled":"1","buildspans-enabled":"1","pagesuffix-enabled":"0","inactive":{"enabled":"1","menuitem":"136"}}'),
(16, 'jf_corporate', 0, '1', 'jf_corporate - Default', '{"master":"true","current_id":"16","template_full_name":"JF Corporate","grid_system":"12","template_prefix":"gantry-","cookie_time":"31536000","copy_lang_files_if_diff":"1","cssstyle":"style1","bgcolor":"#f3f3f3","headercolor":"#060C17","bottomcolor":"#060C17","footercolor":"#666666","jfmoduletitlecolor":"#060C17","jfreadmorecolor":"#060C17","linkcolor":"#cc0000","jflinkhovercolor":"#ff0000","webfonts":{"enabled":"1","source":"google"},"font":{"family":"Yanone Kaffeesatz","size":"default","size-is":"default"},"viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","fontsizer-priority":"5","iphonegradients-priority":"6","date-priority":"7","totop-priority":"8","systemmessages-priority":"9","inactive-priority":"10","iphoneimages-priority":"11","morearticles-priority":"12","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","belatedpng-priority":"17","fusionmenu-priority":"18","ie6menu-priority":"19","ie6warn-priority":"20","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","suckerfishmenu-priority":"25","touchmenu-priority":"26","webfonts-priority":"27","styledeclaration-enabled":"1","logo":{"enabled":"1","position":"header-a","autosize":"0","perstyle":"0","css":"body #rt-logo"},"date":{"enabled":"0","position":"top-d","clientside":"0","formats":"%A, %B %d, %Y"},"fontsizer":{"enabled":"0","position":"jf-features-options"},"copyright":{"enabled":"1","position":"copyright","text":"Copyright 2012 JoomForest. All Rights Reserved"},"smartload":{"enabled":"0","text":"50","ignores":"com_contact","exclusion":""},"totop":{"enabled":"0","position":"copyright","text":"Scroll to Top"},"systemmessages":{"enabled":"1","position":"drawer"},"resetsettings":{"enabled":"0","position":"copyright","text":"Reset Settings"},"ie6warn":{"enabled":"1","delay":"2000"},"analytics":{"enabled":"0","code":""},"jf_social_twitter":{"enabled":"1","position":"jf-social-twitter","jf_social_twitter_link":"http:\\/\\/twitter.com\\/#!\\/JoomForest","jf_social_twitter_title":"Follow us on Twitter"},"jf_social_facebook":{"enabled":"1","position":"jf-social-facebook","jf_social_facebook_link":"http:\\/\\/www.facebook.com\\/JoomForest","jf_social_facebook_title":"Find us on Facebook"},"jf_social_gplus":{"enabled":"1","position":"jf-social-gplus","jf_social_gplus_link":"https:\\/\\/plus.google.com\\/103966139078974284716\\/","jf_social_gplus_title":"Follow us on Google+"},"jf_social_rss":{"enabled":"1","position":"jf-social-rss","jf_social_rss_link":"http:\\/\\/feeds.feedburner.com\\/JoomforestBlog","jf_social_rss_title":"Subscribe to RSS"},"jf_social_myspace":{"enabled":"1","position":"jf-social-myspace","jf_social_myspace_link":"#","jf_social_myspace_title":"Follow Us on MySpace"},"jf_social_linkedin":{"enabled":"1","position":"jf-social-linkedin","jf_social_linkedin_link":"#","jf_social_linkedin_title":"Find us on LinkedIn"},"jf_object_carousel":{"enabled":"1","position":"jf-features-options","jf_object_carousel_duration":"4000"},"jf_simple_slider":{"enabled":"1","position":"jf-features-options","jf_simple_slider_duration":"4000"},"jf_nivo_slider":{"enabled":"1","position":"jf-features-options","jf_nivo_slider_effect":"random","jf_nivo_slider_duration":"4000","jf_nivo_slider_animation_duration":"500"},"jf_pirobox":{"enabled":"1","position":"jf-features-options","jf_pirobox_speed":"700","jf_pirobox_background-opacity":"5","jf_pirobox_navigation-position":"bottom"},"menu":{"enabled":"1","type":"fusionmenu","fusionmenu":{"menutype":"mainmenu","position":"header-b","enable_js":"1","opacity":"1","effect":"slidefade","hidedelay":"500","menu-animation":"Circ.easeOut","menu-duration":"300","centered-offset":"0","tweak-initial-x":"-10","tweak-initial-y":"-13","tweak-subsequent-x":"0","tweak-subsequent-y":"0","tweak-width":"20","tweak-height":"20","enable-current-id":"0","theme":"gantry-fusion","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","module_cache":"1"},"splitmenu":{"menutype":"mainmenu","theme":"gantry-splitmenu","cache":"0","module_cache":"1","mainmenu-position":"header-b","mainmenu-limit_levels":"1","mainmenu-startLevel":"0","mainmenu-endLevel":"0","mainmenu-class_sfx":"top","submenu-position":"sidebar-a","submenu-limit_levels":"1","submenu-startLevel":"1","submenu-endLevel":"9","submenu-class_sfx":""}},"top":{"layout":"5,7","showall":"0","showmax":"6"},"header":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:4;i:1;i:8;}}}","showall":"0","showmax":"6"},"showcase":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"feature":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"utility":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"maintop":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"6,3,3","mainbottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"iphone-enabled":"1","android-enabled":"1","iphone-scalable":"0","iphone-switcher":{"enabled":"0","position":"mobile-header"},"touchmenu":{"menutype":"mainmenu","enabled":"1","position":"mobile-navigation","theme":"touch","animation":"cube","cache":"0","module_cache":"1","startLevel":"0","endLevel":"20","showAllChildren":"1"},"iphoneimages":{"enabled":"1","minWidth":"80","percentage":"33"},"iphone-header-gradient":{"from":"#545353","to":"#262626","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"iphone-showcase-gradient":{"from":"#ededed","to":"#fff","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"iphone-copyright-gradient":{"from":"#545353","to":"#262626","direction_start":"left-top","fromopacity":"1","toopacity":"1","direction_end":"left-bottom"},"mobile":{"drawer":"drawer","top":"top-a","header":"header-a","navigation":"mobile-navigation","showcase":"mobile-showcase","footer":"footer-a","copyright":"copyright"},"cache":{"enabled":"1","time":"900"},"gzipper":{"enabled":"0","time":"600","expirestime":"1440","stripwhitespace":"1"},"inputstyling":{"enabled":"0","exclusions":"''.content_vote''"},"component-enabled":"1","rtl-enabled":"1","buildspans-enabled":"1","pagesuffix-enabled":"0","inactive":{"enabled":"1","menuitem":"166"}}');

-- --------------------------------------------------------

--
-- 表的结构 `sn_updates`
--

CREATE TABLE IF NOT EXISTS `sn_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `sn_updates`
--

INSERT INTO `sn_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 15, 0, 0, 'Kunena Language Pack', 'Language Pack for Kunena Forum', 'pkg_kunena_languages', 'package', '', 0, '2.0.1', '', 'http://update.kunena.org/pkg_kunena_languages.xml', ''),
(2, 15, 0, 0, 'Kunena Latest Module', '', 'mod_kunenalatest', 'module', '', 0, '2.0.1', '', 'http://update.kunena.org/mod_kunenalatest.xml', ''),
(3, 15, 0, 0, 'Kunena Login Module', '', 'mod_kunenalogin', 'module', '', 0, '2.0.1', '', 'http://update.kunena.org/mod_kunenalogin.xml', ''),
(4, 15, 0, 0, 'Kunena Search Module', '', 'mod_kunenasearch', 'module', '', 0, '2.0.1', '', 'http://update.kunena.org/mod_kunenasearch.xml', ''),
(5, 15, 0, 0, 'Kunena Statistics Module', '', 'mod_kunenastats', 'module', '', 0, '2.0.1', '', 'http://update.kunena.org/mod_kunenastats.xml', ''),
(6, 15, 0, 0, 'Content - Kunena Discuss', '', 'kunenadiscuss', 'plugin', 'content', 0, '2.0.1', '', 'http://update.kunena.org/plg_content_kunenadiscuss.xml', ''),
(7, 15, 0, 0, 'Search - Kunena', '', 'kunena', 'plugin', 'search', 0, '2.0.1', '', 'http://update.kunena.org/plg_search_kunena.xml', ''),
(8, 15, 0, 0, 'Community - Kunena Groups', '', 'kunenagroups', 'plugin', 'community', 0, '2.0.1', '', 'http://update.kunena.org/plg_community_kunenagroups.xml', ''),
(9, 15, 0, 0, 'Community - Kunena Menu', '', 'kunenamenu', 'plugin', 'community', 0, '2.0.1', '', 'http://update.kunena.org/plg_community_kunenamenu.xml', ''),
(10, 15, 0, 0, 'Community - My Kunena', '', 'mykunena', 'plugin', 'community', 0, '2.0.1', '', 'http://update.kunena.org/plg_community_mykunena.xml', ''),
(11, 12, 0, 0, 'RokSprocket', '', 'mod_roksprocket', 'module', '', 0, '1.5.6', '', 'http://updates.rockettheme.com/joomla/modules/roksprocket.xml', '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_update_categories`
--

CREATE TABLE IF NOT EXISTS `sn_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_update_categories`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_update_sites`
--

CREATE TABLE IF NOT EXISTS `sn_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `sn_update_sites`
--

INSERT INTO `sn_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1343471602),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1343471602),
(4, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1', 1, 1343471604),
(12, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 1, 1343471604),
(13, 'Gantry Framework Update Site', 'extension', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 1, 1343471602),
(15, 'Kunena 2.0 Update Site', 'collection', 'http://update.kunena.org/2.0', 1, 1343471602),
(16, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1\n        ', 1, 1343471604);

-- --------------------------------------------------------

--
-- 表的结构 `sn_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `sn_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- 转存表中的数据 `sn_update_sites_extensions`
--

INSERT INTO `sn_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(4, 10008),
(12, 10043),
(13, 10046),
(15, 10055),
(16, 10008);

-- --------------------------------------------------------

--
-- 表的结构 `sn_usergroups`
--

CREATE TABLE IF NOT EXISTS `sn_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `sn_usergroups`
--

INSERT INTO `sn_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- 表的结构 `sn_users`
--

CREATE TABLE IF NOT EXISTS `sn_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=954 ;

--
-- 转存表中的数据 `sn_users`
--

INSERT INTO `sn_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(43, 'demo1', 'demo1', 'webfuiwg@wefweqf3.com', 'eba2ca844a3761997c0e2e55df25a80f:SyzFnGMr9U4uLpZFuaVX6blA7rPI2XNB', '', 0, 0, '2012-04-07 20:33:34', '2012-07-28 10:32:59', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0),
(44, 'demo2', 'demo2', 'rgh3roph3490b@wrgw.com', '6a367920e61d9050b79681a593fd6a27:Tu5RXgivRYY8ErwQhcz8DYfLIGKpQEWM', '', 0, 0, '2012-04-07 20:33:50', '2012-04-20 22:22:37', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0),
(45, 'demo3', 'demo3', '34nuihus@4g43g45.com', '7d5a7939efa4692a7aba33aa286dffb2:dgng8rubRGuhpU0U6ToJAnmgDx0BpmP2', '', 0, 0, '2012-04-07 20:34:05', '2012-04-25 14:33:24', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0),
(46, 'demo4', 'demo4', 'hejklhbu@oerk0-hu.com', '157f56460540a47f2f4b405cd705be95:dtLYrWevHZBJwOMi56s65PeJORgU6Caa', '', 0, 0, '2012-04-07 20:34:17', '2012-04-20 22:58:12', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0),
(47, 'JoomForest', 'joomforest', 'webmaster@joomforest.com', 'df490683c84044b222a0af8991244db9:perPLhkKCxDHJkqPz47WZVWcclnQQtsl', '', 0, 0, '2012-04-09 16:43:42', '2012-04-24 15:42:49', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0),
(48, 'demo5', 'demo5', 'guwhioh@wefw.com', '3b5c14c10a69076b5c80f294272aab03:7NRSJK3TcpYTuZirSsGirjUd1wdg0Uau', '2', 0, 0, '2012-04-22 00:28:31', '2012-04-22 00:29:18', '', '{"update_cache_list":1}', '0000-00-00 00:00:00', 0),
(505, 'Super User', 'admin', 'nic.wzh@gmail.com', '1ff7703c6b2630b817fac5265a7a3e80:c9tyP50g4neFvgkVzu5KleEeSAo49zX6', 'deprecated', 0, 1, '2013-05-16 05:19:23', '0000-00-00 00:00:00', '0', '', '0000-00-00 00:00:00', 0),
(953, 'Super User', 'super', 'info@joomforest.com', '1adc9854b43b189f87f2766c554859cb:CdtLUiKVDSuM2SGuaddzq6ZGQTYJSQIU', 'deprecated', 0, 1, '2012-07-28 11:03:42', '2012-07-28 11:08:25', '0', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- 表的结构 `sn_user_notes`
--

CREATE TABLE IF NOT EXISTS `sn_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_user_notes`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_user_profiles`
--

CREATE TABLE IF NOT EXISTS `sn_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- 转存表中的数据 `sn_user_profiles`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `sn_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_user_usergroup_map`
--

INSERT INTO `sn_user_usergroup_map` (`user_id`, `group_id`) VALUES
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(47, 6),
(48, 2),
(505, 8),
(953, 8);

-- --------------------------------------------------------

--
-- 表的结构 `sn_viewlevels`
--

CREATE TABLE IF NOT EXISTS `sn_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `sn_viewlevels`
--

INSERT INTO `sn_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- 表的结构 `sn_weblinks`
--

CREATE TABLE IF NOT EXISTS `sn_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `sn_weblinks`
--


-- --------------------------------------------------------

--
-- 表的结构 `sn_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `sn_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `sn_wf_profiles`
--

INSERT INTO `sn_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,paste,indent,outdent,numlist,bullist,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'contextmenu,browser,inlinepopups,media,help,paste,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,link,spellchecker,article,anchor', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;paste,searchreplace,indent,outdent,numlist,bullist,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'contextmenu,inlinepopups,help,paste,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,link,spellchecker,article,anchor', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '', '', 0, 'bold,italic,strikethrough,bullist,numlist,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,paste,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,paste,contextmenu,inlinepopups', 0, 3, 0, '0000-00-00 00:00:00', '\n                \n            ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
