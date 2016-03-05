/*
Navicat MySQL Data Transfer

Source Server         : 10.1.16.50
Source Server Version : 50627
Source Host           : 10.1.16.50:3306
Source Database       : psdba

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-03-05 15:11:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `component_factor`
-- ----------------------------
DROP TABLE IF EXISTS `component_factor`;
CREATE TABLE `component_factor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `factor_type_id` bigint(20) NOT NULL,
  `fluid_gas_id` bigint(20) NOT NULL,
  `gas_component_id` bigint(20) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8loxi49f6tlyu63vq1hfk65kt` (`factor_type_id`),
  KEY `FK_hs2s7b6kviaa4ykpx5oynr507` (`fluid_gas_id`),
  KEY `FK_3j97outpxwcr8p7949gls7a63` (`gas_component_id`),
  CONSTRAINT `FK_3j97outpxwcr8p7949gls7a63` FOREIGN KEY (`gas_component_id`) REFERENCES `gas_component` (`id`),
  CONSTRAINT `FK_8loxi49f6tlyu63vq1hfk65kt` FOREIGN KEY (`factor_type_id`) REFERENCES `component_factor_type` (`id`),
  CONSTRAINT `FK_hs2s7b6kviaa4ykpx5oynr507` FOREIGN KEY (`fluid_gas_id`) REFERENCES `fluid_gas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of component_factor
-- ----------------------------
INSERT INTO `component_factor` VALUES ('1', '0', '1', '1', '1', '92.547');
INSERT INTO `component_factor` VALUES ('2', '0', '1', '1', '2', '3.958');
INSERT INTO `component_factor` VALUES ('3', '0', '1', '1', '3', '0.335');
INSERT INTO `component_factor` VALUES ('4', '0', '1', '1', '4', '0.116');
INSERT INTO `component_factor` VALUES ('5', '0', '1', '1', '5', '0.086');
INSERT INTO `component_factor` VALUES ('6', '0', '1', '1', '6', '0.221');
INSERT INTO `component_factor` VALUES ('7', '0', '1', '1', '14', '1.891');
INSERT INTO `component_factor` VALUES ('8', '0', '1', '1', '13', '0.846');
INSERT INTO `component_factor` VALUES ('9', '0', '1', '2', '1', '94.67');
INSERT INTO `component_factor` VALUES ('10', '0', '1', '2', '2', '0.02');
INSERT INTO `component_factor` VALUES ('11', '0', '1', '2', '14', '0.01');
INSERT INTO `component_factor` VALUES ('12', '0', '1', '2', '13', '3.58');
INSERT INTO `component_factor` VALUES ('13', '0', '1', '2', '15', '1.31');
INSERT INTO `component_factor` VALUES ('14', '0', '1', '2', '20', '0.26');
INSERT INTO `component_factor` VALUES ('15', '0', '1', '3', '1', '92.547');
INSERT INTO `component_factor` VALUES ('16', '0', '1', '3', '2', '3.958');
INSERT INTO `component_factor` VALUES ('17', '0', '1', '3', '3', '0.335');
INSERT INTO `component_factor` VALUES ('18', '0', '1', '3', '4', '0.116');
INSERT INTO `component_factor` VALUES ('19', '0', '1', '3', '5', '0.086');
INSERT INTO `component_factor` VALUES ('20', '0', '1', '3', '6', '0.221');
INSERT INTO `component_factor` VALUES ('21', '0', '1', '3', '14', '1.891');
INSERT INTO `component_factor` VALUES ('22', '0', '1', '3', '13', '0.846');
INSERT INTO `component_factor` VALUES ('23', '0', '1', '4', '1', '94.815');
INSERT INTO `component_factor` VALUES ('24', '0', '1', '4', '2', '2.579');
INSERT INTO `component_factor` VALUES ('25', '0', '1', '4', '3', '0.423');
INSERT INTO `component_factor` VALUES ('26', '0', '1', '4', '4', '0.067');
INSERT INTO `component_factor` VALUES ('27', '0', '1', '4', '5', '0.097');
INSERT INTO `component_factor` VALUES ('28', '0', '1', '4', '6', '0.025');
INSERT INTO `component_factor` VALUES ('29', '0', '1', '4', '7', '0.023');
INSERT INTO `component_factor` VALUES ('30', '0', '1', '4', '128', '0.075');
INSERT INTO `component_factor` VALUES ('31', '0', '1', '4', '14', '1.023');
INSERT INTO `component_factor` VALUES ('32', '0', '1', '4', '13', '0.727');
INSERT INTO `component_factor` VALUES ('33', '0', '1', '5', '1', '93.111');
INSERT INTO `component_factor` VALUES ('34', '0', '1', '5', '2', '3.741');
INSERT INTO `component_factor` VALUES ('35', '0', '1', '5', '3', '0.69');
INSERT INTO `component_factor` VALUES ('36', '0', '1', '5', '4', '0.125');
INSERT INTO `component_factor` VALUES ('37', '0', '1', '5', '5', '0.129');
INSERT INTO `component_factor` VALUES ('38', '0', '1', '5', '6', '0.024');
INSERT INTO `component_factor` VALUES ('39', '0', '1', '5', '7', '0.048');
INSERT INTO `component_factor` VALUES ('40', '0', '1', '5', '129', '0.08');
INSERT INTO `component_factor` VALUES ('41', '0', '1', '5', '14', '1.236');
INSERT INTO `component_factor` VALUES ('42', '0', '1', '5', '13', '0.818');
INSERT INTO `component_factor` VALUES ('43', '0', '1', '6', '1', '93.991');
INSERT INTO `component_factor` VALUES ('44', '0', '1', '6', '2', '2.935');
INSERT INTO `component_factor` VALUES ('45', '0', '1', '6', '3', '0.498');
INSERT INTO `component_factor` VALUES ('46', '0', '1', '6', '4', '0.081');
INSERT INTO `component_factor` VALUES ('47', '0', '1', '6', '5', '0.106');
INSERT INTO `component_factor` VALUES ('48', '0', '1', '6', '6', '0.035');
INSERT INTO `component_factor` VALUES ('49', '0', '1', '6', '7', '0.029');
INSERT INTO `component_factor` VALUES ('50', '0', '1', '6', '130', '0.082');
INSERT INTO `component_factor` VALUES ('51', '0', '1', '6', '14', '1.23');
INSERT INTO `component_factor` VALUES ('52', '0', '1', '6', '13', '1.011');
INSERT INTO `component_factor` VALUES ('53', '0', '1', '7', '1', '93.991');
INSERT INTO `component_factor` VALUES ('54', '0', '1', '7', '2', '2.935');
INSERT INTO `component_factor` VALUES ('55', '0', '1', '7', '3', '0.498');
INSERT INTO `component_factor` VALUES ('56', '0', '1', '7', '4', '0.081');
INSERT INTO `component_factor` VALUES ('57', '0', '1', '7', '5', '0.106');
INSERT INTO `component_factor` VALUES ('58', '0', '1', '7', '6', '0.035');
INSERT INTO `component_factor` VALUES ('59', '0', '1', '7', '7', '0.029');
INSERT INTO `component_factor` VALUES ('60', '0', '1', '7', '131', '0.082');
INSERT INTO `component_factor` VALUES ('61', '0', '1', '7', '14', '1.23');
INSERT INTO `component_factor` VALUES ('62', '0', '1', '7', '13', '1.011');
INSERT INTO `component_factor` VALUES ('63', '0', '1', '8', '1', '93.053');
INSERT INTO `component_factor` VALUES ('64', '0', '1', '8', '2', '3.08');
INSERT INTO `component_factor` VALUES ('65', '0', '1', '8', '3', '0.427');
INSERT INTO `component_factor` VALUES ('66', '0', '1', '8', '4', '0.043');
INSERT INTO `component_factor` VALUES ('67', '0', '1', '8', '5', '0.081');
INSERT INTO `component_factor` VALUES ('68', '0', '1', '8', '6', '0.013');
INSERT INTO `component_factor` VALUES ('69', '0', '1', '8', '7', '0.018');
INSERT INTO `component_factor` VALUES ('70', '0', '1', '8', '132', '0.042');
INSERT INTO `component_factor` VALUES ('71', '0', '1', '8', '14', '0.304');
INSERT INTO `component_factor` VALUES ('72', '0', '1', '8', '13', '2.933');
