-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 02 2018 г., 14:37
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

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
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `cm_id` int(11) NOT NULL,
  `ds_id` int(11) NOT NULL,
  `cm_body` text NOT NULL,
  `cm_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_id` int(11) NOT NULL,
  `cm_is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`cm_id`, `ds_id`, `cm_body`, `cm_created_at`, `usr_id`, `cm_is_active`) VALUES
(2, 5, 'test answer 333', '2018-09-30 10:50:44', 6, 1),
(3, 5, 'test answer 333', '2018-09-30 10:51:13', 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `discussions`
--

CREATE TABLE `discussions` (
  `ds_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL,
  `ds_title` varchar(255) NOT NULL,
  `ds_body` text NOT NULL,
  `ds_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ds_is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `discussions`
--

INSERT INTO `discussions` (`ds_id`, `usr_id`, `ds_title`, `ds_body`, `ds_created_at`, `ds_is_active`) VALUES
(4, 4, 'admin', 'admin test', '2018-09-30 10:32:38', 1),
(5, 5, 'test question desc', 'test test test', '2018-09-30 10:49:39', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `usertable`
--

CREATE TABLE `usertable` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(70) DEFAULT NULL,
  `role` enum('Admin','User') DEFAULT NULL,
  `fullname` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ethaddr` varchar(42) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ethpkey` varchar(68) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `usertable`
--

INSERT INTO `usertable` (`id`, `username`, `password`, `role`, `fullname`, `email`, `ethaddr`, `ethpkey`) VALUES
(1, 'user1', '$2y$12$R3/UQn8upDpWrH0ABjr7EuLriZDHTBuddWMtuR63zqxEz/MCljFrW', 'User', 'User1', 'bbsjirauser1@gmail.com', '0x5e042fbab85df501dffb0aad30e159d15bb388bd', 'd3a8ec53b34da61c8e5e00ed5445424421cab147e9ffcc1c649ffa1a0a968ed5'),
(2, 'user2', '$2y$12$ETZ435g8qqsemAbNfc0ZreR7XCSrPGEeVgUnnlECuGu5dMsEbgwQ2', 'User', 'User2', 'userrbi2@hotmail.com', '0xE7253fe2834559604dc917Cbe8420301912d0445', '0BE41454D39278B39482EF100EF379D7A24D97B4AB34348F562D2DA4B28DDA95'),
(3, 'Admin', '$2y$12$oFvEgcdhBiyWRHZe7F8v.uArnVJ6JKh9lt7gOmXagDaJXXRiH.XNa', 'Admin', 'Alexey Grigoriev', 'st.graalex@gmail.com', '0x47f8fb893E7f40AD9E1DDfFD46830949039C050B', '08bd1926ade5f2b48a6b0092253c328bc6c6f46e8dc393898ccddc8b3ce6933e'),
(5, 'user3', '$2y$12$MzLA1834sk5d/rGEjHXeIegbQHA3LAtm/KETqXcXeifAB7b6VK.W2', 'User', 'User3', 'userer3@yahoo.com', '0x2031A5EA6c6dC2cb69D0A148378118294A5b3904', '54023b1da8a3a05eb4398c70307afb32b13c640dab77651011e5e716570df0f0'),
(6, 'salim', '$2y$12$ZgN7Nf3yYLdDagpbnJtL/OhUedwYlOxYoxpv7vXjX7QU3/XXz9LxG', 'User', 'Sasha Koen', 'salim@salimov.com', '0xC756aA55A4b6F69d0C4638523bF9b9bf34BA81a6', 'f663a14a902c0b26318d34f2c8e9c5fc3c7e994b741c8945301c14861a3592a1'),
(7, 'Amic', '$2y$12$t4j0QHLoai.SLS68qRD79Oc8x1vlnCcYe3OLMd8ZEhu0NfQ6IJ0OO', 'User', 'Michael Anzheurov', 'amic@gmail.com', '0x3aBF8Ec7aA6B4cC606022d58B6ed2513d4f90615', '17f8b74b3388e3630c928fb740d79b54c35715767d6a59512926eaced175ce07'),
(8, 'pservit', '$2y$12$EkuRjg.m6gETfSeKAZA9W.1rqbybni2rQ1ZRljkS8b2gmu/5TGGUG', 'User', 'Sergey Prihodko', 'serj@somemail.com', '0x577a6b470A2a573B42F06Ba3EBD3f51B79e330e5', 'e82846e02f1088facca8423024e12d948992ec2e2e100ddf835fde205b679773'),
(9, 'Maximus', '$2y$12$GyU4hJghOyN6uLdqOGiGeuaNADu6T4.9bH999GLuJq6.eRrt6hwKm', 'User', 'Maxim Girilishen', 'max@maximail.com', '0x55538f847cE465bC427CE66e3DE4CaA994461Cfa', 'a91fcd97ce022f86166a34690d9998ac078d28989c86fae22c59afa8773fa776');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`ds_id`);

--
-- Индексы таблицы `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
