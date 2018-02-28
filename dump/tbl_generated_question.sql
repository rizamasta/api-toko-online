/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : online_test

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-28 11:26:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_generated_question
-- ----------------------------
DROP TABLE IF EXISTS `tbl_generated_question`;
CREATE TABLE `tbl_generated_question` (
  `gid` varchar(8) NOT NULL,
  `question` longtext NOT NULL,
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

-- ----------------------------
-- Records of tbl_generated_question
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
