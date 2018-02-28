/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : online_test

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-28 11:32:24
*/

SET FOREIGN_KEY_CHECKS=0;

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
SET FOREIGN_KEY_CHECKS=1;
