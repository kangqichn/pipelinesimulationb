/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : psdba

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-02-15 10:04:02
*/

SET FOREIGN_KEY_CHECKS=0;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
INSERT INTO `system_user` VALUES ('9', '0', '9c3e9dbfd769eefa14de301a9c938003', '6', '4', '王玉叶');
