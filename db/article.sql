/*
Navicat MySQL Data Transfer

Source Server         : docker
Source Server Version : 80020
Source Host           : 120.25.207.108:3306
Source Database       : blogdb

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-08-11 21:41:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '博文ID',
  `user_id` bigint NOT NULL COMMENT '发表用户ID',
  `tag_id` bigint DEFAULT NULL COMMENT '分类id',
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博文标题',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '摘要',
  `img` varchar(255) DEFAULT NULL COMMENT '博客封面图片地址',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博文内容',
  `views` bigint NOT NULL DEFAULT '0' COMMENT '浏览量',
  `comments` bigint NOT NULL DEFAULT '0' COMMENT '评论总数',
  `likes` bigint DEFAULT '0' COMMENT '点赞量',
  `status` tinyint(1) DEFAULT '1' COMMENT '博客状态 1：正常，-1：已删除',
  `is_carousel` tinyint(1) DEFAULT '-1' COMMENT '是否为轮播图 1：是  -1：不是',
  `is_recommend` tinyint(1) DEFAULT '-1' COMMENT '是否为推荐文章 1：是 -1 ：不是',
  `created` datetime DEFAULT NULL COMMENT '发表时间',
  `updated` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('2', '1', '1', 'jquery遍历方法nextUntil() 和 prevUntil()', 'jquery遍历方法 nextUntil() 和 prevUntil()', './static/article2.jpg', 'jquery遍历方法 nextUntil() 和 prevUntil()', '10', '20', '20', '1', '1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('3', '1', '2', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article3.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '1000', '20', '20', '1', '1', '1', '2020-07-31 16:30:39', '2020-07-31 17:47:35');
INSERT INTO `article` VALUES ('4', '1', '2', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article4.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10000', '20', '20', '1', '1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('5', '1', '2', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('6', '1', '3', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('7', '1', '3', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('8', '1', '4', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('9', '1', '5', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('10', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('11', '1', '6', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('12', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('13', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('14', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('15', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
INSERT INTO `article` VALUES ('16', '1', '1', 'ES6的十大特性', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', './static/article1.jpg', 'ES6（ECMAScript2015）的出现，无疑给前端开发人员带来了新的惊喜，它包含了一些很棒的新特性，可以更加方便的实现很多复杂的操作，提高开发人员的效率。实际上, 它是一种新的javascript规范', '10', '20', '20', '1', '-1', '-1', '2020-07-31 16:30:39', '2020-07-31 16:30:42');
