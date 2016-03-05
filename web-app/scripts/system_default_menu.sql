/*
Navicat MySQL Data Transfer

Source Server         : sample-localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : gasdb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-11-13 14:47:14
*/

SET FOREIGN_KEY_CHECKS=0;
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
