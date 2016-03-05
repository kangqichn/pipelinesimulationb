/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : psdba

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-02-15 10:23:42
*/

SET FOREIGN_KEY_CHECKS=0;
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
  `gas` varchar(255) DEFAULT NULL,
  `is_pseudo` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unifac_structure` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_p9bkvi7964imu5sg6by05bi2k` (`family_id`),
  CONSTRAINT `FK_p9bkvi7964imu5sg6by05bi2k` FOREIGN KEY (`family_id`) REFERENCES `gas_component_family` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gas_component
-- ----------------------------
INSERT INTO `gas_component` VALUES ('1', '2', 'C1|CH4', '74-82-8', 'CH4', '甲烷', '1', null, null, 'Methane', 'CH4');
INSERT INTO `gas_component` VALUES ('2', '2', 'C2|C2H6', '74-84-0', 'C2H6', '乙烷', '1', null, null, 'Ethane', '(CH3)2');
INSERT INTO `gas_component` VALUES ('3', '2', 'C3|C3H8', '74-98-6', 'C3H8', '丙烷', '1', null, null, 'Propane', '(CH3)2 CH2');
INSERT INTO `gas_component` VALUES ('4', '2', 'iC4|iC4H10', '75-28-5', 'C4H10', '异丁烷', '1', null, null, 'i-Butane', '(CH3)3 CH');
INSERT INTO `gas_component` VALUES ('5', '2', 'nC4|nC4H10', '106-97-8', 'C4H10', '正丁烷', '1', null, null, 'n-Butane', '(CH3)2 (CH2)2');
INSERT INTO `gas_component` VALUES ('6', '2', 'iC5|iC5H12', '78-78-4', 'C5H12', '异戊烷', '1', null, null, 'i-Pentane', '(CH3)3 CH2 CH');
INSERT INTO `gas_component` VALUES ('7', '2', 'nC5|nC5H12', '109-66-0', 'C5H12', '正戊烷', '1', null, null, 'n-Pentane', '(CH3)2 (CH2)3');
INSERT INTO `gas_component` VALUES ('8', '1', 'nC6', '110-54-3', 'C6H14', '正己烷', '1', null, null, 'n-Hexane', '(CH3)2 (CH2)4');
INSERT INTO `gas_component` VALUES ('9', '1', 'nC7', '142-82-5', 'C7H16', '正庚烷', '1', null, null, 'n-Heptane', '(CH3)2 (CH2)5');
INSERT INTO `gas_component` VALUES ('10', '1', 'nC8', '111-65-9', 'C8H18', '正辛烷', '1', null, null, 'n-Octane', '(CH3)2 (CH2)6');
INSERT INTO `gas_component` VALUES ('11', '1', 'nC9', '111-84-2', 'C9H20', '正壬烷', '1', null, null, 'n-Nonane', '(CH3)2 (CH2)7');
INSERT INTO `gas_component` VALUES ('12', '1', 'nC10', '124-18-5', 'C10H22', '正癸烷', '1', null, null, 'n-Decane', '(CH3)2 (CH2)8');
INSERT INTO `gas_component` VALUES ('13', '1', 'N2', '7727-37-9', 'N2', '氮气', '2', null, null, 'Nitrogen', null);
INSERT INTO `gas_component` VALUES ('14', '1', 'CO2', '124-38-9', 'CO2', '二氧化碳', '2', null, null, 'CO2', null);
INSERT INTO `gas_component` VALUES ('15', '1', 'H2S', '7783-6-4', 'H2S', '硫化氢', '2', null, null, 'H2S', null);
INSERT INTO `gas_component` VALUES ('16', '1', 'Benzene', '71-43-2', 'C6H6', '苯', '1', null, null, 'Benzene', '(ACH)6');
INSERT INTO `gas_component` VALUES ('17', '1', 'H2O', '7732-18-5', 'H2O', '水', '2', null, null, 'H2O', null);
INSERT INTO `gas_component` VALUES ('18', '1', 'H2', '1333-74-0', 'H2', '氢气', '2', null, null, 'Hydrogen', null);
INSERT INTO `gas_component` VALUES ('19', '0', null, '630-08-0', 'CO', '一氧化碳', '2', null, null, 'CO', null);
INSERT INTO `gas_component` VALUES ('20', '1', 'Ar', '7440-37-1', 'Ar', '氩', '2', null, null, 'Argon', null);
INSERT INTO `gas_component` VALUES ('21', '1', 'O2', '7782-44-7', 'O2', '氧气', '2', null, null, 'Oxygen', null);
INSERT INTO `gas_component` VALUES ('22', '1', 'MeOH', '67-56-1', 'CH4O', '甲醇', '3', null, null, 'Methanol', 'CH3OH');
INSERT INTO `gas_component` VALUES ('23', '1', 'MEG', '107-21-1', 'C2H6O2', '乙二醇', '3', null, null, 'EGlycol', '(CH2OH)2');
INSERT INTO `gas_component` VALUES ('24', '1', 'nC11', '1120-21-4', 'C11H24', '正十一烷', '1', null, null, 'n-C11', '(CH3)2 (CH2)9');
INSERT INTO `gas_component` VALUES ('25', '1', 'nC12', '112-40-3', 'C12H26', '正十二烷', '1', null, null, 'n-C12', '(CH3)2 (CH2)10');
INSERT INTO `gas_component` VALUES ('26', '1', 'nC13', '629-50-5', 'C13H28', '正十三烷', '1', null, null, 'n-C13', '(CH3)2 (CH2)11');
INSERT INTO `gas_component` VALUES ('27', '1', 'nC14', '629-59-4', 'C14H30', '正十四烷', '1', null, null, 'n-C14', '(CH3)2 (CH2)12');
INSERT INTO `gas_component` VALUES ('28', '1', 'nC15', '629-62-9', 'C15H32', '正十五烷', '1', null, null, 'n-C15', '(CH3)2 (CH2)13');
INSERT INTO `gas_component` VALUES ('29', '1', 'nC16', '544-76-3', 'C16H34', '正十六烷', '1', null, null, 'n-C16', '(CH3)2 (CH2)14');
INSERT INTO `gas_component` VALUES ('30', '1', 'nC17', '629-78-7', 'C17H36', '正十七烷', '1', null, null, 'n-C17', '(CH3)2 (CH2)15');
INSERT INTO `gas_component` VALUES ('31', '1', 'nC18', '593-45-3', 'C18H38', '正十八烷', '1', null, null, 'n-C18', '(CH3)2 (CH2)16');
INSERT INTO `gas_component` VALUES ('32', '1', 'nC19', '629-92-5', 'C19H40', '正十九烷', '1', null, null, 'n-C19', '(CH3)2 (CH2)17');
INSERT INTO `gas_component` VALUES ('33', '1', 'nC20', '112-95-8', 'C20H42', '正二十烷', '1', null, null, 'n-C20', '(CH3)2 (CH2)18');
INSERT INTO `gas_component` VALUES ('34', '1', 'nC21', '629-94-7', 'C21H44', '正二十一烷', '1', null, null, 'n-C21', '(CH3)2 (CH2)19');
INSERT INTO `gas_component` VALUES ('35', '1', 'nC22', '629-97-0', 'C22H46', '正二十二烷', '1', null, null, 'n-C22', '(CH3)2 (CH2)20');
INSERT INTO `gas_component` VALUES ('36', '1', 'nC23', '638-67-5', 'C23H48', '正二十三烷', '1', null, null, 'n-C23', '(CH3)2 (CH2)21');
INSERT INTO `gas_component` VALUES ('37', '1', 'nC24', '646-31-1', 'C24H50', '正二十四烷', '1', null, null, 'n-C24', '(CH3)2 (CH2)22');
INSERT INTO `gas_component` VALUES ('38', '1', 'nC25', '629-99-2', 'C25H52', '正二十五烷', '1', null, null, 'n-C25', '(CH3)2 (CH2)23');
INSERT INTO `gas_component` VALUES ('39', '1', 'nC26', '630-01-3', 'C26H54', '正二十六烷', '1', null, null, 'n-C26', '(CH3)2 (CH2)24');
INSERT INTO `gas_component` VALUES ('40', '1', 'nC27', '593-49-7', 'C27H56', '正二十七烷', '1', null, null, 'n-C27', '(CH3)2 (CH2)25');
INSERT INTO `gas_component` VALUES ('41', '1', 'nC28', '630-02-4', 'C28H58', '正二十八烷', '1', null, null, 'n-C28', '(CH3)2 (CH2)26');
INSERT INTO `gas_component` VALUES ('42', '1', 'nC29', '630-03-5', 'C29H60', '正二十九烷', '1', null, null, 'n-C29', '(CH3)2 (CH2)27');
INSERT INTO `gas_component` VALUES ('43', '1', 'nC30', '638-68-6', 'C30H62', '正三十烷', '1', null, null, 'n-C30', '(CH3)2 (CH2)28');
INSERT INTO `gas_component` VALUES ('44', '1', 'TEG', '112-27-6', 'C6H14O4', '三甘醇', '3', null, null, 'TEGlycol', '(CH2)4 (OH)2 (CH2O)2');
INSERT INTO `gas_component` VALUES ('45', '0', null, '115-07-1', 'C3H6', '丙烯', '1', null, null, 'Propene', 'CH3 CH2=CH');
INSERT INTO `gas_component` VALUES ('46', '1', '2,2-dim-C3', '463-82-1', 'C5H12', '2,2-二甲基丙烷', '1', null, null, '22-Mpropane', '(CH3)4 C');
INSERT INTO `gas_component` VALUES ('47', '1', '2-m-C5', '107-83-5', 'C6H14', '2-甲基戊烷', '1', null, null, '2-Mpentane', '(CH3)3 (CH2)2 CH');
INSERT INTO `gas_component` VALUES ('48', '1', '3-m-C5', '96-14-0', 'C6H14', '3-甲基戊烷', '1', null, null, '3-Mpentane', '(CH3)3 (CH2)2 CH');
INSERT INTO `gas_component` VALUES ('49', '1', '2,2-dim-C4', '75-83-2', 'C6H14', '2,2-二甲基丁烷', '1', null, null, '22-Mbutane', '(CH3)4 CH2 C');
INSERT INTO `gas_component` VALUES ('50', '1', '2,3-dim-C4', '79-29-8', 'C6H14', '2,3-二甲基丁烷', '1', null, null, '23-Mbutane', '(CH3)4 (CH)2');
INSERT INTO `gas_component` VALUES ('51', '1', '2-m-C6', '591-76-4', 'C7H16', '2-甲基己烷', '1', null, null, '2-Mhexane', '(CH3)3 (CH2)3 CH');
INSERT INTO `gas_component` VALUES ('52', '1', '3-m-C6', '589-34-4', 'C7H16', '3-甲基己烷', '1', null, null, '3-Mhexane', '(CH3)3 (CH2)3 CH');
INSERT INTO `gas_component` VALUES ('53', '1', '3,3-dim-C5', '562-49-2', 'C7H16', '3,3-二甲基戊烷', '1', null, null, '33-Mpentane', '(CH3)4 (CH2)2 C');
INSERT INTO `gas_component` VALUES ('54', '1', '223-tm-C4', '464-06-2', 'C7H16', '2,2,3-三甲基丁烷', '1', null, null, '223-Mbutane', '(CH3)5 CH C');
INSERT INTO `gas_component` VALUES ('55', '1', 'c-C4', '287-23-0', 'C4H8', '环丁烷', '1', null, null, 'Cyclobutane', '(CH2)4');
INSERT INTO `gas_component` VALUES ('56', '1', 't12-dm-cC5', '822-50-4', 'C7H14', '反-1,2-二甲基环戊烷', '1', null, null, '1-tr2-MCC5', '(CH3)2 (CH2)3 (CH)2');
INSERT INTO `gas_component` VALUES ('57', '1', 'He', '7440-59-7', 'He', '氦', '2', null, null, 'Helium', null);
INSERT INTO `gas_component` VALUES ('58', '0', null, '64-17-5', 'C2H6O', '乙醇', '3', null, null, 'Ethanol', 'CH3 CH2 OH');
INSERT INTO `gas_component` VALUES ('59', '1', 'Glycerol', '56-81-5', 'C3H8O3', '1,2,3-丙三醇', '3', null, null, 'Glycerol', '(CH2)2 CH (OH)3');
INSERT INTO `gas_component` VALUES ('60', '1', 'DEG', '111-46-6', 'C4H10O3', '二甘醇', '3', null, null, 'DEGlycol', '(CH2)3 CH2O (OH)2');
INSERT INTO `gas_component` VALUES ('61', '1', 'NaCl', '7647-14-5', 'NACL', '氯化钠', '2', null, null, 'NACL', null);
INSERT INTO `gas_component` VALUES ('62', '0', 'EtOH', null, null, '酒精', '3', null, null, null, null);
INSERT INTO `gas_component` VALUES ('63', '0', 'PGME', null, null, '丙二醇甲醚', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('64', '0', 'DPGME', null, null, '二丙二醇甲基醚', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('65', '0', 'DPG', null, null, '二丙二醇', '3', null, null, null, null);
INSERT INTO `gas_component` VALUES ('66', '0', 'HCOONa', null, null, '甲酸钠', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('67', '0', 'KCl', null, null, '氯化钾', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('68', '0', 'HCOOK', null, null, '甲酸钾', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('69', '0', 'NaBr', null, null, '溴化钠', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('70', '0', 'CaCl2', null, null, '氯化钙', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('71', '0', 'KBr', null, null, '溴化钾', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('72', '0', 'HCOOCs', null, null, '甲酸铯', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('73', '0', 'CaBr2', null, null, '溴化钙', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('74', '0', 'ZnBr2', null, null, '溴化锌', '2', null, null, null, null);
INSERT INTO `gas_component` VALUES ('75', '0', 'c-C3', null, null, '环丙烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('76', '0', 'c-C5', null, null, '环戊烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('77', '0', 'C6', null, null, '己烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('78', '0', 'm-c-C5', null, null, '甲基环戊烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('79', '1', 'c-C6|c-C7', null, null, '环庚烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('80', '1', 'c13-dm-cC5|t13-dm-cC5', null, null, '反-1,3-二甲基环戊烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('81', '0', 'm-c-C6', null, null, '甲基环己烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('82', '0', 'et-c-C5', null, null, '乙基环戊烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('83', '0', '113-tr-cC5', null, null, '1,1,3-三甲基环戊烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('84', '0', 'Toluene', null, null, '甲苯', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('85', '0', '2-m-C7', null, null, '2-甲基庚烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('86', '0', '3-m-C7', null, null, '3-甲基庚烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('87', '0', '11-dm-c-C6', null, null, '1,1-二甲基环己烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('88', '0', 'c13-dm-cC6', null, null, '顺-1,3-二甲基环己烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('89', '0', 't12-dm-cC6', null, null, '顺-1,2-二甲基环己烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('90', '0', 'c12-dm-cC6', null, null, '反-1，2-二甲基环己烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('91', '0', 'Et-cC6', null, null, '乙基环己烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('92', '0', 'et-Benzene', null, null, '乙苯', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('93', '0', 'p-Xylene', null, null, '对二甲苯', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('94', '0', 'm-Xylene', null, null, '间二甲苯', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('95', '0', '2-m-C8', null, null, '2-甲基辛烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('96', '0', 'o-Xylene', null, null, '邻二甲苯', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('97', '0', '1m-3e-cC6', null, null, '1-甲基-3-乙基环己烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('98', '0', '1m-4e-cC6', null, null, '1-甲基-4-乙基环己烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('99', '0', 'c-C8', null, null, '环辛烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('100', '0', '4-m-C8', null, null, '4-甲基辛烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('101', '0', 'Mesitylene', null, null, '均三甲苯', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('102', '0', 'Ps-Cumene', null, null, '聚苯乙烯-异丙苯', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('103', '0', 'Hemellitol', null, null, '1,2,3-三甲基苯', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('104', '0', 'Napht', null, null, '萘', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('105', '0', '1-m-Napht', null, null, '1-甲基萘', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('106', '0', 'nC31', null, null, '正三十一烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('107', '0', 'nC32', null, null, '正三十二烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('108', '0', 'nC33', null, null, '正三十三烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('109', '0', 'nC34', null, null, '正三十四烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('110', '0', 'nC35', null, null, '正三十五烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('111', '0', 'nC36', null, null, '正三十六烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('112', '0', 'nC37', null, null, '正三十七烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('113', '0', 'nC38', null, null, '正三十八烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('114', '0', 'nC39', null, null, '正三十九烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('115', '0', 'nC40', null, null, '正四十烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('116', '0', 'C7', null, null, '庚烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('117', '0', 'C8', null, null, '辛烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('118', '0', 'C9', null, null, '壬烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('119', '0', 'C10-C12', null, null, '癸烷-十二烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('120', '0', 'C13-C14', null, null, '十三烷-十四烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('121', '0', 'C15-C16', null, null, '十五烷-十六烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('122', '0', 'C17-C19', null, null, '十七烷-十九烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('123', '0', 'C20-C22', null, null, '二十烷-二十二烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('124', '0', 'C23-C26', null, null, '二十三烷-二十六烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('125', '0', 'C27-C31', null, null, '二十七烷-三十一烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('126', '0', 'C32-C40', null, null, '三十二烷-四十烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('127', '0', 'C41-C80', null, null, '四十一烷-八十烷', '1', null, null, null, null);
INSERT INTO `gas_component` VALUES ('128', '0', null, null, null, '假组分', '1', '实测-中卫站', '', '≥C6+(实测-中卫站)', null);
INSERT INTO `gas_component` VALUES ('129', '0', null, null, null, '假组分', '1', '实测-阳曲', '', '≥C6+(实测-阳曲)', null);
INSERT INTO `gas_component` VALUES ('130', '0', null, null, null, '假组分', '1', '实测-了墩3线', '', '≥C6+(实测-了墩3线)', null);
INSERT INTO `gas_component` VALUES ('131', '0', null, null, null, '假组分', '1', '实测-了墩2线', '', '≥C6+(实测-了墩2线)', null);
INSERT INTO `gas_component` VALUES ('132', '0', null, null, null, '假组分', '1', '霍尔果斯站-实测-2015.9.18', '', '≥C6+(霍尔果斯站-实测-2015.9.18)', null);
