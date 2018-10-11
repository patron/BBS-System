-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 11 2018 г., 17:46
-- Версия сервера: 5.6.38
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ci_auth`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cibb_categories`
--

CREATE TABLE `cibb_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_edit` datetime NOT NULL,
  `publish` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `cibb_categories`
--

INSERT INTO `cibb_categories` (`id`, `parent_id`, `name`, `slug`, `date_added`, `date_edit`, `publish`) VALUES
(11, 0, 'Web Programming', 'web-programming', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(12, 11, 'PHP', 'php', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(13, 0, 'Web Design', 'web-design', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(14, 13, 'CSS', 'css', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(15, 12, 'Beginner & Installation', 'php-beginner-installation', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(16, 12, 'Session, Cookie, Security', 'php-session-cookie-security', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(17, 12, 'File & Image Manipulation', 'php-file-image-manipulation', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(18, 14, 'Responsive Layout', 'css-responsive-layout', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(19, 14, 'Beginner', 'css-beginner', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(20, 14, 'Effect, Animation, Gradient', 'css-effect-animation-gradient', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(21, 11, 'Javascript', 'javascript', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(22, 21, 'Jquery', 'jquery', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(23, 0, 'Project Management', 'project-management', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cibb_posts`
--

CREATE TABLE `cibb_posts` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `reply_to_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_edit` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `cibb_posts`
--

INSERT INTO `cibb_posts` (`id`, `thread_id`, `reply_to_id`, `author_id`, `post`, `date_add`, `date_edit`) VALUES
(2, 2, 0, 5, 'Hello!\r\nI have SMF 2.0.2\r\nI\'ve been tweaking it a lot and now it\'s almost perfect. But one last thing which kinda bothers me (though it might not be so crucial for other, I don\'t know...).\r\nThe left part of body of each post is somewhat different in color. I mean that\'s where you see the name of the poster, etc.\r\nIn my case, it\'s all ONE solid color from wall to wall, so to speak. There\'s no any border or a distinction between the part where the text resides and where the posters\' stats are. ', '2012-08-04 05:25:16', '0000-00-00 00:00:00'),
(4, 3, 0, 5, 'I have a datetime column in mysql which I need to convert to mm/dd/yy H:M (AM/PM) using PHP.', '2012-08-06 06:18:59', '0000-00-00 00:00:00'),
(5, 4, 0, 5, 'Is there a simple way to convert one date format into another date format in PHP?', '2012-08-06 06:19:38', '0000-00-00 00:00:00'),
(17, 2, 0, 5, 'ascsac', '2012-08-06 13:16:04', '0000-00-00 00:00:00'),
(19, 4, 0, 5, 'jtyjtyjyt', '2012-08-06 13:30:00', '0000-00-00 00:00:00'),
(20, 4, 0, 5, 'tyjtyj', '2012-08-06 13:30:02', '0000-00-00 00:00:00'),
(21, 3, 0, 5, 'fyjyytj', '2012-08-06 13:30:13', '0000-00-00 00:00:00'),
(22, 3, 0, 5, 'ytjtyj', '2012-08-06 13:30:16', '0000-00-00 00:00:00'),
(23, 2, 0, 5, '656u5556656u', '2012-08-06 13:30:25', '0000-00-00 00:00:00'),
(32, 2, 0, 5, 'tryrtytr', '2012-08-07 06:34:04', '0000-00-00 00:00:00'),
(33, 2, 0, 5, 'tryrtysytsy', '2012-08-07 06:34:07', '0000-00-00 00:00:00'),
(34, 2, 0, 5, 'tryrtysytsy', '2012-08-07 06:34:07', '0000-00-00 00:00:00'),
(35, 2, 0, 5, 'rtyryrty', '2012-08-07 06:34:38', '0000-00-00 00:00:00'),
(36, 2, 0, 5, 'hthrthrt', '2012-08-07 06:41:41', '0000-00-00 00:00:00'),
(37, 2, 0, 5, 'rthrthrt', '2012-08-07 06:41:57', '0000-00-00 00:00:00'),
(38, 2, 0, 5, '345345', '2012-08-07 06:41:59', '0000-00-00 00:00:00'),
(39, 2, 0, 5, 'q45q45q345', '2012-08-07 06:42:01', '0000-00-00 00:00:00'),
(40, 5, 0, 5, 'I am not good at regular expressio. How to do a php regular expression, make a judge if a string first word is (a-h), second word is @, third part are numbers(length range from 4-15)?', '2012-08-07 12:53:33', '0000-00-00 00:00:00'),
(41, 3, 0, 5, 'dfsdfsd', '2012-08-07 12:55:49', '0000-00-00 00:00:00'),
(42, 3, 0, 5, 'sdfsdf', '2012-08-07 12:56:13', '0000-00-00 00:00:00'),
(43, 3, 0, 5, 'ergerg', '2012-08-07 12:58:48', '0000-00-00 00:00:00'),
(46, 6, 0, 5, 'I\'m basically trying to convert an image into a fluid HTML table. I\'ve dissected the image to one top piece and 5 bottom pieces and placed them in the appropriate cells to reconstruct the image.', '2012-08-07 13:11:09', '0000-00-00 00:00:00'),
(52, 4, 0, 5, 'ghghhgj', '2012-08-13 03:23:51', '0000-00-00 00:00:00'),
(53, 4, 0, 0, 'fdfdg', '2012-08-13 05:30:12', '0000-00-00 00:00:00'),
(54, 4, 0, 0, 'dfgdfg', '2012-08-13 05:30:15', '0000-00-00 00:00:00'),
(55, 4, 0, 0, 'dfg', '2012-08-13 05:30:17', '0000-00-00 00:00:00'),
(59, 7, 0, 5, 'I would like all the resulting methods to be included in the RDoc documentation. Is there an RDoc directive which \"manually\" adds a method to the list of methods for the class? I can\'t find one.', '2012-08-13 06:33:48', '0000-00-00 00:00:00'),
(61, 9, 0, 5, '\r\n0\r\nvotes\r\n0\r\nanswers\r\n37 views\r\ntransfer (add/remove) php array values between 2 divs\r\nI have a normal div, having an input textbox which can be edited manually. I want to add/remove php values from another div having a set of php array values (from a query). Each value have an [Add] or ...', '2012-08-13 06:38:03', '0000-00-00 00:00:00'),
(62, 10, 0, 5, 'My first cry for help here. Not sure if my title is properly explicit but it\'s the only one I can come up with right now. I\'ve been at it for 2 days now and I have read so many different things that I ...', '2012-08-13 06:38:42', '0000-00-00 00:00:00'),
(63, 11, 0, 5, 'How can I remove \'index.php\' from urls, if I have some controllers in the controllers folder and one in subfolder? For example my frontend url looks like this : domain.com/site/contact.html I would like my backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:', '2012-08-13 07:16:03', '0000-00-00 00:00:00'),
(64, 7, 0, 5, 'fghghgthrth', '2012-08-13 07:34:58', '0000-00-00 00:00:00'),
(66, 7, 0, 5, 'ewfwef', '2012-08-13 08:18:47', '0000-00-00 00:00:00'),
(67, 2, 2, 5, 'eyewyy', '2012-08-13 10:40:09', '0000-00-00 00:00:00'),
(68, 2, 67, 5, '123123123', '2012-08-13 10:40:40', '0000-00-00 00:00:00'),
(69, 2, 2, 5, '123213321', '2012-08-13 10:40:53', '0000-00-00 00:00:00'),
(70, 2, 2, 5, 'yjtyjtyjytjytjyjt', '2012-08-13 11:02:40', '0000-00-00 00:00:00'),
(71, 11, 63, 5, 'backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:', '2012-08-13 11:15:20', '0000-00-00 00:00:00'),
(72, 11, 63, 5, 'posted by admin \"How can I remove \'index.php\' from urls, if I have some controllers in the controllers folder and one in subfolder? For example my frontend url looks like this : domain.com/site/contact.html I would like my backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:\"\r\n                        ', '2012-08-13 13:20:35', '0000-00-00 00:00:00'),
(73, 2, 0, 0, '<b>efwefwefew</b><br>', '2012-08-14 05:09:21', '0000-00-00 00:00:00'),
(74, 2, 0, 5, '<p>sdfadfadff</p>', '2012-08-14 05:10:46', '0000-00-00 00:00:00'),
(75, 2, 0, 5, '<p><b>Initial contentsadf</b></p>', '2012-08-14 05:10:53', '0000-00-00 00:00:00'),
(76, 11, 71, 5, 'posted by <b>@admin</b><p><i>backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:</i></p><p>eefwfwefwefwef<i><br></i></p>', '2012-08-14 05:58:30', '0000-00-00 00:00:00'),
(77, 11, 71, 5, '<div style=\"font-size:11px; padding:5px;\">posted by <b>@admin</b><p><i>backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:</i></p>rtyretyery<br></div>', '2012-08-14 05:59:46', '0000-00-00 00:00:00'),
(78, 11, 76, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@admin</b><p><i>posted by <b>@admin</b></i></p><p><i><i>backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:</i></i></p><p><i>eefwfwefwefwefrety</i></p><p><i><i>rtyretyrty<br></i></i></p><p></p></div>', '2012-08-14 06:01:35', '0000-00-00 00:00:00'),
(79, 11, 63, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@admin</b><p><i>How can I remove \'index.php\' from urls, if I have some controllers in the controllers folder and one in subfolder? For example my frontend url looks like this : domain.com/site/contact.html I would like my backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:</i></p></div>rtyrtyreyryreyertyrey', '2012-08-14 06:02:20', '0000-00-00 00:00:00'),
(80, 11, 76, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@admin</b><p><i>posted by <b>@admin</b></i></p><p><i><i>backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:</i></i></p><p><i>eefwfwefwefwef<i><br></i></i></p><p></p></div><br>retyretyeryertyre ret yretyer ty', '2012-08-14 06:02:46', '0000-00-00 00:00:00'),
(81, 11, 80, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@admin</b><p><i>&lt;div style=\"font-size:11px; background: #e3e3e3;padding:5px;\"&gt;posted by &lt;b&gt;@admin&lt;/b&gt;&lt;p&gt;&lt;i&gt;posted by &lt;b&gt;@admin&lt;/b&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;i&gt;backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:&lt;/i&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;&lt;i&gt;eefwfwefwefwef&lt;i&gt;&lt;br&gt;&lt;/i&gt;&lt;/i&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;&lt;br&gt;retyretyeryertyre ret yretyer ty</i></p></div>', '2012-08-14 06:03:48', '0000-00-00 00:00:00'),
(82, 11, 63, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@admin</b><p><i>How can I remove \'index.php\' from urls, if I have some controllers in the controllers folder and one in subfolder? For example my frontend url looks like this : domain.com/site/contact.html I would like my backend url look like this: domain.com/system/settings/profile.html, where system is not a controller, only a subfolder in the controllers folder. When I type domain.com/index.php/system/settings/profile.html, everything works fine, it just does not look right. Here\'s what\'s in my routes.php file:</i></p></div>rtyrety', '2012-08-14 06:06:20', '0000-00-00 00:00:00'),
(83, 2, 23, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@admin</b><p><i>656u5556656u</i></p></div><br>sfsss', '2012-08-14 06:09:56', '0000-00-00 00:00:00'),
(84, 2, 83, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\"><i>posted by @admin656u5556656usfsss</i></div><br>sfsfss', '2012-08-14 06:10:20', '0000-00-00 00:00:00'),
(85, 12, 0, 5, '<p><b itemscope=\"\" itemtype=\"http://data-vocabulary.org/Breadcrumb\"><a href=\"https://github.com/akzhan/jwysiwyg\" class=\"js-rewrite-sha\" itemprop=\"url\"><span itemprop=\"title\">jwysiwyg</span></a></b> / <span itemscope=\"\" itemtype=\"http://data-vocabulary.org/Breadcrumb\"><a href=\"https://github.com/akzhan/jwysiwyg/tree/master/help\" class=\"js-rewrite-sha\" itemscope=\"url\"><span itemprop=\"title\">help</span></a></span> / <span itemscope=\"\" itemtype=\"http://data-vocabulary.org/Breadcrumb\"><a href=\"https://github.com/akzhan/jwysiwyg/tree/master/help/examples\" class=\"js-rewrite-sha\" itemscope=\"url\"><span itemprop=\"title\">examples</span></a></span> / <strong class=\"final-path\">10-custom-controls.html</strong></p>', '2012-08-14 06:15:57', '0000-00-00 00:00:00'),
(86, 12, 85, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@admin</b><p><i>jwysiwyg / help / examples / 10-custom-controls.html</i></p></div><br>how', '2012-08-14 06:15:58', '0000-00-00 00:00:00'),
(87, 13, 0, 5, '<p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-color: rgb(255, 255, 255); clear: both; word-wrap: break-word; color: rgb(0, 0, 0); font-family: Arial, \'Liberation Sans\', \'DejaVu Sans\', sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-position: initial initial; background-repeat: initial initial; \">I am trying to create a schedule for a Tae Kwon Do school, and I would like the admins to be able to CRUD their table .</p><p style=\"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background-color: rgb(255, 255, 255); clear: both; word-wrap: break-word; color: rgb(0, 0, 0); font-family: Arial, \'Liberation Sans\', \'DejaVu Sans\', sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-position: initial initial; background-repeat: initial initial; \">This is how I would like for it to look:</p>', '2012-08-14 06:43:59', '0000-00-00 00:00:00'),
(88, 13, 87, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@admin</b><p><i>I am trying to create a schedule for a Tae Kwon Do school, and I would like the admins to be able to CRUD their table .This is how I would like for it to look:</i></p></div><br>fyuytuityutyutyu', '2012-08-14 13:22:47', '0000-00-00 00:00:00'),
(89, 2, 0, 5, 'fghfghfgh', '2012-08-15 04:40:45', '0000-00-00 00:00:00'),
(90, 9, 61, 5, 'which can be edited manually. I want to add/remove php values from \r\nanother div having a set of php array values (from a query). Each value \r\nhave an [Add', '2012-08-15 07:30:44', '0000-00-00 00:00:00'),
(91, 13, 0, 5, 'yytyu', '2012-12-02 03:23:57', '0000-00-00 00:00:00'),
(92, 13, 87, 5, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@admin</b><p><i>I am trying to create a schedule for a Tae Kwon Do school, and I would like the admins to be able to CRUD their table .This is how I would like for it to look:</i></p></div><br>iuiyio', '2012-12-02 03:24:08', '0000-00-00 00:00:00'),
(93, 13, 0, 1, '1234dghjm', '2018-10-08 00:57:39', '0000-00-00 00:00:00'),
(94, 13, 0, 1, '777888', '2018-10-08 01:05:30', '0000-00-00 00:00:00'),
(95, 14, 0, 1, 'Hello blockchain', '2018-10-08 10:12:08', '0000-00-00 00:00:00'),
(96, 14, 0, 1, 'ftdgdg', '2018-10-09 11:25:41', '0000-00-00 00:00:00'),
(97, 15, 0, 3, 'hello forum', '2018-10-10 12:01:56', '0000-00-00 00:00:00'),
(98, 15, 97, 3, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@Admin</b><p><i>hello forum</i></p></div><br>7777', '2018-10-10 12:02:01', '0000-00-00 00:00:00'),
(99, 16, 0, 3, 'adsfadsf', '2018-10-11 17:38:16', '0000-00-00 00:00:00'),
(100, 16, 0, 3, 'dvcsadfsadfsa', '2018-10-11 17:42:20', '0000-00-00 00:00:00'),
(101, 16, 100, 3, '<div style=\"font-size:11px; background: #e3e3e3;padding:5px;\">posted by <b>@Admin</b><p><i>dvcsadfsadfsa</i></p></div><br>', '2018-10-11 17:42:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `cibb_roles`
--

CREATE TABLE `cibb_roles` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `admin_area` int(1) NOT NULL DEFAULT '0',
  `thread_create` int(1) NOT NULL DEFAULT '0',
  `thread_edit` int(1) NOT NULL DEFAULT '0',
  `thread_delete` int(1) NOT NULL DEFAULT '0',
  `post_create` int(1) NOT NULL DEFAULT '0',
  `post_edit` int(1) NOT NULL DEFAULT '0',
  `post_delete` int(1) NOT NULL DEFAULT '0',
  `role_create` int(1) NOT NULL DEFAULT '0',
  `role_edit` int(1) NOT NULL DEFAULT '0',
  `role_delete` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `cibb_roles`
--

INSERT INTO `cibb_roles` (`id`, `role`, `admin_area`, `thread_create`, `thread_edit`, `thread_delete`, `post_create`, `post_edit`, `post_delete`, `role_create`, `role_edit`, `role_delete`) VALUES
(2, 'Bbsadmin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'member', 0, 1, 0, 0, 1, 0, 0, 0, 0, 0),
(4, 'editor', 0, 0, 1, 1, 0, 1, 1, 0, 0, 0),
(5, 'test', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cibb_threads`
--

CREATE TABLE `cibb_threads` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_edit` datetime NOT NULL,
  `date_last_post` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `cibb_threads`
--

INSERT INTO `cibb_threads` (`id`, `category_id`, `title`, `slug`, `date_add`, `date_edit`, `date_last_post`) VALUES
(2, 19, 'Need help for forum styling using phpBB', 'need-help-for-forum-styling-using-phpbb', '2012-08-04 05:25:16', '0000-00-00 00:00:00', '2012-08-04 05:25:16'),
(3, 12, 'Format mysql datetime with php', 'format-mysql-datetime-with-php', '2012-08-06 06:18:59', '0000-00-00 00:00:00', '2012-08-06 06:18:59'),
(4, 12, 'Convert one date format into another in PHP', 'convert-one-date-format-into-another-in-php', '2012-08-06 06:19:38', '0000-00-00 00:00:00', '2012-08-06 06:19:38'),
(6, 18, 'Fluid images in table - Width: CSS vs HTML', 'fluid-images-in-table---width:-css-vs-html', '2012-08-07 13:11:09', '0000-00-00 00:00:00', '2012-08-07 13:11:09'),
(7, 12, 'How to add RDoc documentation for a method defined using class_eval?', 'how-to-add-rdoc-documentation-for-a-method-defined-using-classeval', '2012-08-13 06:33:48', '0000-00-00 00:00:00', '2012-08-13 06:33:48'),
(9, 11, 'transfer (add/remove) php array values between 2 divs', 'transfer-addremove-php-array-values-between-2-divs', '2012-08-13 06:38:03', '0000-00-00 00:00:00', '2012-08-13 06:38:03'),
(10, 11, 'Creating an associative array from PHP through AJAX in JQUERY', 'creating-an-associative-array-from-php-through-ajax-in-jquery', '2012-08-13 06:38:42', '0000-00-00 00:00:00', '2012-08-13 06:38:42'),
(11, 12, 'Codeigniter - controllers in subfolder, remove index.php from url', 'codeigniter--controllers-in-subfolder-remove-indexphp-from-url', '2012-08-13 07:16:03', '0000-00-00 00:00:00', '2012-08-13 07:16:03'),
(12, 13, '10-custom-controls.html', '10customcontrolshtml', '2012-08-14 06:15:57', '0000-00-00 00:00:00', '2012-08-14 06:15:57'),
(13, 13, 'Multiple forms in tables, multiple submit buttons. Can I do it with just PHP and HTML?', 'multiple-forms-in-tables-multiple-submit-buttons-can-i-do-it-with-just-php-and-html', '2012-08-14 06:43:59', '0000-00-00 00:00:00', '2012-08-14 06:43:59'),
(14, 23, 'Blockchain ', 'blockchain-', '2018-10-08 10:12:08', '0000-00-00 00:00:00', '2018-10-08 10:12:08'),
(15, 23, 'Test thread for udc', 'test-thread-for-udc', '2018-10-10 12:01:56', '0000-00-00 00:00:00', '2018-10-10 12:01:56'),
(16, 14, 'Blockchain ', 'blockchain-21', '2018-10-11 17:38:16', '0000-00-00 00:00:00', '2018-10-11 17:38:16');

-- --------------------------------------------------------

--
-- Структура таблицы `usertable`
--

CREATE TABLE `usertable` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(70) DEFAULT NULL,
  `role` enum('Bbsadmin','Bbsuser') DEFAULT NULL,
  `fullname` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ethaddr` varchar(42) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ethpkey` varchar(68) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `usertable`
--

INSERT INTO `usertable` (`id`, `username`, `password`, `role`, `fullname`, `email`, `ethaddr`, `ethpkey`, `role_id`) VALUES
(1, 'user1', '$2y$12$R3/UQn8upDpWrH0ABjr7EuLriZDHTBuddWMtuR63zqxEz/MCljFrW', 'Bbsuser', 'User1', 'bbsjirauser1@gmail.com', '0x5e042fbab85df501dffb0aad30e159d15bb388bd', 'd3a8ec53b34da61c8e5e00ed5445424421cab147e9ffcc1c649ffa1a0a968ed5', 2),
(2, 'user2', '$2y$12$ETZ435g8qqsemAbNfc0ZreR7XCSrPGEeVgUnnlECuGu5dMsEbgwQ2', 'Bbsuser', 'User2', 'userrbi2@hotmail.com', '0xE7253fe2834559604dc917Cbe8420301912d0445', '0BE41454D39278B39482EF100EF379D7A24D97B4AB34348F562D2DA4B28DDA95', 0),
(3, 'Admin', '$2y$12$oFvEgcdhBiyWRHZe7F8v.uArnVJ6JKh9lt7gOmXagDaJXXRiH.XNa', 'Bbsadmin', 'Alexey Grigoriev', 'st.graalex@gmail.com', '0x47f8fb893E7f40AD9E1DDfFD46830949039C050B', '08bd1926ade5f2b48a6b0092253c328bc6c6f46e8dc393898ccddc8b3ce6933e', 2),
(5, 'user3', '$2y$12$MzLA1834sk5d/rGEjHXeIegbQHA3LAtm/KETqXcXeifAB7b6VK.W2', 'Bbsuser', 'User3', 'userer3@yahoo.com', '0x2031A5EA6c6dC2cb69D0A148378118294A5b3904', '54023b1da8a3a05eb4398c70307afb32b13c640dab77651011e5e716570df0f0', 0),
(6, 'salim', '$2y$12$ZgN7Nf3yYLdDagpbnJtL/OhUedwYlOxYoxpv7vXjX7QU3/XXz9LxG', 'Bbsuser', 'Sasha Koen', 'salim@salimov.com', '0xC756aA55A4b6F69d0C4638523bF9b9bf34BA81a6', 'f663a14a902c0b26318d34f2c8e9c5fc3c7e994b741c8945301c14861a3592a1', 0),
(7, 'Amic', '$2y$12$t4j0QHLoai.SLS68qRD79Oc8x1vlnCcYe3OLMd8ZEhu0NfQ6IJ0OO', 'Bbsuser', 'Michael Anzheurov', 'amic@gmail.com', '0x3aBF8Ec7aA6B4cC606022d58B6ed2513d4f90615', '17f8b74b3388e3630c928fb740d79b54c35715767d6a59512926eaced175ce07', 0),
(8, 'pservit', '$2y$12$EkuRjg.m6gETfSeKAZA9W.1rqbybni2rQ1ZRljkS8b2gmu/5TGGUG', 'Bbsuser', 'Sergey Prihodko', 'serj@somemail.com', '0x577a6b470A2a573B42F06Ba3EBD3f51B79e330e5', 'e82846e02f1088facca8423024e12d948992ec2e2e100ddf835fde205b679773', 0),
(9, 'Maximus', '$2y$12$GyU4hJghOyN6uLdqOGiGeuaNADu6T4.9bH999GLuJq6.eRrt6hwKm', 'Bbsuser', 'Maxim Girilishen', 'max@maximail.com', '0x55538f847cE465bC427CE66e3DE4CaA994461Cfa', 'a91fcd97ce022f86166a34690d9998ac078d28989c86fae22c59afa8773fa776', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cibb_categories`
--
ALTER TABLE `cibb_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cibb_posts`
--
ALTER TABLE `cibb_posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cibb_roles`
--
ALTER TABLE `cibb_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cibb_threads`
--
ALTER TABLE `cibb_threads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cibb_categories`
--
ALTER TABLE `cibb_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `cibb_posts`
--
ALTER TABLE `cibb_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `cibb_roles`
--
ALTER TABLE `cibb_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `cibb_threads`
--
ALTER TABLE `cibb_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
