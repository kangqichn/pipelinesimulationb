/*
Navicat MySQL Data Transfer

Source Server         : 202.204.194.18
Source Server Version : 50627
Source Host           : 202.204.194.18:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2015-12-12 18:19:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `gas_component_family`
-- ----------------------------
DROP TABLE IF EXISTS `gas_component_family`;
CREATE TABLE `gas_component_family` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6usc25fj27ryak7f7gxkm5v68` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gas_component_family
-- ----------------------------
INSERT INTO `gas_component_family` VALUES ('1', '1', '碳氢化合物', 'Hydrocarbon');
INSERT INTO `gas_component_family` VALUES ('2', '1', '其他', 'Miscellaneous');
INSERT INTO `gas_component_family` VALUES ('3', '1', '醇类', 'Alcohol');
