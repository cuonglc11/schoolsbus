-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 25, 2020 lúc 07:18 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `schoolsbus`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id_chapter` int(10) NOT NULL,
  `titile` varchar(225) NOT NULL,
  `id_lesson` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id_chapter`, `titile`, `id_lesson`) VALUES
(4, 'Chapter 1', 1),
(5, 'Chapter 2', 1),
(6, 'Chapter 3', 1),
(7, 'Chapter 4', 1),
(8, 'Chapter 5', 1),
(9, 'Chapter 6', 1),
(10, 'Chapter 7', 1),
(11, 'Chapter 1', 2),
(12, 'Chapter 2', 2),
(14, 'Chapter 3', 2),
(15, 'Chapter 4', 2),
(16, 'Chapter 5', 2),
(17, 'Chapter 6', 2),
(18, 'Chapter 7', 2),
(19, 'Chapter 8', 2),
(20, 'Chapter 9', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(10) UNSIGNED NOT NULL,
  `user_comment` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `id_chapter` int(10) NOT NULL,
  `time_comment` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_comment`, `user_comment`, `content`, `id_chapter`, `time_comment`) VALUES
(9, 1, 'hay', 4, '2020-04-11 01:27:31'),
(10, 2, 'oiou', 4, '2020-04-11 01:40:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content_chapter`
--

CREATE TABLE `content_chapter` (
  `id_content` int(10) NOT NULL,
  `link` text NOT NULL,
  `id_chapter` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `content_chapter`
--

INSERT INTO `content_chapter` (`id_content`, `link`, `id_chapter`) VALUES
(3, 'https://www.youtube.com/embed/P60kcSaeFmg', 4),
(4, 'https://www.youtube.com/embed/-C-i7zYgci8', 5),
(5, 'https://www.youtube.com/embed/wFnDXhnRFAM', 6),
(6, 'https://www.youtube.com/embed/zNrKU9SZUvA', 7),
(7, 'https://www.youtube.com/embed/DATqsv18ojg', 8),
(8, 'https://www.youtube.com/embed/3HiO4j4_VCU', 9),
(9, 'https://www.youtube.com/embed/4gLcrtg1fAo', 10),
(10, 'https://www.youtube.com/embed/x4teN2olFoU', 11),
(11, 'https://www.youtube.com/embed/YwXtYN3kxSA', 12),
(12, 'https://www.youtube.com/embed/R8WdlpqzpiI', 14),
(13, 'https://www.youtube.com/embed/7xT_E0AVCzI', 15),
(14, 'https://www.youtube.com/embed/v2GLTQI0f88', 16),
(15, 'https://www.youtube.com/embed/EGBVSnpn15A', 17),
(16, 'https://www.youtube.com/embed/AlVWTMss-vw', 18),
(17, 'https://www.youtube.com/embed/1_f098OVeHA', 19),
(18, 'https://www.youtube.com/embed/bgk3yUL5_2I', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `id_course` int(10) UNSIGNED NOT NULL,
  `id_student` int(10) UNSIGNED NOT NULL,
  `id_teacher` int(10) UNSIGNED NOT NULL,
  `id_subiect` int(10) UNSIGNED NOT NULL,
  `id_time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`id_course`, `id_student`, `id_teacher`, `id_subiect`, `id_time`) VALUES
(4, 1, 4, 3, 2),
(5, 1, 4, 5, 2),
(7, 2, 1, 1, 1),
(10, 2, 5, 3, 2),
(11, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam`
--

CREATE TABLE `exam` (
  `id_exam` int(10) UNSIGNED NOT NULL,
  `name_exam` varchar(225) NOT NULL,
  `subject` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `exam`
--

INSERT INTO `exam` (`id_exam`, `name_exam`, `subject`) VALUES
(1, 'Exam 1', 1),
(2, 'Exam 2', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `learning`
--

CREATE TABLE `learning` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` int(10) UNSIGNED NOT NULL,
  `course` int(10) UNSIGNED NOT NULL,
  `classification` varchar(225) NOT NULL,
  `point` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `learning`
--

INSERT INTO `learning` (`id`, `username`, `course`, `classification`, `point`) VALUES
(13, 3, 1, 'medium', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lesson`
--

CREATE TABLE `lesson` (
  `id_lesson` int(10) UNSIGNED NOT NULL,
  `name_lesson` varchar(225) NOT NULL,
  `id_subjects` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lesson`
--

INSERT INTO `lesson` (`id_lesson`, `name_lesson`, `id_subjects`) VALUES
(1, 'Lesson 1', 3),
(2, 'Lesson 2', 3),
(3, 'Lesson 3', 3),
(4, 'Lesson 4', 3),
(5, 'Review lesson', 3),
(6, 'Lesson 1', 5),
(7, 'Lesson 2', 5),
(8, 'Lesson 3', 5),
(9, 'Lesson 4', 5),
(10, 'Review lesson', 5),
(11, 'Lesson 3', 4),
(12, 'Lesson 4', 4),
(13, 'Review lesson', 4),
(14, 'Lesson 1', 4),
(15, 'Lesson 2', 4),
(16, 'Review lesson', 2),
(17, 'Lesson 1', 2),
(18, 'Lesson 2', 2),
(19, 'Lesson 3', 2),
(20, 'Lesson 4', 2),
(21, 'Lesson 1', 1),
(22, 'Lesson 2', 1),
(23, 'Lesson 4', 1),
(24, 'Lesson 3', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_04_08_130027_create_subjects_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_subjets` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subjects`
--

INSERT INTO `subjects` (`id`, `name_subjets`) VALUES
(1, 'PHP programming'),
(2, 'Java programming'),
(3, 'Andriod programming'),
(4, 'Ios programming'),
(5, '\r\ngraphical programming');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `id_teacher` int(10) UNSIGNED NOT NULL,
  `name_teacher` varchar(225) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `name_teacher`, `phone`) VALUES
(1, 'Mr.Cuong', '0917807465'),
(2, 'Mr.Hung', ''),
(3, 'Mr.Nam', '091707465'),
(4, 'Mr.Thanh', '0123'),
(5, 'Mr.Nham', '010101'),
(6, 'Mr.Hung', ''),
(7, 'Mr.Truong', '1233');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `threads`
--

CREATE TABLE `threads` (
  `id_threads` int(11) NOT NULL,
  `threads` varchar(225) NOT NULL,
  `a` varchar(225) NOT NULL,
  `b` varchar(225) NOT NULL,
  `c` varchar(225) NOT NULL,
  `answer` varchar(225) NOT NULL,
  `exam` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `threads`
--

INSERT INTO `threads` (`id_threads`, `threads`, `a`, `b`, `c`, `answer`, `exam`) VALUES
(1, 'What is php?', 'colloquial', 'programming language', 'management system', 'programming language', 1),
(2, 'Where is the PHP syntax?', 'echo \"Hello\"', 'system.in.printf(\"hello\")', 'cout \"Hello\"', 'echo \"Hello\"', 1),
(3, 'open source PHP Where is it?', 'sping', 'laravel', 'asp.net', 'laravel', 1),
(4, 'php what design', 'web', 'moble', 'android', 'web', 1),
(5, 'Where is the php extension?', '.html', '.php', '.css', '.php', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `time_course`
--

CREATE TABLE `time_course` (
  `id_time` int(11) NOT NULL,
  `name_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `time_course`
--

INSERT INTO `time_course` (`id_time`, `name_time`) VALUES
(1, '2020-04-15 07:55:35'),
(2, '2020-04-08 20:00:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cường', 'cuonglc@gmail.com', NULL, '$2y$10$skynZ28IZ1cSpNeyQhcwMuWYR2eOiQAwzOe2N0o5jlD06XxP.wSlS', NULL, '2020-04-08 06:30:19', '2020-04-08 06:30:19'),
(2, 'gaoooooo', 'dev.cuonglm@asiakite.vn', NULL, '$2y$10$biY546N8Xif3fD9c.ia7X.hAezQB.DvVGT/4oLcct1eBxpokfIzE6', NULL, '2020-04-10 18:39:17', '2020-04-10 18:39:17'),
(3, 'nam', 'lucuong837@gmail.com', NULL, '$2y$10$ubmO5lbKtAa.ghFophrddekFM0dVKpqd1tePcW8otSWFfLhBbCJkO', NULL, '2020-04-21 18:17:05', '2020-04-21 18:17:05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id_chapter`),
  ADD KEY `id_lesson` (`id_lesson`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `user_comment` (`user_comment`),
  ADD KEY `id_chapter` (`id_chapter`);

--
-- Chỉ mục cho bảng `content_chapter`
--
ALTER TABLE `content_chapter`
  ADD PRIMARY KEY (`id_content`),
  ADD KEY `id_chapter` (`id_chapter`);

--
-- Chỉ mục cho bảng `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id_course`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_subiect` (`id_subiect`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_time` (`id_time`);

--
-- Chỉ mục cho bảng `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id_exam`),
  ADD KEY `subject` (`subject`);

--
-- Chỉ mục cho bảng `learning`
--
ALTER TABLE `learning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `course` (`course`);

--
-- Chỉ mục cho bảng `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id_lesson`),
  ADD KEY `id_subjects` (`id_subjects`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id_teacher`);

--
-- Chỉ mục cho bảng `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id_threads`,`a`,`b`,`c`),
  ADD KEY `exam` (`exam`);

--
-- Chỉ mục cho bảng `time_course`
--
ALTER TABLE `time_course`
  ADD PRIMARY KEY (`id_time`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id_chapter` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `content_chapter`
--
ALTER TABLE `content_chapter`
  MODIFY `id_content` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `course`
--
ALTER TABLE `course`
  MODIFY `id_course` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `exam`
--
ALTER TABLE `exam`
  MODIFY `id_exam` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `learning`
--
ALTER TABLE `learning`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id_lesson` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id_teacher` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `threads`
--
ALTER TABLE `threads`
  MODIFY `id_threads` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `time_course`
--
ALTER TABLE `time_course`
  MODIFY `id_time` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `chapter_ibfk_1` FOREIGN KEY (`id_lesson`) REFERENCES `lesson` (`id_lesson`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_comment`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_chapter`) REFERENCES `content_chapter` (`id_content`);

--
-- Các ràng buộc cho bảng `content_chapter`
--
ALTER TABLE `content_chapter`
  ADD CONSTRAINT `content_chapter_ibfk_1` FOREIGN KEY (`id_chapter`) REFERENCES `chapter` (`id_chapter`);

--
-- Các ràng buộc cho bảng `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`id_subiect`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `course_ibfk_3` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`),
  ADD CONSTRAINT `course_ibfk_4` FOREIGN KEY (`id_time`) REFERENCES `time_course` (`id_time`);

--
-- Các ràng buộc cho bảng `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`subject`) REFERENCES `subjects` (`id`);

--
-- Các ràng buộc cho bảng `learning`
--
ALTER TABLE `learning`
  ADD CONSTRAINT `learning_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `learning_ibfk_2` FOREIGN KEY (`course`) REFERENCES `subjects` (`id`);

--
-- Các ràng buộc cho bảng `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`id_subjects`) REFERENCES `subjects` (`id`);

--
-- Các ràng buộc cho bảng `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_ibfk_1` FOREIGN KEY (`exam`) REFERENCES `exam` (`id_exam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
