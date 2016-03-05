SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `system_title`;
CREATE TABLE `system_title` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `application_logo` varchar(255) NOT NULL,
  `application_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `system_title` VALUES ('1', '1', 'cnoocC.jpg', '测试性的程序');
