
SET FOREIGN_KEY_CHECKS=0;

INSERT INTO `value_type` VALUES ('1', '0', '节点', 'node');
INSERT INTO `value_type` VALUES ('2', '0', '单值类型(整数、浮点、字符串、一维数组[元素之间用空格]等等)', 'single');
INSERT INTO `value_type` VALUES ('3', '0', '枚举、选择类型（枚举类型、选择类型）具体选项请在appendValue中列出', 'enum');
INSERT INTO `value_type` VALUES ('4', '0', '列数组，（包括Map类型,appendValue中输入对应的标题）', 'col_array');
INSERT INTO `value_type` VALUES ('5', '0', '内部链接(选择数据的根节点，appendValue中输入对应的KeyId)', 'innerHref');
INSERT INTO `value_type` VALUES ('6', '0', '外部链接(请给出相应的SQL语句用于连接外部的表)', 'outerHref');
INSERT INTO `value_type` VALUES ('7', '0', '外部文件(浏览文件，上传)', 'outerFile');
INSERT INTO `value_type` VALUES ('8', '0', '内链数组，一组内联对象', 'innerHrefArray');
