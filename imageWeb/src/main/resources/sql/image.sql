/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : imageweb

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-10-10 17:52:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `imageId` int(20) NOT NULL AUTO_INCREMENT,
  `userId` int(20) NOT NULL,
  `imageName` varchar(50) NOT NULL,
  PRIMARY KEY (`imageId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('11', '1', 'c7c609e0-e3c8-451a-b2c4-31a47088457e');
INSERT INTO `image` VALUES ('12', '1', '0f4a6b2e-726b-4abc-8f5c-7e128fcd6a14');
INSERT INTO `image` VALUES ('13', '1', '45332404-0f13-4c2a-bf95-ccce8306c197');
INSERT INTO `image` VALUES ('14', '1', '1951c919-b968-464a-8ec7-0bd1359db640');
INSERT INTO `image` VALUES ('15', '1', 'bcde61a3-8f48-4ec7-8c17-a74702d67648');
