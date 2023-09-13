drop database lms;
create database lms;
use lms;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`id`, `email`, `password`) VALUES

(1, 'gauravanand@gmail.com','friend');

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `books` (`id`, `name`, `desc`, `author`, `availability`, `edition`, `count`) VALUES
(1, 'Quantum Computing Unleashed', 'Delve into the next frontier of computational power and the principles behind quantum algorithms.', 'Dr. Clara Barton', 1, '1', 3),
(2, 'Blockchain and the Future of Finance', 'An in-depth exploration of how blockchain technology is revolutionizing transactions, contracts, and trust.', 'Alexander Roberts', 1, '1', 5),
(3, 'Data Science and Analysis','Unlocking the power of data through cutting-edge techniques and insightful exploration.', 'Mr Shane Thomas', 1,'1st',10),
(4, 'Data Science Mastery', 'A comprehensive guide to modern data analysis techniques and tools.', 'Dr. Rachel Adams', 1, '2nd', 10),
(5, 'SQL Deep Dive', 'Explore the intricacies of SQL and its application in real-world scenarios.', 'Marcus Oliver', 1, '1st', 6),
(6, 'Machine Learning Foundations', 'Discover the underlying principles and methods driving the AI revolution.', 'Prof. Alan Turing', 1, '3rd', 8),
(7, 'Big Data Paradigms', 'Understanding the challenges and solutions in handling vast datasets.', 'Jennifer Smith', 1, '1st', 4),
(8, 'Tech Trends of the 21st Century', 'An analysis of groundbreaking technological advancements and their impacts.', 'Leo McKenzie', 1, '2nd', 7),
(9, 'Advanced Database Design', 'Dive deep into the art and science of creating efficient and scalable databases.', 'Sophia Grant', 1, '1st', 5),
(10, 'Cloud Computing Demystified', 'A primer on the transformative power of cloud technologies.', 'Neil Armstrong', 1, '1st', 5),
(11, 'From Data to Decisions', 'Harness the potential of data to make informed and effective business choices.', 'Olivia Martinez', 1, '3rd', 8),
(12, 'AI Ethics and Society', 'A critical examination of the social implications and ethical considerations of artificial intelligence.', 'Dr. Samuel Peters', 1, '1st', 6),
(13, 'Internet of Things: A Connected World', 'Dive into the interconnected era where everyday objects become smarter.', 'Isabelle Lee', 1, '2nd', 7);


CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `reserve` (`id`, `user_id`, `book_id`) VALUES
(1, 1, 1),
(2, 6, 1);


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_520_ci,
  `mob` varchar(255) COLLATE utf8mb4_unicode_520_ci,
  `lock` tinyint(1),
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



INSERT INTO `users` (`id`, `name`, `email`, `password`, `bio`, `mob`, `lock`, `created_at`) VALUES
(1, 'Gaurav Anand', 'gauravanand@gmail.com','friend', 'hello', '', 0, '2023-09-10 21:07:54');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
