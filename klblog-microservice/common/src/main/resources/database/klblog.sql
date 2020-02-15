/*
Navicat MySQL Data Transfer

Source Server         : 95.169.17.226
Source Server Version : 50726
Source Host           : 95.169.17.226:3306
Source Database       : klblog

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-09-02 23:11:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `keyword` varchar(512) DEFAULT NULL,
  `content` text NOT NULL COMMENT 'Html内容',
  `text` text COMMENT '文本内容',
  `category_id` varchar(16) NOT NULL,
  `author` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `page_view` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover` varchar(128) DEFAULT NULL COMMENT '封面图片地址',
  `name` varchar(128) DEFAULT NULL COMMENT '书名',
  `original_author` varchar(128) DEFAULT NULL COMMENT '原作者',
  `publisher` varchar(128) DEFAULT NULL COMMENT '出版社，出版商',
  `translator` varchar(64) DEFAULT NULL COMMENT '译者',
  `published_date` varchar(16) DEFAULT NULL COMMENT '出版年月',
  `pages` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL COMMENT '价格',
  `ISBN` varchar(32) DEFAULT NULL COMMENT '国际标准书号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------

-- ----------------------------
-- Table structure for book_note
-- ----------------------------
DROP TABLE IF EXISTS `book_note`;
CREATE TABLE `book_note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `keyword` varchar(512) DEFAULT NULL,
  `content` text NOT NULL COMMENT 'Html内容',
  `text` text COMMENT '文本内容',
  `category_id` varchar(16) NOT NULL,
  `author` varchar(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `page_view` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_note
-- ----------------------------

-- ----------------------------
-- Table structure for book_review
-- ----------------------------
DROP TABLE IF EXISTS `book_review`;
CREATE TABLE `book_review` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '书名',
  `title` varchar(128) DEFAULT NULL COMMENT '书名',
  `versions` varchar(128) DEFAULT NULL COMMENT '书籍的版本列表，英文逗号分隔',
  `review` text COMMENT '评论',
  `recommend` int(11) DEFAULT NULL COMMENT '推荐版本',
  `author` varchar(255) DEFAULT NULL COMMENT '该书评记录的作者',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_review
-- ----------------------------
INSERT INTO `book_review` VALUES ('0', 'reviewbook bookreview bookreview bookreview bookreview ', null, null, null, null, null, '2019-07-22 23:12:26');
INSERT INTO `book_review` VALUES ('1', '测试222222333', null, null, null, null, '2019-07-22 23:14:05', '2019-07-22 23:22:13');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(16) NOT NULL,
  `pid` varchar(8) DEFAULT '0' COMMENT '父级Id',
  `name` varchar(32) NOT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('01', '0', '书目概要', '', '三字经、读书指南（梁启超）', '1');
INSERT INTO `category` VALUES ('02', '0', '道家', '', '道德经、庄子、列子', '2');
INSERT INTO `category` VALUES ('03', '0', '儒家', '', '四书、宋明理学（四书章句集注/四书或问/近思录）、心学（传习录）', '3');
INSERT INTO `category` VALUES ('04', '0', '佛学', '', '', '4');
INSERT INTO `category` VALUES ('05', '0', '史学', '', '尚书、春秋、资治通鉴；史记、汉书；二十四史', '5');
INSERT INTO `category` VALUES ('06', '0', '技术科学', '', '工科：计算机', '6');
INSERT INTO `category` VALUES ('07', '0', '自然科学', '', '理科：理、化、生', '7');
INSERT INTO `category` VALUES ('08', '0', '社会科学', '', '经济学、金融、财务', '8');
INSERT INTO `category` VALUES ('09', '0', '数学', '', '', '9');
INSERT INTO `category` VALUES ('10', '0', '哲学', '', '', '10');

-- ----------------------------
-- Table structure for knowledge_base
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_base`;
CREATE TABLE `knowledge_base` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL COMMENT '词条标题',
  `content` text COMMENT '词条内容',
  `author` varchar(255) DEFAULT NULL,
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_base
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL COMMENT '头像',
  `password` varchar(64) NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', 'king', '陆金龙', null, '03cba5d825a27d5d60487b20744c9952', 'kinglong1984@126.com');
INSERT INTO `user` VALUES ('12', 'kinglong', 'Kinglong', null, '03cba5d825a27d5d60487b20744c9952', '471786328@qq.com');
