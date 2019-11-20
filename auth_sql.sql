/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : db_user_auth

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-09-11 23:34:31
*/


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_token
-- ----------------------------
DROP TABLE IF EXISTS `auth_token`;
CREATE TABLE `auth_token` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL COMMENT '用户id',
  `access_token` VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL,
  `access_expire` BIGINT(11) NOT NULL COMMENT 'access_token失效时间(ms)',
  `token_timestamp` BIGINT(20) NOT NULL COMMENT '生成access_token时的时间',
  `is_active` TINYINT(4) DEFAULT '1' COMMENT '是否有效',
  `create_time` DATETIME DEFAULT NULL COMMENT '创建时间',
  `update_time` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='访问认证授权的Token';

-- ----------------------------
-- Records of auth_token
-- ----------------------------
INSERT INTO `auth_token` VALUES ('42', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRnLLSm1MbJjC0I0f8AC5+MPka5yq6PTuUF2K4U8NDISEnb0uQXR4hGj+LEsc11YDPzkTvQcPWBx5IiPhYnZ4znLA==', '30000', '1568079751017', '0', '2019-09-10 09:42:31', NULL);
INSERT INTO `auth_token` VALUES ('43', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRnfkytjj4YDVdy6DxiC5/WXtYV0m0Vpni7mTUGuzwKHnOLjlKmHJKa87ZQhjc0ozdH8ywQQtv2HjRf36xtcW86dA==', '30000', '1568080545728', '0', '2019-09-10 09:55:46', NULL);
INSERT INTO `auth_token` VALUES ('44', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRnux7w/q0izHUoxbVZOr/f5mRDhPUibOpSziI0jmuRWOpRjtWQ3RtrykIM7nhyugD2B7aVLkwPnVSjOhjoJBXKJg==', '30000', '1568080822280', '0', '2019-09-10 10:00:22', '2019-09-10 10:00:54');
INSERT INTO `auth_token` VALUES ('45', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRn7EgwjQVn3eesQ3NGdlxLcLrxzbyseVW2eGT9VpEf77TWemQXLvHWWH6ri8M/GQOZN7k/QH75XCft/WUwCnO/Lw==', '60000', '1568080900731', '0', '2019-09-10 10:01:41', NULL);
INSERT INTO `auth_token` VALUES ('46', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRndjOo7h7yX34+qfx19etuxADtI9hkVnDsKVfT4VUGNEZEDBbjGuajGn+zggUVaoi1x1I85gP+JpudZ74g/xdtQw==', '60000', '1568080941214', '0', '2019-09-10 10:02:21', NULL);
INSERT INTO `auth_token` VALUES ('47', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRnk8R5kfr3PYN5qNm/EZ55+JOsv7amWLs2lg3p/EwvURytblakcFKY6iT3LHpwuoWuAvVkjC8KjHPpUNOMpvJWfQ==', '60000', '1568080981807', '0', '2019-09-10 10:03:02', NULL);
INSERT INTO `auth_token` VALUES ('48', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRnA00S3Nt7qabbb0C1Y6gQE8XnD6jI8Hqtha68X+PWitmSwGDfHRqgmGIXp/8U9k/D/Fg5ucD+bpCpWa0hIseKyQ==', '60000', '1568081156865', '0', '2019-09-10 10:05:57', NULL);
INSERT INTO `auth_token` VALUES ('49', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRnfZS3ytxc0EbdBFjp40DOHrWCZsiK+RFulJHZ6er8SkE6/U5hZJ2IabCUSmfbsPYXAOK5hcIlV94MU8QunS1psw==', '60000', '1568081204666', '0', '2019-09-10 10:06:45', NULL);
INSERT INTO `auth_token` VALUES ('50', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRnxxxhiZk1ncycjlzufVkCgogpvqqX5awtbht9K1lLialhqfEk4VMEBHcJcyAnnZKQfVG8nEU1AFTquQkpxK2mTw==', '60000', '1568082087364', '0', '2019-09-10 10:21:28', '2019-09-10 10:21:41');
INSERT INTO `auth_token` VALUES ('51', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRnHPfJdq4zbschk0wu2CmWFKn60elSJqncRD/BfMCB8ANENxoIF0Tb+bfRdo0uWrzSYQDdOnOaWUlrLIsI8A2vnA==', '60000', '1568082116242', '0', '2019-09-10 10:21:56', '2019-09-10 10:22:15');
INSERT INTO `auth_token` VALUES ('52', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRn9JJQyEyHGM96qfFyjKZKjUuOq1WwfX03JfSBycUa9lY2HUkTmy64QYR6rng7BKpB7CaOXD7xmdmbcMjIzdSlEA==', '60000', '1568082809250', '0', '2019-09-10 10:33:30', '2019-09-10 10:36:41');
INSERT INTO `auth_token` VALUES ('53', '1', 'BPeeirr2ty9NBke6ag5us3unZNrFg9TffsWWA372ukYbS/F0wy5NrQgO5mYb0LRnqBdU93+Vec+bzkHaEMwzJGz3jNEfH1TGqnHPTVN5lgkxUDl2unMsLWvodKoP+WSuP+mY1lSRNmYDu0VX4svoZw==', '60000', '1568083004208', '1', '2019-09-10 10:36:44', NULL);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) DEFAULT NULL COMMENT '用户id',
  `user_name` VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '用户名',
  `create_time` DATETIME DEFAULT NULL COMMENT '操作时间',
  `memo` VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '操作备注',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '1', 'debug', '2019-09-10 10:36:52', '新增用户');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '用户名',
  `password` VARCHAR(200) CHARACTER SET utf8mb4 NOT NULL COMMENT '密码',
  `phone` VARCHAR(50) NOT NULL COMMENT '手机号',
  `email` VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '邮箱',
  `is_active` TINYINT(11) DEFAULT '1' COMMENT '是否有效(1=是；0=否)',
  `create_time` DATETIME DEFAULT NULL COMMENT '创建时间',
  `update_time` TIMESTAMP NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_name` (`user_name`) USING BTREE
) ENGINE=INNODB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'debug', 'debug', '15627284601', '1948831260@qq.com', '1', NULL, '2019-09-11 22:18:29');
INSERT INTO `user` VALUES ('2', 'jack', '123456', '15627284602', '15627284602@126.com', '1', NULL, NULL);
INSERT INTO `user` VALUES ('3', 'linsen', 'linsen', '15627284603', '1948831260@qq.com', '1', '2019-08-30 14:42:47', NULL);
INSERT INTO `user` VALUES ('5', 'linsen2', 'linsen2', '15627284603', '1948831260@qq.com', '1', '2019-08-30 14:50:57', NULL);
INSERT INTO `user` VALUES ('8', 'steadyjack', '123456', '15627284603', '1948831260@qq.com', '1', '2019-09-10 10:36:52', NULL);
