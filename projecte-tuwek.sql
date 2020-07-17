/*
 Navicat Premium Data Transfer

 Source Server         : loragon
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : projecte-tuwek

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 17/07/2020 15:49:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pasaronline_kategori_product
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_kategori_product`;
CREATE TABLE `pasaronline_kategori_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `image_pic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visits` int(10) unsigned DEFAULT 0,
  `seo_url_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_kategori_product
-- ----------------------------
BEGIN;
INSERT INTO `pasaronline_kategori_product` VALUES (1, 'Kebutuhan RUmah tangga', 1, NULL, 'Kebutuhan Rumah tangga', 0, 'kebutuhan-rumah-tangga', 1, NULL, '2020-06-10 01:30:24', '2020-06-10 01:30:24');
INSERT INTO `pasaronline_kategori_product` VALUES (2, 'Elektronik 1', 1, NULL, 'Elektronik', 0, 'elektronik', 1, NULL, '2020-06-10 01:41:59', '2020-06-10 01:42:05');
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_korlap
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_korlap`;
CREATE TABLE `pasaronline_korlap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `wilayah` int(10) unsigned DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_korlap
-- ----------------------------
BEGIN;
INSERT INTO `pasaronline_korlap` VALUES (1, 1, 3506, 1, 'test ini', 1, NULL, '2020-06-11 15:56:07', '2020-06-11 16:14:24');
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_pembeli
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_pembeli`;
CREATE TABLE `pasaronline_pembeli` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `nama_lengkap` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wilayah` int(10) unsigned DEFAULT NULL,
  `phone` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_profile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_pembeli
-- ----------------------------
BEGIN;
INSERT INTO `pasaronline_pembeli` VALUES (1, 'ema@mail.com', '$2y$10$EqAzfhQbl7lMB5lxR.cmO.JgSMFmVqAUne/Q.Q1ZL0R1TSUQmOQYe', NULL, NULL, 'Test pembeli', 'test-pembeli', 'Jln merdeka', 'sss', 1101, '0358-00000', '2222', 'laki-laki', NULL, NULL, 1, 1, NULL, '2020-06-12 02:37:25', '2020-06-12 02:37:42');
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_product
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_product`;
CREATE TABLE `pasaronline_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `image_pic` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toko_id` int(10) unsigned DEFAULT NULL,
  `kategoriproduct_id` int(10) unsigned DEFAULT NULL,
  `satuan_id` int(10) unsigned DEFAULT NULL,
  `berat_satuan` int(10) unsigned DEFAULT NULL,
  `stock` int(10) unsigned DEFAULT NULL,
  `harga` int(10) unsigned DEFAULT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visits` int(10) unsigned DEFAULT 0,
  `seo_url_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_product
-- ----------------------------
BEGIN;
INSERT INTO `pasaronline_product` VALUES (1, 'Product 1', NULL, 1, NULL, NULL, 1, NULL, 1, 1, 60000, NULL, 0, 'product-1', 1, NULL, '2020-06-11 18:23:43', '2020-06-11 18:23:43');
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_promo
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_promo`;
CREATE TABLE `pasaronline_promo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_promo
-- ----------------------------
BEGIN;
INSERT INTO `pasaronline_promo` VALUES (1, 1, 1, 'sssss', 1, NULL, '2020-06-11 23:33:47', '2020-06-11 23:33:47');
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_satuan
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_satuan`;
CREATE TABLE `pasaronline_satuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `basic_satuan` int(10) unsigned DEFAULT NULL,
  `basic_nilai` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_satuan
-- ----------------------------
BEGIN;
INSERT INTO `pasaronline_satuan` VALUES (1, 'gram', 1, NULL, '1', 1, NULL, '2020-06-12 00:20:00', '2020-06-12 00:20:00');
INSERT INTO `pasaronline_satuan` VALUES (2, 'kilogram', 1, 1, '10', 1, NULL, '2020-06-12 00:20:23', '2020-06-12 00:20:23');
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_sethargakirim
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_sethargakirim`;
CREATE TABLE `pasaronline_sethargakirim` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `jarak` int(10) unsigned NOT NULL DEFAULT 1,
  `biaya` int(10) unsigned NOT NULL DEFAULT 1,
  `toko_id` int(10) unsigned DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_sethargakirim
-- ----------------------------
BEGIN;
INSERT INTO `pasaronline_sethargakirim` VALUES (1, 2, 1, 444, NULL, 1, 'dddd', 1, NULL, '2020-06-12 00:44:04', '2020-06-12 00:53:34');
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_setting
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_setting`;
CREATE TABLE `pasaronline_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otherarray` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otherclass` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_setting
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_suaranitizen
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_suaranitizen`;
CREATE TABLE `pasaronline_suaranitizen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pembeli_id` int(10) unsigned DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `star_product` int(10) unsigned DEFAULT NULL,
  `star_toko` int(10) unsigned DEFAULT NULL,
  `transaksi_id` int(10) unsigned DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_suaranitizen
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_toko
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_toko`;
CREATE TABLE `pasaronline_toko` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `image_pic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wilayah` int(10) unsigned DEFAULT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visits` int(10) unsigned DEFAULT 0,
  `seo_url_slug_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_toko
-- ----------------------------
BEGIN;
INSERT INTO `pasaronline_toko` VALUES (1, 'toko barokah', 1, NULL, 'jln merdeka', 1107, 'sssss', 0, 'toko-barokah', 1, NULL, '2020-06-12 01:28:37', '2020-06-12 01:28:37');
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_transaksi`;
CREATE TABLE `pasaronline_transaksi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pembeli_id` int(10) unsigned DEFAULT NULL,
  `invoice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `total` int(10) unsigned DEFAULT NULL,
  `ongkoskirim` int(10) unsigned DEFAULT NULL,
  `notepengirimian` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_transaksi
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_transaksi_detail
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_transaksi_detail`;
CREATE TABLE `pasaronline_transaksi_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaksi_id` int(10) unsigned DEFAULT NULL,
  `promo_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `jumlah` int(10) unsigned DEFAULT NULL,
  `total` int(10) unsigned DEFAULT NULL,
  `ongkoskirim` int(10) unsigned DEFAULT NULL,
  `notebarang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alltotal_inv_toko` int(10) unsigned DEFAULT NULL,
  `statuspengiriman` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_statuspengiriman` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notepengirim` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_transaksi_detail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pasaronline_user_toko
-- ----------------------------
DROP TABLE IF EXISTS `pasaronline_user_toko`;
CREATE TABLE `pasaronline_user_toko` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `toko_id` int(10) unsigned DEFAULT NULL,
  `user_by` int(10) unsigned DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pasaronline_user_toko
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
INSERT INTO `password_resets` VALUES ('minhsang2603@gmail.com', '$2y$10$kWX7Vm.TR02TvQ426QLR2uzK6/JjiYIwE.ruTXH6eBQdS8mV5aL0a', '2018-01-24 10:40:43');
INSERT INTO `password_resets` VALUES ('iyutman2@gmail.com', '$2y$10$71OjMPoYVtgloBNKyk9Os.z77fCe6IYKv6nR4kCAi05laaQUYmtAG', '2019-10-01 06:33:09');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
