/*
Navicat MySQL Data Transfer

Source Server         : 95.169.17.226
Source Server Version : 50726
Source Host           : 95.169.17.226:3306
Source Database       : klrobot

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-09-02 23:13:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for action_guide
-- ----------------------------
DROP TABLE IF EXISTS `action_guide`;
CREATE TABLE `action_guide` (
  `id` int(11) NOT NULL,
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `question` text COMMENT '问题',
  `answer` text COMMENT '答案',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of action_guide
-- ----------------------------

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `nickname` varchar(16) DEFAULT NULL COMMENT '昵称',
  `date_of_birth` datetime DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(16) DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) DEFAULT NULL COMMENT '电子邮箱地址',
  `hobby` varchar(128) DEFAULT NULL COMMENT '爱好',
  `speciality` varchar(128) DEFAULT NULL COMMENT '专长',
  `precious` varchar(512) DEFAULT NULL COMMENT '珍贵记忆',
  `remark` varchar(256) DEFAULT NULL COMMENT ' 备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(128) NOT NULL COMMENT '相片地址',
  `title` varchar(64) NOT NULL COMMENT '标题',
  `desc` varchar(512) DEFAULT NULL COMMENT '描述',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(10,6) DEFAULT NULL COMMENT '纬度',
  `location` varchar(255) DEFAULT NULL COMMENT '位置：如北京-海淀，湖南-长沙等',
  `photo_time` datetime DEFAULT NULL COMMENT '拍照时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '该记录的创建时间',
  `author` varchar(32) DEFAULT NULL COMMENT '作者',
  `page_view` int(11) DEFAULT NULL COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for photo_album
-- ----------------------------
DROP TABLE IF EXISTS `photo_album`;
CREATE TABLE `photo_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL COMMENT '故事标题',
  `desc` varchar(1024) DEFAULT NULL COMMENT '故事描述',
  `photos` varchar(64) DEFAULT NULL COMMENT '相片Id集合，英文逗号分隔',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `author` varchar(32) DEFAULT NULL COMMENT '作者',
  `page_view` int(11) DEFAULT NULL COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo_album
-- ----------------------------

-- ----------------------------
-- Table structure for travel_tips
-- ----------------------------
DROP TABLE IF EXISTS `travel_tips`;
CREATE TABLE `travel_tips` (
  `id` int(11) NOT NULL,
  `scenic_spot` text COMMENT '景点介绍',
  `food` text COMMENT '美食介绍',
  `hotel` varchar(255) DEFAULT NULL COMMENT '住宿',
  `bus_route` varchar(255) DEFAULT NULL COMMENT '公交路线',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_tips
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
