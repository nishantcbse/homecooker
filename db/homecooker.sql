/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : homecooker

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-06-02 22:18:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `app_language`
-- ----------------------------
DROP TABLE IF EXISTS `app_language`;
CREATE TABLE `app_language` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_language
-- ----------------------------

-- ----------------------------
-- Table structure for `app_user_details`
-- ----------------------------
DROP TABLE IF EXISTS `app_user_details`;
CREATE TABLE `app_user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `description_id` int(11) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `start_price` varchar(100) DEFAULT NULL,
  `end_price` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `flag` int(2) DEFAULT '0',
  `creataed` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_user_details
-- ----------------------------

-- ----------------------------
-- Table structure for `login_confirm`
-- ----------------------------
DROP TABLE IF EXISTS `login_confirm`;
CREATE TABLE `login_confirm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_confirm
-- ----------------------------

-- ----------------------------
-- Table structure for `login_integration`
-- ----------------------------
DROP TABLE IF EXISTS `login_integration`;
CREATE TABLE `login_integration` (
  `user_id` int(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `yahoo` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_integration
-- ----------------------------

-- ----------------------------
-- Table structure for `login_levels`
-- ----------------------------
DROP TABLE IF EXISTS `login_levels`;
CREATE TABLE `login_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(255) NOT NULL,
  `level_level` int(1) NOT NULL,
  `level_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `redirect` varchar(255) DEFAULT NULL,
  `welcome_email` tinyint(1) NOT NULL DEFAULT '0',
  `extend_logout` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `level_level` (`level_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_levels
-- ----------------------------

-- ----------------------------
-- Table structure for `login_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `login_profiles`;
CREATE TABLE `login_profiles` (
  `p_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pfield_id` int(255) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `profile_value` longtext,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for `login_profile_fields`
-- ----------------------------
DROP TABLE IF EXISTS `login_profile_fields`;
CREATE TABLE `login_profile_fields` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL,
  `type` varchar(25) NOT NULL,
  `label` varchar(255) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `signup` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_profile_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `login_settings`
-- ----------------------------
DROP TABLE IF EXISTS `login_settings`;
CREATE TABLE `login_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_settings
-- ----------------------------

-- ----------------------------
-- Table structure for `login_timestamps`
-- ----------------------------
DROP TABLE IF EXISTS `login_timestamps`;
CREATE TABLE `login_timestamps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_timestamps
-- ----------------------------

-- ----------------------------
-- Table structure for `login_users`
-- ----------------------------
DROP TABLE IF EXISTS `login_users`;
CREATE TABLE `login_users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_level` longtext NOT NULL,
  `restricted` int(1) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(128) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_users
-- ----------------------------

-- ----------------------------
-- Table structure for `settings_category`
-- ----------------------------
DROP TABLE IF EXISTS `settings_category`;
CREATE TABLE `settings_category` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `flag` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings_category
-- ----------------------------

-- ----------------------------
-- Table structure for `settings_users_type`
-- ----------------------------
DROP TABLE IF EXISTS `settings_users_type`;
CREATE TABLE `settings_users_type` (
  `id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `flag` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings_users_type
-- ----------------------------

-- ----------------------------
-- Table structure for `stickynotes`
-- ----------------------------
DROP TABLE IF EXISTS `stickynotes`;
CREATE TABLE `stickynotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stickynotes
-- ----------------------------
INSERT INTO stickynotes VALUES ('7', 'tesr', '2015-05-31 02:33:36');
INSERT INTO stickynotes VALUES ('8', null, '2015-05-31 02:33:38');
INSERT INTO stickynotes VALUES ('9', null, '2015-06-02 02:14:35');
INSERT INTO stickynotes VALUES ('6', null, '2015-05-31 02:33:37');
