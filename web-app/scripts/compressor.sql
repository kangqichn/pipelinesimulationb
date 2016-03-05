/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : psdba

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-02-13 16:11:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `compressor`
-- ----------------------------
DROP TABLE IF EXISTS `compressor`;
CREATE TABLE `compressor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `compressor_type_id` bigint(20) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `driver_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_l018pk50wqpemc6owmf6snkd9` (`compressor_type_id`),
  CONSTRAINT `FK_l018pk50wqpemc6owmf6snkd9` FOREIGN KEY (`compressor_type_id`) REFERENCES `compressor_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compressor
-- ----------------------------
INSERT INTO `compressor` VALUES ('1', '0', '1', '燃气轮机', 'RF2BB36', '中卫站2#');
INSERT INTO `compressor` VALUES ('2', '0', '5', '电机', '1DX2043-8BS02-Z', '阳曲');
INSERT INTO `compressor` VALUES ('3', '1', '3', '燃气轮机', 'PGT25+SAC', '了墩2线1#');
INSERT INTO `compressor` VALUES ('4', '0', '2', '燃气轮机', 'RB211-G62', '了墩3线');
INSERT INTO `compressor` VALUES ('5', '0', '4', '燃气轮机', 'PGT25+SAC', '霍尔果斯4#');
