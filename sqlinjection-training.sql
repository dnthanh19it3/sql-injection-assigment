/*
 Navicat Premium Data Transfer

 Source Server         : MySQL80
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : sqlinjection-training

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 24/03/2022 14:41:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_logindata
-- ----------------------------
DROP TABLE IF EXISTS `table_logindata`;
CREATE TABLE `table_logindata`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `psw` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_logindata
-- ----------------------------
INSERT INTO `table_logindata` VALUES (1, 'thanhdo', 'saocungduoc');
INSERT INTO `table_logindata` VALUES (2, 'thanhchecker', 'bananhhung');

SET FOREIGN_KEY_CHECKS = 1;
