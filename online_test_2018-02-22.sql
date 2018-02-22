# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: online_test
# Generation Time: 2018-02-22 07:26:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tbl_answers_question
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_answers_question`;

CREATE TABLE `tbl_answers_question` (
  `ansid` int(11) NOT NULL,
  `answers` longtext NOT NULL,
  `score` double NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tbl_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_category`;

CREATE TABLE `tbl_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;

INSERT INTO `tbl_category` (`cid`, `category_name`, `status`, `is_deleted`)
VALUES
	(1,'Psycology',1,0),
	(2,'Management',1,0),
	(3,'Kewarganegaraan',1,0);

/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_generated_question
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_generated_question`;

CREATE TABLE `tbl_generated_question` (
  `gid` varchar(8) NOT NULL,
  `question` json NOT NULL,
  `paging` tinyint(1) NOT NULL DEFAULT '0',
  `page_length` int(11) NOT NULL,
  `total_question` int(11) NOT NULL,
  `timer` tinyint(1) NOT NULL,
  `countdown_h` int(11) DEFAULT NULL,
  `countdown_m` int(11) DEFAULT NULL,
  `countdown_s` int(11) DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tbl_question_bank_answer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_question_bank_answer`;

CREATE TABLE `tbl_question_bank_answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` varchar(8) NOT NULL,
  `answer` text NOT NULL,
  `weight` double NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tbl_question_bank_answer` WRITE;
/*!40000 ALTER TABLE `tbl_question_bank_answer` DISABLE KEYS */;

INSERT INTO `tbl_question_bank_answer` (`answer_id`, `qid`, `answer`, `weight`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`, `is_deleted`)
VALUES
	(1,'pkn01','Sumber dari segala sumber hukum',100,'2018-02-15 16:20:41',1,'2018-02-15 17:37:39',1,1,0),
	(2,'pkn01','Hukum tertinggi di Indonesia',0,'2018-02-15 16:20:41',1,'2018-02-15 17:37:39',1,1,0),
	(3,'pkn01','Hukum tertulis tertinggi di Indonesia',0,'2018-02-15 16:20:41',1,'2018-02-15 17:37:39',1,1,0),
	(4,'pkn01','Setingkat dengan UUD 1945',0,'2018-02-15 16:20:41',1,'2018-02-15 17:37:39',1,1,0),
	(5,'pkn01','Hukum tidak tertulis tertinggi di Indonesia',0,'2018-02-15 16:20:41',1,'2018-02-15 17:37:39',1,1,0),
	(6,'pkn02','Pandangan hidup',100,'2018-02-15 16:57:26',1,'2018-02-15 17:37:51',1,1,0),
	(7,'pkn02','Falsafah dan dasar negara',0,'2018-02-15 16:57:26',1,'2018-02-15 17:37:51',1,1,0),
	(8,'pkn03','Pidato Bung Karno',0,'2018-02-15 17:11:07',1,'2018-02-15 17:37:58',1,1,0),
	(9,'pkn03','Proklamasi 17 Agustus 1945',0,'2018-02-15 17:11:07',1,'2018-02-15 17:37:58',1,1,0),
	(10,'pkn04','Dasar negara',100,'2018-02-15 17:25:36',1,'2018-02-15 17:38:03',1,1,0),
	(11,'pkn04','Dasar kenegaraan',0,'2018-02-15 17:25:36',1,'2018-02-15 17:38:03',1,1,0),
	(12,'pkn04','Dasar beragama',0,'2018-02-15 17:25:36',1,'2018-02-15 17:38:03',1,1,0),
	(13,'pkn04','Dasar ketatanegaraan',0,'2018-02-15 17:25:36',1,'2018-02-15 17:38:03',1,1,0),
	(14,'pkn04','Dasar Perjuangan bangsa',0,'2018-02-15 17:25:36',1,'2018-02-15 17:38:03',1,1,0),
	(15,'pkn02','Sumber hukum',0,'2018-02-15 17:26:59',1,'2018-02-15 17:37:51',1,1,0),
	(16,'pkn02','Semua benar',0,'2018-02-15 17:26:59',1,'2018-02-15 17:37:51',1,1,0),
	(17,'pkn02','Semua salah',0,'2018-02-15 17:26:59',1,'2018-02-15 17:37:51',1,1,0),
	(18,'pkn03','Kitab Sutasoma',0,'2018-02-15 17:28:01',1,'2018-02-15 17:37:58',1,1,0),
	(19,'pkn03','Pembukaan UUD 1945',0,'2018-02-15 17:28:01',1,'2018-02-15 17:37:58',1,1,0),
	(20,'pkn03','Piagam Jakarta',0,'2018-02-15 17:28:01',1,'2018-02-15 17:37:58',1,1,0),
	(21,'pkn05','TAP MPR RI',0,'2018-02-15 17:29:23',1,'2018-02-15 17:38:08',1,1,0),
	(22,'pkn05','INPRES No.12 Tahun 1968',0,'2018-02-15 17:29:23',1,'2018-02-15 17:38:08',1,1,0),
	(23,'pkn05','UU No.5 Tahun 1985',0,'2018-02-15 17:29:23',1,'2018-02-15 17:38:08',1,1,0),
	(24,'pkn05','TAP MPR No.I/MPR/1983',100,'2018-02-15 17:29:23',1,'2018-02-15 17:38:08',1,1,0),
	(25,'pkn05','UUD 1945',0,'2018-02-15 17:29:23',1,'2018-02-15 17:38:08',1,1,0),
	(26,'pkn06','Sila kedua',100,'2018-02-15 17:31:48',1,'2018-02-15 17:38:13',1,1,0),
	(27,'pkn06','Sila ketiga',0,'2018-02-15 17:31:48',1,'2018-02-15 17:38:13',1,1,0),
	(28,'pkn06','Sila keempat',0,'2018-02-15 17:31:48',1,'2018-02-15 17:38:13',1,1,0),
	(29,'pkn06','Sila kelima',0,'2018-02-15 17:31:48',1,'2018-02-15 17:38:13',1,1,0),
	(30,'pkn06','Sila pertama',0,'2018-02-15 17:31:48',1,'2018-02-15 17:38:13',1,1,0),
	(31,'pkn07','1 Kali',0,'2018-02-15 17:32:52',1,'2018-02-15 17:38:20',1,1,0),
	(32,'pkn07','2 Kali',0,'2018-02-15 17:32:52',1,'2018-02-15 17:38:20',1,1,0),
	(33,'pkn07','3 Kali',0,'2018-02-15 17:32:52',1,'2018-02-15 17:38:20',1,1,0),
	(34,'pkn07','4 Kali',100,'2018-02-15 17:32:52',1,'2018-02-15 17:38:20',1,1,0),
	(35,'pkn07','5 Kali',0,'2018-02-15 17:32:52',1,'2018-02-15 17:38:20',1,1,0),
	(36,'pkn08','Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21.',100,'2018-02-15 17:36:52',1,'2018-02-15 17:38:25',1,1,0),
	(37,'pkn08','Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 22.',0,'2018-02-15 17:36:52',1,'2018-02-15 17:38:25',1,1,0),
	(38,'pkn08','Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 23.',0,'2018-02-15 17:36:52',1,'2018-02-15 17:38:25',1,1,0),
	(39,'pkn08','Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 24.',0,'2018-02-15 17:36:52',1,'2018-02-15 17:38:25',1,1,0),
	(40,'pkn08','Pasal 5, 7, 9, 13, 14, 15, 17, 21 dan 24.',0,'2018-02-15 17:36:52',1,'2018-02-15 17:38:25',1,1,0),
	(41,'pkn09','Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 35.',0,'2018-02-15 17:36:52',1,'2018-02-19 12:01:41',1,1,0),
	(42,'pkn09','Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.',100,'2018-02-15 17:36:52',1,'2018-02-19 12:02:00',1,1,0),
	(43,'pkn09','Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 37.',0,'2018-02-15 17:36:52',1,'2018-02-19 12:01:47',1,1,0),
	(44,'pkn09','Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 38.',0,'2018-02-15 17:36:52',1,'2018-02-19 12:01:56',1,1,0),
	(45,'pkn09','Pasal 18, 19, 20, 22, 25, 26, 27, 28, 35, dan 36.',0,'2018-02-15 17:36:52',1,'2018-02-19 12:01:24',1,1,0),
	(46,'pkn10','Pasal 1, 3, 6, 11, 17, 23, dan 24.',100,'2018-02-15 17:36:52',1,NULL,1,1,0),
	(47,'pkn10','Pasal 1, 3, 6, 11, 17, 23, dan 25.',0,'2018-02-15 17:36:52',1,NULL,1,1,0),
	(48,'pkn10','Pasal 1, 3, 6, 11, 17, 23, dan 26.',0,'2018-02-15 17:36:52',1,NULL,1,1,0),
	(49,'pkn10','Pasal 1, 3, 6, 11, 17, 23, dan 27.',0,'2018-02-15 17:36:52',1,NULL,1,1,0),
	(50,'pkn10','Pasal 1, 3, 6, 11, 17, 24, dan 25.',0,'2018-02-15 17:36:52',1,NULL,1,1,0),
	(51,'pkn11','19 Oktober 1999',100,'2018-02-15 17:36:52',1,NULL,1,1,0),
	(52,'pkn11','19 Oktober 2000',0,'2018-02-15 17:36:52',1,NULL,1,1,0),
	(53,'pkn11','19 Oktober 2001',0,'2018-02-15 17:36:52',1,NULL,1,1,0),
	(54,'pkn11','19 Oktober 1998',0,'2018-02-15 17:36:52',1,NULL,1,1,0),
	(55,'pkn11','19 Oktober 2003',0,'2018-02-15 17:36:52',1,NULL,1,1,0);

/*!40000 ALTER TABLE `tbl_question_bank_answer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_quiestion_bank
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_quiestion_bank`;

CREATE TABLE `tbl_quiestion_bank` (
  `qid` varchar(8) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `question` text,
  `correct_describe` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tbl_quiestion_bank` WRITE;
/*!40000 ALTER TABLE `tbl_quiestion_bank` DISABLE KEYS */;

INSERT INTO `tbl_quiestion_bank` (`qid`, `type`, `category`, `question`, `correct_describe`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`, `is_deleted`)
VALUES
	('pkn01',1,3,'Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai?','Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai sumber dari segala sumber hukum','2018-02-15 15:33:52',1,'2018-02-19 11:20:45',1,1,0),
	('pkn02',1,3,'Pancasila bagi bangsa Indonesia merupakan','Pancasila bagi bangsa Indonesia merupakan pandangan hidup.','2018-02-15 15:36:55',1,'2018-02-19 11:20:45',1,1,0),
	('pkn03',1,3,'Rumusan Pancasila yang resmi terdapat dalam','Rumusan Pancasila yang resmi terdapat dalam Pembukaan UUD 1945','2018-02-15 15:36:55',1,'2018-02-19 11:20:45',1,1,0),
	('pkn04',1,3,'Dalam kehidupan bernegara, Pancasila berperan sebagai','4. Dalam kehidupan bernegara, Pancasila berperan sebagai dasar negara','2018-02-15 15:39:58',1,'2018-02-19 11:20:45',1,1,0),
	('pkn05',1,3,'Tata cara mengucapkan Pancasila pada upacara-upacara resmi ditetapkan pada','Tata cara mengucapkan Pancasila pada upacara-upacara resmi ditetapkan pada TAP MPR No.I/MPR/1983','2018-02-15 15:39:58',1,'2018-02-19 11:20:45',1,1,0),
	('pkn06',1,3,'Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu','Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu pada sila kedua','2018-02-15 15:42:44',1,'2018-02-19 11:20:45',1,1,0),
	('pkn07',1,3,'Berapa kali UUD 1945 di-amandemen...','UUD 1945 telah di-amandemen sebanyak 4 kali','2018-02-15 15:42:44',1,'2018-02-19 11:20:45',1,1,0),
	('pkn08',1,3,'Pasal berapa saja UUD 1945 pertama kali di-amandemen…','Pasal yang pertama kali di amandemen adalah Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21','2018-02-15 15:45:42',1,'2018-02-19 11:20:45',1,1,0),
	('pkn09',1,3,'Pasal berapa saja UUD 1945 kedua kali diamandemen…','Untuk kedua kalinya UUD 1945 di amandemen adalah Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.','2018-02-15 15:45:42',1,'2018-02-19 11:20:45',1,1,0),
	('pkn10',1,3,'Pasal berapa saja UUD 1945 ketiga kali diamandemen…','UUD 1945 untuk ketiga kalinya di-amandemen yaitu Pasal 1, 3, 6, 11, 17, 23, dan 24.','2018-02-15 15:50:31',1,'2018-02-19 11:20:45',1,1,0),
	('pkn11',1,3,'Kapan amandemen UUD 1945 pertamakali dilakukan..','Untuk pertamakalinya UUD 1945 di amandemen pada 19 Oktober 1999','2018-02-15 15:50:31',1,'2018-02-19 11:20:45',1,1,0);

/*!40000 ALTER TABLE `tbl_quiestion_bank` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `social_id` int(11) DEFAULT NULL,
  `username` varchar(64) NOT NULL,
  `fullname` varchar(64) NOT NULL,
  `email` varchar(120) NOT NULL,
  `picture` text NOT NULL,
  `role` enum('user','author','admin') NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;

INSERT INTO `tbl_user` (`uid`, `social_id`, `username`, `fullname`, `email`, `picture`, `role`, `password`, `phone`, `birth_date`, `created_at`, `updated_at`, `status`, `is_deleted`)
VALUES
	(1,2147483647,'rizamasta','Riza Masta','rizamasta@gmail.com','https://lh4.googleusercontent.com/-SiJZnnIpAZA/AAAAAAAAAAI/AAAAAAAAAdo/Cm-8u4n0Be8/s96-c/photo.jpg','user','78852df01bcb2af3b3630e464ad50500cbb4cf50d6a352d8bd2bad3d94919093','',NULL,'2018-02-14 16:30:08','2018-02-15 17:15:14',1,0),
	(2,2147483647,'ositumorang','orison saritua','ositumorang@gmail.com','https://lh4.googleusercontent.com/-2g-AhgucKbk/AAAAAAAAAAI/AAAAAAAAAAA/ACSILjU_C6DafMoF_9NTXhAUgqwPwDkBVA/s96-c/photo.jpg','user','862043271bd207ab014d51c8314b8e1e150375e7ff9f4b5488a3547e14dca498','',NULL,'2018-02-20 11:31:49',NULL,1,0),
	(3,2147483647,'democracycentennial','Democracy Centennial','democracycentennial@gmail.com','https://lh6.googleusercontent.com/-aw6K9P-w0HM/AAAAAAAAAAI/AAAAAAAAAAA/ACSILjXMUiC2fWueoxyH5CE56nl3gO11jA/s96-c/photo.jpg','user','cf3792b741567b47348435f3464c31137a4f6fd0e5f1e03432ae8ce18ba11ab0','',NULL,'2018-02-20 12:39:32',NULL,1,0);

/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
