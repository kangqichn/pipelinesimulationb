/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : psdba

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-02-13 16:07:59
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `compressor_type`
-- ----------------------------
DROP TABLE IF EXISTS `compressor_type`;
CREATE TABLE `compressor_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `compressor_model` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compressor_type
-- ----------------------------
INSERT INTO `compressor_type` VALUES ('1', '0', 'RB211', 'RR（罗罗）');
INSERT INTO `compressor_type` VALUES ('2', '0', 'RF2BB36', 'RR（罗罗）');
INSERT INTO `compressor_type` VALUES ('3', '0', 'PCL802', 'GE');
INSERT INTO `compressor_type` VALUES ('4', '0', 'PCL603N', 'GE');
INSERT INTO `compressor_type` VALUES ('5', '0', 'RV050/03', 'MAN');
