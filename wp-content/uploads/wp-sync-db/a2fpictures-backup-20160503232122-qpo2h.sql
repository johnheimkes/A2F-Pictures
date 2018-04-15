# WordPress MySQL database migration
#
# Generated: Tuesday 3. May 2016 23:21 UTC
# Hostname: localhost
# Database: `a2fpictures`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `a2fwp_commentmeta`
#

DROP TABLE IF EXISTS `a2fwp_commentmeta`;


#
# Table structure of table `a2fwp_commentmeta`
#

CREATE TABLE `a2fwp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_commentmeta`
#

#
# End of data contents of table `a2fwp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_comments`
#

DROP TABLE IF EXISTS `a2fwp_comments`;


#
# Table structure of table `a2fwp_comments`
#

CREATE TABLE `a2fwp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_comments`
#
INSERT INTO `a2fwp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-03-26 01:48:28', '2016-03-26 01:48:28', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `a2fwp_comments`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_ewwwio_images`
#

DROP TABLE IF EXISTS `a2fwp_ewwwio_images`;


#
# Table structure of table `a2fwp_ewwwio_images`
#

CREATE TABLE `a2fwp_ewwwio_images` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `updates` int(5) unsigned DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `trace` blob,
  UNIQUE KEY `id` (`id`),
  KEY `path_image_size` (`path`(191),`image_size`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_ewwwio_images`
#
INSERT INTO `a2fwp_ewwwio_images` ( `id`, `path`, `results`, `image_size`, `orig_size`, `updates`, `updated`, `trace`) VALUES
(15, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-01-1920.jpg', 'Reduced by 13.6% (106.2&nbsp;kB)', 689083, 797829, 1, '2016-04-29 17:10:10', NULL),
(16, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-01-1920-150x150.jpg', 'Reduced by 69.0% (20.8&nbsp;kB)', 9605, 30954, 1, '2016-04-29 17:10:10', NULL),
(17, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-01-1920-300x169.jpg', 'Reduced by 53.4% (21.2&nbsp;kB)', 18901, 40588, 1, '2016-04-29 17:10:10', NULL),
(18, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-01-1920-768x432.jpg', 'Reduced by 22.7% (22.0&nbsp;kB)', 76474, 98975, 1, '2016-04-29 17:10:10', NULL),
(19, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-01-1920-1024x576.jpg', 'Reduced by 16.0% (21.9&nbsp;kB)', 117102, 139483, 1, '2016-04-29 17:10:10', NULL),
(20, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-01-1920-250x200.jpg', 'Reduced by 54.5% (21.2&nbsp;kB)', 18117, 39805, 1, '2016-04-29 17:10:10', NULL),
(21, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-02-1920.jpg', 'Reduced by 19.2% (113.5&nbsp;kB)', 488536, 604791, 1, '2016-04-29 17:10:11', NULL),
(22, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-02-1920-150x150.jpg', 'Reduced by 74.0% (19.1&nbsp;kB)', 6850, 26365, 1, '2016-04-29 17:10:11', NULL),
(23, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-02-1920-300x169.jpg', 'Reduced by 61.1% (19.1&nbsp;kB)', 12412, 31927, 1, '2016-04-29 17:10:11', NULL),
(24, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-02-1920-768x432.jpg', 'Reduced by 29.3% (19.1&nbsp;kB)', 47109, 66624, 1, '2016-04-29 17:10:11', NULL),
(25, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-02-1920-1024x576.jpg', 'Reduced by 21.3% (19.1&nbsp;kB)', 72106, 91621, 1, '2016-04-29 17:10:12', NULL),
(26, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/04/slider-02-1920-250x200.jpg', 'Reduced by 61.8% (19.1&nbsp;kB)', 12050, 31565, 1, '2016-04-29 17:10:12', NULL),
(27, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm.jpg', 'Reduced by 4.3% (59.3&nbsp;kB)', 1366250, 1427021, 1, '2016-05-02 14:22:04', NULL),
(28, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-150x150.jpg', 'Reduced by 9.2% (1.4&nbsp;kB)', 14318, 15776, 1, '2016-05-02 14:22:04', NULL),
(29, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-300x169.jpg', 'Reduced by 7.3% (2.3&nbsp;kB)', 30536, 32928, 1, '2016-05-02 14:22:04', NULL),
(30, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-768x432.jpg', 'Reduced by 4.4% (5.9&nbsp;kB)', 131267, 137342, 1, '2016-05-02 14:22:04', NULL),
(31, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-1024x576.jpg', 'Reduced by 3.7% (7.5&nbsp;kB)', 201987, 209684, 1, '2016-05-02 14:22:05', NULL),
(32, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-250x200.jpg', 'Reduced by 7.3% (2.2&nbsp;kB)', 27978, 30183, 1, '2016-05-02 14:22:05', NULL),
(33, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/junetitle_staff.gif', 'Reduced by 0.0% (8.0&nbsp;B)', 60725, 60733, 1, '2016-05-02 15:50:33', NULL),
(34, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/junetitle_staff-150x150.gif', 'Reduced by 0.2% (8.0&nbsp;B)', 3714, 3722, 1, '2016-05-02 15:50:33', NULL),
(35, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/junetitle_staff-300x169.gif', 'Reduced by 0.2% (8.0&nbsp;B)', 5060, 5068, 1, '2016-05-02 15:50:33', NULL),
(36, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/junetitle_staff-768x432.gif', 'Reduced by 0.1% (8.0&nbsp;B)', 15375, 15383, 1, '2016-05-02 15:50:33', NULL),
(37, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/junetitle_staff-1024x576.gif', 'Reduced by 0.1% (12.0&nbsp;B)', 23342, 23354, 1, '2016-05-02 15:50:33', NULL),
(38, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/junetitle_staff-250x200.gif', 'Reduced by 0.2% (8.0&nbsp;B)', 4714, 4722, 1, '2016-05-02 15:50:33', NULL),
(39, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/risingcruststill.jpg', 'Reduced by 1.8% (13.7&nbsp;kB)', 782193, 796231, 1, '2016-05-02 15:52:53', NULL),
(40, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/risingcruststill-150x150.jpg', 'Reduced by 8.4% (942.0&nbsp;B)', 10206, 11148, 1, '2016-05-02 15:52:53', NULL),
(41, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/risingcruststill-300x169.jpg', 'Reduced by 6.0% (1.2&nbsp;kB)', 18942, 20143, 1, '2016-05-02 15:52:53', NULL),
(42, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/risingcruststill-768x432.jpg', 'Reduced by 2.9% (2.2&nbsp;kB)', 73600, 75814, 1, '2016-05-02 15:52:53', NULL),
(43, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/risingcruststill-1024x576.jpg', 'Reduced by 2.1% (2.4&nbsp;kB)', 113613, 116085, 1, '2016-05-02 15:52:53', NULL),
(44, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/risingcruststill-250x200.jpg', 'Reduced by 6.1% (1.2&nbsp;kB)', 18351, 19543, 1, '2016-05-02 15:52:53', NULL),
(45, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/pizzeria_still.jpg', 'Reduced by 1.0% (11.6&nbsp;kB)', 1148739, 1160599, 1, '2016-05-02 16:07:45', NULL),
(46, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/pizzeria_still-150x150.jpg', 'Reduced by 9.7% (1.7&nbsp;kB)', 16165, 17910, 1, '2016-05-02 16:07:45', NULL),
(47, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/pizzeria_still-300x169.jpg', 'Reduced by 7.6% (2.3&nbsp;kB)', 28790, 31145, 1, '2016-05-02 16:07:45', NULL),
(48, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/pizzeria_still-768x432.jpg', 'Reduced by 6.3% (9.1&nbsp;kB)', 138305, 147631, 1, '2016-05-02 16:07:46', NULL),
(49, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/pizzeria_still-1024x576.jpg', 'Reduced by 5.7% (12.9&nbsp;kB)', 219194, 232356, 1, '2016-05-02 16:07:46', NULL),
(50, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/pizzeria_still-250x200.jpg', 'Reduced by 8.2% (2.7&nbsp;kB)', 30821, 33572, 1, '2016-05-02 16:07:46', NULL),
(51, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_Still.jpg', 'Reduced by 5.0% (38.2&nbsp;kB)', 740941, 780011, 1, '2016-05-02 16:18:00', NULL),
(52, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_Still-150x150.jpg', 'Reduced by 11.9% (845.0&nbsp;B)', 6273, 7118, 1, '2016-05-02 16:18:00', NULL),
(53, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_Still-300x125.jpg', 'Reduced by 7.8% (845.0&nbsp;B)', 9992, 10837, 1, '2016-05-02 16:18:01', NULL),
(54, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_Still-768x320.jpg', 'Reduced by 2.0% (880.0&nbsp;B)', 43162, 44042, 1, '2016-05-02 16:18:01', NULL),
(55, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_Still-1024x427.jpg', 'Reduced by 1.8% (1.3&nbsp;kB)', 71554, 72900, 1, '2016-05-02 16:18:02', NULL),
(56, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_Still-1920x800.jpg', 'Reduced by 1.7% (4.0&nbsp;kB)', 230853, 234948, 1, '2016-05-02 16:18:02', NULL),
(57, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_Still-250x200.jpg', 'Reduced by 6.7% (845.0&nbsp;B)', 11852, 12697, 1, '2016-05-02 16:18:02', NULL),
(58, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_169.gif', 'Reduced by 0.0% (8.0&nbsp;B)', 924709, 924717, 1, '2016-05-02 16:20:26', NULL),
(59, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_169-150x150.gif', 'Reduced by 0.1% (9.0&nbsp;B)', 14566, 14575, 1, '2016-05-02 16:20:26', NULL),
(60, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_169-300x169.gif', 'No savings', 29863, 29863, 1, '2016-05-02 16:20:26', NULL),
(61, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_169-768x432.gif', 'Reduced by 0.0% (14.0&nbsp;B)', 167529, 167543, 1, '2016-05-02 16:20:26', NULL),
(62, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_169-1024x576.gif', 'Reduced by 0.0% (133.0&nbsp;B)', 295971, 296104, 1, '2016-05-02 16:20:26', NULL),
(63, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/IE_169-250x200.gif', 'No savings', 27729, 27729, 1, '2016-05-02 16:20:26', NULL),
(64, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Final-Cut-1.00_01_39_03.Still002.jpg', 'Reduced by 5.1% (45.2&nbsp;kB)', 857254, 903525, 1, '2016-05-02 16:23:12', NULL),
(65, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Final-Cut-1.00_01_39_03.Still002-150x150.jpg', 'Reduced by 28.2% (4.4&nbsp;kB)', 11498, 16005, 1, '2016-05-02 16:23:12', NULL),
(66, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Final-Cut-1.00_01_39_03.Still002-300x169.jpg', 'Reduced by 16.9% (5.1&nbsp;kB)', 25867, 31140, 1, '2016-05-02 16:23:12', NULL),
(67, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Final-Cut-1.00_01_39_03.Still002-768x432.jpg', 'Reduced by 7.1% (7.6&nbsp;kB)', 102696, 110522, 1, '2016-05-02 16:23:13', NULL),
(68, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Final-Cut-1.00_01_39_03.Still002-1024x576.jpg', 'Reduced by 5.7% (9.5&nbsp;kB)', 162418, 172159, 1, '2016-05-02 16:23:13', NULL),
(69, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Final-Cut-1.00_01_39_03.Still002-250x200.jpg', 'Reduced by 18.1% (4.8&nbsp;kB)', 22447, 27405, 1, '2016-05-02 16:23:13', NULL),
(70, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Nike-Image.jpg', 'Reduced by 13.8% (118.9&nbsp;kB)', 761539, 883317, 1, '2016-05-02 16:32:28', NULL),
(71, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Nike-Image-150x150.jpg', 'Reduced by 75.5% (14.6&nbsp;kB)', 4844, 19792, 1, '2016-05-02 16:32:29', NULL),
(72, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Nike-Image-300x169.jpg', 'Reduced by 64.4% (14.6&nbsp;kB)', 8249, 23197, 1, '2016-05-02 16:32:29', NULL),
(73, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Nike-Image-768x432.jpg', 'Reduced by 28.0% (15.2&nbsp;kB)', 39828, 55347, 1, '2016-05-02 16:32:29', NULL),
(74, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Nike-Image-1024x576.jpg', 'Reduced by 19.0% (15.9&nbsp;kB)', 69701, 86008, 1, '2016-05-02 16:32:29', NULL),
(75, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Nike-Image-250x200.jpg', 'Reduced by 64.4% (14.6&nbsp;kB)', 8246, 23194, 1, '2016-05-02 16:32:29', NULL),
(76, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-1.jpg', 'Reduced by 4.3% (59.3&nbsp;kB)', 1366250, 1427021, 1, '2016-05-02 16:37:40', NULL),
(77, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-1-150x150.jpg', 'Reduced by 9.2% (1.4&nbsp;kB)', 14318, 15776, 1, '2016-05-02 16:37:40', NULL),
(78, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-1-300x169.jpg', 'Reduced by 7.3% (2.3&nbsp;kB)', 30536, 32928, 1, '2016-05-02 16:37:40', NULL),
(79, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-1-768x432.jpg', 'Reduced by 4.4% (5.9&nbsp;kB)', 131267, 137342, 1, '2016-05-02 16:37:40', NULL),
(80, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-1-1024x576.jpg', 'Reduced by 3.7% (7.5&nbsp;kB)', 201987, 209684, 1, '2016-05-02 16:37:41', NULL),
(81, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/cpm-1-250x200.jpg', 'Reduced by 7.3% (2.2&nbsp;kB)', 27978, 30183, 1, '2016-05-02 16:37:41', NULL),
(82, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8.jpeg', 'Reduced by 4.3% (11.8&nbsp;kB)', 265710, 277776, 1, '2016-05-02 16:38:46', NULL),
(83, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-150x150.jpeg', 'Reduced by 8.7% (769.0&nbsp;B)', 8037, 8806, 1, '2016-05-02 16:38:47', NULL),
(84, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-300x169.jpeg', 'Reduced by 6.8% (1.2&nbsp;kB)', 16984, 18215, 1, '2016-05-02 16:38:47', NULL),
(85, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-768x432.jpeg', 'Reduced by 6.1% (6.3&nbsp;kB)', 99069, 105548, 1, '2016-05-02 16:38:47', NULL),
(86, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-1024x576.jpeg', 'Reduced by 5.8% (9.9&nbsp;kB)', 164844, 174970, 1, '2016-05-02 16:38:47', NULL),
(87, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-250x200.jpeg', 'Reduced by 7.1% (1.2&nbsp;kB)', 16442, 17699, 1, '2016-05-02 16:38:47', NULL),
(88, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/TICM-Still.jpg', 'Reduced by 10.2% (131.0&nbsp;kB)', 1184000, 1318118, 1, '2016-05-02 16:39:37', NULL),
(89, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/TICM-Still-150x150.jpg', 'Reduced by 61.7% (20.9&nbsp;kB)', 13309, 34728, 1, '2016-05-02 16:39:37', NULL),
(90, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/TICM-Still-300x169.jpg', 'Reduced by 47.3% (21.3&nbsp;kB)', 24281, 46072, 1, '2016-05-02 16:39:38', NULL),
(91, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/TICM-Still-768x432.jpg', 'Reduced by 18.2% (23.9&nbsp;kB)', 109691, 134145, 1, '2016-05-02 16:39:38', NULL),
(92, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/TICM-Still-1024x576.jpg', 'Reduced by 13.1% (25.3&nbsp;kB)', 171840, 197791, 1, '2016-05-02 16:39:38', NULL),
(93, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/TICM-Still-250x200.jpg', 'Reduced by 46.0% (21.5&nbsp;kB)', 25870, 47892, 1, '2016-05-02 16:39:38', NULL),
(94, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Arbys-Still.jpg', 'Reduced by 11.2% (134.0&nbsp;kB)', 1087822, 1225084, 1, '2016-05-02 16:41:53', NULL),
(95, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Arbys-Still-150x150.jpg', 'Reduced by 66.7% (15.8&nbsp;kB)', 8099, 24313, 1, '2016-05-02 16:41:53', NULL),
(96, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Arbys-Still-300x169.jpg', 'Reduced by 54.5% (16.1&nbsp;kB)', 13765, 30244, 1, '2016-05-02 16:41:53', NULL),
(97, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Arbys-Still-768x432.jpg', 'Reduced by 21.1% (18.5&nbsp;kB)', 70680, 89632, 1, '2016-05-02 16:41:54', NULL),
(98, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Arbys-Still-1024x576.jpg', 'Reduced by 14.9% (20.7&nbsp;kB)', 120910, 142094, 1, '2016-05-02 16:41:54', NULL),
(99, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Arbys-Still-250x200.jpg', 'Reduced by 52.5% (16.1&nbsp;kB)', 14938, 31427, 1, '2016-05-02 16:41:54', NULL),
(100, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Sharpie-Still.jpg', 'Reduced by 9.6% (139.6&nbsp;kB)', 1349381, 1492309, 1, '2016-05-02 16:43:40', NULL),
(101, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Sharpie-Still-150x150.jpg', 'Reduced by 66.3% (21.5&nbsp;kB)', 11208, 33237, 1, '2016-05-02 16:43:40', NULL),
(102, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Sharpie-Still-300x169.jpg', 'Reduced by 46.9% (22.2&nbsp;kB)', 25776, 48524, 1, '2016-05-02 16:43:40', NULL),
(103, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Sharpie-Still-768x432.jpg', 'Reduced by 17.7% (25.3&nbsp;kB)', 120784, 146672, 1, '2016-05-02 16:43:40', NULL),
(104, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Sharpie-Still-1024x576.jpg', 'Reduced by 12.5% (26.8&nbsp;kB)', 191612, 219100, 1, '2016-05-02 16:43:40', NULL),
(105, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Sharpie-Still-250x200.jpg', 'Reduced by 49.2% (22.0&nbsp;kB)', 23263, 45819, 1, '2016-05-02 16:43:41', NULL),
(106, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_smoking.gif', 'Reduced by 0.0% (8.0&nbsp;B)', 1166187, 1166195, 1, '2016-05-02 16:44:41', NULL),
(107, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_smoking-150x150.gif', 'No savings', 18569, 18569, 1, '2016-05-02 16:44:42', NULL),
(108, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_smoking-300x169.gif', 'Reduced by 0.0% (6.0&nbsp;B)', 39820, 39826, 1, '2016-05-02 16:44:42', NULL),
(109, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_smoking-768x432.gif', 'Reduced by 0.0% (74.0&nbsp;B)', 218742, 218816, 1, '2016-05-02 16:44:42', NULL),
(110, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_smoking-1024x576.gif', 'No savings', 380602, 380602, 1, '2016-05-02 16:44:42', NULL),
(111, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_smoking-250x200.gif', 'Reduced by 0.0% (13.0&nbsp;B)', 35190, 35203, 1, '2016-05-02 16:44:42', NULL),
(113, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-150x150.gif', 'Reduced by 0.1% (23.0&nbsp;B)', 15577, 15600, 1, '2016-05-02 16:49:36', NULL),
(114, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-300x169.gif', 'Reduced by 0.0% (7.0&nbsp;B)', 32229, 32236, 1, '2016-05-02 16:49:36', NULL),
(115, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-768x432.gif', 'No savings', 185956, 185956, 1, '2016-05-02 16:49:36', NULL) ;
INSERT INTO `a2fwp_ewwwio_images` ( `id`, `path`, `results`, `image_size`, `orig_size`, `updates`, `updated`, `trace`) VALUES
(116, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-1024x576.gif', 'Reduced by 0.0% (50.0&nbsp;B)', 331463, 331513, 1, '2016-05-02 16:49:36', NULL),
(117, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-1.gif', 'Reduced by 0.0% (8.0&nbsp;B)', 1242101, 1242109, 1, '2016-05-02 16:49:51', NULL),
(118, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-1-150x150.gif', 'Reduced by 0.1% (23.0&nbsp;B)', 15577, 15600, 1, '2016-05-02 16:49:51', NULL),
(119, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-1-300x169.gif', 'Reduced by 0.0% (7.0&nbsp;B)', 32229, 32236, 1, '2016-05-02 16:49:51', NULL),
(120, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-1-768x432.gif', 'No savings', 185956, 185956, 1, '2016-05-02 16:49:52', NULL),
(121, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-1-1024x576.gif', 'Reduced by 0.0% (50.0&nbsp;B)', 331463, 331513, 1, '2016-05-02 16:49:52', NULL),
(122, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Bully-1-250x200.gif', 'No savings', 31780, 31780, 1, '2016-05-02 16:49:52', NULL),
(123, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Lotto.gif', 'Reduced by 0.0% (8.0&nbsp;B)', 1127162, 1127170, 1, '2016-05-02 16:57:49', NULL),
(124, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Lotto-150x150.gif', 'Reduced by 0.0% (7.0&nbsp;B)', 20513, 20520, 1, '2016-05-02 16:57:49', NULL),
(125, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Lotto-300x169.gif', 'Reduced by 0.1% (22.0&nbsp;B)', 41550, 41572, 1, '2016-05-02 16:57:49', NULL),
(126, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Lotto-768x432.gif', 'No savings', 224543, 224543, 1, '2016-05-02 16:57:50', NULL),
(127, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Lotto-1024x576.gif', 'No savings', 388936, 388936, 1, '2016-05-02 16:57:50', NULL),
(128, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Lotto-250x200.gif', 'Reduced by 0.0% (12.0&nbsp;B)', 40112, 40124, 1, '2016-05-02 16:57:50', NULL),
(129, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Dancer.gif', 'Reduced by 0.0% (8.0&nbsp;B)', 948166, 948174, 1, '2016-05-02 17:01:06', NULL),
(130, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Dancer-150x150.gif', 'Reduced by 0.3% (39.0&nbsp;B)', 13649, 13688, 1, '2016-05-02 17:01:06', NULL),
(131, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Dancer-300x169.gif', 'Reduced by 0.1% (17.0&nbsp;B)', 27013, 27030, 1, '2016-05-02 17:01:07', NULL),
(132, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Dancer-768x432.gif', 'Reduced by 0.0% (65.0&nbsp;B)', 146109, 146174, 1, '2016-05-02 17:01:07', NULL),
(133, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Dancer-1024x576.gif', 'No savings', 251958, 251958, 1, '2016-05-02 17:01:07', NULL),
(134, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Mike_Dancer-250x200.gif', 'Reduced by 0.0% (10.0&nbsp;B)', 26930, 26940, 1, '2016-05-02 17:01:07', NULL),
(135, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Subway-Still.jpg', 'Reduced by 4.3% (48.8&nbsp;kB)', 1100510, 1150509, 1, '2016-05-02 17:05:21', NULL),
(136, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Subway-Still-150x150.jpg', 'Reduced by 64.0% (23.2&nbsp;kB)', 13376, 37138, 1, '2016-05-02 17:05:21', NULL),
(137, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Subway-Still-300x169.jpg', 'Reduced by 48.6% (23.6&nbsp;kB)', 25598, 49770, 1, '2016-05-02 17:05:21', NULL),
(138, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Subway-Still-768x432.jpg', 'Reduced by 18.9% (25.6&nbsp;kB)', 112085, 138276, 1, '2016-05-02 17:05:21', NULL),
(139, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Subway-Still-1024x576.jpg', 'Reduced by 13.4% (26.3&nbsp;kB)', 173256, 200164, 1, '2016-05-02 17:05:21', NULL),
(140, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Subway-Still-250x200.jpg', 'Reduced by 48.6% (23.6&nbsp;kB)', 25590, 49807, 1, '2016-05-02 17:05:21', NULL),
(141, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Otterbox-Bucket-List-Tough.jpg', 'Reduced by 4.2% (26.2&nbsp;kB)', 604121, 630904, 1, '2016-05-02 17:48:05', NULL),
(142, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Otterbox-Bucket-List-Tough-150x150.jpg', 'Reduced by 32.6% (4.2&nbsp;kB)', 8958, 13283, 1, '2016-05-02 17:48:05', NULL),
(143, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Otterbox-Bucket-List-Tough-300x169.jpg', 'Reduced by 20.1% (4.4&nbsp;kB)', 17710, 22170, 1, '2016-05-02 17:48:06', NULL),
(144, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Otterbox-Bucket-List-Tough-768x432.jpg', 'Reduced by 6.0% (4.5&nbsp;kB)', 71628, 76205, 1, '2016-05-02 17:48:06', NULL),
(145, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Otterbox-Bucket-List-Tough-1024x576.jpg', 'Reduced by 3.9% (4.5&nbsp;kB)', 112322, 116939, 1, '2016-05-02 17:48:06', NULL),
(146, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Otterbox-Bucket-List-Tough-250x200.jpg', 'Reduced by 20.9% (4.3&nbsp;kB)', 16734, 21159, 1, '2016-05-02 17:48:06', NULL),
(147, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Dominica-The-New-16x9.jpg', 'Reduced by 8.8% (235.5&nbsp;kB)', 2499377, 2740505, 1, '2016-05-02 17:49:35', NULL),
(148, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Dominica-The-New-16x9-150x150.jpg', 'Reduced by 43.1% (10.5&nbsp;kB)', 14179, 24899, 1, '2016-05-02 17:49:35', NULL),
(149, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Dominica-The-New-16x9-300x169.jpg', 'Reduced by 27.6% (11.5&nbsp;kB)', 30906, 42676, 1, '2016-05-02 17:49:35', NULL),
(150, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Dominica-The-New-16x9-768x432.jpg', 'Reduced by 10.7% (17.7&nbsp;kB)', 151655, 169786, 1, '2016-05-02 17:49:35', NULL),
(151, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Dominica-The-New-16x9-1024x576.jpg', 'Reduced by 8.3% (21.0&nbsp;kB)', 236839, 258301, 1, '2016-05-02 17:49:35', NULL),
(152, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Dominica-The-New-16x9-250x200.jpg', 'Reduced by 28.3% (11.4&nbsp;kB)', 29506, 41175, 1, '2016-05-02 17:49:35', NULL),
(153, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Memphis-Putting-out-to-Pasture-16x9.jpg', 'Reduced by 9.3% (151.6&nbsp;kB)', 1514036, 1669233, 1, '2016-05-02 17:51:17', NULL),
(154, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Memphis-Putting-out-to-Pasture-16x9-150x150.jpg', 'Reduced by 62.9% (20.3&nbsp;kB)', 12307, 33140, 1, '2016-05-02 17:51:18', NULL),
(155, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Memphis-Putting-out-to-Pasture-16x9-300x169.jpg', 'Reduced by 45.0% (21.2&nbsp;kB)', 26549, 48287, 1, '2016-05-02 17:51:18', NULL),
(156, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Memphis-Putting-out-to-Pasture-16x9-768x432.jpg', 'Reduced by 16.6% (30.1&nbsp;kB)', 154727, 185522, 1, '2016-05-02 17:51:18', NULL),
(157, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Memphis-Putting-out-to-Pasture-16x9-1024x576.jpg', 'Reduced by 12.4% (34.9&nbsp;kB)', 251273, 286980, 1, '2016-05-02 17:51:18', NULL),
(158, '/srv/www/a2fpictures/htdocs/wp-content/uploads/2016/05/Memphis-Putting-out-to-Pasture-16x9-250x200.jpg', 'Reduced by 45.3% (21.3&nbsp;kB)', 26328, 48157, 1, '2016-05-02 17:51:18', NULL) ;

#
# End of data contents of table `a2fwp_ewwwio_images`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_links`
#

DROP TABLE IF EXISTS `a2fwp_links`;


#
# Table structure of table `a2fwp_links`
#

CREATE TABLE `a2fwp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_links`
#

#
# End of data contents of table `a2fwp_links`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_options`
#

DROP TABLE IF EXISTS `a2fwp_options`;


#
# Table structure of table `a2fwp_options`
#

CREATE TABLE `a2fwp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_options`
#
INSERT INTO `a2fwp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://a2fpictures.dev', 'yes'),
(2, 'home', 'http://a2fpictures.dev', 'yes'),
(3, 'blogname', 'A2F Pictures', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hello@johnkvang.com', 'yes'),
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
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:5:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:45:"ewww-image-optimizer/ewww-image-optimizer.php";i:2;s:21:"imsanity/imsanity.php";i:3;s:32:"wp-sync-db-master/wp-sync-db.php";i:4;s:55:"wp-sync-db-media-files-1.1.5/wp-sync-db-media-files.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'a2f-pictures', 'yes'),
(40, 'stylesheet', 'a2f-pictures', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '0', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '4', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'a2fwp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `a2fwp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1462326510;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1462326531;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1462326580;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(122, 'can_compress_scripts', '0', 'yes'),
(135, 'recently_activated', 'a:0:{}', 'yes'),
(139, 'acf_version', '5.3.7', 'yes'),
(142, 'WPLANG', '', 'yes'),
(178, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458957600;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(179, 'current_theme', 'A2F Pictures', 'yes'),
(180, 'theme_mods_a2f-pictures', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(181, 'theme_switched', '', 'yes'),
(212, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(334, 'ewww_image_optimizer_disable_pngout', '1', 'yes'),
(335, 'ewww_image_optimizer_optipng_level', '2', 'yes'),
(336, 'ewww_image_optimizer_pngout_level', '2', 'yes'),
(337, 'ewww_image_optimizer_jpegtran_copy', '1', 'yes'),
(338, 'ewww_image_optimizer_version', '280.0', 'yes'),
(341, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TmpFMk9EaDhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMUxUQTRMVEV4SURJek9qQTJPalV5IjtzOjM6InVybCI7czoyMjoiaHR0cDovL2EyZnBpY3R1cmVzLmRldiI7fQ==', 'yes'),
(427, 'category_children', 'a:0:{}', 'yes'),
(537, 'wpsdb_error_log', '********************************************\n******  Log date: 2016/03/29 13:00:51 ******\n********************************************\n\nWPSDB Error: We could not find: http://a2f.johnkvang.com. Are you sure this is the correct URL?\n\nAttempted to connect to: http://a2f.johnkvang.com/wp-admin/admin-ajax.php\n\nWP_Error Object\n(\n    [errors] => Array\n        (\n            [http_request_failed] => Array\n                (\n                    [0] => Could not resolve host: a2f.johnkvang.com\n                )\n\n        )\n\n    [error_data] => Array\n        (\n        )\n\n)\n\n\n', 'yes'),
(538, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"6yWOU+3Na/aNhCPt7dMQvh9sIAVBdV1+";s:10:"allow_pull";b:1;s:10:"allow_push";b:1;s:8:"profiles";a:2:{i:0;a:19:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"1";s:18:"exclude_post_types";s:1:"0";s:6:"action";s:4:"pull";s:15:"connection_info";s:58:"http://a2f.johnkvang.com\r\nfj91clu4fnzKJ2MbMkEqYT75+VAqkTEq";s:11:"replace_old";a:2:{i:1;s:19:"//a2f.johnkvang.com";i:2;s:34:"/home/plastik007/a2f.johnkvang.com";}s:11:"replace_new";a:2:{i:1;s:17:"//a2fpictures.dev";i:2;s:27:"/srv/www/a2fpictures/htdocs";}s:20:"table_migrate_option";s:24:"migrate_only_with_prefix";s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:23:"backup_only_with_prefix";s:11:"media_files";s:1:"1";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:1:"0";s:18:"create_new_profile";s:17:"a2f.johnkvang.com";s:4:"name";s:15:"PULL from STAGE";}i:1;a:19:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"1";s:18:"exclude_post_types";s:1:"0";s:6:"action";s:4:"push";s:15:"connection_info";s:58:"http://a2f.johnkvang.com\r\nfj91clu4fnzKJ2MbMkEqYT75+VAqkTEq";s:11:"replace_old";a:2:{i:1;s:17:"//a2fpictures.dev";i:2;s:27:"/srv/www/a2fpictures/htdocs";}s:11:"replace_new";a:2:{i:1;s:19:"//a2f.johnkvang.com";i:2;s:34:"/home/plastik007/a2f.johnkvang.com";}s:20:"table_migrate_option";s:24:"migrate_only_with_prefix";s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:23:"backup_only_with_prefix";s:11:"media_files";s:1:"1";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:1:"1";s:18:"create_new_profile";s:17:"a2f.johnkvang.com";s:4:"name";s:13:"PUSH to STAGE";}}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(539, 'rewrite_rules', 'a:110:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:37:"directors/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"directors/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"directors/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"directors/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"directors/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"directors/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"directors/([^/]+)/embed/?$";s:41:"index.php?director=$matches[1]&embed=true";s:30:"directors/([^/]+)/trackback/?$";s:35:"index.php?director=$matches[1]&tb=1";s:38:"directors/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?director=$matches[1]&paged=$matches[2]";s:45:"directors/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?director=$matches[1]&cpage=$matches[2]";s:34:"directors/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?director=$matches[1]&page=$matches[2]";s:26:"directors/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"directors/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"directors/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"directors/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"directors/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"directors/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"projects/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"projects/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"projects/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"projects/([^/]+)/embed/?$";s:40:"index.php?project=$matches[1]&embed=true";s:29:"projects/([^/]+)/trackback/?$";s:34:"index.php?project=$matches[1]&tb=1";s:37:"projects/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&paged=$matches[2]";s:44:"projects/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&cpage=$matches[2]";s:33:"projects/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?project=$matches[1]&page=$matches[2]";s:25:"projects/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"projects/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"projects/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(541, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.1";s:7:"version";s:5:"4.5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.1";s:7:"version";s:5:"4.5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.5.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.5-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.5";s:7:"version";s:3:"4.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1462316279;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}', 'yes'),
(548, 'options_about_us', 'A2F Pictures is an Emmy® award-winning production company founded in 2010 by Trent Hilborn and Mark Mazur.\r\n\r\nNo matter the size, scope or limitations, the focus is finding the greatest realization of the story behind every project.', 'no'),
(549, '_options_about_us', 'field_5727e52a44dfc', 'no'),
(550, 'options_address_&_contact_info', '<h4>A2F Pictures</h4>\r\n1500 Jackson St. Suite #294\r\nMinneapolis MN 55413\r\n\r\n612.345.7363\r\n<a href="mailto:info@a2fpictures.com">info@a2fpictures.com</a>', 'no'),
(551, '_options_address_&_contact_info', 'field_5727e58a7e0dc', 'no'),
(552, 'options_main_contact_info', '<h4>Executive Producer</h4>\r\nKaren Lawellen\r\nIt’s Karen!\r\n\r\n310. 990.5121\r\n<a href="mailto:karen@itskaren.com">karen@itskaren.com</a>', 'no'),
(553, '_options_main_contact_info', 'field_5727e5df7e0dd', 'no'),
(556, 'options_social_media_links_0_icon_code', 'fa-facebook-square', 'no'),
(557, '_options_social_media_links_0_icon_code', 'field_5727e75684df7', 'no'),
(558, 'options_social_media_links_0_link', 'https://www.facebook.com/A2fPictures', 'no'),
(559, '_options_social_media_links_0_link', 'field_5727e77d84df8', 'no'),
(560, 'options_social_media_links_1_icon_code', 'fa-instagram', 'no'),
(561, '_options_social_media_links_1_icon_code', 'field_5727e75684df7', 'no'),
(562, 'options_social_media_links_1_link', 'https://www.instagram.com/a2fpictures/', 'no'),
(563, '_options_social_media_links_1_link', 'field_5727e77d84df8', 'no'),
(564, 'options_social_media_links', '2', 'no'),
(565, '_options_social_media_links', 'field_5727e74784df6', 'no'),
(576, 'options_home_page_projects', 'a:10:{i:0;s:3:"101";i:1;s:2:"72";i:2;s:3:"126";i:3;s:3:"105";i:4;s:3:"132";i:5;s:2:"92";i:6;s:2:"28";i:7;s:2:"95";i:8;s:2:"81";i:9;s:2:"63";}', 'no'),
(577, '_options_home_page_projects', 'field_57280ae4ad917', 'no'),
(582, '_transient_timeout_acf_pro_get_remote_info', '1462359480', 'no'),
(583, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:36:"http://www.advancedcustomfields.com/";s:7:"version";s:5:"5.3.7";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.4.0";s:4:"tags";a:37:{i:0;s:5:"5.3.6";i:1;s:5:"5.3.5";i:2;s:5:"5.3.4";i:3;s:5:"5.3.3";i:4;s:5:"5.3.2";i:5;s:5:"5.3.1";i:6;s:5:"5.3.0";i:7;s:5:"5.2.9";i:8;s:5:"5.2.8";i:9;s:5:"5.2.7";i:10;s:5:"5.2.6";i:11;s:5:"5.2.5";i:12;s:5:"5.2.4";i:13;s:5:"5.2.3";i:14;s:5:"5.2.2";i:15;s:5:"5.2.1";i:16;s:5:"5.2.0";i:17;s:5:"5.1.9";i:18;s:5:"5.1.8";i:19;s:5:"5.1.7";i:20;s:5:"5.1.6";i:21;s:5:"5.1.5";i:22;s:5:"5.1.4";i:23;s:5:"5.1.3";i:24;s:5:"5.1.2";i:25;s:5:"5.1.1";i:26;s:5:"5.1.0";i:27;s:5:"5.0.9";i:28;s:5:"5.0.8";i:29;s:5:"5.0.7";i:30;s:5:"5.0.6";i:31;s:5:"5.0.5";i:32;s:5:"5.0.4";i:33;s:5:"5.0.3";i:34;s:5:"5.0.2";i:35;s:5:"5.0.1";i:36;s:5:"5.0.0";}s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:11:"description";s:4328:"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="http://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="http://www.advancedcustomfields.com/">www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="http://www.advancedcustomfields.com/resources/#getting-started)">www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="http://www.advancedcustomfields.com/resources/#field-types)">www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="http://www.advancedcustomfields.com/resources/#functions)">www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="http://www.advancedcustomfields.com/resources/#actions)">www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="http://www.advancedcustomfields.com/resources/#filters)">www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="http://www.advancedcustomfields.com/resources/#how-to)">www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="http://www.advancedcustomfields.com/resources/#tutorials)">www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group\'s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:6088:"<h4> 5.3.7 </h4>\n<ul><li>Options page: Added new <code>update_button</code> setting to modify update button text</li><li>Options page: Added columns support (Screen Options)</li><li>Core: Added widget preview / save compatibility with the customizer</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated French Translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.3.6.1 </h4>\n<ul><li>Flexible Content field: Fixed PHP error in <code>acf/fields/flexible_content/layout_title</code> filter (when used as a sub field)</li><li>Core: Fixed bug causing `get_field()` to load from the incorrect post (when within a custom WP_Query loop)</li></ul>\n<h4> 5.3.6 </h4>\n<ul><li>Flexible Content field: Added new <code>acf/fields/flexible_content/layout_title</code> filter to customize layout title</li><li>Image field: Fixed bug where searching within media library would ignore restriction settings</li><li>File field: Same as above</li><li>Field group: Added post types to comment form location rules</li><li>Color Picker field: Added <code>color_picker_args</code> JS filter to modify wpColorPicker args</li><li>API: Improved `get_` functions to load value from the current queried object (post, user, term)</li><li>Core: Added new <code>acf/translate_field</code> filter to translate field settings text</li><li>Core: Added new <code>acf/translate_field_group</code> filter to translate field group settings text</li><li>Core: Removed <code>l10n_field</code> and <code>l10n_field_group</code> settings</li><li>Core: Fixed bug causing <code>acf/input/admin_head</code> action to run twice</li><li>Core: Added support for new WP 4.5 term edit page</li><li>Core: Moved google map and wysiwyg JS initialisation later in the page load to help speed up edit screens</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.3.5 </h4>\n<ul><li>User field: Fixed pagination bug causing missing results</li><li>Core: Added new filter <code>acf/location/screen</code> to customize location rules matching args</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Dutch translation - thanks to Derk Oosterveld</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Added Swiss German translation - thanks to Raphael Hüni</li></ul>\n<h4> 5.3.4 </h4>\n<ul><li>User field: Added pagination for Select2 results</li><li>Tab field: Fixed issue where no tab was active within a widget</li><li>Taxonomy field: Fixed issue where term order was lost when using <code>load_terms</code> setting</li><li>Image field: Alt tag will now update when editing/changing selected image</li><li>Field group: Removed Comic sans <code>Drag/drop</code> text (OMG)</li><li>Core: Changed button classes from <code>.acf-button</code> to <code>.button</code></li><li>Core: Fixed double `__()` issue when exporting field group with new l10n settings</li><li>Core: Removed some <code>wp_cache_delete()</code> functions to improve load speed on heavily cached websites</li><li>Core: Removed `esc_html()` from field label and added new filter <code>acf/get_field_label</code></li><li>Core: Minor fixes and improvements</li><li>API: Added new <code>honeypot</code> setting to the `acf_form()` function</li><li>Language: Added Bulgarian translation - thanks to Marin Atanasov</li><li>Language: Added Swiss German translation - thanks to Raphael Hüni</li><li>Language: Added Indonesian translation - thanks to Rio Bermano</li></ul>\n<h4> 5.3.3.2 </h4>\n<ul><li>Core: Fixed bug preventing new translation settings <code>l10n_field</code> and <code>l10n_field_group</code></li><li>Core: Fixed bug preventing plugin updates when included within theme</li><li>Core: Added `esc_html()` to field label</li></ul>\n<h4> 5.3.3.1 </h4>\n<ul><li>Tab field: Fixed bug causing issues with conditional logic</li><li>WYSIWYG field: Fixed PHP error on front end form</li></ul>\n<h4> 5.3.3 </h4>\n<ul><li>Google Maps field: Fixed bug where pasting value did not trigger auto complete</li><li>Select field: Improved Select2 search matching for special characters</li><li>Select field: Improved asset loading to allow other Select2 libraries to load first</li><li>Select field: Added compatibility for both Select2 v3 and v4</li><li>WYSIWYG field: Added new responsive images filter to the <code>acf_the_content</code> filter</li><li>oEmbed field: Added compatibility for custom oEmbed handlers</li><li>Flexible Content field: Fixed bug causing sub fields to move when duplicating layouts</li><li>Core: Added new translation settings <code>l10n</code>, <code>l10n_textdomain</code>, <code>l10n_field</code> and <code>l10n_field_group</code></li><li>Core: Improved Export to PHP feature which now uses the above translation settings</li><li>Core: Fixed PHP error preventing new field groups from loading when editing a post</li><li>Core: Added hierarchy to taxonomy terms shown in drop down elements</li><li>Core: Improved update logic to ignore plugin when included within a theme / plugin</li><li>API: Improved `acf_form()` loading efficiency when using <code>new_post</code> setting</li><li>API: Improved `add_row()` function to work when no value exists</li><li>API: Added new function `get_row_index()` to use within the `have_rows()` loop</li><li>Language: Updated Polish translation - thanks to Michal Lepiarz</li><li>Language: Updated Persian translation - thanks to Kamel</li><li>Language: Updated Spanish translation - thanks to Federico Schäfer</li><li>Language: Updated Norwegian translation - thanks to Havard Grimelid</li><li>Language: Updated Swedish translation - thanks to Björn Göransson</li></ul>\n<h4> 5.3.2.2 </h4>\n<ul><li>Core: Fixed PHP error when registering a local field missing one of more settings</li><li>Core: Fixed incorrect json load_path setting when WPML is active</li><li>Language: Updated Polish translation - thanks to Michal Lepiarz</li></ul>\n<h4> 5.3.2.1 </h4>\n<ul><li>Core: Fixed bug causing issues when loading values from an options page, widget or taxonomy term</li></ul>\n";s:14:"upgrade_notice";s:550:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="http://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no'),
(584, '_site_transient_timeout_theme_roots', '1462318080', 'yes'),
(585, '_site_transient_theme_roots', 'a:4:{s:12:"a2f-pictures";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(586, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1462316282;s:7:"checked";a:4:{s:12:"a2f-pictures";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.1";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.5.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.7.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.2.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(588, '_transient_timeout_plugin_slugs', '1462402827', 'no'),
(589, '_transient_plugin_slugs', 'a:5:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:45:"ewww-image-optimizer/ewww-image-optimizer.php";i:2;s:21:"imsanity/imsanity.php";i:3;s:32:"wp-sync-db-master/wp-sync-db.php";i:4;s:55:"wp-sync-db-media-files-1.1.5/wp-sync-db-media-files.php";}', 'no'),
(590, 'ewww_image_optimizer_bulk_attachments', '', 'no'),
(591, 'ewww_image_optimizer_flag_attachments', '', 'no'),
(592, 'ewww_image_optimizer_ngg_attachments', '', 'no'),
(593, 'ewww_image_optimizer_aux_attachments', '', 'no'),
(594, 'ewww_image_optimizer_defer_attachments', '', 'no'),
(595, 'ewww_image_optimizer_jpg_level', '10', 'yes'),
(596, 'ewww_image_optimizer_png_level', '10', 'yes'),
(597, 'ewww_image_optimizer_gif_level', '10', 'yes'),
(598, 'ewww_image_optimizer_pdf_level', '0', 'yes'),
(599, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1462317476;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:45:"ewww-image-optimizer/ewww-image-optimizer.php";O:8:"stdClass":7:{s:2:"id";s:5:"32121";s:4:"slug";s:20:"ewww-image-optimizer";s:6:"plugin";s:45:"ewww-image-optimizer/ewww-image-optimizer.php";s:11:"new_version";s:5:"2.8.0";s:3:"url";s:51:"https://wordpress.org/plugins/ewww-image-optimizer/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/ewww-image-optimizer.2.8.0.zip";s:14:"upgrade_notice";s:204:"added: resizing for uploaded images, set max width and height and optionally resize all existing images\nchanged: settings have been revamped, please check to make sure your settings were migrated properly";}s:21:"imsanity/imsanity.php";O:8:"stdClass":7:{s:2:"id";s:5:"24171";s:4:"slug";s:8:"imsanity";s:6:"plugin";s:21:"imsanity/imsanity.php";s:11:"new_version";s:5:"2.3.6";s:3:"url";s:39:"https://wordpress.org/plugins/imsanity/";s:7:"package";s:51:"https://downloads.wordpress.org/plugin/imsanity.zip";s:14:"upgrade_notice";s:213:"tested up to WP 4.4\nif resized image is not smaller than original, then keep original\nallow IMSANITY_AJAX_MAX_RECORDS to be overridden in wp-config.php\nif png-to-jpg is enabled, replace png transparency with white";}}}', 'yes') ;

#
# End of data contents of table `a2fwp_options`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_postmeta`
#

DROP TABLE IF EXISTS `a2fwp_postmeta`;


#
# Table structure of table `a2fwp_postmeta`
#

CREATE TABLE `a2fwp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_postmeta`
#
INSERT INTO `a2fwp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1462232844:1'),
(37, 13, '_menu_item_type', 'custom'),
(38, 13, '_menu_item_menu_item_parent', '0'),
(39, 13, '_menu_item_object_id', '13'),
(40, 13, '_menu_item_object', 'custom'),
(41, 13, '_menu_item_target', ''),
(42, 13, '_menu_item_classes', 'a:1:{i:0;s:14:"footer-contact";}'),
(43, 13, '_menu_item_xfn', ''),
(44, 13, '_menu_item_url', '#'),
(46, 14, '_menu_item_type', 'custom'),
(47, 14, '_menu_item_menu_item_parent', '0'),
(48, 14, '_menu_item_object_id', '14'),
(49, 14, '_menu_item_object', 'custom'),
(50, 14, '_menu_item_target', ''),
(51, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 14, '_menu_item_xfn', ''),
(53, 14, '_menu_item_url', '#'),
(55, 4, '_wp_page_template', 'page-home.php'),
(56, 16, '_edit_last', '2'),
(57, 16, '_edit_lock', '1462208530:2'),
(58, 18, '_edit_last', '1'),
(59, 18, '_edit_lock', '1461811152:1'),
(60, 20, '_edit_last', '1'),
(61, 20, '_edit_lock', '1461811190:1'),
(62, 22, '_edit_last', '1'),
(63, 22, '_edit_lock', '1462317530:1'),
(64, 28, '_edit_last', '1'),
(65, 28, '_edit_lock', '1462209007:2'),
(66, 30, '_edit_last', '1'),
(67, 30, '_edit_lock', '1462208861:2'),
(68, 32, '_edit_last', '1'),
(69, 32, '_edit_lock', '1461883714:1'),
(70, 36, 'client', 'Netherrealm Studios'),
(71, 36, '_client', 'field_572181471e1e5'),
(72, 36, 'director', 'a:1:{i:0;s:2:"16";}'),
(73, 36, '_director', 'field_5721815e1e1e6'),
(74, 36, 'vimeo_link', ''),
(75, 36, '_vimeo_link', 'field_572181986e94f'),
(76, 28, 'client', 'Netherrealm Studios'),
(77, 28, '_client', 'field_572181471e1e5'),
(78, 28, 'director', '16'),
(79, 28, '_director', 'field_5721815e1e1e6'),
(80, 28, 'vimeo_link', ''),
(81, 28, '_vimeo_link', 'field_572181986e94f'),
(82, 28, 'agency', 'AKQA'),
(83, 28, '_agency', 'field_572182ac820a7'),
(89, 40, 'client', 'Netherrealm Studios'),
(90, 40, '_client', 'field_572181471e1e5'),
(91, 40, 'agency', 'AKQA'),
(92, 40, '_agency', 'field_572182ac820a7'),
(93, 40, 'director', '16'),
(94, 40, '_director', 'field_5721815e1e1e6'),
(95, 40, 'vimeo_link', ''),
(96, 40, '_vimeo_link', 'field_572181986e94f'),
(97, 41, 'client', 'Sleep Thieves'),
(98, 41, '_client', 'field_572181471e1e5'),
(99, 41, 'agency', ''),
(100, 41, '_agency', 'field_572182ac820a7'),
(101, 41, 'director', '20'),
(102, 41, '_director', 'field_5721815e1e1e6'),
(103, 41, 'vimeo_link', ''),
(104, 41, '_vimeo_link', 'field_572181986e94f'),
(105, 30, 'client', 'Sleep Thieves'),
(106, 30, '_client', 'field_572181471e1e5'),
(107, 30, 'agency', ''),
(108, 30, '_agency', 'field_572182ac820a7'),
(109, 30, 'director', '20'),
(110, 30, '_director', 'field_5721815e1e1e6'),
(111, 30, 'vimeo_link', ''),
(112, 30, '_vimeo_link', 'field_572181986e94f'),
(114, 42, 'client', 'Sleep Thieves'),
(115, 42, '_client', 'field_572181471e1e5'),
(116, 42, 'agency', ''),
(117, 42, '_agency', 'field_572182ac820a7'),
(118, 42, 'director', '20'),
(119, 42, '_director', 'field_5721815e1e1e6'),
(120, 42, 'vimeo_id', '117937270'),
(121, 42, '_vimeo_id', 'field_572181986e94f'),
(122, 30, 'vimeo_id', '117937270'),
(123, 30, '_vimeo_id', 'field_572181986e94f'),
(124, 43, 'client', 'Netherrealm Studios'),
(125, 43, '_client', 'field_572181471e1e5'),
(126, 43, 'agency', 'AKQA'),
(127, 43, '_agency', 'field_572182ac820a7'),
(128, 43, 'director', '16'),
(129, 43, '_director', 'field_5721815e1e1e6'),
(130, 43, 'vimeo_id', '119891412'),
(131, 43, '_vimeo_id', 'field_572181986e94f'),
(132, 28, 'vimeo_id', '119891412'),
(133, 28, '_vimeo_id', 'field_572181986e94f'),
(134, 44, '_menu_item_type', 'post_type'),
(135, 44, '_menu_item_menu_item_parent', '0'),
(136, 44, '_menu_item_object_id', '22'),
(137, 44, '_menu_item_object', 'director'),
(138, 44, '_menu_item_target', ''),
(139, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 44, '_menu_item_xfn', ''),
(141, 44, '_menu_item_url', ''),
(143, 45, '_menu_item_type', 'post_type') ;
INSERT INTO `a2fwp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(144, 45, '_menu_item_menu_item_parent', '0'),
(145, 45, '_menu_item_object_id', '20'),
(146, 45, '_menu_item_object', 'director'),
(147, 45, '_menu_item_target', ''),
(148, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 45, '_menu_item_xfn', ''),
(150, 45, '_menu_item_url', ''),
(152, 46, '_menu_item_type', 'post_type'),
(153, 46, '_menu_item_menu_item_parent', '0'),
(154, 46, '_menu_item_object_id', '18'),
(155, 46, '_menu_item_object', 'director'),
(156, 46, '_menu_item_target', ''),
(157, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 46, '_menu_item_xfn', ''),
(159, 46, '_menu_item_url', ''),
(161, 47, '_menu_item_type', 'post_type'),
(162, 47, '_menu_item_menu_item_parent', '0'),
(163, 47, '_menu_item_object_id', '16'),
(164, 47, '_menu_item_object', 'director'),
(165, 47, '_menu_item_target', ''),
(166, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(167, 47, '_menu_item_xfn', ''),
(168, 47, '_menu_item_url', ''),
(170, 48, '_wp_attached_file', '2016/04/slider-01-1920.jpg'),
(171, 48, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:26:"2016/04/slider-01-1920.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:26:"slider-01-1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 69.0% (20.8&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:26:"slider-01-1920-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 53.4% (21.2&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:26:"slider-01-1920-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 22.7% (22.0&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:27:"slider-01-1920-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 16.0% (21.9&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:26:"slider-01-1920-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 54.5% (21.2&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:32:"Reduced by 13.6% (106.2&nbsp;kB)";}'),
(172, 49, '_wp_attached_file', '2016/04/slider-02-1920.jpg'),
(173, 49, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:26:"2016/04/slider-02-1920.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:26:"slider-02-1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 74.0% (19.1&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:26:"slider-02-1920-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 61.1% (19.1&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:26:"slider-02-1920-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 29.3% (19.1&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:27:"slider-02-1920-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 21.3% (19.1&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:26:"slider-02-1920-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 61.8% (19.1&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:32:"Reduced by 19.2% (113.5&nbsp;kB)";}'),
(174, 30, '_thumbnail_id', '49'),
(175, 28, '_thumbnail_id', '48'),
(176, 50, '_edit_last', '1'),
(177, 50, '_wp_page_template', 'page-test.php'),
(178, 50, '_edit_lock', '1462243369:1'),
(179, 53, '_edit_lock', '1462208859:2'),
(180, 53, '_edit_last', '2'),
(181, 54, '_wp_attached_file', '2016/05/cpm.jpg'),
(182, 54, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:15:"2016/05/cpm.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:15:"cpm-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.2% (1.4&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:15:"cpm-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.3% (2.3&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:15:"cpm-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.4% (5.9&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:16:"cpm-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.7% (7.5&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:15:"cpm-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.3% (2.2&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 4.3% (59.3&nbsp;kB)";}'),
(183, 53, '_thumbnail_id', '54'),
(184, 55, 'client', 'Chex Party Mix'),
(185, 55, '_client', 'field_572181471e1e5'),
(186, 55, 'agency', 'Fast Horse'),
(187, 55, '_agency', 'field_572182ac820a7'),
(188, 55, 'director', '22'),
(189, 55, '_director', 'field_5721815e1e1e6'),
(190, 55, 'vimeo_id', 'https://vimeo.com/146042088'),
(191, 55, '_vimeo_id', 'field_572181986e94f'),
(192, 53, 'client', 'Chex Party Mix'),
(193, 53, '_client', 'field_572181471e1e5'),
(194, 53, 'agency', 'Fast Horse'),
(195, 53, '_agency', 'field_572182ac820a7'),
(196, 53, 'director', '22'),
(197, 53, '_director', 'field_5721815e1e1e6'),
(198, 53, 'vimeo_id', '146042088'),
(199, 53, '_vimeo_id', 'field_572181986e94f'),
(200, 56, '_edit_lock', '1462208852:2'),
(201, 56, '_edit_last', '2'),
(202, 57, '_wp_attached_file', '2016/05/junetitle_staff.gif'),
(203, 57, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:27:"2016/05/junetitle_staff.gif";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:27:"junetitle_staff-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:28:"Reduced by 0.2% (8.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:27:"junetitle_staff-300x169.gif";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:28:"Reduced by 0.2% (8.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:27:"junetitle_staff-768x432.gif";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:28:"Reduced by 0.1% (8.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:28:"junetitle_staff-1024x576.gif";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.1% (12.0&nbsp;B)";}s:11:"movie-thumb";a:5:{s:4:"file";s:27:"junetitle_staff-250x200.gif";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:28:"Reduced by 0.2% (8.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (8.0&nbsp;B)";}'),
(204, 56, '_thumbnail_id', '57'),
(205, 58, 'client', 'Short Film'),
(206, 58, '_client', 'field_572181471e1e5'),
(207, 58, 'agency', ''),
(208, 58, '_agency', 'field_572182ac820a7'),
(209, 58, 'director', '16'),
(210, 58, '_director', 'field_5721815e1e1e6'),
(211, 58, 'vimeo_id', 'https://vimeo.com/99554276/'),
(212, 58, '_vimeo_id', 'field_572181986e94f'),
(213, 56, 'client', 'Short Film'),
(214, 56, '_client', 'field_572181471e1e5'),
(215, 56, 'agency', ''),
(216, 56, '_agency', 'field_572182ac820a7'),
(217, 56, 'director', '16'),
(218, 56, '_director', 'field_5721815e1e1e6'),
(219, 56, 'vimeo_id', '99554276'),
(220, 56, '_vimeo_id', 'field_572181986e94f'),
(221, 59, '_edit_lock', '1462208843:2'),
(222, 59, '_edit_last', '2'),
(223, 60, '_wp_attached_file', '2016/05/risingcruststill.jpg'),
(224, 60, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:28:"2016/05/risingcruststill.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:28:"risingcruststill-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.4% (942.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:28:"risingcruststill-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.0% (1.2&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:28:"risingcruststill-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 2.9% (2.2&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:29:"risingcruststill-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 2.1% (2.4&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:28:"risingcruststill-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.1% (1.2&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 1.8% (13.7&nbsp;kB)";}'),
(225, 59, '_thumbnail_id', '60'),
(226, 61, 'client', ' DiGiorno'),
(227, 61, '_client', 'field_572181471e1e5'),
(228, 61, 'agency', ''),
(229, 61, '_agency', 'field_572182ac820a7'),
(230, 61, 'director', '16'),
(231, 61, '_director', 'field_5721815e1e1e6'),
(232, 61, 'vimeo_id', 'https://vimeo.com/159237741'),
(233, 61, '_vimeo_id', 'field_572181986e94f'),
(234, 59, 'client', 'DiGiorno'),
(235, 59, '_client', 'field_572181471e1e5'),
(236, 59, 'agency', ''),
(237, 59, '_agency', 'field_572182ac820a7'),
(238, 59, 'director', '16'),
(239, 59, '_director', 'field_5721815e1e1e6'),
(240, 59, 'vimeo_id', '159237741'),
(241, 59, '_vimeo_id', 'field_572181986e94f'),
(242, 63, '_edit_lock', '1462208864:2'),
(243, 63, '_edit_last', '2'),
(244, 64, 'client', 'DiGiorno'),
(245, 64, '_client', 'field_572181471e1e5'),
(246, 64, 'agency', 'Reach Agency') ;
INSERT INTO `a2fwp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(247, 64, '_agency', 'field_572182ac820a7'),
(248, 64, 'director', '16'),
(249, 64, '_director', 'field_5721815e1e1e6'),
(250, 64, 'vimeo_id', 'https://vimeo.com/159235954'),
(251, 64, '_vimeo_id', 'field_572181986e94f'),
(252, 63, 'client', 'DiGiorno'),
(253, 63, '_client', 'field_572181471e1e5'),
(254, 63, 'agency', 'Reach Agency'),
(255, 63, '_agency', 'field_572182ac820a7'),
(256, 63, 'director', '16'),
(257, 63, '_director', 'field_5721815e1e1e6'),
(258, 63, 'vimeo_id', '159235954'),
(259, 63, '_vimeo_id', 'field_572181986e94f'),
(260, 65, '_wp_attached_file', '2016/05/pizzeria_still.jpg'),
(261, 65, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:26:"2016/05/pizzeria_still.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:26:"pizzeria_still-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.7% (1.7&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:26:"pizzeria_still-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.6% (2.3&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:26:"pizzeria_still-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.3% (9.1&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:27:"pizzeria_still-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 5.7% (12.9&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:26:"pizzeria_still-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 8.2% (2.7&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 1.0% (11.6&nbsp;kB)";}'),
(262, 63, '_thumbnail_id', '65'),
(263, 66, '_edit_lock', '1462208830:2'),
(264, 66, '_edit_last', '2'),
(265, 67, 'client', 'Chevrolet'),
(266, 67, '_client', 'field_572181471e1e5'),
(267, 67, 'agency', ''),
(268, 67, '_agency', 'field_572182ac820a7'),
(269, 67, 'director', '16'),
(270, 67, '_director', 'field_5721815e1e1e6'),
(271, 67, 'vimeo_id', 'https://vimeo.com/129806235'),
(272, 67, '_vimeo_id', 'field_572181986e94f'),
(273, 66, 'client', 'Chevrolet'),
(274, 66, '_client', 'field_572181471e1e5'),
(275, 66, 'agency', ''),
(276, 66, '_agency', 'field_572182ac820a7'),
(277, 66, 'director', '16'),
(278, 66, '_director', 'field_5721815e1e1e6'),
(279, 66, 'vimeo_id', '129806235'),
(280, 66, '_vimeo_id', 'field_572181986e94f'),
(281, 68, '_wp_attached_file', '2016/05/IE_Still.jpg'),
(282, 68, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:800;s:4:"file";s:20:"2016/05/IE_Still.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:5:{s:4:"file";s:20:"IE_Still-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 11.9% (845.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:20:"IE_Still-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 7.8% (845.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:20:"IE_Still-768x320.jpg";s:5:"width";i:768;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 2.0% (880.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:21:"IE_Still-1024x427.jpg";s:5:"width";i:1024;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 1.8% (1.3&nbsp;kB)";}s:10:"movie-full";a:5:{s:4:"file";s:21:"IE_Still-1920x800.jpg";s:5:"width";i:1920;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 1.7% (4.0&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:20:"IE_Still-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 6.7% (845.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 5.0% (38.2&nbsp;kB)";}'),
(284, 69, '_wp_attached_file', '2016/05/IE_169.gif'),
(285, 69, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2016/05/IE_169.gif";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:18:"IE_169-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:28:"Reduced by 0.1% (9.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:18:"IE_169-300x169.gif";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:10:"No savings";}s:12:"medium_large";a:5:{s:4:"file";s:18:"IE_169-768x432.gif";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.0% (14.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:19:"IE_169-1024x576.gif";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:30:"Reduced by 0.0% (133.0&nbsp;B)";}s:11:"movie-thumb";a:5:{s:4:"file";s:18:"IE_169-250x200.gif";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:10:"No savings";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (8.0&nbsp;B)";}'),
(286, 66, '_thumbnail_id', '69'),
(287, 70, '_edit_lock', '1462206131:2'),
(288, 70, '_edit_last', '2'),
(289, 70, '_wp_trash_meta_status', 'draft'),
(290, 70, '_wp_trash_meta_time', '1462206146'),
(291, 72, '_edit_lock', '1462208818:2'),
(292, 72, '_edit_last', '2'),
(293, 73, '_wp_attached_file', '2016/05/Final-Cut-1.00_01_39_03.Still002.jpg'),
(294, 73, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:44:"2016/05/Final-Cut-1.00_01_39_03.Still002.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:44:"Final-Cut-1.00_01_39_03.Still002-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 28.2% (4.4&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:44:"Final-Cut-1.00_01_39_03.Still002-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 16.9% (5.1&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:44:"Final-Cut-1.00_01_39_03.Still002-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.1% (7.6&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:45:"Final-Cut-1.00_01_39_03.Still002-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.7% (9.5&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:44:"Final-Cut-1.00_01_39_03.Still002-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 18.1% (4.8&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 5.1% (45.2&nbsp;kB)";}'),
(295, 72, '_thumbnail_id', '73'),
(296, 74, 'client', 'Deluxe '),
(297, 74, '_client', 'field_572181471e1e5'),
(298, 74, 'agency', ''),
(299, 74, '_agency', 'field_572182ac820a7'),
(300, 74, 'director', '18'),
(301, 74, '_director', 'field_5721815e1e1e6'),
(302, 74, 'vimeo_id', 'https://vimeo.com/137079639'),
(303, 74, '_vimeo_id', 'field_572181986e94f'),
(304, 72, 'client', 'Deluxe'),
(305, 72, '_client', 'field_572181471e1e5'),
(306, 72, 'agency', ''),
(307, 72, '_agency', 'field_572182ac820a7'),
(308, 72, 'director', '18'),
(309, 72, '_director', 'field_5721815e1e1e6'),
(310, 72, 'vimeo_id', '137079639'),
(311, 72, '_vimeo_id', 'field_572181986e94f'),
(312, 75, '_edit_lock', '1462208812:2'),
(313, 75, '_edit_last', '2'),
(314, 76, '_wp_attached_file', '2016/05/Nike-Image.jpg'),
(315, 76, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:22:"2016/05/Nike-Image.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:22:"Nike-Image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 75.5% (14.6&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:22:"Nike-Image-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 64.4% (14.6&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:22:"Nike-Image-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 28.0% (15.2&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:23:"Nike-Image-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 19.0% (15.9&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:22:"Nike-Image-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 64.4% (14.6&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:32:"Reduced by 13.8% (118.9&nbsp;kB)";}'),
(316, 75, '_thumbnail_id', '76'),
(317, 77, 'client', ''),
(318, 77, '_client', 'field_572181471e1e5'),
(319, 77, 'agency', ''),
(320, 77, '_agency', 'field_572182ac820a7'),
(321, 77, 'director', '18'),
(322, 77, '_director', 'field_5721815e1e1e6'),
(323, 77, 'vimeo_id', 'https://vimeo.com/113530644'),
(324, 77, '_vimeo_id', 'field_572181986e94f'),
(325, 75, 'client', ''),
(326, 75, '_client', 'field_572181471e1e5'),
(327, 75, 'agency', ''),
(328, 75, '_agency', 'field_572182ac820a7'),
(329, 75, 'director', '18'),
(330, 75, '_director', 'field_5721815e1e1e6'),
(331, 75, 'vimeo_id', '113530644'),
(332, 75, '_vimeo_id', 'field_572181986e94f'),
(333, 78, '_edit_lock', '1462208870:2'),
(334, 78, '_edit_last', '2'),
(335, 79, '_wp_attached_file', '2016/05/cpm-1.jpg'),
(336, 79, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:17:"2016/05/cpm-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:17:"cpm-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 9.2% (1.4&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:17:"cpm-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.3% (2.3&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:17:"cpm-1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 4.4% (5.9&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:18:"cpm-1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.7% (7.5&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:17:"cpm-1-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.3% (2.2&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 4.3% (59.3&nbsp;kB)";}'),
(337, 78, '_thumbnail_id', '79'),
(338, 80, 'client', 'Chex Party Mix'),
(339, 80, '_client', 'field_572181471e1e5'),
(340, 80, 'agency', 'Fast Horse'),
(341, 80, '_agency', 'field_572182ac820a7'),
(342, 80, 'director', '22'),
(343, 80, '_director', 'field_5721815e1e1e6'),
(344, 80, 'vimeo_id', 'https://vimeo.com/146042088'),
(345, 80, '_vimeo_id', 'field_572181986e94f'),
(346, 78, 'client', 'Chex Party Mix'),
(347, 78, '_client', 'field_572181471e1e5') ;
INSERT INTO `a2fwp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(348, 78, 'agency', 'Fast Horse'),
(349, 78, '_agency', 'field_572182ac820a7'),
(350, 78, 'director', '22'),
(351, 78, '_director', 'field_5721815e1e1e6'),
(352, 78, 'vimeo_id', '146042088'),
(353, 78, '_vimeo_id', 'field_572181986e94f'),
(354, 81, '_edit_lock', '1462208876:2'),
(355, 81, '_edit_last', '2'),
(356, 82, '_wp_attached_file', '2016/05/7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8.jpeg'),
(357, 82, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1600;s:6:"height";i:900;s:4:"file";s:56:"2016/05/7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:56:"7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.7% (769.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:56:"7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-300x169.jpeg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.8% (1.2&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:56:"7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-768x432.jpeg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.1% (6.3&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:57:"7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-1024x576.jpeg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 5.8% (9.9&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:56:"7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8-250x200.jpeg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 7.1% (1.2&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 4.3% (11.8&nbsp;kB)";}'),
(358, 81, '_thumbnail_id', '82'),
(359, 83, 'client', ''),
(360, 83, '_client', 'field_572181471e1e5'),
(361, 83, 'agency', ''),
(362, 83, '_agency', 'field_572182ac820a7'),
(363, 83, 'director', '22'),
(364, 83, '_director', 'field_5721815e1e1e6'),
(365, 83, 'vimeo_id', 'https://vimeo.com/118604492'),
(366, 83, '_vimeo_id', 'field_572181986e94f'),
(367, 81, 'client', ''),
(368, 81, '_client', 'field_572181471e1e5'),
(369, 81, 'agency', ''),
(370, 81, '_agency', 'field_572182ac820a7'),
(371, 81, 'director', '22'),
(372, 81, '_director', 'field_5721815e1e1e6'),
(373, 81, 'vimeo_id', '118604492'),
(374, 81, '_vimeo_id', 'field_572181986e94f'),
(375, 84, '_edit_lock', '1462208882:2'),
(376, 84, '_edit_last', '2'),
(377, 85, '_wp_attached_file', '2016/05/TICM-Still.jpg'),
(378, 85, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:22:"2016/05/TICM-Still.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:22:"TICM-Still-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 61.7% (20.9&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:22:"TICM-Still-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 47.3% (21.3&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:22:"TICM-Still-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 18.2% (23.9&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:23:"TICM-Still-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 13.1% (25.3&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:22:"TICM-Still-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 46.0% (21.5&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:32:"Reduced by 10.2% (131.0&nbsp;kB)";}'),
(379, 84, '_thumbnail_id', '85'),
(380, 86, 'client', ''),
(381, 86, '_client', 'field_572181471e1e5'),
(382, 86, 'agency', ''),
(383, 86, '_agency', 'field_572182ac820a7'),
(384, 86, 'director', '22'),
(385, 86, '_director', 'field_5721815e1e1e6'),
(386, 86, 'vimeo_id', 'https://vimeo.com/132751788'),
(387, 86, '_vimeo_id', 'field_572181986e94f'),
(388, 84, 'client', ''),
(389, 84, '_client', 'field_572181471e1e5'),
(390, 84, 'agency', ''),
(391, 84, '_agency', 'field_572182ac820a7'),
(392, 84, 'director', '22'),
(393, 84, '_director', 'field_5721815e1e1e6'),
(394, 84, 'vimeo_id', '132751788'),
(395, 84, '_vimeo_id', 'field_572181986e94f'),
(396, 87, '_edit_lock', '1462208890:2'),
(397, 87, '_edit_last', '2'),
(398, 88, '_wp_attached_file', '2016/05/Arbys-Still.jpg'),
(399, 88, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:23:"2016/05/Arbys-Still.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:23:"Arbys-Still-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 66.7% (15.8&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:23:"Arbys-Still-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 54.5% (16.1&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:23:"Arbys-Still-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 21.1% (18.5&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:24:"Arbys-Still-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 14.9% (20.7&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:23:"Arbys-Still-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 52.5% (16.1&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:32:"Reduced by 11.2% (134.0&nbsp;kB)";}'),
(400, 87, '_thumbnail_id', '88'),
(401, 89, 'client', ''),
(402, 89, '_client', 'field_572181471e1e5'),
(403, 89, 'agency', ''),
(404, 89, '_agency', 'field_572182ac820a7'),
(405, 89, 'director', '22'),
(406, 89, '_director', 'field_5721815e1e1e6'),
(407, 89, 'vimeo_id', 'https://vimeo.com/129032757'),
(408, 89, '_vimeo_id', 'field_572181986e94f'),
(409, 87, 'client', ''),
(410, 87, '_client', 'field_572181471e1e5'),
(411, 87, 'agency', ''),
(412, 87, '_agency', 'field_572182ac820a7'),
(413, 87, 'director', '22'),
(414, 87, '_director', 'field_5721815e1e1e6'),
(415, 87, 'vimeo_id', '129032757'),
(416, 87, '_vimeo_id', 'field_572181986e94f'),
(417, 90, '_edit_lock', '1462207362:2'),
(418, 90, '_edit_last', '2'),
(419, 90, '_wp_trash_meta_status', 'draft'),
(420, 90, '_wp_trash_meta_time', '1462207372'),
(421, 92, '_edit_lock', '1462208892:2'),
(422, 92, '_edit_last', '2'),
(423, 93, '_wp_attached_file', '2016/05/Sharpie-Still.jpg'),
(424, 93, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:25:"2016/05/Sharpie-Still.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:25:"Sharpie-Still-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 66.3% (21.5&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:25:"Sharpie-Still-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 46.9% (22.2&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:25:"Sharpie-Still-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 17.7% (25.3&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:26:"Sharpie-Still-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 12.5% (26.8&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:25:"Sharpie-Still-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 49.2% (22.0&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 9.6% (139.6&nbsp;kB)";}'),
(425, 92, '_thumbnail_id', '93'),
(426, 94, 'client', 'Sharpie'),
(427, 94, '_client', 'field_572181471e1e5'),
(428, 94, 'agency', ''),
(429, 94, '_agency', 'field_572182ac820a7'),
(430, 94, 'director', '22'),
(431, 94, '_director', 'field_5721815e1e1e6'),
(432, 94, 'vimeo_id', 'https://vimeo.com/124207240'),
(433, 94, '_vimeo_id', 'field_572181986e94f'),
(434, 92, 'client', 'Sharpie'),
(435, 92, '_client', 'field_572181471e1e5'),
(436, 92, 'agency', ''),
(437, 92, '_agency', 'field_572182ac820a7'),
(438, 92, 'director', '22'),
(439, 92, '_director', 'field_5721815e1e1e6'),
(440, 92, 'vimeo_id', '124207240'),
(441, 92, '_vimeo_id', 'field_572181986e94f'),
(442, 95, '_edit_lock', '1462208893:2'),
(443, 95, '_edit_last', '2'),
(444, 96, '_wp_attached_file', '2016/05/Mike_smoking.gif'),
(445, 96, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2016/05/Mike_smoking.gif";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:24:"Mike_smoking-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:10:"No savings";}s:6:"medium";a:5:{s:4:"file";s:24:"Mike_smoking-300x169.gif";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (6.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:24:"Mike_smoking-768x432.gif";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.0% (74.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:25:"Mike_smoking-1024x576.gif";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:10:"No savings";}s:11:"movie-thumb";a:5:{s:4:"file";s:24:"Mike_smoking-250x200.gif";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.0% (13.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (8.0&nbsp;B)";}'),
(446, 95, '_thumbnail_id', '96'),
(447, 97, 'client', 'QuitSmoking.com') ;
INSERT INTO `a2fwp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(448, 97, '_client', 'field_572181471e1e5'),
(449, 97, 'agency', ''),
(450, 97, '_agency', 'field_572182ac820a7'),
(451, 97, 'director', '20'),
(452, 97, '_director', 'field_5721815e1e1e6'),
(453, 97, 'vimeo_id', 'https://vimeo.com/98693676'),
(454, 97, '_vimeo_id', 'field_572181986e94f'),
(455, 95, 'client', 'QuitSmoking.com'),
(456, 95, '_client', 'field_572181471e1e5'),
(457, 95, 'agency', ''),
(458, 95, '_agency', 'field_572182ac820a7'),
(459, 95, 'director', '20'),
(460, 95, '_director', 'field_5721815e1e1e6'),
(461, 95, 'vimeo_id', '98693676'),
(462, 95, '_vimeo_id', 'field_572181986e94f'),
(463, 98, '_edit_lock', '1462207639:2'),
(464, 98, '_edit_last', '2'),
(465, 98, '_wp_trash_meta_status', 'draft'),
(466, 98, '_wp_trash_meta_time', '1462207652'),
(467, 100, 'client', 'QuitSmoking.com'),
(468, 100, '_client', 'field_572181471e1e5'),
(469, 100, 'agency', ''),
(470, 100, '_agency', 'field_572182ac820a7'),
(471, 100, 'director', '20'),
(472, 100, '_director', 'field_5721815e1e1e6'),
(473, 100, 'vimeo_id', '98693676'),
(474, 100, '_vimeo_id', 'field_572181986e94f'),
(475, 101, '_edit_lock', '1462208908:2'),
(476, 101, '_edit_last', '2'),
(478, 103, '_wp_attached_file', '2016/05/Mike_Bully-1.gif'),
(479, 103, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2016/05/Mike_Bully-1.gif";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:24:"Mike_Bully-1-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.1% (23.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:24:"Mike_Bully-1-300x169.gif";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (7.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:24:"Mike_Bully-1-768x432.gif";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:10:"No savings";}s:5:"large";a:5:{s:4:"file";s:25:"Mike_Bully-1-1024x576.gif";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.0% (50.0&nbsp;B)";}s:11:"movie-thumb";a:5:{s:4:"file";s:24:"Mike_Bully-1-250x200.gif";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:10:"No savings";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (8.0&nbsp;B)";}'),
(480, 101, '_thumbnail_id', '103'),
(481, 104, 'client', 'Not In Our School'),
(482, 104, '_client', 'field_572181471e1e5'),
(483, 104, 'agency', ''),
(484, 104, '_agency', 'field_572182ac820a7'),
(485, 104, 'director', '20'),
(486, 104, '_director', 'field_5721815e1e1e6'),
(487, 104, 'vimeo_id', '98693488'),
(488, 104, '_vimeo_id', 'field_572181986e94f'),
(489, 101, 'client', 'Not In Our School'),
(490, 101, '_client', 'field_572181471e1e5'),
(491, 101, 'agency', ''),
(492, 101, '_agency', 'field_572182ac820a7'),
(493, 101, 'director', '20'),
(494, 101, '_director', 'field_5721815e1e1e6'),
(495, 101, 'vimeo_id', '98693488'),
(496, 101, '_vimeo_id', 'field_572181986e94f'),
(497, 105, '_edit_lock', '1462208905:2'),
(498, 105, '_edit_last', '2'),
(499, 106, 'client', 'Nebraska Lottery'),
(500, 106, '_client', 'field_572181471e1e5'),
(501, 106, 'agency', ''),
(502, 106, '_agency', 'field_572182ac820a7'),
(503, 106, 'director', '20'),
(504, 106, '_director', 'field_5721815e1e1e6'),
(505, 106, 'vimeo_id', '98693493'),
(506, 106, '_vimeo_id', 'field_572181986e94f'),
(507, 105, 'client', 'Nebraska Lottery'),
(508, 105, '_client', 'field_572181471e1e5'),
(509, 105, 'agency', ''),
(510, 105, '_agency', 'field_572182ac820a7'),
(511, 105, 'director', '20'),
(512, 105, '_director', 'field_5721815e1e1e6'),
(513, 105, 'vimeo_id', '98693493'),
(514, 105, '_vimeo_id', 'field_572181986e94f'),
(515, 107, '_wp_attached_file', '2016/05/Mike_Lotto.gif'),
(516, 107, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:22:"2016/05/Mike_Lotto.gif";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:22:"Mike_Lotto-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (7.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:22:"Mike_Lotto-300x169.gif";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.1% (22.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:22:"Mike_Lotto-768x432.gif";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:10:"No savings";}s:5:"large";a:5:{s:4:"file";s:23:"Mike_Lotto-1024x576.gif";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:10:"No savings";}s:11:"movie-thumb";a:5:{s:4:"file";s:22:"Mike_Lotto-250x200.gif";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.0% (12.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (8.0&nbsp;B)";}'),
(517, 105, '_thumbnail_id', '107'),
(518, 108, '_edit_lock', '1462208902:2'),
(519, 108, '_edit_last', '2'),
(520, 109, 'client', 'Lung Cancer Foundation of America'),
(521, 109, '_client', 'field_572181471e1e5'),
(522, 109, 'agency', ''),
(523, 109, '_agency', 'field_572182ac820a7'),
(524, 109, 'director', '20'),
(525, 109, '_director', 'field_5721815e1e1e6'),
(526, 109, 'vimeo_id', '98693491'),
(527, 109, '_vimeo_id', 'field_572181986e94f'),
(528, 108, 'client', 'Lung Cancer Foundation of America'),
(529, 108, '_client', 'field_572181471e1e5'),
(530, 108, 'agency', ''),
(531, 108, '_agency', 'field_572182ac820a7'),
(532, 108, 'director', '20'),
(533, 108, '_director', 'field_5721815e1e1e6'),
(534, 108, 'vimeo_id', '98693491'),
(535, 108, '_vimeo_id', 'field_572181986e94f'),
(536, 110, '_wp_attached_file', '2016/05/Mike_Dancer.gif'),
(537, 110, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:23:"2016/05/Mike_Dancer.gif";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:23:"Mike_Dancer-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.3% (39.0&nbsp;B)";}s:6:"medium";a:5:{s:4:"file";s:23:"Mike_Dancer-300x169.gif";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.1% (17.0&nbsp;B)";}s:12:"medium_large";a:5:{s:4:"file";s:23:"Mike_Dancer-768x432.gif";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.0% (65.0&nbsp;B)";}s:5:"large";a:5:{s:4:"file";s:24:"Mike_Dancer-1024x576.gif";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:10:"No savings";}s:11:"movie-thumb";a:5:{s:4:"file";s:23:"Mike_Dancer-250x200.gif";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:9:"image/gif";s:20:"ewww_image_optimizer";s:29:"Reduced by 0.0% (10.0&nbsp;B)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:28:"Reduced by 0.0% (8.0&nbsp;B)";}'),
(538, 108, '_thumbnail_id', '110'),
(539, 16, '_wp_old_slug', 'mark-mazure'),
(540, 111, '_edit_lock', '1462208897:2'),
(541, 111, '_edit_last', '2'),
(542, 112, 'client', 'Subway'),
(543, 112, '_client', 'field_572181471e1e5'),
(544, 112, 'agency', 'Nemer Fieger'),
(545, 112, '_agency', 'field_572182ac820a7'),
(546, 112, 'director', '20'),
(547, 112, '_director', 'field_5721815e1e1e6'),
(548, 112, 'vimeo_id', '134641317') ;
INSERT INTO `a2fwp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(549, 112, '_vimeo_id', 'field_572181986e94f'),
(550, 111, 'client', 'Subway'),
(551, 111, '_client', 'field_572181471e1e5'),
(552, 111, 'agency', 'Nemer Fieger'),
(553, 111, '_agency', 'field_572182ac820a7'),
(554, 111, 'director', '20'),
(555, 111, '_director', 'field_5721815e1e1e6'),
(556, 111, 'vimeo_id', '134641317'),
(557, 111, '_vimeo_id', 'field_572181986e94f'),
(558, 113, '_wp_attached_file', '2016/05/Subway-Still.jpg'),
(559, 113, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2016/05/Subway-Still.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:24:"Subway-Still-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 64.0% (23.2&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:24:"Subway-Still-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 48.6% (23.6&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:24:"Subway-Still-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 18.9% (25.6&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:25:"Subway-Still-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 13.4% (26.3&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:24:"Subway-Still-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 48.6% (23.6&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 4.3% (48.8&nbsp;kB)";}'),
(560, 111, '_thumbnail_id', '113'),
(561, 114, 'client', 'Sharpie'),
(562, 114, '_client', 'field_572181471e1e5'),
(563, 114, 'agency', ''),
(564, 114, '_agency', 'field_572182ac820a7'),
(565, 114, 'director', '22'),
(566, 114, '_director', 'field_5721815e1e1e6'),
(567, 114, 'vimeo_id', '124207240'),
(568, 114, '_vimeo_id', 'field_572181986e94f'),
(569, 115, 'client', ''),
(570, 115, '_client', 'field_572181471e1e5'),
(571, 115, 'agency', ''),
(572, 115, '_agency', 'field_572182ac820a7'),
(573, 115, 'director', '18'),
(574, 115, '_director', 'field_5721815e1e1e6'),
(575, 115, 'vimeo_id', '113530644'),
(576, 115, '_vimeo_id', 'field_572181986e94f'),
(577, 116, 'client', 'Deluxe'),
(578, 116, '_client', 'field_572181471e1e5'),
(579, 116, 'agency', ''),
(580, 116, '_agency', 'field_572182ac820a7'),
(581, 116, 'director', '18'),
(582, 116, '_director', 'field_5721815e1e1e6'),
(583, 116, 'vimeo_id', '137079639'),
(584, 116, '_vimeo_id', 'field_572181986e94f'),
(585, 117, 'client', 'Chevrolet'),
(586, 117, '_client', 'field_572181471e1e5'),
(587, 117, 'agency', ''),
(588, 117, '_agency', 'field_572182ac820a7'),
(589, 117, 'director', '16'),
(590, 117, '_director', 'field_5721815e1e1e6'),
(591, 117, 'vimeo_id', '129806235'),
(592, 117, '_vimeo_id', 'field_572181986e94f'),
(593, 118, 'client', 'DiGiorno'),
(594, 118, '_client', 'field_572181471e1e5'),
(595, 118, 'agency', 'Reach Agency'),
(596, 118, '_agency', 'field_572182ac820a7'),
(597, 118, 'director', '16'),
(598, 118, '_director', 'field_5721815e1e1e6'),
(599, 118, 'vimeo_id', '159235954'),
(600, 118, '_vimeo_id', 'field_572181986e94f'),
(601, 119, 'client', 'DiGiorno'),
(602, 119, '_client', 'field_572181471e1e5'),
(603, 119, 'agency', ''),
(604, 119, '_agency', 'field_572182ac820a7'),
(605, 119, 'director', '16'),
(606, 119, '_director', 'field_5721815e1e1e6'),
(607, 119, 'vimeo_id', '159237741'),
(608, 119, '_vimeo_id', 'field_572181986e94f'),
(609, 120, 'client', 'Short Film'),
(610, 120, '_client', 'field_572181471e1e5'),
(611, 120, 'agency', ''),
(612, 120, '_agency', 'field_572182ac820a7'),
(613, 120, 'director', '16'),
(614, 120, '_director', 'field_5721815e1e1e6'),
(615, 120, 'vimeo_id', '99554276'),
(616, 120, '_vimeo_id', 'field_572181986e94f'),
(617, 121, 'client', 'Chex Party Mix'),
(618, 121, '_client', 'field_572181471e1e5'),
(619, 121, 'agency', 'Fast Horse'),
(620, 121, '_agency', 'field_572182ac820a7'),
(621, 121, 'director', '22'),
(622, 121, '_director', 'field_5721815e1e1e6'),
(623, 121, 'vimeo_id', '146042088'),
(624, 121, '_vimeo_id', 'field_572181986e94f'),
(625, 122, 'client', 'Chex Party Mix'),
(626, 122, '_client', 'field_572181471e1e5'),
(627, 122, 'agency', 'Fast Horse'),
(628, 122, '_agency', 'field_572182ac820a7'),
(629, 122, 'director', '22'),
(630, 122, '_director', 'field_5721815e1e1e6'),
(631, 122, 'vimeo_id', '146042088'),
(632, 122, '_vimeo_id', 'field_572181986e94f'),
(633, 123, 'client', ''),
(634, 123, '_client', 'field_572181471e1e5'),
(635, 123, 'agency', ''),
(636, 123, '_agency', 'field_572182ac820a7'),
(637, 123, 'director', '22'),
(638, 123, '_director', 'field_5721815e1e1e6'),
(639, 123, 'vimeo_id', '118604492'),
(640, 123, '_vimeo_id', 'field_572181986e94f'),
(641, 124, 'client', ''),
(642, 124, '_client', 'field_572181471e1e5'),
(643, 124, 'agency', ''),
(644, 124, '_agency', 'field_572182ac820a7'),
(645, 124, 'director', '22'),
(646, 124, '_director', 'field_5721815e1e1e6'),
(647, 124, 'vimeo_id', '132751788'),
(648, 124, '_vimeo_id', 'field_572181986e94f') ;
INSERT INTO `a2fwp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(649, 125, 'client', ''),
(650, 125, '_client', 'field_572181471e1e5'),
(651, 125, 'agency', ''),
(652, 125, '_agency', 'field_572182ac820a7'),
(653, 125, 'director', '22'),
(654, 125, '_director', 'field_5721815e1e1e6'),
(655, 125, 'vimeo_id', '129032757'),
(656, 125, '_vimeo_id', 'field_572181986e94f'),
(657, 126, '_edit_lock', '1462211308:2'),
(658, 126, '_edit_last', '2'),
(659, 127, '_wp_attached_file', '2016/05/Otterbox-Bucket-List-Tough.jpg'),
(660, 127, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:38:"2016/05/Otterbox-Bucket-List-Tough.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:38:"Otterbox-Bucket-List-Tough-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 32.6% (4.2&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:38:"Otterbox-Bucket-List-Tough-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 20.1% (4.4&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:38:"Otterbox-Bucket-List-Tough-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 6.0% (4.5&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:39:"Otterbox-Bucket-List-Tough-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:29:"Reduced by 3.9% (4.5&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:38:"Otterbox-Bucket-List-Tough-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 20.9% (4.3&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:30:"Reduced by 4.2% (26.2&nbsp;kB)";}'),
(661, 126, '_thumbnail_id', '127'),
(662, 128, 'client', 'Otter box'),
(663, 128, '_client', 'field_572181471e1e5'),
(664, 128, 'agency', ''),
(665, 128, '_agency', 'field_572182ac820a7'),
(666, 128, 'director', '18'),
(667, 128, '_director', 'field_5721815e1e1e6'),
(668, 128, 'vimeo_id', '160016944'),
(669, 128, '_vimeo_id', 'field_572181986e94f'),
(670, 126, 'client', 'Otter box'),
(671, 126, '_client', 'field_572181471e1e5'),
(672, 126, 'agency', ''),
(673, 126, '_agency', 'field_572182ac820a7'),
(674, 126, 'director', '18'),
(675, 126, '_director', 'field_5721815e1e1e6'),
(676, 126, 'vimeo_id', '160016944'),
(677, 126, '_vimeo_id', 'field_572181986e94f'),
(678, 129, '_edit_lock', '1462211424:2'),
(679, 129, '_edit_last', '2'),
(680, 130, '_wp_attached_file', '2016/05/Dominica-The-New-16x9.jpg'),
(681, 130, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:33:"2016/05/Dominica-The-New-16x9.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:33:"Dominica-The-New-16x9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 43.1% (10.5&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:33:"Dominica-The-New-16x9-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 27.6% (11.5&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:33:"Dominica-The-New-16x9-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 10.7% (17.7&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:34:"Dominica-The-New-16x9-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:30:"Reduced by 8.3% (21.0&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:33:"Dominica-The-New-16x9-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 28.3% (11.4&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1395639190";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 8.8% (235.5&nbsp;kB)";}'),
(682, 129, '_thumbnail_id', '130'),
(683, 131, 'client', 'Dominica'),
(684, 131, '_client', 'field_572181471e1e5'),
(685, 131, 'agency', ''),
(686, 131, '_agency', 'field_572182ac820a7'),
(687, 131, 'director', '18'),
(688, 131, '_director', 'field_5721815e1e1e6'),
(689, 131, 'vimeo_id', '95812259'),
(690, 131, '_vimeo_id', 'field_572181986e94f'),
(691, 129, 'client', 'Dominica'),
(692, 129, '_client', 'field_572181471e1e5'),
(693, 129, 'agency', ''),
(694, 129, '_agency', 'field_572182ac820a7'),
(695, 129, 'director', '18'),
(696, 129, '_director', 'field_5721815e1e1e6'),
(697, 129, 'vimeo_id', '95812259'),
(698, 129, '_vimeo_id', 'field_572181986e94f'),
(699, 132, '_edit_lock', '1462230292:1'),
(700, 132, '_edit_last', '2'),
(701, 133, '_wp_attached_file', '2016/05/Memphis-Putting-out-to-Pasture-16x9.jpg'),
(702, 133, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:47:"2016/05/Memphis-Putting-out-to-Pasture-16x9.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:5:{s:4:"file";s:47:"Memphis-Putting-out-to-Pasture-16x9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 62.9% (20.3&nbsp;kB)";}s:6:"medium";a:5:{s:4:"file";s:47:"Memphis-Putting-out-to-Pasture-16x9-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 45.0% (21.2&nbsp;kB)";}s:12:"medium_large";a:5:{s:4:"file";s:47:"Memphis-Putting-out-to-Pasture-16x9-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 16.6% (30.1&nbsp;kB)";}s:5:"large";a:5:{s:4:"file";s:48:"Memphis-Putting-out-to-Pasture-16x9-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 12.4% (34.9&nbsp;kB)";}s:11:"movie-thumb";a:5:{s:4:"file";s:47:"Memphis-Putting-out-to-Pasture-16x9-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:20:"ewww_image_optimizer";s:31:"Reduced by 45.3% (21.3&nbsp;kB)";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:20:"ewww_image_optimizer";s:31:"Reduced by 9.3% (151.6&nbsp;kB)";}'),
(703, 132, '_thumbnail_id', '133'),
(704, 134, 'client', 'Memphis Grills'),
(705, 134, '_client', 'field_572181471e1e5'),
(706, 134, 'agency', ''),
(707, 134, '_agency', 'field_572182ac820a7'),
(708, 134, 'director', '18'),
(709, 134, '_director', 'field_5721815e1e1e6'),
(710, 134, 'vimeo_id', '149815220'),
(711, 134, '_vimeo_id', 'field_572181986e94f'),
(712, 132, 'client', 'Memphis Grills'),
(713, 132, '_client', 'field_572181471e1e5'),
(714, 132, 'agency', ''),
(715, 132, '_agency', 'field_572182ac820a7'),
(716, 132, 'director', '18'),
(717, 132, '_director', 'field_5721815e1e1e6'),
(718, 132, 'vimeo_id', '149815220'),
(719, 132, '_vimeo_id', 'field_572181986e94f'),
(724, 137, '_edit_lock', '1462232149:1'),
(725, 138, '_edit_lock', '1462232166:1'),
(726, 139, '_edit_lock', '1462232167:1'),
(727, 140, '_edit_lock', '1462232315:1'),
(728, 141, '_edit_lock', '1462232316:1'),
(729, 142, '_edit_lock', '1462243495:1'),
(730, 142, '_edit_last', '1'),
(731, 144, '_edit_lock', '1462239565:1'),
(732, 144, '_edit_last', '1'),
(733, 150, '_edit_lock', '1462317357:1'),
(734, 150, '_edit_last', '1'),
(735, 152, '_edit_lock', '1462317623:1'),
(736, 152, '_edit_last', '1') ;

#
# End of data contents of table `a2fwp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_posts`
#

DROP TABLE IF EXISTS `a2fwp_posts`;


#
# Table structure of table `a2fwp_posts`
#

CREATE TABLE `a2fwp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_posts`
#
INSERT INTO `a2fwp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-03-26 01:48:28', '2016-03-26 01:48:28', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-03-26 01:48:28', '2016-03-26 01:48:28', '', 0, 'http://a2fpictures.dev/?p=1', 0, 'post', '', 1),
(4, 1, '2016-03-26 01:49:47', '2016-03-26 01:49:47', 'Helo', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-03-30 01:56:25', '2016-03-30 01:56:25', '', 0, 'http://a2fpictures.dev/?page_id=4', -100, 'page', '', 0),
(5, 1, '2016-03-26 01:49:47', '2016-03-26 01:49:47', 'Helo', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-03-26 01:49:47', '2016-03-26 01:49:47', '', 4, 'http://a2fpictures.dev/2016/03/26/4-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-03-30 00:11:10', '2016-03-30 00:11:10', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-05-03 01:42:17', '2016-05-03 01:42:17', '', 0, 'http://a2fpictures.dev/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2016-03-30 00:11:10', '2016-03-30 00:11:10', '', 'Directors', '', 'publish', 'closed', 'closed', '', 'directors', '', '', '2016-05-03 01:42:17', '2016-05-03 01:42:17', '', 0, 'http://a2fpictures.dev/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2016-04-28 02:32:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-28 02:32:21', '0000-00-00 00:00:00', '', 0, 'http://a2fpictures.dev/?p=15', 0, 'post', '', 0),
(16, 1, '2016-04-28 02:33:19', '2016-04-28 02:33:19', 'Mark has an eye for visual flare with the pulse and rhythm of a JT album. He captures that energy in his work while maintaining a focused effort to realize the sincere and heartfelt moments. Mark is a man with the vision, the skills and the drive to tell a genuine story. When you collaborate with Mark, it\'s clear this isn\'t his work, this is his play.', 'Mark Mazur', '', 'publish', 'closed', 'closed', '', 'mark-mazur', '', '', '2016-05-02 17:02:10', '2016-05-02 17:02:10', '', 0, 'http://a2fpictures.dev/?post_type=director&#038;p=16', 0, 'director', '', 0),
(17, 1, '2016-04-28 02:33:19', '2016-04-28 02:33:19', '', 'Mark Mazure', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-04-28 02:33:19', '2016-04-28 02:33:19', '', 16, 'http://a2fpictures.dev/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-04-28 02:33:36', '2016-04-28 02:33:36', 'If you tell Trent he can’t pull off a shot, he’ll find a way to do it. A director with a passion to explore, influence, spark and uncover, he guides each project with the intent to show something in a way it hasn’t been seen before. Whether it’s fighting fire, exploring an unknown island or crafting a documentary, his drive is to create and his work is created to drive, be it inspirational, motivational or something completely off the wall.', 'Trent Hilborn', '', 'publish', 'closed', 'closed', '', 'trent-hilborn', '', '', '2016-04-28 02:41:26', '2016-04-28 02:41:26', '', 0, 'http://a2fpictures.dev/?post_type=director&#038;p=18', 0, 'director', '', 0),
(19, 1, '2016-04-28 02:33:36', '2016-04-28 02:33:36', '', 'Trent Hilborn', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-04-28 02:33:36', '2016-04-28 02:33:36', '', 18, 'http://a2fpictures.dev/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-04-28 02:33:50', '2016-04-28 02:33:50', 'If the apocalypse were to happen tomorrow, you’d find Mike sipping an old fashioned in his backyard. Whether he’s directing slick branded content, poignant PSA’s, or a narrative film that might make your mother cover her eyes, Mike’s focus remains creating imaginative, stylized, story driven work. Sure he may like the dark, weird, and gritty nature of storytelling, but underneath all that cool midnight madness is something warm we call heart. And boy is it tasty!', 'Mike P. Nelson', '', 'publish', 'closed', 'closed', '', 'mike-p-nelson', '', '', '2016-04-28 02:42:13', '2016-04-28 02:42:13', '', 0, 'http://a2fpictures.dev/?post_type=director&#038;p=20', 0, 'director', '', 0),
(21, 1, '2016-04-28 02:33:50', '2016-04-28 02:33:50', '', 'Mike P. Nelson', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-04-28 02:33:50', '2016-04-28 02:33:50', '', 20, 'http://a2fpictures.dev/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-04-28 02:34:04', '2016-04-28 02:34:04', 'James crackles with jest and insight into characters with constant focus on what drives every story. He uses his glasses for increased vision and has clear sight of what he wants and how to get it. As a child he had hoped to play in the NFL, but wasn’t strong, tall or fast enough. And we are lucky that his physical misgivings have turned him into the filmmaker we now have.', 'James Rautmann', '', 'publish', 'closed', 'closed', '', 'james-rautmann', '', '', '2016-04-28 02:41:57', '2016-04-28 02:41:57', '', 0, 'http://a2fpictures.dev/?post_type=director&#038;p=22', 0, 'director', '', 0),
(23, 1, '2016-04-28 02:34:04', '2016-04-28 02:34:04', '', 'James Rautmann', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-04-28 02:34:04', '2016-04-28 02:34:04', '', 22, 'http://a2fpictures.dev/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-04-28 02:41:26', '2016-04-28 02:41:26', 'If you tell Trent he can’t pull off a shot, he’ll find a way to do it. A director with a passion to explore, influence, spark and uncover, he guides each project with the intent to show something in a way it hasn’t been seen before. Whether it’s fighting fire, exploring an unknown island or crafting a documentary, his drive is to create and his work is created to drive, be it inspirational, motivational or something completely off the wall.', 'Trent Hilborn', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-04-28 02:41:26', '2016-04-28 02:41:26', '', 18, 'http://a2fpictures.dev/18-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-04-28 02:41:57', '2016-04-28 02:41:57', 'James crackles with jest and insight into characters with constant focus on what drives every story. He uses his glasses for increased vision and has clear sight of what he wants and how to get it. As a child he had hoped to play in the NFL, but wasn’t strong, tall or fast enough. And we are lucky that his physical misgivings have turned him into the filmmaker we now have.', 'James Rautmann', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-04-28 02:41:57', '2016-04-28 02:41:57', '', 22, 'http://a2fpictures.dev/22-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-04-28 02:42:13', '2016-04-28 02:42:13', 'If the apocalypse were to happen tomorrow, you’d find Mike sipping an old fashioned in his backyard. Whether he’s directing slick branded content, poignant PSA’s, or a narrative film that might make your mother cover her eyes, Mike’s focus remains creating imaginative, stylized, story driven work. Sure he may like the dark, weird, and gritty nature of storytelling, but underneath all that cool midnight madness is something warm we call heart. And boy is it tasty!', 'Mike P. Nelson', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-04-28 02:42:13', '2016-04-28 02:42:13', '', 20, 'http://a2fpictures.dev/20-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-04-28 02:42:30', '2016-04-28 02:42:30', 'Mark has an eye for visual flare with the pulse and rhythm of a JT album. He captures that energy in his work while maintaining a focused effort to realize the sincere and heartfelt moments. Mark is a man with the vision, the skills and the drive to tell a genuine story. When you collaborate with Mark, it\'s clear this isn\'t his work, this is his play.', 'Mark Mazure', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-04-28 02:42:30', '2016-04-28 02:42:30', '', 16, 'http://a2fpictures.dev/16-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-04-28 03:09:05', '2016-04-28 03:09:05', '', 'Mortal Kombat X', '', 'publish', 'closed', 'closed', '', 'mortal-kombat-x', '', '', '2016-04-29 17:10:39', '2016-04-29 17:10:39', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=28', 0, 'project', '', 0),
(29, 1, '2016-04-28 03:09:05', '2016-04-28 03:09:05', '', 'Mortal Kombat X', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-04-28 03:09:05', '2016-04-28 03:09:05', '', 28, 'http://a2fpictures.dev/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-04-28 03:09:35', '2016-04-28 03:09:35', '', 'You Want The Night', '', 'publish', 'closed', 'closed', '', 'you-want-the-night', '', '', '2016-04-29 17:10:27', '2016-04-29 17:10:27', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=30', 0, 'project', '', 0),
(31, 1, '2016-04-28 03:09:35', '2016-04-28 03:09:35', '', 'You Want The Night', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-04-28 03:09:35', '2016-04-28 03:09:35', '', 30, 'http://a2fpictures.dev/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-04-28 03:20:31', '2016-04-28 03:20:31', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"project";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}', 'Projects', 'projects', 'publish', 'closed', 'closed', '', 'group_57218138e08e6', '', '', '2016-04-28 04:26:26', '2016-04-28 04:26:26', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&#038;p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2016-04-28 03:20:31', '2016-04-28 03:20:31', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:50;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Client', 'client', 'publish', 'closed', 'closed', '', 'field_572181471e1e5', '', '', '2016-04-28 03:26:29', '2016-04-28 03:26:29', '', 32, 'http://a2fpictures.dev/?post_type=acf-field&#038;p=33', 0, 'acf-field', '', 0),
(34, 1, '2016-04-28 03:20:31', '2016-04-28 03:20:31', 'a:11:{s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:8:"director";}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:13:"return_format";s:6:"object";s:2:"ui";i:1;}', 'Director', 'director', 'publish', 'closed', 'closed', '', 'field_5721815e1e1e6', '', '', '2016-04-28 03:27:15', '2016-04-28 03:27:15', '', 32, 'http://a2fpictures.dev/?post_type=acf-field&#038;p=34', 2, 'acf-field', '', 0),
(35, 1, '2016-04-28 03:22:18', '2016-04-28 03:22:18', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Vimeo ID', 'vimeo_id', 'publish', 'closed', 'closed', '', 'field_572181986e94f', '', '', '2016-04-28 04:26:26', '2016-04-28 04:26:26', '', 32, 'http://a2fpictures.dev/?post_type=acf-field&#038;p=35', 3, 'acf-field', '', 0),
(36, 1, '2016-04-28 03:25:25', '2016-04-28 03:25:25', '', 'Mortal Kombat X', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-04-28 03:25:25', '2016-04-28 03:25:25', '', 28, 'http://a2fpictures.dev/28-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-04-28 03:26:29', '2016-04-28 03:26:29', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:50;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Agency', 'agency', 'publish', 'closed', 'closed', '', 'field_572182ac820a7', '', '', '2016-04-28 03:26:29', '2016-04-28 03:26:29', '', 32, 'http://a2fpictures.dev/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(40, 1, '2016-04-28 03:29:45', '2016-04-28 03:29:45', '', 'Mortal Kombat X', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-04-28 03:29:45', '2016-04-28 03:29:45', '', 28, 'http://a2fpictures.dev/28-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-04-28 03:31:05', '2016-04-28 03:31:05', '', 'You Want The Night', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-04-28 03:31:05', '2016-04-28 03:31:05', '', 30, 'http://a2fpictures.dev/30-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2016-04-28 04:27:18', '2016-04-28 04:27:18', '', 'You Want The Night', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-04-28 04:27:18', '2016-04-28 04:27:18', '', 30, 'http://a2fpictures.dev/30-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-04-28 04:27:43', '2016-04-28 04:27:43', '', 'Mortal Kombat X', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-04-28 04:27:43', '2016-04-28 04:27:43', '', 28, 'http://a2fpictures.dev/28-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-04-29 16:46:16', '2016-04-29 16:46:16', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2016-04-29 16:46:16', '2016-04-29 16:46:16', '', 0, 'http://a2fpictures.dev/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2016-04-29 16:46:16', '2016-04-29 16:46:16', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2016-04-29 16:46:16', '2016-04-29 16:46:16', '', 0, 'http://a2fpictures.dev/?p=45', 3, 'nav_menu_item', '', 0),
(46, 1, '2016-04-29 16:46:16', '2016-04-29 16:46:16', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2016-04-29 16:46:16', '2016-04-29 16:46:16', '', 0, 'http://a2fpictures.dev/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2016-04-29 16:46:16', '2016-04-29 16:46:16', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2016-04-29 16:46:16', '2016-04-29 16:46:16', '', 0, 'http://a2fpictures.dev/?p=47', 2, 'nav_menu_item', '', 0),
(48, 1, '2016-04-29 17:10:09', '2016-04-29 17:10:09', '', 'slider-01-1920', '', 'inherit', 'open', 'closed', '', 'slider-01-1920', '', '', '2016-04-29 17:10:09', '2016-04-29 17:10:09', '', 30, 'http://a2fpictures.dev/wp-content/uploads/2016/04/slider-01-1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2016-04-29 17:10:10', '2016-04-29 17:10:10', '', 'slider-02-1920', '', 'inherit', 'open', 'closed', '', 'slider-02-1920', '', '', '2016-04-29 17:10:10', '2016-04-29 17:10:10', '', 30, 'http://a2fpictures.dev/wp-content/uploads/2016/04/slider-02-1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2016-04-29 17:22:35', '2016-04-29 17:22:35', '', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2016-05-03 02:45:10', '2016-05-03 02:45:10', '', 0, 'http://a2fpictures.dev/?page_id=50', 0, 'page', '', 0),
(51, 1, '2016-04-29 17:22:35', '2016-04-29 17:22:35', '', 'test', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2016-04-29 17:22:35', '2016-04-29 17:22:35', '', 50, 'http://a2fpictures.dev/50-revision-v1/', 0, 'revision', '', 0),
(52, 2, '2016-05-02 14:17:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-05-02 14:17:35', '0000-00-00 00:00:00', '', 0, 'http://a2fpictures.dev/?p=52', 0, 'post', '', 0),
(53, 2, '2016-05-02 14:22:18', '2016-05-02 14:22:18', '', 'Holiday Magic', '', 'publish', 'closed', 'closed', '', 'holiday-magic', '', '', '2016-05-02 17:10:01', '2016-05-02 17:10:01', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=53', 0, 'project', '', 0),
(54, 2, '2016-05-02 14:22:02', '2016-05-02 14:22:02', '', 'cpm', '', 'inherit', 'open', 'closed', '', 'cpm', '', '', '2016-05-02 14:22:02', '2016-05-02 14:22:02', '', 53, 'http://a2fpictures.dev/wp-content/uploads/2016/05/cpm.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 2, '2016-05-02 14:22:18', '2016-05-02 14:22:18', '', 'Holiday Magic', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2016-05-02 14:22:18', '2016-05-02 14:22:18', '', 53, 'http://a2fpictures.dev/53-revision-v1/', 0, 'revision', '', 0),
(56, 2, '2016-05-02 15:50:42', '2016-05-02 15:50:42', '', 'June', '', 'publish', 'closed', 'closed', '', 'june', '', '', '2016-05-02 17:09:53', '2016-05-02 17:09:53', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=56', 0, 'project', '', 0),
(57, 2, '2016-05-02 15:50:30', '2016-05-02 15:50:30', '', 'junetitle_staff', '', 'inherit', 'open', 'closed', '', 'junetitle_staff', '', '', '2016-05-02 15:50:30', '2016-05-02 15:50:30', '', 56, 'http://a2fpictures.dev/wp-content/uploads/2016/05/junetitle_staff.gif', 0, 'attachment', 'image/gif', 0),
(58, 2, '2016-05-02 15:50:42', '2016-05-02 15:50:42', '', 'June', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2016-05-02 15:50:42', '2016-05-02 15:50:42', '', 56, 'http://a2fpictures.dev/56-revision-v1/', 0, 'revision', '', 0),
(59, 2, '2016-05-02 15:53:03', '2016-05-02 15:53:03', '', 'Rising Crust', '', 'publish', 'closed', 'closed', '', 'rising-crust', '', '', '2016-05-02 17:09:44', '2016-05-02 17:09:44', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=59', 0, 'project', '', 0),
(60, 2, '2016-05-02 15:52:51', '2016-05-02 15:52:51', '', 'risingcruststill', '', 'inherit', 'open', 'closed', '', 'risingcruststill', '', '', '2016-05-02 15:52:51', '2016-05-02 15:52:51', '', 59, 'http://a2fpictures.dev/wp-content/uploads/2016/05/risingcruststill.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 2, '2016-05-02 15:53:03', '2016-05-02 15:53:03', '', 'Rising Crust', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2016-05-02 15:53:03', '2016-05-02 15:53:03', '', 59, 'http://a2fpictures.dev/59-revision-v1/', 0, 'revision', '', 0),
(62, 2, '2016-05-02 16:01:19', '2016-05-02 16:01:19', 'Mark has an eye for visual flare with the pulse and rhythm of a JT album. He captures that energy in his work while maintaining a focused effort to realize the sincere and heartfelt moments. Mark is a man with the vision, the skills and the drive to tell a genuine story. When you collaborate with Mark, it\'s clear this isn\'t his work, this is his play.', 'Mark Mazur', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-05-02 16:01:19', '2016-05-02 16:01:19', '', 16, 'http://a2fpictures.dev/16-revision-v1/', 0, 'revision', '', 0),
(63, 2, '2016-05-02 16:14:59', '2016-05-02 16:14:59', '', 'Pizzeria', '', 'publish', 'closed', 'closed', '', 'pizzeria', '', '', '2016-05-02 17:09:37', '2016-05-02 17:09:37', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=63', 0, 'project', '', 0),
(64, 2, '2016-05-02 16:07:00', '2016-05-02 16:07:00', '', 'Pizzeria', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2016-05-02 16:07:00', '2016-05-02 16:07:00', '', 63, 'http://a2fpictures.dev/63-revision-v1/', 0, 'revision', '', 0),
(65, 2, '2016-05-02 16:07:43', '2016-05-02 16:07:43', '', 'pizzeria_still', '', 'inherit', 'open', 'closed', '', 'pizzeria_still', '', '', '2016-05-02 16:07:43', '2016-05-02 16:07:43', '', 63, 'http://a2fpictures.dev/wp-content/uploads/2016/05/pizzeria_still.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 2, '2016-05-02 16:17:40', '2016-05-02 16:17:40', 'C', 'Inside Edge', '', 'publish', 'closed', 'closed', '', 'inside-edge', '', '', '2016-05-02 17:09:26', '2016-05-02 17:09:26', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=66', 0, 'project', '', 0),
(67, 2, '2016-05-02 16:17:40', '2016-05-02 16:17:40', 'C', 'Inside Edge', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-05-02 16:17:40', '2016-05-02 16:17:40', '', 66, 'http://a2fpictures.dev/66-revision-v1/', 0, 'revision', '', 0),
(68, 2, '2016-05-02 16:17:59', '2016-05-02 16:17:59', '', 'IE_Still', '', 'inherit', 'open', 'closed', '', 'ie_still', '', '', '2016-05-02 16:17:59', '2016-05-02 16:17:59', '', 66, 'http://a2fpictures.dev/wp-content/uploads/2016/05/IE_Still.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 2, '2016-05-02 16:20:22', '2016-05-02 16:20:22', '', 'IE_169', '', 'inherit', 'open', 'closed', '', 'ie_169', '', '', '2016-05-02 16:20:22', '2016-05-02 16:20:22', '', 66, 'http://a2fpictures.dev/wp-content/uploads/2016/05/IE_169.gif', 0, 'attachment', 'image/gif', 0),
(70, 2, '2016-05-02 16:21:23', '2016-05-02 16:21:23', '', 'The New', '', 'trash', 'closed', 'closed', '', 'the-new', '', '', '2016-05-02 16:22:26', '2016-05-02 16:22:26', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=70', 0, 'project', '', 0),
(71, 2, '2016-05-02 16:22:26', '2016-05-02 16:22:26', '', 'The New', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2016-05-02 16:22:26', '2016-05-02 16:22:26', '', 70, 'http://a2fpictures.dev/70-revision-v1/', 0, 'revision', '', 0),
(72, 2, '2016-05-02 16:23:38', '2016-05-02 16:23:38', '', '100 Years', '', 'publish', 'closed', 'closed', '', '100-years', '', '', '2016-05-02 17:09:20', '2016-05-02 17:09:20', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=72', 0, 'project', '', 0),
(73, 2, '2016-05-02 16:23:11', '2016-05-02 16:23:11', '', 'Final-Cut-1.00_01_39_03.Still002', '', 'inherit', 'open', 'closed', '', 'final-cut-1-00_01_39_03-still002', '', '', '2016-05-02 16:23:11', '2016-05-02 16:23:11', '', 72, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Final-Cut-1.00_01_39_03.Still002.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 2, '2016-05-02 16:23:38', '2016-05-02 16:23:38', '', '100 Years', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2016-05-02 16:23:38', '2016-05-02 16:23:38', '', 72, 'http://a2fpictures.dev/72-revision-v1/', 0, 'revision', '', 0),
(75, 2, '2016-05-02 16:32:33', '2016-05-02 16:32:33', '', 'Winter Can\'t Slow Us Down', '', 'publish', 'closed', 'closed', '', 'winter-cant-slow-us-down', '', '', '2016-05-02 17:09:13', '2016-05-02 17:09:13', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=75', 0, 'project', '', 0),
(76, 2, '2016-05-02 16:32:27', '2016-05-02 16:32:27', '', 'Nike-Image', '', 'inherit', 'open', 'closed', '', 'nike-image', '', '', '2016-05-02 16:32:27', '2016-05-02 16:32:27', '', 75, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Nike-Image.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 2, '2016-05-02 16:32:33', '2016-05-02 16:32:33', '', 'Winter Can\'t Slow Us Down', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2016-05-02 16:32:33', '2016-05-02 16:32:33', '', 75, 'http://a2fpictures.dev/75-revision-v1/', 0, 'revision', '', 0),
(78, 2, '2016-05-02 16:37:44', '2016-05-02 16:37:44', '', 'Guide to Holiday Magic', '', 'publish', 'closed', 'closed', '', 'guide-to-holiday-magic', '', '', '2016-05-02 17:10:12', '2016-05-02 17:10:12', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=78', 0, 'project', '', 0),
(79, 2, '2016-05-02 16:37:38', '2016-05-02 16:37:38', '', 'cpm', '', 'inherit', 'open', 'closed', '', 'cpm-2', '', '', '2016-05-02 16:37:38', '2016-05-02 16:37:38', '', 78, 'http://a2fpictures.dev/wp-content/uploads/2016/05/cpm-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 2, '2016-05-02 16:37:44', '2016-05-02 16:37:44', '', 'Guide to Holiday Magic', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2016-05-02 16:37:44', '2016-05-02 16:37:44', '', 78, 'http://a2fpictures.dev/78-revision-v1/', 0, 'revision', '', 0),
(81, 2, '2016-05-02 16:38:55', '2016-05-02 16:38:55', '', 'People Acting Like Dogs', '', 'publish', 'closed', 'closed', '', 'people-acting-like-dogs', '', '', '2016-05-02 17:10:18', '2016-05-02 17:10:18', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=81', 0, 'project', '', 0),
(82, 2, '2016-05-02 16:38:46', '2016-05-02 16:38:46', '', '7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8', '', 'inherit', 'open', 'closed', '', '7x2hsi-qtnh4ordydfecij6vig48zsaqq-0eoqfi5c8', '', '', '2016-05-02 16:38:46', '2016-05-02 16:38:46', '', 81, 'http://a2fpictures.dev/wp-content/uploads/2016/05/7X2HSi-QTNH4oRdYDfEciJ6vIG48ZSaQQ-0EoQFi5c8.jpeg', 0, 'attachment', 'image/jpeg', 0),
(83, 2, '2016-05-02 16:38:55', '2016-05-02 16:38:55', '', 'People Acting Like Dogs', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2016-05-02 16:38:55', '2016-05-02 16:38:55', '', 81, 'http://a2fpictures.dev/81-revision-v1/', 0, 'revision', '', 0),
(84, 2, '2016-05-02 16:40:13', '2016-05-02 16:40:13', '', 'The Ice Cream Man', '', 'publish', 'closed', 'closed', '', 'the-ice-cream-man', '', '', '2016-05-02 17:10:25', '2016-05-02 17:10:25', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=84', 0, 'project', '', 0),
(85, 2, '2016-05-02 16:39:36', '2016-05-02 16:39:36', '', 'TICM-Still', '', 'inherit', 'open', 'closed', '', 'ticm-still', '', '', '2016-05-02 16:39:36', '2016-05-02 16:39:36', '', 84, 'http://a2fpictures.dev/wp-content/uploads/2016/05/TICM-Still.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 2, '2016-05-02 16:40:13', '2016-05-02 16:40:13', '', 'The Ice Cream Man', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2016-05-02 16:40:13', '2016-05-02 16:40:13', '', 84, 'http://a2fpictures.dev/84-revision-v1/', 0, 'revision', '', 0),
(87, 2, '2016-05-02 16:41:58', '2016-05-02 16:41:58', '', 'Smokehouse Collection', '', 'publish', 'closed', 'closed', '', 'smokehouse-collection', '', '', '2016-05-02 17:10:31', '2016-05-02 17:10:31', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=87', 0, 'project', '', 0),
(88, 2, '2016-05-02 16:41:52', '2016-05-02 16:41:52', '', 'Arbys-Still', '', 'inherit', 'open', 'closed', '', 'arbys-still', '', '', '2016-05-02 16:41:52', '2016-05-02 16:41:52', '', 87, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Arbys-Still.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 2, '2016-05-02 16:41:58', '2016-05-02 16:41:58', '', 'Smokehouse Collection', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2016-05-02 16:41:58', '2016-05-02 16:41:58', '', 87, 'http://a2fpictures.dev/87-revision-v1/', 0, 'revision', '', 0),
(90, 2, '2016-05-02 16:42:11', '2016-05-02 16:42:11', '', 'Sharpie', '', 'trash', 'closed', 'closed', '', 'sharpie', '', '', '2016-05-02 16:42:52', '2016-05-02 16:42:52', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=90', 0, 'project', '', 0),
(91, 2, '2016-05-02 16:42:52', '2016-05-02 16:42:52', '', 'Sharpie', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2016-05-02 16:42:52', '2016-05-02 16:42:52', '', 90, 'http://a2fpictures.dev/90-revision-v1/', 0, 'revision', '', 0),
(92, 2, '2016-05-02 16:43:45', '2016-05-02 16:43:45', '', 'Permanent Record', '', 'publish', 'closed', 'closed', '', 'permanent-record', '', '', '2016-05-02 17:08:38', '2016-05-02 17:08:38', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=92', 0, 'project', '', 0),
(93, 2, '2016-05-02 16:43:38', '2016-05-02 16:43:38', '', 'Sharpie-Still', '', 'inherit', 'open', 'closed', '', 'sharpie-still', '', '', '2016-05-02 16:43:38', '2016-05-02 16:43:38', '', 92, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Sharpie-Still.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 2, '2016-05-02 16:43:45', '2016-05-02 16:43:45', '', 'Permanent Record', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-05-02 16:43:45', '2016-05-02 16:43:45', '', 92, 'http://a2fpictures.dev/92-revision-v1/', 0, 'revision', '', 0),
(95, 2, '2016-05-02 16:45:10', '2016-05-02 16:45:10', '', 'Kill the Habit', '', 'publish', 'closed', 'closed', '', 'kill-the-habit', '', '', '2016-05-02 16:48:11', '2016-05-02 16:48:11', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=95', 0, 'project', '', 0),
(96, 2, '2016-05-02 16:44:37', '2016-05-02 16:44:37', '', 'Mike_smoking', '', 'inherit', 'open', 'closed', '', 'mike_smoking', '', '', '2016-05-02 16:44:37', '2016-05-02 16:44:37', '', 95, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Mike_smoking.gif', 0, 'attachment', 'image/gif', 0),
(97, 2, '2016-05-02 16:45:10', '2016-05-02 16:45:10', '', 'Kill the Habit', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2016-05-02 16:45:10', '2016-05-02 16:45:10', '', 95, 'http://a2fpictures.dev/95-revision-v1/', 0, 'revision', '', 0),
(98, 2, '2016-05-02 16:47:19', '2016-05-02 16:47:19', '', 'You Want The Night', '', 'trash', 'closed', 'closed', '', 'you-want-the-night-2', '', '', '2016-05-02 16:47:32', '2016-05-02 16:47:32', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=98', 0, 'project', '', 0),
(99, 2, '2016-05-02 16:47:32', '2016-05-02 16:47:32', '', 'You Want The Night', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2016-05-02 16:47:32', '2016-05-02 16:47:32', '', 98, 'http://a2fpictures.dev/98-revision-v1/', 0, 'revision', '', 0),
(100, 2, '2016-05-02 16:47:57', '2016-05-02 16:47:57', '', 'Kill the Habit', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2016-05-02 16:47:57', '2016-05-02 16:47:57', '', 95, 'http://a2fpictures.dev/95-revision-v1/', 0, 'revision', '', 0),
(101, 2, '2016-05-02 16:49:58', '2016-05-02 16:49:58', '', 'Bullying Sucks', '', 'publish', 'closed', 'closed', '', 'bullying-sucks', '', '', '2016-05-02 16:49:58', '2016-05-02 16:49:58', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=101', 0, 'project', '', 0),
(103, 2, '2016-05-02 16:49:48', '2016-05-02 16:49:48', '', 'Mike_Bully', '', 'inherit', 'open', 'closed', '', 'mike_bully-2', '', '', '2016-05-02 16:49:48', '2016-05-02 16:49:48', '', 101, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Mike_Bully-1.gif', 0, 'attachment', 'image/gif', 0),
(104, 2, '2016-05-02 16:49:58', '2016-05-02 16:49:58', '', 'Bullying Sucks', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2016-05-02 16:49:58', '2016-05-02 16:49:58', '', 101, 'http://a2fpictures.dev/101-revision-v1/', 0, 'revision', '', 0),
(105, 2, '2016-05-02 16:57:36', '2016-05-02 16:57:36', '', 'Computers, Computers!', '', 'publish', 'closed', 'closed', '', 'computers-computers', '', '', '2016-05-02 16:59:48', '2016-05-02 16:59:48', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=105', 0, 'project', '', 0),
(106, 2, '2016-05-02 16:57:36', '2016-05-02 16:57:36', '', 'Computers, Computers!', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-05-02 16:57:36', '2016-05-02 16:57:36', '', 105, 'http://a2fpictures.dev/105-revision-v1/', 0, 'revision', '', 0),
(107, 2, '2016-05-02 16:57:43', '2016-05-02 16:57:43', '', 'Mike_Lotto', '', 'inherit', 'open', 'closed', '', 'mike_lotto', '', '', '2016-05-02 16:57:43', '2016-05-02 16:57:43', '', 105, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Mike_Lotto.gif', 0, 'attachment', 'image/gif', 0),
(108, 2, '2016-05-02 17:00:54', '2016-05-02 17:00:54', '', 'The Haze', '', 'publish', 'closed', 'closed', '', 'the-haze', '', '', '2016-05-02 17:01:25', '2016-05-02 17:01:25', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=108', 0, 'project', '', 0),
(109, 2, '2016-05-02 17:00:54', '2016-05-02 17:00:54', '', 'The Haze', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2016-05-02 17:00:54', '2016-05-02 17:00:54', '', 108, 'http://a2fpictures.dev/108-revision-v1/', 0, 'revision', '', 0),
(110, 2, '2016-05-02 17:01:03', '2016-05-02 17:01:03', '', 'Mike_Dancer', '', 'inherit', 'open', 'closed', '', 'mike_dancer', '', '', '2016-05-02 17:01:03', '2016-05-02 17:01:03', '', 108, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Mike_Dancer.gif', 0, 'attachment', 'image/gif', 0),
(111, 2, '2016-05-02 17:05:08', '2016-05-02 17:05:08', '', 'Horseradish', '', 'publish', 'closed', 'closed', '', 'horseradish', '', '', '2016-05-02 17:05:25', '2016-05-02 17:05:25', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=111', 0, 'project', '', 0),
(112, 2, '2016-05-02 17:05:08', '2016-05-02 17:05:08', '', 'Horseradish', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2016-05-02 17:05:08', '2016-05-02 17:05:08', '', 111, 'http://a2fpictures.dev/111-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `a2fwp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(113, 2, '2016-05-02 17:05:19', '2016-05-02 17:05:19', '', 'Subway-Still', '', 'inherit', 'open', 'closed', '', 'subway-still', '', '', '2016-05-02 17:05:19', '2016-05-02 17:05:19', '', 111, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Subway-Still.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 2, '2016-05-02 17:08:38', '2016-05-02 17:08:38', '', 'Permanent Record', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-05-02 17:08:38', '2016-05-02 17:08:38', '', 92, 'http://a2fpictures.dev/92-revision-v1/', 0, 'revision', '', 0),
(115, 2, '2016-05-02 17:09:13', '2016-05-02 17:09:13', '', 'Winter Can\'t Slow Us Down', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2016-05-02 17:09:13', '2016-05-02 17:09:13', '', 75, 'http://a2fpictures.dev/75-revision-v1/', 0, 'revision', '', 0),
(116, 2, '2016-05-02 17:09:20', '2016-05-02 17:09:20', '', '100 Years', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2016-05-02 17:09:20', '2016-05-02 17:09:20', '', 72, 'http://a2fpictures.dev/72-revision-v1/', 0, 'revision', '', 0),
(117, 2, '2016-05-02 17:09:26', '2016-05-02 17:09:26', 'C', 'Inside Edge', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-05-02 17:09:26', '2016-05-02 17:09:26', '', 66, 'http://a2fpictures.dev/66-revision-v1/', 0, 'revision', '', 0),
(118, 2, '2016-05-02 17:09:37', '2016-05-02 17:09:37', '', 'Pizzeria', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2016-05-02 17:09:37', '2016-05-02 17:09:37', '', 63, 'http://a2fpictures.dev/63-revision-v1/', 0, 'revision', '', 0),
(119, 2, '2016-05-02 17:09:44', '2016-05-02 17:09:44', '', 'Rising Crust', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2016-05-02 17:09:44', '2016-05-02 17:09:44', '', 59, 'http://a2fpictures.dev/59-revision-v1/', 0, 'revision', '', 0),
(120, 2, '2016-05-02 17:09:53', '2016-05-02 17:09:53', '', 'June', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2016-05-02 17:09:53', '2016-05-02 17:09:53', '', 56, 'http://a2fpictures.dev/56-revision-v1/', 0, 'revision', '', 0),
(121, 2, '2016-05-02 17:10:01', '2016-05-02 17:10:01', '', 'Holiday Magic', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2016-05-02 17:10:01', '2016-05-02 17:10:01', '', 53, 'http://a2fpictures.dev/53-revision-v1/', 0, 'revision', '', 0),
(122, 2, '2016-05-02 17:10:12', '2016-05-02 17:10:12', '', 'Guide to Holiday Magic', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2016-05-02 17:10:12', '2016-05-02 17:10:12', '', 78, 'http://a2fpictures.dev/78-revision-v1/', 0, 'revision', '', 0),
(123, 2, '2016-05-02 17:10:18', '2016-05-02 17:10:18', '', 'People Acting Like Dogs', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2016-05-02 17:10:18', '2016-05-02 17:10:18', '', 81, 'http://a2fpictures.dev/81-revision-v1/', 0, 'revision', '', 0),
(124, 2, '2016-05-02 17:10:25', '2016-05-02 17:10:25', '', 'The Ice Cream Man', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2016-05-02 17:10:25', '2016-05-02 17:10:25', '', 84, 'http://a2fpictures.dev/84-revision-v1/', 0, 'revision', '', 0),
(125, 2, '2016-05-02 17:10:31', '2016-05-02 17:10:31', '', 'Smokehouse Collection', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2016-05-02 17:10:31', '2016-05-02 17:10:31', '', 87, 'http://a2fpictures.dev/87-revision-v1/', 0, 'revision', '', 0),
(126, 2, '2016-05-02 17:48:12', '2016-05-02 17:48:12', '', 'Bucket List Tough', '', 'publish', 'closed', 'closed', '', 'bucket-list-tough', '', '', '2016-05-02 17:48:27', '2016-05-02 17:48:27', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=126', 0, 'project', '', 0),
(127, 2, '2016-05-02 17:48:04', '2016-05-02 17:48:04', '', 'Otterbox - Bucket List Tough', '', 'inherit', 'open', 'closed', '', 'otterbox-bucket-list-tough', '', '', '2016-05-02 17:48:04', '2016-05-02 17:48:04', '', 126, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Otterbox-Bucket-List-Tough.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 2, '2016-05-02 17:48:12', '2016-05-02 17:48:12', '', 'Bucket List Tough', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2016-05-02 17:48:12', '2016-05-02 17:48:12', '', 126, 'http://a2fpictures.dev/126-revision-v1/', 0, 'revision', '', 0),
(129, 2, '2016-05-02 17:49:40', '2016-05-02 17:49:40', '', 'The New', '', 'publish', 'closed', 'closed', '', 'dominica', '', '', '2016-05-02 17:49:40', '2016-05-02 17:49:40', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=129', 0, 'project', '', 0),
(130, 2, '2016-05-02 17:49:33', '2016-05-02 17:49:33', '', 'Dominica - The New 16x9', '', 'inherit', 'open', 'closed', '', 'dominica-the-new-16x9', '', '', '2016-05-02 17:49:33', '2016-05-02 17:49:33', '', 129, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Dominica-The-New-16x9.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 2, '2016-05-02 17:49:40', '2016-05-02 17:49:40', '', 'The New', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2016-05-02 17:49:40', '2016-05-02 17:49:40', '', 129, 'http://a2fpictures.dev/129-revision-v1/', 0, 'revision', '', 0),
(132, 2, '2016-05-02 17:51:25', '2016-05-02 17:51:25', '', 'Putting out to Pasture', '', 'publish', 'closed', 'closed', '', 'putting-out-to-pasture', '', '', '2016-05-02 17:51:25', '2016-05-02 17:51:25', '', 0, 'http://a2fpictures.dev/?post_type=project&#038;p=132', 0, 'project', '', 0),
(133, 2, '2016-05-02 17:51:16', '2016-05-02 17:51:16', '', 'Memphis - Putting out to Pasture 16x9', '', 'inherit', 'open', 'closed', '', 'memphis-putting-out-to-pasture-16x9', '', '', '2016-05-02 17:51:16', '2016-05-02 17:51:16', '', 132, 'http://a2fpictures.dev/wp-content/uploads/2016/05/Memphis-Putting-out-to-Pasture-16x9.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 2, '2016-05-02 17:51:25', '2016-05-02 17:51:25', '', 'Putting out to Pasture', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2016-05-02 17:51:25', '2016-05-02 17:51:25', '', 132, 'http://a2fpictures.dev/132-revision-v1/', 0, 'revision', '', 0),
(135, 2, '2016-05-02 19:52:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-05-02 19:52:44', '0000-00-00 00:00:00', '', 0, 'http://a2fpictures.dev/?post_type=project&p=135', 0, 'project', '', 0),
(137, 1, '2016-05-02 23:26:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-05-02 23:26:48', '0000-00-00 00:00:00', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&p=137', 0, 'acf-field-group', '', 0),
(138, 1, '2016-05-02 23:35:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-05-02 23:35:50', '0000-00-00 00:00:00', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&p=138', 0, 'acf-field-group', '', 0),
(139, 1, '2016-05-02 23:36:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-05-02 23:36:06', '0000-00-00 00:00:00', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&p=139', 0, 'acf-field-group', '', 0),
(140, 1, '2016-05-02 23:36:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-05-02 23:36:19', '0000-00-00 00:00:00', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&p=140', 0, 'acf-field-group', '', 0),
(141, 1, '2016-05-02 23:38:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-05-02 23:38:36', '0000-00-00 00:00:00', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&p=141', 0, 'acf-field-group', '', 0),
(142, 1, '2016-05-02 23:40:03', '2016-05-02 23:40:03', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:17:"a2f-theme-options";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5727e5227f185', '', '', '2016-05-02 23:40:43', '2016-05-02 23:40:43', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&#038;p=142', 0, 'acf-field-group', '', 0),
(143, 1, '2016-05-02 23:40:03', '2016-05-02 23:40:03', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'About us', 'about_us', 'publish', 'closed', 'closed', '', 'field_5727e52a44dfc', '', '', '2016-05-02 23:40:03', '2016-05-02 23:40:03', '', 142, 'http://a2fpictures.dev/?post_type=acf-field&p=143', 0, 'acf-field', '', 0),
(144, 1, '2016-05-02 23:43:03', '2016-05-02 23:43:03', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:24:"acf-options-contact-info";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_5727e5863f43f', '', '', '2016-05-02 23:53:04', '2016-05-02 23:53:04', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&#038;p=144', 0, 'acf-field-group', '', 0),
(145, 1, '2016-05-02 23:43:03', '2016-05-02 23:43:03', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:50;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Address & Contact Info', 'address_&_contact_info', 'publish', 'closed', 'closed', '', 'field_5727e58a7e0dc', '', '', '2016-05-02 23:49:31', '2016-05-02 23:49:31', '', 144, 'http://a2fpictures.dev/?post_type=acf-field&#038;p=145', 0, 'acf-field', '', 0),
(146, 1, '2016-05-02 23:43:03', '2016-05-02 23:43:03', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:50;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Main Contact Info', 'main_contact_info', 'publish', 'closed', 'closed', '', 'field_5727e5df7e0dd', '', '', '2016-05-02 23:49:31', '2016-05-02 23:49:31', '', 144, 'http://a2fpictures.dev/?post_type=acf-field&#038;p=146', 1, 'acf-field', '', 0),
(147, 1, '2016-05-02 23:49:31', '2016-05-02 23:49:31', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:79:"Codes can be found here:<br>\r\nhttps://fortawesome.github.io/Font-Awesome/icons/";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Social Media Links', 'social_media_links', 'publish', 'closed', 'closed', '', 'field_5727e74784df6', '', '', '2016-05-02 23:53:04', '2016-05-02 23:53:04', '', 144, 'http://a2fpictures.dev/?post_type=acf-field&#038;p=147', 2, 'acf-field', '', 0),
(148, 1, '2016-05-02 23:49:31', '2016-05-02 23:49:31', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:40;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Font Awesome Icon Code', 'icon_code', 'publish', 'closed', 'closed', '', 'field_5727e75684df7', '', '', '2016-05-02 23:51:53', '2016-05-02 23:51:53', '', 147, 'http://a2fpictures.dev/?post_type=acf-field&#038;p=148', 0, 'acf-field', '', 0),
(149, 1, '2016-05-02 23:49:31', '2016-05-02 23:49:31', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";i:60;s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5727e77d84df8', '', '', '2016-05-02 23:51:53', '2016-05-02 23:51:53', '', 147, 'http://a2fpictures.dev/?post_type=acf-field&#038;p=149', 1, 'acf-field', '', 0),
(150, 1, '2016-05-03 02:21:35', '2016-05-03 02:21:35', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:27:"acf-options-projects-module";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Projects Module', 'projects-module', 'publish', 'closed', 'closed', '', 'group_57280ad96085c', '', '', '2016-05-03 02:21:35', '2016-05-03 02:21:35', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&#038;p=150', 0, 'acf-field-group', '', 0),
(151, 1, '2016-05-03 02:21:35', '2016-05-03 02:21:35', 'a:12:{s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:7:"project";}s:8:"taxonomy";a:0:{}s:7:"filters";a:1:{i:0;s:6:"search";}s:8:"elements";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:13:"return_format";s:6:"object";}', 'Home Page Projects', 'home_page_projects', 'publish', 'closed', 'closed', '', 'field_57280ae4ad917', '', '', '2016-05-03 02:21:35', '2016-05-03 02:21:35', '', 150, 'http://a2fpictures.dev/?post_type=acf-field&p=151', 0, 'acf-field', '', 0),
(152, 1, '2016-05-03 23:19:09', '2016-05-03 23:19:09', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"director";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Directors Projects', 'directors-projects', 'publish', 'closed', 'closed', '', 'group_572931c38ceb1', '', '', '2016-05-03 23:20:06', '2016-05-03 23:20:06', '', 0, 'http://a2fpictures.dev/?post_type=acf-field-group&#038;p=152', 0, 'acf-field-group', '', 0),
(153, 1, '2016-05-03 23:19:09', '2016-05-03 23:19:09', 'a:12:{s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:7:"project";}s:8:"taxonomy";a:0:{}s:7:"filters";a:1:{i:0;s:6:"search";}s:8:"elements";s:0:"";s:3:"min";s:0:"";s:3:"max";i:6;s:13:"return_format";s:6:"object";}', 'Showcase', 'showcase', 'publish', 'closed', 'closed', '', 'field_572931c926450', '', '', '2016-05-03 23:20:06', '2016-05-03 23:20:06', '', 152, 'http://a2fpictures.dev/?post_type=acf-field&#038;p=153', 0, 'acf-field', '', 0) ;

#
# End of data contents of table `a2fwp_posts`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_term_relationships`
#

DROP TABLE IF EXISTS `a2fwp_term_relationships`;


#
# Table structure of table `a2fwp_term_relationships`
#

CREATE TABLE `a2fwp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_term_relationships`
#
INSERT INTO `a2fwp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(14, 2, 0),
(44, 3, 0),
(45, 3, 0),
(46, 3, 0),
(47, 3, 0) ;

#
# End of data contents of table `a2fwp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_term_taxonomy`
#

DROP TABLE IF EXISTS `a2fwp_term_taxonomy`;


#
# Table structure of table `a2fwp_term_taxonomy`
#

CREATE TABLE `a2fwp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_term_taxonomy`
#
INSERT INTO `a2fwp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 4) ;

#
# End of data contents of table `a2fwp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_termmeta`
#

DROP TABLE IF EXISTS `a2fwp_termmeta`;


#
# Table structure of table `a2fwp_termmeta`
#

CREATE TABLE `a2fwp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_termmeta`
#

#
# End of data contents of table `a2fwp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_terms`
#

DROP TABLE IF EXISTS `a2fwp_terms`;


#
# Table structure of table `a2fwp_terms`
#

CREATE TABLE `a2fwp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_terms`
#
INSERT INTO `a2fwp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Nav', 'top-nav', 0),
(3, 'Directors Nav', 'directors-nav', 0) ;

#
# End of data contents of table `a2fwp_terms`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_usermeta`
#

DROP TABLE IF EXISTS `a2fwp_usermeta`;


#
# Table structure of table `a2fwp_usermeta`
#

CREATE TABLE `a2fwp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_usermeta`
#
INSERT INTO `a2fwp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'a2fSuperAdmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'a2fwp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'a2fwp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"ef50049b28aa99dcb6c9ea84f673aa869366d34d8c3dea6c372bcfbc5827fcd9";a:4:{s:10:"expiration";i:1462402781;s:2:"ip";s:13:"50.188.40.105";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36";s:5:"login";i:1462229981;}s:64:"2f30f3a1cbad02b8f496d96ff66d7fd172ece536df43fd31898bb84622e85406";a:4:{s:10:"expiration";i:1462403176;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36";s:5:"login";i:1462230376;}}'),
(15, 1, 'a2fwp_dashboard_quick_press_last_post_id', '15'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:15:"title-attribute";i:1;s:11:"link-target";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(18, 1, 'a2fwp_user-settings', 'editor=tinymce&libraryContent=browse'),
(19, 1, 'a2fwp_user-settings-time', '1462232420'),
(20, 1, 'meta-box-order_project', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:32:"postimagediv,submitdiv,formatdiv";s:6:"normal";s:44:"acf-group_57218138e08e6,revisionsdiv,slugdiv";s:8:"advanced";s:0:"";}'),
(21, 1, 'screen_layout_project', '2'),
(22, 2, 'nickname', 'mark.mazur'),
(23, 2, 'first_name', 'Mark'),
(24, 2, 'last_name', 'Mazur'),
(25, 2, 'description', ''),
(26, 2, 'rich_editing', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'a2fwp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(32, 2, 'a2fwp_user_level', '7'),
(33, 2, 'dismissed_wp_pointers', ''),
(34, 1, 'nav_menu_recently_edited', '2'),
(35, 2, 'session_tokens', 'a:2:{s:64:"02df8909cf03828cefc4446d18d0c73d939b926cca5bac922db6cea1d226e232";a:4:{s:10:"expiration";i:1462371454;s:2:"ip";s:14:"174.53.162.119";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17";s:5:"login";i:1462198654;}s:64:"bb8f6191fa8e412dc877db7205b1d99c45fb46cb5604bfa9e701496982d72a88";a:4:{s:10:"expiration";i:1462375768;s:2:"ip";s:14:"174.53.162.119";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17";s:5:"login";i:1462202968;}}'),
(36, 2, 'a2fwp_dashboard_quick_press_last_post_id', '52'),
(37, 2, 'a2fwp_user-settings', 'libraryContent=browse&mfold=o'),
(38, 2, 'a2fwp_user-settings-time', '1462218808'),
(39, 1, 'acf_user_settings', 'a:0:{}'),
(40, 1, 'closedpostboxes_a2f-options_page_acf-options-projects-module', 'a:0:{}'),
(41, 1, 'metaboxhidden_a2f-options_page_acf-options-projects-module', 'a:0:{}') ;

#
# End of data contents of table `a2fwp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `a2fwp_users`
#

DROP TABLE IF EXISTS `a2fwp_users`;


#
# Table structure of table `a2fwp_users`
#

CREATE TABLE `a2fwp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `a2fwp_users`
#
INSERT INTO `a2fwp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'a2fSuperAdmin', '$P$BsaOLOWM/WNXDb69U5n.2z4BWjuSP50', 'a2fsuperadmin', 'hello@johnkvang.com', '', '2016-03-26 01:48:28', '', 0, 'a2fSuperAdmin'),
(2, 'mark.mazur', '$P$BnimMaHMZWsQ/D.dF/GsE7xXHC1eXL.', 'mark-mazur', 'mark@a2fpictures.com', '', '2016-04-28 22:55:16', '1461884117:$P$BmRJVDLkNSmZbJWkuD06IKAIbK0ngn/', 0, 'Mark Mazur') ;

#
# End of data contents of table `a2fwp_users`
# --------------------------------------------------------

#
# Add constraints back in
#

