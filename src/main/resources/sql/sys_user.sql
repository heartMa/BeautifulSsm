/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1Mysql
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : heartma

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-12-30 10:06:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `login_name` varchar(100) DEFAULT NULL COMMENT '登录名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  `qrcode` varchar(1000) DEFAULT NULL COMMENT '二维码',
  `sign` varchar(450) DEFAULT NULL COMMENT '个性签名',
  PRIMARY KEY (`id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('0af5c1aa9caf4701ad18b50d9818ad58', 'majinlin', '71d44acd12bcfe80a2009a0b1dd12e6e4627ea6d262c480f37d0429b', '009', 'majinlin', '4564541@qq.com', '15190250581', '15190250581', '3', '/userfiles/0af5c1aa9caf4701ad18b50d9818ad58/images/logo.jpg', '127.0.0.1', '2017-11-17 15:16:07', '1', '1', '2017-09-21 13:00:27', '1', '2017-11-17 11:59:12', '', '0', '/userfiles/0af5c1aa9caf4701ad18b50d9818ad58/qrcode/0af5c1aa9caf4701ad18b50d9818ad58.png', null);
INSERT INTO `sys_user` VALUES ('0fb8ebbff20a46029596806aa077d3c2', 'fbb', 'b079bd73139e94813a98e05bf48c42b86d0dcddd20ff9f10175255e4', '003', '范冰冰', '4564541@qq.com', '15190250581', '15190250581', '1', '/jeeplus/userfiles/0fb8ebbff20a46029596806aa077d3c2/images/u=1783243281,2583995645&fm=58.jpg', '0:0:0:0:0:0:0:1', '2016-08-14 18:11:18', '1', '1', '2016-02-24 23:25:41', '1', '2016-08-07 19:34:04', '', '0', '/jeeplus/userfiles/0fb8ebbff20a46029596806aa077d3c2/qrcode/0fb8ebbff20a46029596806aa077d3c2.png', null);
INSERT INTO `sys_user` VALUES ('1e8149b33e774daa9a250f5a1a0ad23f', 'dzq', '5c60992466f07456352c2ece2c8e4cd70139604eeba4bbe82edba743', '006', '邓紫棋', '4564541@qq.com', '15190250581', '15190250581', '', '/userfiles/1e8149b33e774daa9a250f5a1a0ad23f/images/common_47_icon.png', '127.0.0.1', '2017-11-28 11:36:30', '1', '1', '2016-02-24 23:27:47', '1', '2017-11-25 15:46:41', '', '0', '/userfiles/1e8149b33e774daa9a250f5a1a0ad23f/qrcode/1e8149b33e774daa9a250f5a1a0ad23f.png', null);
INSERT INTO `sys_user` VALUES ('7374fe91d19a4b739ae649334c0cc273', 'lxr', '3a59ab4eed33babf8913db9a141a95596b67eb13954997aca84e9db2', '004', '林心如', '4564541@qq.com', '15190250581', '15190250581', '', '/userfiles/0af5c1aa9caf4701ad18b50d9818ad58/images/photo/2017/09/58c89b2f00016d5f05400300-360-202.jpg', '127.0.0.1', '2017-09-21 13:35:15', '1', '1', '2016-02-24 23:26:20', '0af5c1aa9caf4701ad18b50d9818ad58', '2017-09-21 13:08:15', '', '0', '/userfiles/7374fe91d19a4b739ae649334c0cc273/qrcode/7374fe91d19a4b739ae649334c0cc273.png', null);
INSERT INTO `sys_user` VALUES ('f7cc1c7e6f494818adffe1de5f2282fb', 'zw', '15735f66bf98aae9b53a9ec634f6f30c924ca086257c4253cfe008b9', '002', '赵薇', '4564541@qq.com', '15190250581', '15190250581', '', '/userfiles/1/images/photo/2017/09/58c89b2f00016d5f05400300-360-202.jpg', '127.0.0.1', '2017-09-21 16:13:16', '1', '1', '2016-02-24 23:24:58', '1', '2017-09-21 12:47:03', '', '0', '/userfiles/f7cc1c7e6f494818adffe1de5f2282fb/qrcode/f7cc1c7e6f494818adffe1de5f2282fb.png', '我是赵薇555');
