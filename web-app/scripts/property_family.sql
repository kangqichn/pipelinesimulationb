/*
Navicat MySQL Data Transfer

Source Server         : sample-localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-01-07 15:59:18
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `property_family`
-- ----------------------------
DROP TABLE IF EXISTS `property_family`;
CREATE TABLE `property_family` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nox6btpllii6vn4p1lb5s0xla` (`alias`),
  UNIQUE KEY `UK_fwltode97qxl5vfc93yqvdcry` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of property_family
-- ----------------------------
INSERT INTO `property_family` VALUES ('1', '0', 'Critical', '临界参数', '临界参数');
INSERT INTO `property_family` VALUES ('2', '0', 'Physical', '物性参数', '物性参数');
INSERT INTO `property_family` VALUES ('3', '0', 'Mole', '组分的摩尔参数', '摩尔参数');
INSERT INTO `property_family` VALUES ('4', '0', 'Coefficient of equation of state', '状态方程参数', '状态方程系数');
