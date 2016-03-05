
SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

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

INSERT INTO `system_menu` VALUES ('30', '1', '#', '组分模型基础设置', '有关组分模型的基础设置信息', '1', '0', null);
INSERT INTO `system_menu` VALUES ('31', '0', 'componentFactorType/index', '气体分数类型', '维护气体分数类型', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('32', '0', 'gasComponentFamily/index', '气体分类', '维护气体种类信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('33', '0', 'gasComponent/index', '组分', '维护气体组分信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('34', '0', 'propertyFamily/index', '物性分类', '维护物性参数分类信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('35', '0', 'gasComponentProperty/index', '组分物性', '维护气体组分物性信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('36', '0', 'gasComponentPropertyValue/index', '物性数值', '维护气体组分物性信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('37', '0', 'gasComponentPropertyValueFactor/index', '物性系数', '维护气体组分物性信息', '0', '0', '30');

INSERT INTO `system_menu` VALUES ('38', '0', 'fluidGasTools/prepareImportGasComponentNames', '组分名称', '维护气体组分参数信息', '0', '0', '30');

INSERT INTO `system_menu` VALUES ('42', '0', 'propertyTools/prepareImportPropertyNames', '参数名称', '维护气体组分参数信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('43', '0', 'propertyDataTools/prepareImportPropertyDataA', '简单物性', '维护气体组分参数信息', '0', '0', '30');
INSERT INTO `system_menu` VALUES ('44', '0', 'propertyDataTools/prepareImportTemplate', '下载数据模板', '给用户提供一个数据模板', '0', '0', '30');

INSERT INTO `system_menu` VALUES ('100', '2', '#', '压缩机特性曲线', '压缩机特性曲线', '5', '0', null);
INSERT INTO `system_menu` VALUES ('101', '0', 'compressorType/index', '压缩机类型', '压缩机类型', '0', '0', '100');
INSERT INTO `system_menu` VALUES ('102', '0', 'compressor/index', '压缩机', '压缩机', '0', '0', '100');
INSERT INTO `system_menu` VALUES ('103', '0', 'compressorCurveTest/index', '特性曲线测试', '特性曲线测试', '0', '0', '100');
INSERT INTO `system_menu` VALUES ('104', '1', 'curve/index', '曲线', '曲线', '0', '0', '100');
INSERT INTO `system_menu` VALUES ('105', '1', 'curvePoint/index', '点', '点', '0', '0', '100');

INSERT INTO `system_menu` VALUES ('200', '2', '#', '气体信息-基础', '气体相关信息', '5', '0', null);
INSERT INTO `system_menu` VALUES ('201', '0', 'fluidGas/index', '气体', '维护气体信息', '0', '0', '200');
INSERT INTO `system_menu` VALUES ('203', '0', 'componentFactor/index', '组分数', '维护气体组分信息', '0', '0', '200');

INSERT INTO `system_menu` VALUES ('300', '2', '#', '气体信息维护', '气体相关信息', '5', '0', null);
INSERT INTO `system_menu` VALUES ('301', '0', 'fluidTools/index', '气体', '维护气体信息', '0', '0', '300');
INSERT INTO `system_menu` VALUES ('302', '0', 'fluidTools/prepareImportComponentFactors', '导入气体', '维护气体信息', '0', '0', '300');

INSERT INTO `system_menu` VALUES ('400', '2', '#', '压缩机特性测试', '压缩机特性曲线', '5', '0', null);
INSERT INTO `system_menu` VALUES ('401', '0', 'compressorTools/index', '压缩机特性', '压缩机', '0', '0', '400');
INSERT INTO `system_menu` VALUES ('402', '0', 'compressorTools4LangFang/index', '廊坊项目', '压缩机', '0', '0', '400');
