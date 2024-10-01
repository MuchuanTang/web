/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : crowdfunding_db

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 01/10/2024 20:36:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `CATEGORYID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别标识',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'crisis relief');
INSERT INTO `category` VALUES ('2', 'medical');
INSERT INTO `category` VALUES ('3', 'ecological environment');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `FUNDRAISERID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '募捐者 ID (PK)',
  `ORGANIZER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织者',
  `CAPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `TARGET_FUNDING` int NULL DEFAULT NULL COMMENT '目标资金',
  `CURRENT_FUNDING` int NULL DEFAULT NULL COMMENT '当前资金',
  `CITY` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `ACTIVE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活跃状态',
  `CATEGORYID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别',
  `URL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES ('Westbrook', ' Red Cross', ' Providing emergency relief supplies and financial support to disaster areas.', 25000000, 18000000, 'ShenYang', 'Active', '1', './img/1.png');
INSERT INTO `fundraiser` VALUES ('Liam', ' Charity', ' Funding poor students to complete their education by providing scholarships and grants.', 1500000, 1000000, 'ChangChun', 'Active', '1', './img/2.png');
INSERT INTO `fundraiser` VALUES ('Tatum', ' Hospital', ' Donating medical equipment and drugs to improve medical conditions and enhance patient care quality.', 10000000, 8000000, 'ShenYang', 'Active', '2', './img/3.png');
INSERT INTO `fundraiser` VALUES ('William', ' Environmental Group', ' Supporting environmental protection projects such as tree planting, wildlife conservation, etc.', 5000000, 3700000, 'ChengDu', 'In stasis', '3', './img/4.png');
INSERT INTO `fundraiser` VALUES ('Oliver', ' Orphanage', ' Providing life care, education, and psychological counseling for orphans.', 12000000, 10000000, 'ShenYang', 'Active', '1', './img/5.png');
INSERT INTO `fundraiser` VALUES ('Sophia', ' Elderly Home', ' Offering life care, medical treatment, and recreational activities for solitary seniors.', 8000000, 5000000, 'ChangChun', 'Active', '1', './img/6.png');
INSERT INTO `fundraiser` VALUES ('James', ' Association for the Disabled ', ' Providing rehabilitation training, employment assistance, and social integration support for people with disabilities.', 10000000, 7000000, 'HeFei', 'In stasis', '1', './img/7.png');
INSERT INTO `fundraiser` VALUES ('Ava', ' Animal Protection', ' Assisting stray animals with fostering, adoption, and medical rescue services.', 3000000, 2000000, 'ShenYang', 'Active', '1', './img/8.png');

SET FOREIGN_KEY_CHECKS = 1;
