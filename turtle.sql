-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 19 2023 г., 16:18
-- Версия сервера: 10.11.3-MariaDB-1
-- Версия PHP: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `turtle`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fraction`
--

CREATE TABLE `fraction` (
  `id` int(11) NOT NULL,
  `fraction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `fraction`
--

INSERT INTO `fraction` (`id`, `fraction`) VALUES
(1, 'mutant'),
(2, 'mutant'),
(3, 'mutant'),
(4, 'mutant');

-- --------------------------------------------------------

--
-- Структура таблицы `personagi`
--

CREATE TABLE `personagi` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `stats` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `personagi`
--

INSERT INTO `personagi` (`id`, `name`, `age`, `stats`) VALUES
(1, 'leonardo', 50, 'kind'),
(2, 'rafael', 50, 'kind'),
(3, 'mikelandjelo', 50, 'kind'),
(4, 'donatello', 50, 'kind');

-- --------------------------------------------------------

--
-- Структура таблицы `race`
--

CREATE TABLE `race` (
  `id` int(11) NOT NULL,
  `name_race` varchar(50) NOT NULL,
  `origin_world` varchar(50) NOT NULL,
  `peculiarity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `race`
--

INSERT INTO `race` (`id`, `name_race`, `origin_world`, `peculiarity`) VALUES
(1, 'mutant', 'comics', 'turtle'),
(2, 'mutant', 'comics', 'turtle'),
(3, 'mutant', 'comics', 'turtle'),
(4, 'mutant', 'comics', 'turtle');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `pass`) VALUES
(1, 'user_1', '12345'),
(2, 'admin', '12345'),
(3, 'gladmin', '123456789');

-- --------------------------------------------------------

--
-- Структура таблицы `weapon`
--

CREATE TABLE `weapon` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `damage_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `weapon`
--

INSERT INTO `weapon` (`id`, `name`, `type`, `damage_type`) VALUES
(1, 'katany', 'close combat', 'cutting damage'),
(2, 'sai', 'close combat', 'cutting damage'),
(3, 'nunchucks', 'close combat', 'cutting damage');

-- --------------------------------------------------------

--
-- Структура таблицы `world`
--

CREATE TABLE `world` (
  `id` int(11) NOT NULL,
  `name_world` varchar(50) NOT NULL,
  `versions` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `season_appearance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `world`
--

INSERT INTO `world` (`id`, `name_world`, `versions`, `description`, `season_appearance`) VALUES
(1, 'Earth', '1', 'turtle', '1'),
(2, 'Earth', '1', 'turtle', '1'),
(3, 'Earth', '1', 'turtle', '1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fraction`
--
ALTER TABLE `fraction`
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `personagi`
--
ALTER TABLE `personagi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `race`
--
ALTER TABLE `race`
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `weapon`
--
ALTER TABLE `weapon`
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `world`
--
ALTER TABLE `world`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `personagi`
--
ALTER TABLE `personagi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `fraction`
--
ALTER TABLE `fraction`
  ADD CONSTRAINT `fraction_ibfk_1` FOREIGN KEY (`id`) REFERENCES `personagi` (`id`);

--
-- Ограничения внешнего ключа таблицы `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `race_ibfk_1` FOREIGN KEY (`id`) REFERENCES `personagi` (`id`);

--
-- Ограничения внешнего ключа таблицы `weapon`
--
ALTER TABLE `weapon`
  ADD CONSTRAINT `weapon_ibfk_1` FOREIGN KEY (`id`) REFERENCES `personagi` (`id`);

--
-- Ограничения внешнего ключа таблицы `world`
--
ALTER TABLE `world`
  ADD CONSTRAINT `world_ibfk_1` FOREIGN KEY (`id`) REFERENCES `personagi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
