/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : online_test

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-28 11:32:12
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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
INSERT INTO `tbl_generated_question` VALUES ('6Y3B8NQO', '[{\"qid\":\"pkn81\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Tolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy007.png\\\" width=\\\"400\\\" height=\\\"400\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"717\",\"qid\":\"pkn81\",\"answer\":\"1\",\"weight\":\"100\"},{\"answer_id\":\"718\",\"qid\":\"pkn81\",\"answer\":\"2\",\"weight\":\"0\"},{\"answer_id\":\"719\",\"qid\":\"pkn81\",\"answer\":\"3\",\"weight\":\"0\"},{\"answer_id\":\"720\",\"qid\":\"pkn81\",\"answer\":\"4\",\"weight\":\"0\"},{\"answer_id\":\"721\",\"qid\":\"pkn81\",\"answer\":\"5\",\"weight\":\"0\"},{\"answer_id\":\"722\",\"qid\":\"pkn81\",\"answer\":\"6\",\"weight\":\"0\"},{\"answer_id\":\"723\",\"qid\":\"pkn81\",\"answer\":\"7\",\"weight\":\"0\"},{\"answer_id\":\"724\",\"qid\":\"pkn81\",\"answer\":\"8\",\"weight\":\"0\"}]},{\"qid\":\"pkn46\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Merdeka\\\" ?\",\"correct_describe\":\"Pembahasan Merdeka artinya bebas, berdiri sendiri (dari penjajahan, dan sebagainya)\",\"answer\":[{\"answer_id\":\"521\",\"qid\":\"pkn46\",\"answer\":\"Pesta\",\"weight\":\"0\"},{\"answer_id\":\"522\",\"qid\":\"pkn46\",\"answer\":\"Luas\",\"weight\":\"0\"},{\"answer_id\":\"523\",\"qid\":\"pkn46\",\"answer\":\"Bebas\",\"weight\":\"100\"},{\"answer_id\":\"524\",\"qid\":\"pkn46\",\"answer\":\"Hiruk\",\"weight\":\"0\"},{\"answer_id\":\"525\",\"qid\":\"pkn46\",\"answer\":\"Belenggu\",\"weight\":\"0\"}]},{\"qid\":\"pkn61\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Proteksi\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"596\",\"qid\":\"pkn61\",\"answer\":\"Bantuan\",\"weight\":\"0\"},{\"answer_id\":\"597\",\"qid\":\"pkn61\",\"answer\":\"Pengawasan\",\"weight\":\"0\"},{\"answer_id\":\"598\",\"qid\":\"pkn61\",\"answer\":\"Perlindungan\",\"weight\":\"100\"},{\"answer_id\":\"599\",\"qid\":\"pkn61\",\"answer\":\"Penjagaan\",\"weight\":\"0\"},{\"answer_id\":\"600\",\"qid\":\"pkn61\",\"answer\":\"Pengamanan\",\"weight\":\"0\"}]},{\"qid\":\"pkn49\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Deportasia\\\" ?\",\"correct_describe\":\"Deportasi artinya pembuangan, pengasingan, atau pengungsian seseorang ke luar negeri sebagai hukuman atau karena orang tersebut tidak berhak tinggal disuatu daerah. Dari semua pilihan yang tersedia, kata yang memiliki makna mendekati kata deportasi hanya pengusiran.\",\"answer\":[{\"answer_id\":\"536\",\"qid\":\"pkn49\",\"answer\":\"Perhubungan\",\"weight\":\"0\"},{\"answer_id\":\"537\",\"qid\":\"pkn49\",\"answer\":\"Penurunan\",\"weight\":\"0\"},{\"answer_id\":\"538\",\"qid\":\"pkn49\",\"answer\":\"Pengangkatan\",\"weight\":\"0\"},{\"answer_id\":\"539\",\"qid\":\"pkn49\",\"answer\":\"Pengusiran\",\"weight\":\"100\"},{\"answer_id\":\"540\",\"qid\":\"pkn49\",\"answer\":\"Pengawasan\",\"weight\":\"0\"}]},{\"qid\":\"pkn39\",\"type\":\"1\",\"category\":\"1\",\"question\":\"4 17 8 14 16 11 32 28 ... \\u2026\",\"correct_describe\":\"Pola dikali 2, yaitu 4, 8, 16, 32. Pola berkurangi 3, yaitu 17, 14, 11 dan 8.\",\"answer\":[{\"answer_id\":\"486\",\"qid\":\"pkn39\",\"answer\":\"66 dan 4\",\"weight\":\"0\"},{\"answer_id\":\"487\",\"qid\":\"pkn39\",\"answer\":\"58 dan -3\",\"weight\":\"0\"},{\"answer_id\":\"488\",\"qid\":\"pkn39\",\"answer\":\"60 dan 3\",\"weight\":\"0\"},{\"answer_id\":\"489\",\"qid\":\"pkn39\",\"answer\":\"64 dan 5\",\"weight\":\"100\"},{\"answer_id\":\"490\",\"qid\":\"pkn39\",\"answer\":\"61 dan 2\",\"weight\":\"0\"}]},{\"qid\":\"pkn93\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Silahkan pilih respon yang sesuai dengan gambar.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy019.jpg\\\" width=\\\"300\\\" height=\\\"400\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"816\",\"qid\":\"pkn93\",\"answer\":\"Marah\",\"weight\":\"100\"},{\"answer_id\":\"817\",\"qid\":\"pkn93\",\"answer\":\"Jijik\",\"weight\":\"0\"},{\"answer_id\":\"818\",\"qid\":\"pkn93\",\"answer\":\"Takut\",\"weight\":\"0\"},{\"answer_id\":\"819\",\"qid\":\"pkn93\",\"answer\":\"Gembira\",\"weight\":\"0\"},{\"answer_id\":\"820\",\"qid\":\"pkn93\",\"answer\":\"Biasa saja\",\"weight\":\"0\"},{\"answer_id\":\"821\",\"qid\":\"pkn93\",\"answer\":\"Sedih\",\"weight\":\"0\"},{\"answer_id\":\"822\",\"qid\":\"pkn93\",\"answer\":\"Terkejut\",\"weight\":\"0\"},{\"answer_id\":\"823\",\"qid\":\"pkn93\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn33\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Antonim dari kata \\\"Terbenam\\\" ?\",\"correct_describe\":\"Pembahasan, terbenam artinya tenggelam, terkubur jadi, lawankata dari terbenam adalah terkatung atau terapung\",\"answer\":[{\"answer_id\":\"456\",\"qid\":\"pkn33\",\"answer\":\"Pasti\",\"weight\":\"0\"},{\"answer_id\":\"457\",\"qid\":\"pkn33\",\"answer\":\"Tenggelam\",\"weight\":\"0\"},{\"answer_id\":\"458\",\"qid\":\"pkn33\",\"answer\":\"Terkatung\",\"weight\":\"100\"},{\"answer_id\":\"459\",\"qid\":\"pkn33\",\"answer\":\"Terperosok\",\"weight\":\"0\"},{\"answer_id\":\"460\",\"qid\":\"pkn33\",\"answer\":\"Sial\",\"weight\":\"0\"}]},{\"qid\":\"pkn86\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Bagian mana yang membuat pola ini cocok?<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy012.png\\\" width=\\\"400\\\" height=\\\"300\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"757\",\"qid\":\"pkn86\",\"answer\":\"A\",\"weight\":\"100\"},{\"answer_id\":\"758\",\"qid\":\"pkn86\",\"answer\":\"B\",\"weight\":\"0\"},{\"answer_id\":\"759\",\"qid\":\"pkn86\",\"answer\":\"C\",\"weight\":\"0\"},{\"answer_id\":\"760\",\"qid\":\"pkn86\",\"answer\":\"D\",\"weight\":\"0\"},{\"answer_id\":\"761\",\"qid\":\"pkn86\",\"answer\":\"E\",\"weight\":\"0\"},{\"answer_id\":\"762\",\"qid\":\"pkn86\",\"answer\":\"F\",\"weight\":\"0\"},{\"answer_id\":\"763\",\"qid\":\"pkn86\",\"answer\":\"G\",\"weight\":\"0\"},{\"answer_id\":\"764\",\"qid\":\"pkn86\",\"answer\":\"Semua jawaban salah\",\"weight\":\"0\"},{\"answer_id\":\"765\",\"qid\":\"pkn86\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn15\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Malam\\u00a0= Gelap : Siang = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"384\",\"qid\":\"pkn15\",\"answer\":\"Minggu\",\"weight\":\"0\"},{\"answer_id\":\"385\",\"qid\":\"pkn15\",\"answer\":\"Terang\",\"weight\":\"100\"},{\"answer_id\":\"386\",\"qid\":\"pkn15\",\"answer\":\"Bulan\",\"weight\":\"0\"},{\"answer_id\":\"387\",\"qid\":\"pkn15\",\"answer\":\"Pendek\",\"weight\":\"0\"}]},{\"qid\":\"pkn32\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Lobak = Sayuran : Bandeng = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"452\",\"qid\":\"pkn32\",\"answer\":\"Gurih\",\"weight\":\"0\"},{\"answer_id\":\"453\",\"qid\":\"pkn32\",\"answer\":\"Laut\",\"weight\":\"0\"},{\"answer_id\":\"454\",\"qid\":\"pkn32\",\"answer\":\"Ikan\",\"weight\":\"100\"},{\"answer_id\":\"455\",\"qid\":\"pkn32\",\"answer\":\"Besar\",\"weight\":\"0\"}]},{\"qid\":\"pkn80\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Semua kubus di bawah ini memiliki gambar yang berbeda di setiap sisinya. Pilihlah yang bisa mewakili rotasi dari kubus berlabel X.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy006.png\\\" width=\\\"400\\\" height=\\\"200\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"708\",\"qid\":\"pkn80\",\"answer\":\"A\",\"weight\":\"100\"},{\"answer_id\":\"709\",\"qid\":\"pkn80\",\"answer\":\"B\",\"weight\":\"0\"},{\"answer_id\":\"710\",\"qid\":\"pkn80\",\"answer\":\"C\",\"weight\":\"0\"},{\"answer_id\":\"711\",\"qid\":\"pkn80\",\"answer\":\"D\",\"weight\":\"0\"},{\"answer_id\":\"712\",\"qid\":\"pkn80\",\"answer\":\"E\",\"weight\":\"0\"},{\"answer_id\":\"713\",\"qid\":\"pkn80\",\"answer\":\"F\",\"weight\":\"0\"},{\"answer_id\":\"714\",\"qid\":\"pkn80\",\"answer\":\"G\",\"weight\":\"0\"},{\"answer_id\":\"715\",\"qid\":\"pkn80\",\"answer\":\"Semua jawaban salah\",\"weight\":\"0\"},{\"answer_id\":\"716\",\"qid\":\"pkn80\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn85\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Silahkan pilih respon yang sesuai dengan gambar.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy011.jpg\\\" width=\\\"300\\\" height=\\\"400\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"749\",\"qid\":\"pkn85\",\"answer\":\"Marah\",\"weight\":\"100\"},{\"answer_id\":\"750\",\"qid\":\"pkn85\",\"answer\":\"Jijik\",\"weight\":\"0\"},{\"answer_id\":\"751\",\"qid\":\"pkn85\",\"answer\":\"Takut\",\"weight\":\"0\"},{\"answer_id\":\"752\",\"qid\":\"pkn85\",\"answer\":\"Gembira\",\"weight\":\"0\"},{\"answer_id\":\"753\",\"qid\":\"pkn85\",\"answer\":\"Biasa saja\",\"weight\":\"0\"},{\"answer_id\":\"754\",\"qid\":\"pkn85\",\"answer\":\"Sedih\",\"weight\":\"0\"},{\"answer_id\":\"755\",\"qid\":\"pkn85\",\"answer\":\"Terkejut\",\"weight\":\"0\"},{\"answer_id\":\"756\",\"qid\":\"pkn85\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn57\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Protesis\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"576\",\"qid\":\"pkn57\",\"answer\":\"Hipotetis\",\"weight\":\"0\"},{\"answer_id\":\"577\",\"qid\":\"pkn57\",\"answer\":\"Praduga\",\"weight\":\"0\"},{\"answer_id\":\"578\",\"qid\":\"pkn57\",\"answer\":\"Thesis\",\"weight\":\"0\"},{\"answer_id\":\"579\",\"qid\":\"pkn57\",\"answer\":\"Disertasi\",\"weight\":\"0\"},{\"answer_id\":\"580\",\"qid\":\"pkn57\",\"answer\":\"Buatan\",\"weight\":\"100\"}]},{\"qid\":\"pkn78\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Tolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy004.jpg\\\" width=\\\"400\\\" height=\\\"300\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"691\",\"qid\":\"pkn78\",\"answer\":\"A\",\"weight\":\"100\"},{\"answer_id\":\"692\",\"qid\":\"pkn78\",\"answer\":\"B\",\"weight\":\"0\"},{\"answer_id\":\"693\",\"qid\":\"pkn78\",\"answer\":\"C\",\"weight\":\"0\"},{\"answer_id\":\"694\",\"qid\":\"pkn78\",\"answer\":\"D\",\"weight\":\"0\"},{\"answer_id\":\"695\",\"qid\":\"pkn78\",\"answer\":\"E\",\"weight\":\"0\"},{\"answer_id\":\"696\",\"qid\":\"pkn78\",\"answer\":\"F\",\"weight\":\"0\"},{\"answer_id\":\"697\",\"qid\":\"pkn78\",\"answer\":\"Semua jawaban salah\",\"weight\":\"0\"},{\"answer_id\":\"698\",\"qid\":\"pkn78\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn31\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Burung = Udara : Ikan = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"448\",\"qid\":\"pkn31\",\"answer\":\"Sisik\",\"weight\":\"0\"},{\"answer_id\":\"449\",\"qid\":\"pkn31\",\"answer\":\"Biru\",\"weight\":\"0\"},{\"answer_id\":\"450\",\"qid\":\"pkn31\",\"answer\":\"Lezat\",\"weight\":\"0\"},{\"answer_id\":\"451\",\"qid\":\"pkn31\",\"answer\":\"Air\",\"weight\":\"100\"}]},{\"qid\":\"pkn22\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Harimau\\u00a0= Binatang : Mawar = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"412\",\"qid\":\"pkn22\",\"answer\":\"Bau\",\"weight\":\"0\"},{\"answer_id\":\"413\",\"qid\":\"pkn22\",\"answer\":\"Daun\",\"weight\":\"0\"},{\"answer_id\":\"414\",\"qid\":\"pkn22\",\"answer\":\"Duri\",\"weight\":\"0\"},{\"answer_id\":\"415\",\"qid\":\"pkn22\",\"answer\":\"Bunga\",\"weight\":\"100\"}]},{\"qid\":\"pkn27\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Intan = Perrmata : Sangkur = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"432\",\"qid\":\"pkn27\",\"answer\":\"Tambah\",\"weight\":\"0\"},{\"answer_id\":\"433\",\"qid\":\"pkn27\",\"answer\":\"Senjata\",\"weight\":\"100\"},{\"answer_id\":\"434\",\"qid\":\"pkn27\",\"answer\":\"Perhiasan\",\"weight\":\"0\"},{\"answer_id\":\"435\",\"qid\":\"pkn27\",\"answer\":\"Tajam\",\"weight\":\"0\"}]},{\"qid\":\"pkn42\",\"type\":\"1\",\"category\":\"1\",\"question\":\"13 2 15 7 17 12 19 17 ... \\u2026\",\"correct_describe\":\"Terdapat dua pola yang berlaku: Pola ditambah 2 yaitu: a) 13, 15, 17 dan 19 b) Pola ditambah 5 yaitu: 2, 7, 12 dan 17\",\"answer\":[{\"answer_id\":\"501\",\"qid\":\"pkn42\",\"answer\":\"18 dan 20\",\"weight\":\"0\"},{\"answer_id\":\"502\",\"qid\":\"pkn42\",\"answer\":\"19 dan 23\",\"weight\":\"0\"},{\"answer_id\":\"503\",\"qid\":\"pkn42\",\"answer\":\"20 dan 21\",\"weight\":\"0\"},{\"answer_id\":\"504\",\"qid\":\"pkn42\",\"answer\":\"22 dan 24\",\"weight\":\"0\"},{\"answer_id\":\"505\",\"qid\":\"pkn42\",\"answer\":\"21 dan 22\",\"weight\":\"100\"}]},{\"qid\":\"pkn51\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Membran\\\" ?\",\"correct_describe\":\"Kata membran merupakan istilah dalam bidang Biologi yang semakna dengan jaringan, polikel, selaput. Kata plasma, inti, kelenjar, dan saluran juga termasuk istilah dalam bidang Biologi, tetapi tidak memiliki arti yang sama dengan membran.\",\"answer\":[{\"answer_id\":\"546\",\"qid\":\"pkn51\",\"answer\":\"Plasma\",\"weight\":\"0\"},{\"answer_id\":\"547\",\"qid\":\"pkn51\",\"answer\":\"Inti\",\"weight\":\"0\"},{\"answer_id\":\"548\",\"qid\":\"pkn51\",\"answer\":\"Selaput\",\"weight\":\"100\"},{\"answer_id\":\"549\",\"qid\":\"pkn51\",\"answer\":\"Kelenjar\",\"weight\":\"0\"},{\"answer_id\":\"550\",\"qid\":\"pkn51\",\"answer\":\"Saluran\",\"weight\":\"0\"}]},{\"qid\":\"pkn89\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Bagian mana yang membuat pola ini cocok?<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy015.png\\\" width=\\\"400\\\" height=\\\"300\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"782\",\"qid\":\"pkn89\",\"answer\":\"A\",\"weight\":\"100\"},{\"answer_id\":\"783\",\"qid\":\"pkn89\",\"answer\":\"B\",\"weight\":\"0\"},{\"answer_id\":\"784\",\"qid\":\"pkn89\",\"answer\":\"C\",\"weight\":\"0\"},{\"answer_id\":\"785\",\"qid\":\"pkn89\",\"answer\":\"D\",\"weight\":\"0\"},{\"answer_id\":\"786\",\"qid\":\"pkn89\",\"answer\":\"E\",\"weight\":\"0\"},{\"answer_id\":\"787\",\"qid\":\"pkn89\",\"answer\":\"F\",\"weight\":\"0\"},{\"answer_id\":\"788\",\"qid\":\"pkn89\",\"answer\":\"G\",\"weight\":\"0\"},{\"answer_id\":\"789\",\"qid\":\"pkn89\",\"answer\":\"Semua jawaban salah\",\"weight\":\"0\"},{\"answer_id\":\"790\",\"qid\":\"pkn89\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn44\",\"type\":\"1\",\"category\":\"1\",\"question\":\"E H G J I L K N ... \\u2026\",\"correct_describe\":\"Pola yang digunakan adalah maju 3 huruf kemudian mundur 1 huruf.\",\"answer\":[{\"answer_id\":\"511\",\"qid\":\"pkn44\",\"answer\":\"MP\",\"weight\":\"100\"},{\"answer_id\":\"512\",\"qid\":\"pkn44\",\"answer\":\"OQ\",\"weight\":\"0\"},{\"answer_id\":\"513\",\"qid\":\"pkn44\",\"answer\":\"QP\",\"weight\":\"0\"},{\"answer_id\":\"514\",\"qid\":\"pkn44\",\"answer\":\"PR\",\"weight\":\"0\"},{\"answer_id\":\"515\",\"qid\":\"pkn44\",\"answer\":\"OP\",\"weight\":\"0\"}]},{\"qid\":\"pkn63\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Iterasi\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"606\",\"qid\":\"pkn63\",\"answer\":\"Perulangan\",\"weight\":\"100\"},{\"answer_id\":\"607\",\"qid\":\"pkn63\",\"answer\":\"Hubungan\",\"weight\":\"0\"},{\"answer_id\":\"608\",\"qid\":\"pkn63\",\"answer\":\"Interaksi\",\"weight\":\"0\"},{\"answer_id\":\"609\",\"qid\":\"pkn63\",\"answer\":\"Sublimasi\",\"weight\":\"0\"},{\"answer_id\":\"610\",\"qid\":\"pkn63\",\"answer\":\"Identifikasi\",\"weight\":\"0\"}]},{\"qid\":\"pkn47\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Taraf\\\" ?\",\"correct_describe\":\"Pembahasan, Taraf artinya tingkatan , derajat\",\"answer\":[{\"answer_id\":\"526\",\"qid\":\"pkn47\",\"answer\":\"Jejak\",\"weight\":\"0\"},{\"answer_id\":\"527\",\"qid\":\"pkn47\",\"answer\":\"Derajat\",\"weight\":\"100\"},{\"answer_id\":\"528\",\"qid\":\"pkn47\",\"answer\":\"Cacat\",\"weight\":\"0\"},{\"answer_id\":\"529\",\"qid\":\"pkn47\",\"answer\":\"Hidup\",\"weight\":\"0\"},{\"answer_id\":\"530\",\"qid\":\"pkn47\",\"answer\":\"Anggaran\",\"weight\":\"0\"}]},{\"qid\":\"pkn19\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Hidung = Mencium : Mata = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"400\",\"qid\":\"pkn19\",\"answer\":\"Biru\",\"weight\":\"0\"},{\"answer_id\":\"401\",\"qid\":\"pkn19\",\"answer\":\"Kuping\",\"weight\":\"0\"},{\"answer_id\":\"402\",\"qid\":\"pkn19\",\"answer\":\"Melihat\",\"weight\":\"100\"},{\"answer_id\":\"403\",\"qid\":\"pkn19\",\"answer\":\"Harum\",\"weight\":\"0\"}]},{\"qid\":\"pkn65\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Motilitas\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"616\",\"qid\":\"pkn65\",\"answer\":\"Angka Kematian\",\"weight\":\"0\"},{\"answer_id\":\"617\",\"qid\":\"pkn65\",\"answer\":\"Sebangsa Hewan\",\"weight\":\"0\"},{\"answer_id\":\"618\",\"qid\":\"pkn65\",\"answer\":\"Gerak\",\"weight\":\"100\"},{\"answer_id\":\"619\",\"qid\":\"pkn65\",\"answer\":\"Dorongan\",\"weight\":\"0\"},{\"answer_id\":\"620\",\"qid\":\"pkn65\",\"answer\":\"Pukulan\",\"weight\":\"0\"}]},{\"qid\":\"pkn18\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Manusia = Makan : Mobil = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"396\",\"qid\":\"pkn18\",\"answer\":\"Api\",\"weight\":\"0\"},{\"answer_id\":\"397\",\"qid\":\"pkn18\",\"answer\":\"Bensin\",\"weight\":\"100\"},{\"answer_id\":\"398\",\"qid\":\"pkn18\",\"answer\":\"Gas\",\"weight\":\"0\"},{\"answer_id\":\"399\",\"qid\":\"pkn18\",\"answer\":\"Oli\",\"weight\":\"0\"}]},{\"qid\":\"pkn58\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Naratif\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"581\",\"qid\":\"pkn58\",\"answer\":\"Prosa\",\"weight\":\"0\"},{\"answer_id\":\"582\",\"qid\":\"pkn58\",\"answer\":\"Puisi\",\"weight\":\"0\"},{\"answer_id\":\"583\",\"qid\":\"pkn58\",\"answer\":\"Deskriptif\",\"weight\":\"100\"},{\"answer_id\":\"584\",\"qid\":\"pkn58\",\"answer\":\"Timbalbalik\",\"weight\":\"0\"},{\"answer_id\":\"585\",\"qid\":\"pkn58\",\"answer\":\"Terinci\",\"weight\":\"0\"}]},{\"qid\":\"pkn94\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Tolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy020.jpg\\\" width=\\\"400\\\" height=\\\"300\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"824\",\"qid\":\"pkn94\",\"answer\":\"A\",\"weight\":\"100\"},{\"answer_id\":\"825\",\"qid\":\"pkn94\",\"answer\":\"B\",\"weight\":\"0\"},{\"answer_id\":\"826\",\"qid\":\"pkn94\",\"answer\":\"C\",\"weight\":\"0\"},{\"answer_id\":\"827\",\"qid\":\"pkn94\",\"answer\":\"D\",\"weight\":\"0\"},{\"answer_id\":\"828\",\"qid\":\"pkn94\",\"answer\":\"E\",\"weight\":\"0\"},{\"answer_id\":\"829\",\"qid\":\"pkn94\",\"answer\":\"F\",\"weight\":\"0\"},{\"answer_id\":\"830\",\"qid\":\"pkn94\",\"answer\":\"Semua jawaban salah\",\"weight\":\"0\"},{\"answer_id\":\"831\",\"qid\":\"pkn94\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn91\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Tolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy017.png\\\" width=\\\"400\\\" height=\\\"400\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"799\",\"qid\":\"pkn91\",\"answer\":\"1\",\"weight\":\"100\"},{\"answer_id\":\"800\",\"qid\":\"pkn91\",\"answer\":\"2\",\"weight\":\"0\"},{\"answer_id\":\"801\",\"qid\":\"pkn91\",\"answer\":\"3\",\"weight\":\"0\"},{\"answer_id\":\"802\",\"qid\":\"pkn91\",\"answer\":\"4\",\"weight\":\"0\"},{\"answer_id\":\"803\",\"qid\":\"pkn91\",\"answer\":\"5\",\"weight\":\"0\"},{\"answer_id\":\"804\",\"qid\":\"pkn91\",\"answer\":\"6\",\"weight\":\"0\"},{\"answer_id\":\"805\",\"qid\":\"pkn91\",\"answer\":\"7\",\"weight\":\"0\"},{\"answer_id\":\"806\",\"qid\":\"pkn91\",\"answer\":\"8\",\"weight\":\"0\"}]},{\"qid\":\"pkn76\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Tolong tunjukkan jawaban terbaik untuk melengkapi analogi di bawah ini.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy002.png\\\" width=\\\"400\\\" height=\\\"200\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"674\",\"qid\":\"pkn76\",\"answer\":\"A\",\"weight\":\"100\"},{\"answer_id\":\"675\",\"qid\":\"pkn76\",\"answer\":\"B\",\"weight\":\"0\"},{\"answer_id\":\"676\",\"qid\":\"pkn76\",\"answer\":\"C\",\"weight\":\"0\"},{\"answer_id\":\"677\",\"qid\":\"pkn76\",\"answer\":\"D\",\"weight\":\"0\"},{\"answer_id\":\"678\",\"qid\":\"pkn76\",\"answer\":\"E\",\"weight\":\"0\"},{\"answer_id\":\"679\",\"qid\":\"pkn76\",\"answer\":\"F\",\"weight\":\"0\"},{\"answer_id\":\"680\",\"qid\":\"pkn76\",\"answer\":\"Semua jawaban salah\",\"weight\":\"0\"},{\"answer_id\":\"681\",\"qid\":\"pkn76\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn59\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Kisi-Kisi\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"586\",\"qid\":\"pkn59\",\"answer\":\"Alat Penangkap Ikan\",\"weight\":\"0\"},{\"answer_id\":\"587\",\"qid\":\"pkn59\",\"answer\":\"Alat Hitung\",\"weight\":\"0\"},{\"answer_id\":\"588\",\"qid\":\"pkn59\",\"answer\":\"Tabel\",\"weight\":\"0\"},{\"answer_id\":\"589\",\"qid\":\"pkn59\",\"answer\":\"Terali\",\"weight\":\"100\"},{\"answer_id\":\"590\",\"qid\":\"pkn59\",\"answer\":\"Pola Kerja\",\"weight\":\"0\"}]},{\"qid\":\"pkn90\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Tolong tunjukkan jawaban terbaik untuk melengkapi analogi di bawah ini.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy016.png\\\" width=\\\"400\\\" height=\\\"200\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"791\",\"qid\":\"pkn90\",\"answer\":\"A\",\"weight\":\"100\"},{\"answer_id\":\"792\",\"qid\":\"pkn90\",\"answer\":\"B\",\"weight\":\"0\"},{\"answer_id\":\"793\",\"qid\":\"pkn90\",\"answer\":\"C\",\"weight\":\"0\"},{\"answer_id\":\"794\",\"qid\":\"pkn90\",\"answer\":\"D\",\"weight\":\"0\"},{\"answer_id\":\"795\",\"qid\":\"pkn90\",\"answer\":\"E\",\"weight\":\"0\"},{\"answer_id\":\"796\",\"qid\":\"pkn90\",\"answer\":\"F\",\"weight\":\"0\"},{\"answer_id\":\"797\",\"qid\":\"pkn90\",\"answer\":\"Semua jawaban salah\",\"weight\":\"0\"},{\"answer_id\":\"798\",\"qid\":\"pkn90\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn64\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Daur\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"611\",\"qid\":\"pkn64\",\"answer\":\"Baur\",\"weight\":\"0\"},{\"answer_id\":\"612\",\"qid\":\"pkn64\",\"answer\":\"Produk\",\"weight\":\"0\"},{\"answer_id\":\"613\",\"qid\":\"pkn64\",\"answer\":\"Tingkatan\",\"weight\":\"0\"},{\"answer_id\":\"614\",\"qid\":\"pkn64\",\"answer\":\"Proses\",\"weight\":\"0\"},{\"answer_id\":\"615\",\"qid\":\"pkn64\",\"answer\":\"Siklus\",\"weight\":\"100\"}]},{\"qid\":\"pkn55\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Gesit\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"566\",\"qid\":\"pkn55\",\"answer\":\"Lincah\",\"weight\":\"100\"},{\"answer_id\":\"567\",\"qid\":\"pkn55\",\"answer\":\"Malas\",\"weight\":\"0\"},{\"answer_id\":\"568\",\"qid\":\"pkn55\",\"answer\":\"Sombong\",\"weight\":\"0\"},{\"answer_id\":\"569\",\"qid\":\"pkn55\",\"answer\":\"Ramah\",\"weight\":\"0\"},{\"answer_id\":\"570\",\"qid\":\"pkn55\",\"answer\":\"Gembira\",\"weight\":\"0\"}]},{\"qid\":\"pkn83\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Silahkan pilih respon yang sesuai dengan gambar.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy009.jpg\\\" width=\\\"300\\\" height=\\\"400\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"733\",\"qid\":\"pkn83\",\"answer\":\"Marah\",\"weight\":\"100\"},{\"answer_id\":\"734\",\"qid\":\"pkn83\",\"answer\":\"Jijik\",\"weight\":\"0\"},{\"answer_id\":\"735\",\"qid\":\"pkn83\",\"answer\":\"Takut\",\"weight\":\"0\"},{\"answer_id\":\"736\",\"qid\":\"pkn83\",\"answer\":\"Gembira\",\"weight\":\"0\"},{\"answer_id\":\"737\",\"qid\":\"pkn83\",\"answer\":\"Biasa saja\",\"weight\":\"0\"},{\"answer_id\":\"738\",\"qid\":\"pkn83\",\"answer\":\"Sedih\",\"weight\":\"0\"},{\"answer_id\":\"739\",\"qid\":\"pkn83\",\"answer\":\"Terkejut\",\"weight\":\"0\"},{\"answer_id\":\"740\",\"qid\":\"pkn83\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn67\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Imsomnia\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"626\",\"qid\":\"pkn67\",\"answer\":\"Tidur\",\"weight\":\"0\"},{\"answer_id\":\"627\",\"qid\":\"pkn67\",\"answer\":\"Cemas\",\"weight\":\"0\"},{\"answer_id\":\"628\",\"qid\":\"pkn67\",\"answer\":\"Sedih\",\"weight\":\"0\"},{\"answer_id\":\"629\",\"qid\":\"pkn67\",\"answer\":\"Tak Bisa Tidur\",\"weight\":\"100\"},{\"answer_id\":\"630\",\"qid\":\"pkn67\",\"answer\":\"Kenyataan\",\"weight\":\"0\"}]},{\"qid\":\"pkn50\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Eksak\\\" ?\",\"correct_describe\":\"Eksak berarti akurat, cermat, tentu, tepat. Nyata artinya ada, tunggal artinya satu-satunya, sesuai artinya selaras, dan terbukti berarti keterangan nyata.\",\"answer\":[{\"answer_id\":\"541\",\"qid\":\"pkn50\",\"answer\":\"Nyata\",\"weight\":\"0\"},{\"answer_id\":\"542\",\"qid\":\"pkn50\",\"answer\":\"Tunggal\",\"weight\":\"0\"},{\"answer_id\":\"543\",\"qid\":\"pkn50\",\"answer\":\"Sesuai\",\"weight\":\"0\"},{\"answer_id\":\"544\",\"qid\":\"pkn50\",\"answer\":\"Tepat\",\"weight\":\"100\"},{\"answer_id\":\"545\",\"qid\":\"pkn50\",\"answer\":\"Terbukti\",\"weight\":\"0\"}]},{\"qid\":\"pkn82\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Silahkan pilih respon yang sesuai dengan gambar.<br><img src=\\\"http:\\/\\/local.4hire.com\\/4hire\\/public_assets\\/uploads\\/psy008.jpg\\\" width=\\\"300\\\" height=\\\"400\\\"\\/>\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"725\",\"qid\":\"pkn82\",\"answer\":\"Marah\",\"weight\":\"100\"},{\"answer_id\":\"726\",\"qid\":\"pkn82\",\"answer\":\"Jijik\",\"weight\":\"0\"},{\"answer_id\":\"727\",\"qid\":\"pkn82\",\"answer\":\"Takut\",\"weight\":\"0\"},{\"answer_id\":\"728\",\"qid\":\"pkn82\",\"answer\":\"Gembira\",\"weight\":\"0\"},{\"answer_id\":\"729\",\"qid\":\"pkn82\",\"answer\":\"Biasa saja\",\"weight\":\"0\"},{\"answer_id\":\"730\",\"qid\":\"pkn82\",\"answer\":\"Sedih\",\"weight\":\"0\"},{\"answer_id\":\"731\",\"qid\":\"pkn82\",\"answer\":\"Terkejut\",\"weight\":\"0\"},{\"answer_id\":\"732\",\"qid\":\"pkn82\",\"answer\":\"Saya tidak tahu\",\"weight\":\"0\"}]},{\"qid\":\"pkn20\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Minum\\u00a0= Dahaga : Makan = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"404\",\"qid\":\"pkn20\",\"answer\":\"Enak\",\"weight\":\"0\"},{\"answer_id\":\"405\",\"qid\":\"pkn20\",\"answer\":\"Lapar\",\"weight\":\"100\"},{\"answer_id\":\"406\",\"qid\":\"pkn20\",\"answer\":\"Sayuran\",\"weight\":\"0\"},{\"answer_id\":\"407\",\"qid\":\"pkn20\",\"answer\":\"Lambat\",\"weight\":\"0\"}]},{\"qid\":\"pkn56\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Baku\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"571\",\"qid\":\"pkn56\",\"answer\":\"Perkiraan\",\"weight\":\"0\"},{\"answer_id\":\"572\",\"qid\":\"pkn56\",\"answer\":\"Standar\",\"weight\":\"100\"},{\"answer_id\":\"573\",\"qid\":\"pkn56\",\"answer\":\"Umum\",\"weight\":\"0\"},{\"answer_id\":\"574\",\"qid\":\"pkn56\",\"answer\":\"Normal\",\"weight\":\"0\"},{\"answer_id\":\"575\",\"qid\":\"pkn56\",\"answer\":\"Asli\",\"weight\":\"0\"}]},{\"qid\":\"pkn66\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Nabati\\\" ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"621\",\"qid\":\"pkn66\",\"answer\":\"Hewani\",\"weight\":\"0\"},{\"answer_id\":\"622\",\"qid\":\"pkn66\",\"answer\":\"Hayati\",\"weight\":\"0\"},{\"answer_id\":\"623\",\"qid\":\"pkn66\",\"answer\":\"Kodrati\",\"weight\":\"0\"},{\"answer_id\":\"624\",\"qid\":\"pkn66\",\"answer\":\"Botani\",\"weight\":\"100\"},{\"answer_id\":\"625\",\"qid\":\"pkn66\",\"answer\":\"Insani\",\"weight\":\"0\"}]},{\"qid\":\"pkn35\",\"type\":\"1\",\"category\":\"1\",\"question\":\"4 3 8 6 16 12 ...\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"466\",\"qid\":\"pkn35\",\"answer\":\"47\",\"weight\":\"0\"},{\"answer_id\":\"467\",\"qid\":\"pkn35\",\"answer\":\"32\",\"weight\":\"100\"},{\"answer_id\":\"468\",\"qid\":\"pkn35\",\"answer\":\"48\",\"weight\":\"0\"},{\"answer_id\":\"469\",\"qid\":\"pkn35\",\"answer\":\"49\",\"weight\":\"0\"},{\"answer_id\":\"470\",\"qid\":\"pkn35\",\"answer\":\"78\",\"weight\":\"0\"}]},{\"qid\":\"pkn24\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Bulan = Tahun : Hari = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"420\",\"qid\":\"pkn24\",\"answer\":\"Maret\",\"weight\":\"0\"},{\"answer_id\":\"421\",\"qid\":\"pkn24\",\"answer\":\"Juni\",\"weight\":\"0\"},{\"answer_id\":\"422\",\"qid\":\"pkn24\",\"answer\":\"Libur\",\"weight\":\"0\"},{\"answer_id\":\"423\",\"qid\":\"pkn24\",\"answer\":\"Minggu\",\"weight\":\"100\"}]},{\"qid\":\"pkn40\",\"type\":\"1\",\"category\":\"1\",\"question\":\"13 14 17 22 29 38 \\u2026\",\"correct_describe\":\"Pola ditambahkan +1,+3,+5,+7,+9\",\"answer\":[{\"answer_id\":\"491\",\"qid\":\"pkn40\",\"answer\":\"45\",\"weight\":\"0\"},{\"answer_id\":\"492\",\"qid\":\"pkn40\",\"answer\":\"47\",\"weight\":\"0\"},{\"answer_id\":\"493\",\"qid\":\"pkn40\",\"answer\":\"49\",\"weight\":\"100\"},{\"answer_id\":\"494\",\"qid\":\"pkn40\",\"answer\":\"50\",\"weight\":\"0\"},{\"answer_id\":\"495\",\"qid\":\"pkn40\",\"answer\":\"51\",\"weight\":\"0\"}]},{\"qid\":\"pkn21\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Maret = April : Juli = ?\",\"correct_describe\":\"-\",\"answer\":[{\"answer_id\":\"408\",\"qid\":\"pkn21\",\"answer\":\"Bulan\",\"weight\":\"0\"},{\"answer_id\":\"409\",\"qid\":\"pkn21\",\"answer\":\"Juli\",\"weight\":\"0\"},{\"answer_id\":\"410\",\"qid\":\"pkn21\",\"answer\":\"Agustus\",\"weight\":\"100\"},{\"answer_id\":\"411\",\"qid\":\"pkn21\",\"answer\":\"Panas\",\"weight\":\"0\"}]},{\"qid\":\"pkn12\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Emas : Tambang --> ? : ?\",\"correct_describe\":\"Pembahasan, kayu dihasilkan dari pohon dan emasi dihasilkandari tambang\",\"answer\":[{\"answer_id\":\"371\",\"qid\":\"pkn12\",\"answer\":\"Garam : Logam\",\"weight\":\"0\"},{\"answer_id\":\"372\",\"qid\":\"pkn12\",\"answer\":\"Permata : Perhiasan\",\"weight\":\"0\"},{\"answer_id\":\"373\",\"qid\":\"pkn12\",\"answer\":\"Kayu : Pohon\",\"weight\":\"100\"},{\"answer_id\":\"374\",\"qid\":\"pkn12\",\"answer\":\"Pramuka : Seragam\",\"weight\":\"0\"},{\"answer_id\":\"375\",\"qid\":\"pkn12\",\"answer\":\"Lidah : Mulut\",\"weight\":\"0\"}]},{\"qid\":\"pkn45\",\"type\":\"1\",\"category\":\"1\",\"question\":\"90 20 90 20 45 40 ... \\u2026\",\"correct_describe\":\"Terdapat dua pola: Pola pertama dibagi dengan bilangan yang berurutan naik, Pola kedua dikali dengan bilangan berurutan naik.\",\"answer\":[{\"answer_id\":\"516\",\"qid\":\"pkn45\",\"answer\":\"20 dan 60\",\"weight\":\"0\"},{\"answer_id\":\"517\",\"qid\":\"pkn45\",\"answer\":\"10 dan 20\",\"weight\":\"0\"},{\"answer_id\":\"518\",\"qid\":\"pkn45\",\"answer\":\"25 dan 80\",\"weight\":\"0\"},{\"answer_id\":\"519\",\"qid\":\"pkn45\",\"answer\":\"65 dan 90\",\"weight\":\"0\"},{\"answer_id\":\"520\",\"qid\":\"pkn45\",\"answer\":\"15 dan 120\",\"weight\":\"100\"}]},{\"qid\":\"pkn38\",\"type\":\"1\",\"category\":\"1\",\"question\":\"30 32 33 35 42 48 ... ... 63\",\"correct_describe\":\"Terdapat tiga pola: Pola pertama ditambahkan (+5), 30 + 5 = 35, 35 + 5 + 4 <> (+10), 32 + 10 = 42, 42 + 14 = 52 <> Pola yang ketiga ditambahkan (+15), 33 + 15 = 48, 48 + 15 = 63\",\"answer\":[{\"answer_id\":\"481\",\"qid\":\"pkn38\",\"answer\":\"40 dan 52\",\"weight\":\"100\"},{\"answer_id\":\"482\",\"qid\":\"pkn38\",\"answer\":\"54 dan 60\",\"weight\":\"0\"},{\"answer_id\":\"483\",\"qid\":\"pkn38\",\"answer\":\"42 dan 52\",\"weight\":\"0\"},{\"answer_id\":\"484\",\"qid\":\"pkn38\",\"answer\":\"55 dan 59\",\"weight\":\"0\"},{\"answer_id\":\"485\",\"qid\":\"pkn38\",\"answer\":\"50 dan 60\",\"weight\":\"0\"}]},{\"qid\":\"pkn41\",\"type\":\"1\",\"category\":\"1\",\"question\":\"A R D P ... \\u2026\",\"correct_describe\":\"Pola yang pertama melompat 3 huruf sesudahnya. Pola yang kedua melompat 2 huruf sedudahnya. \",\"answer\":[{\"answer_id\":\"496\",\"qid\":\"pkn41\",\"answer\":\"G dan N\",\"weight\":\"100\"},{\"answer_id\":\"497\",\"qid\":\"pkn41\",\"answer\":\"E dan O\",\"weight\":\"0\"},{\"answer_id\":\"498\",\"qid\":\"pkn41\",\"answer\":\"H dan M\",\"weight\":\"0\"},{\"answer_id\":\"499\",\"qid\":\"pkn41\",\"answer\":\"F dan Q\",\"weight\":\"0\"},{\"answer_id\":\"500\",\"qid\":\"pkn41\",\"answer\":\"E dan M\",\"weight\":\"0\"}]},{\"qid\":\"pkn48\",\"type\":\"1\",\"category\":\"1\",\"question\":\"Sinonim dari kata \\\"Rabat\\\" ?\",\"correct_describe\":\"Pembahasan, Rabat artinya potongan harga, diskon\",\"answer\":[{\"answer_id\":\"531\",\"qid\":\"pkn48\",\"answer\":\"Penggandaan\",\"weight\":\"100\"},{\"answer_id\":\"532\",\"qid\":\"pkn48\",\"answer\":\"Potongan\",\"weight\":\"0\"},{\"answer_id\":\"533\",\"qid\":\"pkn48\",\"answer\":\"Pencairan\",\"weight\":\"0\"},{\"answer_id\":\"534\",\"qid\":\"pkn48\",\"answer\":\"Penyimpangan\",\"weight\":\"0\"},{\"answer_id\":\"535\",\"qid\":\"pkn48\",\"answer\":\"Penyimpangan\",\"weight\":\"0\"}]}]', '1', '3', '50', '1', '0', '30', '0', '2018-02-28 11:28:59', '4', '2018-02-28 11:29:01', '0', '2', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=832 DEFAULT CHARSET=latin1;

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
INSERT INTO `tbl_question_bank_answer` VALUES ('665', 'pkn74', 'Semu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 15:02:28', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('666', 'pkn75', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('667', 'pkn75', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('668', 'pkn75', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('669', 'pkn75', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('670', 'pkn75', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('671', 'pkn75', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('672', 'pkn75', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 15:17:04', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('673', 'pkn75', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('674', 'pkn76', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('675', 'pkn76', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('676', 'pkn76', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('677', 'pkn76', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('678', 'pkn76', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('679', 'pkn76', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('680', 'pkn76', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('681', 'pkn76', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('682', 'pkn77', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('683', 'pkn77', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('684', 'pkn77', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('685', 'pkn77', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('686', 'pkn77', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('687', 'pkn77', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('688', 'pkn77', 'G', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('689', 'pkn77', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 15:21:53', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('690', 'pkn77', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 15:21:48', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('691', 'pkn78', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('692', 'pkn78', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('693', 'pkn78', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('694', 'pkn78', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('695', 'pkn78', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('696', 'pkn78', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('697', 'pkn78', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('698', 'pkn78', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 15:27:57', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('699', 'pkn79', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('700', 'pkn79', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('701', 'pkn79', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('702', 'pkn79', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('703', 'pkn79', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('704', 'pkn79', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('705', 'pkn79', 'G', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('706', 'pkn79', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('707', 'pkn79', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('708', 'pkn80', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('709', 'pkn80', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('710', 'pkn80', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('711', 'pkn80', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('712', 'pkn80', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('713', 'pkn80', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('714', 'pkn80', 'G', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('715', 'pkn80', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('716', 'pkn80', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('717', 'pkn81', '1', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('718', 'pkn81', '2', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('719', 'pkn81', '3', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('720', 'pkn81', '4', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('721', 'pkn81', '5', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('722', 'pkn81', '6', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('723', 'pkn81', '7', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('724', 'pkn81', '8', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('725', 'pkn82', 'Marah', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('726', 'pkn82', 'Jijik', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('727', 'pkn82', 'Takut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('728', 'pkn82', 'Gembira', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('729', 'pkn82', 'Biasa saja', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('730', 'pkn82', 'Sedih', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('731', 'pkn82', 'Terkejut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('732', 'pkn82', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('733', 'pkn83', 'Marah', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('734', 'pkn83', 'Jijik', '0', '2018-02-22 18:55:41', '4', '2018-02-23 15:54:25', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('735', 'pkn83', 'Takut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('736', 'pkn83', 'Gembira', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('737', 'pkn83', 'Biasa saja', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('738', 'pkn83', 'Sedih', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('739', 'pkn83', 'Terkejut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('740', 'pkn83', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('741', 'pkn84', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('742', 'pkn84', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('743', 'pkn84', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('744', 'pkn84', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('745', 'pkn84', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('746', 'pkn84', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('747', 'pkn84', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('748', 'pkn84', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('749', 'pkn85', 'Marah', '100', '2018-02-22 18:55:41', '4', '2018-02-23 16:41:36', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('750', 'pkn85', 'Jijik', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:41:44', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('751', 'pkn85', 'Takut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('752', 'pkn85', 'Gembira', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('753', 'pkn85', 'Biasa saja', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('754', 'pkn85', 'Sedih', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('755', 'pkn85', 'Terkejut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('756', 'pkn85', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('757', 'pkn86', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('758', 'pkn86', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('759', 'pkn86', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('760', 'pkn86', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('761', 'pkn86', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('762', 'pkn86', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('763', 'pkn86', 'G', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('764', 'pkn86', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:46:32', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('765', 'pkn86', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('766', 'pkn87', '1', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('767', 'pkn87', '2', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('768', 'pkn87', '3', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('769', 'pkn87', '4', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('770', 'pkn87', '5', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('771', 'pkn87', '6', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('772', 'pkn87', '7', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('773', 'pkn87', '8', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('774', 'pkn88', 'Marah', '100', '2018-02-22 18:55:41', '4', '2018-02-23 16:41:36', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('775', 'pkn88', 'Jijik', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:52:07', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('776', 'pkn88', 'Takut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:52:09', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('777', 'pkn88', 'Gembira', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:52:10', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('778', 'pkn88', 'Biasa saja', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:52:11', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('779', 'pkn88', 'Sedih', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:52:12', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('780', 'pkn88', 'Terkejut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:52:13', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('781', 'pkn88', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:52:14', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('782', 'pkn89', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('783', 'pkn89', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('784', 'pkn89', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:52:35', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('785', 'pkn89', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('786', 'pkn89', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('787', 'pkn89', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('788', 'pkn89', 'G', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('789', 'pkn89', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('790', 'pkn89', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('791', 'pkn90', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('792', 'pkn90', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('793', 'pkn90', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('794', 'pkn90', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('795', 'pkn90', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('796', 'pkn90', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('797', 'pkn90', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:55:10', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('798', 'pkn90', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('799', 'pkn91', '1', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('800', 'pkn91', '2', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('801', 'pkn91', '3', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('802', 'pkn91', '4', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('803', 'pkn91', '5', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('804', 'pkn91', '6', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('805', 'pkn91', '7', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('806', 'pkn91', '8', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('807', 'pkn92', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('808', 'pkn92', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:59:12', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('809', 'pkn92', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('810', 'pkn92', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('811', 'pkn92', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('812', 'pkn92', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('813', 'pkn92', 'G', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('814', 'pkn92', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('815', 'pkn92', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('816', 'pkn93', 'Marah', '100', '2018-02-22 18:55:41', '4', '2018-02-23 16:41:36', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('817', 'pkn93', 'Jijik', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:41:36', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('818', 'pkn93', 'Takut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:41:36', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('819', 'pkn93', 'Gembira', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:41:36', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('820', 'pkn93', 'Biasa saja', '0', '2018-02-22 18:55:41', '4', '2018-02-23 17:02:13', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('821', 'pkn93', 'Sedih', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:41:36', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('822', 'pkn93', 'Terkejut', '0', '2018-02-22 18:55:41', '4', '2018-02-23 17:02:36', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('823', 'pkn93', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 16:41:36', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('824', 'pkn94', 'A', '100', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('825', 'pkn94', 'B', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('826', 'pkn94', 'C', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('827', 'pkn94', 'D', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('828', 'pkn94', 'E', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('829', 'pkn94', 'F', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('830', 'pkn94', 'Semua jawaban salah', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');
INSERT INTO `tbl_question_bank_answer` VALUES ('831', 'pkn94', 'Saya tidak tahu', '0', '2018-02-22 18:55:41', '4', '2018-02-23 14:32:45', '4', '1', '0');

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
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn13', '1', '1', '1', 'Garpu = Makan : Pisau = ?', '-', '2018-02-22 17:18:06', '4', '2018-02-23 11:24:43', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn14', '1', '1', '1', 'Dapur = Panas : Lemari ES = ?', '-', '2018-02-22 17:18:06', '4', '2018-02-23 11:28:42', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn15', '1', '1', '1', 'Malam = Gelap : Siang = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:28:47', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn16', '1', '1', '1', 'Menangis = Sedih : Tertawa = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:31:10', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn17', '1', '1', '1', 'Lari = Lelah  : Mandi = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:31:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn18', '1', '1', '1', 'Manusia = Makan : Mobil = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:31:48', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn19', '1', '1', '1', 'Hidung = Mencium : Mata = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:32:09', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn20', '1', '1', '1', 'Minum = Dahaga : Makan = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:32:55', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn21', '1', '1', '1', 'Maret = April : Juli = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:33:17', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn22', '1', '1', '1', 'Harimau = Binatang : Mawar = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:33:30', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn23', '1', '1', '1', 'Kebaya = Wanita : Bulu = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:33:47', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn24', '1', '1', '1', 'Bulan = Tahun : Hari = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:34:06', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn25', '1', '1', '1', 'Tambang = Batubara : Sungai = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:34:25', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn26', '1', '1', '1', 'Kota = Walikota : Tentara = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:34:39', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn27', '1', '1', '1', 'Intan = Perrmata : Sangkur = ?', '-', '2018-02-22 17:18:07', '4', '2018-02-23 11:34:57', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn28', '1', '1', '1', 'Orang = Berjalan : Ular = ?', '-', '2018-02-22 17:18:08', '4', '2018-02-23 11:35:11', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn29', '1', '1', '1', 'Topi = Kepala : Sepatu = ?', '-', '2018-02-22 17:18:08', '4', '2018-02-23 11:35:24', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn30', '1', '1', '1', 'Murid = Guru : Kanak-Kanak = ?', '-', '2018-02-22 17:18:08', '4', '2018-02-23 11:35:42', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn31', '1', '1', '1', 'Burung = Udara : Ikan = ?', '-', '2018-02-22 17:18:08', '4', '2018-02-23 11:35:56', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn32', '1', '1', '1', 'Lobak = Sayuran : Bandeng = ?', '-', '2018-02-22 17:18:08', '4', '2018-02-23 11:36:16', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn33', '1', '1', '1', 'Antonim dari kata \"Terbenam\" ?', 'Pembahasan, terbenam artinya tenggelam, terkubur jadi, lawankata dari terbenam adalah terkatung atau terapung', '2018-02-22 17:18:08', '4', '2018-02-28 11:14:39', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn34', '1', '1', '1', 'Antonim dari kata \"Preman\" ?', 'Pembahasan, preman adalah bukan militer, bukan sipil, sebutanorang jahat termasuk penodong, pemeras dan perampok, jadi lawan kawapreman adalah dinas, pegawai pemerinta, pegawai militer', '2018-02-22 17:18:08', '4', '2018-02-28 11:14:39', '4', '1', '0');
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
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn46', '1', '1', '3', 'Sinonim dari kata \"Merdeka\" ?', 'Pembahasan Merdeka artinya bebas, berdiri sendiri (dari penjajahan, dan sebagainya)', '2018-02-22 17:18:09', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn47', '1', '1', '3', 'Sinonim dari kata \"Taraf\" ?', 'Pembahasan, Taraf artinya tingkatan , derajat', '2018-02-22 17:18:09', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn48', '1', '1', '3', 'Sinonim dari kata \"Rabat\" ?', 'Pembahasan, Rabat artinya potongan harga, diskon', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn49', '1', '1', '3', 'Sinonim dari kata \"Deportasi\" ?', 'Deportasi artinya pembuangan, pengasingan, atau pengungsian seseorang ke luar negeri sebagai hukuman atau karena orang tersebut tidak berhak tinggal disuatu daerah. Dari semua pilihan yang tersedia, kata yang memiliki makna mendekati kata deportasi hanya pengusiran.', '2018-02-22 17:18:10', '4', '2018-02-28 11:31:08', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn50', '1', '1', '3', 'Sinonim dari kata \"Eksak\" ?', 'Eksak berarti akurat, cermat, tentu, tepat. Nyata artinya ada, tunggal artinya satu-satunya, sesuai artinya selaras, dan terbukti berarti keterangan nyata.', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn51', '1', '1', '3', 'Sinonim dari kata \"Membran\" ?', 'Kata membran merupakan istilah dalam bidang Biologi yang semakna dengan jaringan, polikel, selaput. Kata plasma, inti, kelenjar, dan saluran juga termasuk istilah dalam bidang Biologi, tetapi tidak memiliki arti yang sama dengan membran.', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn52', '1', '1', '3', 'Sinonim dari kata \"Glosari\" ?', 'Glosari berarti daftar istilah, daftar kata, vokabuler, kosakata. Sedangkan, istilah merupakan gabungan kata yang mengungkapkan makna.', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn53', '1', '1', '3', 'Sinonim dari kata \"Kolerasi\" ?', 'Korelasi merupakan kata serapan dari bahasa inggris corrrelation, yang berarti hubungan', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn54', '1', '1', '3', 'Sinonim dari kata \"Vibrasi\" ?', '-', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn55', '1', '1', '3', 'Sinonim dari kata \"Gesit\" ?', '-', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn56', '1', '1', '3', 'Sinonim dari kata \"Baku\" ?', '-', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn57', '1', '1', '3', 'Sinonim dari kata \"Protesis\" ?', '-', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn58', '1', '1', '3', 'Sinonim dari kata \"Naratif\" ?', '-', '2018-02-22 17:18:10', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn59', '1', '1', '3', 'Sinonim dari kata \"Kisi-Kisi\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn60', '1', '1', '3', 'Sinonim dari kata \"Wahana\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn61', '1', '1', '3', 'Sinonim dari kata \"Proteksi\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn62', '1', '1', '3', 'Sinonim dari kata \"Kesahihan\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn63', '1', '1', '3', 'Sinonim dari kata \"Iterasi\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:27', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn64', '1', '1', '3', 'Sinonim dari kata \"Daur\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn65', '1', '1', '3', 'Sinonim dari kata \"Motilitas\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn66', '1', '1', '3', 'Sinonim dari kata \"Nabati\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn67', '1', '1', '3', 'Sinonim dari kata \"Imsomnia\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn68', '1', '1', '3', 'Sinonim dari kata \"Transendental\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn69', '1', '1', '3', 'Sinonim dari kata \"Asumsi\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn70', '1', '1', '3', 'Sinonim dari kata \"Mengecoh\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn71', '1', '1', '3', 'Sinonim dari kata \"Ditenggak\" ?', '-', '2018-02-22 17:18:11', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn72', '1', '1', '3', 'Sinonim dari kata \"Sutradara\"  ?', '-', '2018-02-22 17:18:12', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn73', '1', '1', '3', 'Sinonim dari kata \"Pemugaran\" ?', '-', '2018-02-22 17:18:12', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn74', '1', '1', '3', 'Sinonim dari kata \"Rancu\" ?', '-', '2018-02-22 17:18:12', '4', '2018-02-28 11:15:28', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn75', '1', '1', '4', '\r\nTolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy001.jpg\" width=\"400\" height=\"300\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:13', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn76', '1', '1', '4', 'Tolong tunjukkan jawaban terbaik untuk melengkapi analogi di bawah ini.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy002.png\" width=\"400\" height=\"200\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:13', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn77', '1', '1', '4', 'Semua kubus di bawah ini memiliki gambar yang berbeda di setiap sisinya. Pilihlah yang bisa mewakili rotasi dari kubus berlabel X.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy003.png\" width=\"400\" height=\"200\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:13', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn78', '1', '1', '4', 'Tolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy004.jpg\" width=\"400\" height=\"300\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:13', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn79', '1', '1', '4', 'Bagian mana yang membuat pola ini cocok?<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy005.png\" width=\"400\" height=\"300\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:13', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn80', '1', '1', '4', 'Semua kubus di bawah ini memiliki gambar yang berbeda di setiap sisinya. Pilihlah yang bisa mewakili rotasi dari kubus berlabel X.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy006.png\" width=\"400\" height=\"200\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:13', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn81', '1', '1', '4', 'Tolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy007.png\" width=\"400\" height=\"400\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:13', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn82', '1', '1', '4', 'Silahkan pilih respon yang sesuai dengan gambar.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy008.jpg\" width=\"300\" height=\"400\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn83', '1', '1', '4', 'Silahkan pilih respon yang sesuai dengan gambar.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy009.jpg\" width=\"300\" height=\"400\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn84', '1', '1', '4', 'Tolong tunjukkan jawaban terbaik untuk melengkapi analogi di bawah ini.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy010.png\" width=\"400\" height=\"200\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn85', '1', '1', '4', 'Silahkan pilih respon yang sesuai dengan gambar.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy011.jpg\" width=\"300\" height=\"400\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn86', '1', '1', '4', 'Bagian mana yang membuat pola ini cocok?<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy012.png\" width=\"400\" height=\"300\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn87', '1', '1', '4', 'Tolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy013.png\" width=\"400\" height=\"400\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn88', '1', '1', '4', 'Silahkan pilih respon yang sesuai dengan gambar.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy014.jpg\" width=\"300\" height=\"400\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn89', '1', '1', '4', 'Bagian mana yang membuat pola ini cocok?<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy015.png\" width=\"400\" height=\"300\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn90', '1', '1', '4', 'Tolong tunjukkan jawaban terbaik untuk melengkapi analogi di bawah ini.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy016.png\" width=\"400\" height=\"200\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn91', '1', '1', '4', 'Tolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy017.png\" width=\"400\" height=\"400\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn92', '1', '1', '4', 'Semua kubus di bawah ini memiliki gambar yang berbeda di setiap sisinya. Pilihlah yang bisa mewakili rotasi dari kubus berlabel X.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy018.png\" width=\"400\" height=\"200\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn93', '1', '1', '4', 'Silahkan pilih respon yang sesuai dengan gambar.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy019.jpg\" width=\"300\" height=\"400\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');
INSERT INTO `tbl_quiestion_bank` VALUES ('pkn94', '1', '1', '4', 'Tolong tunjukkan jawaban terbaik untuk melengkapi gambar di bawah ini.<br><img src=\"http://local.4hire.com/4hire/public_assets/uploads/psy020.jpg\" width=\"400\" height=\"300\"/>', '-', '2018-02-22 17:18:12', '4', '2018-02-23 17:06:14', '4', '1', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
