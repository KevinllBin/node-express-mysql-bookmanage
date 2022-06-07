/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 07/06/2022 10:19:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_author` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_pub` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '《醉酒的植物学家——创造了世界名》', '艾米·斯图尔特1', '商务印书馆');
INSERT INTO `book` VALUES (2, '《探寻自然的秩序——从林奈到E.O》', '美)保罗·劳伦斯·法伯', '商务印书馆');
INSERT INTO `book` VALUES (3, '《羽毛》', '格兰特•艾', '商务印书馆');
INSERT INTO `book` VALUES (4, '《可装裱的中国博物艺术》', '朱迪斯·玛吉', '商务印书馆');
INSERT INTO `book` VALUES (5, '《天堂鸟》', '黛安娜·阿布杰比', '四川文艺出版社');
INSERT INTO `book` VALUES (6, '《理想国》', '柏拉图', '广西师范大学出版社');
INSERT INTO `book` VALUES (7, '《温故》', ' 刘瑞琳', '广西师范大学出版社');
INSERT INTO `book` VALUES (8, '《读库》', '张立宪', '同心出版社');
INSERT INTO `book` VALUES (9, '《论语译注》', '杨伯峻', '中华书局');
INSERT INTO `book` VALUES (10, '《给孩子100本最棒的书》', '(美)安妮塔•西尔维', '湖南少年儿童出版社');
INSERT INTO `book` VALUES (11, '《新工具》', '培根', '商务印书馆');
INSERT INTO `book` VALUES (12, '《政府论》', '洛克', '中华书局');
INSERT INTO `book` VALUES (13, '《论法的精神》', '孟德斯鸠', '同心出版社');
INSERT INTO `book` VALUES (14, '《社会契约论》', '卢梭', '商务印书馆');
INSERT INTO `book` VALUES (15, '《常识》', '潘恩', '同心出版社');
INSERT INTO `book` VALUES (16, '《战争论》', '克劳塞维茨', '商务印书馆');
INSERT INTO `book` VALUES (17, '《追风筝的人》', '[美] 卡勒德·胡赛尼', '上海人民出版社');
INSERT INTO `book` VALUES (18, '《解忧杂货店》', '[日] 东野圭吾', '南海出版社');
INSERT INTO `book` VALUES (19, '《小王子》', ' [法] 圣埃克苏佩里', ' 人民出版社');
INSERT INTO `book` VALUES (20, '《白夜行》', ' [日] 东野圭吾', '南海出版社');
INSERT INTO `book` VALUES (21, '《围城》', '銭锺书', '商务印书馆');
INSERT INTO `book` VALUES (22, '《三体Ⅰ》', '刘慈欣', '四川科学技术出版社');
INSERT INTO `book` VALUES (23, '《嫌疑人X的献身》', ' [日] 东野圭吾', '南海出版社');
INSERT INTO `book` VALUES (24, '《挪威的森林》', ' [日] 村上春树', '上海译文出版社');
INSERT INTO `book` VALUES (25, '《活着》', '余华', '作家出版社');
INSERT INTO `book` VALUES (26, '《草房子》', '曹文轩', '江苏少年儿童出版社');
INSERT INTO `book` VALUES (27, '《如何阅读一本书》', '莫提默·艾德勒', ' 人民出版社');
INSERT INTO `book` VALUES (28, '《平凡的世界》', '路遥', ' 人民出版社');
INSERT INTO `book` VALUES (29, '《十年一觉电影梦--李安传》', '张靓蓓', ' 人民出版社');
INSERT INTO `book` VALUES (30, '《太空步--迈克尔·杰克逊自传》', '迈克尔·杰克逊', ' 人民出版社');
INSERT INTO `book` VALUES (31, '《万水千山：三毛》', '刘兰芳', '中华书局');
INSERT INTO `book` VALUES (32, '《目送》', '龙应台', '作家出版社');
INSERT INTO `book` VALUES (33, '《人间词话》', '王国维', '中华书局');
INSERT INTO `book` VALUES (34, '《红与黑》', '司汤达', '作家出版社');
INSERT INTO `book` VALUES (35, '《雪国》', '川端康成', ' 人民出版社');
INSERT INTO `book` VALUES (36, '《风雨哈佛路》', '莉丝·默里', '中华书局');
INSERT INTO `book` VALUES (37, '《菊花与刀》', '鲁思·本尼迪克特', ' 人民出版社');
INSERT INTO `book` VALUES (38, '《老人与海》', '海明威', '中华书局');
INSERT INTO `book` VALUES (39, '《当幸福来敲门》', '李春雷', '作家出版社');
INSERT INTO `book` VALUES (40, '《追寻生命的意义》', '维克多·E·弗兰克尔', ' 人民出版社');
INSERT INTO `book` VALUES (41, '《圣经的故事》', '房龙', '作家出版社');
INSERT INTO `book` VALUES (42, '《人类的艺术》', '房龙', '中华书局');
INSERT INTO `book` VALUES (43, '《人性的弱点》', '111', '作家出版社');
INSERT INTO `book` VALUES (44, '《世界科学技术通史》', '麦克莱伦第三', '中华书局');
INSERT INTO `book` VALUES (45, '《万物简史》', '比尔·布莱森', ' 人民出版社');
INSERT INTO `book` VALUES (46, '《爱的艺术》', '埃里希·弗洛姆', '中华书局');
INSERT INTO `book` VALUES (47, '《苏菲的世界》', '乔斯坦·贾德', ' 人民出版社');
INSERT INTO `book` VALUES (48, '《中国哲学史》', '冯友兰', ' 人民出版社');
INSERT INTO `book` VALUES (49, '《激荡三十年》', '吴晓波', '作家出版社');
INSERT INTO `book` VALUES (50, '《鲁迅自传》', '鲁迅', '作家出版社');
INSERT INTO `book` VALUES (51, '《孔子传》', '钱穆', ' 人民出版社');
INSERT INTO `book` VALUES (52, '《夏天烟花和我的尸体》', '(日)乙一', '当代世界出版社');
INSERT INTO `book` VALUES (53, '《云边有个小卖部》', '张嘉佳', '湖南文艺出版社');
INSERT INTO `book` VALUES (67, '《血殇》', '[美] 理查德 ·普雷斯顿', '上海译文出版社');
INSERT INTO `book` VALUES (68, '《十宗罪6》', '蜘蛛', '中华工商联合出版社');
INSERT INTO `book` VALUES (69, '《股市阴阳线法则》', '曹新', '学林出版社');
INSERT INTO `book` VALUES (70, '《日落碗窑》', '迟子建', '人民文学出版社');
INSERT INTO `book` VALUES (71, '《细说三国》', '黎东方', '商务印书馆');
INSERT INTO `book` VALUES (72, '《图说日本服饰史》', '高桥健自', '清华大学出版社');
INSERT INTO `book` VALUES (73, '《中国话剧史》', '宋宝珍', '生活·读书·新知三联书店');
INSERT INTO `book` VALUES (74, '《阿甲论戏曲表导演艺术》', '阿甲', '文化艺术出版社');
INSERT INTO `book` VALUES (75, '《大塚绚子毛绒绒的立体刺绣》', '[日本]大塚绚子;宋菲娅', '中国纺织出版社');
INSERT INTO `book` VALUES (76, '《戏剧萌芽》', '[爱尔兰]朱莉·梅根', '文化艺术出版社');
INSERT INTO `book` VALUES (77, '《困扰与重返》', '尚辉', '湖南美术出版社');
INSERT INTO `book` VALUES (78, '《演员自我修养》', '[俄]斯坦尼斯拉夫斯基;', '广西师范大学出版社');
INSERT INTO `book` VALUES (79, '《寻找桂林历史文化的力量》', '文丰义', '广西师范大学出版社');
INSERT INTO `book` VALUES (80, '《新中国戏剧高等教育史》', '厉震林', '高等教育出版社');
INSERT INTO `book` VALUES (81, '《重庆抗战剧坛纪事》', '石曼', '中国戏剧出版社');
INSERT INTO `book` VALUES (82, '《中国抗战话剧图史》', '胡传敏', '文化艺术出版社');
INSERT INTO `book` VALUES (83, '《阿甲戏剧论集》', '阿甲', '中国戏剧出版社');
INSERT INTO `book` VALUES (84, '《演员创造角色》', '[俄]斯坦尼斯拉夫斯基', '中国电影出版社');
INSERT INTO `book` VALUES (85, '《传媒与当代艺术》', '徐沛君', '江西美术出版社');
INSERT INTO `book` VALUES (86, '《艺术社会学》', '[英]维多利亚·D·亚历山大', '江苏美术出版社');
INSERT INTO `book` VALUES (87, '《郑君里全集》', '李镇', '上海文化出版社');
INSERT INTO `book` VALUES (88, '《日本手工艺》', '柳宗悦', '广西师范大学出版社');
INSERT INTO `book` VALUES (89, '《抗战戏剧》', '田本相', '河南大学出版社');
INSERT INTO `book` VALUES (90, '《剧与思》', '戏剧艺术编辑部', '上海书店出版社');
INSERT INTO `book` VALUES (91, '《场景模型制作与涂装技术指南》', '[西] 鲁本·冈萨雷斯 ', '机械工业出版社');
INSERT INTO `book` VALUES (92, '《解放区戏剧研究》', '贾冀川', '人民出版社');
INSERT INTO `book` VALUES (93, '《插图中国话剧史》', '郭富民', '济南出版社');
INSERT INTO `book` VALUES (94, '《郭沫若研究资料》', '王训昭', '中国社会科学出版社');
INSERT INTO `book` VALUES (95, '《影响研究》', '范方俊', '北京大学出版社');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'root', '1');
INSERT INTO `users` VALUES (2, 'admin', '1');
INSERT INTO `users` VALUES (3, '666', '1');
INSERT INTO `users` VALUES (6, 'Kevinll', '1');
INSERT INTO `users` VALUES (7, '1', '1');

SET FOREIGN_KEY_CHECKS = 1;
