/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : online_test

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-28 11:27:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_answers_question
-- ----------------------------
DROP TABLE IF EXISTS `tbl_answers_question`;
CREATE TABLE `tbl_answers_question` (
  `ansid` int(11) NOT NULL,
  `answers` longtext NOT NULL,
  `score` double NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_answers_question
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
