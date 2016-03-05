/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : psdba

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-02-15 10:23:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `fluid_gas`
-- ----------------------------
DROP TABLE IF EXISTS `fluid_gas`;
CREATE TABLE `fluid_gas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `mole_mass` double DEFAULT NULL,
  `mole_mass_unit` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fluid_gas
-- ----------------------------
INSERT INTO `fluid_gas` VALUES ('1', '0', null, null, null, '原厂—中亚气');
INSERT INTO `fluid_gas` VALUES ('2', '0', null, null, null, '原厂—庆华气');
INSERT INTO `fluid_gas` VALUES ('3', '0', null, null, null, '原厂—土库曼斯坦气');
INSERT INTO `fluid_gas` VALUES ('4', '0', null, null, null, '实测-中卫站');
INSERT INTO `fluid_gas` VALUES ('5', '0', null, null, null, '实测-阳曲');
INSERT INTO `fluid_gas` VALUES ('6', '0', null, null, null, '实测-了墩3线');
INSERT INTO `fluid_gas` VALUES ('7', '0', null, null, null, '实测-了墩2线');
INSERT INTO `fluid_gas` VALUES ('8', '0', null, null, null, '霍尔果斯站-实测-2015.9.18');
