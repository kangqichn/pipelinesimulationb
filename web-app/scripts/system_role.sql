SET FOREIGN_KEY_CHECKS=0;

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

INSERT INTO `system_role` VALUES ('1', '0', '工程硕士', '0', '0');
INSERT INTO `system_role` VALUES ('2', '0', '本科生', '1', '1');
INSERT INTO `system_role` VALUES ('3', '0', '学术硕士', '2', '2');
INSERT INTO `system_role` VALUES ('4', '0', '专业硕士', '3', '3');
INSERT INTO `system_role` VALUES ('5', '0', '博士', '4', '4');
INSERT INTO `system_role` VALUES ('6', '0', '操作员', '5', '0');
INSERT INTO `system_role` VALUES ('7', '0', '系统管理员', '10', '0');
