/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : online_test

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-28 11:24:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_sub_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sub_category`;
CREATE TABLE `tbl_sub_category` (
  `id_sub` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `name_sub` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_sub_category
-- ----------------------------
INSERT INTO `tbl_sub_category` VALUES ('1', '1', 'Verbal – Analogi', '1');
INSERT INTO `tbl_sub_category` VALUES ('2', '1', 'Verbal – Numerikal', '1');
INSERT INTO `tbl_sub_category` VALUES ('3', '1', 'Verbal – Sinonim', '1');
INSERT INTO `tbl_sub_category` VALUES ('4', '1', 'Verbal – Personality', '1');
SET FOREIGN_KEY_CHECKS=1;
