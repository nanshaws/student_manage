/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : manage

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 07/05/2021 18:43:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(0) NOT NULL COMMENT '课程编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称',
  `score` float NULL DEFAULT NULL COMMENT '学分',
  `kind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程类型',
  `semester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学期',
  `term` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学年',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (2003, '数据结构', 4, '专业课', '第一学期', '2020-2021学年');
INSERT INTO `course` VALUES (2004, '数据结构课程设计', 0.5, '专业课', '第一学期', '2020-2021学年');
INSERT INTO `course` VALUES (2005, 'Java程序设计', 3, '专业课', '第一学期', '2020-2021学年');
INSERT INTO `course` VALUES (2006, '概率论与数理统计A', 3, '专业课', '第一学期', '2020-2021学年');
INSERT INTO `course` VALUES (2007, '计算机基础Ⅰ', 2, '专业课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2008, 'C++程序设计一', 3, '专业课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2009, '网站开发技术', 2, '专业课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2010, '高等数学A1', 4, '专业课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2011, '普通话口语艺术A', 0.5, '通识课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2012, '大学英语读写1', 3, '通识课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2013, '大学英语听说1', 1, '通识课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2014, '军事理论', 1, '通识课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2015, '马克思主义基本原理', 3, '通识课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2016, '大学体育一', 1, '通识课', '第一学期', '2019-2020学年');
INSERT INTO `course` VALUES (2017, '形式政策（一）', 1, '通识课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2018, '思想道德修养和法律基础', 3, '通识课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2019, '大学英语读写2', 3, '通识课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2020, '大学英语听说2', 1, '通识课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2021, '大学体育二', 1, '通识课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2022, '数字电路', 3, '专业课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2023, '汇编语言', 2, '专业课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2024, '高等数学A2', 5, '专业课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2025, '线性代数A', 3, '专业课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2026, 'C++程序设计二', 3, '专业课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2027, 'C++课程设计', 0.5, '专业课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2028, '大学生心理健康教育', 1, '通识课', '第二学期', '2019-2020学年');
INSERT INTO `course` VALUES (2029, '中国近代史纲要', 2, '通识课', '第一学期', '2020-2021学年');
INSERT INTO `course` VALUES (2030, '概论Ⅰ', 2, '通识课', '第一学期', '2020-2021学年');
INSERT INTO `course` VALUES (2031, '大学英语读写3', 2, '通识课', '第一学期', '2020-2021学年');
INSERT INTO `course` VALUES (2032, '大学英语听说3', 1, '通识课', '第一学期', '2020-2021学年');
INSERT INTO `course` VALUES (2033, '大学体育三', 1, '通识课', '第一学期', '2020-2021学年');
INSERT INTO `course` VALUES (2034, '形式政策二', 1, '通识课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2035, '概论Ⅱ', 3, '通识课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2036, '习近平总书记教育重要论述概论', 0.5, '通识课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2037, '离散数学', 3, '专业课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2038, '大学体育四', 1, '通识课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2039, '计算机英语', 2, '专业课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2040, '数据库原理', 4, '专业课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2041, 'JavaEE开发技术', 3, '专业课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2042, 'Python编程', 3, '专业课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2043, '大学英语读写4', 2, '通识课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2044, '大学英语听说4', 1, '通识课', '第二学期', '2020-2021学年');
INSERT INTO `course` VALUES (2045, '创业教育', 2, '通识课', '第二学期', '2020-2021学年');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `dept_id` int(0) NOT NULL COMMENT '院系编号',
  `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '院系名称',
  `dept_dean` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '院系院长',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 330408 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (330401, '计算机科学与技术学院', '刘金江', '13456412321');
INSERT INTO `dept` VALUES (330402, '数学与统计学院', '王顺钦', '14578916234');
INSERT INTO `dept` VALUES (330403, '外国语学院', '李长亭', '12374128563');
INSERT INTO `dept` VALUES (330404, '马克思主义学院', '靳安广', '14523691478');
INSERT INTO `dept` VALUES (330405, '文学院', '龚世学', NULL);
INSERT INTO `dept` VALUES (330406, '历史学院', '高二旺', NULL);
INSERT INTO `dept` VALUES (330407, '教育科学学院', '李辉', NULL);
INSERT INTO `dept` VALUES (330408, '珠宝玉雕学院', '徐永斌 ', NULL);
INSERT INTO `dept` VALUES (330409, '新闻与传播学院', '李娟红', NULL);
INSERT INTO `dept` VALUES (330410, '物理与电子工程学院', '黄金书', NULL);
INSERT INTO `dept` VALUES (330411, '体育学院', '钱文军', NULL);
INSERT INTO `dept` VALUES (330412, '土木建筑工程学院', '曹邦卿\r\n\r\n', NULL);
INSERT INTO `dept` VALUES (330413, '化学与制药工程学院', '邱东方', NULL);
INSERT INTO `dept` VALUES (330414, '音乐学院', '马奇', NULL);
INSERT INTO `dept` VALUES (330415, '法学院', '张红薇', NULL);
INSERT INTO `dept` VALUES (330416, '生命科学与农业工程学院', '姚伦广', NULL);
INSERT INTO `dept` VALUES (330417, '美术与艺术设计学院', '朱军献', NULL);
INSERT INTO `dept` VALUES (330418, '地理科学与旅游学院', '赵文吉', NULL);
INSERT INTO `dept` VALUES (330419, '经济与管理学院', '陶海东', NULL);
INSERT INTO `dept` VALUES (330420, '机电工程学院', '王兴', NULL);

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `login_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录用户',
  `identity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES (1, '张伟', '管理员', '2021-05-07 15:51:05');
INSERT INTO `login_log` VALUES (2, '张力', '教师', '2021-05-07 16:15:31');
INSERT INTO `login_log` VALUES (3, '寻梦青年', '学生', '2021-05-07 16:16:38');
INSERT INTO `login_log` VALUES (4, '张伟', '管理员', '2021-05-07 16:16:51');
INSERT INTO `login_log` VALUES (5, '寻梦青年', '学生', '2021-05-07 17:06:18');
INSERT INTO `login_log` VALUES (6, '寻梦青年', '学生', '2021-05-07 17:07:46');
INSERT INTO `login_log` VALUES (7, '寻梦青年', '学生', '2021-05-07 17:09:01');
INSERT INTO `login_log` VALUES (8, '寻梦青年', '学生', '2021-05-07 17:14:09');
INSERT INTO `login_log` VALUES (9, '寻梦青年', '学生', '2021-05-07 17:17:13');
INSERT INTO `login_log` VALUES (10, '寻梦青年', '学生', '2021-05-07 17:18:02');
INSERT INTO `login_log` VALUES (11, '寻梦青年', '学生', '2021-05-07 17:42:16');
INSERT INTO `login_log` VALUES (12, '寻梦青年', '学生', '2021-05-07 17:46:38');
INSERT INTO `login_log` VALUES (13, '寻梦青年', '学生', '2021-05-07 17:48:42');
INSERT INTO `login_log` VALUES (14, '寻梦青年', '学生', '2021-05-07 18:19:48');
INSERT INTO `login_log` VALUES (15, '张伟', '管理员', '2021-05-07 18:20:35');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `major_id` int(0) NOT NULL COMMENT '专业代码',
  `major_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专业名称',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '专业介绍',
  `dept_id` int(0) NULL DEFAULT NULL COMMENT '院系编号',
  PRIMARY KEY (`major_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (410120, '软件工程', '软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科', 330401);
INSERT INTO `major` VALUES (410121, '计算机科学与技术', '计算机科学与技术是一个计算机系统与网络兼顾的计算机学科宽口径专业', 330401);
INSERT INTO `major` VALUES (410122, '网络工程', '网络工程专业主要讲授计算机科学基础理论、计算机软硬件系统及应用知识、网络工程的专业知识及应用知识', 330401);
INSERT INTO `major` VALUES (410123, '数据科学与大数据技术', '课程教学体系涵盖了大数据的发现、处理、运算、应用等核心理论与技术', 330401);
INSERT INTO `major` VALUES (410124, '智能科学与技术', '智能科学与技术是面向前沿高新技术的基础性本科专业，覆盖面很广。专业涉及机器人技术，以新一代网络计算为基础的智能系统，微机电系统（MEMS）', 330401);
INSERT INTO `major` VALUES (410125, '物联网工程', '求学生系统掌握物联网工程的基础理论和专业知识，理解本学科的基本概念、知识结构、典型方法，建立数字化、算法、模块化和层次化等核心专业知识；掌握从事物联网工程专业工作所需的数学、电路、通信、标识和传感、程序设计及其他相关的自然科学知识', 330401);
INSERT INTO `major` VALUES (410220, '数学与应用数学', NULL, 330402);
INSERT INTO `major` VALUES (410221, '统计学', NULL, 330402);
INSERT INTO `major` VALUES (410320, '英语', NULL, 330403);
INSERT INTO `major` VALUES (410321, '翻译', NULL, 330403);
INSERT INTO `major` VALUES (410322, '商务英语', NULL, 330403);
INSERT INTO `major` VALUES (410323, '日语', NULL, 330403);
INSERT INTO `major` VALUES (410420, '思想政治教育', NULL, 330404);
INSERT INTO `major` VALUES (410520, '汉语言文学', NULL, 330405);
INSERT INTO `major` VALUES (410521, '汉语国际教育', NULL, 330405);
INSERT INTO `major` VALUES (410522, '戏剧影视文学', NULL, 330405);
INSERT INTO `major` VALUES (410523, '文化产业管理', NULL, 330405);
INSERT INTO `major` VALUES (410620, '历史学', NULL, 330406);
INSERT INTO `major` VALUES (410720, '教育学', NULL, 330407);
INSERT INTO `major` VALUES (410721, '学前教育', NULL, 330407);
INSERT INTO `major` VALUES (410722, '小学教育', NULL, 330407);
INSERT INTO `major` VALUES (410723, '应用心理学', NULL, 330407);
INSERT INTO `major` VALUES (410820, '工艺美术', NULL, 330408);
INSERT INTO `major` VALUES (410821, '宝石及材料工艺学', NULL, 330408);
INSERT INTO `major` VALUES (410822, '雕塑', NULL, 330408);
INSERT INTO `major` VALUES (410823, '艺术设计', NULL, 330408);
INSERT INTO `major` VALUES (410920, '播音与主持艺术', NULL, 330409);
INSERT INTO `major` VALUES (410921, '广播电视编导', NULL, 330409);
INSERT INTO `major` VALUES (410922, '新闻学', NULL, 330409);
INSERT INTO `major` VALUES (411020, '物理学', NULL, 330410);
INSERT INTO `major` VALUES (411021, '电子信息工程', NULL, 330410);
INSERT INTO `major` VALUES (411022, '通信工程', NULL, 330410);
INSERT INTO `major` VALUES (411120, '体育教育', NULL, 330411);
INSERT INTO `major` VALUES (411121, '运动训练', NULL, 330411);
INSERT INTO `major` VALUES (411122, '舞蹈学', NULL, 330411);
INSERT INTO `major` VALUES (411220, '土木工程', NULL, 330412);
INSERT INTO `major` VALUES (411221, '工程管理', NULL, 330412);
INSERT INTO `major` VALUES (411222, '建筑学', NULL, 330412);
INSERT INTO `major` VALUES (411223, '给排水科学与工程', NULL, 330412);
INSERT INTO `major` VALUES (411320, '化学专业', NULL, 330413);
INSERT INTO `major` VALUES (411321, '应用化学', NULL, 330413);
INSERT INTO `major` VALUES (411322, '制药工程', NULL, 330413);
INSERT INTO `major` VALUES (411323, '材料化学', NULL, 330413);
INSERT INTO `major` VALUES (411324, '水质科学与技术', NULL, 330413);
INSERT INTO `major` VALUES (411420, '音乐学', NULL, 330414);
INSERT INTO `major` VALUES (411421, '音乐表演', NULL, 330414);
INSERT INTO `major` VALUES (411422, '舞蹈编导', NULL, 330414);
INSERT INTO `major` VALUES (411520, '法学', NULL, 330415);
INSERT INTO `major` VALUES (411620, '生物科学', NULL, 330416);
INSERT INTO `major` VALUES (411621, '生物工程 ', NULL, 330416);
INSERT INTO `major` VALUES (411622, '农学', NULL, 330416);
INSERT INTO `major` VALUES (411623, '园林设计', NULL, 330416);
INSERT INTO `major` VALUES (411720, '美术学', NULL, 330417);
INSERT INTO `major` VALUES (411721, '环境设计', NULL, 330417);
INSERT INTO `major` VALUES (411722, '视觉传达设计', NULL, 330417);
INSERT INTO `major` VALUES (411820, '测绘工程', NULL, 330418);
INSERT INTO `major` VALUES (411821, '地理科学', NULL, 330418);
INSERT INTO `major` VALUES (411822, '旅游管理', NULL, 330418);
INSERT INTO `major` VALUES (411920, '金融工程', NULL, 330419);
INSERT INTO `major` VALUES (411921, '国际经济与贸易', NULL, 330419);
INSERT INTO `major` VALUES (411922, '工商管理', NULL, 330419);
INSERT INTO `major` VALUES (411923, '财务管理', NULL, 330419);
INSERT INTO `major` VALUES (411924, '物流管理', NULL, 330419);
INSERT INTO `major` VALUES (412020, '机械电子工程', NULL, 330420);
INSERT INTO `major` VALUES (412021, '汽车服务工程', NULL, 330420);
INSERT INTO `major` VALUES (412022, '电气工程及其自动化', NULL, 330420);
INSERT INTO `major` VALUES (412023, '自动化', NULL, 330420);

-- ----------------------------
-- Table structure for opt_log
-- ----------------------------
DROP TABLE IF EXISTS `opt_log`;
CREATE TABLE `opt_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `opt_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作用户',
  `opt_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作行为',
  `opt_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of opt_log
-- ----------------------------
INSERT INTO `opt_log` VALUES (1, '寻梦青年', '查询必修课成绩', '2021-05-07 17:48:50');
INSERT INTO `opt_log` VALUES (2, '寻梦青年', '查询必修课成绩', '2021-05-07 18:19:53');
INSERT INTO `opt_log` VALUES (3, '寻梦青年', '查询选修课成绩', '2021-05-07 18:19:57');
INSERT INTO `opt_log` VALUES (4, '寻梦青年', '查询该学期可选课程', '2021-05-07 18:20:00');
INSERT INTO `opt_log` VALUES (5, '寻梦青年', '查询选修课成绩', '2021-05-07 18:20:03');
INSERT INTO `opt_log` VALUES (6, '张伟', '查询选该课程的学生', '2021-05-07 18:20:37');
INSERT INTO `opt_log` VALUES (7, '张伟', '查询选该课程的学生', '2021-05-07 18:20:43');
INSERT INTO `opt_log` VALUES (8, '张伟', '登记成绩', '2021-05-07 18:20:50');
INSERT INTO `opt_log` VALUES (9, '张伟', '查询选该课程的学生', '2021-05-07 18:20:51');

-- ----------------------------
-- Table structure for optcourse
-- ----------------------------
DROP TABLE IF EXISTS `optcourse`;
CREATE TABLE `optcourse`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '选修课程号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '选修课程名称',
  `score` float(30, 0) NULL DEFAULT NULL COMMENT '学分',
  `kind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '选修课程种类',
  `semester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学期',
  `term` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学年',
  `tid` int(0) NULL DEFAULT NULL COMMENT '授课教师工号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5278 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of optcourse
-- ----------------------------
INSERT INTO `optcourse` VALUES (5001, '大学生安全教育', 2, '教师教育类', '第二学期', '2020-2021学年', 27084);
INSERT INTO `optcourse` VALUES (5002, '社会心理学', 2, '教师教育类', '第一学期', '2020-2021学年', 27192);
INSERT INTO `optcourse` VALUES (5003, '数学史与数学教育', 2, '教师教育类', '第二学期', '2020-2021学年', 27195);
INSERT INTO `optcourse` VALUES (5004, '应用文写作', 2, '教师教育类', '第一学期', '2019-2020学年', 27171);
INSERT INTO `optcourse` VALUES (5005, '幸福心理学', 2, '教师教育类', '第一学期', '2019-2020学年', 27078);
INSERT INTO `optcourse` VALUES (5006, '从爱因斯坦到霍金的宇宙', 2, '科学素养类', '第二学期', '2020-2021学年', 27234);
INSERT INTO `optcourse` VALUES (5007, '创业创新执行力', 2, '科学素养类', '第二学期', '2020-2021学年', 27010);
INSERT INTO `optcourse` VALUES (5008, '世界科技文化史', 2, '科学素养类', '第二学期', '2020-2021学年', 27140);
INSERT INTO `optcourse` VALUES (5009, '考古发现与探索', 2, '科学素养类', '第二学期', '2020-2021学年', 27264);
INSERT INTO `optcourse` VALUES (5010, '现代自然地理学', 2, '科学素养类', '第一学期', '2019-2020学年', 27237);
INSERT INTO `optcourse` VALUES (5011, '全球变化与地球系统科学', 2, '科学素养类', '第二学期', '2020-2021学年', 27177);
INSERT INTO `optcourse` VALUES (5012, '基础生命科学', 2, '科学素养类', '第一学期', '2020-2021学年', 27253);
INSERT INTO `optcourse` VALUES (5013, '什么是科学', 2, '科学素养类', '第二学期', '2020-2021学年', 27131);
INSERT INTO `optcourse` VALUES (5014, '科学启蒙', 2, '科学素养类', '第一学期', '2020-2021学年', 27032);
INSERT INTO `optcourse` VALUES (5015, '微生物与人类健康', 2, '科学素养类', '第一学期', '2020-2021学年', 27074);
INSERT INTO `optcourse` VALUES (5016, '数学的思维方式与创新', 2, '科学素养类', '第二学期', '2019-2020学年', 27094);
INSERT INTO `optcourse` VALUES (5017, '数学大观', 2, '科学素养类', '第二学期', '2019-2020学年', 27056);
INSERT INTO `optcourse` VALUES (5018, '科学通史', 2, '科学素养类', '第一学期', '2019-2020学年', 27144);
INSERT INTO `optcourse` VALUES (5019, '景观地学基础', 2, '科学素养类', '第二学期', '2019-2020学年', 27271);
INSERT INTO `optcourse` VALUES (5020, '探究万物之理', 2, '科学素养类', '第二学期', '2020-2021学年', 27124);
INSERT INTO `optcourse` VALUES (5021, '航空与航天', 2, '科学素养类', '第一学期', '2020-2021学年', 27075);
INSERT INTO `optcourse` VALUES (5022, '现代城市生态与环境学', 2, '科学素养类', '第二学期', '2020-2021学年', 27201);
INSERT INTO `optcourse` VALUES (5023, '探索发现：生命', 2, '科学素养类', '第二学期', '2019-2020学年', 27050);
INSERT INTO `optcourse` VALUES (5024, '世界建筑史', 2, '科学素养类', '第一学期', '2020-2021学年', 27257);
INSERT INTO `optcourse` VALUES (5025, '轻松学统计', 2, '科学素养类', '第二学期', '2020-2021学年', 27052);
INSERT INTO `optcourse` VALUES (5026, '创新中国', 2, '科学素养类', '第二学期', '2019-2020学年', 27060);
INSERT INTO `optcourse` VALUES (5027, '舌尖上的植物学', 2, '科学素养类', '第二学期', '2020-2021学年', 27224);
INSERT INTO `optcourse` VALUES (5028, '食品营养与食品安全', 2, '科学素养类', '第二学期', '2020-2021学年', 27062);
INSERT INTO `optcourse` VALUES (5029, '航空概论', 2, '科学素养类', '第二学期', '2019-2020学年', 27146);
INSERT INTO `optcourse` VALUES (5030, '人文的物理学', 2, '科学素养类', '第二学期', '2019-2020学年', 27193);
INSERT INTO `optcourse` VALUES (5031, '科幻中的物理学', 2, '科学素养类', '第一学期', '2019-2020学年', 27101);
INSERT INTO `optcourse` VALUES (5032, '物理与人类生活', 2, '科学素养类', '第二学期', '2019-2020学年', 27173);
INSERT INTO `optcourse` VALUES (5033, '奇异的仿生学', 2, '科学素养类', '第二学期', '2020-2021学年', 27220);
INSERT INTO `optcourse` VALUES (5034, '汽车行走的艺术', 2, '科学素养类', '第一学期', '2019-2020学年', 27269);
INSERT INTO `optcourse` VALUES (5035, '绿色康复', 2, '科学素养类', '第一学期', '2020-2021学年', 27076);
INSERT INTO `optcourse` VALUES (5036, '全球变化生态学', 2, '科学素养类', '第二学期', '2019-2020学年', 27202);
INSERT INTO `optcourse` VALUES (5037, '家园的治理:环境科学概论', 2, '科学素养类', '第二学期', '2019-2020学年', 27212);
INSERT INTO `optcourse` VALUES (5038, '生命科学与伦理', 2, '科学素养类', '第一学期', '2020-2021学年', 27254);
INSERT INTO `optcourse` VALUES (5039, '前进中的物理学与人类文明', 2, '科学素养类', '第二学期', '2020-2021学年', 27121);
INSERT INTO `optcourse` VALUES (5040, '数学的奥秘:本质与思维', 2, '科学素养类', '第二学期', '2020-2021学年', 27070);
INSERT INTO `optcourse` VALUES (5041, '移动互联网时代的信息安全与防护', 2, '科学素养类', '第一学期', '2020-2021学年', 27043);
INSERT INTO `optcourse` VALUES (5042, '科学与文化的足迹', 2, '科学素养类', '第二学期', '2020-2021学年', 27138);
INSERT INTO `optcourse` VALUES (5043, '大脑的奥秘：本质与思维', 2, '科学素养类', '第一学期', '2019-2020学年', 27083);
INSERT INTO `optcourse` VALUES (5044, '走进《黄帝内经》', 2, '科学素养类', '第二学期', '2019-2020学年', 27150);
INSERT INTO `optcourse` VALUES (5045, '中药学', 2, '科学素养类', '第二学期', '2019-2020学年', 27187);
INSERT INTO `optcourse` VALUES (5046, '逻辑和批判性思维', 2, '科学素养类', '第二学期', '2020-2021学年', 27123);
INSERT INTO `optcourse` VALUES (5047, '品类创新', 2, '科学素养类', '第二学期', '2020-2021学年', 27168);
INSERT INTO `optcourse` VALUES (5048, '像经济学家那样思考：信息、激励与政策', 2, '科学素养类', '第二学期', '2019-2020学年', 27235);
INSERT INTO `optcourse` VALUES (5049, '啤酒酿造与文化', 2, '科学素养类', '第二学期', '2020-2021学年', 27073);
INSERT INTO `optcourse` VALUES (5050, '经济与中国经济', 2, '科学素养类', '第二学期', '2020-2021学年', 27184);
INSERT INTO `optcourse` VALUES (5051, '管理学精要', 2, '科学素养类', '第二学期', '2019-2020学年', 27205);
INSERT INTO `optcourse` VALUES (5052, '星海求知：神经科学导论', 2, '科学素养类', '第一学期', '2020-2021学年', 27104);
INSERT INTO `optcourse` VALUES (5053, '创新创业大赛赛前特训', 2, '科学素养类', '第一学期', '2020-2021学年', 27197);
INSERT INTO `optcourse` VALUES (5054, '西方文明通论', 2, '人文素养类', '第二学期', '2019-2020学年', 27040);
INSERT INTO `optcourse` VALUES (5055, '中国的社会与文化', 2, '人文素养类', '第二学期', '2020-2021学年', 27024);
INSERT INTO `optcourse` VALUES (5056, '先秦君子风范', 2, '人文素养类', '第一学期', '2019-2020学年', 27200);
INSERT INTO `optcourse` VALUES (5057, '当代中国政府与政治', 2, '人文素养类', '第二学期', '2020-2021学年', 27011);
INSERT INTO `optcourse` VALUES (5058, '考古与人类', 2, '人文素养类', '第二学期', '2019-2020学年', 27236);
INSERT INTO `optcourse` VALUES (5059, '口才艺术与社交礼仪', 2, '人文素养类', '第一学期', '2020-2021学年', 27203);
INSERT INTO `optcourse` VALUES (5060, '食品安全与日常饮食', 2, '人文素养类', '第一学期', '2019-2020学年', 27107);
INSERT INTO `optcourse` VALUES (5061, '从泥巴到国粹：陶瓷绘画示范', 2, '人文素养类', '第一学期', '2020-2021学年', 27232);
INSERT INTO `optcourse` VALUES (5062, '穿T恤听古典音乐', 2, '人文素养类', '第一学期', '2020-2021学年', 27157);
INSERT INTO `optcourse` VALUES (5063, '漫画艺术欣赏与创作', 2, '人文素养类', '第二学期', '2020-2021学年', 27256);
INSERT INTO `optcourse` VALUES (5064, '园林艺术赏析', 2, '人文素养类', '第二学期', '2020-2021学年', 27019);
INSERT INTO `optcourse` VALUES (5065, '中国文明史（上）', 2, '人文素养类', '第二学期', '2020-2021学年', 27133);
INSERT INTO `optcourse` VALUES (5066, '中国文明史（下）', 2, '人文素养类', '第二学期', '2020-2021学年', 27097);
INSERT INTO `optcourse` VALUES (5067, '中国历史人文地理（下）', 2, '人文素养类', '第二学期', '2020-2021学年', 27081);
INSERT INTO `optcourse` VALUES (5068, '文化差异与跨文化交际', 2, '人文素养类', '第一学期', '2019-2020学年', 27082);
INSERT INTO `optcourse` VALUES (5069, '历史的三峡：近代中国的思潮与政治', 2, '人文素养类', '第一学期', '2019-2020学年', 27065);
INSERT INTO `optcourse` VALUES (5070, '中国历史人文地理（上）', 2, '人文素养类', '第一学期', '2020-2021学年', 27147);
INSERT INTO `optcourse` VALUES (5071, '葡萄酒与西方文化', 2, '人文素养类', '第二学期', '2020-2021学年', 27110);
INSERT INTO `optcourse` VALUES (5072, '百年风流人物', 2, '人文素养类', '第二学期', '2019-2020学年', 27117);
INSERT INTO `optcourse` VALUES (5073, '百年风流人物：康有为', 2, '人文素养类', '第二学期', '2020-2021学年', 27151);
INSERT INTO `optcourse` VALUES (5074, '东北亚国际关系史', 2, '人文素养类', '第一学期', '2020-2021学年', 27005);
INSERT INTO `optcourse` VALUES (5075, '欧洲文明概论', 2, '人文素养类', '第一学期', '2020-2021学年', 27080);
INSERT INTO `optcourse` VALUES (5076, '西藏的历史与文化', 2, '人文素养类', '第二学期', '2020-2021学年', 27103);
INSERT INTO `optcourse` VALUES (5077, '英美文化概论（英文授课）', 2, '人文素养类', '第二学期', '2019-2020学年', 27105);
INSERT INTO `optcourse` VALUES (5078, '社会史研究导论', 2, '人文素养类', '第一学期', '2019-2020学年', 27154);
INSERT INTO `optcourse` VALUES (5079, '中国古代史', 2, '人文素养类', '第二学期', '2019-2020学年', 27225);
INSERT INTO `optcourse` VALUES (5080, '文学人类学概说', 2, '人文素养类', '第二学期', '2019-2020学年', 27221);
INSERT INTO `optcourse` VALUES (5081, '明史十讲', 2, '人文素养类', '第二学期', '2019-2020学年', 27155);
INSERT INTO `optcourse` VALUES (5082, '社会科学方法论', 2, '人文素养类', '第二学期', '2019-2020学年', 27191);
INSERT INTO `optcourse` VALUES (5083, '清史', 2, '人文素养类', '第二学期', '2020-2021学年', 27033);
INSERT INTO `optcourse` VALUES (5084, '中国近代人物研究', 2, '人文素养类', '第二学期', '2019-2020学年', 27014);
INSERT INTO `optcourse` VALUES (5085, '隋唐史', 2, '人文素养类', '第二学期', '2020-2021学年', 27196);
INSERT INTO `optcourse` VALUES (5086, '追寻幸福：西方伦理史视角', 2, '人文素养类', '第二学期', '2020-2021学年', 27270);
INSERT INTO `optcourse` VALUES (5087, '宋辽金史', 2, '人文素养类', '第二学期', '2020-2021学年', 27077);
INSERT INTO `optcourse` VALUES (5088, '秦汉史', 2, '人文素养类', '第二学期', '2020-2021学年', 27059);
INSERT INTO `optcourse` VALUES (5089, '西方文化名著导读', 2, '人文素养类', '第二学期', '2019-2020学年', 27216);
INSERT INTO `optcourse` VALUES (5090, '近代中日关系史研究', 2, '人文素养类', '第一学期', '2020-2021学年', 27128);
INSERT INTO `optcourse` VALUES (5091, '笛卡尔及其哲学思想', 2, '人文素养类', '第一学期', '2019-2020学年', 27222);
INSERT INTO `optcourse` VALUES (5092, '法西斯主义理论剖析', 2, '人文素养类', '第二学期', '2020-2021学年', 27178);
INSERT INTO `optcourse` VALUES (5093, '20世纪世界史', 2, '人文素养类', '第二学期', '2020-2021学年', 27053);
INSERT INTO `optcourse` VALUES (5094, '东南亚文化', 2, '人文素养类', '第二学期', '2020-2021学年', 27218);
INSERT INTO `optcourse` VALUES (5095, '德国史', 2, '人文素养类', '第一学期', '2019-2020学年', 27044);
INSERT INTO `optcourse` VALUES (5096, '文化遗产概览', 2, '人文素养类', '第二学期', '2020-2021学年', 27159);
INSERT INTO `optcourse` VALUES (5097, '带你走进西藏', 2, '人文素养类', '第一学期', '2020-2021学年', 27209);
INSERT INTO `optcourse` VALUES (5098, '中日茶道文化【双语授课】', 2, '人文素养类', '第二学期', '2020-2021学年', 27045);
INSERT INTO `optcourse` VALUES (5099, '日本人与日本社会', 2, '人文素养类', '第二学期', '2019-2020学年', 27116);
INSERT INTO `optcourse` VALUES (5100, '法语学习与法国文化【双语授课】', 2, '人文素养类', '第二学期', '2020-2021学年', 27042);
INSERT INTO `optcourse` VALUES (5101, '拉美文化', 2, '人文素养类', '第二学期', '2020-2021学年', 27015);
INSERT INTO `optcourse` VALUES (5102, '清代八旗制度', 2, '人文素养类', '第二学期', '2019-2020学年', 27035);
INSERT INTO `optcourse` VALUES (5103, '西方经典：修昔底德《战争志》', 2, '人文素养类', '第一学期', '2019-2020学年', 27046);
INSERT INTO `optcourse` VALUES (5104, '《正义论》导读', 2, '人文素养类', '第二学期', '2020-2021学年', 27102);
INSERT INTO `optcourse` VALUES (5105, '西方文论原典导读', 2, '人文素养类', '第二学期', '2019-2020学年', 27185);
INSERT INTO `optcourse` VALUES (5106, '《理想国》导读', 2, '人文素养类', '第一学期', '2019-2020学年', 27069);
INSERT INTO `optcourse` VALUES (5107, '诗意的人学：西方文学名著欣赏', 2, '人文素养类', '第一学期', '2020-2021学年', 27139);
INSERT INTO `optcourse` VALUES (5108, '知识论导论：我们能知道什么？', 2, '人文素养类', '第一学期', '2019-2020学年', 27230);
INSERT INTO `optcourse` VALUES (5109, '人生与人心', 2, '人文素养类', '第二学期', '2019-2020学年', 27214);
INSERT INTO `optcourse` VALUES (5110, '大学英语过程写作', 2, '人文素养类', '第一学期', '2019-2020学年', 27112);
INSERT INTO `optcourse` VALUES (5111, '对话诺奖大师', 2, '人文素养类', '第二学期', '2019-2020学年', 27100);
INSERT INTO `optcourse` VALUES (5112, '私法英语表达', 2, '人文素养类', '第一学期', '2019-2020学年', 27206);
INSERT INTO `optcourse` VALUES (5113, '中国古典哲学名著选读', 2, '人文素养类', '第二学期', '2019-2020学年', 27012);
INSERT INTO `optcourse` VALUES (5114, '逻辑学导论', 2, '人文素养类', '第一学期', '2020-2021学年', 27228);
INSERT INTO `optcourse` VALUES (5115, '伦理学概论', 2, '人文素养类', '第二学期', '2020-2021学年', 27243);
INSERT INTO `optcourse` VALUES (5116, '古希腊的思想世界', 2, '人文素养类', '第一学期', '2020-2021学年', 27130);
INSERT INTO `optcourse` VALUES (5117, '美的历程：美学导论', 2, '人文素养类', '第二学期', '2020-2021学年', 27022);
INSERT INTO `optcourse` VALUES (5118, '视觉文化与社会性别', 2, '人文素养类', '第二学期', '2020-2021学年', 27141);
INSERT INTO `optcourse` VALUES (5119, '纷争的时代：二十世纪西方思想文化潮流', 2, '人文素养类', '第二学期', '2020-2021学年', 27207);
INSERT INTO `optcourse` VALUES (5120, '儒学复兴与当代启蒙', 2, '人文素养类', '第一学期', '2019-2020学年', 27029);
INSERT INTO `optcourse` VALUES (5121, '中国现代文学名家名作', 2, '人文素养类', '第二学期', '2019-2020学年', 27127);
INSERT INTO `optcourse` VALUES (5122, '文化地理', 2, '人文素养类', '第二学期', '2020-2021学年', 27087);
INSERT INTO `optcourse` VALUES (5123, '东方文学史', 2, '人文素养类', '第二学期', '2020-2021学年', 27223);
INSERT INTO `optcourse` VALUES (5124, '中西文化与文学专题比较', 2, '人文素养类', '第二学期', '2020-2021学年', 27122);
INSERT INTO `optcourse` VALUES (5125, '文艺美学', 2, '人文素养类', '第二学期', '2020-2021学年', 27007);
INSERT INTO `optcourse` VALUES (5126, '马克思主义的时代解读', 2, '人文素养类', '第二学期', '2019-2020学年', 27002);
INSERT INTO `optcourse` VALUES (5127, '社会学与中国社会', 2, '人文素养类', '第二学期', '2019-2020学年', 27145);
INSERT INTO `optcourse` VALUES (5128, '文艺学名著导读', 2, '人文素养类', '第二学期', '2020-2021学年', 27186);
INSERT INTO `optcourse` VALUES (5129, '透过性别看世界', 2, '人文素养类', '第二学期', '2019-2020学年', 27245);
INSERT INTO `optcourse` VALUES (5130, '中西诗学比较研究', 2, '人文素养类', '第一学期', '2019-2020学年', 27071);
INSERT INTO `optcourse` VALUES (5131, '中国宪制史：从《南京条约》到《临时约法》', 2, '人文素养类', '第二学期', '2020-2021学年', 27231);
INSERT INTO `optcourse` VALUES (5132, '中国宪制史：从《临时约法》到《共同纲领》', 2, '人文素养类', '第二学期', '2020-2021学年', 27156);
INSERT INTO `optcourse` VALUES (5133, '市场的力量：中国经济改革之思', 2, '人文素养类', '第二学期', '2020-2021学年', 27217);
INSERT INTO `optcourse` VALUES (5134, '吾国教育病理', 2, '人文素养类', '第一学期', '2020-2021学年', 27018);
INSERT INTO `optcourse` VALUES (5135, '法律基础', 2, '人文素养类', '第一学期', '2019-2020学年', 27088);
INSERT INTO `optcourse` VALUES (5136, '企业绿色管理', 2, '人文素养类', '第一学期', '2020-2021学年', 27226);
INSERT INTO `optcourse` VALUES (5137, '运筹学', 2, '人文素养类', '第二学期', '2020-2021学年', 27241);
INSERT INTO `optcourse` VALUES (5138, '国际金融', 2, '人文素养类', '第二学期', '2019-2020学年', 27153);
INSERT INTO `optcourse` VALUES (5139, '《西厢记》赏析', 2, '人文素养类', '第一学期', '2020-2021学年', 27182);
INSERT INTO `optcourse` VALUES (5140, '公共日语', 2, '人文素养类', '第二学期', '2019-2020学年', 27190);
INSERT INTO `optcourse` VALUES (5141, '诗词格律与欣赏', 2, '人文素养类', '第一学期', '2019-2020学年', 27210);
INSERT INTO `optcourse` VALUES (5142, '中华传统文化之文学瑰宝', 2, '人文素养类', '第二学期', '2019-2020学年', 27068);
INSERT INTO `optcourse` VALUES (5143, '健康与健康能力', 2, '人文素养类', '第二学期', '2019-2020学年', 27031);
INSERT INTO `optcourse` VALUES (5144, '中国税制', 2, '人文素养类', '第二学期', '2020-2021学年', 27170);
INSERT INTO `optcourse` VALUES (5145, '新兴时代下的公共政策', 2, '人文素养类', '第二学期', '2020-2021学年', 27025);
INSERT INTO `optcourse` VALUES (5146, '宪法的魅力', 2, '人文素养类', '第二学期', '2020-2021学年', 27037);
INSERT INTO `optcourse` VALUES (5147, '人文视野中的生态学', 2, '人文素养类', '第二学期', '2019-2020学年', 27242);
INSERT INTO `optcourse` VALUES (5148, '当代中国经济', 2, '人文素养类', '第二学期', '2020-2021学年', 27137);
INSERT INTO `optcourse` VALUES (5149, '当代中国与世界认识方法', 2, '人文素养类', '第二学期', '2020-2021学年', 27023);
INSERT INTO `optcourse` VALUES (5150, '《周易》的奥秘', 2, '人文素养类', '第二学期', '2020-2021学年', 27188);
INSERT INTO `optcourse` VALUES (5151, '中国马克思主义与当代', 2, '人文素养类', '第二学期', '2019-2020学年', 27181);
INSERT INTO `optcourse` VALUES (5152, '《资治通鉴》的导读', 2, '人文素养类', '第一学期', '2020-2021学年', 27009);
INSERT INTO `optcourse` VALUES (5153, '《论语》导读', 2, '人文素养类', '第二学期', '2020-2021学年', 27125);
INSERT INTO `optcourse` VALUES (5154, '中国文化：复兴古典 同济天下', 2, '人文素养类', '第一学期', '2020-2021学年', 27179);
INSERT INTO `optcourse` VALUES (5155, '《诗经》导读', 2, '人文素养类', '第一学期', '2020-2021学年', 27089);
INSERT INTO `optcourse` VALUES (5156, '经济学百年', 2, '人文素养类', '第二学期', '2020-2021学年', 27064);
INSERT INTO `optcourse` VALUES (5157, '国际经济学', 2, '人文素养类', '第二学期', '2020-2021学年', 27055);
INSERT INTO `optcourse` VALUES (5158, '用经济学智慧解读中国', 2, '人文素养类', '第一学期', '2020-2021学年', 27166);
INSERT INTO `optcourse` VALUES (5159, '《论语》导读上', 2, '人文素养类', '第二学期', '2019-2020学年', 27263);
INSERT INTO `optcourse` VALUES (5160, '文物精品与中华文明', 2, '人文素养类', '第二学期', '2020-2021学年', 27085);
INSERT INTO `optcourse` VALUES (5161, '中华文化概论', 2, '人文素养类', '第一学期', '2019-2020学年', 27239);
INSERT INTO `optcourse` VALUES (5162, '中华传统思想：对话先秦哲学', 2, '人文素养类', '第二学期', '2020-2021学年', 27183);
INSERT INTO `optcourse` VALUES (5163, '儒学与生活', 2, '人文素养类', '第一学期', '2020-2021学年', 27047);
INSERT INTO `optcourse` VALUES (5164, '唐诗经典与中国文化传统', 2, '人文素养类', '第二学期', '2019-2020学年', 27167);
INSERT INTO `optcourse` VALUES (5165, '中国古代礼仪文明', 2, '人文素养类', '第二学期', '2020-2021学年', 27227);
INSERT INTO `optcourse` VALUES (5166, '《老子》 《论语》今读', 2, '人文素养类', '第二学期', '2020-2021学年', 27013);
INSERT INTO `optcourse` VALUES (5167, '《孙子兵法》与执政艺术', 2, '人文素养类', '第二学期', '2020-2021学年', 27247);
INSERT INTO `optcourse` VALUES (5168, '中国茶道', 2, '人文素养类', '第一学期', '2020-2021学年', 27208);
INSERT INTO `optcourse` VALUES (5169, '文化传统与现代文明', 2, '人文素养类', '第二学期', '2020-2021学年', 27260);
INSERT INTO `optcourse` VALUES (5170, '明清小说名著解读之《聊斋志异》', 2, '人文素养类', '第一学期', '2019-2020学年', 27063);
INSERT INTO `optcourse` VALUES (5171, '易学与中国传统文化', 2, '人文素养类', '第一学期', '2019-2020学年', 27016);
INSERT INTO `optcourse` VALUES (5172, '走进中国文化之门', 2, '人文素养类', '第二学期', '2020-2021学年', 27240);
INSERT INTO `optcourse` VALUES (5173, '《世说新语》与魏晋名士风流', 2, '人文素养类', '第一学期', '2019-2020学年', 27268);
INSERT INTO `optcourse` VALUES (5174, '批创思维导论', 2, '人文素养类', '第一学期', '2019-2020学年', 27079);
INSERT INTO `optcourse` VALUES (5175, '职业压力管理', 2, '人文素养类', '第二学期', '2019-2020学年', 27061);
INSERT INTO `optcourse` VALUES (5176, 'TRIZ创新方法', 2, '人文素养类', '第二学期', '2020-2021学年', 27027);
INSERT INTO `optcourse` VALUES (5177, '批判与创意思考', 2, '人文素养类', '第二学期', '2020-2021学年', 27093);
INSERT INTO `optcourse` VALUES (5178, '尊重学术道德，遵守学术规范', 2, '人文素养类', '第一学期', '2019-2020学年', 27255);
INSERT INTO `optcourse` VALUES (5179, '大学生魅力讲话实操', 2, '人文素养类', '第二学期', '2020-2021学年', 27091);
INSERT INTO `optcourse` VALUES (5180, '形象管理', 2, '人文素养类', '第二学期', '2020-2021学年', 27249);
INSERT INTO `optcourse` VALUES (5181, '情绪管理', 2, '人文素养类', '第二学期', '2020-2021学年', 27143);
INSERT INTO `optcourse` VALUES (5182, '有效沟通技巧', 2, '人文素养类', '第一学期', '2020-2021学年', 27272);
INSERT INTO `optcourse` VALUES (5183, '如何高效学习', 2, '人文素养类', '第一学期', '2020-2021学年', 27067);
INSERT INTO `optcourse` VALUES (5184, '领导学', 2, '人文素养类', '第二学期', '2020-2021学年', 27057);
INSERT INTO `optcourse` VALUES (5185, '生命安全与救援', 2, '人文素养类', '第一学期', '2019-2020学年', 27199);
INSERT INTO `optcourse` VALUES (5186, '突发事件及自救互救', 2, '人文素养类', '第二学期', '2019-2020学年', 27233);
INSERT INTO `optcourse` VALUES (5187, '人力资源招聘与选拔', 2, '人文素养类', '第二学期', '2019-2020学年', 27169);
INSERT INTO `optcourse` VALUES (5188, '学术基本要素:专业论文写作', 2, '人文素养类', '第二学期', '2019-2020学年', 27008);
INSERT INTO `optcourse` VALUES (5189, '项目管理学', 2, '人文素养类', '第一学期', '2019-2020学年', 27176);
INSERT INTO `optcourse` VALUES (5190, '辩论修养', 2, '人文素养类', '第二学期', '2019-2020学年', 27058);
INSERT INTO `optcourse` VALUES (5191, '公共关系礼仪实务', 2, '人文素养类', '第一学期', '2020-2021学年', 27261);
INSERT INTO `optcourse` VALUES (5192, '《论语》中的人生智慧与自我管理', 2, '人文素养类', '第一学期', '2020-2021学年', 27030);
INSERT INTO `optcourse` VALUES (5193, '九型人格之职场心理', 2, '人文素养类', '第二学期', '2019-2020学年', 27106);
INSERT INTO `optcourse` VALUES (5194, '大学生爱情兵法', 2, '人文素养类', '第二学期', '2020-2021学年', 27041);
INSERT INTO `optcourse` VALUES (5195, '职业生涯提升', 2, '人文素养类', '第一学期', '2019-2020学年', 27135);
INSERT INTO `optcourse` VALUES (5196, '时间管理', 2, '人文素养类', '第二学期', '2019-2020学年', 27115);
INSERT INTO `optcourse` VALUES (5197, '商业计划书制作与演示', 2, '人文素养类', '第二学期', '2019-2020学年', 27162);
INSERT INTO `optcourse` VALUES (5198, '创业人生', 2, '人文素养类', '第一学期', '2020-2021学年', 27134);
INSERT INTO `optcourse` VALUES (5199, '创业法学', 2, '人文素养类', '第一学期', '2020-2021学年', 27108);
INSERT INTO `optcourse` VALUES (5200, '大学生创新基础', 2, '人文素养类', '第二学期', '2020-2021学年', 27036);
INSERT INTO `optcourse` VALUES (5201, '网络创业理论与实践', 2, '人文素养类', '第一学期', '2020-2021学年', 27258);
INSERT INTO `optcourse` VALUES (5202, '创新思维训练', 2, '人文素养类', '第二学期', '2020-2021学年', 27238);
INSERT INTO `optcourse` VALUES (5203, '微商创业指南', 2, '人文素养类', '第二学期', '2020-2021学年', 27072);
INSERT INTO `optcourse` VALUES (5204, '商业计划书的优化', 2, '人文素养类', '第二学期', '2019-2020学年', 27006);
INSERT INTO `optcourse` VALUES (5205, '创业创新领导力', 2, '人文素养类', '第二学期', '2020-2021学年', 27266);
INSERT INTO `optcourse` VALUES (5206, '创业基础', 2, '人文素养类', '第二学期', '2020-2021学年', 27136);
INSERT INTO `optcourse` VALUES (5207, '创业管理实战', 2, '人文素养类', '第二学期', '2019-2020学年', 27126);
INSERT INTO `optcourse` VALUES (5208, '大学生创业导论', 2, '人文素养类', '第二学期', '2020-2021学年', 27163);
INSERT INTO `optcourse` VALUES (5209, '大学生恋爱与性健康', 2, '人文素养类', '第二学期', '2019-2020学年', 27198);
INSERT INTO `optcourse` VALUES (5210, '大学生生理健康', 2, '人文素养类', '第二学期', '2019-2020学年', 27204);
INSERT INTO `optcourse` VALUES (5211, '大学生公民素质教育', 2, '人文素养类', '第二学期', '2020-2021学年', 27164);
INSERT INTO `optcourse` VALUES (5212, '大学生防艾健康教育', 2, '人文素养类', '第一学期', '2020-2021学年', 27172);
INSERT INTO `optcourse` VALUES (5213, '西方哲学的智慧', 2, '人文素养类', '第一学期', '2019-2020学年', 27119);
INSERT INTO `optcourse` VALUES (5214, '魅力科学', 2, '人文素养类', '第二学期', '2019-2020学年', 27113);
INSERT INTO `optcourse` VALUES (5215, '蒙元帝国史', 2, '人文素养类', '第二学期', '2020-2021学年', 27129);
INSERT INTO `optcourse` VALUES (5216, '重说中国近代史', 2, '人文素养类', '第二学期', '2020-2021学年', 27229);
INSERT INTO `optcourse` VALUES (5217, '中国哲学概论', 2, '人文素养类', '第一学期', '2020-2021学年', 27158);
INSERT INTO `optcourse` VALUES (5218, '新伦理学', 2, '人文素养类', '第二学期', '2020-2021学年', 27152);
INSERT INTO `optcourse` VALUES (5219, '追寻幸福：中国伦理史视角', 2, '人文素养类', '第二学期', '2020-2021学年', 27039);
INSERT INTO `optcourse` VALUES (5220, '俄国近代思想史', 2, '人文素养类', '第二学期', '2020-2021学年', 27252);
INSERT INTO `optcourse` VALUES (5221, '分析哲学', 2, '人文素养类', '第二学期', '2020-2021学年', 27175);
INSERT INTO `optcourse` VALUES (5222, '中西文化比较', 2, '人文素养类', '第二学期', '2019-2020学年', 27003);
INSERT INTO `optcourse` VALUES (5223, '古希腊哲学', 2, '人文素养类', '第二学期', '2020-2021学年', 27189);
INSERT INTO `optcourse` VALUES (5224, '世界古代文明', 2, '人文素养类', '第二学期', '2019-2020学年', 27161);
INSERT INTO `optcourse` VALUES (5225, '语言与文化', 2, '人文素养类', '第二学期', '2020-2021学年', 27034);
INSERT INTO `optcourse` VALUES (5226, '西方文化概论', 2, '人文素养类', '第二学期', '2020-2021学年', 27262);
INSERT INTO `optcourse` VALUES (5227, '意大利文化', 2, '人文素养类', '第二学期', '2020-2021学年', 27194);
INSERT INTO `optcourse` VALUES (5228, '今天的日本', 2, '人文素养类', '第二学期', '2020-2021学年', 27248);
INSERT INTO `optcourse` VALUES (5229, '走进东盟', 2, '人文素养类', '第一学期', '2020-2021学年', 27099);
INSERT INTO `optcourse` VALUES (5230, '多元文化：比较文学概论', 2, '人文素养类', '第一学期', '2020-2021学年', 27096);
INSERT INTO `optcourse` VALUES (5231, '中国现代新诗', 2, '人文素养类', '第二学期', '2020-2021学年', 27149);
INSERT INTO `optcourse` VALUES (5232, '二十四史名篇导读（一）', 2, '人文素养类', '第一学期', '2020-2021学年', 27021);
INSERT INTO `optcourse` VALUES (5233, '音乐鉴赏', 2, '艺术素养类', '第二学期', '2020-2021学年', 27165);
INSERT INTO `optcourse` VALUES (5234, '欧美流行音乐欣赏', 2, '艺术素养类', '第二学期', '2020-2021学年', 27174);
INSERT INTO `optcourse` VALUES (5235, '聆听心声：音乐审美心理分析', 2, '艺术素养类', '第一学期', '2019-2020学年', 27219);
INSERT INTO `optcourse` VALUES (5236, '中华传统文化之戏曲瑰宝', 2, '艺术素养类', '第二学期', '2020-2021学年', 27111);
INSERT INTO `optcourse` VALUES (5237, '中国戏曲·昆曲', 2, '艺术素养类', '第一学期', '2020-2021学年', 27148);
INSERT INTO `optcourse` VALUES (5238, '艺术鉴赏', 2, '艺术素养类', '第二学期', '2019-2020学年', 27098);
INSERT INTO `optcourse` VALUES (5239, '设计与人文：当代公共艺术', 2, '艺术素养类', '第二学期', '2020-2021学年', 27051);
INSERT INTO `optcourse` VALUES (5240, '西方现代艺术赏析', 2, '艺术素养类', '第一学期', '2019-2020学年', 27049);
INSERT INTO `optcourse` VALUES (5241, '钢琴艺术赏析', 2, '艺术素养类', '第二学期', '2020-2021学年', 27086);
INSERT INTO `optcourse` VALUES (5242, '声光影的内心感动：电影视听语言', 2, '艺术素养类', '第一学期', '2019-2020学年', 27109);
INSERT INTO `optcourse` VALUES (5243, '从草根到殿堂：流行音乐导论', 2, '艺术素养类', '第二学期', '2019-2020学年', 27251);
INSERT INTO `optcourse` VALUES (5244, '深邃的世界：西方绘画中的科学', 2, '艺术素养类', '第二学期', '2020-2021学年', 27090);
INSERT INTO `optcourse` VALUES (5245, '人人爱设计', 2, '艺术素养类', '第二学期', '2019-2020学年', 27004);
INSERT INTO `optcourse` VALUES (5246, '中国书法史', 2, '艺术素养类', '第二学期', '2020-2021学年', 27026);
INSERT INTO `optcourse` VALUES (5247, '中国陶瓷史', 2, '艺术素养类', '第一学期', '2020-2021学年', 27246);
INSERT INTO `optcourse` VALUES (5248, '美术概论', 2, '艺术素养类', '第二学期', '2019-2020学年', 27095);
INSERT INTO `optcourse` VALUES (5249, '古代名剧鉴赏', 2, '艺术素养类', '第二学期', '2020-2021学年', 27118);
INSERT INTO `optcourse` VALUES (5250, '时代音画', 2, '艺术素养类', '第一学期', '2020-2021学年', 27267);
INSERT INTO `optcourse` VALUES (5251, '西方美术欣赏', 2, '艺术素养类', '第二学期', '2019-2020学年', 27054);
INSERT INTO `optcourse` VALUES (5252, '舞蹈鉴赏', 2, '艺术素养类', '第一学期', '2020-2021学年', 27211);
INSERT INTO `optcourse` VALUES (5253, '戏剧鉴赏', 2, '艺术素养类', '第二学期', '2019-2020学年', 27250);
INSERT INTO `optcourse` VALUES (5254, '戏曲鉴赏', 2, '艺术素养类', '第二学期', '2019-2020学年', 27092);
INSERT INTO `optcourse` VALUES (5255, '抽象艺术学', 2, '艺术素养类', '第一学期', '2020-2021学年', 27160);
INSERT INTO `optcourse` VALUES (5256, '宋崇导演教你拍微电影', 2, '艺术素养类', '第一学期', '2020-2021学年', 27120);
INSERT INTO `optcourse` VALUES (5257, '民歌鉴赏', 2, '艺术素养类', '第一学期', '2019-2020学年', 27180);
INSERT INTO `optcourse` VALUES (5258, '电影与幸福感', 2, '艺术素养类', '第二学期', '2020-2021学年', 27028);
INSERT INTO `optcourse` VALUES (5259, '基本乐理（上)', 2, '艺术素养类', '第一学期', '2020-2021学年', 27259);
INSERT INTO `optcourse` VALUES (5260, '基本乐理(下)', 2, '艺术素养类', '第二学期', '2020-2021学年', 27020);
INSERT INTO `optcourse` VALUES (5261, '用相声演绎中国文化', 2, '艺术素养类', '第二学期', '2020-2021学年', 27038);
INSERT INTO `optcourse` VALUES (5262, '山水地质学与中国绘画', 2, '艺术素养类', '第二学期', '2019-2020学年', 27048);
INSERT INTO `optcourse` VALUES (5263, '中国传统玉文化与美玉鉴赏', 2, '艺术素养类', '第二学期', '2019-2020学年', 27114);
INSERT INTO `optcourse` VALUES (5264, '美术鉴赏', 2, '艺术素养类', '第二学期', '2019-2020学年', 27244);
INSERT INTO `optcourse` VALUES (5265, '文艺复兴：欧洲由衰及盛的转折点', 2, '艺术素养类', '第二学期', '2019-2020学年', 27142);
INSERT INTO `optcourse` VALUES (5266, '意义生活：符号学导论', 2, '艺术素养类', '第二学期', '2019-2020学年', 27066);
INSERT INTO `optcourse` VALUES (5267, '东方电影', 2, '艺术素养类', '第二学期', '2020-2021学年', 27132);
INSERT INTO `optcourse` VALUES (5268, '艺术美学', 2, '艺术素养类', '第一学期', '2020-2021学年', 27017);
INSERT INTO `optcourse` VALUES (5269, '漫画艺术欣赏与设计', 2, '艺术素养类', '第二学期', '2020-2021学年', 27213);
INSERT INTO `optcourse` VALUES (5270, '书法鉴赏', 2, '艺术素养类', '第二学期', '2020-2021学年', 27265);
INSERT INTO `optcourse` VALUES (5271, '艺术导论', 2, '艺术素养类', '第二学期', '2020-2021学年', 27215);
INSERT INTO `optcourse` VALUES (5277, '中国近现代史纲要', 2, '人文素养类', '第一学期', '2020-2021学年', 27001);

-- ----------------------------
-- Table structure for stucourse
-- ----------------------------
DROP TABLE IF EXISTS `stucourse`;
CREATE TABLE `stucourse`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '教师工号',
  `stu_id` int(0) NOT NULL COMMENT '学号',
  `course_id` int(0) NOT NULL COMMENT '课程编号',
  `score` int(0) NULL DEFAULT NULL COMMENT '成绩',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `stu_id`(`stu_id`) USING BTREE,
  INDEX `cid`(`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 374 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stucourse
-- ----------------------------
INSERT INTO `stucourse` VALUES (303, 10201, 2003, 81);
INSERT INTO `stucourse` VALUES (304, 10201, 2004, 85);
INSERT INTO `stucourse` VALUES (305, 10201, 2005, 89);
INSERT INTO `stucourse` VALUES (306, 10201, 2006, 77);
INSERT INTO `stucourse` VALUES (307, 10201, 2007, 95);
INSERT INTO `stucourse` VALUES (308, 10201, 2008, 95);
INSERT INTO `stucourse` VALUES (309, 10201, 2009, 94);
INSERT INTO `stucourse` VALUES (310, 10201, 2010, 67);
INSERT INTO `stucourse` VALUES (311, 10201, 2011, 84);
INSERT INTO `stucourse` VALUES (312, 10201, 2012, 81);
INSERT INTO `stucourse` VALUES (313, 10201, 2013, 79);
INSERT INTO `stucourse` VALUES (314, 10201, 2014, 82);
INSERT INTO `stucourse` VALUES (315, 10201, 2015, 75);
INSERT INTO `stucourse` VALUES (316, 10201, 2016, 71);
INSERT INTO `stucourse` VALUES (317, 10201, 2017, 92);
INSERT INTO `stucourse` VALUES (318, 10201, 2018, 88);
INSERT INTO `stucourse` VALUES (319, 10201, 2019, 84);
INSERT INTO `stucourse` VALUES (320, 10201, 2020, 72);
INSERT INTO `stucourse` VALUES (321, 10201, 2021, 89);
INSERT INTO `stucourse` VALUES (322, 10201, 2022, 95);
INSERT INTO `stucourse` VALUES (323, 10201, 2023, 87);
INSERT INTO `stucourse` VALUES (324, 10201, 2024, 85);
INSERT INTO `stucourse` VALUES (325, 10201, 2025, 89);
INSERT INTO `stucourse` VALUES (326, 10201, 2026, 94);
INSERT INTO `stucourse` VALUES (327, 10201, 2027, 92);
INSERT INTO `stucourse` VALUES (328, 10201, 2028, 98);
INSERT INTO `stucourse` VALUES (329, 10201, 2029, 87);
INSERT INTO `stucourse` VALUES (330, 10201, 2030, 64);
INSERT INTO `stucourse` VALUES (331, 10201, 2031, 90);
INSERT INTO `stucourse` VALUES (332, 10201, 2032, 79);
INSERT INTO `stucourse` VALUES (333, 10201, 2033, 90);
INSERT INTO `stucourse` VALUES (334, 10201, 5081, 100);
INSERT INTO `stucourse` VALUES (335, 10201, 5245, 97);
INSERT INTO `stucourse` VALUES (336, 10201, 5252, 99);
INSERT INTO `stucourse` VALUES (337, 10201, 5152, 99);
INSERT INTO `stucourse` VALUES (338, 10202, 2011, 85);
INSERT INTO `stucourse` VALUES (339, 10202, 2012, 85);
INSERT INTO `stucourse` VALUES (340, 10202, 2013, 88);
INSERT INTO `stucourse` VALUES (341, 10202, 2014, 87);
INSERT INTO `stucourse` VALUES (342, 10202, 2015, 73);
INSERT INTO `stucourse` VALUES (343, 10202, 2016, 69);
INSERT INTO `stucourse` VALUES (344, 10202, 2007, 95);
INSERT INTO `stucourse` VALUES (345, 10202, 2008, 87);
INSERT INTO `stucourse` VALUES (346, 10202, 2009, 94);
INSERT INTO `stucourse` VALUES (347, 10202, 2010, 94);
INSERT INTO `stucourse` VALUES (348, 10202, 2017, 94);
INSERT INTO `stucourse` VALUES (349, 10202, 2018, 92);
INSERT INTO `stucourse` VALUES (350, 10202, 2019, 91);
INSERT INTO `stucourse` VALUES (351, 10202, 2020, 92);
INSERT INTO `stucourse` VALUES (352, 10202, 2028, 99);
INSERT INTO `stucourse` VALUES (353, 10202, 2022, 93);
INSERT INTO `stucourse` VALUES (354, 10202, 2021, 91);
INSERT INTO `stucourse` VALUES (355, 10202, 2023, 73);
INSERT INTO `stucourse` VALUES (356, 10202, 2024, 88);
INSERT INTO `stucourse` VALUES (357, 10202, 2025, 89);
INSERT INTO `stucourse` VALUES (358, 10202, 2026, 97);
INSERT INTO `stucourse` VALUES (359, 10202, 2027, 87);
INSERT INTO `stucourse` VALUES (360, 10202, 2029, 92);
INSERT INTO `stucourse` VALUES (361, 10202, 2030, 61);
INSERT INTO `stucourse` VALUES (362, 10202, 2031, 93);
INSERT INTO `stucourse` VALUES (363, 10202, 2032, 80);
INSERT INTO `stucourse` VALUES (364, 10202, 2033, 94);
INSERT INTO `stucourse` VALUES (365, 10202, 2003, 69);
INSERT INTO `stucourse` VALUES (366, 10202, 2004, 76);
INSERT INTO `stucourse` VALUES (367, 10202, 2005, 93);
INSERT INTO `stucourse` VALUES (369, 10202, 5126, 95);
INSERT INTO `stucourse` VALUES (371, 10201, 5126, 80);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '学号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `class_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '班级',
  `mid` int(0) NULL DEFAULT NULL COMMENT '专业代号',
  `did` int(0) NULL DEFAULT NULL COMMENT '所属院系',
  `enroll_time` datetime(0) NULL DEFAULT NULL COMMENT '入学时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_did`(`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10404 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (10201, '寻梦青年', '男', '2000-05-17 19:44:34', '浙江', '13362123514', '123', '软件19.7本', 410120, 330401, '2019-09-06 19:41:46');
INSERT INTO `student` VALUES (10202, '阿松大', '男', '1999-04-25 00:00:00', '河南', '13874657652', '123', '软件19.7本', 410120, 330401, '2019-09-06 19:42:00');
INSERT INTO `student` VALUES (10203, '无阳阳', '男', '2001-03-29 15:58:56', '广东', '15991015546', '123', '计算机19.1本', 410121, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10204, '韩雨橙', '女', '1999-10-13 15:58:56', '贵州', '18887225075', '123', '计算机19.1本', 410121, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10205, '禹俊衡', '男', '2000-04-25 15:58:56', '贵州', '17823429080', '123', '计算机19.1本', 410121, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10206, '浮家淼', '男', '1999-10-14 15:58:56', '江苏', '18979983176', '123', '网络19.3本', 410122, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10207, '謇玉鑫', '男', '2000-09-13 15:58:56', '湖南', '18275862721', '123', '网络19.3本', 410122, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10208, '唐俊熙', '男', '1999-12-24 15:58:56', '安徽', '17863003386', '123', '网络19.3本', 410122, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10209, '洋自立', '男', '2000-09-20 15:58:56', '贵州', '18166227567', '123', '数据19.4本', 410123, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10210, '辜亦凡', '男', '2000-08-31 15:58:56', '湖南', '18548349141', '123', '数据19.4本', 410123, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10211, '伏俊郝', '男', '1999-09-26 15:58:56', '云南', '15862964518', '123', '数据19.4本', 410123, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10212, '矫一茹', '女', '1999-10-10 15:58:56', '江苏', '13257925801', '123', '智科19.4本', 410124, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10213, '欧自雨', '女', '2000-03-16 15:58:56', '海南', '17576924695', '123', '智科19.4本', 410124, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10214, '明子谦', '男', '2001-03-11 15:58:56', '海南', '19825978484', '123', '智科19.4本', 410124, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10215, '魏星宇', '女', '1999-12-15 15:58:56', '浙江', '15265383809', '123', '物联网19.7本', 410125, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10216, '析尚昆', '女', '2000-07-23 15:58:56', '江西', '13597764283', '123', '物联网19.7本', 410125, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10217, '汤乙豪', '女', '2000-12-28 15:58:56', '陕西', '17760041209', '123', '物联网19.7本', 410125, 330401, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10218, '冉树泽', '女', '2000-10-23 15:58:56', '辽宁', '13881485937', '123', '数学19.5本', 410220, 330402, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10219, '於筱萌', '女', '2000-04-28 15:58:56', '甘肃', '13743609223', '123', '数学19.6本', 410220, 330402, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10220, '黎鉴恒', '女', '2000-05-29 15:58:56', '海南', '15258708870', '123', '数学19.5本', 410220, 330402, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10221, '咎艺菲', '男', '2001-04-23 15:58:56', '山东', '18998779634', '123', '统计19.7本', 410221, 330402, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10222, '掌子冉', '男', '2000-05-18 15:58:56', '广东', '18355273867', '123', '统计19.7本', 410221, 330402, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10223, '巢怡博', '男', '1999-10-27 15:58:56', '吉林', '14742474033', '123', '统计19.7本', 410221, 330402, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10224, '过米娅', '男', '1999-08-02 15:58:56', '贵州', '15570434814', '123', '英语19.1本', 410320, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10225, '仲朝曦', '女', '2000-12-05 15:58:56', '江西', '18348352219', '123', '英语19.1本', 410320, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10226, '速玉研', '男', '2000-07-27 15:58:56', '吉林', '17369318437', '123', '英语19.1本', 410320, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10227, '进文轩', '男', '1999-11-13 15:58:56', '湖南', '13916117150', '123', '翻译19.8本', 410321, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10228, '昌米阳', '女', '1999-09-23 15:58:56', '四川', '18616113610', '123', '翻译19.8本', 410321, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10229, '竭浩轩', '女', '1999-09-27 15:58:56', '云南', '13043756604', '123', '翻译19.8本', 410321, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10230, '蓬子源', '男', '1999-09-30 15:58:56', '安徽', '19827413580', '123', '商务19.5本', 410322, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10231, '盛若惜', '女', '2001-01-02 15:58:56', '黑龙江', '13296326954', '123', '商务19.5本', 410322, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10232, '柏馨翼', '女', '2001-02-20 15:58:56', '湖北', '15633313691', '123', '商务19.5本', 410322, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10233, '郎玉卿', '男', '2000-01-22 15:58:56', '江西', '13647672488', '123', '日语19.4本', 410323, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10234, '千甜雅', '女', '2001-01-07 15:58:56', '甘肃', '17748681985', '123', '日语19.4本', 410323, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10235, '犹世霖', '女', '2000-09-18 15:58:56', '四川', '13561609137', '123', '日语19.4本', 410323, 330403, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10236, '信缤泽', '男', '2000-12-21 15:58:56', '甘肃', '15985984592', '123', '思政19.1本', 410420, 330404, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10237, '惠俊豪', '男', '2000-09-02 15:58:56', '河南', '15281449071', '123', '思政19.1本', 410420, 330404, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10238, '申博泽', '女', '2000-09-23 15:58:56', '山西', '19926696833', '123', '思政19.1本', 410420, 330404, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10239, '司云娴', '男', '2001-03-11 15:58:56', '四川', '17849418817', '123', '汉语19.3本', 410520, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10240, '房怡然', '女', '2000-07-25 15:58:56', '吉林', '15922447237', '123', '汉语19.3本', 410520, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10241, '闪馨冉', '男', '2001-01-06 15:58:56', '湖北', '19878395559', '123', '汉语19.3本', 410520, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10242, '姚志选', '男', '2000-07-07 15:58:56', '山东', '18563727360', '123', '汉教19.4本', 410521, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10243, '合诺曦', '女', '1999-12-12 15:58:56', '贵州', '13069649406', '123', '汉教19.4本', 410521, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10244, '香统勋', '女', '2000-07-26 15:58:56', '江西', '13347134764', '123', '汉教19.4本', 410521, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10245, '赏雨涵', '女', '1999-10-01 15:58:56', '陕西', '14736104976', '123', '戏剧19.9本', 410522, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10246, '萨希哲', '女', '2000-08-21 15:58:56', '山东', '17819078305', '123', '戏剧19.9本', 410522, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10247, '银智营', '男', '1999-12-04 15:58:56', '贵州', '13788302315', '123', '戏剧19.9本', 410522, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10248, '强恒宇', '女', '2000-09-12 15:58:56', '陕西', '13638371208', '123', '文化19.12本', 410523, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10249, '律怡轩', '女', '1999-08-31 15:58:56', '江苏', '18357301607', '123', '文化19.12本', 410523, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10250, '赵圣哲', '女', '1999-10-30 15:58:56', '贵州', '17615243047', '123', '文化19.12本', 410523, 330405, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10251, '后克样', '男', '2001-04-21 15:58:56', '安徽', '19963414629', '123', '历史19.10本', 410620, 330406, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10252, '利树甜', '女', '2000-12-12 15:58:56', '江西', '14718366883', '123', '历史19.10本', 410620, 330406, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10253, '仉艺天', '女', '1999-11-20 15:58:56', '河南', '18939696290', '123', '历史19.10本', 410620, 330406, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10254, '窦欣怡', '男', '2000-05-21 15:58:56', '浙江', '14763125744', '123', '教育19.2本', 410720, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10255, '犁东正', '女', '2001-01-31 15:58:56', '广东', '17320398446', '123', '教育19.2本', 410720, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10256, '汪梦媛', '男', '2000-03-20 15:58:56', '江苏', '15915234381', '123', '教育19.2本', 410720, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10257, '偶恩豪', '男', '1999-10-16 15:58:56', '福建', '17573041680', '123', '学前19.4本', 410721, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10258, '莫胜龙', '女', '2000-11-08 15:58:56', '海南', '18618193710', '123', '学前19.4本', 410721, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10259, '翟子怡', '女', '2000-06-03 15:58:56', '浙江', '13555125717', '123', '学前19.4本', 410721, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10260, '暴新云', '女', '2000-05-25 15:58:56', '云南', '15338359074', '123', '小教19.6本', 410722, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10261, '酒艺涵', '男', '1999-12-20 15:58:56', '黑龙江', '18141625454', '123', '小教19.6本', 410722, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10262, '荀艺硕', '男', '1999-12-30 15:58:56', '山东', '19163659790', '123', '小教19.6本', 410722, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10263, '缪宇硕', '男', '2000-12-15 15:58:56', '四川', '17712143083', '123', '应心19.1本', 410723, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10264, '麻钧溢', '女', '2001-02-25 15:58:56', '吉林', '19139912316', '123', '应心19.1本', 410723, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10265, '笪洋泽', '男', '2000-08-14 15:58:56', '黑龙江', '15245805574', '123', '应心19.1本', 410723, 330407, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10266, '字舒婕', '女', '2000-12-15 15:58:56', '海南', '15371885580', '123', '工艺19.4本', 410820, 330408, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10267, '次琪航', '男', '2001-03-08 15:58:56', '陕西', '13425388272', '123', '工艺19.4本', 410820, 330408, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10268, '植翌喆', '男', '2001-03-30 15:58:56', '贵州', '17360022779', '123', '工艺19.4本', 410820, 330408, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10269, '毓殿原', '女', '2000-03-28 15:58:56', '江西', '18998416014', '123', '宝石19.7本', 410821, 330408, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10270, '竹自阳', '女', '2001-02-13 15:58:56', '山东', '13215806393', '123', '宝石19.7本', 410821, 330408, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10271, '邢英洁', '女', '2000-03-11 15:58:56', '福建', '15137834994', '123', '宝石19.7本', 410821, 330408, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10272, '薛奕森', '女', '2000-06-12 15:58:56', '江西', '17350693224', '123', '艺设19.3本', 410823, 330408, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10273, '是海淇', '女', '1999-12-02 15:58:56', '湖北', '15368565225', '123', '艺设19.3本', 410823, 330408, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10274, '帛熙然', '男', '2000-08-27 15:58:56', '江西', '18754233409', '123', '艺设19.3本', 410823, 330408, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10275, '凭统维', '男', '2001-03-07 15:58:56', '贵州', '15972799322', '123', '播音19.3本', 410920, 330409, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10276, '廖淑瑶', '女', '2000-07-28 15:58:56', '河南', '17640365483', '123', '播音19.3本', 410920, 330409, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10277, '栗耀择', '女', '2001-01-26 15:58:56', '云南', '13597952860', '123', '播音19.3本', 410920, 330409, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10278, '真爱书', '男', '2000-08-15 15:58:56', '广东', '18148684396', '123', '广编19.3本', 410921, 330409, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10279, '奚子轩', '女', '1999-05-26 15:58:56', '湖南', '15190396740', '123', '广编19.3本', 410921, 330409, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10280, '酆子涵', '女', '2000-06-26 15:58:56', '江西', '17639967252', '123', '广编19.3本', 410921, 330409, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10281, '孛柯言', '女', '1999-06-05 15:58:56', '湖北', '13396806810', '123', '新闻19.8本', 410922, 330409, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10282, '寸雯雯', '女', '2000-03-25 15:58:56', '吉林', '13621776827', '123', '新闻19.8本', 410922, 330409, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10283, '卞照涵', '男', '2000-06-05 15:58:56', '江西', '13750901736', '123', '新闻19.8本', 410922, 330409, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10284, '竺凌昊', '男', '2001-04-06 15:58:56', '山西', '18940331319', '123', '物理19.1本', 411020, 330410, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10285, '忻晨晰', '男', '2001-01-26 15:58:56', '湖南', '18286557725', '123', '物理19.1本', 411020, 330410, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10286, '晋名哲', '男', '2001-01-13 15:58:57', '福建', '16634407114', '123', '物理19.1本', 411020, 330410, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10287, '袭星语', '男', '2001-01-06 15:58:57', '海南', '18157737866', '123', '电子19.5本', 411021, 330410, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10288, '孝春依', '女', '2000-08-01 15:58:57', '四川', '17866875785', '123', '电子19.5本', 411021, 330410, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10289, '弘卜楷', '男', '2000-06-21 15:58:57', '吉林', '17554498018', '123', '电子19.5本', 411021, 330410, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10290, '卜奥杰', '男', '2000-06-11 15:58:57', '云南', '18325192943', '123', '通信19.6本', 411022, 330410, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10291, '韦志亮', '男', '1999-11-25 15:58:57', '山西', '18970405492', '123', '通信19.6本', 411022, 330410, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10292, '闾世鹏', '女', '1999-07-29 15:58:57', '江西', '15547607566', '123', '通信19.6本', 411022, 330410, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10293, '牢雨帆', '男', '2000-09-22 15:58:57', '湖南', '15575371713', '123', '体教19.2本', 411120, 330411, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10294, '杭艺诺', '男', '1999-06-20 15:58:57', '湖南', '18124253600', '123', '体教19.2本', 411120, 330411, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10295, '风怡企', '女', '1999-10-13 15:58:57', '广东', '13650504368', '123', '体教19.2本', 411120, 330411, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10296, '化东昇', '女', '2001-03-13 15:58:57', '黑龙江', '13713623605', '123', '运训19.5本', 411121, 330411, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10297, '阎悦洋', '女', '1999-12-12 15:58:57', '湖南', '13829834716', '123', '运训19.5本', 411121, 330411, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10298, '海欣佑', '男', '2000-06-27 15:58:57', '江西', '13241462948', '123', '运训19.5本', 411121, 330411, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10299, '始淇轩', '男', '2000-04-06 15:58:57', '黑龙江', '18025345593', '123', '体舞19.7本', 411122, 330411, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10300, '受冰可', '男', '1999-07-26 15:58:57', '河南', '18075446087', '123', '体舞19.7本', 411122, 330411, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10301, '尉亚捷', '男', '2000-10-21 15:58:57', '安徽', '19835469248', '123', '体舞19.7本', 411122, 330411, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10302, '甲沐希', '男', '2000-11-15 15:58:57', '山西', '15062626673', '123', '土木19.7本', 411220, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10303, '锁颖萓', '女', '2001-01-31 15:58:57', '黑龙江', '13821719223', '123', '土木19.7本', 411220, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10304, '藤姝贝', '男', '2000-12-10 15:58:57', '海南', '13926733049', '123', '土木19.7本', 411220, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10305, '平明月', '女', '2000-10-10 15:58:57', '辽宁', '19150619391', '123', '工程19.2本', 411221, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10306, '元博硕', '女', '2000-06-07 15:58:57', '黑龙江', '15066882108', '123', '工程19.2本', 411221, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10307, '靖玉惠', '女', '2001-01-20 15:58:57', '贵州', '17894445728', '123', '工程19.2本', 411221, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10308, '陆子轩', '女', '2001-01-30 15:58:57', '河南', '15662332153', '123', '建筑19.4本', 411222, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10309, '老炳錦', '女', '2000-02-14 15:58:57', '辽宁', '15068018801', '123', '建筑19.4本', 411222, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10310, '旅羽沫', '男', '1999-08-27 15:58:57', '福建', '18787011616', '123', '建筑19.4本', 411222, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10311, '虢沐语', '男', '2000-03-22 15:58:57', '山东', '18470214159', '123', '给排水19.5本', 411223, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10312, '年毓金', '女', '2000-10-09 15:58:57', '甘肃', '18174604338', '123', '给排水19.5本', 411223, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10313, '卑一然', '男', '1999-10-24 15:58:57', '河南', '13797675061', '123', '给排水19.5本', 411223, 330412, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10314, '阮镇逵', '男', '2000-06-05 15:58:57', '安徽', '13668585148', '123', '化学19.3本', 411320, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10315, '谬怡萱', '男', '2001-04-29 15:58:57', '湖南', '19153759653', '123', '化学19.3本', 411320, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10316, '威世玉', '女', '2000-02-25 15:58:57', '湖南', '15714123330', '123', '化学19.3本', 411320, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10317, '甫恩硕', '女', '1999-11-19 15:58:57', '吉林', '17847153723', '123', '应化19.4本', 411321, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10318, '蒙子儒', '男', '2000-12-10 15:58:57', '浙江', '19146953679', '123', '应化19.4本', 411321, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10319, '宁宇轩', '女', '2001-02-11 15:58:57', '河南', '15547828541', '123', '应化19.4本', 411321, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10320, '溥楚萓', '男', '2000-01-24 15:58:57', '山东', '18624625364', '123', '制药19.6本', 411322, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10321, '睦竞兮', '男', '1999-10-06 15:58:57', '辽宁', '15679984702', '123', '制药19.6本', 411322, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10322, '帅英旭', '女', '2000-09-04 15:58:57', '陕西', '16696108487', '123', '制药19.6本', 411322, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10323, '全柯豫', '女', '1999-07-14 15:58:57', '吉林', '13025367410', '123', '材料19.8本', 411323, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10324, '委宇彤', '男', '1999-08-29 15:58:57', '安徽', '19157983496', '123', '材料19.8本', 411323, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10325, '宝悦嘉', '女', '1999-05-13 15:58:57', '福建', '18060003859', '123', '材料19.8本', 411323, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10326, '赖树辰', '女', '1999-11-10 15:58:57', '安徽', '13666415261', '123', '水质19.9本', 411324, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10327, '弥雨路', '男', '2000-04-30 15:58:57', '云南', '17385897840', '123', '水质19.9本', 411324, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10328, '坚旭来', '女', '2000-02-23 15:58:57', '陕西', '15867564142', '123', '水质19.9本', 411324, 330413, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10329, '陶子萱', '男', '2000-10-14 15:58:57', '贵州', '13334116879', '123', '音乐19.3本', 411420, 330414, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10330, '戴光磊', '女', '2000-02-14 15:58:57', '贵州', '15715309298', '123', '音乐19.3本', 411420, 330414, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10331, '德玉淇', '男', '2000-12-10 15:58:57', '河南', '14751772159', '123', '音乐19.3本', 411420, 330414, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10332, '宋若溪', '男', '1999-11-13 15:58:57', '云南', '16676816672', '123', '音表19.4本', 411421, 330414, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10333, '贰硕辰', '男', '2000-09-13 15:58:57', '吉林', '19893091998', '123', '音表19.4本', 411421, 330414, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10334, '达雪琪', '女', '2000-09-14 15:58:57', '四川', '18796864676', '123', '音表19.4本', 411421, 330414, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10335, '蓟一苗', '女', '2001-01-25 15:58:57', '甘肃', '16610771390', '123', '舞蹈19.6本', 411422, 330414, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10336, '马兴翰', '男', '1999-07-30 15:58:57', '陕西', '17656566097', '123', '舞蹈19.6本', 411422, 330414, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10337, '定照南', '女', '2000-09-05 15:58:57', '江西', '18844954058', '123', '舞蹈19.6本', 411422, 330414, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10338, '告怡平', '男', '1999-07-02 15:58:57', '贵州', '14771101858', '123', '法学19.1本', 411520, 330415, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10339, '莱统宇', '女', '2000-08-27 15:58:57', '浙江', '19138108143', '123', '法学19.1本', 411520, 330415, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10340, '康世豪', '女', '2000-05-25 15:58:57', '四川', '15824119835', '123', '法学19.1本', 411520, 330415, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10341, '蓝曦月', '男', '1999-05-30 15:58:57', '广东', '15625799625', '123', '生科19.1本', 411620, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10342, '闽伊果', '女', '2001-01-24 15:58:57', '辽宁', '18694238669', '123', '生科19.1本', 411620, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10343, '寿艺茹', '男', '1999-12-27 15:58:57', '陕西', '13616095389', '123', '生科19.1本', 411620, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10344, '藏云飞', '女', '2001-05-11 15:58:57', '安徽', '17691213326', '123', '生工19.6本', 411621, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10345, '接羽铮', '男', '2000-04-16 15:58:57', '河南', '18196302369', '123', '生工19.6本', 411621, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10346, '穆怡彤', '男', '2001-01-18 15:58:57', '山东', '15170341298', '123', '生工19.6本', 411621, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10347, '蔡啸天', '男', '2000-07-24 15:58:57', '吉林', '15690795174', '123', '美术19.4本', 411720, 330417, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10348, '业志信', '女', '2000-02-06 15:58:57', '黑龙江', '18383349383', '123', '美术19.4本', 411720, 330417, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10349, '闵俊浩', '女', '2000-01-10 15:58:57', '陕西', '15054568680', '123', '美术19.4本', 411720, 330417, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10350, '孙洋毅', '女', '2001-01-29 15:58:57', '江西', '17787314258', '123', '环境19.7本', 411721, 330417, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10351, '春俊宇', '女', '2000-07-29 15:58:57', '海南', '18990496171', '123', '环境19.7本', 411721, 330417, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10352, '悟沐希', '女', '2000-10-16 15:58:57', '江西', '13053208082', '123', '环境19.7本', 411721, 330417, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10353, '针司翰', '女', '1999-08-05 15:58:57', '云南', '18381735762', '123', '视传19.8本', 411722, 330417, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10354, '宜殿薇', '女', '1999-08-10 15:58:57', '云南', '15015019637', '123', '视传19.8本', 411722, 330417, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10355, '节钰岩', '女', '2000-12-26 15:58:57', '山东', '15188368313', '123', '视传19.8本', 411722, 330417, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10356, '本小秋', '男', '1999-12-10 15:58:57', '海南', '19983946244', '123', '测绘19.7本', 411820, 330418, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10357, '都煜喆', '女', '2001-03-28 15:58:57', '广东', '13124857782', '123', '测绘19.7本', 411820, 330418, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10358, '宰奕卓', '男', '2001-01-17 15:58:57', '黑龙江', '15260352926', '123', '测绘19.7本', 411820, 330418, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10359, '栋紫萱', '女', '2000-08-10 15:58:57', '云南', '18882304963', '123', '地科19.1本', 411821, 330418, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10360, '隋羽霏', '女', '2000-08-12 15:58:57', '辽宁', '18537559627', '123', '地科19.1本', 411821, 330418, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10361, '盈佳润', '女', '2001-04-07 15:58:57', '湖北', '18918474958', '123', '地科19.1本', 411821, 330418, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10362, '闭子阳', '女', '2000-02-24 15:58:57', '江苏', '18080028090', '123', '旅游19.6本', 411822, 330418, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10363, '悉淑怡', '女', '2000-12-28 15:58:57', '江苏', '18135832752', '123', '旅游19.6本', 411822, 330418, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10364, '邝世博', '男', '2000-11-19 15:58:57', '吉林', '13073278400', '123', '旅游19.6本', 411822, 330418, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10365, '爱士媛', '女', '2000-10-16 15:58:57', '广东', '13697229583', '123', '金融19.13本', 411920, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10366, '訾熙恩', '男', '2000-04-01 15:58:57', '山西', '18420623135', '123', '金融19.13本', 411920, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10367, '买馨阳', '女', '1999-06-03 15:58:57', '贵州', '18579954348', '123', '金融19.13本', 411920, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10368, '吉子轩', '女', '1999-07-28 15:58:57', '河南', '13741502869', '123', '国贸19.1本', 411921, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10369, '九炎昊', '女', '1999-08-23 15:58:57', '辽宁', '15242536260', '123', '国贸19.1本', 411921, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10370, '李艺涵', '女', '1999-12-12 15:58:57', '湖南', '18233948545', '123', '国贸19.1本', 411921, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10371, '渠竞一', '男', '1999-11-12 15:58:57', '辽宁', '17793618720', '123', '工商19.4本', 411922, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10372, '关艺馨', '男', '1999-11-17 15:58:57', '山西', '13778726618', '123', '工商19.4本', 411922, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10373, '少德超', '男', '2000-02-02 15:58:57', '黑龙江', '19986903806', '123', '工商19.4本', 411922, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10374, '友芸菡', '女', '2000-03-13 15:58:57', '甘肃', '13818646514', '123', '财务19.10本', 411923, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10375, '钟梦鑫', '男', '1999-06-03 15:58:57', '贵州', '15518654649', '123', '财务19.10本', 411923, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10376, '乙天琪', '男', '2000-03-23 15:58:57', '江西', '19832673476', '123', '财务19.10本', 411923, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10377, '喻诗琪', '男', '2000-08-10 15:58:57', '湖南', '16673623794', '123', '物流19.6本', 411924, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10378, '洪仕龙', '女', '2001-04-16 15:58:57', '河南', '18279792508', '123', '物流19.6本', 411924, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10379, '保嘉煊', '男', '2001-02-05 15:58:57', '广东', '18647297945', '123', '物流19.6本', 411924, 330419, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10380, '宣名轩', '女', '1999-09-16 15:58:57', '山东', '15615825348', '123', '机械19.5本', 412020, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10381, '隽一鸣', '男', '2000-08-14 15:58:57', '山东', '19172234186', '123', '机械19.5本', 412020, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10382, '帖曌煜', '女', '2000-05-29 15:58:57', '广东', '13119267476', '123', '机械19.5本', 412020, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10383, '郁恒博', '男', '1999-11-03 15:58:57', '安徽', '15246489610', '123', '汽车19.6本', 412021, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10384, '秋景川', '男', '1999-07-30 15:58:57', '海南', '18553731581', '123', '汽车19.6本', 412021, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10385, '苗俊杰', '男', '1999-12-27 15:58:57', '吉林', '17662732869', '123', '汽车19.6本', 412021, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10386, '资锦玉', '女', '2001-03-19 15:58:57', '四川', '15576948867', '123', '电气19.3本', 412022, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10387, '罗天佑', '女', '1999-11-18 15:58:57', '广东', '15348702596', '123', '电气19.3本', 412022, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10388, '桓翌钊', '女', '1999-05-05 15:58:57', '黑龙江', '15226022936', '123', '电气19.3本', 412022, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10389, '劳子辰', '男', '1999-11-10 15:58:57', '江苏', '17379388183', '123', '自动化19.7本', 412023, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10390, '甄俊涵', '女', '1999-06-08 15:58:57', '陕西', '16656171808', '123', '自动化19.7本', 412023, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10391, '芒育柯', '女', '2000-05-08 15:58:57', '山西', '15717932111', '123', '自动化19.7本', 412023, 330420, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10392, '红沐言', '女', '2000-03-18 15:58:57', '黑龙江', '13631055124', '123', '农学19.7本', 411622, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10393, '隆子轩', '女', '1999-12-27 15:58:57', '湖北', '18230108296', '123', '农学19.7本', 411622, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10394, '世鑫钰', '女', '1999-06-27 15:58:57', '湖南', '15217789748', '123', '农学19.7本', 411622, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10395, '锺翌岍', '女', '2000-09-06 15:58:57', '广东', '18068402423', '123', '园林19.4本', 411623, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10396, '丛建宇', '男', '2000-11-05 15:58:57', '浙江', '18648955798', '123', '园林19.4本', 411623, 330416, '2019-09-06 00:00:00');
INSERT INTO `student` VALUES (10397, '崔津孜', '女', '2001-02-18 15:58:57', '吉林', '13538656008', '123', '园林19.4本', 411623, 330416, '2019-09-06 00:00:00');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '工号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `duty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职称',
  `did` int(0) NULL DEFAULT NULL COMMENT '所属院系',
  `manager` int(0) NULL DEFAULT NULL COMMENT '1表示是管理员，0表示不是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27282 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (27001, '张力', '男', '1985-04-21 00:00:00', '123', '讲师', 330402, 0);
INSERT INTO `teacher` VALUES (27002, '张伟', '男', '1984-12-12 00:00:00', '123', '教授', 330401, 1);
INSERT INTO `teacher` VALUES (27003, '赵艳君', '女', '1987-10-14 12:49:15', '123', '教授', 330404, 0);
INSERT INTO `teacher` VALUES (27004, '赵永真', '男', '1985-07-30 12:49:03', '123', '讲师', 330416, 1);
INSERT INTO `teacher` VALUES (27005, '侯广云', '女', '1989-02-22 12:29:44', '123', '副教授', 330416, 0);
INSERT INTO `teacher` VALUES (27006, '侯启峰', '男', '1985-10-08 12:48:34', '123', '讲师', 330417, 1);
INSERT INTO `teacher` VALUES (27007, '李子燊', '男', '1982-09-05 12:48:34', '123', '教授', 330404, 0);
INSERT INTO `teacher` VALUES (27008, '侯露露', '女', '1991-01-06 12:48:34', '123', '教授', 330420, 0);
INSERT INTO `teacher` VALUES (27009, '孙凯', '男', '1986-07-15 12:48:34', '123', '讲师', 330408, 0);
INSERT INTO `teacher` VALUES (27010, '李红鹏', '女', '1989-10-31 12:48:34', '123', '教授', 330415, 1);
INSERT INTO `teacher` VALUES (27011, '连飞翔', '男', '1988-09-05 12:48:34', '123', '讲师', 330403, 1);
INSERT INTO `teacher` VALUES (27012, '连卫强', '男', '1989-03-21 12:48:34', '123', '教授', 330402, 0);
INSERT INTO `teacher` VALUES (27013, '靳佩佩', '女', '1982-11-23 12:48:34', '123', '教授', 330404, 1);
INSERT INTO `teacher` VALUES (27014, '王晓英', '女', '1981-06-21 12:48:34', '123', '副教授', 330415, 1);
INSERT INTO `teacher` VALUES (27015, '靳丹丹', '女', '1987-03-27 12:48:34', '123', '教授', 330409, 1);
INSERT INTO `teacher` VALUES (27016, '赵银银', '女', '1991-02-28 12:48:34', '123', '副教授', 330414, 0);
INSERT INTO `teacher` VALUES (27017, '张君', '女', '1988-03-25 12:48:34', '123', '教授', 330414, 1);
INSERT INTO `teacher` VALUES (27018, '李士博', '男', '1986-11-24 12:48:34', '123', '教授', 330406, 1);
INSERT INTO `teacher` VALUES (27019, '靳庆刚', '男', '1985-12-11 12:48:34', '123', '教授', 330408, 0);
INSERT INTO `teacher` VALUES (27020, '李春光', '男', '1986-09-18 12:48:34', '123', '副教授', 330420, 0);
INSERT INTO `teacher` VALUES (27021, '王培聪', '女', '1983-12-03 12:48:34', '123', '副教授', 330411, 0);
INSERT INTO `teacher` VALUES (27022, '张婷婷', '女', '1987-02-20 12:48:34', '123', '副教授', 330410, 0);
INSERT INTO `teacher` VALUES (27023, '靳馨月', '女', '1986-07-31 12:48:34', '123', '教授', 330412, 0);
INSERT INTO `teacher` VALUES (27024, '连娜', '女', '1990-06-25 12:48:34', '123', '副教授', 330408, 0);
INSERT INTO `teacher` VALUES (27025, '连丹丹', '女', '1984-11-05 12:48:34', '123', '教授', 330417, 1);
INSERT INTO `teacher` VALUES (27026, '侯珊珊', '女', '1984-01-27 12:48:34', '123', '讲师', 330401, 0);
INSERT INTO `teacher` VALUES (27027, '靳袆', '男', '1984-12-23 12:48:34', '123', '副教授', 330411, 1);
INSERT INTO `teacher` VALUES (27028, '孙莹', '女', '1984-04-19 12:48:34', '123', '教授', 330404, 1);
INSERT INTO `teacher` VALUES (27029, '张朋鹏', '男', '1986-03-19 12:48:34', '123', '教授', 330419, 1);
INSERT INTO `teacher` VALUES (27030, '赵文川', '女', '1984-09-28 12:48:34', '123', '讲师', 330414, 1);
INSERT INTO `teacher` VALUES (27031, '张尚德', '男', '1987-02-14 12:48:34', '123', '讲师', 330419, 1);
INSERT INTO `teacher` VALUES (27032, '张豪', '男', '1990-03-13 12:48:34', '123', '副教授', 330408, 0);
INSERT INTO `teacher` VALUES (27033, '赵志燕', '女', '1990-09-15 12:48:34', '123', '教授', 330409, 0);
INSERT INTO `teacher` VALUES (27034, '王仙仙', '女', '1982-07-19 12:48:34', '123', '教授', 330412, 0);
INSERT INTO `teacher` VALUES (27035, '王栓柱', '男', '1981-07-17 12:48:34', '123', '副教授', 330417, 1);
INSERT INTO `teacher` VALUES (27036, '侯振巧', '男', '1989-09-08 12:48:34', '123', '副教授', 330404, 0);
INSERT INTO `teacher` VALUES (27037, '赵文超', '男', '1984-01-08 12:48:34', '123', '教授', 330402, 0);
INSERT INTO `teacher` VALUES (27038, '孙鑫', '男', '1982-08-19 12:48:34', '123', '副教授', 330420, 0);
INSERT INTO `teacher` VALUES (27039, '张淑霞', '女', '1985-02-24 12:48:34', '123', '副教授', 330420, 1);
INSERT INTO `teacher` VALUES (27040, '赵萍萍', '女', '1985-11-04 12:48:34', '123', '副教授', 330412, 1);
INSERT INTO `teacher` VALUES (27041, '王红军', '女', '1989-12-20 12:48:34', '123', '教授', 330410, 0);
INSERT INTO `teacher` VALUES (27042, '张庆彬', '男', '1986-10-14 12:48:34', '123', '讲师', 330402, 1);
INSERT INTO `teacher` VALUES (27043, '张素伟', '男', '1984-12-06 12:48:34', '123', '教授', 330409, 0);
INSERT INTO `teacher` VALUES (27044, '连济深', '男', '1990-03-01 12:48:34', '123', '讲师', 330407, 1);
INSERT INTO `teacher` VALUES (27045, '王冠英', '女', '1984-02-23 12:48:34', '123', '讲师', 330404, 0);
INSERT INTO `teacher` VALUES (27046, '张春芳', '女', '1986-04-13 12:48:34', '123', '讲师', 330420, 1);
INSERT INTO `teacher` VALUES (27047, '连玉宽', '女', '1983-03-09 12:48:34', '123', '教授', 330405, 0);
INSERT INTO `teacher` VALUES (27048, '张春梅', '女', '1988-02-12 12:48:34', '123', '教授', 330412, 1);
INSERT INTO `teacher` VALUES (27049, '王喧丹', '女', '1984-07-14 12:48:34', '123', '副教授', 330418, 1);
INSERT INTO `teacher` VALUES (27050, '李海东', '男', '1987-02-22 12:48:34', '123', '讲师', 330413, 0);
INSERT INTO `teacher` VALUES (27051, '李洪涛', '男', '1983-12-11 12:48:34', '123', '教授', 330406, 0);
INSERT INTO `teacher` VALUES (27052, '连倩', '女', '1990-11-14 12:48:34', '123', '教授', 330410, 0);
INSERT INTO `teacher` VALUES (27053, '孙伟', '男', '1990-12-19 12:48:34', '123', '副教授', 330411, 1);
INSERT INTO `teacher` VALUES (27054, '赵晓英', '女', '1990-10-22 12:48:34', '123', '教授', 330401, 0);
INSERT INTO `teacher` VALUES (27055, '王玉刚', '男', '1988-04-04 12:48:34', '123', '副教授', 330402, 0);
INSERT INTO `teacher` VALUES (27056, '王国臣', '男', '1982-06-19 12:48:34', '123', '副教授', 330414, 0);
INSERT INTO `teacher` VALUES (27057, '赵洪波', '男', '1988-05-12 12:48:34', '123', '副教授', 330420, 0);
INSERT INTO `teacher` VALUES (27058, '王金刚', '男', '1990-06-12 12:48:34', '123', '讲师', 330417, 0);
INSERT INTO `teacher` VALUES (27059, '蒋静云', '女', '1982-07-27 12:48:34', '123', '教授', 330403, 1);
INSERT INTO `teacher` VALUES (27060, '蒋梦玲', '女', '1990-08-02 12:48:34', '123', '讲师', 330416, 0);
INSERT INTO `teacher` VALUES (27061, '孙艳', '女', '1988-07-09 12:48:34', '123', '教授', 330415, 1);
INSERT INTO `teacher` VALUES (27062, '赵红瑞', '女', '1984-01-12 12:48:34', '123', '教授', 330408, 1);
INSERT INTO `teacher` VALUES (27063, '沈秋花', '女', '1984-08-06 12:48:34', '123', '副教授', 330401, 1);
INSERT INTO `teacher` VALUES (27064, '沈彦杰', '男', '1985-04-26 12:48:34', '123', '讲师', 330413, 1);
INSERT INTO `teacher` VALUES (27065, '连综琦', '女', '1982-05-20 12:48:34', '123', '教授', 330416, 0);
INSERT INTO `teacher` VALUES (27066, '靳永昌', '男', '1983-10-24 12:48:34', '123', '讲师', 330404, 0);
INSERT INTO `teacher` VALUES (27067, '张向景', '女', '1985-05-05 12:48:34', '123', '教授', 330401, 0);
INSERT INTO `teacher` VALUES (27068, '张帅', '女', '1988-09-11 12:48:34', '123', '教授', 330411, 0);
INSERT INTO `teacher` VALUES (27069, '李德丽', '女', '1985-04-25 12:48:34', '123', '教授', 330406, 0);
INSERT INTO `teacher` VALUES (27070, '赵福跃', '男', '1984-05-03 12:48:34', '123', '教授', 330404, 0);
INSERT INTO `teacher` VALUES (27071, '连小菊', '女', '1987-11-12 12:48:34', '123', '教授', 330410, 1);
INSERT INTO `teacher` VALUES (27072, '孙冲', '男', '1982-05-01 12:48:34', '123', '讲师', 330401, 0);
INSERT INTO `teacher` VALUES (27073, '赵飞翔', '女', '1982-08-08 12:48:34', '123', '副教授', 330404, 0);
INSERT INTO `teacher` VALUES (27074, '张宏春', '男', '1984-09-25 12:48:34', '123', '讲师', 330405, 1);
INSERT INTO `teacher` VALUES (27075, '侯亚楠', '女', '1986-05-08 12:48:34', '123', '讲师', 330407, 1);
INSERT INTO `teacher` VALUES (27076, '赵艳丽', '女', '1987-08-06 12:48:34', '123', '讲师', 330416, 1);
INSERT INTO `teacher` VALUES (27077, '赵晓曼', '女', '1987-11-09 12:48:34', '123', '讲师', 330401, 0);
INSERT INTO `teacher` VALUES (27078, '张红梅', '女', '1982-11-12 12:48:34', '123', '副教授', 330401, 0);
INSERT INTO `teacher` VALUES (27079, '王松申', '男', '1988-04-18 12:48:34', '123', '讲师', 330409, 1);
INSERT INTO `teacher` VALUES (27080, '张倩', '女', '1985-04-21 12:48:34', '123', '教授', 330413, 0);
INSERT INTO `teacher` VALUES (27081, '连袆', '男', '1991-04-11 12:48:34', '123', '讲师', 330406, 1);
INSERT INTO `teacher` VALUES (27082, '王淑丽', '女', '1981-08-16 12:48:34', '123', '讲师', 330420, 0);
INSERT INTO `teacher` VALUES (27083, '李永生', '男', '1985-10-09 12:48:34', '123', '讲师', 330416, 1);
INSERT INTO `teacher` VALUES (27084, '靳春凤', '女', '1983-10-05 12:48:34', '123', '教授', 330406, 0);
INSERT INTO `teacher` VALUES (27085, '侯泽', '男', '1985-04-05 12:48:34', '123', '讲师', 330419, 1);
INSERT INTO `teacher` VALUES (27086, '沈利', '男', '1990-06-16 12:48:34', '123', '副教授', 330402, 0);
INSERT INTO `teacher` VALUES (27087, '孙静', '女', '1988-06-18 12:48:34', '123', '教授', 330420, 1);
INSERT INTO `teacher` VALUES (27088, '王洪洁', '女', '1990-06-08 12:48:34', '123', '教授', 330408, 1);
INSERT INTO `teacher` VALUES (27089, '连秀兰', '女', '1989-09-28 12:48:34', '123', '教授', 330410, 0);
INSERT INTO `teacher` VALUES (27090, '王向景', '男', '1991-03-28 12:48:34', '123', '讲师', 330418, 0);
INSERT INTO `teacher` VALUES (27091, '赵文波', '男', '1989-05-13 12:48:34', '123', '讲师', 330418, 0);
INSERT INTO `teacher` VALUES (27092, '赵闪闪', '女', '1990-12-24 12:48:34', '123', '副教授', 330404, 0);
INSERT INTO `teacher` VALUES (27093, '鲁红梅', '女', '1987-12-30 12:48:34', '123', '副教授', 330402, 0);
INSERT INTO `teacher` VALUES (27094, '王俊江', '男', '1990-06-07 12:48:34', '123', '讲师', 330414, 1);
INSERT INTO `teacher` VALUES (27095, '张倩', '男', '1981-09-13 12:48:34', '123', '副教授', 330415, 1);
INSERT INTO `teacher` VALUES (27096, '连龙柯', '男', '1981-08-15 12:48:34', '123', '教授', 330410, 0);
INSERT INTO `teacher` VALUES (27097, '王军', '男', '1988-01-24 12:48:34', '123', '教授', 330419, 0);
INSERT INTO `teacher` VALUES (27098, '连淑芳', '女', '1989-03-25 12:48:34', '123', '讲师', 330410, 0);
INSERT INTO `teacher` VALUES (27099, '赵美玲', '女', '1984-02-13 12:48:34', '123', '副教授', 330419, 1);
INSERT INTO `teacher` VALUES (27100, '孙娟', '女', '1987-07-06 12:48:34', '123', '讲师', 330411, 0);
INSERT INTO `teacher` VALUES (27101, '李天恩', '男', '1988-09-03 12:48:34', '123', '副教授', 330412, 1);
INSERT INTO `teacher` VALUES (27102, '孙慧', '女', '1989-02-07 12:48:34', '123', '讲师', 330419, 1);
INSERT INTO `teacher` VALUES (27103, '李俊良', '男', '1988-02-01 12:48:34', '123', '教授', 330417, 1);
INSERT INTO `teacher` VALUES (27104, '赵向景', '女', '1985-10-05 12:48:34', '123', '教授', 330419, 0);
INSERT INTO `teacher` VALUES (27105, '李洋洋', '女', '1990-01-14 12:48:34', '123', '讲师', 330410, 1);
INSERT INTO `teacher` VALUES (27106, '沈平', '男', '1982-10-28 12:48:34', '123', '副教授', 330412, 0);
INSERT INTO `teacher` VALUES (27107, '赵启峰', '男', '1990-07-23 12:48:34', '123', '副教授', 330416, 1);
INSERT INTO `teacher` VALUES (27108, '李心鑫', '女', '1983-11-05 12:48:34', '123', '副教授', 330408, 1);
INSERT INTO `teacher` VALUES (27109, '王彦岺', '男', '1990-07-21 12:48:34', '123', '讲师', 330405, 0);
INSERT INTO `teacher` VALUES (27110, '王振斌', '男', '1989-12-28 12:48:34', '123', '教授', 330402, 0);
INSERT INTO `teacher` VALUES (27111, '孙婷', '女', '1987-10-31 12:48:34', '123', '副教授', 330401, 0);
INSERT INTO `teacher` VALUES (27112, '王云飞', '女', '1985-06-16 12:48:34', '123', '教授', 330420, 1);
INSERT INTO `teacher` VALUES (27113, '王康平', '男', '1989-11-01 12:48:34', '123', '副教授', 330415, 1);
INSERT INTO `teacher` VALUES (27114, '连旭', '男', '1986-10-07 12:48:34', '123', '教授', 330401, 0);
INSERT INTO `teacher` VALUES (27115, '张红敏', '女', '1983-01-11 12:48:34', '123', '教授', 330411, 0);
INSERT INTO `teacher` VALUES (27116, '赵平安', '男', '1987-11-14 12:48:34', '123', '教授', 330406, 1);
INSERT INTO `teacher` VALUES (27117, '王瑞娜', '女', '1981-06-06 12:48:34', '123', '讲师', 330403, 1);
INSERT INTO `teacher` VALUES (27118, '张丹', '女', '1986-04-18 12:48:34', '123', '副教授', 330417, 1);
INSERT INTO `teacher` VALUES (27119, '王亚飞', '男', '1982-10-18 12:48:34', '123', '教授', 330401, 0);
INSERT INTO `teacher` VALUES (27120, '张娜', '女', '1983-04-19 12:48:34', '123', '教授', 330414, 1);
INSERT INTO `teacher` VALUES (27121, '沈玉林', '男', '1981-08-13 12:48:34', '123', '副教授', 330413, 1);
INSERT INTO `teacher` VALUES (27122, '王春广', '男', '1990-09-12 12:48:34', '123', '讲师', 330412, 0);
INSERT INTO `teacher` VALUES (27123, '张翰', '男', '1984-01-13 12:48:34', '123', '讲师', 330412, 1);
INSERT INTO `teacher` VALUES (27124, '赵蒙蒙', '女', '1983-08-06 12:48:34', '123', '讲师', 330420, 1);
INSERT INTO `teacher` VALUES (27125, '蒋德丽', '女', '1989-11-10 12:48:34', '123', '副教授', 330418, 1);
INSERT INTO `teacher` VALUES (27126, '王贵斌', '男', '1990-08-08 12:48:34', '123', '讲师', 330415, 0);
INSERT INTO `teacher` VALUES (27127, '赵贝贝', '女', '1987-05-02 12:48:34', '123', '教授', 330406, 0);
INSERT INTO `teacher` VALUES (27128, '赵继海', '男', '1985-10-27 12:48:34', '123', '讲师', 330420, 1);
INSERT INTO `teacher` VALUES (27129, '蒋胜超', '男', '1987-05-28 12:48:34', '123', '讲师', 330412, 0);
INSERT INTO `teacher` VALUES (27130, '李卫红', '女', '1985-11-26 12:48:34', '123', '副教授', 330415, 0);
INSERT INTO `teacher` VALUES (27131, '王继宽', '男', '1989-01-07 12:48:34', '123', '讲师', 330417, 1);
INSERT INTO `teacher` VALUES (27132, '靳慧', '女', '1985-02-20 12:48:34', '123', '讲师', 330416, 0);
INSERT INTO `teacher` VALUES (27133, '李瑞丽', '女', '1985-11-07 12:48:34', '123', '教授', 330418, 1);
INSERT INTO `teacher` VALUES (27134, '张龙', '男', '1988-11-25 12:48:34', '123', '副教授', 330409, 0);
INSERT INTO `teacher` VALUES (27135, '李娜娜', '女', '1984-09-16 12:48:34', '123', '讲师', 330408, 1);
INSERT INTO `teacher` VALUES (27136, '蒋岩', '男', '1985-09-14 12:48:34', '123', '讲师', 330401, 1);
INSERT INTO `teacher` VALUES (27137, '赵利娇', '女', '1981-11-05 12:48:34', '123', '讲师', 330418, 1);
INSERT INTO `teacher` VALUES (27138, '王雅茹', '女', '1984-02-28 12:48:34', '123', '副教授', 330418, 1);
INSERT INTO `teacher` VALUES (27139, '王子璐', '女', '1989-07-08 12:48:34', '123', '讲师', 330413, 1);
INSERT INTO `teacher` VALUES (27140, '赵永贺', '男', '1986-12-31 12:48:34', '123', '副教授', 330413, 0);
INSERT INTO `teacher` VALUES (27141, '王综琦', '男', '1987-09-27 12:48:34', '123', '教授', 330401, 0);
INSERT INTO `teacher` VALUES (27142, '王卫华', '男', '1982-11-28 12:48:34', '123', '副教授', 330419, 1);
INSERT INTO `teacher` VALUES (27143, '赵庆彬', '男', '1987-10-10 12:48:34', '123', '教授', 330405, 1);
INSERT INTO `teacher` VALUES (27144, '张晨', '女', '1984-10-29 12:48:34', '123', '讲师', 330403, 0);
INSERT INTO `teacher` VALUES (27145, '张艳珂', '女', '1984-05-29 12:48:34', '123', '副教授', 330413, 1);
INSERT INTO `teacher` VALUES (27146, '赵洪昌', '男', '1986-08-17 12:48:34', '123', '副教授', 330403, 0);
INSERT INTO `teacher` VALUES (27147, '张铜磊', '女', '1983-01-09 12:48:34', '123', '讲师', 330408, 0);
INSERT INTO `teacher` VALUES (27148, '李金刚', '男', '1985-09-20 12:48:34', '123', '教授', 330405, 1);
INSERT INTO `teacher` VALUES (27149, '孙娟', '女', '1985-01-02 12:48:34', '123', '教授', 330410, 1);
INSERT INTO `teacher` VALUES (27150, '赵保霞', '男', '1987-03-12 12:48:34', '123', '讲师', 330417, 1);
INSERT INTO `teacher` VALUES (27151, '赵赛赛', '女', '1985-09-28 12:48:34', '123', '副教授', 330418, 1);
INSERT INTO `teacher` VALUES (27152, '靳卫利', '男', '1984-04-12 12:48:34', '123', '教授', 330401, 0);
INSERT INTO `teacher` VALUES (27153, '蒋爱香', '女', '1983-04-19 12:48:34', '123', '副教授', 330402, 0);
INSERT INTO `teacher` VALUES (27154, '靳利', '男', '1981-12-01 12:48:34', '123', '副教授', 330410, 0);
INSERT INTO `teacher` VALUES (27155, '孙平', '男', '1982-05-03 12:48:34', '123', '讲师', 330403, 0);
INSERT INTO `teacher` VALUES (27156, '张露露', '女', '1989-04-27 12:48:34', '123', '讲师', 330419, 0);
INSERT INTO `teacher` VALUES (27157, '靳小江', '男', '1989-07-25 12:48:34', '123', '讲师', 330402, 1);
INSERT INTO `teacher` VALUES (27158, '王俊俊', '女', '1988-02-04 12:48:34', '123', '讲师', 330418, 0);
INSERT INTO `teacher` VALUES (27159, '沈杰', '男', '1983-02-28 12:48:34', '123', '副教授', 330403, 1);
INSERT INTO `teacher` VALUES (27160, '张勇', '男', '1988-11-22 12:48:34', '123', '教授', 330406, 0);
INSERT INTO `teacher` VALUES (27161, '赵山山', '男', '1982-03-26 12:48:34', '123', '副教授', 330411, 0);
INSERT INTO `teacher` VALUES (27162, '李冬冬', '女', '1990-07-08 12:48:34', '123', '教授', 330408, 1);
INSERT INTO `teacher` VALUES (27163, '王艳艳', '女', '1989-03-15 12:48:34', '123', '讲师', 330404, 0);
INSERT INTO `teacher` VALUES (27164, '赵江浩', '女', '1987-07-25 12:48:34', '123', '副教授', 330406, 1);
INSERT INTO `teacher` VALUES (27165, '王玉航', '女', '1989-09-29 12:48:34', '123', '讲师', 330419, 1);
INSERT INTO `teacher` VALUES (27166, '孙敬', '男', '1982-11-05 12:48:34', '123', '讲师', 330403, 1);
INSERT INTO `teacher` VALUES (27167, '赵红爱', '女', '1990-02-02 12:48:34', '123', '教授', 330406, 1);
INSERT INTO `teacher` VALUES (27168, '孙会', '男', '1983-10-01 12:48:34', '123', '讲师', 330406, 0);
INSERT INTO `teacher` VALUES (27169, '李庆敏', '男', '1983-05-04 12:48:34', '123', '讲师', 330418, 0);
INSERT INTO `teacher` VALUES (27170, '赵连明', '男', '1988-01-26 12:48:34', '123', '教授', 330401, 0);
INSERT INTO `teacher` VALUES (27171, '赵保胜', '男', '1988-10-26 12:48:34', '123', '教授', 330401, 1);
INSERT INTO `teacher` VALUES (27172, '蒋庆安', '男', '1987-02-28 12:48:34', '123', '讲师', 330416, 0);
INSERT INTO `teacher` VALUES (27173, '蒋子朋', '男', '1986-01-15 12:48:34', '123', '教授', 330408, 0);
INSERT INTO `teacher` VALUES (27174, '侯金帅', '男', '1982-11-13 12:48:34', '123', '副教授', 330403, 0);
INSERT INTO `teacher` VALUES (27175, '靳瑞', '女', '1986-07-10 12:48:34', '123', '讲师', 330409, 0);
INSERT INTO `teacher` VALUES (27176, '王金涛', '男', '1988-08-26 12:48:34', '123', '教授', 330401, 0);
INSERT INTO `teacher` VALUES (27177, '张科', '男', '1981-11-10 12:48:34', '123', '教授', 330404, 0);
INSERT INTO `teacher` VALUES (27178, '张晓萌', '女', '1987-07-29 12:48:34', '123', '讲师', 330411, 0);
INSERT INTO `teacher` VALUES (27179, '靳静', '男', '1990-10-23 12:48:34', '123', '教授', 330412, 0);
INSERT INTO `teacher` VALUES (27180, '张娟', '女', '1989-09-15 12:48:34', '123', '副教授', 330401, 1);
INSERT INTO `teacher` VALUES (27181, '王文雯', '女', '1981-07-15 12:48:34', '123', '教授', 330401, 0);
INSERT INTO `teacher` VALUES (27182, '侯文婷', '女', '1989-05-31 12:48:34', '123', '教授', 330407, 1);
INSERT INTO `teacher` VALUES (27183, '王海燕', '女', '1982-01-24 12:48:34', '123', '教授', 330405, 0);
INSERT INTO `teacher` VALUES (27184, '王万华', '男', '1981-10-05 12:48:34', '123', '讲师', 330418, 1);
INSERT INTO `teacher` VALUES (27185, '赵伟欣', '女', '1985-06-01 12:48:34', '123', '教授', 330413, 0);
INSERT INTO `teacher` VALUES (27186, '靳娜娜', '男', '1983-05-27 12:48:34', '123', '教授', 330417, 0);
INSERT INTO `teacher` VALUES (27187, '靳薇', '女', '1982-07-13 12:48:34', '123', '讲师', 330401, 0);
INSERT INTO `teacher` VALUES (27188, '王慧丽', '男', '1991-01-24 12:48:34', '123', '讲师', 330417, 0);
INSERT INTO `teacher` VALUES (27189, '靳朱莉', '男', '1984-10-25 12:48:34', '123', '副教授', 330409, 0);
INSERT INTO `teacher` VALUES (27190, '靳永伟', '男', '1986-04-29 12:48:34', '123', '讲师', 330412, 1);
INSERT INTO `teacher` VALUES (27191, '靳国磊', '男', '1987-11-03 12:48:34', '123', '讲师', 330402, 0);
INSERT INTO `teacher` VALUES (27192, '孙淞', '女', '1983-01-01 12:48:34', '123', '教授', 330406, 1);
INSERT INTO `teacher` VALUES (27193, '赵云波', '女', '1986-05-19 12:48:34', '123', '教授', 330405, 0);
INSERT INTO `teacher` VALUES (27194, '张芳', '女', '1990-03-11 12:48:34', '123', '教授', 330404, 0);
INSERT INTO `teacher` VALUES (27195, '张子璐', '女', '1984-10-11 12:48:34', '123', '讲师', 330404, 1);
INSERT INTO `teacher` VALUES (27196, '侯雪', '女', '1987-04-25 12:48:34', '123', '教授', 330404, 1);
INSERT INTO `teacher` VALUES (27197, '蒋林', '男', '1985-09-23 12:48:34', '123', '副教授', 330412, 0);
INSERT INTO `teacher` VALUES (27198, '王浩云', '女', '1986-08-20 12:48:34', '123', '讲师', 330414, 1);
INSERT INTO `teacher` VALUES (27199, '李静静', '女', '1989-01-21 12:48:34', '123', '副教授', 330413, 0);
INSERT INTO `teacher` VALUES (27200, '赵慧娜', '女', '1984-08-04 12:48:34', '123', '教授', 330418, 0);
INSERT INTO `teacher` VALUES (27201, '赵玉丹', '女', '1982-07-23 12:48:34', '123', '副教授', 330417, 0);
INSERT INTO `teacher` VALUES (27202, '张晶', '女', '1985-06-10 12:48:34', '123', '教授', 330411, 1);
INSERT INTO `teacher` VALUES (27203, '李安兴', '女', '1987-06-01 12:48:34', '123', '讲师', 330419, 0);
INSERT INTO `teacher` VALUES (27204, '王旭昇', '男', '1982-09-04 12:48:34', '123', '副教授', 330413, 1);
INSERT INTO `teacher` VALUES (27205, '赵丹丹', '女', '1986-03-10 12:48:34', '123', '副教授', 330406, 1);
INSERT INTO `teacher` VALUES (27206, '张春兴', '男', '1990-07-07 12:48:34', '123', '副教授', 330415, 0);
INSERT INTO `teacher` VALUES (27207, '赵海宇', '男', '1981-07-31 12:48:34', '123', '讲师', 330413, 0);
INSERT INTO `teacher` VALUES (27208, '王纪娜', '女', '1990-12-07 12:48:34', '123', '副教授', 330419, 1);
INSERT INTO `teacher` VALUES (27209, '王西西', '女', '1988-02-26 12:48:34', '123', '讲师', 330415, 1);
INSERT INTO `teacher` VALUES (27210, '连磊', '男', '1989-11-17 12:48:34', '123', '副教授', 330406, 1);
INSERT INTO `teacher` VALUES (27211, '蒋森', '女', '1986-04-04 12:48:34', '123', '副教授', 330412, 0);
INSERT INTO `teacher` VALUES (27212, '张卫', '男', '1982-04-18 12:48:34', '123', '教授', 330415, 1);
INSERT INTO `teacher` VALUES (27213, '王国红', '女', '1987-06-14 12:48:34', '123', '副教授', 330408, 1);
INSERT INTO `teacher` VALUES (27214, '孙雅', '女', '1986-01-14 12:48:34', '123', '讲师', 330418, 1);
INSERT INTO `teacher` VALUES (27215, '连文波', '女', '1989-06-12 12:48:34', '123', '副教授', 330401, 1);
INSERT INTO `teacher` VALUES (27216, '连欢欢', '男', '1986-05-07 12:48:34', '123', '副教授', 330404, 1);
INSERT INTO `teacher` VALUES (27217, '靳志强', '男', '1985-11-13 12:48:34', '123', '副教授', 330419, 1);
INSERT INTO `teacher` VALUES (27218, '赵景景', '男', '1988-11-07 12:48:34', '123', '副教授', 330412, 1);
INSERT INTO `teacher` VALUES (27219, '赵梦雅', '女', '1990-12-04 12:48:34', '123', '讲师', 330418, 1);
INSERT INTO `teacher` VALUES (27220, '王瑞玲', '女', '1989-08-26 12:48:34', '123', '副教授', 330404, 0);
INSERT INTO `teacher` VALUES (27221, '王秀玲', '女', '1990-05-07 12:48:34', '123', '教授', 330407, 1);
INSERT INTO `teacher` VALUES (27222, '赵东霞', '女', '1990-10-19 12:48:34', '123', '副教授', 330402, 1);
INSERT INTO `teacher` VALUES (27223, '赵文斌', '男', '1989-12-11 12:48:34', '123', '教授', 330419, 0);
INSERT INTO `teacher` VALUES (27224, '靳志红', '女', '1984-12-29 12:48:34', '123', '教授', 330414, 0);
INSERT INTO `teacher` VALUES (27225, '蒋黎', '女', '1983-11-05 12:48:34', '123', '副教授', 330419, 1);
INSERT INTO `teacher` VALUES (27226, '靳慧丽', '女', '1988-07-21 12:48:34', '123', '副教授', 330407, 1);
INSERT INTO `teacher` VALUES (27227, '孙俭', '女', '1982-05-17 12:48:34', '123', '讲师', 330402, 1);
INSERT INTO `teacher` VALUES (27228, '沈朝龙', '男', '1990-07-22 12:48:34', '123', '讲师', 330407, 1);
INSERT INTO `teacher` VALUES (27229, '靳文豪', '男', '1983-02-25 12:48:34', '123', '教授', 330417, 1);
INSERT INTO `teacher` VALUES (27230, '赵红新', '女', '1984-07-01 12:48:34', '123', '教授', 330414, 0);
INSERT INTO `teacher` VALUES (27231, '连国胜', '男', '1987-01-24 12:48:34', '123', '副教授', 330420, 0);
INSERT INTO `teacher` VALUES (27232, '蒋玉楠', '女', '1983-06-23 12:48:34', '123', '讲师', 330416, 1);
INSERT INTO `teacher` VALUES (27233, '连郑州', '男', '1985-03-26 12:48:34', '123', '教授', 330407, 0);
INSERT INTO `teacher` VALUES (27234, '赵素伟', '男', '1989-03-27 12:48:34', '123', '讲师', 330418, 0);
INSERT INTO `teacher` VALUES (27235, '王振田', '男', '1991-04-26 12:48:34', '123', '讲师', 330408, 0);
INSERT INTO `teacher` VALUES (27236, '赵亚会', '男', '1984-12-25 12:48:34', '123', '副教授', 330420, 0);
INSERT INTO `teacher` VALUES (27237, '张燕', '女', '1988-08-15 12:48:34', '123', '教授', 330418, 1);
INSERT INTO `teacher` VALUES (27238, '孙晶莹', '女', '1983-12-23 12:48:34', '123', '副教授', 330412, 0);
INSERT INTO `teacher` VALUES (27239, '李春胜', '男', '1991-03-11 12:48:34', '123', '教授', 330404, 1);
INSERT INTO `teacher` VALUES (27240, '靳红龙', '女', '1982-11-19 12:48:34', '123', '副教授', 330420, 1);
INSERT INTO `teacher` VALUES (27241, '赵丽苹', '女', '1986-10-25 12:48:34', '123', '教授', 330416, 0);
INSERT INTO `teacher` VALUES (27242, '赵春凤', '女', '1989-09-20 12:48:34', '123', '讲师', 330413, 1);
INSERT INTO `teacher` VALUES (27243, '张飞', '男', '1989-04-12 12:48:34', '123', '副教授', 330411, 0);
INSERT INTO `teacher` VALUES (27244, '靳鑫平', '男', '1985-12-13 12:48:34', '123', '副教授', 330418, 1);
INSERT INTO `teacher` VALUES (27245, '连万军', '男', '1982-08-23 12:48:34', '123', '教授', 330411, 1);
INSERT INTO `teacher` VALUES (27246, '王志强', '男', '1982-04-22 12:48:34', '123', '教授', 330417, 1);
INSERT INTO `teacher` VALUES (27247, '张璐', '男', '1985-11-25 12:48:34', '123', '讲师', 330408, 1);
INSERT INTO `teacher` VALUES (27248, '靳思涵', '男', '1982-03-05 12:48:34', '123', '副教授', 330419, 0);
INSERT INTO `teacher` VALUES (27249, '王梦轩', '女', '1983-07-21 12:48:34', '123', '教授', 330418, 0);
INSERT INTO `teacher` VALUES (27250, '赵景红', '女', '1983-12-18 12:48:34', '123', '讲师', 330411, 1);
INSERT INTO `teacher` VALUES (27251, '赵振艳', '女', '1982-06-01 12:48:34', '123', '教授', 330409, 1);
INSERT INTO `teacher` VALUES (27252, '张敏', '女', '1982-05-26 12:48:34', '123', '讲师', 330407, 0);
INSERT INTO `teacher` VALUES (27253, '靳文超', '男', '1989-12-17 12:48:34', '123', '教授', 330414, 1);
INSERT INTO `teacher` VALUES (27254, '连贝贝', '女', '1983-12-10 12:48:34', '123', '教授', 330417, 0);
INSERT INTO `teacher` VALUES (27255, '连海东', '男', '1986-10-07 12:48:34', '123', '讲师', 330402, 1);
INSERT INTO `teacher` VALUES (27256, '王子超', '女', '1982-01-19 12:48:34', '123', '讲师', 330412, 0);
INSERT INTO `teacher` VALUES (27257, '靳宇', '男', '1989-06-27 12:48:34', '123', '副教授', 330414, 1);
INSERT INTO `teacher` VALUES (27258, '连福萍', '女', '1989-04-09 12:48:34', '123', '副教授', 330417, 1);
INSERT INTO `teacher` VALUES (27259, '孙明', '女', '1989-11-29 12:48:34', '123', '教授', 330403, 0);
INSERT INTO `teacher` VALUES (27260, '张苗苗', '女', '1987-09-08 12:48:34', '123', '教授', 330411, 1);
INSERT INTO `teacher` VALUES (27261, '连燕', '女', '1983-06-15 12:48:34', '123', '教授', 330416, 0);
INSERT INTO `teacher` VALUES (27262, '蒋瑞珺', '女', '1983-03-21 12:48:34', '123', '讲师', 330402, 0);
INSERT INTO `teacher` VALUES (27263, '王继旺', '男', '1985-11-03 12:48:34', '123', '讲师', 330415, 0);
INSERT INTO `teacher` VALUES (27264, '孙忍', '男', '1982-02-23 12:48:34', '123', '讲师', 330416, 1);
INSERT INTO `teacher` VALUES (27265, '王巧云', '女', '1987-03-12 12:48:34', '123', '讲师', 330401, 0);
INSERT INTO `teacher` VALUES (27266, '连郭云', '女', '1982-05-17 12:48:34', '123', '副教授', 330419, 0);
INSERT INTO `teacher` VALUES (27267, '沈玉霞', '女', '1991-04-22 12:48:34', '123', '教授', 330407, 1);
INSERT INTO `teacher` VALUES (27268, '连桂昌', '男', '1989-02-14 12:48:34', '123', '副教授', 330408, 0);
INSERT INTO `teacher` VALUES (27269, '侯永景', '男', '1989-09-02 12:48:34', '123', '讲师', 330406, 0);
INSERT INTO `teacher` VALUES (27270, '蒋豪', '男', '1987-01-17 12:48:34', '123', '讲师', 330417, 0);
INSERT INTO `teacher` VALUES (27271, '靳丽', '女', '1982-05-18 12:48:34', '123', '副教授', 330420, 1);
INSERT INTO `teacher` VALUES (27272, '张庆彦', '男', '1990-11-15 12:48:34', '123', '教授', 330410, 1);

SET FOREIGN_KEY_CHECKS = 1;
