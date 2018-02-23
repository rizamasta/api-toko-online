/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : online_test

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-22 19:46:31
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

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES ('1', 'Psycology', '1', '0');
INSERT INTO `tbl_category` VALUES ('2', 'Management', '1', '0');
INSERT INTO `tbl_category` VALUES ('3', 'Kewarganegaraan', '1', '0');

-- ----------------------------
-- Table structure for tbl_generated_question
-- ----------------------------
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

-- ----------------------------
-- Records of tbl_generated_question
-- ----------------------------
INSERT INTO `tbl_generated_question` VALUES ('DmeUpslf', '[{\"qid\": \"pkn08\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 21 dan 24.\", \"weight\": \"0\", \"answer_id\": \"40\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 23.\", \"weight\": \"0\", \"answer_id\": \"38\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 24.\", \"weight\": \"0\", \"answer_id\": \"39\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 22.\", \"weight\": \"0\", \"answer_id\": \"37\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21.\", \"weight\": \"100\", \"answer_id\": \"36\"}], \"category\": \"3\", \"question\": \"Pasal berapa saja UUD 1945 pertama kali di-amandemen…\", \"correct_describe\": \"Pasal yang pertama kali di amandemen adalah Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21\"}, {\"qid\": \"pkn06\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn06\", \"answer\": \"Sila ketiga\", \"weight\": \"0\", \"answer_id\": \"27\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila kelima\", \"weight\": \"0\", \"answer_id\": \"29\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila keempat\", \"weight\": \"0\", \"answer_id\": \"28\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila pertama\", \"weight\": \"0\", \"answer_id\": \"30\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila kedua\", \"weight\": \"100\", \"answer_id\": \"26\"}], \"category\": \"3\", \"question\": \"Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu\", \"correct_describe\": \"Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu pada sila kedua\"}, {\"qid\": \"pkn02\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn02\", \"answer\": \"Sumber hukum\", \"weight\": \"0\", \"answer_id\": \"15\"}, {\"qid\": \"pkn02\", \"answer\": \"Pandangan hidup\", \"weight\": \"100\", \"answer_id\": \"6\"}, {\"qid\": \"pkn02\", \"answer\": \"Falsafah dan dasar negara\", \"weight\": \"0\", \"answer_id\": \"7\"}, {\"qid\": \"pkn02\", \"answer\": \"Semua benar\", \"weight\": \"0\", \"answer_id\": \"16\"}, {\"qid\": \"pkn02\", \"answer\": \"Semua salah\", \"weight\": \"0\", \"answer_id\": \"17\"}], \"category\": \"3\", \"question\": \"Pancasila bagi bangsa Indonesia merupakan\", \"correct_describe\": \"Pancasila bagi bangsa Indonesia merupakan pandangan hidup.\"}, {\"qid\": \"pkn01\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn01\", \"answer\": \"Hukum tidak tertulis tertinggi di Indonesia\", \"weight\": \"0\", \"answer_id\": \"5\"}, {\"qid\": \"pkn01\", \"answer\": \"Hukum tertinggi di Indonesia\", \"weight\": \"0\", \"answer_id\": \"2\"}, {\"qid\": \"pkn01\", \"answer\": \"Hukum tertulis tertinggi di Indonesia\", \"weight\": \"0\", \"answer_id\": \"3\"}, {\"qid\": \"pkn01\", \"answer\": \"Setingkat dengan UUD 1945\", \"weight\": \"0\", \"answer_id\": \"4\"}, {\"qid\": \"pkn01\", \"answer\": \"Sumber dari segala sumber hukum\", \"weight\": \"100\", \"answer_id\": \"1\"}], \"category\": \"3\", \"question\": \"Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai?\", \"correct_describe\": \"Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai sumber dari segala sumber hukum\"}, {\"qid\": \"pkn07\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn07\", \"answer\": \"2 Kali\", \"weight\": \"0\", \"answer_id\": \"32\"}, {\"qid\": \"pkn07\", \"answer\": \"4 Kali\", \"weight\": \"100\", \"answer_id\": \"34\"}, {\"qid\": \"pkn07\", \"answer\": \"1 Kali\", \"weight\": \"0\", \"answer_id\": \"31\"}, {\"qid\": \"pkn07\", \"answer\": \"5 Kali\", \"weight\": \"0\", \"answer_id\": \"35\"}, {\"qid\": \"pkn07\", \"answer\": \"3 Kali\", \"weight\": \"0\", \"answer_id\": \"33\"}], \"category\": \"3\", \"question\": \"Berapa kali UUD 1945 di-amandemen...\", \"correct_describe\": \"UUD 1945 telah di-amandemen sebanyak 4 kali\"}, {\"qid\": \"pkn03\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn03\", \"answer\": \"Proklamasi 17 Agustus 1945\", \"weight\": \"0\", \"answer_id\": \"9\"}, {\"qid\": \"pkn03\", \"answer\": \"Piagam Jakarta\", \"weight\": \"0\", \"answer_id\": \"20\"}, {\"qid\": \"pkn03\", \"answer\": \"Pidato Bung Karno\", \"weight\": \"0\", \"answer_id\": \"8\"}, {\"qid\": \"pkn03\", \"answer\": \"Pembukaan UUD 1945\", \"weight\": \"0\", \"answer_id\": \"19\"}, {\"qid\": \"pkn03\", \"answer\": \"Kitab Sutasoma\", \"weight\": \"0\", \"answer_id\": \"18\"}], \"category\": \"3\", \"question\": \"Rumusan Pancasila yang resmi terdapat dalam\", \"correct_describe\": \"Rumusan Pancasila yang resmi terdapat dalam Pembukaan UUD 1945\"}, {\"qid\": \"pkn11\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn11\", \"answer\": \"19 Oktober 2000\", \"weight\": \"0\", \"answer_id\": \"52\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 2003\", \"weight\": \"0\", \"answer_id\": \"55\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 2001\", \"weight\": \"0\", \"answer_id\": \"53\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 1999\", \"weight\": \"100\", \"answer_id\": \"51\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 1998\", \"weight\": \"0\", \"answer_id\": \"54\"}], \"category\": \"3\", \"question\": \"Kapan amandemen UUD 1945 pertamakali dilakukan..\", \"correct_describe\": \"Untuk pertamakalinya UUD 1945 di amandemen pada 19 Oktober 1999\"}, {\"qid\": \"pkn09\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 35.\", \"weight\": \"0\", \"answer_id\": \"41\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 37.\", \"weight\": \"0\", \"answer_id\": \"43\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 35, dan 36.\", \"weight\": \"0\", \"answer_id\": \"45\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.\", \"weight\": \"100\", \"answer_id\": \"42\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 38.\", \"weight\": \"0\", \"answer_id\": \"44\"}], \"category\": \"3\", \"question\": \"Pasal berapa saja UUD 1945 kedua kali diamandemen…\", \"correct_describe\": \"Untuk kedua kalinya UUD 1945 di amandemen adalah Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.\"}, {\"qid\": \"pkn10\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 24.\", \"weight\": \"100\", \"answer_id\": \"46\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 24, dan 25.\", \"weight\": \"0\", \"answer_id\": \"50\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 27.\", \"weight\": \"0\", \"answer_id\": \"49\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 25.\", \"weight\": \"0\", \"answer_id\": \"47\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 26.\", \"weight\": \"0\", \"answer_id\": \"48\"}], \"category\": \"3\", \"question\": \"Pasal berapa saja UUD 1945 ketiga kali diamandemen…\", \"correct_describe\": \"UUD 1945 untuk ketiga kalinya di-amandemen yaitu Pasal 1, 3, 6, 11, 17, 23, dan 24.\"}, {\"qid\": \"pkn04\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn04\", \"answer\": \"Dasar Perjuangan bangsa\", \"weight\": \"0\", \"answer_id\": \"14\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar beragama\", \"weight\": \"0\", \"answer_id\": \"12\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar ketatanegaraan\", \"weight\": \"0\", \"answer_id\": \"13\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar negara\", \"weight\": \"100\", \"answer_id\": \"10\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar kenegaraan\", \"weight\": \"0\", \"answer_id\": \"11\"}], \"category\": \"3\", \"question\": \"Dalam kehidupan bernegara, Pancasila berperan sebagai\", \"correct_describe\": \"4. Dalam kehidupan bernegara, Pancasila berperan sebagai dasar negara\"}]', '1', '5', '10', '1', '0', '30', '0', '2018-02-22 14:27:46', '1', null, '0', '1', '0');
INSERT INTO `tbl_generated_question` VALUES ('piFM7OL5', '[{\"qid\": \"pkn10\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 24, dan 25.\", \"weight\": \"0\", \"answer_id\": \"50\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 24.\", \"weight\": \"100\", \"answer_id\": \"46\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 25.\", \"weight\": \"0\", \"answer_id\": \"47\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 27.\", \"weight\": \"0\", \"answer_id\": \"49\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 26.\", \"weight\": \"0\", \"answer_id\": \"48\"}], \"category\": \"3\", \"question\": \"Pasal berapa saja UUD 1945 ketiga kali diamandemen…\", \"correct_describe\": \"UUD 1945 untuk ketiga kalinya di-amandemen yaitu Pasal 1, 3, 6, 11, 17, 23, dan 24.\"}, {\"qid\": \"pkn03\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn03\", \"answer\": \"Pembukaan UUD 1945\", \"weight\": \"0\", \"answer_id\": \"19\"}, {\"qid\": \"pkn03\", \"answer\": \"Kitab Sutasoma\", \"weight\": \"0\", \"answer_id\": \"18\"}, {\"qid\": \"pkn03\", \"answer\": \"Proklamasi 17 Agustus 1945\", \"weight\": \"0\", \"answer_id\": \"9\"}, {\"qid\": \"pkn03\", \"answer\": \"Pidato Bung Karno\", \"weight\": \"0\", \"answer_id\": \"8\"}, {\"qid\": \"pkn03\", \"answer\": \"Piagam Jakarta\", \"weight\": \"0\", \"answer_id\": \"20\"}], \"category\": \"3\", \"question\": \"Rumusan Pancasila yang resmi terdapat dalam\", \"correct_describe\": \"Rumusan Pancasila yang resmi terdapat dalam Pembukaan UUD 1945\"}, {\"qid\": \"pkn02\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn02\", \"answer\": \"Semua benar\", \"weight\": \"0\", \"answer_id\": \"16\"}, {\"qid\": \"pkn02\", \"answer\": \"Semua salah\", \"weight\": \"0\", \"answer_id\": \"17\"}, {\"qid\": \"pkn02\", \"answer\": \"Pandangan hidup\", \"weight\": \"100\", \"answer_id\": \"6\"}, {\"qid\": \"pkn02\", \"answer\": \"Sumber hukum\", \"weight\": \"0\", \"answer_id\": \"15\"}, {\"qid\": \"pkn02\", \"answer\": \"Falsafah dan dasar negara\", \"weight\": \"0\", \"answer_id\": \"7\"}], \"category\": \"3\", \"question\": \"Pancasila bagi bangsa Indonesia merupakan\", \"correct_describe\": \"Pancasila bagi bangsa Indonesia merupakan pandangan hidup.\"}, {\"qid\": \"pkn04\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn04\", \"answer\": \"Dasar ketatanegaraan\", \"weight\": \"0\", \"answer_id\": \"13\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar beragama\", \"weight\": \"0\", \"answer_id\": \"12\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar kenegaraan\", \"weight\": \"0\", \"answer_id\": \"11\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar negara\", \"weight\": \"100\", \"answer_id\": \"10\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar Perjuangan bangsa\", \"weight\": \"0\", \"answer_id\": \"14\"}], \"category\": \"3\", \"question\": \"Dalam kehidupan bernegara, Pancasila berperan sebagai\", \"correct_describe\": \"4. Dalam kehidupan bernegara, Pancasila berperan sebagai dasar negara\"}, {\"qid\": \"pkn09\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.\", \"weight\": \"100\", \"answer_id\": \"42\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 35.\", \"weight\": \"0\", \"answer_id\": \"41\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 37.\", \"weight\": \"0\", \"answer_id\": \"43\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 35, dan 36.\", \"weight\": \"0\", \"answer_id\": \"45\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 38.\", \"weight\": \"0\", \"answer_id\": \"44\"}], \"category\": \"3\", \"question\": \"Pasal berapa saja UUD 1945 kedua kali diamandemen…\", \"correct_describe\": \"Untuk kedua kalinya UUD 1945 di amandemen adalah Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.\"}, {\"qid\": \"pkn08\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21.\", \"weight\": \"100\", \"answer_id\": \"36\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 22.\", \"weight\": \"0\", \"answer_id\": \"37\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 23.\", \"weight\": \"0\", \"answer_id\": \"38\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 24.\", \"weight\": \"0\", \"answer_id\": \"39\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 21 dan 24.\", \"weight\": \"0\", \"answer_id\": \"40\"}], \"category\": \"3\", \"question\": \"Pasal berapa saja UUD 1945 pertama kali di-amandemen…\", \"correct_describe\": \"Pasal yang pertama kali di amandemen adalah Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21\"}, {\"qid\": \"pkn05\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn05\", \"answer\": \"UUD 1945\", \"weight\": \"0\", \"answer_id\": \"25\"}, {\"qid\": \"pkn05\", \"answer\": \"INPRES No.12 Tahun 1968\", \"weight\": \"0\", \"answer_id\": \"22\"}, {\"qid\": \"pkn05\", \"answer\": \"TAP MPR RI\", \"weight\": \"0\", \"answer_id\": \"21\"}, {\"qid\": \"pkn05\", \"answer\": \"TAP MPR No.I/MPR/1983\", \"weight\": \"100\", \"answer_id\": \"24\"}, {\"qid\": \"pkn05\", \"answer\": \"UU No.5 Tahun 1985\", \"weight\": \"0\", \"answer_id\": \"23\"}], \"category\": \"3\", \"question\": \"Tata cara mengucapkan Pancasila pada upacara-upacara resmi ditetapkan pada\", \"correct_describe\": \"Tata cara mengucapkan Pancasila pada upacara-upacara resmi ditetapkan pada TAP MPR No.I/MPR/1983\"}, {\"qid\": \"pkn11\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn11\", \"answer\": \"19 Oktober 2003\", \"weight\": \"0\", \"answer_id\": \"55\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 2001\", \"weight\": \"0\", \"answer_id\": \"53\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 2000\", \"weight\": \"0\", \"answer_id\": \"52\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 1999\", \"weight\": \"100\", \"answer_id\": \"51\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 1998\", \"weight\": \"0\", \"answer_id\": \"54\"}], \"category\": \"3\", \"question\": \"Kapan amandemen UUD 1945 pertamakali dilakukan..\", \"correct_describe\": \"Untuk pertamakalinya UUD 1945 di amandemen pada 19 Oktober 1999\"}, {\"qid\": \"pkn01\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn01\", \"answer\": \"Sumber dari segala sumber hukum\", \"weight\": \"100\", \"answer_id\": \"1\"}, {\"qid\": \"pkn01\", \"answer\": \"Hukum tertinggi di Indonesia\", \"weight\": \"0\", \"answer_id\": \"2\"}, {\"qid\": \"pkn01\", \"answer\": \"Hukum tidak tertulis tertinggi di Indonesia\", \"weight\": \"0\", \"answer_id\": \"5\"}, {\"qid\": \"pkn01\", \"answer\": \"Setingkat dengan UUD 1945\", \"weight\": \"0\", \"answer_id\": \"4\"}, {\"qid\": \"pkn01\", \"answer\": \"Hukum tertulis tertinggi di Indonesia\", \"weight\": \"0\", \"answer_id\": \"3\"}], \"category\": \"3\", \"question\": \"Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai?\", \"correct_describe\": \"Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai sumber dari segala sumber hukum\"}, {\"qid\": \"pkn06\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn06\", \"answer\": \"Sila ketiga\", \"weight\": \"0\", \"answer_id\": \"27\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila kedua\", \"weight\": \"100\", \"answer_id\": \"26\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila kelima\", \"weight\": \"0\", \"answer_id\": \"29\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila pertama\", \"weight\": \"0\", \"answer_id\": \"30\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila keempat\", \"weight\": \"0\", \"answer_id\": \"28\"}], \"category\": \"3\", \"question\": \"Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu\", \"correct_describe\": \"Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu pada sila kedua\"}]', '1', '5', '10', '1', '0', '30', '0', '2018-02-22 14:38:04', '4', null, '0', '1', '0');
INSERT INTO `tbl_generated_question` VALUES ('AtHMf1dE', '[{\"qid\": \"pkn05\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn05\", \"answer\": \"TAP MPR No.I/MPR/1983\", \"weight\": \"100\", \"answer_id\": \"24\"}, {\"qid\": \"pkn05\", \"answer\": \"INPRES No.12 Tahun 1968\", \"weight\": \"0\", \"answer_id\": \"22\"}, {\"qid\": \"pkn05\", \"answer\": \"TAP MPR RI\", \"weight\": \"0\", \"answer_id\": \"21\"}, {\"qid\": \"pkn05\", \"answer\": \"UU No.5 Tahun 1985\", \"weight\": \"0\", \"answer_id\": \"23\"}, {\"qid\": \"pkn05\", \"answer\": \"UUD 1945\", \"weight\": \"0\", \"answer_id\": \"25\"}], \"category\": \"3\", \"question\": \"Tata cara mengucapkan Pancasila pada upacara-upacara resmi ditetapkan pada\", \"correct_describe\": \"Tata cara mengucapkan Pancasila pada upacara-upacara resmi ditetapkan pada TAP MPR No.I/MPR/1983\"}, {\"qid\": \"pkn11\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn11\", \"answer\": \"19 Oktober 2000\", \"weight\": \"0\", \"answer_id\": \"52\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 1999\", \"weight\": \"100\", \"answer_id\": \"51\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 2003\", \"weight\": \"0\", \"answer_id\": \"55\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 2001\", \"weight\": \"0\", \"answer_id\": \"53\"}, {\"qid\": \"pkn11\", \"answer\": \"19 Oktober 1998\", \"weight\": \"0\", \"answer_id\": \"54\"}], \"category\": \"3\", \"question\": \"Kapan amandemen UUD 1945 pertamakali dilakukan..\", \"correct_describe\": \"Untuk pertamakalinya UUD 1945 di amandemen pada 19 Oktober 1999\"}, {\"qid\": \"pkn07\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn07\", \"answer\": \"3 Kali\", \"weight\": \"0\", \"answer_id\": \"33\"}, {\"qid\": \"pkn07\", \"answer\": \"2 Kali\", \"weight\": \"0\", \"answer_id\": \"32\"}, {\"qid\": \"pkn07\", \"answer\": \"1 Kali\", \"weight\": \"0\", \"answer_id\": \"31\"}, {\"qid\": \"pkn07\", \"answer\": \"5 Kali\", \"weight\": \"0\", \"answer_id\": \"35\"}, {\"qid\": \"pkn07\", \"answer\": \"4 Kali\", \"weight\": \"100\", \"answer_id\": \"34\"}], \"category\": \"3\", \"question\": \"Berapa kali UUD 1945 di-amandemen...\", \"correct_describe\": \"UUD 1945 telah di-amandemen sebanyak 4 kali\"}, {\"qid\": \"pkn04\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn04\", \"answer\": \"Dasar ketatanegaraan\", \"weight\": \"0\", \"answer_id\": \"13\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar kenegaraan\", \"weight\": \"0\", \"answer_id\": \"11\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar Perjuangan bangsa\", \"weight\": \"0\", \"answer_id\": \"14\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar beragama\", \"weight\": \"0\", \"answer_id\": \"12\"}, {\"qid\": \"pkn04\", \"answer\": \"Dasar negara\", \"weight\": \"100\", \"answer_id\": \"10\"}], \"category\": \"3\", \"question\": \"Dalam kehidupan bernegara, Pancasila berperan sebagai\", \"correct_describe\": \"4. Dalam kehidupan bernegara, Pancasila berperan sebagai dasar negara\"}, {\"qid\": \"pkn10\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 25.\", \"weight\": \"0\", \"answer_id\": \"47\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 24, dan 25.\", \"weight\": \"0\", \"answer_id\": \"50\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 26.\", \"weight\": \"0\", \"answer_id\": \"48\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 24.\", \"weight\": \"100\", \"answer_id\": \"46\"}, {\"qid\": \"pkn10\", \"answer\": \"Pasal 1, 3, 6, 11, 17, 23, dan 27.\", \"weight\": \"0\", \"answer_id\": \"49\"}], \"category\": \"3\", \"question\": \"Pasal berapa saja UUD 1945 ketiga kali diamandemen…\", \"correct_describe\": \"UUD 1945 untuk ketiga kalinya di-amandemen yaitu Pasal 1, 3, 6, 11, 17, 23, dan 24.\"}, {\"qid\": \"pkn03\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn03\", \"answer\": \"Pidato Bung Karno\", \"weight\": \"0\", \"answer_id\": \"8\"}, {\"qid\": \"pkn03\", \"answer\": \"Proklamasi 17 Agustus 1945\", \"weight\": \"0\", \"answer_id\": \"9\"}, {\"qid\": \"pkn03\", \"answer\": \"Pembukaan UUD 1945\", \"weight\": \"0\", \"answer_id\": \"19\"}, {\"qid\": \"pkn03\", \"answer\": \"Kitab Sutasoma\", \"weight\": \"0\", \"answer_id\": \"18\"}, {\"qid\": \"pkn03\", \"answer\": \"Piagam Jakarta\", \"weight\": \"0\", \"answer_id\": \"20\"}], \"category\": \"3\", \"question\": \"Rumusan Pancasila yang resmi terdapat dalam\", \"correct_describe\": \"Rumusan Pancasila yang resmi terdapat dalam Pembukaan UUD 1945\"}, {\"qid\": \"pkn06\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn06\", \"answer\": \"Sila keempat\", \"weight\": \"0\", \"answer_id\": \"28\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila kelima\", \"weight\": \"0\", \"answer_id\": \"29\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila pertama\", \"weight\": \"0\", \"answer_id\": \"30\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila ketiga\", \"weight\": \"0\", \"answer_id\": \"27\"}, {\"qid\": \"pkn06\", \"answer\": \"Sila kedua\", \"weight\": \"100\", \"answer_id\": \"26\"}], \"category\": \"3\", \"question\": \"Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu\", \"correct_describe\": \"Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu pada sila kedua\"}, {\"qid\": \"pkn01\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn01\", \"answer\": \"Hukum tidak tertulis tertinggi di Indonesia\", \"weight\": \"0\", \"answer_id\": \"5\"}, {\"qid\": \"pkn01\", \"answer\": \"Hukum tertulis tertinggi di Indonesia\", \"weight\": \"0\", \"answer_id\": \"3\"}, {\"qid\": \"pkn01\", \"answer\": \"Setingkat dengan UUD 1945\", \"weight\": \"0\", \"answer_id\": \"4\"}, {\"qid\": \"pkn01\", \"answer\": \"Hukum tertinggi di Indonesia\", \"weight\": \"0\", \"answer_id\": \"2\"}, {\"qid\": \"pkn01\", \"answer\": \"Sumber dari segala sumber hukum\", \"weight\": \"100\", \"answer_id\": \"1\"}], \"category\": \"3\", \"question\": \"Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai?\", \"correct_describe\": \"Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai sumber dari segala sumber hukum\"}, {\"qid\": \"pkn09\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 35, dan 36.\", \"weight\": \"0\", \"answer_id\": \"45\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 35.\", \"weight\": \"0\", \"answer_id\": \"41\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 38.\", \"weight\": \"0\", \"answer_id\": \"44\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.\", \"weight\": \"100\", \"answer_id\": \"42\"}, {\"qid\": \"pkn09\", \"answer\": \"Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 37.\", \"weight\": \"0\", \"answer_id\": \"43\"}], \"category\": \"3\", \"question\": \"Pasal berapa saja UUD 1945 kedua kali diamandemen…\", \"correct_describe\": \"Untuk kedua kalinya UUD 1945 di amandemen adalah Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.\"}, {\"qid\": \"pkn08\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21.\", \"weight\": \"100\", \"answer_id\": \"36\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 22.\", \"weight\": \"0\", \"answer_id\": \"37\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 21 dan 24.\", \"weight\": \"0\", \"answer_id\": \"40\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 24.\", \"weight\": \"0\", \"answer_id\": \"39\"}, {\"qid\": \"pkn08\", \"answer\": \"Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 23.\", \"weight\": \"0\", \"answer_id\": \"38\"}], \"category\": \"3\", \"question\": \"Pasal berapa saja UUD 1945 pertama kali di-amandemen…\", \"correct_describe\": \"Pasal yang pertama kali di amandemen adalah Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21\"}]', '1', '5', '10', '1', '0', '30', '0', '2018-02-22 19:10:54', '1', null, '0', '1', '0');
INSERT INTO `tbl_generated_question` VALUES ('S1Yv9aIt', '[{\"qid\": \"pkn33\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn33\", \"answer\": \"Terperosok\", \"weight\": \"0\", \"answer_id\": \"459\"}, {\"qid\": \"pkn33\", \"answer\": \"Tenggelam\", \"weight\": \"0\", \"answer_id\": \"457\"}, {\"qid\": \"pkn33\", \"answer\": \"Sial\", \"weight\": \"0\", \"answer_id\": \"460\"}, {\"qid\": \"pkn33\", \"answer\": \"Terkatung\", \"weight\": \"100\", \"answer_id\": \"458\"}, {\"qid\": \"pkn33\", \"answer\": \"Pasti\", \"weight\": \"0\", \"answer_id\": \"456\"}], \"category\": \"1\", \"question\": \"Terbenam\", \"correct_describe\": \"Pembahasan, terbenam artinya tenggelam, terkubur jadi, lawankata dari terbenam adalah terkatung atau terapung\"}, {\"qid\": \"pkn64\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn64\", \"answer\": \"Tingkatan\", \"weight\": \"0\", \"answer_id\": \"613\"}, {\"qid\": \"pkn64\", \"answer\": \"Proses\", \"weight\": \"0\", \"answer_id\": \"614\"}, {\"qid\": \"pkn64\", \"answer\": \"Siklus\", \"weight\": \"100\", \"answer_id\": \"615\"}, {\"qid\": \"pkn64\", \"answer\": \"Produk\", \"weight\": \"0\", \"answer_id\": \"612\"}, {\"qid\": \"pkn64\", \"answer\": \"Baur\", \"weight\": \"0\", \"answer_id\": \"611\"}], \"category\": \"1\", \"question\": \"Daur\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn57\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn57\", \"answer\": \"Buatan\", \"weight\": \"100\", \"answer_id\": \"580\"}, {\"qid\": \"pkn57\", \"answer\": \"Praduga\", \"weight\": \"0\", \"answer_id\": \"577\"}, {\"qid\": \"pkn57\", \"answer\": \"Hipotetis\", \"weight\": \"0\", \"answer_id\": \"576\"}, {\"qid\": \"pkn57\", \"answer\": \"Disertasi\", \"weight\": \"0\", \"answer_id\": \"579\"}, {\"qid\": \"pkn57\", \"answer\": \"Thesis\", \"weight\": \"0\", \"answer_id\": \"578\"}], \"category\": \"1\", \"question\": \"Protesis\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn61\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn61\", \"answer\": \"Penjagaan\", \"weight\": \"0\", \"answer_id\": \"599\"}, {\"qid\": \"pkn61\", \"answer\": \"Pengawasan\", \"weight\": \"0\", \"answer_id\": \"597\"}, {\"qid\": \"pkn61\", \"answer\": \"Bantuan\", \"weight\": \"0\", \"answer_id\": \"596\"}, {\"qid\": \"pkn61\", \"answer\": \"Perlindungan\", \"weight\": \"100\", \"answer_id\": \"598\"}, {\"qid\": \"pkn61\", \"answer\": \"Pengamanan\", \"weight\": \"0\", \"answer_id\": \"600\"}], \"category\": \"1\", \"question\": \"Proteksi\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn69\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn69\", \"answer\": \"Perbandingan\", \"weight\": \"0\", \"answer_id\": \"639\"}, {\"qid\": \"pkn69\", \"answer\": \"Anggapan\", \"weight\": \"100\", \"answer_id\": \"638\"}, {\"qid\": \"pkn69\", \"answer\": \"Rekaan\", \"weight\": \"0\", \"answer_id\": \"640\"}, {\"qid\": \"pkn69\", \"answer\": \"Kesimpulan\", \"weight\": \"0\", \"answer_id\": \"636\"}, {\"qid\": \"pkn69\", \"answer\": \"Ramalan\", \"weight\": \"0\", \"answer_id\": \"637\"}], \"category\": \"1\", \"question\": \"Asumsi\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn51\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn51\", \"answer\": \"Plasma\", \"weight\": \"0\", \"answer_id\": \"546\"}, {\"qid\": \"pkn51\", \"answer\": \"Inti\", \"weight\": \"0\", \"answer_id\": \"547\"}, {\"qid\": \"pkn51\", \"answer\": \"Selaput\", \"weight\": \"100\", \"answer_id\": \"548\"}, {\"qid\": \"pkn51\", \"answer\": \"Kelenjar\", \"weight\": \"0\", \"answer_id\": \"549\"}, {\"qid\": \"pkn51\", \"answer\": \"Saluran\", \"weight\": \"0\", \"answer_id\": \"550\"}], \"category\": \"1\", \"question\": \"Membran\", \"correct_describe\": \"Kata membran merupakan istilah dalam bidang Biologi yang semakna dengan jaringan, polikel, selaput. Kata plasma, inti, kelenjar, dan saluran juga termasuk istilah dalam bidang Biologi, tetapi tidak memiliki arti yang sama dengan membran.\"}, {\"qid\": \"pkn60\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn60\", \"answer\": \"Ruang Angkasa\", \"weight\": \"0\", \"answer_id\": \"592\"}, {\"qid\": \"pkn60\", \"answer\": \"Kebesaran Tuhan\", \"weight\": \"0\", \"answer_id\": \"591\"}, {\"qid\": \"pkn60\", \"answer\": \"Lawan Dunia Fana\", \"weight\": \"0\", \"answer_id\": \"593\"}, {\"qid\": \"pkn60\", \"answer\": \"Eksistensi Yang Diakui\", \"weight\": \"0\", \"answer_id\": \"595\"}, {\"qid\": \"pkn60\", \"answer\": \"Sarana Transportasi\", \"weight\": \"100\", \"answer_id\": \"594\"}], \"category\": \"1\", \"question\": \"Wahana\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn47\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn47\", \"answer\": \"Hidup\", \"weight\": \"0\", \"answer_id\": \"529\"}, {\"qid\": \"pkn47\", \"answer\": \"Cacat\", \"weight\": \"0\", \"answer_id\": \"528\"}, {\"qid\": \"pkn47\", \"answer\": \"Derajat\", \"weight\": \"100\", \"answer_id\": \"527\"}, {\"qid\": \"pkn47\", \"answer\": \"Anggaran\", \"weight\": \"0\", \"answer_id\": \"530\"}, {\"qid\": \"pkn47\", \"answer\": \"Jejak\", \"weight\": \"0\", \"answer_id\": \"526\"}], \"category\": \"1\", \"question\": \"Taraf\", \"correct_describe\": \"Pembahasan, Taraf artinya tingkatan , derajat\"}, {\"qid\": \"pkn19\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn19\", \"answer\": \"Biru\", \"weight\": \"0\", \"answer_id\": \"400\"}, {\"qid\": \"pkn19\", \"answer\": \"Harum\", \"weight\": \"0\", \"answer_id\": \"403\"}, {\"qid\": \"pkn19\", \"answer\": \"Melihat\", \"weight\": \"100\", \"answer_id\": \"402\"}, {\"qid\": \"pkn19\", \"answer\": \"Kuping\", \"weight\": \"0\", \"answer_id\": \"401\"}], \"category\": \"1\", \"question\": \"Hidung        Mencium        =        Mata        =    ?\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn67\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn67\", \"answer\": \"Tak Bisa Tidur\", \"weight\": \"100\", \"answer_id\": \"629\"}, {\"qid\": \"pkn67\", \"answer\": \"Sedih\", \"weight\": \"0\", \"answer_id\": \"628\"}, {\"qid\": \"pkn67\", \"answer\": \"Cemas\", \"weight\": \"0\", \"answer_id\": \"627\"}, {\"qid\": \"pkn67\", \"answer\": \"Tidur\", \"weight\": \"0\", \"answer_id\": \"626\"}, {\"qid\": \"pkn67\", \"answer\": \"Kenyataan\", \"weight\": \"0\", \"answer_id\": \"630\"}], \"category\": \"1\", \"question\": \"Imsomnia\", \"correct_describe\": \"-\"}]', '1', '3', '10', '1', '0', '30', '0', '2018-02-22 19:13:47', '4', '2018-02-22 19:13:49', '0', '2', '0');
INSERT INTO `tbl_generated_question` VALUES ('KrWaBXMh', '[{\"qid\": \"pkn59\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn59\", \"answer\": \"Alat Hitung\", \"weight\": \"0\", \"answer_id\": \"587\"}, {\"qid\": \"pkn59\", \"answer\": \"Terali\", \"weight\": \"100\", \"answer_id\": \"589\"}, {\"qid\": \"pkn59\", \"answer\": \"Alat Penangkap Ikan\", \"weight\": \"0\", \"answer_id\": \"586\"}, {\"qid\": \"pkn59\", \"answer\": \"Tabel\", \"weight\": \"0\", \"answer_id\": \"588\"}, {\"qid\": \"pkn59\", \"answer\": \"Pola Kerja\", \"weight\": \"0\", \"answer_id\": \"590\"}], \"category\": \"1\", \"question\": \"Kisi-Kisi\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn37\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn37\", \"answer\": \"25 dan 34\", \"weight\": \"0\", \"answer_id\": \"476\"}, {\"qid\": \"pkn37\", \"answer\": \"24 dan 32\", \"weight\": \"0\", \"answer_id\": \"480\"}, {\"qid\": \"pkn37\", \"answer\": \"27 dan 35\", \"weight\": \"100\", \"answer_id\": \"478\"}, {\"qid\": \"pkn37\", \"answer\": \"23 dan 33\", \"weight\": \"0\", \"answer_id\": \"477\"}, {\"qid\": \"pkn37\", \"answer\": \"25 dan 35\", \"weight\": \"0\", \"answer_id\": \"479\"}], \"category\": \"1\", \"question\": \"18 23 19 25 22 29 ... …\", \"correct_describe\": \"Terdapat dua pola yang berlaku: +1,+3,+5 dan +2, +4, +6\"}, {\"qid\": \"pkn16\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn16\", \"answer\": \"Ramai\", \"weight\": \"0\", \"answer_id\": \"388\"}, {\"qid\": \"pkn16\", \"answer\": \"Putri\", \"weight\": \"0\", \"answer_id\": \"390\"}, {\"qid\": \"pkn16\", \"answer\": \"Suka Cita\", \"weight\": \"100\", \"answer_id\": \"389\"}, {\"qid\": \"pkn16\", \"answer\": \"Berkelakar\", \"weight\": \"0\", \"answer_id\": \"391\"}], \"category\": \"1\", \"question\": \"Menangis    Sedih        =        Tertawa        =    ?\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn72\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn72\", \"answer\": \"Pengatur Skenario\", \"weight\": \"0\", \"answer_id\": \"653\"}, {\"qid\": \"pkn72\", \"answer\": \"Manager Tontonan\", \"weight\": \"0\", \"answer_id\": \"654\"}, {\"qid\": \"pkn72\", \"answer\": \"Penulis Naskah\", \"weight\": \"0\", \"answer_id\": \"652\"}, {\"qid\": \"pkn72\", \"answer\": \"Pengarah Adegan\", \"weight\": \"100\", \"answer_id\": \"655\"}, {\"qid\": \"pkn72\", \"answer\": \"Pemimpin Acara\", \"weight\": \"0\", \"answer_id\": \"651\"}], \"category\": \"1\", \"question\": \"Sutradara\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn70\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn70\", \"answer\": \"Membuat Kacau\", \"weight\": \"0\", \"answer_id\": \"644\"}, {\"qid\": \"pkn70\", \"answer\": \"Memotong Kecil-Kecil\", \"weight\": \"0\", \"answer_id\": \"645\"}, {\"qid\": \"pkn70\", \"answer\": \"Mengakali\", \"weight\": \"100\", \"answer_id\": \"642\"}, {\"qid\": \"pkn70\", \"answer\": \"Mengaduk\", \"weight\": \"0\", \"answer_id\": \"641\"}, {\"qid\": \"pkn70\", \"answer\": \"Berbuat Curang\", \"weight\": \"0\", \"answer_id\": \"643\"}], \"category\": \"1\", \"question\": \"Mengecoh\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn31\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn31\", \"answer\": \"Biru\", \"weight\": \"0\", \"answer_id\": \"449\"}, {\"qid\": \"pkn31\", \"answer\": \"Sisik\", \"weight\": \"0\", \"answer_id\": \"448\"}, {\"qid\": \"pkn31\", \"answer\": \"Air\", \"weight\": \"100\", \"answer_id\": \"451\"}, {\"qid\": \"pkn31\", \"answer\": \"Lezat\", \"weight\": \"0\", \"answer_id\": \"450\"}], \"category\": \"1\", \"question\": \"Burung    Udara        =        Ikan        =    ?\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn21\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn21\", \"answer\": \"Bulan\", \"weight\": \"0\", \"answer_id\": \"408\"}, {\"qid\": \"pkn21\", \"answer\": \"Panas\", \"weight\": \"0\", \"answer_id\": \"411\"}, {\"qid\": \"pkn21\", \"answer\": \"Juli\", \"weight\": \"0\", \"answer_id\": \"409\"}, {\"qid\": \"pkn21\", \"answer\": \"Agustus\", \"weight\": \"100\", \"answer_id\": \"410\"}], \"category\": \"1\", \"question\": \"Maret         April        =        Juli        =    ?\", \"correct_describe\": \"-\"}, {\"qid\": \"pkn38\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn38\", \"answer\": \"54 dan 60\", \"weight\": \"0\", \"answer_id\": \"482\"}, {\"qid\": \"pkn38\", \"answer\": \"50 dan 60\", \"weight\": \"0\", \"answer_id\": \"485\"}, {\"qid\": \"pkn38\", \"answer\": \"40 dan 52\", \"weight\": \"100\", \"answer_id\": \"481\"}, {\"qid\": \"pkn38\", \"answer\": \"55 dan 59\", \"weight\": \"0\", \"answer_id\": \"484\"}, {\"qid\": \"pkn38\", \"answer\": \"42 dan 52\", \"weight\": \"0\", \"answer_id\": \"483\"}], \"category\": \"1\", \"question\": \"30 32 33 35 42 48 ... ... 63\", \"correct_describe\": \"Terdapat tiga pola: Pola pertama ditambahkan (+5), 30 + 5 = 35, 35 + 5 + 4 <> (+10), 32 + 10 = 42, 42 + 14 = 52 <> Pola yang ketiga ditambahkan (+15), 33 + 15 = 48, 48 + 15 = 63\"}, {\"qid\": \"pkn45\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn45\", \"answer\": \"15 dan 120\", \"weight\": \"100\", \"answer_id\": \"520\"}, {\"qid\": \"pkn45\", \"answer\": \"10 dan 20\", \"weight\": \"0\", \"answer_id\": \"517\"}, {\"qid\": \"pkn45\", \"answer\": \"20 dan 60\", \"weight\": \"0\", \"answer_id\": \"516\"}, {\"qid\": \"pkn45\", \"answer\": \"25 dan 80\", \"weight\": \"0\", \"answer_id\": \"518\"}, {\"qid\": \"pkn45\", \"answer\": \"65 dan 90\", \"weight\": \"0\", \"answer_id\": \"519\"}], \"category\": \"1\", \"question\": \"90 20 90 20 45 40 ... …\", \"correct_describe\": \"Terdapat dua pola: Pola pertama dibagi dengan bilangan yang berurutan naik, Pola kedua dikali dengan bilangan berurutan naik.\"}, {\"qid\": \"pkn27\", \"type\": \"1\", \"answer\": [{\"qid\": \"pkn27\", \"answer\": \"Perhiasan\", \"weight\": \"0\", \"answer_id\": \"434\"}, {\"qid\": \"pkn27\", \"answer\": \"Senjata\", \"weight\": \"100\", \"answer_id\": \"433\"}, {\"qid\": \"pkn27\", \"answer\": \"Tajam\", \"weight\": \"0\", \"answer_id\": \"435\"}, {\"qid\": \"pkn27\", \"answer\": \"Tambah\", \"weight\": \"0\", \"answer_id\": \"432\"}], \"category\": \"1\", \"question\": \"Intan        Perrmata        =        Sangkur        =    ?\", \"correct_describe\": \"-\"}]', '1', '3', '10', '1', '0', '30', '0', '2018-02-22 19:18:04', '4', '2018-02-22 19:18:05', '0', '2', '0');

-- ----------------------------
-- Table structure for tbl_question_bank_answer
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=666 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_question_bank_answer
-- ----------------------------
INSERT INTO `tbl_question_bank_answer` VALUES ('1', 'pkn01', 'Sumber dari segala sumber hukum', '100', '2018-02-15 16:20:41', '1', '2018-02-15 17:37:39', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('2', 'pkn01', 'Hukum tertinggi di Indonesia', '0', '2018-02-15 16:20:41', '1', '2018-02-15 17:37:39', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('3', 'pkn01', 'Hukum tertulis tertinggi di Indonesia', '0', '2018-02-15 16:20:41', '1', '2018-02-15 17:37:39', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('4', 'pkn01', 'Setingkat dengan UUD 1945', '0', '2018-02-15 16:20:41', '1', '2018-02-15 17:37:39', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('5', 'pkn01', 'Hukum tidak tertulis tertinggi di Indonesia', '0', '2018-02-15 16:20:41', '1', '2018-02-15 17:37:39', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('6', 'pkn02', 'Pandangan hidup', '100', '2018-02-15 16:57:26', '1', '2018-02-15 17:37:51', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('7', 'pkn02', 'Falsafah dan dasar negara', '0', '2018-02-15 16:57:26', '1', '2018-02-15 17:37:51', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('8', 'pkn03', 'Pidato Bung Karno', '0', '2018-02-15 17:11:07', '1', '2018-02-15 17:37:58', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('9', 'pkn03', 'Proklamasi 17 Agustus 1945', '0', '2018-02-15 17:11:07', '1', '2018-02-15 17:37:58', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('10', 'pkn04', 'Dasar negara', '100', '2018-02-15 17:25:36', '1', '2018-02-15 17:38:03', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('11', 'pkn04', 'Dasar kenegaraan', '0', '2018-02-15 17:25:36', '1', '2018-02-15 17:38:03', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('12', 'pkn04', 'Dasar beragama', '0', '2018-02-15 17:25:36', '1', '2018-02-15 17:38:03', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('13', 'pkn04', 'Dasar ketatanegaraan', '0', '2018-02-15 17:25:36', '1', '2018-02-15 17:38:03', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('14', 'pkn04', 'Dasar Perjuangan bangsa', '0', '2018-02-15 17:25:36', '1', '2018-02-15 17:38:03', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('15', 'pkn02', 'Sumber hukum', '0', '2018-02-15 17:26:59', '1', '2018-02-15 17:37:51', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('16', 'pkn02', 'Semua benar', '0', '2018-02-15 17:26:59', '1', '2018-02-15 17:37:51', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('17', 'pkn02', 'Semua salah', '0', '2018-02-15 17:26:59', '1', '2018-02-15 17:37:51', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('18', 'pkn03', 'Kitab Sutasoma', '0', '2018-02-15 17:28:01', '1', '2018-02-15 17:37:58', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('19', 'pkn03', 'Pembukaan UUD 1945', '0', '2018-02-15 17:28:01', '1', '2018-02-15 17:37:58', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('20', 'pkn03', 'Piagam Jakarta', '0', '2018-02-15 17:28:01', '1', '2018-02-15 17:37:58', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('21', 'pkn05', 'TAP MPR RI', '0', '2018-02-15 17:29:23', '1', '2018-02-15 17:38:08', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('22', 'pkn05', 'INPRES No.12 Tahun 1968', '0', '2018-02-15 17:29:23', '1', '2018-02-15 17:38:08', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('23', 'pkn05', 'UU No.5 Tahun 1985', '0', '2018-02-15 17:29:23', '1', '2018-02-15 17:38:08', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('24', 'pkn05', 'TAP MPR No.I/MPR/1983', '100', '2018-02-15 17:29:23', '1', '2018-02-15 17:38:08', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('25', 'pkn05', 'UUD 1945', '0', '2018-02-15 17:29:23', '1', '2018-02-15 17:38:08', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('26', 'pkn06', 'Sila kedua', '100', '2018-02-15 17:31:48', '1', '2018-02-15 17:38:13', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('27', 'pkn06', 'Sila ketiga', '0', '2018-02-15 17:31:48', '1', '2018-02-15 17:38:13', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('28', 'pkn06', 'Sila keempat', '0', '2018-02-15 17:31:48', '1', '2018-02-15 17:38:13', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('29', 'pkn06', 'Sila kelima', '0', '2018-02-15 17:31:48', '1', '2018-02-15 17:38:13', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('30', 'pkn06', 'Sila pertama', '0', '2018-02-15 17:31:48', '1', '2018-02-15 17:38:13', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('31', 'pkn07', '1 Kali', '0', '2018-02-15 17:32:52', '1', '2018-02-15 17:38:20', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('32', 'pkn07', '2 Kali', '0', '2018-02-15 17:32:52', '1', '2018-02-15 17:38:20', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('33', 'pkn07', '3 Kali', '0', '2018-02-15 17:32:52', '1', '2018-02-15 17:38:20', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('34', 'pkn07', '4 Kali', '100', '2018-02-15 17:32:52', '1', '2018-02-15 17:38:20', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('35', 'pkn07', '5 Kali', '0', '2018-02-15 17:32:52', '1', '2018-02-15 17:38:20', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('36', 'pkn08', 'Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21.', '100', '2018-02-15 17:36:52', '1', '2018-02-15 17:38:25', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('37', 'pkn08', 'Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 22.', '0', '2018-02-15 17:36:52', '1', '2018-02-15 17:38:25', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('38', 'pkn08', 'Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 23.', '0', '2018-02-15 17:36:52', '1', '2018-02-15 17:38:25', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('39', 'pkn08', 'Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 24.', '0', '2018-02-15 17:36:52', '1', '2018-02-15 17:38:25', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('40', 'pkn08', 'Pasal 5, 7, 9, 13, 14, 15, 17, 21 dan 24.', '0', '2018-02-15 17:36:52', '1', '2018-02-15 17:38:25', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('41', 'pkn09', 'Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 35.', '0', '2018-02-15 17:36:52', '1', '2018-02-19 12:01:41', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('42', 'pkn09', 'Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.', '100', '2018-02-15 17:36:52', '1', '2018-02-19 12:02:00', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('43', 'pkn09', 'Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 37.', '0', '2018-02-15 17:36:52', '1', '2018-02-19 12:01:47', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('44', 'pkn09', 'Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 38.', '0', '2018-02-15 17:36:52', '1', '2018-02-19 12:01:56', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('45', 'pkn09', 'Pasal 18, 19, 20, 22, 25, 26, 27, 28, 35, dan 36.', '0', '2018-02-15 17:36:52', '1', '2018-02-19 12:01:24', '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('46', 'pkn10', 'Pasal 1, 3, 6, 11, 17, 23, dan 24.', '100', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('47', 'pkn10', 'Pasal 1, 3, 6, 11, 17, 23, dan 25.', '0', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('48', 'pkn10', 'Pasal 1, 3, 6, 11, 17, 23, dan 26.', '0', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('49', 'pkn10', 'Pasal 1, 3, 6, 11, 17, 23, dan 27.', '0', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('50', 'pkn10', 'Pasal 1, 3, 6, 11, 17, 24, dan 25.', '0', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('51', 'pkn11', '19 Oktober 1999', '100', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('52', 'pkn11', '19 Oktober 2000', '0', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('53', 'pkn11', '19 Oktober 2001', '0', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('54', 'pkn11', '19 Oktober 1998', '0', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('55', 'pkn11', '19 Oktober 2003', '0', '2018-02-15 17:36:52', '1', null, '1', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('371', 'pkn12', 'Garam : Logam', '0', '2018-02-22 18:55:21', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('372', 'pkn12', 'Permata : Perhiasan', '0', '2018-02-22 18:55:21', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('373', 'pkn12', 'Kayu : Pohon', '100', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('374', 'pkn12', 'Pramuka : Seragam', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('375', 'pkn12', 'Lidah : Mulut', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('376', 'pkn13', 'Menyayat   ', '100', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('377', 'pkn13', 'Tajam', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('378', 'pkn13', 'Persahabatan', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('379', 'pkn13', 'Berbahaya', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('380', 'pkn14', 'Kemarau', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('381', 'pkn14', 'Angin', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('382', 'pkn14', 'Dingin', '100', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('383', 'pkn14', 'Listrik', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('384', 'pkn15', 'Minggu', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('385', 'pkn15', 'Terang', '100', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('386', 'pkn15', 'Bulan', '0', '2018-02-22 18:55:22', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('387', 'pkn15', 'Pendek', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('388', 'pkn16', 'Ramai', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('389', 'pkn16', 'Suka Cita', '100', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('390', 'pkn16', 'Putri', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('391', 'pkn16', 'Berkelakar', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('392', 'pkn17', 'Sumur', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('393', 'pkn17', 'Air', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('394', 'pkn17', 'Basah', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('395', 'pkn17', 'Segar', '100', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('396', 'pkn18', 'Api', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('397', 'pkn18', 'Bensin', '100', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('398', 'pkn18', 'Gas', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('399', 'pkn18', 'Oli', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('400', 'pkn19', 'Biru', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('401', 'pkn19', 'Kuping', '0', '2018-02-22 18:55:23', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('402', 'pkn19', 'Melihat', '100', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('403', 'pkn19', 'Harum', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('404', 'pkn20', 'Enak', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('405', 'pkn20', 'Lapar', '100', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('406', 'pkn20', 'Sayuran', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('407', 'pkn20', 'Lambat', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('408', 'pkn21', 'Bulan', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('409', 'pkn21', 'Juli', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('410', 'pkn21', 'Agustus', '100', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('411', 'pkn21', 'Panas', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('412', 'pkn22', 'Bau', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('413', 'pkn22', 'Daun', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('414', 'pkn22', 'Duri', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('415', 'pkn22', 'Bunga', '100', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('416', 'pkn23', 'Rambut', '0', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('417', 'pkn23', 'Burung', '100', '2018-02-22 18:55:24', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('418', 'pkn23', 'Mode', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('419', 'pkn23', 'Cantik', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('420', 'pkn24', 'Maret', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('421', 'pkn24', 'Juni', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('422', 'pkn24', 'Libur', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('423', 'pkn24', 'Minggu', '100', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('424', 'pkn25', 'Tenang', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('425', 'pkn25', 'Buih', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('426', 'pkn25', 'Karang', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('427', 'pkn25', 'Air', '100', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('428', 'pkn26', 'Marine', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('429', 'pkn26', 'Prajurit', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('430', 'pkn26', 'Jendral', '100', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('431', 'pkn26', 'Sukarelawan', '0', '2018-02-22 18:55:25', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('432', 'pkn27', 'Tambah', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('433', 'pkn27', 'Senjata', '100', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('434', 'pkn27', 'Perhiasan', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('435', 'pkn27', 'Tajam', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('436', 'pkn28', 'Licin', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('437', 'pkn28', 'Berbahaya', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('438', 'pkn28', 'Merayap', '100', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('439', 'pkn28', 'Jalan', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('440', 'pkn29', 'Pincang', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('441', 'pkn29', 'Kaki', '100', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('442', 'pkn29', 'Longgar', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('443', 'pkn29', 'Berjalan', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('444', 'pkn30', 'Ayah – Bunda', '100', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('445', 'pkn30', 'Boneka', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('446', 'pkn30', 'Pemuda', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('447', 'pkn30', 'Nakal', '0', '2018-02-22 18:55:26', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('448', 'pkn31', 'Sisik', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('449', 'pkn31', 'Biru', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('450', 'pkn31', 'Lezat', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('451', 'pkn31', 'Air', '100', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('452', 'pkn32', 'Gurih', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('453', 'pkn32', 'Laut', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('454', 'pkn32', 'Ikan', '100', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('455', 'pkn32', 'Besar', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('456', 'pkn33', 'Pasti', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('457', 'pkn33', 'Tenggelam', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('458', 'pkn33', 'Terkatung', '100', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('459', 'pkn33', 'Terperosok', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('460', 'pkn33', 'Sial', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('461', 'pkn34', 'Pengawal', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('462', 'pkn34', 'Dinas', '100', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('463', 'pkn34', 'Mafia', '0', '2018-02-22 18:55:27', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('464', 'pkn34', 'Partikelir', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('465', 'pkn34', 'Sendiri', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('466', 'pkn35', '47', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('467', 'pkn35', '32', '100', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('468', 'pkn35', '48', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('469', 'pkn35', '49', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('470', 'pkn35', '78', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('471', 'pkn36', '4', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('472', 'pkn36', '6', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('473', 'pkn36', '8', '100', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('474', 'pkn36', '10', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('475', 'pkn36', '12', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('476', 'pkn37', '25 dan 34', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('477', 'pkn37', '23 dan 33', '0', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('478', 'pkn37', '27 dan 35', '100', '2018-02-22 18:55:28', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('479', 'pkn37', '25 dan 35', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('480', 'pkn37', '24 dan 32', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('481', 'pkn38', '40 dan 52', '100', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('482', 'pkn38', '54 dan 60', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('483', 'pkn38', '42 dan 52', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('484', 'pkn38', '55 dan 59', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('485', 'pkn38', '50 dan 60', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('486', 'pkn39', '66 dan 4', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('487', 'pkn39', '58 dan -3', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('488', 'pkn39', '60 dan 3', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('489', 'pkn39', '64 dan 5', '100', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('490', 'pkn39', '61 dan 2', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('491', 'pkn40', '45', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('492', 'pkn40', '47', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('493', 'pkn40', '49', '100', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('494', 'pkn40', '50', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('495', 'pkn40', '51', '0', '2018-02-22 18:55:29', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('496', 'pkn41', 'G dan N', '100', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('497', 'pkn41', 'E dan O', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('498', 'pkn41', 'H dan M', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('499', 'pkn41', 'F dan Q', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('500', 'pkn41', 'E dan M', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('501', 'pkn42', '18 dan 20', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('502', 'pkn42', '19 dan 23', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('503', 'pkn42', '20 dan 21', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('504', 'pkn42', '22 dan 24', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('505', 'pkn42', '21 dan 22', '100', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('506', 'pkn43', '360', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('507', 'pkn43', '270', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('508', 'pkn43', '300', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('509', 'pkn43', '240', '100', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('510', 'pkn43', '280', '0', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('511', 'pkn44', 'MP', '100', '2018-02-22 18:55:30', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('512', 'pkn44', 'OQ', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('513', 'pkn44', 'QP', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('514', 'pkn44', 'PR', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('515', 'pkn44', 'OP', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('516', 'pkn45', '20 dan 60', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('517', 'pkn45', '10 dan 20', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('518', 'pkn45', '25 dan 80', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('519', 'pkn45', '65 dan 90', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('520', 'pkn45', '15 dan 120', '100', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('521', 'pkn46', 'Pesta', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('522', 'pkn46', 'Luas', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('523', 'pkn46', 'Bebas', '100', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('524', 'pkn46', 'Hiruk', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('525', 'pkn46', 'Belenggu', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('526', 'pkn47', 'Jejak', '0', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('527', 'pkn47', 'Derajat', '100', '2018-02-22 18:55:31', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('528', 'pkn47', 'Cacat', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('529', 'pkn47', 'Hidup', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('530', 'pkn47', 'Anggaran', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('531', 'pkn48', 'Penggandaan', '100', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('532', 'pkn48', 'Potongan', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('533', 'pkn48', 'Pencairan', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('534', 'pkn48', 'Penyimpangan', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('535', 'pkn48', 'Penyimpangan', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('536', 'pkn49', 'Perhubungan', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('537', 'pkn49', 'Penurunan', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('538', 'pkn49', 'Pengangkatan', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('539', 'pkn49', 'Pengusiran', '100', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('540', 'pkn49', 'Pengawasan', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('541', 'pkn50', 'Nyata', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('542', 'pkn50', 'Tunggal', '0', '2018-02-22 18:55:32', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('543', 'pkn50', 'Sesuai', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('544', 'pkn50', 'Tepat', '100', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('545', 'pkn50', 'Terbukti', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('546', 'pkn51', 'Plasma', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('547', 'pkn51', 'Inti', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('548', 'pkn51', 'Selaput', '100', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('549', 'pkn51', 'Kelenjar', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('550', 'pkn51', 'Saluran', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('551', 'pkn52', 'Istilah', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('552', 'pkn52', 'Kosakata', '100', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('553', 'pkn52', 'Daftar', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('554', 'pkn52', 'Penjelasan', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('555', 'pkn52', 'Rangkuman', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('556', 'pkn53', 'Identifikasi', '0', '2018-02-22 18:55:33', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('557', 'pkn53', 'Gambaran', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('558', 'pkn53', 'Sublimasi', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('559', 'pkn53', 'Harapan', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('560', 'pkn53', 'Hubungan', '100', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('561', 'pkn54', 'Abrasi', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('562', 'pkn54', 'Getaran', '100', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('563', 'pkn54', 'Fluktuasi', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('564', 'pkn54', 'Dinamika', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('565', 'pkn54', 'Vibrator', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('566', 'pkn55', 'Lincah', '100', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('567', 'pkn55', 'Malas', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('568', 'pkn55', 'Sombong', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('569', 'pkn55', 'Ramah', '0', '2018-02-22 18:55:34', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('570', 'pkn55', 'Gembira', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('571', 'pkn56', 'Perkiraan', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('572', 'pkn56', 'Standar', '100', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('573', 'pkn56', 'Umum', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('574', 'pkn56', 'Normal', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('575', 'pkn56', 'Asli', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('576', 'pkn57', 'Hipotetis', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('577', 'pkn57', 'Praduga', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('578', 'pkn57', 'Thesis', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('579', 'pkn57', 'Disertasi', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('580', 'pkn57', 'Buatan', '100', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('581', 'pkn58', 'Prosa', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('582', 'pkn58', 'Puisi', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('583', 'pkn58', 'Deskriptif', '100', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('584', 'pkn58', 'Timbalbalik', '0', '2018-02-22 18:55:35', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('585', 'pkn58', 'Terinci', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('586', 'pkn59', 'Alat Penangkap Ikan', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('587', 'pkn59', 'Alat Hitung', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('588', 'pkn59', 'Tabel', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('589', 'pkn59', 'Terali', '100', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('590', 'pkn59', 'Pola Kerja', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('591', 'pkn60', 'Kebesaran Tuhan', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('592', 'pkn60', 'Ruang Angkasa', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('593', 'pkn60', 'Lawan Dunia Fana', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('594', 'pkn60', 'Sarana Transportasi', '100', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('595', 'pkn60', 'Eksistensi Yang Diakui', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('596', 'pkn61', 'Bantuan', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('597', 'pkn61', 'Pengawasan', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('598', 'pkn61', 'Perlindungan', '100', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('599', 'pkn61', 'Penjagaan', '0', '2018-02-22 18:55:36', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('600', 'pkn61', 'Pengamanan', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('601', 'pkn62', 'Keberlakuan', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('602', 'pkn62', 'Kesalahan', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('603', 'pkn62', 'Kematangan', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('604', 'pkn62', 'Kemantapan', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('605', 'pkn62', 'Kebenaran', '100', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('606', 'pkn63', 'Perulangan', '100', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('607', 'pkn63', 'Hubungan', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('608', 'pkn63', 'Interaksi', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('609', 'pkn63', 'Sublimasi', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('610', 'pkn63', 'Identifikasi', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('611', 'pkn64', 'Baur', '0', '2018-02-22 18:55:37', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('612', 'pkn64', 'Produk', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('613', 'pkn64', 'Tingkatan', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('614', 'pkn64', 'Proses', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('615', 'pkn64', 'Siklus', '100', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('616', 'pkn65', 'Angka Kematian', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('617', 'pkn65', 'Sebangsa Hewan', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('618', 'pkn65', 'Gerak', '100', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('619', 'pkn65', 'Dorongan', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('620', 'pkn65', 'Pukulan', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('621', 'pkn66', 'Hewani', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('622', 'pkn66', 'Hayati', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('623', 'pkn66', 'Kodrati', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('624', 'pkn66', 'Botani', '100', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('625', 'pkn66', 'Insani', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('626', 'pkn67', 'Tidur', '0', '2018-02-22 18:55:38', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('627', 'pkn67', 'Cemas', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('628', 'pkn67', 'Sedih', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('629', 'pkn67', 'Tak Bisa Tidur', '100', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('630', 'pkn67', 'Kenyataan', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('631', 'pkn68', 'Bergerak', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('632', 'pkn68', 'Berpindah', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('633', 'pkn68', 'Kesinambungan', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('634', 'pkn68', 'Abstrak', '100', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('635', 'pkn68', 'Tembus Pandang', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('636', 'pkn69', 'Kesimpulan', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('637', 'pkn69', 'Ramalan', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('638', 'pkn69', 'Anggapan', '100', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('639', 'pkn69', 'Perbandingan', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('640', 'pkn69', 'Rekaan', '0', '2018-02-22 18:55:39', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('641', 'pkn70', 'Mengaduk', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('642', 'pkn70', 'Mengakali', '100', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('643', 'pkn70', 'Berbuat Curang', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('644', 'pkn70', 'Membuat Kacau', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('645', 'pkn70', 'Memotong Kecil-Kecil', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('646', 'pkn71', 'Disepak Keatas', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('647', 'pkn71', 'Ditendang Dengan Bangga', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('648', 'pkn71', 'Dipotong Melintang', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('649', 'pkn71', 'Ditelan Bulat-Bulat', '100', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('650', 'pkn71', 'Diminum Sedikit-Sedikit', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('651', 'pkn72', 'Pemimpin Acara', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('652', 'pkn72', 'Penulis Naskah', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('653', 'pkn72', 'Pengatur Skenario', '0', '2018-02-22 18:55:40', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('654', 'pkn72', 'Manager Tontonan', '0', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('655', 'pkn72', 'Pengarah Adegan', '100', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('656', 'pkn73', 'Pemeliharaan', '0', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('657', 'pkn73', 'Pembongkaran', '0', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('658', 'pkn73', 'Pembangunan', '0', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('659', 'pkn73', 'Perbaikan', '100', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('660', 'pkn73', 'Pelestarian', '0', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('661', 'pkn74', 'Canggung', '0', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('662', 'pkn74', 'Kacau', '100', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('663', 'pkn74', 'Jorok', '0', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('664', 'pkn74', 'Tidak Wajar', '0', '2018-02-22 18:55:41', '4', null, '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('665', 'pkn74', 'Semu', '0', '2018-02-22 18:55:41', '4', null, '4', '1', '0');

-- ----------------------------
-- Table structure for tbl_quiestion_bank
-- ----------------------------
DROP TABLE IF EXISTS `tbl_quiestion_bank`;
CREATE TABLE `tbl_quiestion_bank` (
  `qid` varchar(8) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT '1',
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

-- ----------------------------
-- Records of tbl_quiestion_bank
-- ----------------------------
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn01', '1', '3', '1', 'Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai?', 'Dalam sumber tata hukum di Indonesia, Pancasila dijadikan sebagai sumber dari segala sumber hukum', '2018-02-15 15:33:52', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn02', '1', '3', '1', 'Pancasila bagi bangsa Indonesia merupakan', 'Pancasila bagi bangsa Indonesia merupakan pandangan hidup.', '2018-02-15 15:36:55', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn03', '1', '3', '1', 'Rumusan Pancasila yang resmi terdapat dalam', 'Rumusan Pancasila yang resmi terdapat dalam Pembukaan UUD 1945', '2018-02-15 15:36:55', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn04', '1', '3', '1', 'Dalam kehidupan bernegara, Pancasila berperan sebagai', '4. Dalam kehidupan bernegara, Pancasila berperan sebagai dasar negara', '2018-02-15 15:39:58', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn05', '1', '3', '1', 'Tata cara mengucapkan Pancasila pada upacara-upacara resmi ditetapkan pada', 'Tata cara mengucapkan Pancasila pada upacara-upacara resmi ditetapkan pada TAP MPR No.I/MPR/1983', '2018-02-15 15:39:58', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn06', '1', '3', '1', 'Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu', 'Hubungan sosial yang selaras, serasi, seimbang antara individu dan masyarakat dijiwai oleh nilai-nilai Pancasila, yaitu pada sila kedua', '2018-02-15 15:42:44', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn07', '1', '3', '1', 'Berapa kali UUD 1945 di-amandemen...', 'UUD 1945 telah di-amandemen sebanyak 4 kali', '2018-02-15 15:42:44', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn08', '1', '3', '1', 'Pasal berapa saja UUD 1945 pertama kali di-amandemen…', 'Pasal yang pertama kali di amandemen adalah Pasal 5, 7, 9, 13, 14, 15, 17, 20 dan 21', '2018-02-15 15:45:42', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn09', '1', '3', '1', 'Pasal berapa saja UUD 1945 kedua kali diamandemen…', 'Untuk kedua kalinya UUD 1945 di amandemen adalah Pasal 18, 19, 20, 22, 25, 26, 27, 28, 30, dan 36.', '2018-02-15 15:45:42', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn10', '1', '3', '1', 'Pasal berapa saja UUD 1945 ketiga kali diamandemen…', 'UUD 1945 untuk ketiga kalinya di-amandemen yaitu Pasal 1, 3, 6, 11, 17, 23, dan 24.', '2018-02-15 15:50:31', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn11', '1', '3', '1', 'Kapan amandemen UUD 1945 pertamakali dilakukan..', 'Untuk pertamakalinya UUD 1945 di amandemen pada 19 Oktober 1999', '2018-02-15 15:50:31', '1', '2018-02-19 11:20:45', '1', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn12', '1', '1', '1', 'Emas : Tambang --> ? : ?', 'Pembahasan, kayu dihasilkan dari pohon dan emasi dihasilkandari tambang', '2018-02-22 17:18:06', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn13', '1', '1', '1', 'Garpu        Makan        =        Pisau        =    ?', '-', '2018-02-22 17:18:06', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn14', '1', '1', '1', 'Dapur        Panas        =        Lemari ES        =    ?', '-', '2018-02-22 17:18:06', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn15', '1', '1', '1', 'Malam        Gelap        =         Siang        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn16', '1', '1', '1', 'Menangis    Sedih        =        Tertawa        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn17', '1', '1', '1', 'Lari        Lelah        =        Mandi        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn18', '1', '1', '1', 'Manusia     Makan     =     Mobil    =   ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn19', '1', '1', '1', 'Hidung        Mencium        =        Mata        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn20', '1', '1', '1', 'Minum        Dahaga        =        Makan        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn21', '1', '1', '1', 'Maret         April        =        Juli        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn22', '1', '1', '1', 'Harimau    Binatang        =        Mawar        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn23', '1', '1', '1', 'Kebaya    Wanita        =        Bulu        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn24', '1', '1', '1', 'Bulan    Tahun        =        Hari        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn25', '1', '1', '1', 'Tambang    Batubara        =        Sungai        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn26', '1', '1', '1', 'Kota        Walikota        =        Tentara        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn27', '1', '1', '1', 'Intan        Perrmata        =        Sangkur        =    ?', '-', '2018-02-22 17:18:07', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn28', '1', '1', '1', 'Orang        Berjalan        =        Ular        =    ?', '-', '2018-02-22 17:18:08', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn29', '1', '1', '1', 'Topi        Kepala        =        Sepatu        =    ?', '-', '2018-02-22 17:18:08', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn30', '1', '1', '1', 'Murid        Guru        =        Kanak-Kanak    =    ?', '-', '2018-02-22 17:18:08', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn31', '1', '1', '1', 'Burung    Udara        =        Ikan        =    ?', '-', '2018-02-22 17:18:08', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn32', '1', '1', '1', 'Lobak        Sayuran        =        Bandeng        =    ?', '-', '2018-02-22 17:18:08', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn33', '1', '1', '1', 'Terbenam', 'Pembahasan, terbenam artinya tenggelam, terkubur jadi, lawankata dari terbenam adalah terkatung atau terapung', '2018-02-22 17:18:08', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn34', '1', '1', '1', 'Preman', 'Pembahasan, preman adalah bukan militer, bukan sipil, sebutanorang jahat termasuk penodong, pemeras dan perampok, jadi lawan kawapreman adalah dinas, pegawai pemerinta, pegawai militer', '2018-02-22 17:18:08', '4', null, '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn35', '1', '1', '2', '4 3 8 6 16 12 ...', '-', '2018-02-22 17:18:08', '4', '2018-02-22 19:45:33', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn36', '1', '1', '2', '192 192 96 32 …', 'Pembahasan, angka awal dibagi :1, :2, :3, :4, dan seterusnya', '2018-02-22 17:18:08', '4', '2018-02-22 19:45:33', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn37', '1', '1', '2', '18 23 19 25 22 29 ... …', 'Terdapat dua pola yang berlaku: +1,+3,+5 dan +2, +4, +6', '2018-02-22 17:18:08', '4', '2018-02-22 19:45:34', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn38', '1', '1', '2', '30 32 33 35 42 48 ... ... 63', 'Terdapat tiga pola: Pola pertama ditambahkan (+5), 30 + 5 = 35, 35 + 5 + 4 <> (+10), 32 + 10 = 42, 42 + 14 = 52 <> Pola yang ketiga ditambahkan (+15), 33 + 15 = 48, 48 + 15 = 63', '2018-02-22 17:18:08', '4', '2018-02-22 19:45:35', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn39', '1', '1', '2', '4 17 8 14 16 11 32 28 ... …', 'Pola dikali 2, yaitu 4, 8, 16, 32. Pola berkurangi 3, yaitu 17, 14, 11 dan 8.', '2018-02-22 17:18:09', '4', '2018-02-22 19:45:36', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn40', '1', '1', '2', '13 14 17 22 29 38 …', 'Pola ditambahkan +1,+3,+5,+7,+9', '2018-02-22 17:18:09', '4', '2018-02-22 19:45:36', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn41', '1', '1', '2', 'A R D P ... …', 'Pola yang pertama melompat 3 huruf sesudahnya. Pola yang kedua melompat 2 huruf sedudahnya. ', '2018-02-22 17:18:09', '4', '2018-02-22 19:45:36', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn42', '1', '1', '2', '13 2 15 7 17 12 19 17 ... …', 'Terdapat dua pola yang berlaku: Pola ditambah 2 yaitu: a) 13, 15, 17 dan 19 b) Pola ditambah 5 yaitu: 2, 7, 12 dan 17', '2018-02-22 17:18:09', '4', '2018-02-22 19:45:36', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn43', '1', '1', '2', '20 40 120 ... 720', 'Pola yang berlaku adalah dikalikan 2 dan 3 secara berselang', '2018-02-22 17:18:09', '4', '2018-02-22 19:45:37', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn44', '1', '1', '2', 'E H G J I L K N ... …', 'Pola yang digunakan adalah maju 3 huruf kemudian mundur 1 huruf.', '2018-02-22 17:18:09', '4', '2018-02-22 19:45:38', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn45', '1', '1', '2', '90 20 90 20 45 40 ... …', 'Terdapat dua pola: Pola pertama dibagi dengan bilangan yang berurutan naik, Pola kedua dikali dengan bilangan berurutan naik.', '2018-02-22 17:18:09', '4', '2018-02-22 19:45:38', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn46', '1', '1', '3', 'Merdeka', 'Pembahasan Merdeka artinya bebas, berdiri sendiri (dari penjajahan, dan sebagainya)', '2018-02-22 17:18:09', '4', '2018-02-22 19:45:46', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn47', '1', '1', '3', 'Taraf', 'Pembahasan, Taraf artinya tingkatan , derajat', '2018-02-22 17:18:09', '4', '2018-02-22 19:45:48', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn48', '1', '1', '3', 'Rabat', 'Pembahasan, Rabat artinya potongan harga, diskon', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:46', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn49', '1', '1', '3', 'Deportasia', 'Deportasi artinya pembuangan, pengasingan, atau pengungsian seseorang ke luar negeri sebagai hukuman atau karena orang tersebut tidak berhak tinggal disuatu daerah. Dari semua pilihan yang tersedia, kata yang memiliki makna mendekati kata deportasi hanya pengusiran.', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:46', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn50', '1', '1', '3', 'Eksak', 'Eksak berarti akurat, cermat, tentu, tepat. Nyata artinya ada, tunggal artinya satu-satunya, sesuai artinya selaras, dan terbukti berarti keterangan nyata.', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:49', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn51', '1', '1', '3', 'Membran', 'Kata membran merupakan istilah dalam bidang Biologi yang semakna dengan jaringan, polikel, selaput. Kata plasma, inti, kelenjar, dan saluran juga termasuk istilah dalam bidang Biologi, tetapi tidak memiliki arti yang sama dengan membran.', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:49', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn52', '1', '1', '3', 'Glosari', 'Glosari berarti daftar istilah, daftar kata, vokabuler, kosakata. Sedangkan, istilah merupakan gabungan kata yang mengungkapkan makna.', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:49', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn53', '1', '1', '3', 'Kolerasi', 'Korelasi merupakan kata serapan dari bahasa inggris corrrelation, yang berarti hubungan', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:50', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn54', '1', '1', '3', 'Vibrasi', '-', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:50', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn55', '1', '1', '3', 'Gesit', '-', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:50', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn56', '1', '1', '3', 'Baku', '-', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:50', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn57', '1', '1', '3', 'Protesis', '-', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:51', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn58', '1', '1', '3', 'Naratif', '-', '2018-02-22 17:18:10', '4', '2018-02-22 19:45:51', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn59', '1', '1', '3', 'Kisi-Kisi', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:51', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn60', '1', '1', '3', 'Wahana', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:52', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn61', '1', '1', '3', 'Proteksi', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:52', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn62', '1', '1', '3', 'Kesahihan', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:52', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn63', '1', '1', '3', 'Interasi', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:53', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn64', '1', '1', '3', 'Daur', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:53', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn65', '1', '1', '3', 'Motilitas', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:53', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn66', '1', '1', '3', 'Nabati', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:53', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn67', '1', '1', '3', 'Imsomnia', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:54', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn68', '1', '1', '3', 'Transendental', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:54', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn69', '1', '1', '3', 'Asumsi', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:55', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn70', '1', '1', '3', 'Mengecoh', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:55', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn71', '1', '1', '3', 'Ditenggak', '-', '2018-02-22 17:18:11', '4', '2018-02-22 19:45:56', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn72', '1', '1', '3', 'Sutradara', '-', '2018-02-22 17:18:12', '4', '2018-02-22 19:45:56', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn73', '1', '1', '3', 'Pemugaran', '-', '2018-02-22 17:18:12', '4', '2018-02-22 19:45:57', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn74', '1', '1', '3', 'Rancu', '-', '2018-02-22 17:18:12', '4', '2018-02-22 19:45:59', '4', '1', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_sub_category
-- ----------------------------
INSERT INTO `tbl_sub_category` VALUES ('1', '1', 'Verbal – Analogi', '1');
INSERT INTO `tbl_sub_category` VALUES ('2', '2', 'Verbal – Numerikal', '1');
INSERT INTO `tbl_sub_category` VALUES ('3', '3', 'Verbal – Sinonim', '1');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', '2147483647', 'rizamasta', 'Riza Masta', 'rizamasta@gmail.com', 'https://lh4.googleusercontent.com/-SiJZnnIpAZA/AAAAAAAAAAI/AAAAAAAAAdo/Cm-8u4n0Be8/s96-c/photo.jpg', 'user', '78852df01bcb2af3b3630e464ad50500cbb4cf50d6a352d8bd2bad3d94919093', '', null, '2018-02-14 16:30:08', '2018-02-15 17:15:14', '1', '0');
INSERT INTO `tbl_user` VALUES ('2', '2147483647', 'ositumorang', 'orison saritua', 'ositumorang@gmail.com', 'https://lh4.googleusercontent.com/-2g-AhgucKbk/AAAAAAAAAAI/AAAAAAAAAAA/ACSILjU_C6DafMoF_9NTXhAUgqwPwDkBVA/s96-c/photo.jpg', 'user', '862043271bd207ab014d51c8314b8e1e150375e7ff9f4b5488a3547e14dca498', '', null, '2018-02-20 11:31:49', null, '1', '0');
INSERT INTO `tbl_user` VALUES ('3', '2147483647', 'democracycentennial', 'Democracy Centennial', 'democracycentennial@gmail.com', 'https://lh6.googleusercontent.com/-aw6K9P-w0HM/AAAAAAAAAAI/AAAAAAAAAAA/ACSILjXMUiC2fWueoxyH5CE56nl3gO11jA/s96-c/photo.jpg', 'user', 'cf3792b741567b47348435f3464c31137a4f6fd0e5f1e03432ae8ce18ba11ab0', '', null, '2018-02-20 12:39:32', null, '1', '0');
INSERT INTO `tbl_user` VALUES ('4', '2147483647', 'utamieahmad', 'ahmad utami', 'utamieahmad@gmail.com', 'https://lh3.googleusercontent.com/-WCnptPsM4uA/AAAAAAAAAAI/AAAAAAAABDs/TXuqo9F_iUY/s96-c/photo.jpg', 'user', '7008b2411acc77d3d256872454ecdc575a3fdd675cf1f17756a81c7d539c5b24', '', null, '2018-02-22 14:27:44', null, '1', '0');
SET FOREIGN_KEY_CHECKS=1;
