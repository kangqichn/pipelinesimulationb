/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : vmsdba

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-01-31 11:57:21
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `block`
-- ----------------------------
DROP TABLE IF EXISTS `block`;
CREATE TABLE `block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of block
-- ----------------------------
INSERT INTO `block` VALUES ('1', '0', '柳林');
INSERT INTO `block` VALUES ('2', '0', '潘河');

-- ----------------------------
-- Table structure for `component_factor`
-- ----------------------------
DROP TABLE IF EXISTS `component_factor`;
CREATE TABLE `component_factor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `fluid_gas_id` bigint(20) NOT NULL,
  `gas_component_id` bigint(20) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hs2s7b6kviaa4ykpx5oynr507` (`fluid_gas_id`),
  KEY `FK_3j97outpxwcr8p7949gls7a63` (`gas_component_id`),
  CONSTRAINT `FK_3j97outpxwcr8p7949gls7a63` FOREIGN KEY (`gas_component_id`) REFERENCES `gas_component` (`id`),
  CONSTRAINT `FK_hs2s7b6kviaa4ykpx5oynr507` FOREIGN KEY (`fluid_gas_id`) REFERENCES `fluid_gas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of component_factor
-- ----------------------------

-- ----------------------------
-- Table structure for `fluid_gas`
-- ----------------------------
DROP TABLE IF EXISTS `fluid_gas`;
CREATE TABLE `fluid_gas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pseudo_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8j9bvv20xmra7c6ieesp1qnj2` (`pseudo_id`),
  CONSTRAINT `FK_8j9bvv20xmra7c6ieesp1qnj2` FOREIGN KEY (`pseudo_id`) REFERENCES `pseudo_component` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fluid_gas
-- ----------------------------

-- ----------------------------
-- Table structure for `gas_component`
-- ----------------------------
DROP TABLE IF EXISTS `gas_component`;
CREATE TABLE `gas_component` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `cas_number` varchar(255) DEFAULT NULL,
  `chem_formula` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `family_id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unifac_structure` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_p9bkvi7964imu5sg6by05bi2k` (`family_id`),
  CONSTRAINT `FK_p9bkvi7964imu5sg6by05bi2k` FOREIGN KEY (`family_id`) REFERENCES `gas_component_family` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gas_component
-- ----------------------------
INSERT INTO `gas_component` VALUES ('1', '2', 'C1|CH4', '74-82-8', 'CH4', '甲烷', '1', 'Methane', 'CH4');
INSERT INTO `gas_component` VALUES ('2', '2', 'C2|C2H6', '74-84-0', 'C2H6', '乙烷', '1', 'Ethane', '(CH3)2');
INSERT INTO `gas_component` VALUES ('3', '2', 'C3|C3H8', '74-98-6', 'C3H8', '丙烷', '1', 'Propane', '(CH3)2 CH2');
INSERT INTO `gas_component` VALUES ('4', '2', 'iC4|iC4H10', '75-28-5', 'C4H10', '异丁烷', '1', 'i-Butane', '(CH3)3 CH');
INSERT INTO `gas_component` VALUES ('5', '2', 'nC4|nC4H10', '106-97-8', 'C4H10', '正丁烷', '1', 'n-Butane', '(CH3)2 (CH2)2');
INSERT INTO `gas_component` VALUES ('6', '2', 'iC5|iC5H12', '78-78-4', 'C5H12', '异戊烷', '1', 'i-Pentane', '(CH3)3 CH2 CH');
INSERT INTO `gas_component` VALUES ('7', '2', 'nC5|nC5H12', '109-66-0', 'C5H12', '正戊烷', '1', 'n-Pentane', '(CH3)2 (CH2)3');
INSERT INTO `gas_component` VALUES ('8', '1', 'nC6', '110-54-3', 'C6H14', '正己烷', '1', 'n-Hexane', '(CH3)2 (CH2)4');
INSERT INTO `gas_component` VALUES ('9', '1', 'nC7', '142-82-5', 'C7H16', '正庚烷', '1', 'n-Heptane', '(CH3)2 (CH2)5');
INSERT INTO `gas_component` VALUES ('10', '1', 'nC8', '111-65-9', 'C8H18', '正辛烷', '1', 'n-Octane', '(CH3)2 (CH2)6');
INSERT INTO `gas_component` VALUES ('11', '1', 'nC9', '111-84-2', 'C9H20', '正壬烷', '1', 'n-Nonane', '(CH3)2 (CH2)7');
INSERT INTO `gas_component` VALUES ('12', '1', 'nC10', '124-18-5', 'C10H22', '正癸烷', '1', 'n-Decane', '(CH3)2 (CH2)8');
INSERT INTO `gas_component` VALUES ('13', '1', 'N2', '7727-37-9', 'N2', '氮气', '2', 'Nitrogen', null);
INSERT INTO `gas_component` VALUES ('14', '1', 'CO2', '124-38-9', 'CO2', '二氧化碳', '2', 'CO2', null);
INSERT INTO `gas_component` VALUES ('15', '1', 'H2S', '7783-6-4', 'H2S', '硫化氢', '2', 'H2S', null);
INSERT INTO `gas_component` VALUES ('16', '1', 'Benzene', '71-43-2', 'C6H6', '苯', '1', 'Benzene', '(ACH)6');
INSERT INTO `gas_component` VALUES ('17', '1', 'H2O', '7732-18-5', 'H2O', '水', '2', 'H2O', null);
INSERT INTO `gas_component` VALUES ('18', '1', 'H2', '1333-74-0', 'H2', '氢气', '2', 'Hydrogen', null);
INSERT INTO `gas_component` VALUES ('19', '0', null, '630-08-0', 'CO', '一氧化碳', '2', 'CO', null);
INSERT INTO `gas_component` VALUES ('20', '1', 'Ar', '7440-37-1', 'Ar', '氩', '2', 'Argon', null);
INSERT INTO `gas_component` VALUES ('21', '1', 'O2', '7782-44-7', 'O2', '氧气', '2', 'Oxygen', null);
INSERT INTO `gas_component` VALUES ('22', '1', 'MeOH', '67-56-1', 'CH4O', '甲醇', '3', 'Methanol', 'CH3OH');
INSERT INTO `gas_component` VALUES ('23', '1', 'MEG', '107-21-1', 'C2H6O2', '乙二醇', '3', 'EGlycol', '(CH2OH)2');
INSERT INTO `gas_component` VALUES ('24', '1', 'nC11', '1120-21-4', 'C11H24', '正十一烷', '1', 'n-C11', '(CH3)2 (CH2)9');
INSERT INTO `gas_component` VALUES ('25', '1', 'nC12', '112-40-3', 'C12H26', '正十二烷', '1', 'n-C12', '(CH3)2 (CH2)10');
INSERT INTO `gas_component` VALUES ('26', '1', 'nC13', '629-50-5', 'C13H28', '正十三烷', '1', 'n-C13', '(CH3)2 (CH2)11');
INSERT INTO `gas_component` VALUES ('27', '1', 'nC14', '629-59-4', 'C14H30', '正十四烷', '1', 'n-C14', '(CH3)2 (CH2)12');
INSERT INTO `gas_component` VALUES ('28', '1', 'nC15', '629-62-9', 'C15H32', '正十五烷', '1', 'n-C15', '(CH3)2 (CH2)13');
INSERT INTO `gas_component` VALUES ('29', '1', 'nC16', '544-76-3', 'C16H34', '正十六烷', '1', 'n-C16', '(CH3)2 (CH2)14');
INSERT INTO `gas_component` VALUES ('30', '1', 'nC17', '629-78-7', 'C17H36', '正十七烷', '1', 'n-C17', '(CH3)2 (CH2)15');
INSERT INTO `gas_component` VALUES ('31', '1', 'nC18', '593-45-3', 'C18H38', '正十八烷', '1', 'n-C18', '(CH3)2 (CH2)16');
INSERT INTO `gas_component` VALUES ('32', '1', 'nC19', '629-92-5', 'C19H40', '正十九烷', '1', 'n-C19', '(CH3)2 (CH2)17');
INSERT INTO `gas_component` VALUES ('33', '1', 'nC20', '112-95-8', 'C20H42', '正二十烷', '1', 'n-C20', '(CH3)2 (CH2)18');
INSERT INTO `gas_component` VALUES ('34', '1', 'nC21', '629-94-7', 'C21H44', '正二十一烷', '1', 'n-C21', '(CH3)2 (CH2)19');
INSERT INTO `gas_component` VALUES ('35', '1', 'nC22', '629-97-0', 'C22H46', '正二十二烷', '1', 'n-C22', '(CH3)2 (CH2)20');
INSERT INTO `gas_component` VALUES ('36', '1', 'nC23', '638-67-5', 'C23H48', '正二十三烷', '1', 'n-C23', '(CH3)2 (CH2)21');
INSERT INTO `gas_component` VALUES ('37', '1', 'nC24', '646-31-1', 'C24H50', '正二十四烷', '1', 'n-C24', '(CH3)2 (CH2)22');
INSERT INTO `gas_component` VALUES ('38', '1', 'nC25', '629-99-2', 'C25H52', '正二十五烷', '1', 'n-C25', '(CH3)2 (CH2)23');
INSERT INTO `gas_component` VALUES ('39', '1', 'nC26', '630-01-3', 'C26H54', '正二十六烷', '1', 'n-C26', '(CH3)2 (CH2)24');
INSERT INTO `gas_component` VALUES ('40', '1', 'nC27', '593-49-7', 'C27H56', '正二十七烷', '1', 'n-C27', '(CH3)2 (CH2)25');
INSERT INTO `gas_component` VALUES ('41', '1', 'nC28', '630-02-4', 'C28H58', '正二十八烷', '1', 'n-C28', '(CH3)2 (CH2)26');
INSERT INTO `gas_component` VALUES ('42', '1', 'nC29', '630-03-5', 'C29H60', '正二十九烷', '1', 'n-C29', '(CH3)2 (CH2)27');
INSERT INTO `gas_component` VALUES ('43', '1', 'nC30', '638-68-6', 'C30H62', '正三十烷', '1', 'n-C30', '(CH3)2 (CH2)28');
INSERT INTO `gas_component` VALUES ('44', '1', 'TEG', '112-27-6', 'C6H14O4', '三甘醇', '3', 'TEGlycol', '(CH2)4 (OH)2 (CH2O)2');
INSERT INTO `gas_component` VALUES ('45', '0', null, '115-07-1', 'C3H6', '丙烯', '1', 'Propene', 'CH3 CH2=CH');
INSERT INTO `gas_component` VALUES ('46', '1', '2,2-dim-C3', '463-82-1', 'C5H12', '2,2-二甲基丙烷', '1', '22-Mpropane', '(CH3)4 C');
INSERT INTO `gas_component` VALUES ('47', '1', '2-m-C5', '107-83-5', 'C6H14', '2-甲基戊烷', '1', '2-Mpentane', '(CH3)3 (CH2)2 CH');
INSERT INTO `gas_component` VALUES ('48', '1', '3-m-C5', '96-14-0', 'C6H14', '3-甲基戊烷', '1', '3-Mpentane', '(CH3)3 (CH2)2 CH');
INSERT INTO `gas_component` VALUES ('49', '1', '2,2-dim-C4', '75-83-2', 'C6H14', '2,2-二甲基丁烷', '1', '22-Mbutane', '(CH3)4 CH2 C');
INSERT INTO `gas_component` VALUES ('50', '1', '2,3-dim-C4', '79-29-8', 'C6H14', '2,3-二甲基丁烷', '1', '23-Mbutane', '(CH3)4 (CH)2');
INSERT INTO `gas_component` VALUES ('51', '1', '2-m-C6', '591-76-4', 'C7H16', '2-甲基己烷', '1', '2-Mhexane', '(CH3)3 (CH2)3 CH');
INSERT INTO `gas_component` VALUES ('52', '1', '3-m-C6', '589-34-4', 'C7H16', '3-甲基己烷', '1', '3-Mhexane', '(CH3)3 (CH2)3 CH');
INSERT INTO `gas_component` VALUES ('53', '1', '3,3-dim-C5', '562-49-2', 'C7H16', '3,3-二甲基戊烷', '1', '33-Mpentane', '(CH3)4 (CH2)2 C');
INSERT INTO `gas_component` VALUES ('54', '1', '223-tm-C4', '464-06-2', 'C7H16', '2,2,3-三甲基丁烷', '1', '223-Mbutane', '(CH3)5 CH C');
INSERT INTO `gas_component` VALUES ('55', '1', 'c-C4', '287-23-0', 'C4H8', '环丁烷', '1', 'Cyclobutane', '(CH2)4');
INSERT INTO `gas_component` VALUES ('56', '1', 't12-dm-cC5', '822-50-4', 'C7H14', '反-1,2-二甲基环戊烷', '1', '1-tr2-MCC5', '(CH3)2 (CH2)3 (CH)2');
INSERT INTO `gas_component` VALUES ('57', '1', 'He', '7440-59-7', 'He', '氦', '2', 'Helium', null);
INSERT INTO `gas_component` VALUES ('58', '0', null, '64-17-5', 'C2H6O', '乙醇', '3', 'Ethanol', 'CH3 CH2 OH');
INSERT INTO `gas_component` VALUES ('59', '1', 'Glycerol', '56-81-5', 'C3H8O3', '1,2,3-丙三醇', '3', 'Glycerol', '(CH2)2 CH (OH)3');
INSERT INTO `gas_component` VALUES ('60', '1', 'DEG', '111-46-6', 'C4H10O3', '二甘醇', '3', 'DEGlycol', '(CH2)3 CH2O (OH)2');
INSERT INTO `gas_component` VALUES ('61', '1', 'NaCl', '7647-14-5', 'NACL', '氯化钠', '2', 'NACL', null);
INSERT INTO `gas_component` VALUES ('62', '0', 'EtOH', null, null, '酒精', '3', null, null);
INSERT INTO `gas_component` VALUES ('63', '0', 'PGME', null, null, '丙二醇甲醚', '2', null, null);
INSERT INTO `gas_component` VALUES ('64', '0', 'DPGME', null, null, '二丙二醇甲基醚', '2', null, null);
INSERT INTO `gas_component` VALUES ('65', '0', 'DPG', null, null, '二丙二醇', '3', null, null);
INSERT INTO `gas_component` VALUES ('66', '0', 'HCOONa', null, null, '甲酸钠', '2', null, null);
INSERT INTO `gas_component` VALUES ('67', '0', 'KCl', null, null, '氯化钾', '2', null, null);
INSERT INTO `gas_component` VALUES ('68', '0', 'HCOOK', null, null, '甲酸钾', '2', null, null);
INSERT INTO `gas_component` VALUES ('69', '0', 'NaBr', null, null, '溴化钠', '2', null, null);
INSERT INTO `gas_component` VALUES ('70', '0', 'CaCl2', null, null, '氯化钙', '2', null, null);
INSERT INTO `gas_component` VALUES ('71', '0', 'KBr', null, null, '溴化钾', '2', null, null);
INSERT INTO `gas_component` VALUES ('72', '0', 'HCOOCs', null, null, '甲酸铯', '2', null, null);
INSERT INTO `gas_component` VALUES ('73', '0', 'CaBr2', null, null, '溴化钙', '2', null, null);
INSERT INTO `gas_component` VALUES ('74', '0', 'ZnBr2', null, null, '溴化锌', '2', null, null);
INSERT INTO `gas_component` VALUES ('75', '0', 'c-C3', null, null, '环丙烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('76', '0', 'c-C5', null, null, '环戊烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('77', '0', 'C6', null, null, '己烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('78', '0', 'm-c-C5', null, null, '甲基环戊烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('79', '1', 'c-C6|c-C7', null, null, '环庚烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('80', '1', 'c13-dm-cC5|t13-dm-cC5', null, null, '反-1,3-二甲基环戊烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('81', '0', 'm-c-C6', null, null, '甲基环己烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('82', '0', 'et-c-C5', null, null, '乙基环戊烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('83', '0', '113-tr-cC5', null, null, '1,1,3-三甲基环戊烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('84', '0', 'Toluene', null, null, '甲苯', '1', null, null);
INSERT INTO `gas_component` VALUES ('85', '0', '2-m-C7', null, null, '2-甲基庚烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('86', '0', '3-m-C7', null, null, '3-甲基庚烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('87', '0', '11-dm-c-C6', null, null, '1,1-二甲基环己烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('88', '0', 'c13-dm-cC6', null, null, '顺-1,3-二甲基环己烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('89', '0', 't12-dm-cC6', null, null, '顺-1,2-二甲基环己烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('90', '0', 'c12-dm-cC6', null, null, '反-1，2-二甲基环己烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('91', '0', 'Et-cC6', null, null, '乙基环己烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('92', '0', 'et-Benzene', null, null, '乙苯', '1', null, null);
INSERT INTO `gas_component` VALUES ('93', '0', 'p-Xylene', null, null, '对二甲苯', '1', null, null);
INSERT INTO `gas_component` VALUES ('94', '0', 'm-Xylene', null, null, '间二甲苯', '1', null, null);
INSERT INTO `gas_component` VALUES ('95', '0', '2-m-C8', null, null, '2-甲基辛烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('96', '0', 'o-Xylene', null, null, '邻二甲苯', '1', null, null);
INSERT INTO `gas_component` VALUES ('97', '0', '1m-3e-cC6', null, null, '1-甲基-3-乙基环己烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('98', '0', '1m-4e-cC6', null, null, '1-甲基-4-乙基环己烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('99', '0', 'c-C8', null, null, '环辛烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('100', '0', '4-m-C8', null, null, '4-甲基辛烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('101', '0', 'Mesitylene', null, null, '均三甲苯', '1', null, null);
INSERT INTO `gas_component` VALUES ('102', '0', 'Ps-Cumene', null, null, '聚苯乙烯-异丙苯', '1', null, null);
INSERT INTO `gas_component` VALUES ('103', '0', 'Hemellitol', null, null, '1,2,3-三甲基苯', '1', null, null);
INSERT INTO `gas_component` VALUES ('104', '0', 'Napht', null, null, '萘', '1', null, null);
INSERT INTO `gas_component` VALUES ('105', '0', '1-m-Napht', null, null, '1-甲基萘', '1', null, null);
INSERT INTO `gas_component` VALUES ('106', '0', 'nC31', null, null, '正三十一烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('107', '0', 'nC32', null, null, '正三十二烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('108', '0', 'nC33', null, null, '正三十三烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('109', '0', 'nC34', null, null, '正三十四烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('110', '0', 'nC35', null, null, '正三十五烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('111', '0', 'nC36', null, null, '正三十六烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('112', '0', 'nC37', null, null, '正三十七烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('113', '0', 'nC38', null, null, '正三十八烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('114', '0', 'nC39', null, null, '正三十九烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('115', '0', 'nC40', null, null, '正四十烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('116', '0', 'C7', null, null, '庚烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('117', '0', 'C8', null, null, '辛烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('118', '0', 'C9', null, null, '壬烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('119', '0', 'C10-C12', null, null, '癸烷-十二烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('120', '0', 'C13-C14', null, null, '十三烷-十四烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('121', '0', 'C15-C16', null, null, '十五烷-十六烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('122', '0', 'C17-C19', null, null, '十七烷-十九烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('123', '0', 'C20-C22', null, null, '二十烷-二十二烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('124', '0', 'C23-C26', null, null, '二十三烷-二十六烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('125', '0', 'C27-C31', null, null, '二十七烷-三十一烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('126', '0', 'C32-C40', null, null, '三十二烷-四十烷', '1', null, null);
INSERT INTO `gas_component` VALUES ('127', '0', 'C41-C80', null, null, '四十一烷-八十烷', '1', null, null);

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

-- ----------------------------
-- Table structure for `gas_component_property_value`
-- ----------------------------
DROP TABLE IF EXISTS `gas_component_property_value`;
CREATE TABLE `gas_component_property_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `gas_component_id` bigint(20) NOT NULL,
  `gas_component_property_id` bigint(20) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cvpyfoueuximcag6gf53d8cob` (`gas_component_id`),
  KEY `FK_rw8lpc9rgo322vp526dsaml8h` (`gas_component_property_id`),
  CONSTRAINT `FK_cvpyfoueuximcag6gf53d8cob` FOREIGN KEY (`gas_component_id`) REFERENCES `gas_component` (`id`),
  CONSTRAINT `FK_rw8lpc9rgo322vp526dsaml8h` FOREIGN KEY (`gas_component_property_id`) REFERENCES `gas_component_property` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gas_component_property_value
-- ----------------------------

-- ----------------------------
-- Table structure for `gas_component_property_value_factor`
-- ----------------------------
DROP TABLE IF EXISTS `gas_component_property_value_factor`;
CREATE TABLE `gas_component_property_value_factor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `gas_component_property_value_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6dgft93pux84uqwpm9n3nie5i` (`gas_component_property_value_id`),
  CONSTRAINT `FK_6dgft93pux84uqwpm9n3nie5i` FOREIGN KEY (`gas_component_property_value_id`) REFERENCES `gas_component_property_value` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gas_component_property_value_factor
-- ----------------------------

-- ----------------------------
-- Table structure for `physical_quantity`
-- ----------------------------
DROP TABLE IF EXISTS `physical_quantity`;
CREATE TABLE `physical_quantity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_iffxi2ig0lqg7purmewhu5gmj` (`quantity_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of physical_quantity
-- ----------------------------

-- ----------------------------
-- Table structure for `production_data`
-- ----------------------------
DROP TABLE IF EXISTS `production_data`;
CREATE TABLE `production_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_flag` datetime NOT NULL,
  `flowrate_gas` double NOT NULL,
  `flowrate_oil` double NOT NULL,
  `flowrate_water` double NOT NULL,
  `pressure` double NOT NULL,
  `temperature` double NOT NULL,
  `well_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_eu1338r9vgdt8jvfnqytinxp8` (`well_id`),
  CONSTRAINT `FK_eu1338r9vgdt8jvfnqytinxp8` FOREIGN KEY (`well_id`) REFERENCES `well` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of production_data
-- ----------------------------

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

-- ----------------------------
-- Table structure for `pseudo_component`
-- ----------------------------
DROP TABLE IF EXISTS `pseudo_component`;
CREATE TABLE `pseudo_component` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `density_of_liquid_phase` double DEFAULT NULL,
  `factor` double DEFAULT NULL,
  `molar_mass` double DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `true_boiling_point` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pseudo_component
-- ----------------------------

-- ----------------------------
-- Table structure for `quantity_unit`
-- ----------------------------
DROP TABLE IF EXISTS `quantity_unit`;
CREATE TABLE `quantity_unit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `factora` double NOT NULL,
  `factorb` double NOT NULL,
  `label` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `physical_quantity_id` bigint(20) NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `unit_system_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ci4q57gmqf45pue6iloo00mb4` (`unit_name`),
  KEY `FK_nml47x4spwo5jgbnen3sbsj3m` (`physical_quantity_id`),
  KEY `FK_borblkl2li0d7vrharyoktj6p` (`unit_system_id`),
  CONSTRAINT `FK_borblkl2li0d7vrharyoktj6p` FOREIGN KEY (`unit_system_id`) REFERENCES `unit_system` (`id`),
  CONSTRAINT `FK_nml47x4spwo5jgbnen3sbsj3m` FOREIGN KEY (`physical_quantity_id`) REFERENCES `physical_quantity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quantity_unit
-- ----------------------------

-- ----------------------------
-- Table structure for `system_default_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_default_menu`;
CREATE TABLE `system_default_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `menu_item_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h9wqdk0kk91prbdt1g388fcmr` (`menu_item_id`),
  KEY `FK_k40lo1857xnl99bba5997m0rk` (`user_id`),
  CONSTRAINT `FK_h9wqdk0kk91prbdt1g388fcmr` FOREIGN KEY (`menu_item_id`) REFERENCES `system_menu` (`id`),
  CONSTRAINT `FK_k40lo1857xnl99bba5997m0rk` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_default_menu
-- ----------------------------
INSERT INTO `system_default_menu` VALUES ('1', '0', '30', '4');

-- ----------------------------
-- Table structure for `system_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `doing` varchar(255) NOT NULL,
  `hostip` varchar(255) NOT NULL,
  `login_date` datetime NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('1', '0', '[password:********, _action_login:登录, userName:李晓平, controller:home, format:null, action:login]', '0:0:0:0:0:0:0:1', '2016-01-31 11:46:01', 'A9D41524537AF16601F11A9423313336', '李晓平');

-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `menu_action` varchar(255) NOT NULL,
  `menu_context` varchar(255) NOT NULL,
  `menu_description` varchar(255) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_right` int(11) NOT NULL,
  `up_menu_item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ta0xmlp775lih3ictrnyi2k5r` (`up_menu_item_id`),
  CONSTRAINT `FK_ta0xmlp775lih3ictrnyi2k5r` FOREIGN KEY (`up_menu_item_id`) REFERENCES `system_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '3', '#', '系统维护', '用户类型/菜单/角色/用户等', '0', '10', null);
INSERT INTO `system_menu` VALUES ('2', '1', 'systemRole/index', '角色管理', '维护各种角色，不同的角色拥有不同的权限', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('3', '1', 'systemUser/index', '用户管理', '增加、删除、编辑用户', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('4', '1', 'systemMenu/index', '菜单管理', '增加、删除、编辑菜单', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('5', '1', 'systemLog/index', '日志管理', '日志管理', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('6', '0', 'systemMenuTree/index', '树形菜单', '直观形象地维护菜单', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('7', '0', 'systemProcedure/index', '过程控制', '过程控制维护', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('10', '1', '#', '工程单位配置', '工程单位系统', '1', '0', null);
INSERT INTO `system_menu` VALUES ('11', '0', 'physicalQuantity/index', '物理量', '维护物理量信息', '0', '0', '10');
INSERT INTO `system_menu` VALUES ('12', '0', 'unitSystem/index', '单位系统', '维护单位系统', '0', '0', '10');
INSERT INTO `system_menu` VALUES ('13', '0', 'quantityUnit/index', '物理量单位管理', '维护物理量的单位信息', '0', '0', '10');
INSERT INTO `system_menu` VALUES ('20', '1', '#', '用户配置', '用户配置自己的开始界面', '1', '0', null);
INSERT INTO `system_menu` VALUES ('21', '0', 'systemDefaultMenu/index', '缺省菜单', '选择自己的缺省菜单', '0', '0', '20');
INSERT INTO `system_menu` VALUES ('30', '1', '#', '气体基本信息', '气体计算相关基础数据', '1', '0', null);
INSERT INTO `system_menu` VALUES ('31', '0', 'gasComponentFamily/index', '气体分类', '维护气体种类信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('32', '0', 'gasComponent/index', '组分信息', '维护气体组分信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('33', '0', 'propertyFamily/index', '物性分类', '维护物性参数分类信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('34', '0', 'gasComponentProperty/index', '组分物性', '维护气体组分物性信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('35', '0', 'gasComponentPropertyValue/index', '物性数值', '维护气体组分物性信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('36', '0', 'gasComponentPropertyValueFactor/index', '物性系数', '维护气体组分物性信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('37', '0', 'fluidGas/index', '气体', '维护气体信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('38', '0', 'componentFactor/index', '气质', '维护气体组分信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('39', '0', 'pseudoComponent/index', '拟组分', '维护气体拟组分信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('40', '1', '#', '导入工程基础数据', '用户配置工程基础数据', '1', '0', null);
INSERT INTO `system_menu` VALUES ('41', '0', 'fluidGasTools/prepareImportGasComponentNames', '组分名称', '维护气体组分参数信息', '0', '0', '40');
INSERT INTO `system_menu` VALUES ('42', '0', 'propertyTools/prepareImportPropertyNames', '参数名称', '维护气体组分参数信息', '0', '0', '40');
INSERT INTO `system_menu` VALUES ('43', '0', 'propertyDataTools/prepareImportPropertyDataA', '简单物性', '维护气体组分参数信息', '0', '0', '40');
INSERT INTO `system_menu` VALUES ('44', '0', 'propertyDataTools/prepareImportTemplate', '下载数据模板', '给用户提供一个数据模板', '0', '0', '40');
INSERT INTO `system_menu` VALUES ('50', '1', '#', '气体信息', '维护气体信息', '1', '0', null);
INSERT INTO `system_menu` VALUES ('51', '0', 'fluidTools/index', '气体种类', '维护气体信息', '0', '0', '50');
INSERT INTO `system_menu` VALUES ('52', '0', 'fluidTools/prepareImportComponentFactors', '导入气体', '维护气体信息', '0', '0', '50');
INSERT INTO `system_menu` VALUES ('53', '0', 'fluidTools/exportComponentNames', '选择气体组分', '维护气体信息', '0', '0', '50');
INSERT INTO `system_menu` VALUES ('60', '1', '#', 'VMS', '虚拟计量', '1', '0', null);
INSERT INTO `system_menu` VALUES ('61', '0', 'block/index', '区块管理', '维护区块信息信息', '0', '0', '60');
INSERT INTO `system_menu` VALUES ('62', '0', 'well/index', '井信息', '维护井信息', '0', '0', '60');
INSERT INTO `system_menu` VALUES ('63', '0', 'productionData/index', '生产信息', '维护生产信息', '0', '0', '60');
INSERT INTO `system_menu` VALUES ('64', '0', 'vms/index', 'VMS', '维护生产信息', '0', '0', '60');

-- ----------------------------
-- Table structure for `system_procedure`
-- ----------------------------
DROP TABLE IF EXISTS `system_procedure`;
CREATE TABLE `system_procedure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `next_id` bigint(20) DEFAULT NULL,
  `previous_id` bigint(20) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `view_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cc35aqiqibt35f7oi6b3a7e5p` (`name`),
  KEY `FK_hb3wr8lfurf3r0y3qt2ku7ali` (`next_id`),
  KEY `FK_qoihmm7f3k6inga0kwdx4631r` (`previous_id`),
  CONSTRAINT `FK_hb3wr8lfurf3r0y3qt2ku7ali` FOREIGN KEY (`next_id`) REFERENCES `system_procedure` (`id`),
  CONSTRAINT `FK_qoihmm7f3k6inga0kwdx4631r` FOREIGN KEY (`previous_id`) REFERENCES `system_procedure` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_procedure
-- ----------------------------
INSERT INTO `system_procedure` VALUES ('1', '1', 'prepareImportGasComponentNames', 'fluidGasTools', '1.导入气体组分名称', '2', null, 'gasComponentNames', null);
INSERT INTO `system_procedure` VALUES ('2', '0', 'importGascomponentNames', 'fluidGasTools', '1.1执行导入', null, '1', null, null);
INSERT INTO `system_procedure` VALUES ('3', '1', 'prepareImportPropertyNames', 'propertyTools', '2.物性参数名称', '4', null, 'propertyNames', null);
INSERT INTO `system_procedure` VALUES ('4', '0', 'importPropertyNames', 'propertyTools', '2.1导入参数名称', null, '3', null, null);
INSERT INTO `system_procedure` VALUES ('5', '2', 'prepareImportPropertyDataA', 'propertyDataTools', '3.物性数值-简单属性', '6', null, 'propertyDataA', null);
INSERT INTO `system_procedure` VALUES ('6', '0', 'importPropertyDataA', 'propertyDataTools', '3.1导入物性数值-简单物性', null, '5', null, null);
INSERT INTO `system_procedure` VALUES ('7', '1', 'prepareImportComponentFactors', 'fluidTools', '4.气体导入', '8', null, 'componentFactors', null);
INSERT INTO `system_procedure` VALUES ('8', '1', 'importComponentFactors', 'fluidTools', '4.1导入气体组分', null, '7', null, null);

-- ----------------------------
-- Table structure for `system_role`
-- ----------------------------
DROP TABLE IF EXISTS `system_role`;
CREATE TABLE `system_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_right` int(11) NOT NULL,
  `role_right_min` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ivlvpwtqr9qvb91iysnk94tjl` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_role
-- ----------------------------
INSERT INTO `system_role` VALUES ('1', '0', '工程硕士', '0', '0');
INSERT INTO `system_role` VALUES ('2', '0', '本科生', '1', '1');
INSERT INTO `system_role` VALUES ('3', '0', '学术硕士', '2', '2');
INSERT INTO `system_role` VALUES ('4', '0', '专业硕士', '3', '3');
INSERT INTO `system_role` VALUES ('5', '0', '博士', '4', '4');
INSERT INTO `system_role` VALUES ('6', '0', '操作员', '5', '0');
INSERT INTO `system_role` VALUES ('7', '0', '系统管理员', '10', '0');

-- ----------------------------
-- Table structure for `system_title`
-- ----------------------------
DROP TABLE IF EXISTS `system_title`;
CREATE TABLE `system_title` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `application_logo` varchar(255) NOT NULL,
  `application_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_title
-- ----------------------------
INSERT INTO `system_title` VALUES ('1', '1', 'cnoocC.jpg', '测试性的程序');

-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `superior_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_204b9ercidw1baj3s3m9lnr33` (`user_name`),
  KEY `FK_60nlksgdtkue7cjppucmyitgh` (`role_id`),
  KEY `FK_pqcj6q3t0dk71r1p9ujicvmd0` (`superior_id`),
  CONSTRAINT `FK_60nlksgdtkue7cjppucmyitgh` FOREIGN KEY (`role_id`) REFERENCES `system_role` (`id`),
  CONSTRAINT `FK_pqcj6q3t0dk71r1p9ujicvmd0` FOREIGN KEY (`superior_id`) REFERENCES `system_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('1', '0', 'd603a12ab27adab13e8d0e29dc54bbf6', '7', null, 'root');
INSERT INTO `system_user` VALUES ('2', '0', 'ee26fc66b1369c7625333bedafbfcaf6', '7', null, '宫敬');
INSERT INTO `system_user` VALUES ('3', '0', 'c444858e0aaeb727da73d2eae62321ad', '7', null, '课题组长');
INSERT INTO `system_user` VALUES ('4', '0', '350db081a661525235354dd3e19b8c05', '7', null, '李晓平');
INSERT INTO `system_user` VALUES ('5', '0', 'f4aa0dd960521e045ae2f20621fb4ee9', '7', null, '吴海浩');
INSERT INTO `system_user` VALUES ('6', '0', '37968ad196a5085f5ed91e58df8c2cef', '7', null, '史博会');
INSERT INTO `system_user` VALUES ('7', '0', '63538fe6ef330c13a05a3ed7e599d5f7', '3', null, '王嘉琪');
INSERT INTO `system_user` VALUES ('8', '0', '63538fe6ef330c13a05a3ed7e599d5f7', '3', null, '伍星光');

-- ----------------------------
-- Table structure for `unit_system`
-- ----------------------------
DROP TABLE IF EXISTS `unit_system`;
CREATE TABLE `unit_system` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `system_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c5ddp21vkngicwlunxt15bxax` (`system_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit_system
-- ----------------------------

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
INSERT INTO `well` VALUES ('1', '0', '1', 'ph-1');
INSERT INTO `well` VALUES ('2', '0', '1', 'ph-2');
INSERT INTO `well` VALUES ('3', '0', '1', 'ph-3');
