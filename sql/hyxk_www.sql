/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.0.50
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 192.168.0.50:3306
 Source Schema         : hyxk_www

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 28/04/2020 09:30:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule`  (
  `p_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v0` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/edit_password', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/edit_password_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'welcome', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/news/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/news/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/news/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/news/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/news/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/news/publish_on', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/news/publish_off', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/news/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/news/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/case/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/case/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/case/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/case/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/case/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/case/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/case/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/web_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/web_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/web_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/web_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/web_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/web_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/web_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/banner/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/banner/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/banner/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/banner/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/banner/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/banner/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/banner/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_custom/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_custom/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_custom/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_custom/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_custom/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_custom/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/app_custom/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/miniapp_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/miniapp_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/miniapp_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/miniapp_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/miniapp_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/miniapp_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/miniapp_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/about/index', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/about/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/about/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/team_style/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/team_style/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/team_style/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/team_style/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/team_style/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/team_style/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/team_style/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/message_board/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/message_board/read', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/message_board/info', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'webmanage/message_board/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/diable', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/enable', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/user/reset_password', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/role/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/role/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/role/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/role/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/role/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/role/allocate', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/role/allocate_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_2', 'admin/role/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'user_4', 'role_2', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/edit_password', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/edit_password_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'welcome', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/news/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/news/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/news/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/news/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/news/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/news/publish_on', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/news/publish_off', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/news/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/news/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/case/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/case/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/case/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/case/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/case/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/case/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/case/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/web_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/web_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/web_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/web_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/web_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/web_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/web_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/banner/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/banner/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/banner/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/banner/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/banner/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/banner/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/banner/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_custom/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_custom/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_custom/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_custom/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_custom/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_custom/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/app_custom/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/miniapp_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/miniapp_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/miniapp_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/miniapp_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/miniapp_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/miniapp_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/miniapp_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/about/index', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/about/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/about/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/team_style/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/team_style/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/team_style/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/team_style/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/team_style/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/team_style/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/team_style/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/message_board/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/message_board/read', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/message_board/info', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'webmanage/message_board/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/diable', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/enable', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/user/reset_password', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/role/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/role/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/role/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/role/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/role/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/role/allocate', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/role/allocate_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_4', 'admin/role/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'user_6', 'role_2', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/edit_password', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/edit_password_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'welcome', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/news/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/news/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/news/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/news/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/news/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/news/publish_on', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/news/publish_off', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/news/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/news/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/case/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/case/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/case/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/case/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/case/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/case/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/case/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/web_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/web_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/web_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/web_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/web_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/web_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/web_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/banner/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/banner/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/banner/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/banner/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/banner/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/banner/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/banner/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_custom/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_custom/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_custom/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_custom/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_custom/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_custom/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/app_custom/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/miniapp_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/miniapp_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/miniapp_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/miniapp_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/miniapp_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/miniapp_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/miniapp_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/about/index', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/about/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/about/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/team_style/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/team_style/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/team_style/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/team_style/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/team_style/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/team_style/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/team_style/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/message_board/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/message_board/read', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/message_board/info', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'webmanage/message_board/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/diable', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/enable', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/user/reset_password', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/role/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/role/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/role/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/role/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/role/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/role/allocate', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/role/allocate_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_6', 'admin/role/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'admin/user/edit_password', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'admin/user/edit_password_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'welcome', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/news/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/news/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/news/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/news/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/news/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/news/publish_on', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/news/publish_off', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/news/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/news/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/case/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/case/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/case/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/case/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/case/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/case/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/case/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/web_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/web_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/web_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/web_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/web_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/web_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/web_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/banner/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/banner/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/banner/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/banner/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/banner/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/banner/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/banner/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_custom/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_custom/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_custom/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_custom/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_custom/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_custom/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/app_custom/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/miniapp_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/miniapp_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/miniapp_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/miniapp_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/miniapp_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/miniapp_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/miniapp_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/about/index', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/about/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/about/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/team_style/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/team_style/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/team_style/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/team_style/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/team_style/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/team_style/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/team_style/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/message_board/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/message_board/read', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/message_board/info', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'role_3', 'webmanage/message_board/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'user_5', 'role_3', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'admin/user/edit_password', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'admin/user/edit_password_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'welcome', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/news/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/news/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/news/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/news/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/news/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/news/publish_on', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/news/publish_off', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/news/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/news/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/case/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/case/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/case/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/case/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/case/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/case/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/case/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/web_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/web_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/web_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/web_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/web_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/web_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/web_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/banner/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/banner/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/banner/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/banner/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/banner/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/banner/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/banner/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_business/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_business/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_business/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_business/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_business/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_business/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_business/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_custom/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_custom/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_custom/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_custom/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_custom/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_custom/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/app_custom/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/miniapp_category/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/miniapp_category/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/miniapp_category/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/miniapp_category/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/miniapp_category/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/miniapp_category/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/miniapp_category/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/about/index', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/about/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/about/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/team_style/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/team_style/add', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/team_style/add_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/team_style/edit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/team_style/edit_submit', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/team_style/drag_sort', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/team_style/delete', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/message_board/list', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/message_board/read', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/message_board/info', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'user_5', 'webmanage/message_board/delete', '', '', '', '');

-- ----------------------------
-- Table structure for hyxk_about
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_about`;
CREATE TABLE `hyxk_about`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图标',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公司业务范围' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_about
-- ----------------------------
INSERT INTO `hyxk_about` VALUES (1, '华莺', 'upload/images/2020-04-22/j9Rgs67RdmPzIxUyU.jpeg', '<p>产品理念不是通过市场分析来开发相应的产品和品种，而是以提高质量、降低成本为中心的一切活动，其指导思想是“以销售为中心”，产品概念不仅关注产品的数量，而且关注产品的质量。\n\n以生产为中心，不重视市场需求，不重视产品销售，是生产观念的后期表达。\n\n这也是早期的企业管理概念，产品理念认为，消费者最喜欢高质量、多功能、特殊的产品，企业应致力于生产高价值的产品并不断改进。\n\n它产生于市场产品供不应求的“卖方市场”，培养生产观念最容易的地方是公司发明新产品的时候。\n此时，企业最容易出现“营销近视症”，即不适当地把重点放在产品上，而不是放在市场需求上，往往导致产品单一、款式陈旧、缺乏包装和宣传、营销管理缺乏远见，看到自己的产品，虽然产品质量很好，质量好看不到市场需求的变化，导致经营困难</p>', 1587550011, 1587956509, NULL);

-- ----------------------------
-- Table structure for hyxk_app_business
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_app_business`;
CREATE TABLE `hyxk_app_business`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详情',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'App专注业务范围' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_app_business
-- ----------------------------
INSERT INTO `hyxk_app_business` VALUES (1, 'APP开发', 'upload/images/2020-04-23/5v5Vd3IExzQc9oA8J.jpeg', '<p>微商城介绍：但是福利哟粉底后 利润空间管理机构；卢浮宫进。</p>', 1587608463821845500, 1587608463, 1587974131, NULL);
INSERT INTO `hyxk_app_business` VALUES (2, '软件开发', 'upload/images/2020-04-23/c1WFdDwjdjptYh0Q4.jpeg', '微商城介绍：但是福利哟粉底后 利润空间管理机构；卢浮宫进。 拷贝', 1587608550912587900, 1587608550, 1587951159, NULL);

-- ----------------------------
-- Table structure for hyxk_app_custom
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_app_custom`;
CREATE TABLE `hyxk_app_custom`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详情',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'App定制开发服务领域' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_app_custom
-- ----------------------------
INSERT INTO `hyxk_app_custom` VALUES (1, '互联网解决方案', 'upload/images/2020-04-23/xGPXrfqNOd9FWJIGI.jpg', 'adfaf12', 1587627739678012000, 1587609207, 1587951173, NULL);
INSERT INTO `hyxk_app_custom` VALUES (2, '教育解决方案', 'upload/images/2020-04-23/IPL07OUdMwfSYd5Vu.jpeg', '<p>afdaf</p><p>123</p>', 1587627739678022000, 1587627739, 1587959471, NULL);

-- ----------------------------
-- Table structure for hyxk_banner
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_banner`;
CREATE TABLE `hyxk_banner`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'banner图片',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'banner跳转地址',
  `banner_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1首页轮播',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(255) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_banner
-- ----------------------------
INSERT INTO `hyxk_banner` VALUES (26, 'upload/images/2020-04-24/UjuFz7DaaSwtYW6A2.jpeg', '', 0, 1587710511468266600, 1587697937, 1587979025, NULL);
INSERT INTO `hyxk_banner` VALUES (27, 'upload/images/2020-04-24/NpI750BYaUvw0bV8B.jpeg', '', 1, 1587697937493419400, 1587697947, 1587697947, NULL);
INSERT INTO `hyxk_banner` VALUES (28, 'upload/images/2020-04-24/992VLrR2eccGerzOx.gif', '', 1, 1587697947298688300, 1587710511, 1587710511, NULL);

-- ----------------------------
-- Table structure for hyxk_business
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_business`;
CREATE TABLE `hyxk_business`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详情',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公司业务范围(能做什么)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_business
-- ----------------------------
INSERT INTO `hyxk_business` VALUES (1, '网站开发', 'upload/images/2020-04-23/RVFZWUZby2eIPHfGv.jpg', '<p>产品是“一组将输入转化为输出的相互关联或相互作用的活动”的结果，即“过程”的结果。在经济领域中，通常也可理解为组织制造的任何制品或制品的组合。在现代汉语词典当中的解释为“生产出来的物品”。</p><p>12</p>', 1587626326594840100, 1587611346, 1587960260, NULL);
INSERT INTO `hyxk_business` VALUES (2, '网站开发', 'upload/images/2020-04-23/VPHzRqKD6nnYAaChW.jpeg', '产品是“一组将输入转化为输出的相互关联或相互作用的活动”的结果，即“过程”的结果。在经济领域中，通常也可理解为组织制造的任何制品或制品的组合。在现代汉语词典当中的解释为“生产出来的物品”。在现代汉语词典当中的解释为“生产出来的物品”。', 1587626326594841100, 1587626326, 1587950402, NULL);

-- ----------------------------
-- Table structure for hyxk_case
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_case`;
CREATE TABLE `hyxk_case`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `case_type` tinyint(2) UNSIGNED NOT NULL COMMENT '案例类型（1网站案例，2App案例，3小程序案例，4H5案例，5动画案例）',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '案例名称',
  `category` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '案例行业',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '案例介绍',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '案例图片(多张逗号隔开)',
  `mv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '案例视频',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '案例管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_case
-- ----------------------------
INSERT INTO `hyxk_case` VALUES (1, 1, '亡下七武海', '', '<p>智慧零售，解放老板，轻松做生意\n赋能导购，让每一位销售人员都成为超级卖手\n线上商城与线下零售打通，迅速拓客拉新，节约运营成本</p><p>2</p>', 'upload/images/2020-04-23/8h54mg309aOqN2fky.jpeg', '', 1587546068344901700, 1587613197, 1587960118, NULL);
INSERT INTO `hyxk_case` VALUES (2, 3, '时间管理', '基地', '智慧零售，解放老板，轻松做生意\n赋能导购，让每一位销售人员都成为超级卖手\n线上商城与线下零售打通，迅速拓客拉新，节约运营成本促进交易变现', 'upload/images/2020-04-23/ASVluE6JmaMTZm0XA.jpg', '', 1587546068344902700, 1587626689, 1587950624, NULL);
INSERT INTO `hyxk_case` VALUES (3, 5, 'xxxx公司', '', '描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述', 'upload/images/2020-04-24/gGhDRw2pnMoxZAFXD.jpg', '', 1587721980948385200, 1587721980, 1587722225, 1587723081);
INSERT INTO `hyxk_case` VALUES (4, 5, 'xxxx123公司', '', '大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒大飒飒打撒', 'upload/images/2020-04-24/SQAq6aJPkn7498jcW.gif', '', 1587722390321389900, 1587722390, 1587722390, 1587723071);
INSERT INTO `hyxk_case` VALUES (5, 5, 'xxxx1111公司', '', '大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒大撒', 'upload/images/2020-04-24/CCLCvc9N8u1o85O6U.png', 'upload/videos/2020-04-24/VWTHtFtoutG8QDNQd.mp4', 1587722588804655100, 1587722588, 1587722588, NULL);
INSERT INTO `hyxk_case` VALUES (6, 5, 'xx嗄吖阿x公司', '', '的萨达萨达萨达萨达的的萨达萨达萨达萨达的的萨达萨达萨达萨达的的萨达萨达萨达萨达的的萨达萨达萨达萨达的的萨达萨达萨达萨达的的萨达萨达萨达萨达的的萨达萨达萨达萨达的', 'upload/images/2020-04-24/YxAenThdNaXe4USGQ.jpg', 'upload/videos/2020-04-24/PHbtL3UDeYNtVzxra.mp4', 1587723131910042100, 1587723131, 1587723131, NULL);
INSERT INTO `hyxk_case` VALUES (7, 2, '多人运动', '汽车', '智慧零售，解放老板，轻松做生意\n赋能导购，让每一位销售人员都成为超级卖手\n线上商城与线下零售打通，迅速拓客拉新，节约运营成本促进交易变现', 'upload/images/2020-04-24/zvKMlM95eWGCap83F.gif', '', 1587723391501019400, 1587723391, 1587950574, NULL);
INSERT INTO `hyxk_case` VALUES (8, 4, 'xxxx公司', '', '打算大苏打萨达萨达萨达萨达撒旦撒旦撒旦打算大苏打萨达萨达萨达萨达撒旦撒旦撒旦打算大苏打萨达萨达萨达萨达撒旦撒旦撒旦打算大苏打萨达萨达萨达萨达撒旦撒旦撒旦打算大苏打萨达萨达萨达萨达撒旦撒旦撒旦打算大苏打萨达萨达萨达萨达撒旦撒旦撒旦', 'upload/images/2020-04-24/1sEy1EzQ92JusEsR0.jpg', '', 1587723472876944600, 1587723472, 1587723472, NULL);

-- ----------------------------
-- Table structure for hyxk_message_board
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_message_board`;
CREATE TABLE `hyxk_message_board`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公司名称',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系电话',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  `state` int(1) NOT NULL DEFAULT 1 COMMENT '状态：1、未读，2、已读',
  `reading_at` int(10) NULL DEFAULT NULL COMMENT '已读时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '留言板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_message_board
-- ----------------------------
INSERT INTO `hyxk_message_board` VALUES (2, '劝学', '荀子', '君子曰：学不可以已。  青，取之于蓝，而青于蓝；冰，水为之，而寒于水。木直中绳，輮以为轮，其曲中规。虽有槁暴，不复挺者，輮使之然也。故木受绳则直，金就砺则利，君子博学而日参省乎己，则知明而行无过矣。  故不登高山，不知天之高也；不临深溪，不知地之厚也；不闻先王之遗言，不知学问之大也。干、越、夷、貉之子，生而同声，长而异俗，教使之然也。诗曰：“嗟尔君子，无恒安息。靖共尔位，好是正直。神之听之，介尔景福。”神莫大于化道，福莫长于无祸。（此段教材无）  吾尝终日而思矣，不如须臾之所学也；吾尝跂而望矣，不如登高之博见也。登高而招，臂非加长也，而见者远；顺风而呼，声非加疾也，而闻者彰。假舆马者，非利足也，而致千里；假舟楫者，非能水也，而绝江河。君子生非异也，善假于物也。  南方有鸟焉，名曰蒙鸠，以羽为巢，而编之以发，系之苇苕，风至苕折，卵破子死。巢非不完也，所系者然也。西方有木焉，名曰射干，茎长四寸，生于高山之上，而临百仞之渊，木茎非能长也，所立者然也。蓬生麻中，不扶而直；白沙在涅，与之俱黑。兰槐之根是为芷，其渐之滫，君子不近，庶人不服。其质非不美也，所渐者然也。故君子居必择乡，游必就士，所以防邪辟而近中正也。  物类之起，必有所始。荣辱之来，必象其德。肉腐出虫，鱼枯生蠹。怠慢忘身，祸灾乃作。强自取柱，柔自取束。邪秽在身，怨之所构。施薪若一，火就燥也，平地若一，水就湿也。草木畴生，禽兽群焉，物各从其类也。是故质的张，而弓矢至焉；林木茂，而斧斤至焉；树成荫，而众鸟息焉。醯酸，而蚋聚焉。故言有招祸也，行有招辱也，君子慎其所立乎！（此段教材无）  积土成山，风雨兴焉；积水成渊，蛟龙生焉；积善成德，而神明自得，圣心备焉。故不积跬步，无以至千里；不积小流，无以成江海。骐骥一跃，不能十步；驽马十驾，功在不舍。锲而舍之，朽木不折；锲而不舍，金石可镂。蚓无爪牙之利，筋骨之强，上食埃土，下饮黄泉，用心一也。蟹六跪而二螯，非蛇鳝之穴无可寄托者，用心躁也。  是故无冥冥之志者，无昭昭之明；无惛惛之事者，无赫赫之功。行衢道者不至，事两君者不容。目不能两视而明，耳不能两听而聪。螣蛇无足而飞，鼫鼠五技而穷。《诗》曰：“尸鸠在桑，其子七兮。淑人君子，其仪一兮。其仪一兮，心如结兮！”故君子结于一也。  昔者瓠巴鼓瑟，而流鱼出听；伯牙鼓琴，而六马仰秣。故声无小而不闻，行无隐而不形。玉在山而草润，渊生珠而崖不枯。为善不积邪？安有不闻者乎？  学恶乎始？恶乎终？曰：其数则始乎诵经，终乎读礼；其义则始乎为士，终乎为圣人，真积力久则入，学至乎没而后止也。故学数有终，若其义则不可须臾舍也。为之，人也；舍 之，禽兽也。故书者，政事之纪也；诗者，中声之所止也；礼者，法之大分，类之纲纪也。故学至乎礼而止矣。夫是之谓道德之极。礼之敬文也，乐之中和也，诗书之博也，春秋之微 也，在天地之间者毕矣。君子之学也，入乎耳，着乎心，布乎四体，形乎动静。端而言，蝡而动，一可以为法则。小人之学也，入乎耳，出乎口；口耳之间，则四寸耳，曷足以美七尺之躯哉！古之学者为己，今之学者为人。君子之学也，以美其身；小人之学也，以为禽犊。故不问而告谓之傲，问一而告二谓之囋。傲、非也，囋、非也；君子如向矣。  学莫便乎近其人。礼乐法而不说，诗书故而不切，春秋约而不速。方其人之习君子之说，则尊以遍矣，周于世矣。故曰：学莫便乎近其人。  学之经莫速乎好其人，隆礼次之。上不能好其人，下不能隆礼，安特将学杂识志，顺诗书而已耳。则末世穷年，不免为陋儒而已。将原先王，本仁义，则礼正其经纬蹊径也。若挈裘领，诎五指而顿之，顺者不可胜数也。不道礼宪，以诗书为之，譬之犹以指测河也，以戈舂黍也，以锥餐壶也，不可以得之矣。故隆礼，虽未明，法士也；不隆礼，虽察辩，散儒也。  问楛者，勿告也；告楛者，勿问也；说楛者，勿听也。有争气者，勿与辩也。故必由其道至，然后接之；非其道则避之。故礼恭，而后可与言道之方；辞顺，而后可与言道之理；色从而后可与言道之致。故未可与言而言，谓之傲；可与言而不言，谓之隐；不观气色而言，谓瞽。故君子不傲、不隐、不瞽，谨顺其身。诗曰：“匪交匪舒，天子所予。”此之谓也。  百发失一，不足谓善射；千里蹞步不至，不足谓善御；伦类不通，仁义不一，不足谓善学。学也者，固学一之也。一出焉，一入焉，涂巷之人也；其善者少，不善者多，桀纣盗跖也；全之尽之，然后学者也。  君子知夫不全不粹之不足以为美也，故诵数以贯之，思索以通之，为其人以处之，除其害者以持养之。使目非是无欲见也，使耳非是无欲闻也，使口非是无欲言也，使心非是无欲虑也。及至其致好之也，目好之五色，耳好之五声，口好之五味，心利之有天下。是故权利不能倾也，群众不能移也，天下不能荡也。生乎由是，死乎由是，夫是之谓德操。德操然后能定，能定然后能应。能定能应，夫是之谓成人。天见其明，地见其光，君子贵其全也。', 1587714045, 1587953246, NULL, 2, 1587953246);
INSERT INTO `hyxk_message_board` VALUES (3, '戴老板', '13576966022', '好帅好帅', 1587714843, 1587714843, NULL, 1, NULL);
INSERT INTO `hyxk_message_board` VALUES (4, '戴老板', '12345678912', '留言内容', 1587714926, 1587953255, NULL, 2, 1587953255);
INSERT INTO `hyxk_message_board` VALUES (5, '1', '12111111111', '1', 1587717069, 1587717069, NULL, 1, NULL);
INSERT INTO `hyxk_message_board` VALUES (6, '1122', '13245678412', '123456789', 1587717286, 1587717286, 1587954882, 1, NULL);
INSERT INTO `hyxk_message_board` VALUES (7, '12121', '12121', '212', 1587951196, 1587973315, NULL, 2, 1587973315);

-- ----------------------------
-- Table structure for hyxk_miniapp_category
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_miniapp_category`;
CREATE TABLE `hyxk_miniapp_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图标',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类描述',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小程序行业分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_miniapp_category
-- ----------------------------
INSERT INTO `hyxk_miniapp_category` VALUES (1, '餐馆', 'upload/images/2020-04-23/S4HsUHUQjtnyOJM0K.jpeg', '<p>免代码，3分钟搞定</p>', 1587628674847030600, 1587611189, 1587959271, NULL);
INSERT INTO `hyxk_miniapp_category` VALUES (2, '饭店', 'upload/images/2020-04-23/ufHjwBJsB5iIvemQA.jpg', '<p>免代码，3分钟搞定免代码，3分钟搞定免代码，3分钟搞定免代码，3分钟搞定免代码，3分钟搞定免代码，3分钟搞定</p><p>123</p>', 1587628674847033600, 1587628674, 1587959232, NULL);

-- ----------------------------
-- Table structure for hyxk_news
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_news`;
CREATE TABLE `hyxk_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '资讯标题',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '资讯图标',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '资讯内容',
  `state` tinyint(1) UNSIGNED NOT NULL COMMENT '状态(0未发布，1已发布)',
  `publish_at` int(10) UNSIGNED NOT NULL COMMENT '发布时间',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '行业资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_news
-- ----------------------------
INSERT INTO `hyxk_news` VALUES (1, '121', 'upload/images/2020-04-22/vcq4IXyLwK62j5rrv.jpg', '行业资讯：oID是几个回复可卡话题客户覆盖哦豁狗肉火锅烤肉火锅就会更好人格人格厄尔换个人过而爷爷 集合开会给客户开会恐慌感恐慌感客户给客户高科技化的高科技化给客户恐慌感客户观看好 分类看见你发了空间了空间感了空间感了空间感了就过了空间了。个人幼儿园太阳如图如让他如图 如如。\n行业资讯：oID是几个回复可卡话题客户覆盖哦豁狗肉火锅烤肉火锅就会更好人格人格厄尔换个人过而爷爷 集合开会给客户开会恐慌感恐慌感客户给客户高科技化的高科技化给客户恐慌感客户观看好 分类看见你发了空间了空间感了空间感了空间感了就过了空间了。个人幼儿园太阳如图如让他如图 如如。\n行业资讯：oID是几个回复可卡话题客户覆盖哦豁狗肉火锅烤肉火锅就会更好人格人格厄尔换个人过而爷爷 集合开会给客户开会恐慌感恐慌感客户给客户高科技化的高科技化给客户恐慌感客户观看好 分类看见你发了空间了空间感了空间感了空间感了就过了空间了。个人幼儿园太阳如图如让他如图 如如。', 1, 1587980035, 1587544388128484600, 1587544388, 1587980035, NULL);
INSERT INTO `hyxk_news` VALUES (2, 'dasafd', 'upload/images/2020-04-22/VWC6SeKq4mdDzUWkz.jpeg', '<p>行业资讯：oID是几个回复可卡话题客户覆盖哦豁狗肉火锅烤肉火锅就会更好人格人格厄尔换个人过而爷爷 集合开会给客户开会恐慌感恐慌感客户给客户高科技化的高科技化给客户恐慌感客户观看好 分类看见你发了空间了空间感了空间感了空间感了就过了空间了。个人幼儿园太阳如图如让他如图 如如。</p><p>123</p><p>行业资讯：oID是几个回复可卡话题客户覆盖哦豁狗肉火锅烤肉火锅就会更好人格人格厄尔换个人过而爷爷 集合开会给客户开会恐慌感恐慌感客户给客户高科技化的高科技化给客户恐慌感客户观看好 分类看见你发了空间了空间感了空间感了空间感了就过了空间了。个人幼儿园太阳如图如让他如图 如如</p><p>行业资讯：oID是几个回复可卡话题客户覆盖哦豁狗肉火锅烤肉火锅就会更好人格人格厄尔换个人过而爷爷 集合开会给客户开会恐慌感恐慌感客户给客户高科技化的高科技化给客户恐慌感客户观看好 分类看见你发了空间了空间感了空间感了空间感了就过了空间了。个人幼儿园太阳如图如让他如图 如如</p>', 1, 1587718286, 1587546068344902700, 1587546068, 1587982583, NULL);

-- ----------------------------
-- Table structure for hyxk_team_style
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_team_style`;
CREATE TABLE `hyxk_team_style`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '介绍',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片展示',
  `mv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频展示',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '团队风采' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_team_style
-- ----------------------------
INSERT INTO `hyxk_team_style` VALUES (1, 'adfafaf', 'upload/images/2020-04-23/ogj1H66RiHv2kSJQO.jpeg', '', 1587629305771245900, 1587606127, 1587606127, NULL);
INSERT INTO `hyxk_team_style` VALUES (2, '行业资讯：oID是几个回复可卡话题客户覆盖哦豁', 'upload/images/2020-04-23/cKOZhxnS8dvCBytK5.jpg', '', 1587437567798386000, 1587629305, 1587951512, NULL);
INSERT INTO `hyxk_team_style` VALUES (3, '的撒都撒达撒旦撒打死撒达撒达撒达撒达撒达撒达出现在曹张新村修自行车自行车行政村分的高分的风格', 'upload/images/2020-04-24/a4fhfqejL2DW97YcO.jpg', '', 1587723530792819200, 1587723530, 1587950674, NULL);
INSERT INTO `hyxk_team_style` VALUES (4, '<p>多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和123</p><p>12</p><p>12</p><p>12</p><p>1212</p><p>多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和123</p><p>多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和123</p><p>多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和123</p><p style=\"white-space: normal;\">多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和123</p><p style=\"white-space: normal;\">多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和123</p><p style=\"white-space: normal;\">多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和多数国民公会海关监管和123</p><p><br/></p>', 'upload/images/2020-04-24/j83Cm6xH5bguI69fU.jpg', '', 1587723546804067300, 1587723546, 1587958706, NULL);

-- ----------------------------
-- Table structure for hyxk_web_category
-- ----------------------------
DROP TABLE IF EXISTS `hyxk_web_category`;
CREATE TABLE `hyxk_web_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图标',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型描述',
  `technology` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '使用技术',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '网站开发类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hyxk_web_category
-- ----------------------------
INSERT INTO `hyxk_web_category` VALUES (1, '营销型网站', 'upload/images/2020-04-23/YKCn2WVApGGMLAdre.jpeg', '<p>品牌型网站：饿了好了然后官方代理刚回家聊天打开就回家了空间发儿 热狗高科技低空掠过家里居然睡个懒觉了解德国；结果到了苦尽甘来空 的，酒红色的口红都是两回事老客户都是鼓励跨境电商管理会计的离开 副科级货到付款回复连咖啡都是老客户积分老客户积分了空间发离开家 算了空间发的了空间的分了解是对方了解多少离开世界的理解哇哦 i 人， 离开是老客户都是鼓励看老客户收到了好离开那个看了疯狂疯狂疯狂哥 了空间的分了空间的分了空间的个 v 了空间管理机构收到了距离吉林省 了空间的了空间的卢浮宫距离苦尽甘来时间 离开世界更了解多少，是的 第三个人过哥个。</p><p>1</p>', 'golang,javaa', 1587627273196217700, 1587604594, 1587959793, NULL);
INSERT INTO `hyxk_web_category` VALUES (2, '品牌型网站', 'upload/images/2020-04-23/zzODgktSOq2j5x5HL.jpg', '品牌型网站：饿了好了然后官方代理刚回家聊天打开就回家了空间发儿 热狗高科技低空掠过家里居然睡个懒觉了解德国；结果到了苦尽甘来空', 'golang,javaa112121', 1587437567798386000, 1587627273, 1587951232, NULL);

-- ----------------------------
-- Table structure for sys_action
-- ----------------------------
DROP TABLE IF EXISTS `sys_action`;
CREATE TABLE `sys_action`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT '父级id',
  `action_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单/权限名称',
  `action_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单/权限编码',
  `action_type` tinyint(1) UNSIGNED NOT NULL COMMENT '类型(1菜单，2权限)',
  `level` tinyint(1) UNSIGNED NOT NULL COMMENT '层级数',
  `sort_order` bigint(20) UNSIGNED NOT NULL COMMENT '排序号',
  `is_show` tinyint(1) UNSIGNED NOT NULL COMMENT '是否左侧菜单显示',
  `icon` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单图标',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_action
-- ----------------------------
INSERT INTO `sys_action` VALUES (1, 0, '系统设置', 'system', 1, 1, 1587975671515873500, 1, '&#xe62e;', 1587372608, 1587442019, NULL);
INSERT INTO `sys_action` VALUES (2, 1, '菜单设置', 'system/menu/list', 1, 2, 1587373244107, 1, ' ', 1587373283, 1587464762, NULL);
INSERT INTO `sys_action` VALUES (3, 1, '权限设置', 'system/action/list', 1, 2, 1587376652592921700, 1, '', 1587376887, 1587431095, NULL);
INSERT INTO `sys_action` VALUES (4, 5, '用户列表', 'admin/user/list', 1, 2, 1587376991030527800, 1, '', 1587376991, 1587436586, NULL);
INSERT INTO `sys_action` VALUES (5, 0, '后台用户', 'admin', 1, 1, 1587518124804877200, 1, '&#xe62c;', 1587432922, 1587690256, NULL);
INSERT INTO `sys_action` VALUES (6, 4, '查看列表', 'admin/user/list', 2, 3, 1587433678441928600, 0, '', 1587433678, 1587463955, NULL);
INSERT INTO `sys_action` VALUES (7, 4, '添加', 'admin/user/add,admin/user/add_submit', 2, 3, 1587436383382433400, 0, '', 1587436383, 1587719487, NULL);
INSERT INTO `sys_action` VALUES (8, 4, '编辑', 'admin/user/edit,admin/user/edit_submit', 2, 3, 1587436442866889600, 0, '', 1587436442, 1587719929, NULL);
INSERT INTO `sys_action` VALUES (9, 5, '角色列表', 'admin/role/list', 1, 2, 1587437567798386000, 1, '', 1587437567, 1587437567, NULL);
INSERT INTO `sys_action` VALUES (10, 0, '网站管理', 'webmanage', 1, 1, 1587432922692104100, 1, '&#xe63c;', 1587518124, 1587518124, NULL);
INSERT INTO `sys_action` VALUES (11, 10, '行业资讯', 'webmanage/news/list', 1, 2, 1587518165840979700, 1, '', 1587518165, 1587518165, NULL);
INSERT INTO `sys_action` VALUES (12, 10, '关于华莺', 'webmanage/about/index', 1, 2, 1587522916128532700, 1, '', 1587518195, 1587548321, NULL);
INSERT INTO `sys_action` VALUES (13, 10, '案例管理', 'webmanage/case/list', 1, 2, 1587518352413277000, 1, '', 1587518352, 1587518352, NULL);
INSERT INTO `sys_action` VALUES (14, 10, '团队风采', 'webmanage/team_style/list', 1, 2, 1587637715050495600, 1, '', 1587520483, 1587520483, NULL);
INSERT INTO `sys_action` VALUES (15, 10, '网站类型', 'webmanage/web_category/list', 1, 2, 1587520483411105700, 1, '', 1587520992, 1587524149, NULL);
INSERT INTO `sys_action` VALUES (16, 10, 'App专注业务', 'webmanage/app_business/list', 1, 2, 1587521046354751400, 1, '', 1587521046, 1587522944, NULL);
INSERT INTO `sys_action` VALUES (17, 10, 'App定制开发', 'webmanage/app_custom/list', 1, 2, 1587521270992955900, 1, '', 1587521270, 1587522874, NULL);
INSERT INTO `sys_action` VALUES (18, 10, '小程序行业分类', 'webmanage/miniapp_category/list', 1, 2, 1587521881640368500, 1, '', 1587521881, 1587524329, NULL);
INSERT INTO `sys_action` VALUES (19, 10, '业务范围', 'webmanage/business/list', 1, 2, 1587518195912452900, 1, '', 1587522916, 1587522916, NULL);
INSERT INTO `sys_action` VALUES (20, 10, '轮播图', 'webmanage/banner/list', 1, 2, 1587520992024640300, 1, '', 1587637715, 1587637715, NULL);
INSERT INTO `sys_action` VALUES (21, 4, '停用', 'admin/user/diable', 2, 3, 1587709902469368500, 0, '', 1587709902, 1587709902, NULL);
INSERT INTO `sys_action` VALUES (22, 4, '启用', 'admin/user/enable', 2, 3, 1587709928862048600, 0, '', 1587709928, 1587709928, NULL);
INSERT INTO `sys_action` VALUES (23, 4, '删除', 'admin/user/delete', 2, 3, 1587709955982022000, 0, '', 1587709955, 1587709955, NULL);
INSERT INTO `sys_action` VALUES (24, 9, '查看列表', 'admin/role/list', 2, 3, 1587709997207900700, 0, '', 1587709997, 1587709997, NULL);
INSERT INTO `sys_action` VALUES (25, 9, '添加', 'admin/role/add,admin/role/add_submit', 2, 3, 1587710041646402200, 0, '', 1587710041, 1587719946, NULL);
INSERT INTO `sys_action` VALUES (26, 9, '编辑', 'admin/role/edit,admin/role/edit_submit', 2, 3, 1587710067094067600, 0, '', 1587710067, 1587719957, NULL);
INSERT INTO `sys_action` VALUES (27, 9, '设置权限', 'admin/role/allocate,admin/role/allocate_submit', 2, 3, 1587710163552678400, 0, '', 1587710163, 1587719968, NULL);
INSERT INTO `sys_action` VALUES (28, 9, '删除', 'admin/role/delete', 2, 3, 1587710185081710700, 0, '', 1587710185, 1587710185, NULL);
INSERT INTO `sys_action` VALUES (29, 11, '查看列表', 'webmanage/news/list', 2, 3, 1587710235565552900, 0, '', 1587710235, 1587710235, NULL);
INSERT INTO `sys_action` VALUES (30, 11, '添加', 'webmanage/news/add,webmanage/news/add_submit', 2, 3, 1587710253694461200, 0, '', 1587710253, 1587719516, NULL);
INSERT INTO `sys_action` VALUES (31, 11, '编辑', 'webmanage/news/edit,webmanage/news/edit_submit', 2, 3, 1587710276798355200, 0, '', 1587710276, 1587719544, NULL);
INSERT INTO `sys_action` VALUES (32, 11, '发布', 'webmanage/news/publish_on', 2, 3, 1587710326624437100, 0, '', 1587710326, 1587710326, NULL);
INSERT INTO `sys_action` VALUES (33, 11, '取消发布', 'webmanage/news/publish_off', 2, 3, 1587710348973560000, 0, '', 1587710348, 1587710348, NULL);
INSERT INTO `sys_action` VALUES (34, 11, '删除', 'webmanage/news/delete', 2, 3, 1587711830422673200, 0, '', 1587710401, 1587710401, NULL);
INSERT INTO `sys_action` VALUES (35, 19, '查看列表', 'webmanage/business/list', 2, 3, 1587710536738940200, 0, '', 1587710536, 1587710536, NULL);
INSERT INTO `sys_action` VALUES (36, 19, '添加', 'webmanage/business/add,webmanage/business/add_submit', 2, 3, 1587710555073178800, 0, '', 1587710555, 1587719569, NULL);
INSERT INTO `sys_action` VALUES (37, 19, '编辑', 'webmanage/business/edit,webmanage/business/edit_submit', 2, 3, 1587710570934729200, 0, '', 1587710570, 1587719580, NULL);
INSERT INTO `sys_action` VALUES (38, 19, '删除', 'webmanage/business/delete', 2, 3, 1587711865971310300, 0, '', 1587710593, 1587710593, NULL);
INSERT INTO `sys_action` VALUES (39, 13, '查看列表', 'webmanage/case/list', 2, 3, 1587710668672770500, 0, '', 1587710668, 1587710668, NULL);
INSERT INTO `sys_action` VALUES (40, 13, '添加', 'webmanage/case/add,webmanage/case/add_submit', 2, 3, 1587710686733905200, 0, '', 1587710686, 1587719595, NULL);
INSERT INTO `sys_action` VALUES (41, 13, '编辑', 'webmanage/case/edit,webmanage/case/edit_submit', 2, 3, 1587710702385869900, 0, '', 1587710702, 1587719605, NULL);
INSERT INTO `sys_action` VALUES (42, 13, '删除', 'webmanage/case/delete', 2, 3, 1587711896107286200, 0, '', 1587710725, 1587710725, NULL);
INSERT INTO `sys_action` VALUES (43, 15, '查看列表', 'webmanage/web_category/list', 2, 3, 1587710771573150900, 0, '', 1587710771, 1587710771, NULL);
INSERT INTO `sys_action` VALUES (44, 15, '添加', 'webmanage/web_category/add,webmanage/web_category/add_submit', 2, 3, 1587710803997257200, 0, '', 1587710803, 1587719623, NULL);
INSERT INTO `sys_action` VALUES (45, 15, '编辑', 'webmanage/web_category/edit,webmanage/web_category/edit_submit', 2, 3, 1587710819153746400, 0, '', 1587710819, 1587719640, NULL);
INSERT INTO `sys_action` VALUES (46, 15, '删除', 'webmanage/web_category/delete', 2, 3, 1587711920116229800, 0, '', 1587710847, 1587710847, NULL);
INSERT INTO `sys_action` VALUES (47, 20, '查看列表', 'webmanage/banner/list', 2, 3, 1587710884334834300, 0, '', 1587710884, 1587710884, NULL);
INSERT INTO `sys_action` VALUES (48, 20, '添加', 'webmanage/banner/add,webmanage/banner/add_submit', 2, 3, 1587710897189504400, 0, '', 1587710897, 1587719656, NULL);
INSERT INTO `sys_action` VALUES (49, 20, '编辑', 'webmanage/banner/edit,webmanage/banner/edit_submit', 2, 3, 1587710909861480800, 0, '', 1587710909, 1587719666, NULL);
INSERT INTO `sys_action` VALUES (50, 20, '删除', 'webmanage/banner/delete', 2, 3, 1587711991284516200, 0, '', 1587710928, 1587710928, NULL);
INSERT INTO `sys_action` VALUES (51, 16, '查看列表', 'webmanage/app_business/list', 2, 3, 1587710959386936400, 0, '', 1587710959, 1587710959, NULL);
INSERT INTO `sys_action` VALUES (52, 16, '添加', 'webmanage/app_business/add,webmanage/app_business/add_submit', 2, 3, 1587710994275766100, 0, '', 1587710994, 1587719679, NULL);
INSERT INTO `sys_action` VALUES (53, 16, '编辑', 'webmanage/app_business/edit,webmanage/app_business/edit_submit', 2, 3, 1587711010870699700, 0, '', 1587711010, 1587719689, NULL);
INSERT INTO `sys_action` VALUES (54, 16, '删除', 'webmanage/app_business/delete', 2, 3, 1587712014667700500, 0, '', 1587711027, 1587711027, NULL);
INSERT INTO `sys_action` VALUES (55, 17, '查看列表', 'webmanage/app_custom/list', 2, 3, 1587711062960244600, 0, '', 1587711062, 1587711062, NULL);
INSERT INTO `sys_action` VALUES (56, 17, '添加', 'webmanage/app_custom/add,webmanage/app_custom/add_submit', 2, 3, 1587711075070139800, 0, '', 1587711075, 1587719741, NULL);
INSERT INTO `sys_action` VALUES (57, 17, '编辑', 'webmanage/app_custom/edit,webmanage/app_custom/edit_submit', 2, 3, 1587711228131375500, 0, '', 1587711228, 1587719751, NULL);
INSERT INTO `sys_action` VALUES (58, 17, '删除', 'webmanage/app_custom/delete', 2, 3, 1587712038817404800, 0, '', 1587711348, 1587711348, NULL);
INSERT INTO `sys_action` VALUES (59, 18, '查看列表', 'webmanage/miniapp_category/list', 2, 3, 1587711546907287900, 0, '', 1587711546, 1587711546, NULL);
INSERT INTO `sys_action` VALUES (60, 18, '添加', 'webmanage/miniapp_category/add,webmanage/miniapp_category/add_submit', 2, 3, 1587711562780629600, 0, '', 1587711562, 1587719831, NULL);
INSERT INTO `sys_action` VALUES (61, 18, '编辑', 'webmanage/miniapp_category/edit,webmanage/miniapp_category/edit_submit', 2, 3, 1587711595494287400, 0, '', 1587711595, 1587719845, NULL);
INSERT INTO `sys_action` VALUES (62, 18, '删除', 'webmanage/miniapp_category/delete', 2, 3, 1587712057526868900, 0, '', 1587711609, 1587711609, NULL);
INSERT INTO `sys_action` VALUES (63, 12, '查看', 'webmanage/about/index', 2, 3, 1587711664990886100, 0, '', 1587711664, 1587711664, NULL);
INSERT INTO `sys_action` VALUES (64, 12, '编辑', 'webmanage/about/edit_submit,webmanage/about/add_submit', 2, 3, 1587711684806042000, 0, '', 1587711684, 1587719872, NULL);
INSERT INTO `sys_action` VALUES (65, 14, '查看列表', 'webmanage/team_style/list', 2, 3, 1587711720176177600, 0, '', 1587711720, 1587711720, NULL);
INSERT INTO `sys_action` VALUES (66, 14, '添加', 'webmanage/team_style/add,webmanage/team_style/add_submit', 2, 3, 1587711736070144400, 0, '', 1587711736, 1587719888, NULL);
INSERT INTO `sys_action` VALUES (67, 14, '编辑', 'webmanage/team_style/edit,webmanage/team_style/edit_submit', 2, 3, 1587711749762363300, 0, '', 1587711749, 1587719905, NULL);
INSERT INTO `sys_action` VALUES (68, 14, '删除', 'webmanage/team_style/delete', 2, 3, 1587712091278791400, 0, '', 1587711770, 1587711770, NULL);
INSERT INTO `sys_action` VALUES (69, 11, '排序', 'webmanage/news/drag_sort', 2, 3, 1587710401294381500, 0, '', 1587711830, 1587711830, NULL);
INSERT INTO `sys_action` VALUES (70, 19, '排序', 'webmanage/business/drag_sort', 2, 3, 1587710593825656600, 0, '', 1587711865, 1587711865, NULL);
INSERT INTO `sys_action` VALUES (71, 13, '排序', 'webmanage/case/drag_sort', 2, 3, 1587710725781235800, 0, '', 1587711896, 1587711896, NULL);
INSERT INTO `sys_action` VALUES (72, 15, '排序', 'webmanage/web_category/drag_sort', 2, 3, 1587710847677034200, 0, '', 1587711920, 1587711920, NULL);
INSERT INTO `sys_action` VALUES (73, 20, '排序', 'webmanage/banner/drag_sort', 2, 3, 1587710928219402800, 0, '', 1587711991, 1587711991, NULL);
INSERT INTO `sys_action` VALUES (74, 16, '排序', 'webmanage/app_business/drag_sort', 2, 3, 1587711027828688700, 0, '', 1587712014, 1587712014, NULL);
INSERT INTO `sys_action` VALUES (75, 17, '排序', 'webmanage/app_custom/drag_sort', 2, 3, 1587711348149849900, 0, '', 1587712038, 1587712038, NULL);
INSERT INTO `sys_action` VALUES (76, 18, '排序', 'webmanage/miniapp_category/drag_sort', 2, 3, 1587711609733293700, 0, '', 1587712057, 1587712057, NULL);
INSERT INTO `sys_action` VALUES (77, 14, '排序', 'webmanage/team_style/drag_sort', 2, 3, 1587711770189686400, 0, '', 1587712091, 1587712091, NULL);
INSERT INTO `sys_action` VALUES (78, 10, '留言板', 'webmanage/message_board/list', 1, 2, 1587950235046342400, 1, '', 1587950235, 1587950235, NULL);
INSERT INTO `sys_action` VALUES (79, 78, '查看列表', 'webmanage/message_board/list', 2, 3, 1587973102337013900, 0, '', 1587973102, 1587973102, NULL);
INSERT INTO `sys_action` VALUES (80, 78, '标记已处理', 'webmanage/message_board/read', 2, 3, 1587973166887693500, 0, '', 1587973166, 1587973166, NULL);
INSERT INTO `sys_action` VALUES (81, 78, '查看详情', 'webmanage/message_board/info', 2, 3, 1587973195952280000, 0, '', 1587973195, 1587973195, NULL);
INSERT INTO `sys_action` VALUES (82, 78, '删除', 'webmanage/message_board/delete', 2, 3, 1587973233103191800, 0, '', 1587973233, 1587973233, NULL);
INSERT INTO `sys_action` VALUES (83, 4, '重置密码', 'admin/user/reset_password', 2, 3, 1587975591852718600, 0, '', 1587975591, 1587975591, NULL);
INSERT INTO `sys_action` VALUES (84, 0, '通用权限', 'common', 1, 1, 1587372608, 0, '', 1587975671, 1587975671, NULL);
INSERT INTO `sys_action` VALUES (85, 84, '通用权限列表', 'common_list', 1, 2, 1587975704889567500, 0, '', 1587975704, 1587975704, NULL);
INSERT INTO `sys_action` VALUES (86, 85, '修改密码', 'admin/user/edit_password,admin/user/edit_password_submit', 2, 3, 1587976851899395900, 0, '', 1587976851, 1587976851, NULL);
INSERT INTO `sys_action` VALUES (87, 85, '欢迎页', 'welcome', 2, 3, 1587978062442996500, 0, '', 1587978062, 1587978062, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名',
  `description` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `created_at` int(10) NOT NULL COMMENT '创建时间',
  `updated_at` int(10) NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '超级管理员，具有所有页面权限', 1567681452, 1576200123, NULL);
INSERT INTO `sys_role` VALUES (2, '系统管理员', '', 1587452336, 1587718126, NULL);
INSERT INTO `sys_role` VALUES (3, '文员', '', 1587452428, 1587718139, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户密码',
  `real_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '真实姓名',
  `salt` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '加密盐值',
  `login_times` int(10) UNSIGNED NOT NULL COMMENT '登录次数',
  `last_login` int(10) UNSIGNED NOT NULL COMMENT '最后登录时间',
  `last_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '最后登录IP',
  `state` tinyint(1) NOT NULL COMMENT '状态(0禁用，1启用)',
  `login_error_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '记录输入密码错误详细时间',
  `is_locked` tinyint(1) NOT NULL COMMENT '是否锁定(0未锁定，1已锁定)',
  `lock_time` int(10) UNSIGNED NOT NULL COMMENT '账号锁定时间',
  `created_by` int(10) UNSIGNED NOT NULL COMMENT '创建人',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `edited_by` int(10) UNSIGNED NOT NULL COMMENT '编辑人',
  `edited_at` int(10) UNSIGNED NOT NULL COMMENT '编辑时间',
  `allocated_by` int(10) UNSIGNED NOT NULL COMMENT '权限分配人',
  `allocated_at` int(10) NOT NULL COMMENT '权限分配时间',
  `updated_at` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'root', '$2a$10$o2hhGBfaF1jRKeRMDJG80.cY1iKxYSgx15Nl6sVqBvQGdaKGndXH2', '超级管理员', '791554', 96, 1588036782, '::1', 1, '', 0, 0, 1, 1587442944, 0, 0, 0, 0, 1588036782, NULL);
INSERT INTO `sys_user` VALUES (4, 'test001', '$2a$10$1DjvTCXp7ozTU6R3gs4uG.14IS8MEUV2ty4MJmPB4i3scRSxBIke.', '测试员1号', '920425', 18, 1587978176, '::1', 1, '', 0, 0, 1, 1587454440, 0, 0, 0, 0, 1587978176, NULL);
INSERT INTO `sys_user` VALUES (5, 'test002', '$2a$10$bi5M1MAXq6g/AF7lLp3eaeGU6hD0GzvZ.AeTjzw0monN42VlMDWFK', 'test002', '626042', 18, 1587978116, '::1', 1, '', 0, 0, 1, 1587456350, 0, 0, 0, 0, 1587978116, NULL);
INSERT INTO `sys_user` VALUES (6, 'test003', '$2a$10$.ZMuXy11zTky9BTpH0OGf.TAVUNFIow61SJLV/2KMbNSTeRR0o8X2', 'test003', '630012', 0, 0, '', 0, '', 0, 0, 1, 1587456450, 0, 0, 0, 0, 1587971147, NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色ID',
  `created_at` int(10) NOT NULL,
  `updated_at` int(10) NOT NULL,
  `deleted_at` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1, 1587452255, 1587452255, NULL);
INSERT INTO `sys_user_role` VALUES (4, 4, 2, 1587454440, 1587721722, NULL);
INSERT INTO `sys_user_role` VALUES (5, 5, 3, 1587456350, 1587971401, NULL);
INSERT INTO `sys_user_role` VALUES (6, 6, 2, 1587456450, 1587456450, NULL);

SET FOREIGN_KEY_CHECKS = 1;
