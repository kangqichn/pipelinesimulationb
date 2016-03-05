/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : vmsdba

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-02-01 17:50:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `well`
-- ----------------------------
DROP TABLE IF EXISTS `well`;
CREATE TABLE `well` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `block_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_50gd52jdxsjw3lnyyll2d29wx` (`block_id`),
  CONSTRAINT `FK_50gd52jdxsjw3lnyyll2d29wx` FOREIGN KEY (`block_id`) REFERENCES `block` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of well
-- ----------------------------
INSERT INTO `well` VALUES ('1', '0', '1', 'PH-66');
INSERT INTO `well` VALUES ('2', '0', '2', 'SZN-11');
INSERT INTO `well` VALUES ('3', '0', '3', 'LL-88');
