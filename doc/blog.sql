/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-05-09 14:56:53
*/
DROP DATABASE IF EXISTS blog;
CREATE DATABASE blog DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
USE blog;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` varchar(32) NOT NULL,
  `article_name` varchar(128) NOT NULL,
  `caert_time` varchar(32) NOT NULL,
  `read_num` int(32) NOT NULL,
  `comment_num` int(32) NOT NULL,
  `category_id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `article_text` text,
  `article_head` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `category_name` varchar(128) DEFAULT NULL,
  `article_num` int(16) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_pass` varchar(64) NOT NULL,
  `creat_time` varchar(32) NOT NULL,
  `blog_name` varchar(128) NOT NULL,
  `friend_id` varchar(255) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `authentication` int(2) DEFAULT NULL,
  `head_img` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
