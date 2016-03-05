/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : psdba

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-02-16 23:09:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `system_procedure`
-- ----------------------------
DROP TABLE IF EXISTS `system_procedure`;
CREATE TABLE `system_procedure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `append_actions` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_procedure
-- ----------------------------
INSERT INTO `system_procedure` VALUES ('1', '1', 'prepareImportGasComponentNames', null, 'fluidGasTools', '1.导入气体组分名称', '2', null, 'gasComponentNames', null);
INSERT INTO `system_procedure` VALUES ('2', '0', 'importGascomponentNames', null, 'fluidGasTools', '1.1执行导入', null, '1', null, null);
INSERT INTO `system_procedure` VALUES ('3', '1', 'prepareImportPropertyNames', null, 'propertyTools', '2.物性参数名称', '4', null, 'propertyNames', null);
INSERT INTO `system_procedure` VALUES ('4', '0', 'importPropertyNames', null, 'propertyTools', '2.1导入参数名称', null, '3', null, null);
INSERT INTO `system_procedure` VALUES ('5', '2', 'prepareImportPropertyDataA', null, 'propertyDataTools', '3.物性数值-简单属性', '6', null, 'propertyDataA', null);
INSERT INTO `system_procedure` VALUES ('6', '0', 'importPropertyDataA', null, 'propertyDataTools', '3.1导入物性数值-简单物性', null, '5', null, null);
INSERT INTO `system_procedure` VALUES ('7', '2', 'prepareImportComponentFactors', null, 'fluidTools', '4.气体导入', '8', null, 'componentFactors', null);
INSERT INTO `system_procedure` VALUES ('8', '1', 'importComponentFactors', '查重:checkGasName', 'fluidTools', '4.1导入气体组分', null, '7', null, null);
INSERT INTO `system_procedure` VALUES ('9', '3', 'newCompressorCurveTest', '选压缩机:queryCompressor,选气质:queryFluidGas,测试条件:setTestStatus,导入数据:importTest', 'compressorTools', '5.压缩机特性测试', null, null, null, null);
INSERT INTO `system_procedure` VALUES ('10', '0', 'importLangFangFile', null, 'compressorTools4LangFang', '6.廊坊项目', '11', null, 'langfang', null);
INSERT INTO `system_procedure` VALUES ('11', '1', 'newCompressorCurveTest', '导入:importFile,分析:analysis,测试条件:setTestStatus,导入数据:importTest', 'compressorTools4LangFang', '6.1压缩机特性测试', '11', null, null, null);
