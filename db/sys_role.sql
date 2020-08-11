/*
Navicat MySQL Data Transfer

Source Server         : docker
Source Server Version : 80020
Source Host           : 120.25.207.108:3306
Source Database       : sxb-base

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-08-11 21:41:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ADMIN', '管理员', '2017-05-01 13:25:39', '2019-06-04 02:25:13');
INSERT INTO `sys_role` VALUES ('2', 'USER', '普通用户', '2017-08-01 21:47:31', '2020-05-30 05:57:25');
INSERT INTO `sys_role` VALUES ('3', 'TEACHER', '', '2019-03-27 02:10:23', '2019-05-23 07:48:01');
INSERT INTO `sys_role` VALUES ('4', 'test', 'test', '2019-04-29 02:16:48', '2019-05-22 09:51:26');
INSERT INTO `sys_role` VALUES ('16', '88888', '8888', '2020-03-01 20:02:47', '2020-03-02 17:45:54');
INSERT INTO `sys_role` VALUES ('19', '测试角色', '测试', '2020-03-03 17:07:06', '2020-06-03 06:03:08');
