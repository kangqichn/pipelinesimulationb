/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : psdba

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-02-13 17:29:17
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `component_factor_type`
-- ----------------------------
DROP TABLE IF EXISTS `component_factor_type`;
CREATE TABLE `component_factor_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of component_factor_type
-- ----------------------------
INSERT INTO `component_factor_type` VALUES ('1', '1', '摩尔分数');
INSERT INTO `component_factor_type` VALUES ('2', '0', '体积分数');
INSERT INTO `component_factor_type` VALUES ('3', '0', '质量分数');
