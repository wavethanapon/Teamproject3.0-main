-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 05, 2025 at 02:00 PM
-- Server version: 9.2.0
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Karma`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int NOT NULL,
  `activity_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `activity_type_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `activity_name`, `activity_type_id`, `created_at`, `updated_at`) VALUES
(1, 'แนะแนวการฝึกงานสาขาวิศวกรรมคอมพิวเตอร์', 1, '2025-03-05 10:01:40', '2025-03-05 13:52:48'),
(2, 'พี่ปี 3 สอนน้องปี 1 เขียนโปรแกรมคอมพิวเตอร์', 1, '2025-03-05 13:34:14', '2025-03-05 13:52:55'),
(3, 'อบรมการใช้งานเครื่องมือวัดทางไฟฟ้า', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:00'),
(4, 'การบรรยายหัวข้อ Cyber Security Present and Beyond', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:07'),
(5, 'กิจกรรมแลกเปลี่ยนประสบการณ์ศึกษาดูงานพี่ปี 3 สู่น้องปี 2', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:11'),
(6, 'แลกเปลี่ยนประสบการณ์ฝึกงานและสหกิจศึกษา', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:17'),
(7, 'Byenior  งานเลี้ยงส่งท้ายรุ่นพี่ ', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:22'),
(8, 'กิจกรรมศึกษาดูงาน สจล. กทม. และบริษัทเอกชน ของพี่ปี 3 วิศวกรรมคอมพิวเตอร์', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:26'),
(9, 'กิจกรรมการนำเสนอโครงงานสาขาคอมพิวเตอร์', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:31'),
(10, 'อบรมเครือข่ายคอมพิวเตอร์ และการวางระบบสำหรับ Server', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:38'),
(11, 'อบรมชินนสาสมาธิของนักศึกษาสาขาวิศวกรรมคอมพิวเตอร์', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:43'),
(12, 'กิจกรรมการนำเสนอโครงงานสหกิจศึกษา ของพี่ชั้นปีที่ 4', 1, '2025-03-05 13:34:14', '2025-03-05 13:53:48'),
(13, 'Pre Engineering Camp ค่ายเตรียมวิศวกรรมศาสตร์พระจอมเกล้าลาดกระบังชุมพร', 2, '2025-03-05 13:34:14', '2025-03-05 13:53:54'),
(15, 'Open House สจล.วิทยาเขตชุมพร', 2, '2025-03-05 13:34:14', '2025-03-05 13:54:06'),
(16, 'เดิน-วิ่ง ประเพณี น้องพี่สัมพันธ์ ', 2, '2025-03-05 13:34:14', '2025-03-05 13:54:11'),
(17, 'พิธีมอบเนคไทด์และเข็มพระมหามงกุฎ', 2, '2025-03-05 13:34:14', '2025-03-05 13:54:18'),
(18, 'พิธีไหว้ครูประจำปีการศึกษา', 2, '2025-03-05 13:34:14', '2025-03-05 13:54:24'),
(19, 'บูมพี่บัณฑิต', 2, '2025-03-05 13:52:30', '2025-03-05 13:54:32'),
(20, 'รับน้องเข้าหอ', 2, '2025-03-05 13:52:30', '2025-03-05 13:54:38'),
(21, 'พบปะเพื่อนใหม่', 2, '2025-03-05 13:52:30', '2025-03-05 13:54:47'),
(33, 'ลาดกระบังชุมพรแฟร์', 2, '2025-03-05 13:59:26', '2025-03-05 13:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `activity_types`
--

CREATE TABLE `activity_types` (
  `activity_type_id` int NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `point_value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_types`
--

INSERT INTO `activity_types` (`activity_type_id`, `type_name`, `point_value`) VALUES
(1, 'กิจกรรมสาขา', 5),
(2, 'กิจกรรมสถาบัน', 10);

-- --------------------------------------------------------

--
-- Table structure for table `participation`
--

CREATE TABLE `participation` (
  `participation_id` int NOT NULL,
  `student_id` int NOT NULL,
  `activity_type_id` int NOT NULL,
  `activity_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `years` int NOT NULL,
  `title` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `passwords` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `email`, `years`, `title`, `full_name`, `nickname`, `birthdate`, `gender`, `phone`, `passwords`) VALUES
(64200002, '64200002@kmitl.ac.th', 4, 'นาย', 'กฎทบวง เณรวงษ์', '', '0000-00-00', 'ชาย', '', '$2a$12$VSLkrUlsww3/32nVXHNjEO2G52YDLpPhaup7VA1v/6iYNlOT5Pxay'),
(64200030, '64200030@kmitl.acth', 4, 'นาย', 'จีรวัฒน์ ศรีบุรินทร์', 'อั้น', '2001-12-24', 'ชาย', '0983318289', '$2a$12$jBp8myj3Mim.gGo6n/qSAunZ7xgZtsJbYi7Dp6ZTHoSBvNCy7RLI.'),
(64200035, '64200035@kmitl.ac.th', 4, 'นางสาว', 'ชณิดาภรณ์ หนูรักษ์', '', '0000-00-00', 'หญิง', '', '$2a$12$ZD9nbgWD8V4b0jb..CQHVe9ZlA.i/1wNH9a7S4cQelMxkGsOaHDk.'),
(64200039, '64200039@kmitl.ac.th', 4, 'นาย', 'ชยากุล ธรรมสวาสดิ์', '', '0000-00-00', 'ชาย', '', '$2a$12$EYlNAfOO06xgn2FP3tDjeeVn3OzNvFX0dpVH3i4kYTY9OyR6rCzLm'),
(64200042, '64200042@kmitl.ac.th', 4, 'นาย', 'ชัชวาลย์ ขวัญเมือง', 'เบสท์', '2003-04-15', 'ชาย', '0971363171', '$2a$12$x7DTeld7nC/UjtFazsowpOPXrPcVj/JxJl2EGnZ4h3HoR9uVRwn4.'),
(64200055, '64200055@kmitl.ac.th', 4, 'นาย', 'ณัฏฐ์ แจ้งจิตร', '', '0000-00-00', 'ชาย', '', '$2a$12$jWT57Ck5ISZbHguVfEh/0eYoowRH.dYQT185IKCgTUbZ9btzI1xTi'),
(64200058, '64200058@kmitl.ac.th', 4, 'นาย', 'ณัฐนันท์ กัญจนกาญจน์', '', '0000-00-00', 'ชาย', '', '$2a$12$yG8Oigs7tA9h0lT.MOaRw.U6gSD7t4HRKKSvWjtaFiE3vrMC0ZT7i'),
(64200061, '64200061@kmitl.ac.th', 4, 'นาย', 'ณัฐพงศ์ สิงห์เขา', '', '0000-00-00', 'ชาย', '', '$2a$12$cZ035ZnfkuAPwpK9B.vB1.1wEffWOifcPVbnOrLIJpZgquPIkoUlO'),
(64200063, '64200063@kmitl.ac.th', 4, 'นาย', 'ณัฐภัทร เขียวอุดม', '', '0000-00-00', 'ชาย', '', '$2a$12$feESwQK5n8fjn1uVHV4t/.S7S1xIm0UkXyLiFR4h4QlCG803M7SFu'),
(64200081, '64200081@kmitl.ac.th', 4, 'นาย', 'ธนรัฐ ปัจฉิมบุตร', 'พาย', '2002-09-25', 'ชาย', '0622139891', '$2a$12$iYcJ8TwOZ13wDEnOx4Jfu.nPBDTOvvpCHLVb3seBqHDTO6F3iiSXi'),
(64200087, '64200087@kmitl.ac.th', 4, 'นาย', 'ธนาวุธ เจริญผล', '', '0000-00-00', 'ชาย', '', '$2a$12$YAKY.r9rFFmZlXLcyRCTteM3LZzKVmc0k./i7E9CYtHDG8sHG9b3G'),
(64200094, '64200094@kmitl.ac.th', 4, 'นางสาว', 'ธิติสุดา วงศ์วิเศษศักดิ์', '', '0000-00-00', 'หญิง', '', '$2a$12$A8xFKx30Af263nK8XXq8yOfT8B5ZBGRgUFeidSjrLJmaqj8t2m94S'),
(64200106, '64200106@kmitl.ac.th', 4, 'นาย', 'นราวิชญ์ ชูช่วย', '', '0000-00-00', 'ชาย', '', '$2a$12$YTNtuEtAszx8OG0n34VJc.RgIXVPNXps02wkbDDLrN7lc5ZHeq5YG'),
(64200112, '64200112@kmitl.ac.th', 4, 'นางสาว', 'นัชนันท์ งามพริ้ง', '', '0000-00-00', 'หญิง', '', '$2a$12$D2rqV0D2643FFSGmkhEUR.dWjI/Jcf7DjzLOAfGquk0a3sp/Otx7m'),
(64200123, '64200123@kmitl.ac.th', 4, 'นาย', 'บวรลักษณ์ ศิลป์สกุลเจริญ', '', '0000-00-00', 'ชาย', '', '$2a$12$xXJQZnFzSxe/6vQ7Q20RbOOPZC2AnKSRmaIakt9Ek2wFws8W3tO6e'),
(64200129, '64200129@kmitl.ac.th', 4, 'นาย', 'ปรัชญ์สพล ยอดดำเนิน', '', '0000-00-00', 'ชาย', '', '$2a$12$EBeokN8KIm3oZsN7xdz9uulr4ibySfoY7/rJyeX4d6BNfk5dkyW92'),
(64200130, '64200130@kmitl.ac.th', 4, 'นาย', 'ปรัชญา ใจห้าว', '', '0000-00-00', 'ชาย', '', '$2a$12$XVpa6zuqDp2WaOdmMv74Ru4eboFINGUUWNAm3s/sOZd1DeKT/4PZq'),
(64200135, '64200135@kmitl.ac.th', 4, 'นางสาว', 'ปาริฉัตร ชุมจันทร์', '', '0000-00-00', 'หญิง', '', '$2a$12$nI74xCT6SxrRTL25enhWeebbiplYhZyquqYie6O4qhdA2JA4hCwhS'),
(64200137, '64200137@kmitl.ac.th', 4, 'นาย', 'ปุญญพัฒน์ สุวรรณสิทธิ์', '', '0000-00-00', 'ชาย', '', '$2a$12$yHoaPxm0tdV2hyMcLHTWAu1tXhSr/2obPeOfNmQI0g8WVWbB70MDm'),
(64200146, '64200146@kmitl.ac.th', 4, 'นาย', 'พรหมพริษฐ์ พรหมรักษ์', '', '0000-00-00', 'ชาย', '', '$2a$12$M2.o.HYqe8daM1k9Yyy/BO9XMjQviuQRJDlc8IY1COoKTreKl8miu'),
(64200152, '64200152@kmitl.ac.th', 4, 'นาย', 'พสิษฐ์ กิจเจริญ', '', '0000-00-00', 'ชาย', '', '$2a$12$LPi/CsiJXE84cu7doH9ANObdTvRmh/4oxembXAkixc7y4pG8FMzO.'),
(64200160, '64200160@kmitl.ac.th', 4, 'นาย', 'พีระพล เอียดเลื่อน', '', '0000-00-00', 'ชาย', '', '$2a$12$fJPDHMQu3lyMvNaDoPmfQuHDvMAvosh2jrSLHjq0qPwfneHIXFrvi'),
(64200185, '64200185@kmitl.ac.th', 4, 'นางสาว', 'เมขลา สุดเหลือ', '', '0000-00-00', 'หญิง', '', '$2a$12$jA1e4cUtwl37uJw9dpSi/OGzepRbTG2dJEcXYV5eAWtOdFDgtGI3C'),
(64200191, '64200191@kmitl.ac.th', 4, 'นางสาว', 'รวิสรา ขยายแย้ม', '', '0000-00-00', 'หญิง', '', '$2a$12$hUvzbRm8brZ4Z/7EmRydpOhXhFzjZULc9nc8AqrJ2wriqxg1UdzmS'),
(64200192, '64200192@kmitl.ac.th', 4, 'นาย', 'รัชชานนท์ รัชตะวรรณ', '', '0000-00-00', 'ชาย', '', '$2a$12$ZubYmAGtcTybJ83HECGZWeCk2OtyffRikszqqudUGHlEeaMaEB0.C'),
(64200193, '64200193@kmitl.ac.th', 4, 'นางสาว', 'รัญชิดา เนตรอนงค์', '', '0000-00-00', 'หญิง', '', '$2a$12$20Fa9biJxKEoz8FfsmsHe.xR.HQEFmzVoJUPXovcR0mDTDTWVEy16'),
(64200203, '64200203@kmitl.ac.th', 4, 'นาย', 'เลิศวุฒิ จิรรัชวณิช', '', '0000-00-00', 'ชาย', '', '$2a$12$KxYwY.9pgf.hWrWyVxLsa.E9mVqOrQXbIncTfru7hHFZE08QpzEEm'),
(64200220, '64200220@kmitl.ac.th', 4, 'นาย', 'วุฒิภัทร อึ๊งเหมอนันต์', '', '0000-00-00', 'ชาย', '', '$2a$12$Cw.KlJzWrWYRsCaYMuSI0elGH8nzaSinFLsQVoS2EZhwmR/3YWyHu'),
(64200222, '64200222@kmitl.ac.th', 4, 'นางสาว', 'ศรัณญา ศรีกัน', '', '0000-00-00', 'หญิง', '', '$2a$12$gE3KOWjp7TyaYYI/SYGiXehDeQCjW5.e2YMbsMl2Cbl2z/GeTdrF6'),
(64200226, '64200226@kmitl.ac.th', 4, 'นาย', 'ศศิพงศ์ จิตต์เอื้อเฟื้อ', '', '0000-00-00', 'ชาย', '', '$2a$12$iUJT0iAi50Tzo/k0HVye9OVrHwLjTJQ.9whAQMHLoyrPicdx1YID.'),
(64200230, '64200230@kmitl.ac.th', 4, 'นาย', 'ศิวกร ไชยฤทธิ์', '', '0000-00-00', 'ชาย', '', '$2a$12$JTtPfKM6f0XmWS.Es5p7rOOedQO96heu2z1aBrkFDeMbX9b8e.06e'),
(64200232, '64200232@kmitl.ac.th', 4, 'นางสาว', 'ศุจีภรณ์ วรรณโร', '', '0000-00-00', 'หญิง', '', '$2a$12$5/uRxt5JT/leVrjzlfvwSeyK64baxkjx5Wh2i0ge8riu5EKlenx.W'),
(64200247, '64200247@kmitl.ac.th', 4, 'นาย', 'สุทธิกานต์ ศรีเพชร', '', '0000-00-00', 'ชาย', '', '$2a$12$zQCtaud4giSLw5zTiTxtDuHel8aBH2FTY6g.9DeYG5Yl3zcyBeWsq'),
(64200255, '64200255@kmitl.ac.th', 4, 'นาย', 'เสฎฐวุฒิ กสิวุฒิเชิดชูชัย', 'บิ๊ก', '2002-07-03', 'ชาย', '0822957983', '$2a$12$UgPpKsmpWflI.pYGtKSJm.QQsL1P1s75Cf5coR8YhKZR.F9CJepXC'),
(64200258, '64200258@kmitl.ac.th', 4, 'นาย', 'อติวิชญ์ ฐานะวัฒนา', '', '0000-00-00', 'ชาย', '', '$2a$12$yDmtsCLzka3nTMBkIe4Z3uhGnnISxKHyM5aohhWuByU1eMlz7V4U2'),
(64200273, '64200273@kmitl.ac.th', 4, 'นาย', 'อรัญชัย แก้วเลื่อน', '', '0000-00-00', 'ชาย', '', '$2a$12$FssZXfDcu0FWPZjhSgR5JeMWJrgbNDZeNr8SM8MgefJZvPT8dUbeO'),
(64200284, '64200284@kmitl.ac.th', 4, 'นาย', 'อิทธิภัทร์ เพิงรัตน์', '', '0000-00-00', 'ชาย', '', '$2a$12$oC/LiCizVe9COYIuPTmjbe9x2wlcGxFp127fAD27bFYm6mleUrxMW'),
(64200289, '64200289@kmitl.ac.th', 4, 'นาย', 'กฤษณ์ คงคา', '', '0000-00-00', 'ชาย', '', '$2a$12$Bdd5UFG26YYmXgTb4MufYOz2HCKLQhdmu4aCAJCSqKOa9OxuBSvfm'),
(64200290, '64200290@kmitl.ac.th', 4, 'นางสาว', 'กัญญาวีร์ ครึ่งธิ', '', '0000-00-00', 'หญิง', '', '$2a$12$yPZZ.XsdkJjECZ92CieRs.QWEDkcuNuBjI/btxeKx1X4Fu1unLD6'),
(64200312, '64200312@kmitl.ac.th', 4, 'นาย', 'ธณชนน์ เครือเหลา', '', '0000-00-00', 'ชาย', '', '$2a$12$10bkK3FOTgPhWDZ8ZjEyu.6jzyLbMoQgfeFAZ4hGgOluxmhEq2UWS'),
(64200343, '64200343@kmitl.ac.th', 4, 'นาย', 'ภวพรรธน์ กิตติเจริญลัคน์', '', '0000-00-00', 'ชาย', '', '$2a$12$gNCGqHbNgR16ywz/kssseuS9AcfNaDkf8fts5Hk6MxO7QePBcYYca'),
(64200346, '64200346@kmitl.ac.th', 4, 'นาย', 'ภาสกร สุวรรณมณี', '', '0000-00-00', 'ชาย', '', '$2a$12$kgeXRFiMAlyLJGXjd6BVReybKysjEbqJMirg8Y.Aq6YiFlgo42l5m'),
(64200358, '64200358@kmitl.ac.th', 4, 'นาย', 'วารินทร์ พรหมพิชัย', '', '0000-00-00', 'ชาย', '', '$2a$12$Wpzb4e0lyusSUr7W4lxhaev/Zi07ghu4PYsaPCfGby2G4JMitz8VG'),
(64200369, '64200369@kmitl.ac.th', 4, 'นางสาว', 'อรสินี เกตุเพ็ชร', '', '0000-00-00', 'หญิง', '', '$2a$12$AJt37OzWfQGGCJPtRbJX1uSaagaT948wDJzHfYYKkX/xVSghiODAe'),
(64200374, '64200374@kmitl.ac.th', 4, 'นาย', 'อัสนีย์ แซ่เฮียบ', '', '0000-00-00', 'ชาย', '', '$2a$12$SfqRUyFANJ0jYUECcW1TTuI67MIbNbX7A3Af4DBgzXI8xGonBTSua'),
(64200377, '64200377@kmitl.ac.th', 4, 'นางสาว', 'อิสราภรณ์ ทองปานดี', '', '0000-00-00', 'หญิง', '', '$2a$12$yItFIQHFKA1eQ/uxqUuqDuBNnpWiQMWoJSFCJTVUJd0R1SEaMdrSy'),
(65200006, '65200006@kmitl.ac.th', 3, 'นางสาว', 'กรกนก สัทธาพงษ์', '', '0000-00-00', 'หญิง', '', '$2a$12$YLDiMVxQm4bWIW52Gi8CGeJ2wM48RnpfVXk/b4uIC2tLcJGVXv5Sy'),
(65200009, '65200009@kmitl.ac.th', 3, 'นาย', 'กรณ์ดนัย ทิพย์จำนงค์', '', '0000-00-00', 'ชาย', '', '$2a$12$czCOEFAB0dqw1yzLMIHXq.Rx.9RLP3vozQG8jtIvn3k/h8YhII9fy'),
(65200010, '65200010@kmitl.ac.th', 3, 'นางสาว', 'กรรณิการ์ พุ่มสนธิ์', 'กันต์', '2003-05-28', 'หญิง', '0925971248', '$2a$12$ZdH0u8lEga8bJGv/bZ9XYuINGMar/aH7XYMY/ggfZJgdHAybl/lqy'),
(65200013, '65200013@kmitl.ac.th', 3, 'นางสาว', 'กฤตยกรรณ สีแตงสุก', '', '0000-00-00', 'หญิง', '', '$2a$12$nOm6maV7hhaA/FfzLXDvnOddyR0UoSRXxUgMW10ogt95kbXJfomei'),
(65200015, '65200015@kmitl.ac.th', 3, 'นาย', 'กฤษฎา พุทธะสุภะ', '', '0000-00-00', 'ชาย', '', '$2a$12$RLTw7cC2LxYpWr.pI9lJie0XZxb5ZXe3jMprIJ.TgwZieFMBQ4K82'),
(65200020, '65200020@kmitl.ac.th', 3, 'นางสาว', 'กวิสรา แซ่เซี้ย', 'แตงโม', '2003-08-18', 'หญิง', '0621828445', '$2a$12$hdK4VNKfGkuNlPQKC9AhdO8dq7D6fs9Ts7Zahyiju0IdFrXVv7qRq'),
(65200027, '65200027@kmitl.ac.th', 3, 'นาย', 'กันตพล ศรีจันทร์', 'ตูน', '2003-07-30', 'ชาย', '0955373055', '$2a$12$k.cYiWBbaIt0xWOXMYE38uf14iZ.OaAibdtT/c2vBjeXIshSHux.G'),
(65200033, '65200033@kmitl.ac.th', 3, 'นาย', 'กิตติภณ เฟื่องศิลา', 'เชพ', '2003-12-09', 'ชาย', '0123456789', '$2a$12$sRg2Ao46w.PAJOh9SPB8SemonVv.elREOCvLCfSE3jBZkUf1.Zywa'),
(65200035, '65200035@kmitl.ac.th', 3, 'นาย', 'กิติพงษ์ ไชยมิตร', '', '0000-00-00', 'ชาย', '', '$2a$12$YkB4B6MWxfURN83mv/Nc8enUtpsHtWUZMWn61Z.gLaJ0D9ngMTzzO'),
(65200037, '65200037@kmitl.ac.th', 3, 'นาย', 'กีรกิตติกร สมแก้ว', '', '0000-00-00', 'ชาย', '', '$2a$12$St9ySzb7U7.13Oqr.kZN1eFcr7gqGoQ7URAo5b4Oz2lR3IR1QHkF6'),
(65200039, '65200039@kmitl.ac.th', 3, 'นาย', 'โกฎล วสุลิปิกร', 'ไตเติ้ล', '2003-02-24', 'ชาย', '0963082044', '$2a$12$K8b2QRiHuCUL2x3YsWILyuH4LFKNteSduTGDMTTlspMDKw.GkGWby'),
(65200046, '65200046@kmitl.ac.th', 3, 'นาย', 'คุณานนต์ ขาวขำ', 'ไบรท์', '2004-07-23', 'ชาย', '0638816647', '$2a$12$3e8/bJF/4OKw53E.Cv/Xy.tzXJNV/CuNkRUUdU9XAp7kNClKMowN6'),
(65200048, '65200048@kmitl.ac.th', 3, 'นาย', 'จักรพรรดิ์ ใสสุชล', '', '0000-00-00', 'ชาย', '', '$2a$12$jRivdowOsfTfN4Y9Cy2BnOhC8BI/qlBO7VzhvwxjZe8XktSAOIC3G'),
(65200056, '65200056@kmitl.ac.th', 3, 'นางสาว', 'จิรานุช จันทร์น้อย', 'ลูกน้ำ', '2003-06-28', 'หญิง', '0928994117', '$2a$12$uYTSoKEaxERkbsK7LzeRZucDV12ri9.sBemvBIiOHkL6wU1VUpT1a'),
(65200066, '65200066@kmitl.ac.th', 3, 'นาย', 'เจมส์ ตุลยนิษก์', '', '0000-00-00', 'ชาย', '', '$2a$12$zrXRGSH4nDubejmoPI6WQeOF/9pkM8oi4D2it.OxzJHEDTec9ZyEu'),
(65200078, '65200078@kmitl.ac.th', 3, 'นาย', 'ชนินทร์ภัทร ทองรักษ์', '', '0000-00-00', 'ชาย', '', '$2a$12$yyfYB4CU7X1AySTFN1OKWOVJRiZ77tEeYy8yJMi8uBG8E2NYz5B92'),
(65200079, '65200079@kmitl.ac.th', 3, 'นาย', 'ชโยดม เปี่ยมไทย', 'เอซ', '2003-10-04', 'ชาย', '0947974649', '$2a$12$g6Wyii0OEW4EU5fm5Y8h6OnGTBeMjm.TvzjAm/GRdHDPBqfppocIO'),
(65200084, '65200084@kmitl.ac.th', 3, 'นาย', 'ชลทิศ สถิตชัย', 'เอเป็ก', '2003-11-06', 'ชาย', '0926050868', '$2a$12$a.7PmykJtw8MfQysU6JH7eBEsekH.zOPz6mBtAwRjrfy1A0Db6R/K'),
(65200089, '65200089@kmitl.ac.th', 3, 'นาย', 'ชาญชัย บุญนำ', '', '0000-00-00', 'ชาย', '', '$2a$12$HaAYKYAUfnjHu4nn.QU2yeuBvz3p6FkFyJTqBoyW23RxAOkHeU9Mi'),
(65200093, '65200093@kmitl.ac.th', 3, 'นางสาว', 'ชุติมา วงศ์สวัสดิ์', '', '0000-00-00', 'หญิง', '', '$2a$12$qiZwmk4p9H4lfTDVt6Zwf.eVzlBHPFgE.D8tVw3OvRbB2tL/Rzy0C'),
(65200095, '65200095@kmitl.ac.th', 3, 'นาย', 'ไชยธีร์ สุบการี', '', '0000-00-00', 'ชาย', '', '$2a$12$..6G0olZ5STi0gWkH70QHu6Bx8frdtJW9K/OWtPYR7v3jf2sdUlLC'),
(65200097, '65200097@kmitl.ac.th', 3, 'นาย', 'นายญาณาธิป อินพฤกษา', 'พีช', '2003-04-18', 'ชาย', '0897858719', '$2a$12$Pw2Yv8.5GWxgdlDEs3c6vOZxuPLA9YOTAib3OBgRBri/yGeJE1osa'),
(65200099, '65200099@kmitl.ac.th', 3, 'นาย', 'ฐาปกรณ์ โพธิขาว', '', '0000-00-00', 'ชาย', '', '$2a$12$SW7vG952.x6sGuDLcMlhou4X2VEYJ2DuJbc5BtTWr9Wbp85fH/BPq'),
(65200100, '65200100@kmitl.ac.th', 3, 'นาย', 'ฐิติกมล สวนแยง', '', '0000-00-00', 'ชาย', '', '$2a$12$kgcsfKozl8.bo0qZYNa3iOah22f2.KQeG5hafaDZ.sCFPhWT9822W'),
(65200103, '65200103@kmitl.ac.th', 3, 'นาย', 'ณกาญจน์ อยู่ประเสริฐ', '', '0000-00-00', 'ชาย', '', '$2a$12$2bBge5HQJGJ0rDNKuLjpresHYG6a0Vgk7wohAzkUgrGahMK8p1Djy'),
(65200113, '65200113@kmitl.ac.th', 3, 'นาย', 'ณัฏฐกิตติ์ บัวจันทร์', 'ซิม', '2003-06-20', 'ชาย', '0887844998', '$2a$12$CZgYWTgyFqqSLvkUtOMwC.NRUAOXlbLHH9eeUHcxKaNuYMMcgdRMq'),
(65200119, '65200119@kmitl.ac.th', 3, 'นาย', 'ณัฐกุล เอกเอี่ยม', '', '0000-00-00', 'ชาย', '', '$2a$12$CSlh6tfmfNCAe/t1cAWnnOCF3b6vqiCnVkxpJKiMWdubh9E5YWr9u'),
(65200122, '65200122@kmitl.ac.th', 3, 'นางสาว', 'ณัฐวรา นาคงาม', '', '0000-00-00', 'หญิง', '', '$2a$12$GmZhN4tUHjNut18sus9wIewHRHRxbHE1tFN4hSV45j26MbFElLDoS'),
(65200123, 'nattawat.fing@gmail.com', 3, 'นาย', 'ณัฐวัฒน์ อาทรกิจวัฒน์', 'ฟิง', '2004-06-08', 'ชาย', '0941493541', '$2a$12$cTDrp1dL66fjz7StXW42PuXNMlS86snbbyjZf.Otq79TmP46VfBxe'),
(65200128, '65200128@kmitl.ac.th', 3, 'นางสาว', 'ดนุนุช เกตุทองหลาง', 'ไข่มุก', '2003-08-29', 'หญิง', '0947878189', '$2a$12$i0w8kz7PT3xMK/z/t9nJUuU4t.sKjdfCGfm7mrgOd4qDRziR6m.P6'),
(65200129, '65200129@KMITL.AC.TH', 3, 'นาย', 'ดลนที ประเดิมรัตนกุล', 'โดม', '2003-06-22', 'ชาย', '0851544151', '$2a$12$oUTal1GR2G48nhk6I5k0MOVLUTyEGHDO1raVIeXKCiCYcBHicN.9.'),
(65200133, '65200133@kmitl.ac.th', 3, 'นาย', 'ต่อตระกูล แซ่เล้า', '', '0000-00-00', 'ชาย', '', '$2a$12$4vv.Pr4fjH6tphKTILNu3OsyfhJmB6Nua0uaxchEqipVEPcEQbgZG'),
(65200134, '65200134@kmitl.ac.th', 3, 'นาย', 'ติณณภพ พรมคำ', 'กีตาร์', '2004-03-13', 'ชาย', '0651140096', '$2a$12$3HfcNcuJmJQYvoOKtDTceeGqXf0RA8NUpCENuK8.fvMSHHf8.0RPO'),
(65200135, '65200135@kmitl.ac.th', 3, 'นาย', 'ตุลยวัต ชนูดหอม', '', '0000-00-00', 'ชาย', '', '$2a$12$J5Q1wqtYcDhmejy4IrDGO.RQJSmROV2Kc4dVy/n/kfKIH/ilIvKiy'),
(65200144, '65200144@kmitl.ac.th', 3, 'นาย', 'ทีปกร แพกุล', '', '0000-00-00', 'ชาย', '', '$2a$12$/s1c2J0TWykYsDyrrGjK7upT2w4ZlHbxGO1/lD1LaTM4ZBy6mGJDm'),
(65200150, '65200150@kmitl.ac.th', 3, 'นาย', 'ธนพนธ์ กาญจนรุ่ง', '', '0000-00-00', 'ชาย', '', '$2a$12$XKthQqSoX9H/n3n217gEzO8nVD045OKl1MKo8PqEccghFP2eW7qx.'),
(65200154, '65200154@kmitl.ac.th', 3, 'นาย', 'ธนภัทร วงศ์เศรษฐโชติ', '', '0000-00-00', 'ชาย', '', '$2a$12$BaM5MwXFdTqH7.XodF/M9.XskXTM0qK3w.TY5OGeH5S17bYl/4jhW'),
(65200156, '65200156@kmitl.ac.th', 3, 'นาย', 'ธนภัทร สุขกรี', 'ไอหัวควย', '0000-00-00', 'ชาย', '', '$2a$12$wxRbKoEQOk.5lyKMd11lROmawBjzeyfC65qBw1L34BqH3EYpnOE1S'),
(65200162, '65200162@kmitl.ac.th', 3, 'นาย', 'ธนาดร รัชตะปีติ', '', '0000-00-00', 'ชาย', '', '$2a$12$8zZ/Mco.4Dc.duJBdsH/v.2evOj3FMBUj2wmDkojKfwcbNH.XGRoS'),
(65200164, '65200164@kmitl.ac.th', 3, 'นาย', 'ธนาวัฒน์ สระทองด้วง', '', '0000-00-00', 'ชาย', '', '$2a$12$df5TbISPI/sCoIEY0Qk0POB3U8EiylNmKu57.ww1MU2B6EJez15KW'),
(65200169, '65200169@kmitl.ac.th', 3, 'นางสาว', 'ธัญญาลักษณ์ ทองสงค์', '', '0000-00-00', 'หญิง', '', '$2a$12$0l6/mdGaM8pGS78bvVAHh.9Pz97lAowY8mKtlYQDmoMO4xQqBXBJa'),
(65200171, '65200171@kmitl.ac.th', 3, 'นาย', 'ธัญวุฒิ ชนะ', '', '0000-00-00', 'ชาย', '', '$2a$12$J2lEpm/bSz5OKajjzjxja.SFdXn/7TP3vqdXUEBbPKTsGqhMxF/ji'),
(65200177, '65200177@kmitl.ac.th', 3, 'นาย', 'ธีร์ธวัช ชอุ่มผล', '', '0000-00-00', 'ชาย', '', '$2a$12$gSnshlr.G0ueyxGL0Mhff.DUNepmPCce1zHugv33tIqiO1uEHJumG'),
(65200178, '65200178@kmitl.ac.th', 3, 'นาย', 'นายธีรภัทร์ ยอดพยุต', 'เนส', '2004-02-08', 'ชาย', '0994141190', '$2a$12$qP1zzW6gpTwTRqaf2Sz2R.CIZkOZ3mBKFBbnJGEea9FA0z6JcJicK'),
(65200184, '65200184@kmitl.ac.th', 3, 'นาย', 'นันทวุฒิ เณรแตง', '', '0000-00-00', 'ชาย', '', '$2a$12$ctVQ0c32FUKdgP/oohwFMOHBPUnvcfLfzmrZ9rTRLELMoRsB10pm6'),
(65200185, '65200185@kmitl.ac.th', 3, 'นางสาว', 'นันท์สินี คำลี', '', '0000-00-00', 'หญิง', '', '$2a$12$OFqGiDgST3R4MWRT5IojMey/1/FFnrMscN.0V/O0752NzaaogIARy'),
(65200197, '65200197@kmitl.ac.th', 3, 'นาย', 'เบญจพล เม่นแม่สลิด', '', '0000-00-00', 'ชาย', '', '$2a$12$ao8cfhfUgPiM4YqeKjEKF.v5VW2R5tIRU8qpOOjYEP15qxf6srHTe'),
(65200209, '65200209@kmitl.ac.th', 3, 'นาย', 'ปวรปรัชญ์ จันทร์ต๊ะ', '', '0000-00-00', 'ชาย', '', '$2a$12$1Y1jIlwYfE5Q8TJck9MkYu2c/O3tkHpD3SDmSmcxsKgCemfvq2x86'),
(65200211, '65200211@kmitl.ac.th', 3, 'นาย', 'ปัณณทัต ลุ่นเซียะ', 'ปิง', '2003-10-31', 'ชาย', '00822813140', '$2a$12$qthnRjBNvk5/3k9KB4M2Ju5I9W69dofOMH4vmS872Xcz52LWnMAcq'),
(65200224, '65200224@kmitl.ac.th', 3, 'นาย', 'พชรพล พรหมเพศ', 'คิม', '2003-03-26', 'ชาย', '0828016223', '$2a$12$Tdv/Bj2Do/KXXEZ6LBCdyuSz2ixtQ3pUOoBSnsN4jCLkq5esSIAHq'),
(65200237, 'picchayut@gmail.com', 3, 'นาย', 'พิชญุตม์ อุ่นนวล', 'ภูมิ', '2003-06-13', 'ชาย', '0619872063', '$2a$12$B2/8X1A63pKVT4iHwrsg/OkvL3MSAo9iK9JLIALWz/Kco5UEfFQ2S'),
(65200241, '65200241@kmitl.ac.th', 3, 'นาย', 'พิสิษฐ์ วีรสถาพร', '', '0000-00-00', 'ชาย', '', '$2a$12$T8YfTd/G0rTsOnZidaltQO3HecXRfCvQ24SkPr7NZfub2o199PT5G'),
(65200254, '65200254@kmitl.ac.th', 3, 'นาย', 'ภาคิม สงวนพัฒน์', '', '0000-00-00', 'ชาย', '', '$2a$12$1vkYh4l0evL6SPV26T/H0u4Yx6EsIvP2PgOUROXIR7ylRhABf.qby'),
(65200264, '65200264@kmitl.ac.th', 3, 'นาย', 'ภูผา บุญพล', '', '0000-00-00', 'ชาย', '', '$2a$12$3UAnIRIl318Aiera6CmJAeEgarPK3MyLkd3YkWKeICEwmWgCUOvx.'),
(65200271, '65200271@kmitl.ac.th', 3, 'นาย', 'ภูฤทธิ์ ไชยยางพานิช', 'ภู', '2004-03-14', 'ชาย', '0936471399', '$2a$12$16kcx9wSJOFDJO39o25zsOqzIUuGloFAY8bOdthK1kx9Os1lbTwr6'),
(65200272, '65200272@kmitl.ac.th', 3, 'นางสาว', 'ภูวณิดา เรืองด้วง', '', '0000-00-00', 'หญิง', '', '$2a$12$gPCt9akgT0hq7/2./AMEietNfKu9OTVT3wL4XqLdVJHEr7yiOca32'),
(65200273, '65200273@kmitl.ac.th', 3, 'นาย', 'ภูวดล สมบัติมาก', '', '0000-00-00', 'ชาย', '', '$2a$12$iIuD8FRy9B45cw5l0ztrSeC.teR6K9qi9h9F4/08MrXYgW9sG89DG'),
(65200275, '65200275@kmitl.ac.th', 3, 'นาย', 'ภูวิศร ทองตะโก', 'ไบค์', '2004-03-18', 'ชาย', '0957789986', '$2a$12$31DHNF4GcEytq9vG0LVIMuiz3K6VawrACkowbMvudSkE/1d9x15J2'),
(65200276, 'phusitlapet@gmail.com', 3, 'นาย', 'ภูสิทธิ์ หล้าเพชร', 'ภูมิ', '2003-09-24', 'ชาย', '', '$2a$12$Ccb7PoALZwHdNayIWmbZJ.KM/bwE4ZTycyZ4hvX./mr7Fq5HqEAMm'),
(65200277, '65200277@kmitl.ac.th', 3, 'นาย', 'มูฮัยมิน มามะ', 'มิน', '2004-03-14', 'ชาย', '0828144748', '$2a$12$oJ8Wapt7H6pJQcDC5kBuTuDYigJSLQCb97pI2i2mPT796MTjhbXd.'),
(65200279, '65200279@kmitl.ac.th', 3, 'นาย', 'ยงศักดิ์ แสงสุข', 'นีโอ', '2004-01-24', 'ชาย', '0952909471', '$2a$12$9s08t1wmYN.FHBtaaGT0mu6B5Fo7KqAZx6JUW5bNd0pscZq5OsKE.'),
(65200287, '65200287@kmitl.ac.th', 3, 'นาย', 'รัตนพล สมบูรณ์', 'ที', '2003-07-29', 'ชาย', '0836835931', '$2a$12$uQECYdj5ial9fnTEC8VGGexTFsV/JM4SvLJ/99f/bC1R9rMQYW/Py'),
(65200294, '65200294@kmitl.ac.th', 3, 'นาย', 'วงศกร วิโนทัย', 'อั้ม', '2003-12-08', 'ชาย', '0886463069', '$2a$12$sYuh15prRMpKDQdir/nxWu7hDXhS0KUE2hXFBq9O7C1cvbdJZ3rdm'),
(65200305, '65200305@kmitl.ac.th', 3, 'นาย', 'วัชภล ทับแสง', '', '0000-00-00', 'ชาย', '', '$2a$12$EfQCGWQm64YLMGPDV5K50eLO49LlZdWGed426R3R6hctN6/TnSKhi'),
(65200317, '65200317@kmitl.ac.th', 3, 'นาย', 'ศิวกร ล้อมวงศ์', 'ปลั๊ก', '2004-02-20', 'ชาย', '0625137656', '$2a$12$mfMTc5XwSaMnXRjaAYobXOvQTJxlGEeF0n.6581pr1X/aiK/nMiqq'),
(65200343, '65200343@kmitl.ac.th', 3, 'นาย', 'สุทธิรัตน์ เหมือนสร้อย', 'เฟิร์ส', '2003-10-23', 'ชาย', '0917351023', '$2a$12$EG3JPNT9EYOkm2JUWiLDpOv0sfdxuZVs1iRNXR0Zhw4L.kBON2z/K'),
(65200353, '65200353@kmitl.ac.th', 3, 'นาย', 'สุภัทรชัย', 'ตั้ม', '2003-12-20', 'ชาย', '0935835313', '$2a$12$ECw8AVZXKChDeoKTvyvAtuoTQAZltu2NU/K51xbjFR7D8QBd0T3HC'),
(65200354, '65200354@kmitl.ac.th', 3, 'นางสาว', 'สุภาพร ผั่วสกุล', 'เมย์', '2003-04-09', 'หญิง', '0980175461', '$2a$12$/E5gYJM5ejksuhb0bJYktOCQYjYgZohfpzq5oJ.UrZvEkMG7JgvQK'),
(65200356, '65200356@kmitl.ac.th', 3, 'นางสาว', 'สุสาคร ภมรานนท์', 'สาคร', '2003-09-04', 'หญิง', '0936081160', '$2a$12$RyZ8o0kEJM4hNsL3w7OtKOLv2Ae2NhY2Vfov4PZahfn/cLRyb8LJi'),
(65200358, '65200358@kmitl.ac.th', 3, 'นาย', 'เสฏฐวุฒิ ไกรนรา', 'ฟลุ๊ค', '2003-09-11', 'ชาย', '0929847340', '$2a$12$fC1FMODsyv33zf4vtT.Ye.Hqv2Ion3Alji8gZwtqhsi5chsgNsk4u'),
(65200359, '65200359@kmitl.ac.th', 3, 'นางสาว', 'หนึ่งฤทัย แท้สูงเนิน', 'กิ๊ฟ', '2001-07-26', 'หญิง', '0837788259', '$2a$12$YE6ZAKZT8CtkGNrQrPgRIue3TioCmUhJWjRC/IBjXwAf4c615eMka'),
(65200365, '65200365@kmitl.ac.th', 3, 'นาย', 'อติวิชญ์ ทองมาอิ่ม', 'ฟอร์ด', '2003-11-19', 'ชาย', '0877381919', '$2a$12$OPZQG6XldvVYv8zdFj/TFedFUhxA89i5aAfn8.wDT7T/BTCdusObq'),
(65200366, '65200366@kmitl.ac.th', 3, 'นาย', 'อนิวัตติ์ ถิ่นนัยธร', 'ก็อต', '2003-12-31', 'ชาย', '0980417457', '$2a$12$..qJQAeqkrUhBZy4fZ5AEuhhZsuRxjVjAVBUq/lHVRwxK0LUoZYQq'),
(65200368, '65200368@kmitl.ac.th', 3, 'นาย', 'อนุวัตร์ วันจงคำ', 'กาย', '2004-01-04', 'ชาย', '0897614902', '$2a$12$d1dPXVPdr.cKawXSVk7FjuKD52ELDMEPT8L05Tq/iJ/v0QPCsNgv.'),
(65200369, '65200369@kmitl.ac.th', 3, 'นางสาว', 'อภิญญา คนึงหาญ', 'ปรางค์', '2003-12-04', 'หญิง', '0617047791', '$2a$12$jd2XroNi8pJJcJr8Yr6JnOMMfHgeUkbfTm5T9enlUtf18IRakm2D2'),
(65200373, '65200373@kmitl.ac.th', 3, 'นางสาว', 'อริสดา มะบารู', 'อัยดา', '2004-02-10', 'หญิง', '0864738081', '$2a$12$Ol6NHk/1VvZRNHFQny1/tO08Lv8b5UOe/bAJ8CJh4lQgpooyoN2yS'),
(65200380, '65200380@kmitl.ac.th', 3, 'นาย', 'อาณัติ ศรีจันทร์', 'ไอซ์', '2004-02-01', 'ชาย', '0982724669', '$2a$12$SwF7VvlDaPmjTr4OJ6W3YekZGdLxzH9RR0mAcrEKf99hFVex/A0e2'),
(65200382, '65200382@kmitl.ac.th', 3, 'นาย', 'อิทธิพล นิจสินธุ์', '', '0000-00-00', 'ชาย', '', '$2a$12$O2MN0Ne1mzO27GZSVsixiORiRXTH//01ti6SDmUeYNqaW8Jd0GE/m'),
(65200383, '65200383@kmitl.ac.th', 3, 'นางสาว', 'อินทิรา เรืองชาตรี', 'อิน', '2003-11-03', 'หญิง', '0937284127', '$2a$12$Ok39DoNJUcDd2gvtoqWQ1ePEwljJvmE5lwt9tOyLMhZ9gHwgnAN/G'),
(65200385, '65200385@kmitl.ac.th', 3, 'นาย', 'อิสระ สุขอินทร์', '', '0000-00-00', 'ชาย', '', '$2a$12$M/A32DZCqOdL7dZWUJn2DeeeycRbO9JkbJh/MqI2ijdNshPmw34T.'),
(65200389, '65200389@kmitl.ac.th', 3, 'นาย', 'อุสมาน เจ๊ะอาลี', '', '0000-00-00', 'ชาย', '', '$2a$12$ZtmNid0rfcN8wM3aHW/DmuotahmeSoiFSmqKoEY.keCSoJ/3AId8G'),
(65200393, '65200393@kmitl.ac.th', 3, 'นาย', 'ฮาริช ไพรพฤกษ์', '', '0000-00-00', 'ชาย', '', '$2a$12$3RxURJmo/2MZdEeABr7oyu/VcPlTKIDZOpI.AtaDTMRhVQfs3oY6C'),
(66200004, '66200004@kmitl.ac.th', 2, 'นางสาว', 'กมลนัทธ์ รักกิจ', 'แนน', '2004-02-12', 'หญิง', '0634760597', '$2a$12$fgM9OF47ykLOOCj6lRNj5eh2kaLeHXz6KNoVymCMRa9WrEh1lzlUO'),
(66200009, '66200009@kmitl.ac.th', 2, 'นางสาว', 'กรรณธิชา สงเสริฐ', '', '0000-00-00', 'หญิง', '', '$2a$12$tZXl4xb3W.pZ17/rfAiiIeZBfN687x/dsrR0yrD4I6.7z3LvqZDgO'),
(66200011, '66200011@kmitl.ac.th', 2, 'นาย', 'กฤตพัฒน์ ยืดยาว', 'กาโด้', '2004-08-16', 'ชาย', '0918206741', '$2a$12$kwGQ5ijiVuHQI08H3VVhHeD/gIf3MkQQnDCBT4selT8DgbOE7SHXm'),
(66200012, '66200012@kmitl.ac.th', 2, 'นาย', 'กฤตภาส เพ่งผุดผ่อง', 'อัส', '2004-10-08', 'ชาย', '0902537787', '$2a$12$tEbfjK5oFcTSDONjHiduh.SHxXogHxptYiLZ8AIrysd593xic8aYO'),
(66200028, '66200028@kmitl.ac.th', 2, 'นาย', 'เกียรติยศ จันทร์เพ็ง', '', '0000-00-00', 'ชาย', '', '$2a$12$8N2Wb.U9lFQaD9eblNUEle2TnStvWNg7JHRPpLhExL5/6peOoChTG'),
(66200033, '66200033@kmitl.ac.th', 2, 'นาย', 'คมกฤษ บินล่าเต๊ะ', 'กฤษ', '2004-10-25', 'ชาย', '0611769547', '$2a$12$x5SDv4QFkDZUccs6bi0r5O.ef08lRF1w3N7E4ioJfi6jrdxPk6HlG'),
(66200051, '66200051@kmitl.ac.th', 2, 'นาย', 'ชนสรณ์ ทองน้ำวน', '', '0000-00-00', 'ชาย', '', '$2a$12$mTAAfehHQWk0XmV9vSfDbO0c.BnIE8BAORmaIdMXyRPpfzETpZAV6'),
(66200052, '66200052@kmitl.ac.th', 2, 'นาย', 'ชนะพงศ์พันธุ์ ทรัพย์มี', 'พีท', '2004-06-01', 'ชาย', '095963099', '$2a$12$MW.gCgKl.dv5JQuMTSn3JOcB5MWASpQw09BrXnvNkeBDLPrKt/EsW'),
(66200059, '66200059@kmitl.ac.th', 2, 'นาย', 'ชิษณุพงศ์ งามน้อย', '', '0000-00-00', 'ชาย', '', '$2a$12$YNS4YWkpSObnu.VXgXh1AOvHvUmD0JXn21b87kFz6JHb6ERAATYJW'),
(66200062, '66200062@kmitl.ac.th', 2, 'นาย', 'ฐิติกร กี้ข้อ', '', '0000-00-00', 'ชาย', '', '$2a$12$BW9xupo6DSREHZ4ZTp12GufzxQeg50rONFXvodzTEd02SRvyFZO5q'),
(66200063, '66200063@kmitl.ac.th', 2, 'นาย', 'ฑีฆทัศน์ คำระหง', 'ที', '2004-08-31', 'ชาย', '0959029373', '$2a$12$ISBbU784i3Uqp3/Z/FxCAen.fJIGsozUKK3oqXVe3IuYDoCrTEZdS'),
(66200082, '66200082@kmitl.ac.th', 2, 'นาย', 'ดัสกร ทับแสง', '', '0000-00-00', 'ชาย', '', '$2a$12$pCuEzlTda9UKLdriCmG20uh8lVCUGiVyKSmDgqPYhpF8iGo8J.lnS'),
(66200098, '66200098@kmitl.ac.th', 2, 'นาย', 'ธนดล ขวุนแขวง', '', '0000-00-00', 'ชาย', '', '$2a$12$oDzZoamHo2d05YZKsr7z4O.4LuMHthRVIKIAhQ8l8SVtyrjBgH/OC'),
(66200105, '66200105@kmitl.ac.th', 2, 'นาย', 'ธนะวัฒน์ บุญประสพ', 'ไนซ์', '2004-01-21', 'ชาย', '0932491392', '$2a$12$C4DxiGYMO1F7DA2Q2xjf6uFW1HSxuxtZIHwuwgQ/fyekPILV2YPdu'),
(66200108, '66200108@kmitl.ac.th', 2, 'นาย', 'ธนายุทธ ศรีเรือง', 'ปอนด์', '2005-04-14', 'ชาย', '0834547706', '$2a$12$3qUu1bMd6EwFw7VcT7nX5OuJ/a.DuJqvN8kt85WazsHc.Jwf/jAYG'),
(66200113, '66200113@kmitl.ac.th', 2, 'นาย', 'ธัญวุฒิ ลีวังศรี', '', '0000-00-00', 'ชาย', '', '$2a$12$I83.X37eQ0SucqVv5P577u1tJUQxB8PI4ugH3gJtQWi62V3z7mpUC'),
(66200117, '66200117@kmitl.ac.th', 2, 'นาย', 'ธีรเดช แสงอรุณ', 'เอิร์ธ', '2004-09-07', 'ชาย', '0620780682', '$2a$12$DPdAGxCtAiLbaiTpan2V1e8D0FP5SRzpCi4seiy3NQzZd4g6u2kj2'),
(66200122, '66200122@kmitl.ac.th', 2, 'นาย', 'ธีรภัทร์ อามาตย์', 'นิค', '2005-01-18', 'ชาย', '0925603534', '$2a$12$6qkm8zNdOg49GLmce6mNg.K9dcr.a8hLwg60HfQ8z1eyMAGrJtvQa'),
(66200137, '66200137@kmitl.ac.th', 2, 'นางสาว', 'บัณฑิตา วงศ์อนุรักษ์กุล', 'มุก', '2005-02-18', 'หญิง', '0825091864', '$2a$12$/XIYC42ZDjMhjC6UEUyLiu0pnEtmkERrKIFgMVsvNR9aOC8dwC7kK'),
(66200141, '66200141@kmitl.ac.th', 2, 'นาย', 'ปฐมพงศ์ ปานเกลี้ยง', 'ตังๆ', '2005-04-11', 'ชาย', '0635806948', '$2a$12$.BZrKPId6wxH5tTkqxWcdu0JMCCAd.11k2Zix3YnykVcsvkXx/1KS'),
(66200157, '66200157@kmitl.ac.th', 2, 'นาย', 'ปัณณวิชญ์ ยงภูมิพุทธา', '', '0000-00-00', 'ชาย', '', '$2a$12$dimyOHqN2Mlpw5I5R/OPFO9aren843KSndm56KnOoq8oOlx3BYbWq'),
(66200160, '66200160@kmitl.ac.th', 2, 'นาย', 'ปิยภัสร์ อัจฉราทิพย์', '', '0000-00-00', 'ชาย', '', '$2a$12$3H/tzaP.8sRbu/LFQ4Oifu6WPnAoKy8abK4XBb7acLxfvIBBHhpAG'),
(66200166, '66200166@kmitl.ac.th', 2, 'นาย', 'พงศ์พณิช อินทร์เทพ', 'เจมส์', '2004-11-10', 'ชาย', '0614875561', '$2a$12$dX02mj95XQ1Ws.N9UdQjGeoCTKPwlhx.rw5dMDePPKTFuclecWXFC'),
(66200174, '66200174@kmitl.ac.th', 2, 'นาย', 'พรเทพ สิงคะ', '', '0000-00-00', 'ชาย', '', '$2a$12$4dI1tfZ/mxhHcEi3px5ai.mVT8lFjtUyT2AI8/eTIxIKk9EGfQzXK'),
(66200179, '66200179@kmitl.ac.th', 2, 'นางสาว', 'พลอยชมพู เลิศพนนนท์', '', '0000-00-00', 'หญิง', '', '$2a$12$5qmNnXon6aL7T9paEha/hOhl7oUoLoU9aAUoLsHEUPqCLAvNAGSAO'),
(66200184, '66200184@kmitl.ac.th', 2, 'นาย', 'พีรพัฒน์ สมพงษ์', '', '0000-00-00', 'ชาย', '', '$2a$12$ii/LdhpqQn8mYNXPDTmCoOgErA3oOUzYXSYEz2es5yIEDJJNv4zMy'),
(66200190, '66200190@kmitl.ac.th', 2, 'นางสาว', 'เพ็ญพิชาา กาญจนพานิชย์', 'แพน', '2004-01-06', 'หญิง', '0935814918', '$2a$12$lgDnPVV5/gRRXP9.c0vMFeT8ZxqwY0uDBeC5zxz45FbhCS48e8KLO'),
(66200193, '66200193@kmitl.ac.th', 2, 'นาย', 'ภควัต พิชัยณรงค์', '', '0000-00-00', 'ชาย', '', '$2a$12$ojDhh69BLr5OtBydx7ekhenyWPWmFLxfiiBZYkQmkCJO3L3ba.HVG'),
(66200238, '66200238@kmitl.ac.th', 2, 'นาย', 'วรวิช แซ่ซิ่น', 'บอม', '2004-09-21', 'ชาย', '0935702132', '$2a$12$0u3jhVF/GsRJPx0THps25eIiDmunldwvhyx8cZ/dIv.sWGgzCTIYm'),
(66200245, '66200245@kmitl.ac.th', 2, 'นาย', 'วิชญะ อัธยาศัย', 'ฟลุ๊ค', '2005-04-09', 'ชาย', '0937839678', '$2a$12$PtQM7df3kuy6pGl1kao9Cu2qjVbVoHcgIpB0Dh42eXIco0LZlvfxK'),
(66200248, '66200248@kmitl.ac.th', 2, 'นาย', 'วีรภาพ เจียรพันธ์', 'ปอนด์', '2004-09-03', 'ชาย', '0806458931', '$2a$12$WYm/6H/EX1hCv5qVlyWNCOj/It.f3SZcDcELtnTYPSep926Ewbj5q'),
(66200250, '66200250@kmitl.ac.th', 2, 'นาย', 'ศตายุ ใสสว่าง', 'หมวด', '2004-12-14', 'ชาย', '0622310206', '$2a$12$CwgRccChyIpOKdBT3arGBeXG/hrp2Wx7zAxMKKp0gsNX17lIpYT9u'),
(66200257, '66200257@kmitl.ac.th', 2, 'นาย', 'ศิรชัช สุทธิรัตน์', '', '0000-00-00', 'ชาย', '', '$2a$12$mfEMpDUXmv.0FqSFWDcbbe5IGLHEeVyKMEO0g1IWhICJ/MKkZ2wIm'),
(66200277, '66200277@kmitl.ac.th', 2, 'นาย', 'สิฐวุฒิ จิตต์สวัสดิ์', '', '0000-00-00', 'ชาย', '', '$2a$12$CeGLOYdZlsdxF0o06idy7OrVIaPUSbflSE44CffNmKf/Nqdo2MGp2'),
(66200285, '66200285@kmitl.ac.th', 2, 'นางสาว', 'สุณิสา ยาตรกาศ', '', '0000-00-00', 'หญิง', '', '$2a$12$ozx8MywzxToR0pQjuGm0a.wqPGMW5tpWc8odntCiwnzMQv4FKv5Zq'),
(66200301, '66200301@kmitl.ac.th', 2, 'นาย', 'อติชาต ทองเปลว', '', '0000-00-00', 'ชาย', '', '$2a$12$IHTfEhZ7E2Gk4xGg8rUvse1ob73R26HebKKbYOQMQzYOme8aqClG.'),
(66200316, '66200316@kmitl.ac.th', 2, 'นาย', 'อำนาจ งามเอก', '', '0000-00-00', 'ชาย', '', '$2a$12$TiZ8QCpPv3v4EUeMCqcIAusjwOC34ynwq2wz04g4gY3nWfezcGXUC'),
(66200326, '66200326@kmitl.ac.th', 2, 'นาย', 'กิตตินันท์ คูหา', 'ซันนี่', '2004-11-07', 'ชาย', '0989055242', '$2a$12$VPskkD1Np94oloX8LzY9Wu6Y7xt0l1EPWXLR6oqwcsSHmiEbr9b6K'),
(66200328, '66200328@kmitl.ac.th', 2, 'นาย', 'คำรณ รักเชียง', '', '0000-00-00', 'ชาย', '', '$2a$12$xWgYDwEYrWIkK2gqIrz.yeOZi4HjgHpz3ii1VYZemoeRS.Ka2Lw8u'),
(66200336, '66200336@kmitl.ac.th', 2, 'นางสาว', 'ชฎาภรณ์ โพธิ์ศิริ', '', '0000-00-00', 'หญิง', '', '$2a$12$73c2/69Q1yQCmdy.r5nSL.xslRVXdp/WTGTtmjfKjdLz4rcKxVp9y'),
(66200338, '66200338@kmitl.ac.th', 2, 'นาย', 'ชนัฐกร อริยะอมรเลิศ', 'พีวี', '2004-12-06', 'ชาย', '0616288197', '$2a$12$31Kf8Y5ntHONlambOxSmduPMFKHdwgmHVhCY6IiapoXj4RaZNr4Bm'),
(66200339, '66200339@gmail.com', 2, 'นางสาว', 'ชนินาถ ปิยะศาสตร์', 'บัว', '2004-12-03', 'หญิง', '0957218639', '$2a$12$yKHBv7WexC6GZrNGOiN.Du2vS0eP225d1mxk/IcSOBPVa1VBQtmv.'),
(66200340, '66200340@kmitl.ac.th', 2, 'นางสาว', 'ชมพูนุท ศิริบุตร', '', '0000-00-00', 'หญิง', '', '$2a$12$ZaAvS8OQ.M20ejMKi9msSOcLTITxF15f7D.2TPDY39Ljouha8V9zq'),
(66200341, '66200341@kmitl.ac.th', 2, 'นาย', 'ชยธร แร่ทอง', '', '0000-00-00', 'ชาย', '', '$2a$12$wL.dKOxriDaf/WRgUwM08uj8D8L12SNneOBYJjEGZUvXg71ydQGuO'),
(66200345, '66200345@kmitl.ac.th', 2, 'นาย', 'ณฐกร นิ่มกาญจนา', '', '0000-00-00', 'ชาย', '', '$2a$12$h0wpGmZ.2IYJdDuR5glcKOgFsTo0q/f0GKkAYLR2VqfQn/SCSWx5C'),
(66200347, '66200347@kmitl.ac.th', 2, 'นางสาว', 'ณัชชา ภูมิภัทรภักดี', 'พิมมี่', '2004-08-27', 'หญิง', '0987427944', '$2a$12$S0cyNW6fDOx08EK0KrFHQOlPWrwri0fKHR64lYanvAKLUx2/J1aFa'),
(66200354, '66200354@kmitl.ac.th', 2, 'นาย', 'ดรณ์ จรรยาเสน', '', '0000-00-00', 'ชาย', '', '$2a$12$kAZ8sU6gButcP3l.vXoiSu9e6tFQxVbwCYhlDj/5L/owuYUEk4OCa'),
(66200357, '66200357@kmitl.ac.th', 2, 'นาย', 'ทินบดี สุมังคละสมบัติ', 'โอม', '2005-04-05', 'ชาย', '0615605305', '$2a$12$u/QLHO8DEiQI9yE7c3zBD.MD0WCmOa1cRS2VDAc2mLGwvnZQUQmp.'),
(66200361, '66200361@kmitl.ac.th', 2, 'นาย', 'ธีรนันท์ จันทร์กระจ่าง', '', '0000-00-00', 'ชาย', '', '$2a$12$8PujCVnPW1eQ.0CH5cJ1FOnoFcdxoV0ETOUTNZgxJnxEw6NoyXSMy'),
(66200383, '66200383@gmail.com', 2, 'นาย', 'ภัทรดนัย บุญไทย', 'พีท', '2004-09-22', 'ชาย', '0991327031', '$2a$12$XpDEMHUH2NghNToXEFDyjeEnbn6ks/um80yzbuhluCWxgMvPinckO'),
(66200389, '66200389@kmitl.ac.th', 2, 'นางสาว', 'วนัชพร ฉายบุญครอง', 'ใบตอง', '2003-10-18', 'หญิง', '0944735671', '$2a$12$rlEct4rgCIqczelke7Cmx.0oK6.RZx5UcJZqFt0oBbB8rZQsSLlb2'),
(66200395, '66200395@kmitl.ac.th', 2, 'นางสาว', 'วาสิตาใจรังษี', 'ปอฝ้าย', '2004-09-25', 'หญิง', '0622192487', '$2a$12$.sJOocE4gTlHFXm9FPZ2T.W/8Ha7Ru6W8LU2oPHzURRHTeym6ovOG'),
(66200396, '66200396@kmitl.ac.th', 2, 'นางสาว', 'วิชญาพร ยาจิ๋ว', 'เกียว', '2005-07-17', 'หญิง', '0855053636', '$2a$12$oe8A7xGOAISZXKrxHbYcz.oLhqe8a3ns62KhoFqMdBgBGhBJQF4nC'),
(66200407, '66200407@kmitl.ac.th', 2, 'นาย', 'สรกฤต มีอินทร์', '', '0000-00-00', 'ชาย', '', '$2a$12$gilBI66BN0SFk4CQopNAvuFPsdRIrKeatvRP5aNpS5WuPLEm5yxUi'),
(66200408, '66200408@kmitl.ac.th', 2, 'นาย', 'สหเกียรติ์ กาญจนรัตน์', 'ตี๋', '2005-06-23', 'ชาย', '0618585405', '$2a$12$O0LKzhtLI5bqJMSNa47sQe4SkZIRB1n4rCuNBxVlXztZxFgrF/GVe'),
(66200411, '66200411@kmitl.ac.th', 2, 'นาย', 'สิรภพ ปิติชูชีพ', 'เบสท์', '2005-01-01', 'ชาย', '0953176495', '$2a$12$XzwQ.1vkqVxZRJhePD9CJea8GylRZBCSr2uuqCXeYSx2WIoNk96xq'),
(66200415, '66200415@kmitl.ac.th', 2, 'นาย', 'สุรชาติ คงสงค์', 'บอล', '2003-03-15', 'ชาย', '0980807909', '$2a$12$vbchAwxy3uATO0ntlowzheXnyiamavRW0DKh.p4OA9mdyf1nX2xIO'),
(66200420, '66200420@kmitl.ac.th', 2, 'นาย', 'อภิศักดิ์ เพชรเศษ', 'โย', '2005-06-21', 'ชาย', '0937154851', '$2a$12$D6/oz0pwakAoLwbiC7kqpe7iyPJVDzMQLEBBGveKsi4zRbKc8Sbe2'),
(66200423, '66200423@kmitl.ac.th', 2, 'นาย', 'อัครวินท์ ดัชนี', '', '0000-00-00', 'ชาย', '', '$2a$12$aMOgv0qINcK13vfXmx831.DjtQk3WTFo2km/EMmS0BUI.qkvIKgTS'),
(66200425, '66200425@kmitl.ac.th', 2, 'นาย', 'จิราเดช พยุหกฤษ', '', '0000-00-00', 'ชาย', '', '$2a$12$Nu9CgTOL6qWDE6jBkYzxxeHexFP8QGWzLVJspZyCqYVf6bbK2YSzi'),
(67200010, 'ar32zaza@gmail.com', 1, 'นาย', 'กฤษณะ สุขกรี', 'ฟิล์ม', '2005-12-17', 'ชาย', '0936268091', '$2a$12$kdPgJ019bTfe5sh/RWn/xuONzMoQH843HJiOLBd/6gCZZs6q0ICRm'),
(67200014, '67200014@kmitl.ac.th', 1, 'นางสาว', 'กัณฐมณี กอบการ', '', '0000-00-00', 'หญิง', '', '$2a$12$ig7zErTneX9XCAKUXfkRQO9V51Bs6gY4G6xHLL8R0h1jRPlJ3FlUe'),
(67200023, 'kittipatpakamas@gmail.com', 1, 'นาย', 'กิตติพัฒน์ ผกามาศ', 'ไทเกอร์', '2005-06-24', 'ชาย', '0630626891', '$2a$12$HkjLN6.QRLfD1Y39N9C3TuPvHDibhwb9vcK8q879PO5z.61DX10aq'),
(67200024, '67200024@kmitl.ac.th', 1, 'นาย', 'กิตติศักดิ์ รัตนรักษ์', '', '0000-00-00', 'ชาย', '', '$2a$12$zp8vLTnJoSYeJhGe671MMunfJsX/ILiF3C7FaueqiurML4dXOIqm6'),
(67200030, '67200030@kmitl.ac.th', 1, 'นาย', 'คณพัฒน์ รุ่งรพีพรพงษ์', '', '0000-00-00', 'ชาย', '', '$2a$12$szqiCNpBnDZZ6.brGow9Q.hHaGsj7zICQWI5yT2gq/K.etwkdOWvC'),
(67200031, '67200031@kmitl.ac.th', 1, 'นาย', 'คณาธิป วิเชียรศรี', '', '0000-00-00', 'ชาย', '', '$2a$12$LvLepwAzJuQaLnmoqr383.vjkE4z981Xc8xdQ6HlBh7cYt8zCSvBW'),
(67200032, '67200032@kmitl.ac.th', 1, 'นาย', 'คมสัน หัสบงกต', 'เค', '2005-11-18', 'ชาย', '0930878882', '$2a$12$t53Dsy.nXKg1F7R43e0YneOr9mpXedJHiZXf2GRxeg/wq3QIna99.'),
(67200049, '67200049@kmitl.ac.th', 1, 'นาย', 'เจษฎา ศรีสง่า', 'พี', '2005-07-24', 'ชาย', '0626253837', '$2a$12$aTo3sLeNPmnWjQZQAW6LjujlLsyUaVV29BLyS5FSL5NADuEWdDGZK'),
(67200050, '67200050@kmitl.ac.th', 1, 'นาย', 'เฉลิมรัฐ เพ็ชรสุวรรณ', '', '0000-00-00', 'ชาย', '', '$2a$12$on/XvJs9vgBf.4eSDUIxSuAWH3Vr6vcSTjljobWRDmdz18HuvN5Vq'),
(67200062, '67200062@kmitl.ac.th', 1, 'นางสาว', 'ชุติกาญจน์ แก้วสมศรี', '', '0000-00-00', 'หญิง', '', '$2a$12$R0FQy5UnI6k.A7d70K/hYeh/Chh3f6xc.wSxeRjFsS7o6Zfjeslfq'),
(67200063, 'chutikan292548@gmail.com', 1, 'นางสาว', 'ชุติกาญจน์ แซ่อึ้ง', 'ตา', '2005-07-29', 'หญิง', '0823456141', '$2a$12$V2.4XpnszQlucvbQNt1Wjuky2TopO8ae0kWnSrOjfGC93BL/Or/RW'),
(67200071, '67200071@kmitl.ac.th', 1, 'นาย', 'ณภัทร ตุลารักษ์', 'ออฟ', '2005-11-28', 'ชาย', '0945467644', '$2a$12$qcvksPQCbce/2xyA9W0G6e5oK3XlEG.4106ixWzUTpC78tsbYOeXC'),
(67200079, '67200079@kmiltl.ac.th', 1, 'นางสาว', 'ณัฐธิดา เกื้อประจง', 'อัน', '2005-12-11', 'หญิง', '0801585306', '$2a$12$tY7xaTYWLQtrmz5fHIvydOjKW9AnLSuTiuW0IoSUjiKHnbYbrk9Mm'),
(67200081, '67200081@kmitl.ac.th', 1, 'นาย', 'ณัฐนนท์ ชุมบุญ', 'นนท์', '2006-05-14', 'ชาย', '0968712489', '$2a$12$XUIopZldwdVOjJTQyQaH3.F2zYA2143xcs2c4bvwkypAvY.8h6QN6'),
(67200088, '67200088@kmitl.ac.th', 1, 'นาย', 'ณิพิชญ์ มาศเมฆ', '', '0000-00-00', 'ชาย', '', '$2a$12$MkWhAn2Uj6UJm6AI3nyo0e.CItWZOExayVmGzZg0ivPfe4mMFPdw2'),
(67200093, '67200093@kmitl.ac.th', 1, 'นาย', 'นายตระกูลชัย เเซ่ติ้ง', 'เฮ้าซุง', '2005-12-04', 'ชาย', '0980850838', '$2a$12$OsFbhE.Q.WAkArNmlqqjqeqtlPB81u3F6Du/uuA1x5PaSHQ/vOzSC'),
(67200099, '67200099@kmitl.ac.th', 1, 'นาย', 'ทัชภูมิ ใจดี', 'ไปน์', '2005-11-28', 'ชาย', '0986782950', '$2a$12$Z2laI83Xy8/e62kargB7y.APUtyisnRVkeZpqqQd.oiopav9k.ngq'),
(67200102, '67200102@kmitl.ac.th', 1, 'นาย', 'ทีปกิติ์ พรหมสัตยพรต', 'ริว', '2005-11-26', 'ชาย', '0973016465', '$2a$12$JewiZOYvsuUI9uNqTnQuk.gZdnOxM4cLbrRjUM3PtgAEKZbVJmEP.'),
(67200103, '67200103@kmitl.ac.th', 1, 'นาย', 'ทีปศ์ยุส พิจยานนท์', '', '0000-00-00', 'ชาย', '', '$2a$12$c5fmRhv0TTn4wQyCWBa16O7AJMUMJsiDBc8v4Wp3jBQLohjobazFS'),
(67200107, '67200107@kmitl.ac.th', 1, 'นาย', 'ธนโชติ เพ็ชรรัตน์', '', '0000-00-00', 'ชาย', '', '$2a$12$P4k1t1p/9fu.cwJfmHg5PeieUw3x9RvHEsCnNs9wQK5uQXmfR58XC'),
(67200119, '67200119@kmitl.ac.th', 1, 'นาย', 'ธฤต อ่องมะลิ', 'วิน', '2006-02-13', 'ชาย', '0970360046', '$2a$12$q8yrbbY4XO/yA9zoooBfNefVxqro7ffy5VZbg8JX73qWRm3k/Osc.'),
(67200127, '67200127@kmitl.ac.th', 1, 'นาย', 'ธีเดช สถิรสมบัติ', '', '0000-00-00', 'ชาย', '', '$2a$12$pCzQC6gP9OoqnP3neXhtiuBiX.cNGTsQxa3MvwY.8dEL6LWUaAPbS'),
(67200134, '67200134@kmitl.ac.th', 1, 'นาย', 'นภดล ขาวดี', '', '0000-00-00', 'ชาย', '', '$2a$12$IUYCZ/EBY8N1KEKvJ/80J.AhnvlwseDRWghyapp/M2G.DEgayU37m'),
(67200148, '67200148@kmitl.ac.th', 1, 'นาย', 'เนติภูมิ มีศรี', '', '0000-00-00', 'ชาย', '', '$2a$12$YZOJPdv8M5KVNGceYVMadO5SUdN4bCPzuPwa6yKXtxLJDBLpfgEte'),
(67200155, '67200155@kmitl.ac.th', 1, 'นาย', 'ปฏิภาณ เสนาป่า', '', '0000-00-00', 'ชาย', '', '$2a$12$WRKudDDZ9ZV7tx6Gp/s64./d6zUN0AT/zw9YFP8p8YZYzkCXQGlGm'),
(67200165, '67200165@kmitl.ac.th', 1, 'นางสาว', 'ปัณณพร พรหมรักษ์', '', '0000-00-00', 'หญิง', '', '$2a$12$dwRFumJ/4U3r6CES/uoLIOXzaqAJRKLrrsHdIpN2dsfQWPM/881/G'),
(67200172, '67200172@kmitl.ac.th', 1, 'นางสาว', 'ปิ่นปินัทธ์ เข็มทอง', '', '0000-00-00', 'หญิง', '', '$2a$12$qXvHbZzZxa0ZDgWDH9AzzO3X.TI7CSAar7si1mgRZrzKHBTHCtkli'),
(67200187, 'pasutpd@gmail.com', 1, 'นาย', 'พศุตม์ เพชรรอด', 'ออฟ', '2006-01-13', 'ชาย', '0930611106', '$2a$12$smPyHchGCCwre0IMY4KijODQ0hfyxJw6.ERQrVdraiteJ4UaaWVCS'),
(67200219, '67200219@kmitl.ac.th', 1, 'นาย', 'ภูวดล วิสาละ', 'เดล', '2006-01-12', 'ชาย', '0611301594', '$2a$12$icxhQtMlwuescleCXxigbuLg6nONF8FHg72StgptAhlE2gqhm5TFi'),
(67200223, '67200223@kmitl.ac.th', 1, 'นาย', 'นายมีสุข เอกพงษ์', 'โก้', '2006-01-16', 'ชาย', '0935654015', '$2a$12$a5aibraFKn2NG.FH8vjJTOvf1ty1PxtHPNp4wYgISlcqR1UT7X1zi'),
(67200235, '67200235@kmitl.ac.th', 1, 'นางสาว', 'รินรดา บุญมี', '', '0000-00-00', 'หญิง', '', '$2a$12$j/DAmyZg.I3N7joUS/mhQ.gxQ2Bdhd7c7b30v.Q/Ul0F52dW4zsK2'),
(67200258, '67200258@kmitl.ac.th', 1, 'นาย', 'วุฒิชัย อ่องรัตนากุล', '', '0000-00-00', 'ชาย', '', '$2a$12$Qk9fff7D6LMUG1v/bxLoZ.VUJWCIIlzDFySNZoR.HcSSIKiQ58ICi'),
(67200272, '67200272@kmitl.ac.th', 1, 'นาย', 'ศุภฤกษ์ มะนะกุล', '', '0000-00-00', 'ชาย', '', '$2a$12$j.UymZhg/1rW1eLqYntpAu4hGyCOjZDeL4MuaDs5QietCtwd8YR8K'),
(67200277, '67200277@kmitl.ac.th', 1, 'นาย', 'สรวิศ บัวขนาบ', '', '0000-00-00', 'ชาย', '', '$2a$12$m3BBErKt2wGpThDgD7BVU.PRS7rN/OyT0pATn19X6ulzC5HNcEype'),
(67200305, '67200305@kmitl.ac.th', 1, 'นาย', 'อนิวัต ยะคำ', 'ภู', '2005-12-25', 'ชาย', '0987294984', '$2a$12$aCXM8HsxXYrN3wqHYxBKmuFLNPVBjoRkeGdNi.MiIUswsqtJWSZ/y'),
(67200324, '67200324@kmitl.ac.th', 1, 'นาย', 'กนกพัฒน์ โพธิ', '', '0000-00-00', 'ชาย', '', '$2a$12$IrrAuA3gjy9ZKryhxMWeN.G8t7wHCvW.Brq0GuKddcCQRNj86UAai'),
(67200344, '67200344@kmitl.ac.th', 1, 'นาย', 'ชวัลวิทย์ จันทร์ศุกฤกษ์', '', '0000-00-00', 'ชาย', '', '$2a$12$25ACM.CV.x4W1emPWWLLfODqtFrVmqg1xET8eKy8Q2aVRUq6zCUxC'),
(67200348, '67200348@kmitl.ac.th', 1, 'นาย', 'ณรงค์รักษ์ เรืองศักดิ์', 'ไอซ์', '2005-07-28', 'ชาย', '0929744516', '$2a$12$FuyhM8UeNqozXZAsSvghHudakw76gopfBk3MlwkGGQL1yitVyTabe'),
(67200349, '67200349@kmitl.ac.th', 1, 'นาย', 'ณัควัต เศรษฐเอกพันธ์', '', '0000-00-00', 'ชาย', '', '$2a$12$kHzy9CxmZ6VyTrZueNhRLuah4mvgKrsZiUCbKvGyhii8oz6k7cn0K'),
(67200350, '67200350@kmitl.ac.th', 1, 'นางสาว', 'ณัฏฐ์ชยา จำปา', 'วาวา', '2005-10-16', 'หญิง', '0650053473', '$2a$12$X1BLoo98LRFC3TzSK64jN.PLTY/MKUZlzYzg6c3UJ0blVsSJfhG7G'),
(67200351, '67200351@kmitl.ac.th', 1, 'นาย', 'ณัฐธนน ทุมรัตน์', '', '0000-00-00', 'ชาย', '', '$2a$12$nsaiqtIrXmVGbADW4r7sW.7pArBZeAS4SShD.VLJzS7R9x4HMvlQW'),
(67200357, '67200357@kmitl.ac.th', 1, 'นาย', 'ดนุพล จิ้วพงศสวัสดิ์', '', '0000-00-00', 'ชาย', '', '$2a$12$xz7LEc6XQ/pH9YRdDgvd6.WcxtZemq0MEqIuIpLFviVqaEnB9wczC'),
(67200367, '67200367@kmitl.ac.th', 1, 'นางสาว', 'ธัญญรัตน์ ส่งสมใจ', 'โมริ', '2005-07-04', 'หญิง', '0964159745', '$2a$12$N6n3KHY9jqL92gm4MJNjMeZm5f.TdnMTmYpCrNq62oQQb1QmJ9xjq'),
(67200368, '67200368@kmitl.ac.th', 1, 'นาย', 'ธีรภัทร ทองสิงห์', '', '0000-00-00', 'ชาย', '', '$2a$12$wE2JA2kvlMVCe3IYUuzCKeBPgMuLna68eYpYbJuyUNcgnSmHewirC'),
(67200369, '67200369@kmitl.ac.th', 1, 'นาย', 'นายธีรศาสนต์ คงเกิด', 'Tee', '2006-01-10', 'ชาย', '0656709042', '$2a$12$3K5OeAELCYn8TWd17M4SFuiAzfk2B87Gh9dGlBVpyGbTxCJ0Q7X8a'),
(67200375, '67200375@kmitl.ac.th', 1, 'นาย', 'ปฏิภาณ ประพฤติดี', 'ไบร์ท', '2006-04-16', 'ชาย', '0941240631', '$2a$12$63wnjONsAZ48h5NhoPwa3.MGP72pX9Q.rhpawHurpQt86rtxMNsfO'),
(67200380, '67200380@kmitl.ac.th', 1, 'นาย', 'ปรินทร คงทอง', 'แบงค์', '2006-02-05', 'ชาย', '0631102883', '$2a$12$abhzvCzgb3SJo83A9ZV2ZeSiiTUFGyluFtPetRjl9kFqOewGetq/6'),
(67200381, '67200381@kmitl.ac.th', 1, 'นาย', 'ปารเมศ สิงคะ', '', '0000-00-00', 'ชาย', '', '$2a$12$RSunPlRPkEbjRwVcG9HXw.eY/wMEjCvIkXeoHeozTwo.fjCG0rClG'),
(67200400, 'bompinyoo@gmail.com', 1, 'นาย', 'ภิญญู ณัฐญาติมา', 'บอมบ์', '2005-10-06', 'ชาย', '0957795165', '$2a$12$JwBcK9inkH6Bq9qUtBJKkeQPTW8rIiO.PLJXZ2iPvsbLCC2u.a1Fu'),
(67200401, '67200401@kmitl.ac.th', 1, 'นาย', 'ภุมเรศ หมื่นระย้า', 'ฟา', '2005-10-28', 'ชาย', '0619161928', '$2a$12$RrOiWb656D/6.aKCz54hDOQ3OwpiEcrwE5lDY1xFKVLdl9GHj/gkC'),
(67200412, '67200412@kmitl.ac.th', 1, 'นาย', 'รุจิณัฐ อาศิรเมธี', 'ฟ้า', '2006-06-27', 'ชาย', '0800479886', '$2a$12$E6AsIRqOInfbhwoK7khx9O4onrxLdgoEpJdaBFHtgKhCMPFdWCsjC'),
(67200419, '67200419@kmitl.ac.th', 1, 'นางสาว', 'วิมลสิริ บุญยก', 'พิงค์', '2006-01-04', 'หญิง', '0971264731', '$2a$12$BPwZKbyYldRvr3xn37up7eYSKCh0vLqRWsATvZPSs5hDA0fdvMR8q'),
(67200439, '67200439@kmitl.ac.th', 1, 'นาย', 'สุทธิธนินท์ อัครมณีนันท์', 'โชกุน', '2006-07-07', 'ชาย', '0826420942', '$2a$12$.OKcCseCcTah57RWKTPSku1WuZkVKh5HR8m1Dob.32ViGvisgvKba'),
(67200452, '67200452@kmitl.ac.th', 1, 'นาย', 'อัษฎายุธ พันธ์รักษ์ณรงค์', 'ฟีฟ่า', '0000-00-00', 'ชาย', '', '$2a$12$NfOoVgSN0SL8ecTS2x5LWu0pPr.iAXMngTm5VvIz9rFvRRGp5b8Li'),
(67200460, '67200460@kmitl.ac.th', 1, 'นาย', 'สุรเดช กรณ์ศิริ', '', '0000-00-00', 'ชาย', '', '$2a$12$UGqyH4jNSK6wpvA7jt7XYuL3xY0AE3UEB9oexyD2NIDxoWAlnbhHq');

-- --------------------------------------------------------

--
-- Table structure for table `student_points`
--

CREATE TABLE `student_points` (
  `student_id` int NOT NULL,
  `total_points` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_points`
--

INSERT INTO `student_points` (`student_id`, `total_points`) VALUES
(64200002, 0),
(64200030, 0),
(64200035, 0),
(64200039, 0),
(64200042, 0),
(64200055, 0),
(64200058, 0),
(64200061, 0),
(64200063, 0),
(64200081, 0),
(64200087, 0),
(64200094, 0),
(64200106, 0),
(64200112, 0),
(64200123, 0),
(64200129, 0),
(64200130, 0),
(64200135, 0),
(64200137, 0),
(64200146, 0),
(64200152, 0),
(64200160, 0),
(64200185, 0),
(64200191, 0),
(64200192, 0),
(64200193, 0),
(64200203, 0),
(64200220, 0),
(64200222, 0),
(64200226, 0),
(64200230, 0),
(64200232, 0),
(64200247, 0),
(64200255, 0),
(64200258, 0),
(64200273, 0),
(64200284, 0),
(64200289, 0),
(64200290, 0),
(64200312, 0),
(64200343, 0),
(64200346, 0),
(64200358, 0),
(64200369, 0),
(64200374, 0),
(64200377, 0),
(65200006, 0),
(65200009, 0),
(65200010, 0),
(65200013, 0),
(65200015, 0),
(65200020, 0),
(65200027, 0),
(65200033, 0),
(65200035, 0),
(65200037, 0),
(65200039, 0),
(65200046, 0),
(65200048, 0),
(65200056, 0),
(65200066, 0),
(65200078, 0),
(65200079, 0),
(65200084, 0),
(65200089, 0),
(65200093, 0),
(65200095, 0),
(65200097, 0),
(65200099, 0),
(65200100, 0),
(65200103, 0),
(65200113, 0),
(65200119, 0),
(65200122, 0),
(65200123, 0),
(65200128, 0),
(65200129, 0),
(65200133, 0),
(65200134, 0),
(65200135, 0),
(65200144, 0),
(65200150, 0),
(65200154, 0),
(65200156, 0),
(65200162, 0),
(65200164, 0),
(65200169, 0),
(65200171, 0),
(65200177, 0),
(65200178, 0),
(65200184, 0),
(65200185, 0),
(65200197, 0),
(65200209, 0),
(65200211, 0),
(65200224, 0),
(65200237, 0),
(65200241, 0),
(65200254, 0),
(65200264, 0),
(65200271, 0),
(65200272, 0),
(65200273, 0),
(65200275, 0),
(65200276, 0),
(65200277, 0),
(65200279, 0),
(65200287, 0),
(65200294, 0),
(65200305, 0),
(65200317, 0),
(65200343, 0),
(65200353, 0),
(65200354, 0),
(65200356, 0),
(65200358, 0),
(65200359, 0),
(65200365, 0),
(65200366, 0),
(65200368, 0),
(65200369, 0),
(65200373, 0),
(65200380, 0),
(65200382, 0),
(65200383, 0),
(65200385, 0),
(65200389, 0),
(65200393, 0),
(66200004, 0),
(66200009, 0),
(66200011, 0),
(66200012, 0),
(66200028, 0),
(66200033, 0),
(66200051, 0),
(66200052, 0),
(66200059, 0),
(66200062, 0),
(66200063, 0),
(66200082, 0),
(66200098, 0),
(66200105, 0),
(66200108, 0),
(66200113, 0),
(66200117, 0),
(66200122, 0),
(66200137, 0),
(66200141, 0),
(66200157, 0),
(66200160, 0),
(66200166, 0),
(66200174, 0),
(66200179, 0),
(66200184, 0),
(66200190, 0),
(66200193, 0),
(66200238, 0),
(66200245, 0),
(66200248, 0),
(66200250, 0),
(66200257, 0),
(66200277, 0),
(66200285, 0),
(66200301, 0),
(66200316, 0),
(66200326, 0),
(66200328, 0),
(66200336, 0),
(66200338, 0),
(66200339, 0),
(66200340, 0),
(66200341, 0),
(66200345, 0),
(66200347, 0),
(66200354, 0),
(66200357, 0),
(66200361, 0),
(66200383, 0),
(66200389, 0),
(66200395, 0),
(66200396, 0),
(66200407, 0),
(66200408, 0),
(66200411, 0),
(66200415, 0),
(66200420, 0),
(66200423, 0),
(66200425, 0),
(67200010, 0),
(67200014, 0),
(67200023, 0),
(67200024, 0),
(67200030, 0),
(67200031, 0),
(67200032, 0),
(67200049, 0),
(67200050, 0),
(67200062, 0),
(67200063, 0),
(67200071, 0),
(67200079, 0),
(67200081, 0),
(67200088, 0),
(67200093, 0),
(67200099, 0),
(67200102, 0),
(67200103, 0),
(67200107, 0),
(67200119, 0),
(67200127, 0),
(67200134, 0),
(67200148, 0),
(67200155, 0),
(67200165, 0),
(67200172, 0),
(67200187, 0),
(67200219, 0),
(67200223, 0),
(67200235, 0),
(67200258, 0),
(67200272, 0),
(67200277, 0),
(67200305, 0),
(67200324, 0),
(67200344, 0),
(67200348, 0),
(67200349, 0),
(67200350, 0),
(67200351, 0),
(67200357, 0),
(67200367, 0),
(67200368, 0),
(67200369, 0),
(67200375, 0),
(67200380, 0),
(67200381, 0),
(67200400, 0),
(67200401, 0),
(67200412, 0),
(67200419, 0),
(67200439, 0),
(67200452, 0),
(67200460, 0);


-- --------------------------------------------------------
--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teachers_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(30) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teachers_id`, `email`, `title`, `full_name`, `password`) VALUES
(1, 'athasart.na@kmitl.ac.th', 'อาจารย์', 'อรรถศาสตร์ นาตเทวัญ', '$2a$12$vTgc9gHDGgAvbY3.Aq6sy.MEipoc57/Hn5eQ7M65PF5KW4UgoOrcG'),
(2, 'jaturong.ka@kmitl.ac.th', 'นาย', 'จตุรงค์ เกตุนิมิต', '$2a$12$m7Fifz2LT28JWOzJES8J2OIovrRH9gaFYQxy.y5IaETnjKfqpJ9xu'),
(3, 'pisakorn.si@kmitl.ac.th', 'อาจารย์', 'นภัทรพี สิทธิวัจน', '$2a$12$f4EQeoTWOUY6Y.rh3usQgu/MKpGly64Kg0MdH8Ay4Jhf6Absocz3q'),
(4, 'rattikorn.so@kmitl.ac.th', 'อาจารย์', 'รัตติกร สมบัติเเก้ว', '$2a$12$/2Hk36oxqK2wGw0HnQMgGu7FnjPIPQSykLuiLEfONiGDFiPbX7lSq'),
(5, 'silar.si@kmitl.ac.th', 'ว่าที่ ร.ต.', 'ศิลา ศิริมาสกุล', '$2a$12$FT9E33UicrXLWRUwl8FaDOwJsbwNGjWaorIm81c1TqYCTqqHt7.dq');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int NOT NULL,
  `year_name` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year_name`) VALUES
(1, 'CE04'),
(2, 'CE03'),
(3, 'CE02'),
(4, 'CE01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `activity_type_id` (`activity_type_id`);

--
-- Indexes for table `activity_types`
--
ALTER TABLE `activity_types`
  ADD PRIMARY KEY (`activity_type_id`);

--
-- Indexes for table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`participation_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `activity_id` (`activity_type_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `years` (`years`);

--
-- Indexes for table `student_points`
--
ALTER TABLE `student_points`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `activity_types`
--
ALTER TABLE `activity_types`
  MODIFY `activity_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `participation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67200461;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`activity_type_id`) REFERENCES `activity_types` (`activity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `participation`
--
ALTER TABLE `participation`
  ADD CONSTRAINT `participation_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `participation_ibfk_2` FOREIGN KEY (`activity_type_id`) REFERENCES `activities` (`activity_id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`years`) REFERENCES `years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_points`
--
ALTER TABLE `student_points`
  ADD CONSTRAINT `student_points_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
