# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: online_test
# Generation Time: 2018-02-22 06:38:02 +0000
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




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
