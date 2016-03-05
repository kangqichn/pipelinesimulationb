/*
Navicat MySQL Data Transfer

Source Server         : sample-localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-01-13 15:31:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `gas_component_property`
-- ----------------------------
DROP TABLE IF EXISTS `gas_component_property`;
CREATE TABLE `gas_component_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `property_family_id` bigint(20) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_s4jvooxexl9571693p866yhyt` (`property_family_id`),
  CONSTRAINT `FK_s4jvooxexl9571693p866yhyt` FOREIGN KEY (`property_family_id`) REFERENCES `property_family` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gas_component_property
-- ----------------------------
INSERT INTO `gas_component_property` VALUES ('1', '0', 'Mol wt', 'Molecular Weight', '分子量', '1', 'g/mol');
INSERT INTO `gas_component_property` VALUES ('2', '0', 'Liquid Density', 'Liquid Density', '理想液体密度', '1', 'g/cm^3');
INSERT INTO `gas_component_property` VALUES ('3', '0', 'Crit T', 'Critical Temperature', '临界温度', '1', '℃');
INSERT INTO `gas_component_property` VALUES ('4', '0', 'Crit P', 'Critical Pressure', '临界压力', '1', 'bar');
INSERT INTO `gas_component_property` VALUES ('5', '0', 'Acentric factor', 'Acentric Factor', '偏心因子', '1', null);
INSERT INTO `gas_component_property` VALUES ('6', '0', 'Normal Tb', 'Normal Bubble Temperature', '常压泡点', '1', '℃');
INSERT INTO `gas_component_property` VALUES ('7', '0', 'Wt av Mol wt', 'Weight Average Molecular Weight', '质量平均摩尔分数', '1', null);
INSERT INTO `gas_component_property` VALUES ('8', '0', 'Crit V', 'Critical Molar Volume', '临界摩尔体积', '1', 'cm³');
INSERT INTO `gas_component_property` VALUES ('9', '0', 'Pvap model', 'Vapor Pressure Model', '蒸汽压计算模型', '1', null);
INSERT INTO `gas_component_property` VALUES ('10', '0', 'Cpen cm', 'Peneloux Volume Shift Parameter Cpen', '体积平移参数 Cpen', '1', null);
INSERT INTO `gas_component_property` VALUES ('11', '0', 'CpenT cm', 'Peneloux Volume Shift Parameter CpenT', '体积平移参数 CpenT', '1', null);
INSERT INTO `gas_component_property` VALUES ('12', '0', 'Href', 'Ideal Gas Enthalpy (273.15K)', '理想气体基准焓', '1', 'J/mol');
