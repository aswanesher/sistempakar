/*
MySQL Data Transfer
Source Host: localhost
Source Database: sp_kawasaki
Target Host: localhost
Target Database: sp_kawasaki
Date: 13-Jan-15 3:38:49 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for diagnosa_mobo_pro_ram
-- ----------------------------
DROP TABLE IF EXISTS `diagnosa_mobo_pro_ram`;
CREATE TABLE `diagnosa_mobo_pro_ram` (
  `ID` int(11) NOT NULL,
  `solusi_dan_pertanyaan` varchar(500) NOT NULL,
  `bila_benar` int(11) NOT NULL,
  `bila_salah` int(11) NOT NULL,
  `mulai` char(1) NOT NULL,
  `selesai` char(1) NOT NULL,
  `penyebab` text,
  `solusi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for diagnosa_psu
-- ----------------------------
DROP TABLE IF EXISTS `diagnosa_psu`;
CREATE TABLE `diagnosa_psu` (
  `ID` int(11) NOT NULL,
  `solusi_dan_pertanyaan` varchar(500) NOT NULL,
  `bila_benar` int(11) NOT NULL,
  `bila_salah` int(11) NOT NULL,
  `mulai` char(1) NOT NULL,
  `selesai` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for diagnosa_vga
-- ----------------------------
DROP TABLE IF EXISTS `diagnosa_vga`;
CREATE TABLE `diagnosa_vga` (
  `ID` int(11) NOT NULL,
  `solusi_dan_pertanyaan` varchar(500) NOT NULL,
  `bila_benar` int(11) NOT NULL,
  `bila_salah` int(11) NOT NULL,
  `mulai` char(1) NOT NULL,
  `selesai` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('0', 'Maaf, belum ada solusi untuk masalah anda', '0', '0', 'N', 'Y', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('1', 'Apakah suara menjadi sangat keras/cempreng/seperti kaleng?', '2', '6', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('2', 'Apakah tenaga dibawah 7000rpm setelan pabrik tetap normal namun ketika masuk 7000rpm motor tidak bertenaga?', '3', '10', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('4', 'Apakah saat digeber di rpm tinggi dan langsung tutup gas superkips langsung macet?', '5', '11', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('5', 'Superkips Macet', '0', '0', 'N', 'Y', '1. Terlalu jarang memainkan superkips<br>2. Oli samping yang tidak cocok', 'Bersihkan blok superkips (berkarat karena adanya sisa dari pembakaran yang tidak maksimal)');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('6', 'Suara mesin berisik?', '7', '8', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('7', 'Cepat rusak seher dan ring seher', '0', '0', 'N', 'Y', 'Salah atu penyebabnya yaitu karena mengganti knalpot standar ke knalpot racing', '1.	Gunakan kanlpot yang sesuai<br>\r\n2.	Pastikan setingan karburator atau buangan pada mesin sesuai dengan type knalpot yang dipakai<br>\r\n3.	Pastikan setingan pompa oli samping juga telah sesuai\r\n');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('3', 'Apabila superkips dalam posisi katup terbuka maka tenaga bawah akan hilang dan berat, namun ketika mencapai Rpm 7000 spt normal kembali?', '4', '10', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('8', 'Mesin berisik tidak wajar?', '9', '10', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('9', 'Stang seher', '0', '0', 'N', 'Y', 'Stang seher rusak', 'Ganti yang baru');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('10', 'Suara mesin berisik dan tenaga kurang?', '11', '13', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('11', 'Suara knalpot jadi cempreng', '12', '1', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('12', 'Boring', '0', '0', 'N', 'Y', '1. Boring aus, biasanya usia pemakaian<br>2. stelan oli samping yang tidak sesuai atau oli samping tidak berjalan lancer', '1.	Ganti boring<br>\r\n2.	Stell oli samping yang sesuai, jangan terlalu boros atau irit<br>\r\n3.	Slang oli samping mampet dan bersihkan<br>\r\n4.	Service pompa oli\r\n');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('13', 'Apakah Tarikan lemah?', '14', '15', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('14', 'Karburator', '0', '0', 'N', 'Y', 'Campuran bahan bakar dan udara yang tidak sempurna', 'Mengganti mail jet dengan ukuran yang lebih besar. Itu terjadi karena asupan bahan bakar tidak sesuai dengan standar atau istilahnya kering');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('15', 'Apakah Tenaga ngempos?', '16', '17', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('16', 'Karburator', '0', '0', 'N', 'Y', '1.	Terjadi kerusakan pada busi, karbu yang kotor, CDI, spull dan boring<br>\r\n2.	Stelan kopling<br>\r\n3.	Plat kopling yang sudah tipis\r\n', '1.	Cek busi, bersihkan karburator, periksa CDI dan spull dan boring<br>\r\n2.	Stelan kopling yang sesuai<br>\r\n3.	Ganti Plat kopling\r\n');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('17', 'Mesin tersendat saat stasioner?', '18', '19', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('18', 'Karburator', '0', '0', 'N', 'Y', 'Karena campuran bahan bakar yang ada di venture (lubang karbu) dengan udara tidak cukup banyak dan seimbang, hasilnya pembakaran tidak sempurna', '1.	Putar stelan skrup udara searah jarum jam atau arah menutup, hal itu dimaksudkan untuk memperbanyak campuran udara dengan bahan bakar<br>\r\n2.	Pindah posisi pilot jet ke tingkat yang lebih besar<br>\r\n3.	Ganti jarum skep atau throttle dengan jarum yang berdiameter lebih kecil, hal itu dimaksudkan agar campuran udara dan bahan bakar di venture yang akan disemburkan keruang bakar mesin lebih besar\r\n');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('19', 'Brebet pada tarikan bawah', '20', '21', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('20', 'Karburator', '0', '0', 'N', 'Y', '1.	Karburator yang kotor<br>\r\n2.	Busi yang sudah tidak stabil<br>\r\n', '1.	Service karburator<br>\r\n2.	Cek busi, bila perlu ganti sama yang baru\r\n');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('21', 'Bensin banjir /Busi basah?', '22', '23', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('22', 'Karburator', '0', '0', 'N', 'Y', 'Jarum pelampung pada karbu rusak atau terganjal benda asing', 'Bersihkan atau ganti sama yang baru');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('23', 'Bukaan gas yang suka nyangkut, gejala ini bisa ddeteksi dengan terasa beratnya grip gas atau putaran mesin tidak langsung turun saat gas di tarik dalam?', '24', '25', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('24', 'Karburator', '0', '0', 'N', 'Y', '1.	karena tabung skep tidak memiliki lapisan krom sehingga pergerakan naik turunya tabung kurang lancar.<br>\r\n2.	Karbu yang kotor\r\n', '1.	Mengganti tabung skep karburator standar dengan karburator PE 28 atau PWL 28<br>\r\n2.	Bersihkan karbburator dengan menjaga kebersihan saringan air filter\r\n');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('25', 'Apakah mesin cepat panas terutama dalam keadaan jalanan macet?', '26', '0', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('26', 'Suara mesin kasar atau ngelitik?', '27', '0', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('27', 'Tarikan berat?', '28', '29', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('28', 'Mesin over heat', '0', '0', 'N', 'Y', '1.	Kabel oli samping terhambat<br>\r\n2.	Stelan oli samping yang tidak sesuai<br>\r\n3.	Air radiator yang sudah berkurang<br>\r\n4.	Suara mesin kasar karena kepala silinder bengkok akibat panas yang berlebihan<br>\r\n5.	Oli tercampur air dan system pelumasan terganggu yang mengakibatkan piston macet<br>\r\n6.	Kebocoran slang radiator\r\n', '1.	Cek kabel oli samping dan pompa oli samping<br>\r\n2.	Kalau kabel terhambat bersihkan, dan kalau pompa oli samping rusak ganti sama yang baru<br>\r\n3.	Cek stelan oli samping (harus sesuai), jangan terlalu boros ataupun irit<br>\r\n4.	Buka tutup radiator, periksa air radiator, apabila berkurang segera tambahin<br>\r\n5.	Perhatikan 3 komponennya yaitu klep tekan, per dan klep vakum masih bagus atau tidak, jika per berkarat bersihkan.<br>\r\n6.	Cek klep vakum pada radiator, apabila rusak ganti yang baru<br>\r\n7.	Cek slang radiator, kemungkinan ada kebocoran cirinya pada bagian tertentu pada slang mulai menggelembung. Kalau perlu ganti salang radiator<br>');
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('29', 'Terasa ada gangguan pembakaran pada waktu menambah kecepatan tinggi?', '30', '1', 'Y', 'N', null, null);
INSERT INTO `diagnosa_mobo_pro_ram` VALUES ('30', 'Mesin over heat', '0', '0', 'N', 'Y', '1.	Oli samping tidak sesuai<br>\r\n2.	Saringan udara tidak ada atau kotor<br>\r\n3.	Endapan atau sisa pembakaran  endapan busi, banyak menempel pada permukaan insulator dan elektroda busi dengan warna yang bermacam2<br>\r\n', '1.	Pake oli samping yang sesuai<br>\r\n2.	Bersihkan saringan udara atau selalu memakai saringan udara<br>\r\n3.	Gunakan oli mesinyang sesuai<br>\r\n4.	Ganti busi<br>');
INSERT INTO `diagnosa_psu` VALUES ('1', 'Apakah ada listrik masuk ?', '2', '3', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('2', 'Apakah muncul boot screen BIOS/OS ?', '4', '26', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('3', 'Sumber listrik AC dalam kondisi baik ?', '5', '6', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('0', 'Maaf Sementara Sistem Belum Dapat Mendiagnosa Masalah Anda.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('6', 'Permasalahan pada terminal listrik.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('26', 'Proses Pada Diagnosis Kerusakan VGA.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('4', 'Komputer Baru dirakit ?', '7', '8', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('7', 'Periksa Kebutuhan Daya, apakah cukup.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('5', 'Apakah Pengaturan Voltage sudah benar ? Default 110/220 V.', '9', '10', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('10', 'Pilih Pengaturan Voltage yang benar.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('8', 'Menyala setelah booting kedua?', '11', '12', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('11', 'Masalah Terjadi Pada Power Supply.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('9', 'Apakah tombol power switch sudah terhubung dengan benar pd motherboard ?', '13', '14', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('14', 'Periksa buku manual motherboard, sambungkan tombol panel depan dengan benar.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('12', 'Terdengar suara \"BEEP\" ?', '27', '15', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('27', 'Proses pada diagnosis kerusakan motherboard, prosesor dan Ram.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('13', 'Tombol Power Rusak ?', '16', '17', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('16', 'Ganti tombol power atau gunakan tombol reset.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('15', 'Apakah ada komponen baru yang terpasang?', '18', '19', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('18', 'Lepas komponen yang baru dipasang, coba lagi.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('17', ' Konektor daya dari PSU sudah tersambung dengan benar pd motherboard? ', '19', '20', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('19', 'Apakah hardisk dapat berputar? ', '21', '22', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('21', 'Apakah ada kemungkinan VGA, Soundcard adapter dll yang bermasalah?', '23', '24', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('22', 'Coba dengan konektor SATA yg lain, apa dapat berputar?', '25', '26', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('23', 'Lepaskan semua adapter kecuali video card', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('25', 'Kabel konektor SATA atau konektor dari power supply rusak.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('26', 'Coba hardisk di komputer lain.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('24', 'Coba lepas semua komponen dan rangkai diluar case, apa bisa menyala ?', '27', '28', 'Y', 'N');
INSERT INTO `diagnosa_psu` VALUES ('27', 'Kemungkinan terjadi konsleting pd casing ketika motherboard terpasang .', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_psu` VALUES ('28', 'Ganti Power Supply.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('1', 'Apakah ada daya listrik masuk ?', '2', '30', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('30', 'Proses ke diagnosis kerusakan power supply.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('0', 'Maaf Sementara Sistem Belum Dapat Mendiagnosa Masalah Anda.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('2', 'Apakah muncul tampilan pada layar monitor ?', '3', '4', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('3', 'Muncul Pesan \"NO POWER\" pada monitor ?', '5', '6', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('5', 'Sambungkan power tambahan pada video card.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('4', 'Monitor Menyala ?', '7', '8', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('8', 'Periksa Sumber Listrik. Pastikan konektor power tertancap pada monitor.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('6', 'Muncul Pesan \"NO SIGNAL\" Pada Monitor ?', '9', '10', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('7', 'Pengaturan Brightness dan Contrast sudah tepat?', '11', '12', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('12', 'Atur Brightness dan Contrast dengan tepat.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('9', 'Kabel VGA dalam kondisi baik ?', '13', '14', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('14', 'Periksa ujung konektor VGA.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('10', 'Stuck (Berhenti) pada layar BIOS ?', '20', '21', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('21', 'Proses ke Diagnosa performa VGA.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('11', 'Terdengar bunyi \"BEEP\" ?', '15', '16', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('13', 'Apakah monitor sudah ditest ?', '16', '17', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('17', 'Coba monitor di PC lain atau laptop yg normal.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('15', 'Video Card terpasang dengan baik ?', '18', '19', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('19', 'Lepas dan pasang lagi Video Card.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('16', 'Kabel VGA Rusak atau bengkok ?', '21', '20', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('21', 'Perbaiki atau ganti kabel VGA.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('18', 'Ram terpasang dengan baik ?', '16', '31', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('31', 'Lepas dan Pasang lagi RAM.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('20', 'Apakah ada komponen baru yang dipasang ?', '24', '25', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('24', 'Dapat menyala dengan 1 (satu) Video Card ?', '26', '25', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('26', 'Terjadi Konflik Pada Hardware.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('25', 'Dapat menyala dengan Video Card baru ?', '32', '33', 'Y', 'N');
INSERT INTO `diagnosa_vga` VALUES ('32', 'Ganti dengan Video Card yang baru.', '0', '0', 'N', 'Y');
INSERT INTO `diagnosa_vga` VALUES ('33', 'Proses ke Diagnosa kerusakan motherboard', '0', '0', 'N', 'Y');
