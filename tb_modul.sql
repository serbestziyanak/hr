/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : ayu_hr

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 02/10/2023 15:59:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_modul
-- ----------------------------
DROP TABLE IF EXISTS `tb_modul`;
CREATE TABLE `tb_modul`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `modul` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `klasor` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `simge` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `menude_goster` tinyint NULL DEFAULT 1,
  `ust_id` int NULL DEFAULT 0,
  `kategori` tinyint NULL DEFAULT 0,
  `sira` tinyint NULL DEFAULT 1,
  `harici_sayfa` tinyint NULL DEFAULT 0,
  `kategori_acik` tinyint NULL DEFAULT 0,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 163 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_modul
-- ----------------------------
INSERT INTO `tb_modul` VALUES (1, 'Anasayfa', 'anasayfa', 'anasayfa', 'fa fa-home', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (2, 'Sistem Kullanıcıları', 'sistemKullanicilari', 'sistemKullanicilari', 'fas fa-users-cog text-red', 1, 0, 0, 99, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (3, 'Yetkiler', 'yetkiler', 'yetkiler', 'far fa-circle text-green', 1, 68, 0, 7, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (32, 'Modul Yetkileri', 'modulYetkileri', 'modulYetkileri', 'far fa-circle text-yellow', 1, 68, 0, 8, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (68, 'Sistem İşlemleri', NULL, NULL, 'fas fa-sliders-h', 1, 0, 1, 100, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (90, 'Ön Tanım', NULL, NULL, 'fas fa-sitemap', 1, 0, 1, 12, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (121, 'Görev Kategorileri', 'gorevKategorileri', 'gorevKategorileri', 'far fa-circle text-blue', 1, 129, 0, 3, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (129, 'Sabit Tanımlar', NULL, NULL, 'fas fa-table', 1, 0, 1, 35, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (142, 'Anket İşlemleri', '', '', 'fas fa-edit text-green', 0, 0, 1, 42, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (143, 'Anketler', 'anketler', 'anketler', 'fas fa-question text-orange', 0, 142, 0, 2, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (144, 'Anket Şablonu', 'sablonlar', 'anketler', 'fas fa-copy text-warning', 0, 142, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (145, 'Anket Cevapla', 'anket', 'anketler', 'fas fa-edit', 0, 142, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (146, 'Birim Ağacı', 'birimAgaci', 'birimAgaci', 'fas fa-sitemap text-blue', 1, 0, 0, 5, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (147, 'Personeller', 'personeller', 'personeller', 'fas fa-users text-info', 1, 0, 0, 6, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (148, 'Öğrenim Bilgileri', 'ogrenimBilgileri', 'ogrenimBilgileri', 'fas fa-book text-orange', 1, 0, 0, 6, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (150, 'Birim Sayfaları', 'birimSayfalari', 'birimSayfalari', 'fas fa-file-alt text-green', 1, 153, 0, 5, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (151, 'Duyurular', 'duyurular', 'duyurular', 'fas fa-bullhorn text-yellow', 1, 153, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (152, 'Manşetler', 'slaytlar', 'slaytlar', 'fas fa-pager text-blue', 1, 153, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (153, 'Birim Sayfaları', NULL, NULL, 'fas fa-file-alt text-red', 1, 0, 1, 5, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (154, 'Genel Ayarlar', 'genelAyarlar', 'genelAyarlar', 'fas fa-cog', 1, 153, 0, 2, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (155, 'Etkinlikler', 'etkinlikler', 'etkinlikler', 'fas fa-calendar-alt text-blue', 1, 153, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (156, 'Panel Çevirileri', 'panelCevirileri', 'panelCevirileri', 'fas fa-language text-green', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (157, 'Web Çevirileri', 'webCevirileri', 'webCevirileri', 'fas fa-language text-orange', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (158, 'Görevler', 'gorevler', 'gorevler', 'fas fa-briefcase', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (159, 'Birim Yetkileri', 'birimYetkileri', 'birimYetkileri', 'fas fa-tasks', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (160, 'Ünvanlar', 'unvanlar', 'unvanlar', 'far fa-circle text-yellow', 1, 129, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (161, 'Eğitim Düzeyleri', 'egitimDuzeyleri', 'egitimDuzeyleri', 'far fa-circle text-green', 1, 129, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (162, 'Personel Nielikleri', 'personelNitelikleri', 'personelNitelikleri', 'far fa-circle text-red', 1, 129, 0, 1, 0, 0, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
