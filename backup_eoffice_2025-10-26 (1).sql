-- E-OFFICE PDAM Backup
-- Generated: 2025-10-26 15:20:47


-- Table structure for table `disposisi`
DROP TABLE IF EXISTS `disposisi`;
CREATE TABLE `disposisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_disposisi` varchar(50) NOT NULL,
  `id_surat_masuk` int(11) NOT NULL,
  `dari_user` int(11) NOT NULL,
  `kepada_user` int(11) NOT NULL,
  `id_disposisi_induk` int(11) DEFAULT NULL,
  `instruksi` text NOT NULL,
  `catatan` text DEFAULT NULL,
  `batas_waktu` date DEFAULT NULL,
  `prioritas` enum('rendah','sedang','tinggi','segera') NOT NULL DEFAULT 'sedang',
  `status` enum('menunggu','diproses','selesai') NOT NULL DEFAULT 'menunggu',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_surat_masuk` (`id_surat_masuk`),
  KEY `dari_user` (`dari_user`),
  KEY `kepada_user` (`kepada_user`),
  KEY `fk_disposisi_induk` (`id_disposisi_induk`),
  CONSTRAINT `disposisi_ibfk_1` FOREIGN KEY (`id_surat_masuk`) REFERENCES `surat_masuk` (`id`),
  CONSTRAINT `disposisi_ibfk_2` FOREIGN KEY (`dari_user`) REFERENCES `users` (`id`),
  CONSTRAINT `disposisi_ibfk_3` FOREIGN KEY (`kepada_user`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_disposisi_induk` FOREIGN KEY (`id_disposisi_induk`) REFERENCES `disposisi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `disposisi`
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('1', 'TEST-NO-3', '2', '4', '3', NULL, 'TEST INSTRUKSI', 'TEST CATATAN', '2025-10-31', 'rendah', 'selesai', '2025-10-02 21:15:48');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('3', '4545', '2', '2', '1', NULL, 'dfg', 'dfg', '2025-10-08', 'sedang', 'selesai', '2025-10-23 01:39:17');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('4', '5263', '2', '2', '1', NULL, 'dddd', 'ddd', '2025-10-23', 'tinggi', 'menunggu', '2025-10-23 05:58:04');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('5', '123', '2', '2', '1', NULL, 'hgjhgj', 'bvnvj', '2025-10-23', 'tinggi', 'menunggu', '2025-10-23 06:02:34');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('6', '123', '2', '2', '1', NULL, 'hgjhgj', 'bvnvj', '2025-10-23', 'tinggi', 'menunggu', '2025-10-23 06:02:36');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('7', '123', '2', '2', '1', NULL, 'hgjhgj', 'bvnvj', '2025-10-23', 'tinggi', 'menunggu', '2025-10-23 06:02:37');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('8', '123g', '2', '2', '1', NULL, 'bmbmn', 'dgfhnlkj', '2025-10-23', 'sedang', 'menunggu', '2025-10-23 06:06:28');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('9', '123', '2', '2', '1', NULL, 'hgjhgj', 'bvnvj', '2025-10-23', 'tinggi', 'menunggu', '2025-10-23 06:09:02');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('10', '123g', '2', '2', '1', NULL, 'bmbmn', 'dgfhnlkj', '2025-10-23', 'sedang', 'menunggu', '2025-10-23 06:10:33');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('11', '123g', '2', '2', '1', NULL, 'bmbmn', 'dgfhnlkjv', '2025-10-23', 'sedang', 'menunggu', '2025-10-23 06:12:13');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('12', '123', '2', '2', '1', NULL, 'sad', 'sadsa', '2025-10-21', 'sedang', 'menunggu', '2025-10-25 14:58:17');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('13', '123', '2', '2', '1', NULL, 'sad', 'sadsa', '2025-10-21', 'sedang', 'menunggu', '2025-10-25 15:00:14');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('14', '123', '2', '2', '1', NULL, 'sad', 'sadsa', '2025-10-21', 'sedang', 'menunggu', '2025-10-25 15:00:43');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('15', '123ue', '2', '2', '1', NULL, 'sad', 'sadsa', '2025-10-07', 'sedang', 'menunggu', '2025-10-25 15:01:28');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('16', '125-test-no-23', '2', '2', '1', NULL, 'sdfs', 'fdsfs', '2025-10-22', 'sedang', 'menunggu', '2025-10-25 15:08:37');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('17', '123', '32', '4', '2', '4', '', NULL, '2025-10-06', 'sedang', 'menunggu', '2025-10-25 15:12:21');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('18', '125-test-no-23', '2', '2', '1', NULL, 'sdfs', 'fdsfs', '2025-10-22', 'sedang', 'menunggu', '2025-10-25 15:24:30');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('19', '125-test-no-23', '2', '2', '1', NULL, 'sdfs', 'fdsfs', '2025-10-22', 'sedang', 'menunggu', '2025-10-25 15:27:30');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('20', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:32:11');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('21', '125-test-no-23', '2', '2', '1', NULL, 'sdfs', 'fdsfs', '2025-10-22', 'sedang', 'menunggu', '2025-10-25 15:32:36');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('22', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:38:03');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('23', '125-test-no-23', '2', '2', '1', NULL, 'sdfs', 'fdsfs', '2025-10-22', 'sedang', 'menunggu', '2025-10-25 15:39:02');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('24', '125-test-no-23', '2', '2', '1', NULL, 'sdfs', 'fdsfs', '2025-10-22', 'sedang', 'menunggu', '2025-10-25 15:39:41');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('25', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:40:58');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('26', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:43:14');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('27', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:43:17');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('28', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:43:17');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('29', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:43:21');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('30', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:43:22');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('31', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:43:23');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('32', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:43:23');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('33', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:43:25');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('34', '123', '2', '2', '1', NULL, 'kkkk', 'kkkkkkkk', '2025-10-25', 'sedang', 'menunggu', '2025-10-25 15:43:57');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('35', 'xcz43', '2', '2', '1', '1', 'jd', 'ds', '2025-10-24', 'sedang', 'menunggu', '2025-10-25 16:05:32');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('36', '125-test-no-23', '2', '2', '1', '1', 'sdfs', 'fdsfs', '2025-10-22', 'sedang', 'menunggu', '2025-10-25 16:06:29');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('37', 'xcz43', '2', '2', '1', '12', 'jd', 'ds', '2025-10-24', 'sedang', 'menunggu', '2025-10-25 16:07:16');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('38', '125-test-no-23', '2', '2', '1', '3', 'sdfs', 'fdsfs', '2025-10-22', 'sedang', 'menunggu', '2025-10-25 16:09:52');
INSERT INTO `disposisi` (id, nomor_disposisi, id_surat_masuk, dari_user, kepada_user, id_disposisi_induk, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('39', 'xcz43', '2', '2', '3', '1', 'NGOPI', 'NGOPI', '2025-10-26', 'sedang', 'diproses', '2025-10-25 16:10:58');


-- Table structure for table `disposisi_nota`
DROP TABLE IF EXISTS `disposisi_nota`;
CREATE TABLE `disposisi_nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_disposisi` varchar(50) NOT NULL,
  `id_nota_dinas` int(11) NOT NULL,
  `dari_user` int(11) NOT NULL,
  `kepada_user` int(11) NOT NULL,
  `instruksi` text NOT NULL,
  `catatan` text DEFAULT NULL,
  `batas_waktu` date DEFAULT NULL,
  `prioritas` enum('rendah','sedang','tinggi','segera') NOT NULL,
  `status` enum('menunggu','diproses','selesai') NOT NULL DEFAULT 'menunggu',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_nota_dinas` (`id_nota_dinas`),
  KEY `dari_user` (`dari_user`),
  KEY `kepada_user` (`kepada_user`),
  CONSTRAINT `disposisi_nota_ibfk_1` FOREIGN KEY (`id_nota_dinas`) REFERENCES `nota_dinas` (`id`),
  CONSTRAINT `disposisi_nota_ibfk_2` FOREIGN KEY (`dari_user`) REFERENCES `users` (`id`),
  CONSTRAINT `disposisi_nota_ibfk_3` FOREIGN KEY (`kepada_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `disposisi_nota`
INSERT INTO `disposisi_nota` (id, nomor_disposisi, id_nota_dinas, dari_user, kepada_user, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('1', 'DIS-ND-001', '1', '2', '1', 'alih', 'tes kirim', '2025-10-31', 'segera', 'diproses', '2025-09-22 16:08:59');
INSERT INTO `disposisi_nota` (id, nomor_disposisi, id_nota_dinas, dari_user, kepada_user, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('2', 'DIS-ND-002', '2', '2', '2', 'Segera proses pembelian dan distribusikan ke semua bagian', 'NGOPI', NULL, 'sedang', 'menunggu', '2025-09-22 16:08:59');
INSERT INTO `disposisi_nota` (id, nomor_disposisi, id_nota_dinas, dari_user, kepada_user, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('3', '12', '1', '1', '2', 'n,..lghj', 'm,.m,lllghj', NULL, 'sedang', 'diproses', '2025-10-21 00:30:09');
INSERT INTO `disposisi_nota` (id, nomor_disposisi, id_nota_dinas, dari_user, kepada_user, instruksi, catatan, batas_waktu, prioritas, status, created_at) VALUES ('4', 'xcz43', '1', '1', '1', 'sdfsda', 'sdfsdf', NULL, 'sedang', 'diproses', '2025-10-23 17:34:39');


-- Table structure for table `letters`
DROP TABLE IF EXISTS `letters`;
CREATE TABLE `letters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `letter_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `letters`
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('2', 'cxzcxz', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-04 22:09:32');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('3', 'dsf', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-04 23:51:21');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('6', 'dds', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-06 21:01:01');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('7', 'ss', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Senin]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-06 21:11:33');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('8', 'sd', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Aaanda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-06 21:52:35');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('9', 'sadsa', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-06 21:54:59');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('10', 'aa', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-06 22:15:32');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('11', 'dsad', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-06 22:19:12');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('12', 'gg', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-08 23:35:02');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('13', 'gg', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-08 23:35:03');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('14', 'gg', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-08 23:35:03');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('15', 'gg', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-08 23:35:03');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('17', 'ytu', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-09 00:00:14');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('18', 'mmn', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-09 01:51:27');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('19', 'nmm', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-09 01:51:58');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('20', 'sad', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 01:39:26');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('21', 'dsad', 'Yth. Bapmmmmmmmmmmmmmmmmak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [xzcz]
Waktu: [Waktu]
Tempat: [cxzcxzcxz]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-10 02:05:42');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('22', 'dsf', 'Yth. Bapmmmmmmmmmmmmmmmmak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-10 02:21:22');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('23', 'dsf', 'Yth. Bapmmmmmmmmmmmmmmmmak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-10 02:21:23');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('24', 'dsf', 'Yth. Bapmmmmmmmmmmmmmmmmak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-10 02:21:24');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('25', 'dsf', 'Yth. Bapmmmmmmmmmmmmmmmmak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-10 02:21:24');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('26', 'dsf', 'Yth. Bapmmmmmmmmmmmmmmmmak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-10 02:21:24');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('27', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:36');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('28', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:37');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('29', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:38');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('30', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:38');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('31', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:39');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('32', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:39');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('33', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:39');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('34', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:40');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('35', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:41');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('36', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:21:41');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('37', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:23:01');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('38', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:23:02');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('39', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:23:03');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('40', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:23:04');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('41', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:23:04');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('42', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:23:08');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('43', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:23:11');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('44', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:23:12');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('45', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:24:16');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('46', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:24:16');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('47', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:24:18');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('48', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:24:18');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('49', 'dsf', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'pemberitahuan', '2025-10-10 02:24:19');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('50', 'dsf', 'Yth. Bapmmmmmmmmmmmmmmmmak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'undangan_rapat', '2025-10-10 02:24:24');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('51', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:25:30');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('52', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:25:31');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('53', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:25:32');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('54', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:25:33');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('55', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:25:33');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('56', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:25:34');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('57', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:25:34');
INSERT INTO `letters` (id, subject, content, letter_type, created_at) VALUES ('58', 'dsf', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'permohonan_izin', '2025-10-10 02:25:35');


-- Table structure for table `migrations`
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Table structure for table `nota_dinas`
DROP TABLE IF EXISTS `nota_dinas`;
CREATE TABLE `nota_dinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_nota` varchar(50) NOT NULL,
  `tanggal_nota` date NOT NULL,
  `perihal` text NOT NULL,
  `isi_nota` text NOT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'menunggu',
  `created_by` int(11) NOT NULL,
  `approved_by` int(11) NOT NULL,
  `fwd` enum('kbg','kcb') DEFAULT 'kbg',
  `approved_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `approved_by` (`approved_by`),
  CONSTRAINT `nota_dinas_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `nota_dinas_ibfk_2` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `nota_dinas`
INSERT INTO `nota_dinas` (id, nomor_nota, tanggal_nota, perihal, isi_nota, lampiran, status, created_by, approved_by, fwd, approved_at, created_at) VALUES ('1', 'ND-001/2020', '2024-11-15', 'Pengajuan Dana Operasionaljjjjjjjjjjj', 'Pengajuan dana operasional untuk kegiatan maintenance peralatan kantor...', NULL, 'disetujui', '2', '2', 'kbg', '2025-10-25 16:50:34', '2025-09-22 16:08:59');
INSERT INTO `nota_dinas` (id, nomor_nota, tanggal_nota, perihal, isi_nota, lampiran, status, created_by, approved_by, fwd, approved_at, created_at) VALUES ('2', 'ND-002/2024', '2024-11-14', 'Permintaan Pembelian ATK', 'Permintaan pembelian alat tulis kantor untuk kebutuhan bulan Desember 2024...', 'anis.jpg', 'disetujui', '2', '3', 'kbg', '2025-10-23 17:40:39', '2025-09-22 16:08:59');
INSERT INTO `nota_dinas` (id, nomor_nota, tanggal_nota, perihal, isi_nota, lampiran, status, created_by, approved_by, fwd, approved_at, created_at) VALUES ('5', '999999', '2025-10-26', 'ngopi', 'ngopi', NULL, 'menunggu', '4', '2', 'kbg', '2025-10-26 17:39:22', '2025-10-26 17:39:24');


-- Table structure for table `surat_keluar`
DROP TABLE IF EXISTS `surat_keluar`;
CREATE TABLE `surat_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_surat` varchar(50) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `perihal` text NOT NULL,
  `isi_surat` text NOT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `status` enum('draft','menunggu_ttd','terkirim') NOT NULL DEFAULT 'draft',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `surat_keluar_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `surat_keluar`
INSERT INTO `surat_keluar` (id, nomor_surat, tanggal_keluar, tujuan, perihal, isi_surat, lampiran, status, created_by, created_at) VALUES ('1', 'TEST-NO-6', '2025-10-02', 'CABANG PAMULIHAN', 'PENTING', 'TEING', 'LAM tEST', 'menunggu_ttd', '2', '2025-10-01 21:25:29');


-- Table structure for table `surat_masuk`
DROP TABLE IF EXISTS `surat_masuk`;
CREATE TABLE `surat_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_surat` enum('Surat Edaran','Surat Undangan','Surat Pengumuman','Surat Tugas','Surat Keputusan','Surat Pemberitahuan','Surat Pengumuman') NOT NULL,
  `nomor_surat` text NOT NULL,
  `tanggal_surat` date NOT NULL,
  `perihal` text NOT NULL,
  `letter_type` varchar(255) NOT NULL,
  `isi_surat` text NOT NULL,
  `sifat_surat` enum('biasa','penting','rahasia') NOT NULL,
  `klasifikasi_surat` enum('umum','penting','rahasia','sangat rahasia') NOT NULL,
  `derajat_keamanan` enum('terbuka','terbatas','rahasia') NOT NULL,
  `tempat_pembuatan` varchar(255) NOT NULL,
  `jabatan_pembuat` varchar(255) NOT NULL,
  `catatan_tambahan` text NOT NULL,
  `berkas_surat` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`user_id`),
  CONSTRAINT `surat_masuk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `surat_masuk`
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('2', '', 'SM-002/2024', '2024-11-14', 'Permintaan Data Pelanggan', '', '', 'biasa', 'umum', 'terbuka', '', '', '', '', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('14', 'Surat Edaran', '6', '2025-10-14', 'uiui', 'i', '', 'penting', 'umum', 'terbuka', 'i', 'i', 'i', 'D', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('31', 'Surat Edaran', '123', '2025-10-09', 'as', 'as', 'permohonan_izin', 'biasa', 'umum', 'terbuka', 'zz', 'zz', 'zz', 'format file surat undangan desa.docx', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('32', 'Surat Edaran', 'kkk', '2025-10-10', 'mn', 'permohonan_izin', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'penting', 'umum', 'terbatas', 'kk', 'mmm', 'kkk', 'CamScanner 22-09-2025 08.10-1.pdf', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('33', 'Surat Edaran', '123', '2025-10-10', 'Penting', 'undangan_rapat', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'biasa', 'umum', 'terbuka', 'Sumedang', 'Siapa', 'Oke', 'CamScanner 22-09-2025 08.10-1.pdf', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('34', 'Surat Edaran', 'sdfsd', '2025-10-10', 'dsfds', 'undangan_rapat', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'penting', 'umum', 'terbatas', 'czxc', 'zxc', 'xczxc', 'e-ktp cigintung.xlsx', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('35', 'Surat Undangan', '123', '2025-10-12', 'ssss', 'undangan_rapat', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'penting', 'umum', 'terbuka', 'xzczx', 'czx', 'zxczx', 'WhatsApp Image 2025-10-05 at 19.09.22.jpeg', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('36', 'Surat Pengumuman', 'sds', '2025-10-14', 'sdsa', 'undangan_rapat', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'penting', 'umum', 'terbatas', 'sdas', 'sdas', 'Zsd', 'DATA BALITA MBG POSYANDU DAHLIA.pdf', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('37', 'Surat Undangan', '123456', '2025-10-15', 'fdsafddsa', 'permohonan_izin', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'biasa', 'umum', 'terbuka', 'dsfsdfsd', 'dfsdfs', 'fsdfsdfsdf', 'helmi_data.docx', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('38', 'Surat Edaran', '1212', '2025-10-10', 'dfhf', 'permohonan_izin', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'penting', 'umum', 'terbatas', 'fhd', 'dfh', 'fhd', 'BEDA_NAMA.pdf', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('39', 'Surat Edaran', '123456789', '2025-10-15', 'gfh', 'undangan_rapat', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'biasa', 'umum', 'terbuka', 'fghgfh', 'gfhgf', 'gfhfgh', 'WhatsApp Image 2025-10-17 at 11.57.44.jpeg', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('40', 'Surat Edaran', 'DDDDD44444', '2025-10-22', 'gfhj', 'permohonan_izin', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'penting', 'umum', 'terbuka', 'ghjf', 'gfhj', 'ghjfh', 'WhatsApp Image 2025-10-17 at 11.57.43.jpeg', '1');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('41', 'Surat Undangan', 'ujang02', '2025-10-21', 'zxc', 'permohonan_izin', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'biasa', 'umum', 'terbatas', 'zxc', 'zxc', 'zxc', 'WhatsApp Image 2025-10-17 at 11.57.44(2).jpeg', '3');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('42', 'Surat Undangan', '11111fffsdf', '2025-10-22', 'sdfsd', 'undangan_rapat', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'penting', 'umum', 'terbuka', 'zxzz', 'xcz', 'xzc', 'Undangan Sosialisasi Aplikasi SIMSPAM.pdf', '1');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('43', 'Surat Edaran', '2452425', '2025-10-15', 'cv', 'pemberitahuan', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'biasa', 'umum', 'terbatas', 'xcv', 'xcv', 'dffffffgfd', 'Undangan Sosialisasi Aplikasi SIMSPAM.pdf', '3');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('44', 'Surat Edaran', '424242424242', '2025-10-23', 'czxc', 'permohonan_izin', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'penting', 'umum', 'terbuka', 'cxvcx', 'xcv', 'xcvxc', NULL, '3');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('45', 'Surat Edaran', 'aaaaa11111', '2025-10-23', 'xzcxz', 'permohonan_izin', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'penting', 'umum', 'terbuka', 'sads', 'asds', 'sdsad', 'BEDA NAMA MA UPA.pdf', '3');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('46', 'Surat Edaran', 'bbbbb2222', '2025-10-23', 'vnv', 'permohonan_izin', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'penting', 'umum', 'terbuka', 'fdf', 'sdf', 'sfsd', 'BEDA_NAMA.pdf', '2');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('47', 'Surat Undangan', '44444444b', '2025-10-23', 'sdfds', 'permohonan_izin', 'Hal: Permohonan Izin

Kepada Yth. [Nama Pihak Tertuju],
Di tempat

Dengan hormat,

Saya yang bertanda tangan di bawah ini:
Nama: [Nama Anda]
Jabatan: [Jabatan Anda]

Dengan ini mengajukan permohonan izin untuk tidak masuk kerja/kuliah pada tanggal [Tanggal Izin] dikarenakan [Alasan Izin].

Demikian permohonan ini saya sampaikan, atas perhatian Bapak/Ibu saya ucapkan terima kasih.

Hormat saya,

[Nama Anda]', 'biasa', 'umum', 'terbuka', 'sdf', 'sdf', 'dsfs', 'Cigintung.docx', '3');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('48', 'Surat Edaran', '001/0002/82', '2025-10-23', 'EDARAN KEPALA CABANG', 'pemberitahuan', 'Nomor: [Nomor Surat]
Perihal: Pemberitahuan

Kepada Yth. [Pihak Penerima],

Bersama ini kami beritahukan bahwa akan diadakan [Kegiatan] pada [Tanggal Kegiatan].

Demikian untuk diketahui dan dilaksanakan.

[Kota], [Tanggal]
[Jabatan],

[Nama Pejabat]', 'penting', 'umum', 'rahasia', 'BANDUNG', 'KABAG', 'OK', NULL, '3');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('49', 'Surat Edaran', 'SE/014/10/2025', '2025-10-31', 'PENTING PISAN', 'undangan_rapat', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'biasa', 'umum', 'terbuka', 'BAndung', 'KACAB', 'AAAAA', NULL, '4');
INSERT INTO `surat_masuk` (id, jenis_surat, nomor_surat, tanggal_surat, perihal, letter_type, isi_surat, sifat_surat, klasifikasi_surat, derajat_keamanan, tempat_pembuatan, jabatan_pembuat, catatan_tambahan, berkas_surat, user_id) VALUES ('50', 'Surat Undangan', 'SU/006/10/2025', '2025-10-26', 'pemnting', 'undangan_rapat', 'Yth. Bapak/Ibu/Sdr/i,

Dengan hormat,

Sehubungddddddddddddan akan diadakannya rapat koordinasi, kami mengundang Bapak/Ibu/Sdr/i untuk hadir pada:

Hari/Tanggal: [Hari/Tanggal]
Waktu: [Waktu]
Tempat: [Tempat]

Atas perhatian dan kehadirannya, kami ucapkan terima kasih.

Hormat kami,
[Nama Penanggung Jawab]', 'rahasia', 'umum', 'terbuka', 'aaa', 'kacab', 'nbnbgnbcvn', NULL, '4');


-- Table structure for table `test`
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(255) NOT NULL,
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `timestamps` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `test`
INSERT INTO `test` (id, template, data, timestamps) VALUES ('2', 'Surat Undangan', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"ww\",\"isi_surat\":\"www\"}', '2025-10-04 08:31:13');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('3', 'template1', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"Jajang\",\"isi_surat\":\"Kami Harap anda datang\"}', '2025-10-04 08:20:41');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('4', 'template2', '{\"_method\":\"POST\",\"surat_id\":null,\"perihal\":\"aa\",\"nama_penerima\":\"aaa\",\"isi_surat\":\"aaa\"}', '2025-10-04 08:29:19');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('5', 'template1', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"Ibu Dirum\",\"isi_surat\":\"Vrivikasi data Baca Meter\"}', '2025-10-04 18:29:47');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('6', 'template1', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"ccss\",\"isi_surat\":\"sss\"}', '2025-10-04 18:32:10');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('7', 'template1', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"dd\",\"isi_surat\":\"dd\"}', '2025-10-04 18:40:33');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('8', 'template1', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"xcvxc\",\"isi_surat\":\"xcvxcv\"}', '2025-10-05 00:20:18');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('9', 'template1', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"xcvxc\",\"isi_surat\":\"xcvxcv\"}', '2025-10-05 00:21:26');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('10', 'template1', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"sd\",\"isi_surat\":\"sadsa\"}', '2025-10-09 02:37:05');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('11', 'template1', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"x\",\"isi_surat\":\"s\"}', '2025-10-09 06:01:11');
INSERT INTO `test` (id, template, data, timestamps) VALUES ('12', 'template1', '{\"_method\":\"POST\",\"surat_id\":null,\"nama_penerima\":\"A\",\"isi_surat\":\"a\"}', '2025-10-10 01:12:38');


-- Table structure for table `users`
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('admin','staff','manager') NOT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `users`
INSERT INTO `users` (id, username, password, nama_lengkap, email, role, jabatan, status, created_at) VALUES ('1', 'admin', '$2y$10$uEdDU6Y.aknYPSdhxwyTQuLf.LS3ppK/AoQ8ouW1KvL6G67qdH5SS', 'Administrator', 'admin@pdam.com', 'admin', 'Administrator', 'aktif', '2025-09-22 14:58:37');
INSERT INTO `users` (id, username, password, nama_lengkap, email, role, jabatan, status, created_at) VALUES ('2', 'ahmad', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ahmad Fauzi', 'ahmad@pdam.com', 'manager', 'Direktur Utama', 'aktif', '2025-09-22 14:58:37');
INSERT INTO `users` (id, username, password, nama_lengkap, email, role, jabatan, status, created_at) VALUES ('3', 'siti', '$2y$10$tizO3A0TTdsZnds1qQkwKOM3OLqwVrbgfilz.ebNmtUWAdqmWz8DS', 'Siti Nurhaliza', 'siti@pdam.com', 'staff', 'Staff Keuangan', 'aktif', '2025-09-22 14:58:37');
INSERT INTO `users` (id, username, password, nama_lengkap, email, role, jabatan, status, created_at) VALUES ('4', 'budi', '$2y$10$sC3QYdiFKtlRXk3BtJRbRuaqZOKp/s.t6Yaji7Jr.zxpyCjDKNNky', 'Budi Santoso', 'budi@pdam.com', 'staff', 'Staff Teknik', 'aktif', '2025-09-22 14:58:37');

