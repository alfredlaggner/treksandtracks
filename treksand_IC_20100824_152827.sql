-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-sl10.eigbox.net
-- Generation Time: Jun 18, 2016 at 11:00 AM
-- Server version: 5.5.46
-- PHP Version: 4.4.9
-- 
-- Database: `treksand_IC_20100824_152827`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_acl_groups`
-- 

CREATE TABLE `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_acl_groups`
-- 

INSERT INTO `phpbb_acl_groups` VALUES (1, 0, 85, 0, 1);
INSERT INTO `phpbb_acl_groups` VALUES (1, 0, 93, 0, 1);
INSERT INTO `phpbb_acl_groups` VALUES (1, 0, 111, 0, 1);
INSERT INTO `phpbb_acl_groups` VALUES (5, 0, 0, 5, 0);
INSERT INTO `phpbb_acl_groups` VALUES (5, 0, 0, 1, 0);
INSERT INTO `phpbb_acl_groups` VALUES (2, 0, 0, 6, 0);
INSERT INTO `phpbb_acl_groups` VALUES (3, 0, 0, 6, 0);
INSERT INTO `phpbb_acl_groups` VALUES (4, 0, 0, 5, 0);
INSERT INTO `phpbb_acl_groups` VALUES (4, 0, 0, 10, 0);
INSERT INTO `phpbb_acl_groups` VALUES (1, 1, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES (2, 1, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES (3, 1, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES (6, 1, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES (1, 2, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES (2, 2, 0, 15, 0);
INSERT INTO `phpbb_acl_groups` VALUES (3, 2, 0, 15, 0);
INSERT INTO `phpbb_acl_groups` VALUES (4, 2, 0, 21, 0);
INSERT INTO `phpbb_acl_groups` VALUES (5, 2, 0, 14, 0);
INSERT INTO `phpbb_acl_groups` VALUES (5, 2, 0, 10, 0);
INSERT INTO `phpbb_acl_groups` VALUES (6, 2, 0, 19, 0);
INSERT INTO `phpbb_acl_groups` VALUES (7, 0, 0, 23, 0);
INSERT INTO `phpbb_acl_groups` VALUES (7, 2, 0, 24, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_acl_options`
-- 

CREATE TABLE `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=118 ;

-- 
-- Dumping data for table `phpbb_acl_options`
-- 

INSERT INTO `phpbb_acl_options` VALUES (1, 0x665f, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (2, 0x665f616e6e6f756e6365, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (3, 0x665f617474616368, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (4, 0x665f6262636f6465, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (5, 0x665f62756d70, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (6, 0x665f64656c657465, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (7, 0x665f646f776e6c6f6164, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (8, 0x665f65646974, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (9, 0x665f656d61696c, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (10, 0x665f666c617368, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (11, 0x665f69636f6e73, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (12, 0x665f69676e6f7265666c6f6f64, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (13, 0x665f696d67, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (14, 0x665f6c697374, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (15, 0x665f6e6f617070726f7665, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (16, 0x665f706f6c6c, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (17, 0x665f706f7374, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (18, 0x665f706f7374636f756e74, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (19, 0x665f7072696e74, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (20, 0x665f72656164, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (21, 0x665f7265706c79, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (22, 0x665f7265706f7274, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (23, 0x665f736561726368, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (24, 0x665f73696773, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (25, 0x665f736d696c696573, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (26, 0x665f737469636b79, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (27, 0x665f737562736372696265, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (28, 0x665f757365725f6c6f636b, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (29, 0x665f766f7465, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (30, 0x665f766f7465636867, 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (31, 0x6d5f, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (32, 0x6d5f617070726f7665, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (33, 0x6d5f636867706f73746572, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (34, 0x6d5f64656c657465, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (35, 0x6d5f65646974, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (36, 0x6d5f696e666f, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (37, 0x6d5f6c6f636b, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (38, 0x6d5f6d65726765, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (39, 0x6d5f6d6f7665, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (40, 0x6d5f7265706f7274, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (41, 0x6d5f73706c6974, 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES (42, 0x6d5f62616e, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (43, 0x6d5f7761726e, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (44, 0x615f, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (45, 0x615f6161757468, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (46, 0x615f617474616368, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (47, 0x615f6175746867726f757073, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (48, 0x615f617574687573657273, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (49, 0x615f6261636b7570, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (50, 0x615f62616e, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (51, 0x615f6262636f6465, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (52, 0x615f626f617264, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (53, 0x615f626f7473, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (54, 0x615f636c6561726c6f6773, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (55, 0x615f656d61696c, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (56, 0x615f6661757468, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (57, 0x615f666f72756d, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (58, 0x615f666f72756d616464, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (59, 0x615f666f72756d64656c, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (60, 0x615f67726f7570, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (61, 0x615f67726f7570616464, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (62, 0x615f67726f757064656c, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (63, 0x615f69636f6e73, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (64, 0x615f6a6162626572, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (65, 0x615f6c616e6775616765, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (66, 0x615f6d61757468, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (67, 0x615f6d6f64756c6573, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (68, 0x615f6e616d6573, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (69, 0x615f706870696e666f, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (70, 0x615f70726f66696c65, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (71, 0x615f7072756e65, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (72, 0x615f72616e6b73, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (73, 0x615f726561736f6e73, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (74, 0x615f726f6c6573, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (75, 0x615f736561726368, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (76, 0x615f736572766572, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (77, 0x615f7374796c6573, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (78, 0x615f7377697463687065726d, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (79, 0x615f7561757468, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (80, 0x615f75736572, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (81, 0x615f7573657264656c, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (82, 0x615f7669657761757468, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (83, 0x615f766965776c6f6773, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (84, 0x615f776f726473, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (85, 0x755f, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (86, 0x755f617474616368, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (87, 0x755f636867617661746172, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (88, 0x755f63686763656e736f7273, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (89, 0x755f636867656d61696c, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (90, 0x755f636867677270, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (91, 0x755f6368676e616d65, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (92, 0x755f636867706173737764, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (93, 0x755f646f776e6c6f6164, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (94, 0x755f686964656f6e6c696e65, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (95, 0x755f69676e6f7265666c6f6f64, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (96, 0x755f6d617373706d, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (97, 0x755f6d617373706d5f67726f7570, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (98, 0x755f706d5f617474616368, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (99, 0x755f706d5f6262636f6465, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (100, 0x755f706d5f64656c657465, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (101, 0x755f706d5f646f776e6c6f6164, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (102, 0x755f706d5f65646974, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (103, 0x755f706d5f656d61696c706d, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (104, 0x755f706d5f666c617368, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (105, 0x755f706d5f666f7277617264, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (106, 0x755f706d5f696d67, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (107, 0x755f706d5f7072696e74706d, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (108, 0x755f706d5f736d696c696573, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (109, 0x755f72656164706d, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (110, 0x755f73617665647261667473, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (111, 0x755f736561726368, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (112, 0x755f73656e64656d61696c, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (113, 0x755f73656e64696d, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (114, 0x755f73656e64706d, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (115, 0x755f736967, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (116, 0x755f766965776f6e6c696e65, 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES (117, 0x755f7669657770726f66696c65, 1, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_acl_roles`
-- 

CREATE TABLE `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `phpbb_acl_roles`
-- 

INSERT INTO `phpbb_acl_roles` VALUES (1, 0x524f4c455f41444d494e5f5354414e44415244, 0x524f4c455f4445534352495054494f4e5f41444d494e5f5354414e44415244, 0x615f, 1);
INSERT INTO `phpbb_acl_roles` VALUES (2, 0x524f4c455f41444d494e5f464f52554d, 0x524f4c455f4445534352495054494f4e5f41444d494e5f464f52554d, 0x615f, 3);
INSERT INTO `phpbb_acl_roles` VALUES (3, 0x524f4c455f41444d494e5f5553455247524f5550, 0x524f4c455f4445534352495054494f4e5f41444d494e5f5553455247524f5550, 0x615f, 4);
INSERT INTO `phpbb_acl_roles` VALUES (4, 0x524f4c455f41444d494e5f46554c4c, 0x524f4c455f4445534352495054494f4e5f41444d494e5f46554c4c, 0x615f, 2);
INSERT INTO `phpbb_acl_roles` VALUES (5, 0x524f4c455f555345525f46554c4c, 0x524f4c455f4445534352495054494f4e5f555345525f46554c4c, 0x755f, 3);
INSERT INTO `phpbb_acl_roles` VALUES (6, 0x524f4c455f555345525f5354414e44415244, 0x524f4c455f4445534352495054494f4e5f555345525f5354414e44415244, 0x755f, 1);
INSERT INTO `phpbb_acl_roles` VALUES (7, 0x524f4c455f555345525f4c494d49544544, 0x524f4c455f4445534352495054494f4e5f555345525f4c494d49544544, 0x755f, 2);
INSERT INTO `phpbb_acl_roles` VALUES (8, 0x524f4c455f555345525f4e4f504d, 0x524f4c455f4445534352495054494f4e5f555345525f4e4f504d, 0x755f, 4);
INSERT INTO `phpbb_acl_roles` VALUES (9, 0x524f4c455f555345525f4e4f415641544152, 0x524f4c455f4445534352495054494f4e5f555345525f4e4f415641544152, 0x755f, 5);
INSERT INTO `phpbb_acl_roles` VALUES (10, 0x524f4c455f4d4f445f46554c4c, 0x524f4c455f4445534352495054494f4e5f4d4f445f46554c4c, 0x6d5f, 3);
INSERT INTO `phpbb_acl_roles` VALUES (11, 0x524f4c455f4d4f445f5354414e44415244, 0x524f4c455f4445534352495054494f4e5f4d4f445f5354414e44415244, 0x6d5f, 1);
INSERT INTO `phpbb_acl_roles` VALUES (12, 0x524f4c455f4d4f445f53494d504c45, 0x524f4c455f4445534352495054494f4e5f4d4f445f53494d504c45, 0x6d5f, 2);
INSERT INTO `phpbb_acl_roles` VALUES (13, 0x524f4c455f4d4f445f5155455545, 0x524f4c455f4445534352495054494f4e5f4d4f445f5155455545, 0x6d5f, 4);
INSERT INTO `phpbb_acl_roles` VALUES (14, 0x524f4c455f464f52554d5f46554c4c, 0x524f4c455f4445534352495054494f4e5f464f52554d5f46554c4c, 0x665f, 7);
INSERT INTO `phpbb_acl_roles` VALUES (15, 0x524f4c455f464f52554d5f5354414e44415244, 0x524f4c455f4445534352495054494f4e5f464f52554d5f5354414e44415244, 0x665f, 5);
INSERT INTO `phpbb_acl_roles` VALUES (16, 0x524f4c455f464f52554d5f4e4f414343455353, 0x524f4c455f4445534352495054494f4e5f464f52554d5f4e4f414343455353, 0x665f, 1);
INSERT INTO `phpbb_acl_roles` VALUES (17, 0x524f4c455f464f52554d5f524541444f4e4c59, 0x524f4c455f4445534352495054494f4e5f464f52554d5f524541444f4e4c59, 0x665f, 2);
INSERT INTO `phpbb_acl_roles` VALUES (18, 0x524f4c455f464f52554d5f4c494d49544544, 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d49544544, 0x665f, 3);
INSERT INTO `phpbb_acl_roles` VALUES (19, 0x524f4c455f464f52554d5f424f54, 0x524f4c455f4445534352495054494f4e5f464f52554d5f424f54, 0x665f, 9);
INSERT INTO `phpbb_acl_roles` VALUES (20, 0x524f4c455f464f52554d5f4f4e5155455545, 0x524f4c455f4445534352495054494f4e5f464f52554d5f4f4e5155455545, 0x665f, 8);
INSERT INTO `phpbb_acl_roles` VALUES (21, 0x524f4c455f464f52554d5f504f4c4c53, 0x524f4c455f4445534352495054494f4e5f464f52554d5f504f4c4c53, 0x665f, 6);
INSERT INTO `phpbb_acl_roles` VALUES (22, 0x524f4c455f464f52554d5f4c494d495445445f504f4c4c53, 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d495445445f504f4c4c53, 0x665f, 4);
INSERT INTO `phpbb_acl_roles` VALUES (23, 0x524f4c455f555345525f4e45575f4d454d424552, 0x524f4c455f4445534352495054494f4e5f555345525f4e45575f4d454d424552, 0x755f, 6);
INSERT INTO `phpbb_acl_roles` VALUES (24, 0x524f4c455f464f52554d5f4e45575f4d454d424552, 0x524f4c455f4445534352495054494f4e5f464f52554d5f4e45575f4d454d424552, 0x665f, 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_acl_roles_data`
-- 

CREATE TABLE `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_acl_roles_data`
-- 

INSERT INTO `phpbb_acl_roles_data` VALUES (1, 44, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 46, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 47, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 48, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 50, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 51, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 52, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 56, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 57, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 58, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 59, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 60, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 61, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 62, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 63, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 66, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 68, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 70, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 71, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 72, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 73, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 79, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 80, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 81, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 82, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 83, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (1, 84, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 44, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 47, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 48, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 56, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 57, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 58, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 59, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 66, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 71, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 79, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 82, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (2, 83, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 44, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 47, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 48, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 50, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 60, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 61, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 62, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 72, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 79, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 80, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 82, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (3, 83, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 44, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 45, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 46, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 47, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 48, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 49, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 50, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 51, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 52, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 53, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 54, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 55, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 56, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 57, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 58, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 59, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 60, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 61, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 62, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 63, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 64, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 65, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 66, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 67, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 68, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 69, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 70, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 71, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 72, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 73, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 74, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 75, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 76, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 77, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 78, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 79, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 80, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 81, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 82, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 83, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (4, 84, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 85, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 86, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 87, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 89, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 90, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 91, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 93, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 94, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 95, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 96, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 97, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 98, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 99, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 100, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 101, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 102, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 103, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 104, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 105, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 106, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 107, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 108, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 109, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 110, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 111, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 112, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 113, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 114, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 115, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 116, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (5, 117, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 85, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 86, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 87, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 89, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 93, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 94, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 96, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 97, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 98, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 99, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 100, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 101, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 102, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 103, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 106, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 107, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 108, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 109, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 110, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 111, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 112, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 113, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 114, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 115, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (6, 117, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 85, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 87, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 89, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 93, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 94, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 99, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 100, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 101, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 102, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 105, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 106, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 107, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 108, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 109, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 114, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 115, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (7, 117, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 85, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 87, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 89, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 93, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 94, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 115, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 117, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 96, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 97, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 109, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (8, 114, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 85, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 89, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 93, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 94, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 99, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 100, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 101, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 102, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 105, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 106, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 107, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 108, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 109, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 114, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 115, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 117, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 87, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 96, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (9, 97, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 32, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 42, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 33, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 34, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 35, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 36, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 37, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 38, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 39, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 40, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 41, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (10, 43, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 32, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 34, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 35, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 36, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 37, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 38, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 39, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 40, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 41, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (11, 43, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (12, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (12, 34, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (12, 35, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (12, 36, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (12, 40, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (13, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (13, 32, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (13, 35, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 2, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 3, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 5, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 6, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 10, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 11, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 12, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 16, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 26, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 28, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (14, 30, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 3, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 5, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 6, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 11, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (15, 30, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (16, 1, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (17, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (17, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (17, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (17, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (17, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (17, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (17, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (18, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (19, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (19, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (19, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (19, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (19, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 3, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (20, 15, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 3, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 5, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 6, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 11, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 16, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (21, 30, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 16, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (22, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES (23, 96, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (23, 97, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (23, 114, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES (24, 15, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_acl_users`
-- 

CREATE TABLE `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_acl_users`
-- 

INSERT INTO `phpbb_acl_users` VALUES (2, 0, 0, 5, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_attachments`
-- 

CREATE TABLE `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_attachments`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_banlist`
-- 

CREATE TABLE `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_banlist`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_bbcodes`
-- 

CREATE TABLE `phpbb_bbcodes` (
  `bbcode_id` tinyint(3) NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_bbcodes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_bookmarks`
-- 

CREATE TABLE `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_bookmarks`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_bots`
-- 

CREATE TABLE `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

-- 
-- Dumping data for table `phpbb_bots`
-- 

INSERT INTO `phpbb_bots` VALUES (1, 1, 0x416473426f74205b476f6f676c655d, 3, 0x416473426f742d476f6f676c65, '');
INSERT INTO `phpbb_bots` VALUES (2, 1, 0x416c657861205b426f745d, 4, 0x69615f6172636869766572, '');
INSERT INTO `phpbb_bots` VALUES (3, 1, 0x416c7461205669737461205b426f745d, 5, 0x53636f6f7465722f, '');
INSERT INTO `phpbb_bots` VALUES (4, 1, 0x41736b204a6565766573205b426f745d, 6, 0x41736b204a6565766573, '');
INSERT INTO `phpbb_bots` VALUES (5, 1, 0x4261696475205b5370696465725d, 7, 0x42616964757370696465722b28, '');
INSERT INTO `phpbb_bots` VALUES (6, 1, 0x457861626f74205b426f745d, 8, 0x457861626f742f, '');
INSERT INTO `phpbb_bots` VALUES (7, 1, 0x4641535420456e7465727072697365205b437261776c65725d, 9, 0x4641535420456e746572707269736520437261776c6572, '');
INSERT INTO `phpbb_bots` VALUES (8, 1, 0x4641535420576562437261776c6572205b437261776c65725d, 10, 0x464153542d576562437261776c65722f, '');
INSERT INTO `phpbb_bots` VALUES (9, 1, 0x4672616e636973205b426f745d, 11, 0x687474703a2f2f7777772e6e656f6d6f2e64652f, '');
INSERT INTO `phpbb_bots` VALUES (10, 1, 0x47696761626f74205b426f745d, 12, 0x47696761626f742f, '');
INSERT INTO `phpbb_bots` VALUES (11, 1, 0x476f6f676c6520416473656e7365205b426f745d, 13, 0x4d65646961706172746e6572732d476f6f676c65, '');
INSERT INTO `phpbb_bots` VALUES (12, 1, 0x476f6f676c65204465736b746f70, 14, 0x476f6f676c65204465736b746f70, '');
INSERT INTO `phpbb_bots` VALUES (13, 1, 0x476f6f676c65204665656466657463686572, 15, 0x46656564666574636865722d476f6f676c65, '');
INSERT INTO `phpbb_bots` VALUES (14, 1, 0x476f6f676c65205b426f745d, 16, 0x476f6f676c65626f74, '');
INSERT INTO `phpbb_bots` VALUES (15, 1, 0x48656973652049542d4d61726b74205b437261776c65725d, 17, 0x68656973652d49542d4d61726b742d437261776c6572, '');
INSERT INTO `phpbb_bots` VALUES (16, 1, 0x4865726974726978205b437261776c65725d, 18, 0x68657269747269782f312e, '');
INSERT INTO `phpbb_bots` VALUES (17, 1, 0x49424d205265736561726368205b426f745d, 19, 0x69626d2e636f6d2f63732f637261776c6572, '');
INSERT INTO `phpbb_bots` VALUES (18, 1, 0x4943437261776c6572202d2049436a6f6273, 20, 0x4943437261776c6572202d2049436a6f6273, '');
INSERT INTO `phpbb_bots` VALUES (19, 1, 0x69636869726f205b437261776c65725d, 21, 0x69636869726f2f, '');
INSERT INTO `phpbb_bots` VALUES (20, 1, 0x4d616a65737469632d3132205b426f745d, 22, 0x4d4a3132626f742f, '');
INSERT INTO `phpbb_bots` VALUES (21, 1, 0x4d657461676572205b426f745d, 23, 0x4d657461676572426f742f, '');
INSERT INTO `phpbb_bots` VALUES (22, 1, 0x4d534e204e657773426c6f6773, 24, 0x6d736e626f742d4e657773426c6f67732f, '');
INSERT INTO `phpbb_bots` VALUES (23, 1, 0x4d534e205b426f745d, 25, 0x6d736e626f742f, '');
INSERT INTO `phpbb_bots` VALUES (24, 1, 0x4d534e626f74204d65646961, 26, 0x6d736e626f742d6d656469612f, '');
INSERT INTO `phpbb_bots` VALUES (25, 1, 0x4e472d536561726368205b426f745d, 27, 0x4e472d5365617263682f, '');
INSERT INTO `phpbb_bots` VALUES (26, 1, 0x4e75746368205b426f745d, 28, 0x687474703a2f2f6c7563656e652e6170616368652e6f72672f6e757463682f, '');
INSERT INTO `phpbb_bots` VALUES (27, 1, 0x4e757463682f435653205b426f745d, 29, 0x4e757463684356532f, '');
INSERT INTO `phpbb_bots` VALUES (28, 1, 0x4f6d6e694578706c6f726572205b426f745d, 30, 0x4f6d6e694578706c6f7265725f426f742f, '');
INSERT INTO `phpbb_bots` VALUES (29, 1, 0x4f6e6c696e65206c696e6b205b56616c696461746f725d, 31, 0x6f6e6c696e65206c696e6b2076616c696461746f72, '');
INSERT INTO `phpbb_bots` VALUES (30, 1, 0x7073626f74205b5069637365617263685d, 32, 0x7073626f742f30, '');
INSERT INTO `phpbb_bots` VALUES (31, 1, 0x5365656b706f7274205b426f745d, 33, 0x5365656b626f742f, '');
INSERT INTO `phpbb_bots` VALUES (32, 1, 0x53656e736973205b437261776c65725d, 34, 0x53656e7369732057656220437261776c6572, '');
INSERT INTO `phpbb_bots` VALUES (33, 1, 0x53454f20437261776c6572, 35, 0x53454f2073656172636820437261776c65722f, '');
INSERT INTO `phpbb_bots` VALUES (34, 1, 0x53656f6d61205b437261776c65725d, 36, 0x53656f6d61205b53454f20437261776c65725d, '');
INSERT INTO `phpbb_bots` VALUES (35, 1, 0x53454f536561726368205b437261776c65725d, 37, 0x53454f7365617263682f, '');
INSERT INTO `phpbb_bots` VALUES (36, 1, 0x536e61707079205b426f745d, 38, 0x536e617070792f312e31202820687474703a2f2f7777772e75726c7472656e64732e636f6d2f2029, '');
INSERT INTO `phpbb_bots` VALUES (37, 1, 0x537465656c6572205b437261776c65725d, 39, 0x687474703a2f2f7777772e746b6c2e6969732e752d746f6b796f2e61632e6a702f7e637261776c65722f, '');
INSERT INTO `phpbb_bots` VALUES (38, 1, 0x53796e6f6f205b426f745d, 40, 0x53796e6f6f426f742f, '');
INSERT INTO `phpbb_bots` VALUES (39, 1, 0x54656c656b6f6d205b426f745d, 41, 0x637261776c657261646d696e2e742d696e666f4074656c656b6f6d2e6465, '');
INSERT INTO `phpbb_bots` VALUES (40, 1, 0x5475726e6974696e426f74205b426f745d, 42, 0x5475726e6974696e426f742f, '');
INSERT INTO `phpbb_bots` VALUES (41, 1, 0x566f7961676572205b426f745d, 43, 0x766f79616765722f312e30, '');
INSERT INTO `phpbb_bots` VALUES (42, 1, 0x5733205b536974657365617263685d, 44, 0x5733205369746553656172636820437261776c6572, '');
INSERT INTO `phpbb_bots` VALUES (43, 1, 0x573343205b4c696e6b636865636b5d, 45, 0x5733432d636865636b6c696e6b2f, '');
INSERT INTO `phpbb_bots` VALUES (44, 1, 0x573343205b56616c696461746f725d, 46, 0x5733435f2a56616c696461746f72, '');
INSERT INTO `phpbb_bots` VALUES (45, 1, 0x576973654e7574205b426f745d, 47, 0x687474703a2f2f7777772e574953456e7574626f742e636f6d, '');
INSERT INTO `phpbb_bots` VALUES (46, 1, 0x59614379205b426f745d, 48, 0x79616379626f74, '');
INSERT INTO `phpbb_bots` VALUES (47, 1, 0x5961686f6f204d4d437261776c6572205b426f745d, 49, 0x5961686f6f2d4d4d437261776c65722f, '');
INSERT INTO `phpbb_bots` VALUES (48, 1, 0x5961686f6f20536c757270205b426f745d, 50, 0x5961686f6f2120444520536c757270, '');
INSERT INTO `phpbb_bots` VALUES (49, 1, 0x5961686f6f205b426f745d, 51, 0x5961686f6f2120536c757270, '');
INSERT INTO `phpbb_bots` VALUES (50, 1, 0x5961686f6f5365656b6572205b426f745d, 52, 0x5961686f6f5365656b65722f, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_config`
-- 

CREATE TABLE `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_config`
-- 

INSERT INTO `phpbb_config` VALUES (0x6163746976655f73657373696f6e73, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6174746163686d656e7473, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6175746f6c6f67696e, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f617661746172, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6176617461725f6c6f63616c, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6176617461725f72656d6f7465, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6176617461725f75706c6f6164, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6176617461725f72656d6f74655f75706c6f6164, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6262636f6465, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f626972746864617973, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f626f6f6b6d61726b73, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f656d61696c7265757365, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f666f72756d5f6e6f74696679, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6d6173735f706d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6e616d655f6368617273, 0x555345524e414d455f43484152535f414e59, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6e616d656368616e6765, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f6e6f63656e736f7273, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f706d5f617474616368, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f706d5f7265706f7274, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f706f73745f666c617368, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f706f73745f6c696e6b73, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f707269766d7367, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f717569636b5f7265706c79, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f736967, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f7369675f6262636f6465, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f7369675f666c617368, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f7369675f696d67, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f7369675f6c696e6b73, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f7369675f706d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f7369675f736d696c696573, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f736d696c696573, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x616c6c6f775f746f7069635f6e6f74696679, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6174746163686d656e745f71756f7461, 0x3532343238383030, 0);
INSERT INTO `phpbb_config` VALUES (0x617574685f6262636f64655f706d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x617574685f666c6173685f706d, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x617574685f696d675f706d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x617574685f6d6574686f64, 0x6462, 0);
INSERT INTO `phpbb_config` VALUES (0x617574685f736d696c6965735f706d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6176617461725f66696c6573697a65, 0x36313434, 0);
INSERT INTO `phpbb_config` VALUES (0x6176617461725f67616c6c6572795f70617468, 0x696d616765732f617661746172732f67616c6c657279, 0);
INSERT INTO `phpbb_config` VALUES (0x6176617461725f6d61785f686569676874, 0x3930, 0);
INSERT INTO `phpbb_config` VALUES (0x6176617461725f6d61785f7769647468, 0x3930, 0);
INSERT INTO `phpbb_config` VALUES (0x6176617461725f6d696e5f686569676874, 0x3230, 0);
INSERT INTO `phpbb_config` VALUES (0x6176617461725f6d696e5f7769647468, 0x3230, 0);
INSERT INTO `phpbb_config` VALUES (0x6176617461725f70617468, 0x696d616765732f617661746172732f75706c6f6164, 0);
INSERT INTO `phpbb_config` VALUES (0x6176617461725f73616c74, 0x6234303038656463613034323464653833666536636531613561653166343362, 0);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f636f6e74616374, 0x616c667265642e6c6167676e657240676d61696c2e636f6d, 0);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f64697361626c65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f64697361626c655f6d7367, '', 0);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f647374, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f656d61696c, 0x616c667265642e6c6167676e657240676d61696c2e636f6d, 0);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f656d61696c5f666f726d, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f656d61696c5f736967, 0x5468616e6b732c20546865204d616e6167656d656e74, 0);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f686964655f656d61696c73, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f74696d657a6f6e65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x62726f777365725f636865636b, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x62756d705f696e74657276616c, 0x3130, 0);
INSERT INTO `phpbb_config` VALUES (0x62756d705f74797065, 0x64, 0);
INSERT INTO `phpbb_config` VALUES (0x63616368655f6763, 0x37323030, 0);
INSERT INTO `phpbb_config` VALUES (0x636170746368615f706c7567696e, 0x70687062625f636170746368615f6764, 0);
INSERT INTO `phpbb_config` VALUES (0x636170746368615f6764, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x636170746368615f67645f666f726567726f756e645f6e6f697365, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x636170746368615f67645f785f67726964, 0x3235, 0);
INSERT INTO `phpbb_config` VALUES (0x636170746368615f67645f795f67726964, 0x3235, 0);
INSERT INTO `phpbb_config` VALUES (0x636170746368615f67645f77617665, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x636170746368615f67645f33645f6e6f697365, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x636170746368615f67645f666f6e7473, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x636f6e6669726d5f72656672657368, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x636865636b5f6174746163686d656e745f636f6e74656e74, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x636865636b5f646e73626c, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6368675f70617373666f726365, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x636f6f6b69655f646f6d61696e, 0x7472656b73616e64747261636b732e636f6d, 0);
INSERT INTO `phpbb_config` VALUES (0x636f6f6b69655f6e616d65, 0x7068706262335f6b6231666e, 0);
INSERT INTO `phpbb_config` VALUES (0x636f6f6b69655f70617468, 0x2f, 0);
INSERT INTO `phpbb_config` VALUES (0x636f6f6b69655f736563757265, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x636f7070615f656e61626c65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x636f7070615f666178, '', 0);
INSERT INTO `phpbb_config` VALUES (0x636f7070615f6d61696c, '', 0);
INSERT INTO `phpbb_config` VALUES (0x64617461626173655f6763, 0x363034383030, 0);
INSERT INTO `phpbb_config` VALUES (0x64626d735f76657273696f6e, 0x352e302e34352d6c6f67, 0);
INSERT INTO `phpbb_config` VALUES (0x64656661756c745f64617465666f726d6174, 0x44204d20642c205920673a692061, 0);
INSERT INTO `phpbb_config` VALUES (0x64656661756c745f7374796c65, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x646973706c61795f6c6173745f656469746564, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x646973706c61795f6f72646572, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x656469745f74696d65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x64656c6574655f74696d65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x656d61696c5f636865636b5f6d78, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x656d61696c5f656e61626c65, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x656d61696c5f66756e6374696f6e5f6e616d65, 0x6d61696c, 0);
INSERT INTO `phpbb_config` VALUES (0x656d61696c5f7061636b6167655f73697a65, 0x3530, 0);
INSERT INTO `phpbb_config` VALUES (0x656e61626c655f636f6e6669726d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x656e61626c655f706d5f69636f6e73, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x656e61626c655f706f73745f636f6e6669726d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f656e61626c65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f687474705f61757468, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f6c696d69745f706f7374, 0x3135, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f6c696d69745f746f706963, 0x3130, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f6f766572616c6c5f666f72756d73, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f6f766572616c6c, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f666f72756d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f746f706963, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f746f706963735f6e6577, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f746f706963735f616374697665, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x666565645f6974656d5f73746174697374696373, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x666c6f6f645f696e74657276616c, 0x3135, 0);
INSERT INTO `phpbb_config` VALUES (0x666f7263655f7365727665725f76617273, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x666f726d5f746f6b656e5f6c69666574696d65, 0x37323030, 0);
INSERT INTO `phpbb_config` VALUES (0x666f726d5f746f6b656e5f6d696e74696d65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x666f726d5f746f6b656e5f7369645f677565737473, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x666f72776172645f706d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x666f727761726465645f666f725f636865636b, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x66756c6c5f666f6c6465725f616374696f6e, 0x32, 0);
INSERT INTO `phpbb_config` VALUES (0x66756c6c746578745f6d7973716c5f6d61785f776f72645f6c656e, 0x323534, 0);
INSERT INTO `phpbb_config` VALUES (0x66756c6c746578745f6d7973716c5f6d696e5f776f72645f6c656e, 0x34, 0);
INSERT INTO `phpbb_config` VALUES (0x66756c6c746578745f6e61746976655f636f6d6d6f6e5f7468726573, 0x35, 0);
INSERT INTO `phpbb_config` VALUES (0x66756c6c746578745f6e61746976655f6c6f61645f757064, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x66756c6c746578745f6e61746976655f6d61785f6368617273, 0x3134, 0);
INSERT INTO `phpbb_config` VALUES (0x66756c6c746578745f6e61746976655f6d696e5f6368617273, 0x33, 0);
INSERT INTO `phpbb_config` VALUES (0x677a69705f636f6d7072657373, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x686f745f7468726573686f6c64, 0x3235, 0);
INSERT INTO `phpbb_config` VALUES (0x69636f6e735f70617468, 0x696d616765732f69636f6e73, 0);
INSERT INTO `phpbb_config` VALUES (0x696d675f6372656174655f7468756d626e61696c, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x696d675f646973706c61795f696e6c696e6564, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x696d675f696d616769636b, 0x2f7573722f6c6f63616c2f62696e2f, 0);
INSERT INTO `phpbb_config` VALUES (0x696d675f6c696e6b5f686569676874, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x696d675f6c696e6b5f7769647468, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x696d675f6d61785f686569676874, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x696d675f6d61785f7468756d625f7769647468, 0x343030, 0);
INSERT INTO `phpbb_config` VALUES (0x696d675f6d61785f7769647468, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x696d675f6d696e5f7468756d625f66696c6573697a65, 0x3132303030, 0);
INSERT INTO `phpbb_config` VALUES (0x69705f636865636b, 0x33, 0);
INSERT INTO `phpbb_config` VALUES (0x6a61625f656e61626c65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6a61625f686f7374, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6a61625f70617373776f7264, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6a61625f7061636b6167655f73697a65, 0x3230, 0);
INSERT INTO `phpbb_config` VALUES (0x6a61625f706f7274, 0x35323232, 0);
INSERT INTO `phpbb_config` VALUES (0x6a61625f7573655f73736c, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6a61625f757365726e616d65, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6c6461705f626173655f646e, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6c6461705f656d61696c, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6c6461705f70617373776f7264, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6c6461705f706f7274, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6c6461705f736572766572, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6c6461705f756964, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6c6461705f75736572, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6c6461705f757365725f66696c746572, '', 0);
INSERT INTO `phpbb_config` VALUES (0x6c696d69745f6c6f6164, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6c696d69745f7365617263685f6c6f6164, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f616e6f6e5f6c61737472656164, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f626972746864617973, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f6370665f6d656d6265726c697374, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f6370665f7669657770726f66696c65, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f6370665f76696577746f706963, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f64625f6c61737472656164, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f64625f747261636b, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f6a756d70626f78, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f6d6f64657261746f7273, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f6f6e6c696e65, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f6f6e6c696e655f677565737473, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f6f6e6c696e655f74696d65, 0x35, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f6f6e6c696e65747261636b, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f736561726368, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f74706c636f6d70696c65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6c6f61645f757365725f6163746976697479, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f6174746163686d656e7473, 0x33, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f6174746163686d656e74735f706d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f6175746f6c6f67696e5f74696d65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f66696c6573697a65, 0x323632313434, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f66696c6573697a655f706d, 0x323632313434, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f6c6f67696e5f617474656d707473, 0x33, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f6e616d655f6368617273, 0x3230, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f6e756d5f7365617263685f6b6579776f726473, 0x3130, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f706173735f6368617273, 0x313030, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f706f6c6c5f6f7074696f6e73, 0x3130, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f706f73745f6368617273, 0x3630303030, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f706f73745f666f6e745f73697a65, 0x323030, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f706f73745f696d675f686569676874, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f706f73745f696d675f7769647468, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f706f73745f736d696c696573, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f706f73745f75726c73, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f71756f74655f6465707468, 0x33, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f7265675f617474656d707473, 0x35, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f7369675f6368617273, 0x323535, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f7369675f666f6e745f73697a65, 0x323030, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f7369675f696d675f686569676874, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f7369675f696d675f7769647468, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f7369675f736d696c696573, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6d61785f7369675f75726c73, 0x35, 0);
INSERT INTO `phpbb_config` VALUES (0x6d696e5f6e616d655f6368617273, 0x33, 0);
INSERT INTO `phpbb_config` VALUES (0x6d696e5f706173735f6368617273, 0x36, 0);
INSERT INTO `phpbb_config` VALUES (0x6d696e5f706f73745f6368617273, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x6d696e5f7365617263685f617574686f725f6368617273, 0x33, 0);
INSERT INTO `phpbb_config` VALUES (0x6d696d655f7472696767657273, 0x626f64797c686561647c68746d6c7c696d677c706c61696e746578747c6120687265667c7072657c7363726970747c7461626c657c7469746c65, 0);
INSERT INTO `phpbb_config` VALUES (0x6e65775f6d656d6265725f706f73745f6c696d6974, 0x33, 0);
INSERT INTO `phpbb_config` VALUES (0x6e65775f6d656d6265725f67726f75705f64656661756c74, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x6f766572726964655f757365725f7374796c65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x706173735f636f6d706c6578, 0x504153535f545950455f414e59, 0);
INSERT INTO `phpbb_config` VALUES (0x706d5f656469745f74696d65, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x706d5f6d61785f626f786573, 0x34, 0);
INSERT INTO `phpbb_config` VALUES (0x706d5f6d61785f6d736773, 0x3530, 0);
INSERT INTO `phpbb_config` VALUES (0x706d5f6d61785f726563697069656e7473, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x706f7374735f7065725f70616765, 0x3130, 0);
INSERT INTO `phpbb_config` VALUES (0x7072696e745f706d, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x71756575655f696e74657276616c, 0x363030, 0);
INSERT INTO `phpbb_config` VALUES (0x72616e6b735f70617468, 0x696d616765732f72616e6b73, 0);
INSERT INTO `phpbb_config` VALUES (0x726571756972655f61637469766174696f6e, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x726566657265725f76616c69646174696f6e, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x7363726970745f70617468, 0x666f72756d2f, 0);
INSERT INTO `phpbb_config` VALUES (0x7365617263685f626c6f636b5f73697a65, 0x323530, 0);
INSERT INTO `phpbb_config` VALUES (0x7365617263685f6763, 0x37323030, 0);
INSERT INTO `phpbb_config` VALUES (0x7365617263685f696e74657276616c, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x7365617263685f616e6f6e796d6f75735f696e74657276616c, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x7365617263685f74797065, 0x66756c6c746578745f6e6174697665, 0);
INSERT INTO `phpbb_config` VALUES (0x7365617263685f73746f72655f726573756c7473, 0x31383030, 0);
INSERT INTO `phpbb_config` VALUES (0x7365637572655f616c6c6f775f64656e79, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x7365637572655f616c6c6f775f656d7074795f72656665726572, 0x31, 0);
INSERT INTO `phpbb_config` VALUES (0x7365637572655f646f776e6c6f616473, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x7365727665725f6e616d65, 0x7472656b73616e64747261636b732e636f6d, 0);
INSERT INTO `phpbb_config` VALUES (0x7365727665725f706f7274, 0x3830, 0);
INSERT INTO `phpbb_config` VALUES (0x7365727665725f70726f746f636f6c, 0x687474703a2f2f, 0);
INSERT INTO `phpbb_config` VALUES (0x73657373696f6e5f6763, 0x33363030, 0);
INSERT INTO `phpbb_config` VALUES (0x73657373696f6e5f6c656e677468, 0x33363030, 0);
INSERT INTO `phpbb_config` VALUES (0x736974655f64657363, 0x412073686f7274207465787420746f20646573637269626520796f757220666f72756d, 0);
INSERT INTO `phpbb_config` VALUES (0x736974656e616d65, 0x796f7572646f6d61696e2e636f6d, 0);
INSERT INTO `phpbb_config` VALUES (0x736d696c6965735f70617468, 0x696d616765732f736d696c696573, 0);
INSERT INTO `phpbb_config` VALUES (0x736d696c6965735f7065725f70616765, 0x3530, 0);
INSERT INTO `phpbb_config` VALUES (0x736d74705f617574685f6d6574686f64, 0x504c41494e, 0);
INSERT INTO `phpbb_config` VALUES (0x736d74705f64656c6976657279, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x736d74705f686f7374, '', 0);
INSERT INTO `phpbb_config` VALUES (0x736d74705f70617373776f7264, '', 0);
INSERT INTO `phpbb_config` VALUES (0x736d74705f706f7274, 0x3235, 0);
INSERT INTO `phpbb_config` VALUES (0x736d74705f757365726e616d65, '', 0);
INSERT INTO `phpbb_config` VALUES (0x746f706963735f7065725f70616765, 0x3235, 0);
INSERT INTO `phpbb_config` VALUES (0x74706c5f616c6c6f775f706870, 0x30, 0);
INSERT INTO `phpbb_config` VALUES (0x75706c6f61645f69636f6e735f70617468, 0x696d616765732f75706c6f61645f69636f6e73, 0);
INSERT INTO `phpbb_config` VALUES (0x75706c6f61645f70617468, 0x66696c6573, 0);
INSERT INTO `phpbb_config` VALUES (0x76657273696f6e, 0x332e302e372d504c31, 0);
INSERT INTO `phpbb_config` VALUES (0x7761726e696e67735f6578706972655f64617973, 0x3930, 0);
INSERT INTO `phpbb_config` VALUES (0x7761726e696e67735f6763, 0x3134343030, 0);
INSERT INTO `phpbb_config` VALUES (0x63616368655f6c6173745f6763, 0x31323832363738313639, 1);
INSERT INTO `phpbb_config` VALUES (0x63726f6e5f6c6f636b, 0x30, 1);
INSERT INTO `phpbb_config` VALUES (0x64617461626173655f6c6173745f6763, 0x31323832363738323332, 1);
INSERT INTO `phpbb_config` VALUES (0x6c6173745f71756575655f72756e, 0x30, 1);
INSERT INTO `phpbb_config` VALUES (0x6e65776573745f757365725f636f6c6f7572, 0x414130303030, 1);
INSERT INTO `phpbb_config` VALUES (0x6e65776573745f757365725f6964, 0x32, 1);
INSERT INTO `phpbb_config` VALUES (0x6e65776573745f757365726e616d65, 0x61646d696e, 1);
INSERT INTO `phpbb_config` VALUES (0x6e756d5f66696c6573, 0x30, 1);
INSERT INTO `phpbb_config` VALUES (0x6e756d5f706f737473, 0x31, 1);
INSERT INTO `phpbb_config` VALUES (0x6e756d5f746f70696373, 0x31, 1);
INSERT INTO `phpbb_config` VALUES (0x6e756d5f7573657273, 0x31, 1);
INSERT INTO `phpbb_config` VALUES (0x72616e645f73656564, 0x6632316431313934373861653331313666636431336539666564386638663261, 1);
INSERT INTO `phpbb_config` VALUES (0x72616e645f736565645f6c6173745f757064617465, 0x31323835393033353930, 1);
INSERT INTO `phpbb_config` VALUES (0x7265636f72645f6f6e6c696e655f64617465, 0x31323832363738313638, 1);
INSERT INTO `phpbb_config` VALUES (0x7265636f72645f6f6e6c696e655f7573657273, 0x33, 1);
INSERT INTO `phpbb_config` VALUES (0x7365617263685f696e646578696e675f7374617465, '', 1);
INSERT INTO `phpbb_config` VALUES (0x7365617263685f6c6173745f6763, 0x31323832363738363131, 1);
INSERT INTO `phpbb_config` VALUES (0x73657373696f6e5f6c6173745f6763, 0x31323832363738363132, 1);
INSERT INTO `phpbb_config` VALUES (0x75706c6f61645f6469725f73697a65, 0x30, 1);
INSERT INTO `phpbb_config` VALUES (0x7761726e696e67735f6c6173745f6763, 0x31323832363738313837, 1);
INSERT INTO `phpbb_config` VALUES (0x626f6172645f737461727464617465, 0x31323638333038303538, 0);
INSERT INTO `phpbb_config` VALUES (0x64656661756c745f6c616e67, 0x656e, 0);
INSERT INTO `phpbb_config` VALUES (0x7175657374696f6e6e616972655f756e697175655f6964, 0x34326263373162336564363565616234, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_confirm`
-- 

CREATE TABLE `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_confirm`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_disallow`
-- 

CREATE TABLE `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_disallow`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_drafts`
-- 

CREATE TABLE `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_drafts`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_extension_groups`
-- 

CREATE TABLE `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `phpbb_extension_groups`
-- 

INSERT INTO `phpbb_extension_groups` VALUES (1, 0x496d61676573, 1, 1, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES (2, 0x4172636869766573, 0, 1, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES (3, 0x506c61696e2054657874, 0, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES (4, 0x446f63756d656e7473, 0, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES (5, 0x5265616c204d65646961, 3, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES (6, 0x57696e646f7773204d65646961, 2, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES (7, 0x466c6173682046696c6573, 5, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES (8, 0x517569636b74696d65204d65646961, 6, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES (9, 0x446f776e6c6f616461626c652046696c6573, 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_extensions`
-- 

CREATE TABLE `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

-- 
-- Dumping data for table `phpbb_extensions`
-- 

INSERT INTO `phpbb_extensions` VALUES (1, 1, 0x676966);
INSERT INTO `phpbb_extensions` VALUES (2, 1, 0x706e67);
INSERT INTO `phpbb_extensions` VALUES (3, 1, 0x6a706567);
INSERT INTO `phpbb_extensions` VALUES (4, 1, 0x6a7067);
INSERT INTO `phpbb_extensions` VALUES (5, 1, 0x746966);
INSERT INTO `phpbb_extensions` VALUES (6, 1, 0x74696666);
INSERT INTO `phpbb_extensions` VALUES (7, 1, 0x746761);
INSERT INTO `phpbb_extensions` VALUES (8, 2, 0x67746172);
INSERT INTO `phpbb_extensions` VALUES (9, 2, 0x677a);
INSERT INTO `phpbb_extensions` VALUES (10, 2, 0x746172);
INSERT INTO `phpbb_extensions` VALUES (11, 2, 0x7a6970);
INSERT INTO `phpbb_extensions` VALUES (12, 2, 0x726172);
INSERT INTO `phpbb_extensions` VALUES (13, 2, 0x616365);
INSERT INTO `phpbb_extensions` VALUES (14, 2, 0x746f7272656e74);
INSERT INTO `phpbb_extensions` VALUES (15, 2, 0x74677a);
INSERT INTO `phpbb_extensions` VALUES (16, 2, 0x627a32);
INSERT INTO `phpbb_extensions` VALUES (17, 2, 0x377a);
INSERT INTO `phpbb_extensions` VALUES (18, 3, 0x747874);
INSERT INTO `phpbb_extensions` VALUES (19, 3, 0x63);
INSERT INTO `phpbb_extensions` VALUES (20, 3, 0x68);
INSERT INTO `phpbb_extensions` VALUES (21, 3, 0x637070);
INSERT INTO `phpbb_extensions` VALUES (22, 3, 0x687070);
INSERT INTO `phpbb_extensions` VALUES (23, 3, 0x64697a);
INSERT INTO `phpbb_extensions` VALUES (24, 3, 0x637376);
INSERT INTO `phpbb_extensions` VALUES (25, 3, 0x696e69);
INSERT INTO `phpbb_extensions` VALUES (26, 3, 0x6c6f67);
INSERT INTO `phpbb_extensions` VALUES (27, 3, 0x6a73);
INSERT INTO `phpbb_extensions` VALUES (28, 3, 0x786d6c);
INSERT INTO `phpbb_extensions` VALUES (29, 4, 0x786c73);
INSERT INTO `phpbb_extensions` VALUES (30, 4, 0x786c7378);
INSERT INTO `phpbb_extensions` VALUES (31, 4, 0x786c736d);
INSERT INTO `phpbb_extensions` VALUES (32, 4, 0x786c7362);
INSERT INTO `phpbb_extensions` VALUES (33, 4, 0x646f63);
INSERT INTO `phpbb_extensions` VALUES (34, 4, 0x646f6378);
INSERT INTO `phpbb_extensions` VALUES (35, 4, 0x646f636d);
INSERT INTO `phpbb_extensions` VALUES (36, 4, 0x646f74);
INSERT INTO `phpbb_extensions` VALUES (37, 4, 0x646f7478);
INSERT INTO `phpbb_extensions` VALUES (38, 4, 0x646f746d);
INSERT INTO `phpbb_extensions` VALUES (39, 4, 0x706466);
INSERT INTO `phpbb_extensions` VALUES (40, 4, 0x6169);
INSERT INTO `phpbb_extensions` VALUES (41, 4, 0x7073);
INSERT INTO `phpbb_extensions` VALUES (42, 4, 0x707074);
INSERT INTO `phpbb_extensions` VALUES (43, 4, 0x70707478);
INSERT INTO `phpbb_extensions` VALUES (44, 4, 0x7070746d);
INSERT INTO `phpbb_extensions` VALUES (45, 4, 0x6f6467);
INSERT INTO `phpbb_extensions` VALUES (46, 4, 0x6f6470);
INSERT INTO `phpbb_extensions` VALUES (47, 4, 0x6f6473);
INSERT INTO `phpbb_extensions` VALUES (48, 4, 0x6f6474);
INSERT INTO `phpbb_extensions` VALUES (49, 4, 0x727466);
INSERT INTO `phpbb_extensions` VALUES (50, 5, 0x726d);
INSERT INTO `phpbb_extensions` VALUES (51, 5, 0x72616d);
INSERT INTO `phpbb_extensions` VALUES (52, 6, 0x776d61);
INSERT INTO `phpbb_extensions` VALUES (53, 6, 0x776d76);
INSERT INTO `phpbb_extensions` VALUES (54, 7, 0x737766);
INSERT INTO `phpbb_extensions` VALUES (55, 8, 0x6d6f76);
INSERT INTO `phpbb_extensions` VALUES (56, 8, 0x6d3476);
INSERT INTO `phpbb_extensions` VALUES (57, 8, 0x6d3461);
INSERT INTO `phpbb_extensions` VALUES (58, 8, 0x6d7034);
INSERT INTO `phpbb_extensions` VALUES (59, 8, 0x336770);
INSERT INTO `phpbb_extensions` VALUES (60, 8, 0x336732);
INSERT INTO `phpbb_extensions` VALUES (61, 8, 0x7174);
INSERT INTO `phpbb_extensions` VALUES (62, 9, 0x6d706567);
INSERT INTO `phpbb_extensions` VALUES (63, 9, 0x6d7067);
INSERT INTO `phpbb_extensions` VALUES (64, 9, 0x6d7033);
INSERT INTO `phpbb_extensions` VALUES (65, 9, 0x6f6767);
INSERT INTO `phpbb_extensions` VALUES (66, 9, 0x6f676d);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_forums`
-- 

CREATE TABLE `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `phpbb_forums`
-- 

INSERT INTO `phpbb_forums` VALUES (1, 0, 1, 4, '', 0x596f75722066697273742063617465676f7279, '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 1, 1, 1, 2, '', 1282678149, 0x61646d696e, 0x414130303030, 32, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO `phpbb_forums` VALUES (2, 1, 2, 3, '', 0x596f757220666972737420666f72756d, 0x4465736372697074696f6e206f6620796f757220666972737420666f72756d2e, '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 1, 1, 1, 2, 0x57656c636f6d6520746f20706870424233, 1282678149, 0x61646d696e, 0x414130303030, 32, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_forums_access`
-- 

CREATE TABLE `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_forums_access`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_forums_track`
-- 

CREATE TABLE `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_forums_track`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_forums_watch`
-- 

CREATE TABLE `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_forums_watch`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_groups`
-- 

CREATE TABLE `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `phpbb_groups`
-- 

INSERT INTO `phpbb_groups` VALUES (1, 3, 0, 0, 0x475545535453, '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0);
INSERT INTO `phpbb_groups` VALUES (2, 3, 0, 0, 0x52454749535445524544, '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0);
INSERT INTO `phpbb_groups` VALUES (3, 3, 0, 0, 0x524547495354455245445f434f505041, '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0);
INSERT INTO `phpbb_groups` VALUES (4, 3, 0, 0, 0x474c4f42414c5f4d4f44455241544f5253, '', '', 7, '', 0, '', 0, 0, 0, 0, 0x303041413030, 0, 0, 0, 0, 1);
INSERT INTO `phpbb_groups` VALUES (5, 3, 1, 0, 0x41444d494e4953545241544f5253, '', '', 7, '', 0, '', 0, 0, 0, 0, 0x414130303030, 0, 0, 0, 0, 1);
INSERT INTO `phpbb_groups` VALUES (6, 3, 0, 0, 0x424f5453, '', '', 7, '', 0, '', 0, 0, 0, 0, 0x394538444137, 0, 0, 0, 5, 0);
INSERT INTO `phpbb_groups` VALUES (7, 3, 0, 0, 0x4e45574c595f52454749535445524544, '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_icons`
-- 

CREATE TABLE `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `phpbb_icons`
-- 

INSERT INTO `phpbb_icons` VALUES (1, 0x6d6973632f666972652e676966, 16, 16, 1, 1);
INSERT INTO `phpbb_icons` VALUES (2, 0x736d696c652f726564666163652e676966, 16, 16, 9, 1);
INSERT INTO `phpbb_icons` VALUES (3, 0x736d696c652f6d72677265656e2e676966, 16, 16, 10, 1);
INSERT INTO `phpbb_icons` VALUES (4, 0x6d6973632f68656172742e676966, 16, 16, 4, 1);
INSERT INTO `phpbb_icons` VALUES (5, 0x6d6973632f737461722e676966, 16, 16, 2, 1);
INSERT INTO `phpbb_icons` VALUES (6, 0x6d6973632f726164696f6163746976652e676966, 16, 16, 3, 1);
INSERT INTO `phpbb_icons` VALUES (7, 0x6d6973632f7468696e6b696e672e676966, 16, 16, 5, 1);
INSERT INTO `phpbb_icons` VALUES (8, 0x736d696c652f696e666f2e676966, 16, 16, 8, 1);
INSERT INTO `phpbb_icons` VALUES (9, 0x736d696c652f7175657374696f6e2e676966, 16, 16, 6, 1);
INSERT INTO `phpbb_icons` VALUES (10, 0x736d696c652f616c6572742e676966, 16, 16, 7, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_lang`
-- 

CREATE TABLE `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `phpbb_lang`
-- 

INSERT INTO `phpbb_lang` VALUES (1, 0x656e, 0x656e, 0x4272697469736820456e676c697368, 0x4272697469736820456e676c697368, 0x70687042422047726f7570);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_log`
-- 

CREATE TABLE `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `phpbb_log`
-- 

INSERT INTO `phpbb_log` VALUES (1, 0, 2, 0, 0, 0, 0x3138392e3138322e3133332e313330, 1282678149, 0x4c4f475f494e5354414c4c5f494e5354414c4c4544, 0x613a313a7b693a303b733a393a22332e302e372d504c31223b7d);
INSERT INTO `phpbb_log` VALUES (2, 0, 2, 0, 0, 0, 0x3138392e3138322e3133332e313330, 1282678238, 0x4c4f475f41444d494e5f415554485f53554343455353, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_moderator_cache`
-- 

CREATE TABLE `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_moderator_cache`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_modules`
-- 

CREATE TABLE `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=198 ;

-- 
-- Dumping data for table `phpbb_modules`
-- 

INSERT INTO `phpbb_modules` VALUES (1, 1, 1, '', 0x616370, 0, 1, 64, 0x4143505f4341545f47454e4552414c, '', '');
INSERT INTO `phpbb_modules` VALUES (2, 1, 1, '', 0x616370, 1, 4, 17, 0x4143505f515549434b5f414343455353, '', '');
INSERT INTO `phpbb_modules` VALUES (3, 1, 1, '', 0x616370, 1, 18, 41, 0x4143505f424f4152445f434f4e46494755524154494f4e, '', '');
INSERT INTO `phpbb_modules` VALUES (4, 1, 1, '', 0x616370, 1, 42, 49, 0x4143505f434c49454e545f434f4d4d554e49434154494f4e, '', '');
INSERT INTO `phpbb_modules` VALUES (5, 1, 1, '', 0x616370, 1, 50, 63, 0x4143505f5345525645525f434f4e46494755524154494f4e, '', '');
INSERT INTO `phpbb_modules` VALUES (6, 1, 1, '', 0x616370, 0, 65, 84, 0x4143505f4341545f464f52554d53, '', '');
INSERT INTO `phpbb_modules` VALUES (7, 1, 1, '', 0x616370, 6, 66, 71, 0x4143505f4d414e4147455f464f52554d53, '', '');
INSERT INTO `phpbb_modules` VALUES (8, 1, 1, '', 0x616370, 6, 72, 83, 0x4143505f464f52554d5f42415345445f5045524d495353494f4e53, '', '');
INSERT INTO `phpbb_modules` VALUES (9, 1, 1, '', 0x616370, 0, 85, 108, 0x4143505f4341545f504f5354494e47, '', '');
INSERT INTO `phpbb_modules` VALUES (10, 1, 1, '', 0x616370, 9, 86, 97, 0x4143505f4d45535341474553, '', '');
INSERT INTO `phpbb_modules` VALUES (11, 1, 1, '', 0x616370, 9, 98, 107, 0x4143505f4154544143484d454e5453, '', '');
INSERT INTO `phpbb_modules` VALUES (12, 1, 1, '', 0x616370, 0, 109, 164, 0x4143505f4341545f5553455247524f5550, '', '');
INSERT INTO `phpbb_modules` VALUES (13, 1, 1, '', 0x616370, 12, 110, 143, 0x4143505f4341545f5553455253, '', '');
INSERT INTO `phpbb_modules` VALUES (14, 1, 1, '', 0x616370, 12, 144, 151, 0x4143505f47524f555053, '', '');
INSERT INTO `phpbb_modules` VALUES (15, 1, 1, '', 0x616370, 12, 152, 163, 0x4143505f555345525f5345435552495459, '', '');
INSERT INTO `phpbb_modules` VALUES (16, 1, 1, '', 0x616370, 0, 165, 214, 0x4143505f4341545f5045524d495353494f4e53, '', '');
INSERT INTO `phpbb_modules` VALUES (17, 1, 1, '', 0x616370, 16, 168, 177, 0x4143505f474c4f42414c5f5045524d495353494f4e53, '', '');
INSERT INTO `phpbb_modules` VALUES (18, 1, 1, '', 0x616370, 16, 178, 189, 0x4143505f464f52554d5f42415345445f5045524d495353494f4e53, '', '');
INSERT INTO `phpbb_modules` VALUES (19, 1, 1, '', 0x616370, 16, 190, 199, 0x4143505f5045524d495353494f4e5f524f4c4553, '', '');
INSERT INTO `phpbb_modules` VALUES (20, 1, 1, '', 0x616370, 16, 200, 213, 0x4143505f5045524d495353494f4e5f4d41534b53, '', '');
INSERT INTO `phpbb_modules` VALUES (21, 1, 1, '', 0x616370, 0, 215, 228, 0x4143505f4341545f5354594c4553, '', '');
INSERT INTO `phpbb_modules` VALUES (22, 1, 1, '', 0x616370, 21, 216, 219, 0x4143505f5354594c455f4d414e4147454d454e54, '', '');
INSERT INTO `phpbb_modules` VALUES (23, 1, 1, '', 0x616370, 21, 220, 227, 0x4143505f5354594c455f434f4d504f4e454e5453, '', '');
INSERT INTO `phpbb_modules` VALUES (24, 1, 1, '', 0x616370, 0, 229, 248, 0x4143505f4341545f4d41494e54454e414e4345, '', '');
INSERT INTO `phpbb_modules` VALUES (25, 1, 1, '', 0x616370, 24, 230, 239, 0x4143505f464f52554d5f4c4f4753, '', '');
INSERT INTO `phpbb_modules` VALUES (26, 1, 1, '', 0x616370, 24, 240, 247, 0x4143505f4341545f4441544142415345, '', '');
INSERT INTO `phpbb_modules` VALUES (27, 1, 1, '', 0x616370, 0, 249, 274, 0x4143505f4341545f53595354454d, '', '');
INSERT INTO `phpbb_modules` VALUES (28, 1, 1, '', 0x616370, 27, 250, 253, 0x4143505f4155544f4d4154494f4e, '', '');
INSERT INTO `phpbb_modules` VALUES (29, 1, 1, '', 0x616370, 27, 254, 265, 0x4143505f47454e4552414c5f5441534b53, '', '');
INSERT INTO `phpbb_modules` VALUES (30, 1, 1, '', 0x616370, 27, 266, 273, 0x4143505f4d4f44554c455f4d414e4147454d454e54, '', '');
INSERT INTO `phpbb_modules` VALUES (31, 1, 1, '', 0x616370, 0, 275, 276, 0x4143505f4341545f444f545f4d4f4453, '', '');
INSERT INTO `phpbb_modules` VALUES (32, 1, 1, 0x6174746163686d656e7473, 0x616370, 3, 19, 20, 0x4143505f4154544143484d454e545f53455454494e4753, 0x617474616368, 0x61636c5f615f617474616368);
INSERT INTO `phpbb_modules` VALUES (33, 1, 1, 0x6174746163686d656e7473, 0x616370, 11, 99, 100, 0x4143505f4154544143484d454e545f53455454494e4753, 0x617474616368, 0x61636c5f615f617474616368);
INSERT INTO `phpbb_modules` VALUES (34, 1, 1, 0x6174746163686d656e7473, 0x616370, 11, 101, 102, 0x4143505f4d414e4147455f455854454e53494f4e53, 0x657874656e73696f6e73, 0x61636c5f615f617474616368);
INSERT INTO `phpbb_modules` VALUES (35, 1, 1, 0x6174746163686d656e7473, 0x616370, 11, 103, 104, 0x4143505f455854454e53494f4e5f47524f555053, 0x6578745f67726f757073, 0x61636c5f615f617474616368);
INSERT INTO `phpbb_modules` VALUES (36, 1, 1, 0x6174746163686d656e7473, 0x616370, 11, 105, 106, 0x4143505f4f525048414e5f4154544143484d454e5453, 0x6f727068616e, 0x61636c5f615f617474616368);
INSERT INTO `phpbb_modules` VALUES (37, 1, 1, 0x62616e, 0x616370, 15, 153, 154, 0x4143505f42414e5f454d41494c53, 0x656d61696c, 0x61636c5f615f62616e);
INSERT INTO `phpbb_modules` VALUES (38, 1, 1, 0x62616e, 0x616370, 15, 155, 156, 0x4143505f42414e5f495053, 0x6970, 0x61636c5f615f62616e);
INSERT INTO `phpbb_modules` VALUES (39, 1, 1, 0x62616e, 0x616370, 15, 157, 158, 0x4143505f42414e5f555345524e414d4553, 0x75736572, 0x61636c5f615f62616e);
INSERT INTO `phpbb_modules` VALUES (40, 1, 1, 0x6262636f646573, 0x616370, 10, 87, 88, 0x4143505f4242434f444553, 0x6262636f646573, 0x61636c5f615f6262636f6465);
INSERT INTO `phpbb_modules` VALUES (41, 1, 1, 0x626f617264, 0x616370, 3, 21, 22, 0x4143505f424f4152445f53455454494e4753, 0x73657474696e6773, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (42, 1, 1, 0x626f617264, 0x616370, 3, 23, 24, 0x4143505f424f4152445f4645415455524553, 0x6665617475726573, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (43, 1, 1, 0x626f617264, 0x616370, 3, 25, 26, 0x4143505f4156415441525f53455454494e4753, 0x617661746172, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (44, 1, 1, 0x626f617264, 0x616370, 3, 27, 28, 0x4143505f4d4553534147455f53455454494e4753, 0x6d657373616765, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (45, 1, 1, 0x626f617264, 0x616370, 10, 89, 90, 0x4143505f4d4553534147455f53455454494e4753, 0x6d657373616765, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (46, 1, 1, 0x626f617264, 0x616370, 3, 29, 30, 0x4143505f504f53545f53455454494e4753, 0x706f7374, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (47, 1, 1, 0x626f617264, 0x616370, 3, 31, 32, 0x4143505f5349474e41545552455f53455454494e4753, 0x7369676e6174757265, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (48, 1, 1, 0x626f617264, 0x616370, 3, 33, 34, 0x4143505f464545445f53455454494e4753, 0x66656564, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (49, 1, 1, 0x626f617264, 0x616370, 3, 35, 36, 0x4143505f52454749535445525f53455454494e4753, 0x726567697374726174696f6e, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (50, 1, 1, 0x626f617264, 0x616370, 4, 43, 44, 0x4143505f415554485f53455454494e4753, 0x61757468, 0x61636c5f615f736572766572);
INSERT INTO `phpbb_modules` VALUES (51, 1, 1, 0x626f617264, 0x616370, 4, 45, 46, 0x4143505f454d41494c5f53455454494e4753, 0x656d61696c, 0x61636c5f615f736572766572);
INSERT INTO `phpbb_modules` VALUES (52, 1, 1, 0x626f617264, 0x616370, 5, 51, 52, 0x4143505f434f4f4b49455f53455454494e4753, 0x636f6f6b6965, 0x61636c5f615f736572766572);
INSERT INTO `phpbb_modules` VALUES (53, 1, 1, 0x626f617264, 0x616370, 5, 53, 54, 0x4143505f5345525645525f53455454494e4753, 0x736572766572, 0x61636c5f615f736572766572);
INSERT INTO `phpbb_modules` VALUES (54, 1, 1, 0x626f617264, 0x616370, 5, 55, 56, 0x4143505f53454355524954595f53455454494e4753, 0x7365637572697479, 0x61636c5f615f736572766572);
INSERT INTO `phpbb_modules` VALUES (55, 1, 1, 0x626f617264, 0x616370, 5, 57, 58, 0x4143505f4c4f41445f53455454494e4753, 0x6c6f6164, 0x61636c5f615f736572766572);
INSERT INTO `phpbb_modules` VALUES (56, 1, 1, 0x626f7473, 0x616370, 29, 255, 256, 0x4143505f424f5453, 0x626f7473, 0x61636c5f615f626f7473);
INSERT INTO `phpbb_modules` VALUES (57, 1, 1, 0x63617074636861, 0x616370, 3, 37, 38, 0x4143505f56435f53455454494e4753, 0x76697375616c, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (58, 1, 0, 0x63617074636861, 0x616370, 3, 39, 40, 0x4143505f56435f434150544348415f444953504c4159, 0x696d67, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (59, 1, 1, 0x6461746162617365, 0x616370, 26, 241, 242, 0x4143505f4241434b5550, 0x6261636b7570, 0x61636c5f615f6261636b7570);
INSERT INTO `phpbb_modules` VALUES (60, 1, 1, 0x6461746162617365, 0x616370, 26, 243, 244, 0x4143505f524553544f5245, 0x726573746f7265, 0x61636c5f615f6261636b7570);
INSERT INTO `phpbb_modules` VALUES (61, 1, 1, 0x646973616c6c6f77, 0x616370, 15, 159, 160, 0x4143505f444953414c4c4f575f555345524e414d4553, 0x757365726e616d6573, 0x61636c5f615f6e616d6573);
INSERT INTO `phpbb_modules` VALUES (62, 1, 1, 0x656d61696c, 0x616370, 29, 257, 258, 0x4143505f4d4153535f454d41494c, 0x656d61696c, 0x61636c5f615f656d61696c202626206366675f656d61696c5f656e61626c65);
INSERT INTO `phpbb_modules` VALUES (63, 1, 1, 0x666f72756d73, 0x616370, 7, 67, 68, 0x4143505f4d414e4147455f464f52554d53, 0x6d616e616765, 0x61636c5f615f666f72756d);
INSERT INTO `phpbb_modules` VALUES (64, 1, 1, 0x67726f757073, 0x616370, 14, 145, 146, 0x4143505f47524f5550535f4d414e414745, 0x6d616e616765, 0x61636c5f615f67726f7570);
INSERT INTO `phpbb_modules` VALUES (65, 1, 1, 0x69636f6e73, 0x616370, 10, 91, 92, 0x4143505f49434f4e53, 0x69636f6e73, 0x61636c5f615f69636f6e73);
INSERT INTO `phpbb_modules` VALUES (66, 1, 1, 0x69636f6e73, 0x616370, 10, 93, 94, 0x4143505f534d494c494553, 0x736d696c696573, 0x61636c5f615f69636f6e73);
INSERT INTO `phpbb_modules` VALUES (67, 1, 1, 0x696e616374697665, 0x616370, 13, 113, 114, 0x4143505f494e4143544956455f5553455253, 0x6c697374, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (68, 1, 1, 0x6a6162626572, 0x616370, 4, 47, 48, 0x4143505f4a41424245525f53455454494e4753, 0x73657474696e6773, 0x61636c5f615f6a6162626572);
INSERT INTO `phpbb_modules` VALUES (69, 1, 1, 0x6c616e6775616765, 0x616370, 29, 259, 260, 0x4143505f4c414e47554147455f5041434b53, 0x6c616e675f7061636b73, 0x61636c5f615f6c616e6775616765);
INSERT INTO `phpbb_modules` VALUES (70, 1, 1, 0x6c6f6773, 0x616370, 25, 231, 232, 0x4143505f41444d494e5f4c4f4753, 0x61646d696e, 0x61636c5f615f766965776c6f6773);
INSERT INTO `phpbb_modules` VALUES (71, 1, 1, 0x6c6f6773, 0x616370, 25, 233, 234, 0x4143505f4d4f445f4c4f4753, 0x6d6f64, 0x61636c5f615f766965776c6f6773);
INSERT INTO `phpbb_modules` VALUES (72, 1, 1, 0x6c6f6773, 0x616370, 25, 235, 236, 0x4143505f55534552535f4c4f4753, 0x7573657273, 0x61636c5f615f766965776c6f6773);
INSERT INTO `phpbb_modules` VALUES (73, 1, 1, 0x6c6f6773, 0x616370, 25, 237, 238, 0x4143505f435249544943414c5f4c4f4753, 0x637269746963616c, 0x61636c5f615f766965776c6f6773);
INSERT INTO `phpbb_modules` VALUES (74, 1, 1, 0x6d61696e, 0x616370, 1, 2, 3, 0x4143505f494e444558, 0x6d61696e, '');
INSERT INTO `phpbb_modules` VALUES (75, 1, 1, 0x6d6f64756c6573, 0x616370, 30, 267, 268, 0x414350, 0x616370, 0x61636c5f615f6d6f64756c6573);
INSERT INTO `phpbb_modules` VALUES (76, 1, 1, 0x6d6f64756c6573, 0x616370, 30, 269, 270, 0x554350, 0x756370, 0x61636c5f615f6d6f64756c6573);
INSERT INTO `phpbb_modules` VALUES (77, 1, 1, 0x6d6f64756c6573, 0x616370, 30, 271, 272, 0x4d4350, 0x6d6370, 0x61636c5f615f6d6f64756c6573);
INSERT INTO `phpbb_modules` VALUES (78, 1, 1, 0x7065726d697373696f6e5f726f6c6573, 0x616370, 19, 191, 192, 0x4143505f41444d494e5f524f4c4553, 0x61646d696e5f726f6c6573, 0x61636c5f615f726f6c65732026262061636c5f615f6161757468);
INSERT INTO `phpbb_modules` VALUES (79, 1, 1, 0x7065726d697373696f6e5f726f6c6573, 0x616370, 19, 193, 194, 0x4143505f555345525f524f4c4553, 0x757365725f726f6c6573, 0x61636c5f615f726f6c65732026262061636c5f615f7561757468);
INSERT INTO `phpbb_modules` VALUES (80, 1, 1, 0x7065726d697373696f6e5f726f6c6573, 0x616370, 19, 195, 196, 0x4143505f4d4f445f524f4c4553, 0x6d6f645f726f6c6573, 0x61636c5f615f726f6c65732026262061636c5f615f6d61757468);
INSERT INTO `phpbb_modules` VALUES (81, 1, 1, 0x7065726d697373696f6e5f726f6c6573, 0x616370, 19, 197, 198, 0x4143505f464f52554d5f524f4c4553, 0x666f72756d5f726f6c6573, 0x61636c5f615f726f6c65732026262061636c5f615f6661757468);
INSERT INTO `phpbb_modules` VALUES (82, 1, 1, 0x7065726d697373696f6e73, 0x616370, 16, 166, 167, 0x4143505f5045524d495353494f4e53, 0x696e74726f, 0x61636c5f615f617574687573657273207c7c2061636c5f615f6175746867726f757073207c7c2061636c5f615f7669657761757468);
INSERT INTO `phpbb_modules` VALUES (83, 1, 0, 0x7065726d697373696f6e73, 0x616370, 20, 201, 202, 0x4143505f5045524d495353494f4e5f5452414345, 0x7472616365, 0x61636c5f615f7669657761757468);
INSERT INTO `phpbb_modules` VALUES (84, 1, 1, 0x7065726d697373696f6e73, 0x616370, 18, 179, 180, 0x4143505f464f52554d5f5045524d495353494f4e53, 0x73657474696e675f666f72756d5f6c6f63616c, 0x61636c5f615f6661757468202626202861636c5f615f617574687573657273207c7c2061636c5f615f6175746867726f75707329);
INSERT INTO `phpbb_modules` VALUES (85, 1, 1, 0x7065726d697373696f6e73, 0x616370, 18, 181, 182, 0x4143505f464f52554d5f5045524d495353494f4e535f434f5059, 0x73657474696e675f666f72756d5f636f7079, 0x61636c5f615f66617574682026262061636c5f615f6175746875736572732026262061636c5f615f6175746867726f7570732026262061636c5f615f6d61757468);
INSERT INTO `phpbb_modules` VALUES (86, 1, 1, 0x7065726d697373696f6e73, 0x616370, 18, 183, 184, 0x4143505f464f52554d5f4d4f44455241544f5253, 0x73657474696e675f6d6f645f6c6f63616c, 0x61636c5f615f6d61757468202626202861636c5f615f617574687573657273207c7c2061636c5f615f6175746867726f75707329);
INSERT INTO `phpbb_modules` VALUES (87, 1, 1, 0x7065726d697373696f6e73, 0x616370, 17, 169, 170, 0x4143505f55534552535f5045524d495353494f4e53, 0x73657474696e675f757365725f676c6f62616c, 0x61636c5f615f617574687573657273202626202861636c5f615f6161757468207c7c2061636c5f615f6d61757468207c7c2061636c5f615f756175746829);
INSERT INTO `phpbb_modules` VALUES (88, 1, 1, 0x7065726d697373696f6e73, 0x616370, 13, 115, 116, 0x4143505f55534552535f5045524d495353494f4e53, 0x73657474696e675f757365725f676c6f62616c, 0x61636c5f615f617574687573657273202626202861636c5f615f6161757468207c7c2061636c5f615f6d61757468207c7c2061636c5f615f756175746829);
INSERT INTO `phpbb_modules` VALUES (89, 1, 1, 0x7065726d697373696f6e73, 0x616370, 18, 185, 186, 0x4143505f55534552535f464f52554d5f5045524d495353494f4e53, 0x73657474696e675f757365725f6c6f63616c, 0x61636c5f615f617574687573657273202626202861636c5f615f6d61757468207c7c2061636c5f615f666175746829);
INSERT INTO `phpbb_modules` VALUES (90, 1, 1, 0x7065726d697373696f6e73, 0x616370, 13, 117, 118, 0x4143505f55534552535f464f52554d5f5045524d495353494f4e53, 0x73657474696e675f757365725f6c6f63616c, 0x61636c5f615f617574687573657273202626202861636c5f615f6d61757468207c7c2061636c5f615f666175746829);
INSERT INTO `phpbb_modules` VALUES (91, 1, 1, 0x7065726d697373696f6e73, 0x616370, 17, 171, 172, 0x4143505f47524f5550535f5045524d495353494f4e53, 0x73657474696e675f67726f75705f676c6f62616c, 0x61636c5f615f6175746867726f757073202626202861636c5f615f6161757468207c7c2061636c5f615f6d61757468207c7c2061636c5f615f756175746829);
INSERT INTO `phpbb_modules` VALUES (92, 1, 1, 0x7065726d697373696f6e73, 0x616370, 14, 147, 148, 0x4143505f47524f5550535f5045524d495353494f4e53, 0x73657474696e675f67726f75705f676c6f62616c, 0x61636c5f615f6175746867726f757073202626202861636c5f615f6161757468207c7c2061636c5f615f6d61757468207c7c2061636c5f615f756175746829);
INSERT INTO `phpbb_modules` VALUES (93, 1, 1, 0x7065726d697373696f6e73, 0x616370, 18, 187, 188, 0x4143505f47524f5550535f464f52554d5f5045524d495353494f4e53, 0x73657474696e675f67726f75705f6c6f63616c, 0x61636c5f615f6175746867726f757073202626202861636c5f615f6d61757468207c7c2061636c5f615f666175746829);
INSERT INTO `phpbb_modules` VALUES (94, 1, 1, 0x7065726d697373696f6e73, 0x616370, 14, 149, 150, 0x4143505f47524f5550535f464f52554d5f5045524d495353494f4e53, 0x73657474696e675f67726f75705f6c6f63616c, 0x61636c5f615f6175746867726f757073202626202861636c5f615f6d61757468207c7c2061636c5f615f666175746829);
INSERT INTO `phpbb_modules` VALUES (95, 1, 1, 0x7065726d697373696f6e73, 0x616370, 17, 173, 174, 0x4143505f41444d494e4953545241544f5253, 0x73657474696e675f61646d696e5f676c6f62616c, 0x61636c5f615f6161757468202626202861636c5f615f617574687573657273207c7c2061636c5f615f6175746867726f75707329);
INSERT INTO `phpbb_modules` VALUES (96, 1, 1, 0x7065726d697373696f6e73, 0x616370, 17, 175, 176, 0x4143505f474c4f42414c5f4d4f44455241544f5253, 0x73657474696e675f6d6f645f676c6f62616c, 0x61636c5f615f6d61757468202626202861636c5f615f617574687573657273207c7c2061636c5f615f6175746867726f75707329);
INSERT INTO `phpbb_modules` VALUES (97, 1, 1, 0x7065726d697373696f6e73, 0x616370, 20, 203, 204, 0x4143505f564945575f41444d494e5f5045524d495353494f4e53, 0x766965775f61646d696e5f676c6f62616c, 0x61636c5f615f7669657761757468);
INSERT INTO `phpbb_modules` VALUES (98, 1, 1, 0x7065726d697373696f6e73, 0x616370, 20, 205, 206, 0x4143505f564945575f555345525f5045524d495353494f4e53, 0x766965775f757365725f676c6f62616c, 0x61636c5f615f7669657761757468);
INSERT INTO `phpbb_modules` VALUES (99, 1, 1, 0x7065726d697373696f6e73, 0x616370, 20, 207, 208, 0x4143505f564945575f474c4f42414c5f4d4f445f5045524d495353494f4e53, 0x766965775f6d6f645f676c6f62616c, 0x61636c5f615f7669657761757468);
INSERT INTO `phpbb_modules` VALUES (100, 1, 1, 0x7065726d697373696f6e73, 0x616370, 20, 209, 210, 0x4143505f564945575f464f52554d5f4d4f445f5045524d495353494f4e53, 0x766965775f6d6f645f6c6f63616c, 0x61636c5f615f7669657761757468);
INSERT INTO `phpbb_modules` VALUES (101, 1, 1, 0x7065726d697373696f6e73, 0x616370, 20, 211, 212, 0x4143505f564945575f464f52554d5f5045524d495353494f4e53, 0x766965775f666f72756d5f6c6f63616c, 0x61636c5f615f7669657761757468);
INSERT INTO `phpbb_modules` VALUES (102, 1, 1, 0x7068705f696e666f, 0x616370, 29, 261, 262, 0x4143505f5048505f494e464f, 0x696e666f, 0x61636c5f615f706870696e666f);
INSERT INTO `phpbb_modules` VALUES (103, 1, 1, 0x70726f66696c65, 0x616370, 13, 119, 120, 0x4143505f435553544f4d5f50524f46494c455f4649454c4453, 0x70726f66696c65, 0x61636c5f615f70726f66696c65);
INSERT INTO `phpbb_modules` VALUES (104, 1, 1, 0x7072756e65, 0x616370, 7, 69, 70, 0x4143505f5052554e455f464f52554d53, 0x666f72756d73, 0x61636c5f615f7072756e65);
INSERT INTO `phpbb_modules` VALUES (105, 1, 1, 0x7072756e65, 0x616370, 15, 161, 162, 0x4143505f5052554e455f5553455253, 0x7573657273, 0x61636c5f615f7573657264656c);
INSERT INTO `phpbb_modules` VALUES (106, 1, 1, 0x72616e6b73, 0x616370, 13, 121, 122, 0x4143505f4d414e4147455f52414e4b53, 0x72616e6b73, 0x61636c5f615f72616e6b73);
INSERT INTO `phpbb_modules` VALUES (107, 1, 1, 0x726561736f6e73, 0x616370, 29, 263, 264, 0x4143505f4d414e4147455f524541534f4e53, 0x6d61696e, 0x61636c5f615f726561736f6e73);
INSERT INTO `phpbb_modules` VALUES (108, 1, 1, 0x736561726368, 0x616370, 5, 59, 60, 0x4143505f5345415243485f53455454494e4753, 0x73657474696e6773, 0x61636c5f615f736561726368);
INSERT INTO `phpbb_modules` VALUES (109, 1, 1, 0x736561726368, 0x616370, 26, 245, 246, 0x4143505f5345415243485f494e444558, 0x696e646578, 0x61636c5f615f736561726368);
INSERT INTO `phpbb_modules` VALUES (110, 1, 1, 0x73656e645f73746174697374696373, 0x616370, 5, 61, 62, 0x4143505f53454e445f53544154495354494353, 0x73656e645f73746174697374696373, 0x61636c5f615f736572766572);
INSERT INTO `phpbb_modules` VALUES (111, 1, 1, 0x7374796c6573, 0x616370, 22, 217, 218, 0x4143505f5354594c4553, 0x7374796c65, 0x61636c5f615f7374796c6573);
INSERT INTO `phpbb_modules` VALUES (112, 1, 1, 0x7374796c6573, 0x616370, 23, 221, 222, 0x4143505f54454d504c41544553, 0x74656d706c617465, 0x61636c5f615f7374796c6573);
INSERT INTO `phpbb_modules` VALUES (113, 1, 1, 0x7374796c6573, 0x616370, 23, 223, 224, 0x4143505f5448454d4553, 0x7468656d65, 0x61636c5f615f7374796c6573);
INSERT INTO `phpbb_modules` VALUES (114, 1, 1, 0x7374796c6573, 0x616370, 23, 225, 226, 0x4143505f494d41474553455453, 0x696d616765736574, 0x61636c5f615f7374796c6573);
INSERT INTO `phpbb_modules` VALUES (115, 1, 1, 0x757064617465, 0x616370, 28, 251, 252, 0x4143505f56455253494f4e5f434845434b, 0x76657273696f6e5f636865636b, 0x61636c5f615f626f617264);
INSERT INTO `phpbb_modules` VALUES (116, 1, 1, 0x7573657273, 0x616370, 13, 111, 112, 0x4143505f4d414e4147455f5553455253, 0x6f76657276696577, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (117, 1, 0, 0x7573657273, 0x616370, 13, 123, 124, 0x4143505f555345525f464545444241434b, 0x666565646261636b, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (118, 1, 0, 0x7573657273, 0x616370, 13, 125, 126, 0x4143505f555345525f5741524e494e4753, 0x7761726e696e6773, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (119, 1, 0, 0x7573657273, 0x616370, 13, 127, 128, 0x4143505f555345525f50524f46494c45, 0x70726f66696c65, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (120, 1, 0, 0x7573657273, 0x616370, 13, 129, 130, 0x4143505f555345525f5052454653, 0x7072656673, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (121, 1, 0, 0x7573657273, 0x616370, 13, 131, 132, 0x4143505f555345525f415641544152, 0x617661746172, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (122, 1, 0, 0x7573657273, 0x616370, 13, 133, 134, 0x4143505f555345525f52414e4b, 0x72616e6b, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (123, 1, 0, 0x7573657273, 0x616370, 13, 135, 136, 0x4143505f555345525f534947, 0x736967, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (124, 1, 0, 0x7573657273, 0x616370, 13, 137, 138, 0x4143505f555345525f47524f555053, 0x67726f757073, 0x61636c5f615f757365722026262061636c5f615f67726f7570);
INSERT INTO `phpbb_modules` VALUES (125, 1, 0, 0x7573657273, 0x616370, 13, 139, 140, 0x4143505f555345525f5045524d, 0x7065726d, 0x61636c5f615f757365722026262061636c5f615f7669657761757468);
INSERT INTO `phpbb_modules` VALUES (126, 1, 0, 0x7573657273, 0x616370, 13, 141, 142, 0x4143505f555345525f415454414348, 0x617474616368, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (127, 1, 1, 0x776f726473, 0x616370, 10, 95, 96, 0x4143505f574f524453, 0x776f726473, 0x61636c5f615f776f726473);
INSERT INTO `phpbb_modules` VALUES (128, 1, 1, 0x7573657273, 0x616370, 2, 5, 6, 0x4143505f4d414e4147455f5553455253, 0x6f76657276696577, 0x61636c5f615f75736572);
INSERT INTO `phpbb_modules` VALUES (129, 1, 1, 0x67726f757073, 0x616370, 2, 7, 8, 0x4143505f47524f5550535f4d414e414745, 0x6d616e616765, 0x61636c5f615f67726f7570);
INSERT INTO `phpbb_modules` VALUES (130, 1, 1, 0x666f72756d73, 0x616370, 2, 9, 10, 0x4143505f4d414e4147455f464f52554d53, 0x6d616e616765, 0x61636c5f615f666f72756d);
INSERT INTO `phpbb_modules` VALUES (131, 1, 1, 0x6c6f6773, 0x616370, 2, 11, 12, 0x4143505f4d4f445f4c4f4753, 0x6d6f64, 0x61636c5f615f766965776c6f6773);
INSERT INTO `phpbb_modules` VALUES (132, 1, 1, 0x626f7473, 0x616370, 2, 13, 14, 0x4143505f424f5453, 0x626f7473, 0x61636c5f615f626f7473);
INSERT INTO `phpbb_modules` VALUES (133, 1, 1, 0x7068705f696e666f, 0x616370, 2, 15, 16, 0x4143505f5048505f494e464f, 0x696e666f, 0x61636c5f615f706870696e666f);
INSERT INTO `phpbb_modules` VALUES (134, 1, 1, 0x7065726d697373696f6e73, 0x616370, 8, 73, 74, 0x4143505f464f52554d5f5045524d495353494f4e53, 0x73657474696e675f666f72756d5f6c6f63616c, 0x61636c5f615f6661757468202626202861636c5f615f617574687573657273207c7c2061636c5f615f6175746867726f75707329);
INSERT INTO `phpbb_modules` VALUES (135, 1, 1, 0x7065726d697373696f6e73, 0x616370, 8, 75, 76, 0x4143505f464f52554d5f5045524d495353494f4e535f434f5059, 0x73657474696e675f666f72756d5f636f7079, 0x61636c5f615f66617574682026262061636c5f615f6175746875736572732026262061636c5f615f6175746867726f7570732026262061636c5f615f6d61757468);
INSERT INTO `phpbb_modules` VALUES (136, 1, 1, 0x7065726d697373696f6e73, 0x616370, 8, 77, 78, 0x4143505f464f52554d5f4d4f44455241544f5253, 0x73657474696e675f6d6f645f6c6f63616c, 0x61636c5f615f6d61757468202626202861636c5f615f617574687573657273207c7c2061636c5f615f6175746867726f75707329);
INSERT INTO `phpbb_modules` VALUES (137, 1, 1, 0x7065726d697373696f6e73, 0x616370, 8, 79, 80, 0x4143505f55534552535f464f52554d5f5045524d495353494f4e53, 0x73657474696e675f757365725f6c6f63616c, 0x61636c5f615f617574687573657273202626202861636c5f615f6d61757468207c7c2061636c5f615f666175746829);
INSERT INTO `phpbb_modules` VALUES (138, 1, 1, 0x7065726d697373696f6e73, 0x616370, 8, 81, 82, 0x4143505f47524f5550535f464f52554d5f5045524d495353494f4e53, 0x73657474696e675f67726f75705f6c6f63616c, 0x61636c5f615f6175746867726f757073202626202861636c5f615f6d61757468207c7c2061636c5f615f666175746829);
INSERT INTO `phpbb_modules` VALUES (139, 1, 1, '', 0x6d6370, 0, 1, 10, 0x4d43505f4d41494e, '', '');
INSERT INTO `phpbb_modules` VALUES (140, 1, 1, '', 0x6d6370, 0, 11, 18, 0x4d43505f5155455545, '', '');
INSERT INTO `phpbb_modules` VALUES (141, 1, 1, '', 0x6d6370, 0, 19, 32, 0x4d43505f5245504f525453, '', '');
INSERT INTO `phpbb_modules` VALUES (142, 1, 1, '', 0x6d6370, 0, 33, 38, 0x4d43505f4e4f544553, '', '');
INSERT INTO `phpbb_modules` VALUES (143, 1, 1, '', 0x6d6370, 0, 39, 48, 0x4d43505f5741524e, '', '');
INSERT INTO `phpbb_modules` VALUES (144, 1, 1, '', 0x6d6370, 0, 49, 56, 0x4d43505f4c4f4753, '', '');
INSERT INTO `phpbb_modules` VALUES (145, 1, 1, '', 0x6d6370, 0, 57, 64, 0x4d43505f42414e, '', '');
INSERT INTO `phpbb_modules` VALUES (146, 1, 1, 0x62616e, 0x6d6370, 145, 58, 59, 0x4d43505f42414e5f555345524e414d4553, 0x75736572, 0x61636c5f6d5f62616e);
INSERT INTO `phpbb_modules` VALUES (147, 1, 1, 0x62616e, 0x6d6370, 145, 60, 61, 0x4d43505f42414e5f495053, 0x6970, 0x61636c5f6d5f62616e);
INSERT INTO `phpbb_modules` VALUES (148, 1, 1, 0x62616e, 0x6d6370, 145, 62, 63, 0x4d43505f42414e5f454d41494c53, 0x656d61696c, 0x61636c5f6d5f62616e);
INSERT INTO `phpbb_modules` VALUES (149, 1, 1, 0x6c6f6773, 0x6d6370, 144, 50, 51, 0x4d43505f4c4f47535f46524f4e54, 0x66726f6e74, 0x61636c5f6d5f207c7c2061636c665f6d5f);
INSERT INTO `phpbb_modules` VALUES (150, 1, 1, 0x6c6f6773, 0x6d6370, 144, 52, 53, 0x4d43505f4c4f47535f464f52554d5f56494557, 0x666f72756d5f6c6f6773, 0x61636c5f6d5f2c246964);
INSERT INTO `phpbb_modules` VALUES (151, 1, 1, 0x6c6f6773, 0x6d6370, 144, 54, 55, 0x4d43505f4c4f47535f544f5049435f56494557, 0x746f7069635f6c6f6773, 0x61636c5f6d5f2c246964);
INSERT INTO `phpbb_modules` VALUES (152, 1, 1, 0x6d61696e, 0x6d6370, 139, 2, 3, 0x4d43505f4d41494e5f46524f4e54, 0x66726f6e74, '');
INSERT INTO `phpbb_modules` VALUES (153, 1, 1, 0x6d61696e, 0x6d6370, 139, 4, 5, 0x4d43505f4d41494e5f464f52554d5f56494557, 0x666f72756d5f76696577, 0x61636c5f6d5f2c246964);
INSERT INTO `phpbb_modules` VALUES (154, 1, 1, 0x6d61696e, 0x6d6370, 139, 6, 7, 0x4d43505f4d41494e5f544f5049435f56494557, 0x746f7069635f76696577, 0x61636c5f6d5f2c246964);
INSERT INTO `phpbb_modules` VALUES (155, 1, 1, 0x6d61696e, 0x6d6370, 139, 8, 9, 0x4d43505f4d41494e5f504f53545f44455441494c53, 0x706f73745f64657461696c73, 0x61636c5f6d5f2c246964207c7c2028212469642026262061636c665f6d5f29);
INSERT INTO `phpbb_modules` VALUES (156, 1, 1, 0x6e6f746573, 0x6d6370, 142, 34, 35, 0x4d43505f4e4f5445535f46524f4e54, 0x66726f6e74, '');
INSERT INTO `phpbb_modules` VALUES (157, 1, 1, 0x6e6f746573, 0x6d6370, 142, 36, 37, 0x4d43505f4e4f5445535f55534552, 0x757365725f6e6f746573, '');
INSERT INTO `phpbb_modules` VALUES (158, 1, 1, 0x706d5f7265706f727473, 0x6d6370, 141, 20, 21, 0x4d43505f504d5f5245504f5254535f4f50454e, 0x706d5f7265706f727473, 0x61636c665f6d5f7265706f7274);
INSERT INTO `phpbb_modules` VALUES (159, 1, 1, 0x706d5f7265706f727473, 0x6d6370, 141, 22, 23, 0x4d43505f504d5f5245504f5254535f434c4f534544, 0x706d5f7265706f7274735f636c6f736564, 0x61636c665f6d5f7265706f7274);
INSERT INTO `phpbb_modules` VALUES (160, 1, 1, 0x706d5f7265706f727473, 0x6d6370, 141, 24, 25, 0x4d43505f504d5f5245504f52545f44455441494c53, 0x706d5f7265706f72745f64657461696c73, 0x61636c665f6d5f7265706f7274);
INSERT INTO `phpbb_modules` VALUES (161, 1, 1, 0x7175657565, 0x6d6370, 140, 12, 13, 0x4d43505f51554555455f554e415050524f5645445f544f50494353, 0x756e617070726f7665645f746f70696373, 0x61636c665f6d5f617070726f7665);
INSERT INTO `phpbb_modules` VALUES (162, 1, 1, 0x7175657565, 0x6d6370, 140, 14, 15, 0x4d43505f51554555455f554e415050524f5645445f504f535453, 0x756e617070726f7665645f706f737473, 0x61636c665f6d5f617070726f7665);
INSERT INTO `phpbb_modules` VALUES (163, 1, 1, 0x7175657565, 0x6d6370, 140, 16, 17, 0x4d43505f51554555455f415050524f56455f44455441494c53, 0x617070726f76655f64657461696c73, 0x61636c5f6d5f617070726f76652c246964207c7c2028212469642026262061636c665f6d5f617070726f766529);
INSERT INTO `phpbb_modules` VALUES (164, 1, 1, 0x7265706f727473, 0x6d6370, 141, 26, 27, 0x4d43505f5245504f5254535f4f50454e, 0x7265706f727473, 0x61636c665f6d5f7265706f7274);
INSERT INTO `phpbb_modules` VALUES (165, 1, 1, 0x7265706f727473, 0x6d6370, 141, 28, 29, 0x4d43505f5245504f5254535f434c4f534544, 0x7265706f7274735f636c6f736564, 0x61636c665f6d5f7265706f7274);
INSERT INTO `phpbb_modules` VALUES (166, 1, 1, 0x7265706f727473, 0x6d6370, 141, 30, 31, 0x4d43505f5245504f52545f44455441494c53, 0x7265706f72745f64657461696c73, 0x61636c5f6d5f7265706f72742c246964207c7c2028212469642026262061636c665f6d5f7265706f727429);
INSERT INTO `phpbb_modules` VALUES (167, 1, 1, 0x7761726e, 0x6d6370, 143, 40, 41, 0x4d43505f5741524e5f46524f4e54, 0x66726f6e74, 0x61636c665f6d5f7761726e);
INSERT INTO `phpbb_modules` VALUES (168, 1, 1, 0x7761726e, 0x6d6370, 143, 42, 43, 0x4d43505f5741524e5f4c495354, 0x6c697374, 0x61636c665f6d5f7761726e);
INSERT INTO `phpbb_modules` VALUES (169, 1, 1, 0x7761726e, 0x6d6370, 143, 44, 45, 0x4d43505f5741524e5f55534552, 0x7761726e5f75736572, 0x61636c665f6d5f7761726e);
INSERT INTO `phpbb_modules` VALUES (170, 1, 1, 0x7761726e, 0x6d6370, 143, 46, 47, 0x4d43505f5741524e5f504f5354, 0x7761726e5f706f7374, 0x61636c5f6d5f7761726e2026262061636c5f665f726561642c246964);
INSERT INTO `phpbb_modules` VALUES (171, 1, 1, '', 0x756370, 0, 1, 12, 0x5543505f4d41494e, '', '');
INSERT INTO `phpbb_modules` VALUES (172, 1, 1, '', 0x756370, 0, 13, 22, 0x5543505f50524f46494c45, '', '');
INSERT INTO `phpbb_modules` VALUES (173, 1, 1, '', 0x756370, 0, 23, 30, 0x5543505f5052454653, '', '');
INSERT INTO `phpbb_modules` VALUES (174, 1, 1, '', 0x756370, 0, 31, 42, 0x5543505f504d, '', '');
INSERT INTO `phpbb_modules` VALUES (175, 1, 1, '', 0x756370, 0, 43, 48, 0x5543505f5553455247524f555053, '', '');
INSERT INTO `phpbb_modules` VALUES (176, 1, 1, '', 0x756370, 0, 49, 54, 0x5543505f5a45425241, '', '');
INSERT INTO `phpbb_modules` VALUES (177, 1, 1, 0x6174746163686d656e7473, 0x756370, 171, 10, 11, 0x5543505f4d41494e5f4154544143484d454e5453, 0x6174746163686d656e7473, 0x61636c5f755f617474616368);
INSERT INTO `phpbb_modules` VALUES (178, 1, 1, 0x67726f757073, 0x756370, 175, 44, 45, 0x5543505f5553455247524f5550535f4d454d424552, 0x6d656d62657273686970, '');
INSERT INTO `phpbb_modules` VALUES (179, 1, 1, 0x67726f757073, 0x756370, 175, 46, 47, 0x5543505f5553455247524f5550535f4d414e414745, 0x6d616e616765, '');
INSERT INTO `phpbb_modules` VALUES (180, 1, 1, 0x6d61696e, 0x756370, 171, 2, 3, 0x5543505f4d41494e5f46524f4e54, 0x66726f6e74, '');
INSERT INTO `phpbb_modules` VALUES (181, 1, 1, 0x6d61696e, 0x756370, 171, 4, 5, 0x5543505f4d41494e5f53554253435249424544, 0x73756273637269626564, '');
INSERT INTO `phpbb_modules` VALUES (182, 1, 1, 0x6d61696e, 0x756370, 171, 6, 7, 0x5543505f4d41494e5f424f4f4b4d41524b53, 0x626f6f6b6d61726b73, 0x6366675f616c6c6f775f626f6f6b6d61726b73);
INSERT INTO `phpbb_modules` VALUES (183, 1, 1, 0x6d61696e, 0x756370, 171, 8, 9, 0x5543505f4d41494e5f445241465453, 0x647261667473, '');
INSERT INTO `phpbb_modules` VALUES (184, 1, 0, 0x706d, 0x756370, 174, 32, 33, 0x5543505f504d5f56494557, 0x76696577, 0x6366675f616c6c6f775f707269766d7367);
INSERT INTO `phpbb_modules` VALUES (185, 1, 1, 0x706d, 0x756370, 174, 34, 35, 0x5543505f504d5f434f4d504f5345, 0x636f6d706f7365, 0x6366675f616c6c6f775f707269766d7367);
INSERT INTO `phpbb_modules` VALUES (186, 1, 1, 0x706d, 0x756370, 174, 36, 37, 0x5543505f504d5f445241465453, 0x647261667473, 0x6366675f616c6c6f775f707269766d7367);
INSERT INTO `phpbb_modules` VALUES (187, 1, 1, 0x706d, 0x756370, 174, 38, 39, 0x5543505f504d5f4f5054494f4e53, 0x6f7074696f6e73, 0x6366675f616c6c6f775f707269766d7367);
INSERT INTO `phpbb_modules` VALUES (188, 1, 0, 0x706d, 0x756370, 174, 40, 41, 0x5543505f504d5f504f5055505f5449544c45, 0x706f707570, 0x6366675f616c6c6f775f707269766d7367);
INSERT INTO `phpbb_modules` VALUES (189, 1, 1, 0x7072656673, 0x756370, 173, 24, 25, 0x5543505f50524546535f504552534f4e414c, 0x706572736f6e616c, '');
INSERT INTO `phpbb_modules` VALUES (190, 1, 1, 0x7072656673, 0x756370, 173, 26, 27, 0x5543505f50524546535f504f5354, 0x706f7374, '');
INSERT INTO `phpbb_modules` VALUES (191, 1, 1, 0x7072656673, 0x756370, 173, 28, 29, 0x5543505f50524546535f56494557, 0x76696577, '');
INSERT INTO `phpbb_modules` VALUES (192, 1, 1, 0x70726f66696c65, 0x756370, 172, 14, 15, 0x5543505f50524f46494c455f50524f46494c455f494e464f, 0x70726f66696c655f696e666f, '');
INSERT INTO `phpbb_modules` VALUES (193, 1, 1, 0x70726f66696c65, 0x756370, 172, 16, 17, 0x5543505f50524f46494c455f5349474e4154555245, 0x7369676e6174757265, '');
INSERT INTO `phpbb_modules` VALUES (194, 1, 1, 0x70726f66696c65, 0x756370, 172, 18, 19, 0x5543505f50524f46494c455f415641544152, 0x617661746172, '');
INSERT INTO `phpbb_modules` VALUES (195, 1, 1, 0x70726f66696c65, 0x756370, 172, 20, 21, 0x5543505f50524f46494c455f5245475f44455441494c53, 0x7265675f64657461696c73, '');
INSERT INTO `phpbb_modules` VALUES (196, 1, 1, 0x7a65627261, 0x756370, 176, 50, 51, 0x5543505f5a454252415f465249454e4453, 0x667269656e6473, '');
INSERT INTO `phpbb_modules` VALUES (197, 1, 1, 0x7a65627261, 0x756370, 176, 52, 53, 0x5543505f5a454252415f464f4553, 0x666f6573, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_poll_options`
-- 

CREATE TABLE `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_poll_options`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_poll_votes`
-- 

CREATE TABLE `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_poll_votes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_posts`
-- 

CREATE TABLE `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `post_approved` (`post_approved`),
  KEY `post_username` (`post_username`),
  KEY `tid_post_time` (`topic_id`,`post_time`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `phpbb_posts`
-- 

INSERT INTO `phpbb_posts` VALUES (1, 1, 2, 2, 0, 0x3138392e3138322e3133332e313330, 1282678150, 1, 0, 1, 1, 1, 1, '', 'Welcome to phpBB3', 0x5468697320697320616e206578616d706c6520706f737420696e20796f75722070687042423320696e7374616c6c6174696f6e2e2045766572797468696e67207365656d7320746f20626520776f726b696e672e20596f75206d61792064656c657465207468697320706f737420696620796f75206c696b6520616e6420636f6e74696e756520746f2073657420757020796f757220626f6172642e20447572696e672074686520696e7374616c6c6174696f6e2070726f6365737320796f75722066697273742063617465676f727920616e6420796f757220666972737420666f72756d206172652061737369676e656420616e20617070726f70726961746520736574206f66207065726d697373696f6e7320666f722074686520707265646566696e6564207573657267726f7570732061646d696e6973747261746f72732c20626f74732c20676c6f62616c206d6f64657261746f72732c206775657374732c207265676973746572656420757365727320616e64207265676973746572656420434f5050412075736572732e20496620796f7520616c736f2063686f6f736520746f2064656c65746520796f75722066697273742063617465676f727920616e6420796f757220666972737420666f72756d2c20646f206e6f7420666f7267657420746f2061737369676e207065726d697373696f6e7320666f7220616c6c207468657365207573657267726f75707320666f7220616c6c206e65772063617465676f7269657320616e6420666f72756d7320796f75206372656174652e204974206973207265636f6d6d656e64656420746f2072656e616d6520796f75722066697273742063617465676f727920616e6420796f757220666972737420666f72756d20616e6420636f7079207065726d697373696f6e732066726f6d207468657365207768696c65206372656174696e67206e65772063617465676f7269657320616e6420666f72756d732e20486176652066756e21, 0x3564643638336231376636343164616638346330343062666566633538636539, 0, '', '', 1, 0, '', 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_privmsgs`
-- 

CREATE TABLE `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_privmsgs`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_privmsgs_folder`
-- 

CREATE TABLE `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_privmsgs_folder`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_privmsgs_rules`
-- 

CREATE TABLE `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_privmsgs_rules`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_privmsgs_to`
-- 

CREATE TABLE `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_privmsgs_to`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_profile_fields`
-- 

CREATE TABLE `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_profile_fields`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_profile_fields_data`
-- 

CREATE TABLE `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_profile_fields_data`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_profile_fields_lang`
-- 

CREATE TABLE `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_profile_fields_lang`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_profile_lang`
-- 

CREATE TABLE `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_profile_lang`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_ranks`
-- 

CREATE TABLE `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `phpbb_ranks`
-- 

INSERT INTO `phpbb_ranks` VALUES (1, 0x536974652041646d696e, 0, 1, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_reports`
-- 

CREATE TABLE `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_reports`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_reports_reasons`
-- 

CREATE TABLE `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `phpbb_reports_reasons`
-- 

INSERT INTO `phpbb_reports_reasons` VALUES (1, 0x776172657a, 0x54686520706f737420636f6e7461696e73206c696e6b7320746f20696c6c6567616c206f72207069726174656420736f6674776172652e, 1);
INSERT INTO `phpbb_reports_reasons` VALUES (2, 0x7370616d, 0x546865207265706f7274656420706f73742068617320746865206f6e6c7920707572706f736520746f2061647665727469736520666f7220612077656273697465206f7220616e6f746865722070726f647563742e, 2);
INSERT INTO `phpbb_reports_reasons` VALUES (3, 0x6f66665f746f706963, 0x546865207265706f7274656420706f7374206973206f666620746f7069632e, 3);
INSERT INTO `phpbb_reports_reasons` VALUES (4, 0x6f74686572, 0x546865207265706f7274656420706f737420646f6573206e6f742066697420696e746f20616e79206f746865722063617465676f72792c20706c656173652075736520746865206675727468657220696e666f726d6174696f6e206669656c642e, 4);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_search_results`
-- 

CREATE TABLE `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_search_results`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_search_wordlist`
-- 

CREATE TABLE `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=59 ;

-- 
-- Dumping data for table `phpbb_search_wordlist`
-- 

INSERT INTO `phpbb_search_wordlist` VALUES (1, 0x74686973, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (2, 0x6578616d706c65, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (3, 0x706f7374, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (4, 0x796f7572, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (5, 0x706870626233, 0, 2);
INSERT INTO `phpbb_search_wordlist` VALUES (6, 0x696e7374616c6c6174696f6e, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (7, 0x65766572797468696e67, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (8, 0x7365656d73, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (9, 0x776f726b696e67, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (10, 0x796f75, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (11, 0x6d6179, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (12, 0x64656c657465, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (13, 0x6c696b65, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (14, 0x616e64, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (15, 0x636f6e74696e7565, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (16, 0x736574, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (17, 0x626f617264, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (18, 0x647572696e67, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (19, 0x746865, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (20, 0x70726f63657373, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (21, 0x6669727374, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (22, 0x63617465676f7279, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (23, 0x666f72756d, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (24, 0x617265, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (25, 0x61737369676e6564, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (26, 0x617070726f707269617465, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (27, 0x7065726d697373696f6e73, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (28, 0x666f72, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (29, 0x707265646566696e6564, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (30, 0x7573657267726f757073, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (31, 0x61646d696e6973747261746f7273, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (32, 0x626f7473, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (33, 0x676c6f62616c, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (34, 0x6d6f64657261746f7273, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (35, 0x677565737473, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (36, 0x72656769737465726564, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (37, 0x7573657273, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (38, 0x636f707061, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (39, 0x616c736f, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (40, 0x63686f6f7365, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (41, 0x6e6f74, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (42, 0x666f72676574, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (43, 0x61737369676e, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (44, 0x616c6c, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (45, 0x7468657365, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (46, 0x6e6577, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (47, 0x63617465676f72696573, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (48, 0x666f72756d73, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (49, 0x637265617465, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (50, 0x7265636f6d6d656e646564, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (51, 0x72656e616d65, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (52, 0x636f7079, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (53, 0x66726f6d, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (54, 0x7768696c65, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (55, 0x6372656174696e67, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (56, 0x68617665, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (57, 0x66756e, 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES (58, 0x77656c636f6d65, 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_search_wordmatch`
-- 

CREATE TABLE `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_search_wordmatch`
-- 

INSERT INTO `phpbb_search_wordmatch` VALUES (1, 1, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 2, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 3, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 4, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 5, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 5, 1);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 6, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 7, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 8, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 9, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 10, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 11, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 12, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 13, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 14, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 15, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 16, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 17, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 18, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 19, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 20, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 21, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 22, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 23, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 24, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 25, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 26, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 27, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 28, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 29, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 30, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 31, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 32, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 33, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 34, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 35, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 36, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 37, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 38, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 39, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 40, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 41, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 42, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 43, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 44, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 45, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 46, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 47, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 48, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 49, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 50, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 51, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 52, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 53, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 54, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 55, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 56, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 57, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES (1, 58, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_sessions`
-- 

CREATE TABLE `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_sessions`
-- 

INSERT INTO `phpbb_sessions` VALUES (0x6333316166653337366263643931623536306262656261663863613530623139, 1, 0, 1282678150, 1282678150, 1282678150, 0x3232302e3232372e38392e323337, 0x4d6f7a696c6c612f352e30202857696e646f77733b20553b2057696e646f7773204e5420352e313b20656e2d55533b2072763a312e392e302e313829204765636b6f2f323031303032303232302046697265666f782f332e302e3138, '', 0x696e7374616c6c2f696e6465782e7068703f6d6f64653d696e7374616c6c267375623d66696e616c, 1, 0, 0);
INSERT INTO `phpbb_sessions` VALUES (0x6162313262613330633862376231333837316638383633383733323639626637, 2, 0, 1282678150, 1282678150, 1282678150, 0x3232302e3232372e38392e323337, 0x4d6f7a696c6c612f352e30202857696e646f77733b20553b2057696e646f7773204e5420352e313b20656e2d55533b2072763a312e392e302e313829204765636b6f2f323031303032303232302046697265666f782f332e302e3138, '', 0x61646d2f696e6465782e7068703f693d73656e645f73746174697374696373266d6f64653d73656e645f73746174697374696373, 1, 0, 1);
INSERT INTO `phpbb_sessions` VALUES (0x6438626535633832336339313732386565653633373632383831306130313837, 1, 0, 1282682170, 1282682170, 1282682170, 0x36362e3130342e3235322e3930, 0x4d6f7a696c6c612f342e302028636f6d70617469626c653b204d53494520382e303b2057696e646f7773204e5420362e303b20574f5736343b2054726964656e742f342e303b20534c4343313b202e4e455420434c5220322e302e35303732373b202e4e455420434c5220332e302e33303631383b202e4e455420434c5220332e352e33303732393b20496e666f506174682e3229, '', 0x696e6465782e706870, 1, 0, 0);
INSERT INTO `phpbb_sessions` VALUES (0x3738386263643934363430313361633435396265303132656136303065383936, 2, 0, 1282678238, 1282678238, 1282679234, 0x3138392e3138322e3133332e313330, 0x4d6f7a696c6c612f352e30202857696e646f77733b20553b2057696e646f7773204e5420362e313b20656e2d555329204170706c655765624b69742f3533332e3420284b48544d4c2c206c696b65204765636b6f29204368726f6d652f352e302e3337352e313237205361666172692f3533332e34, '', 0x61646d2f696e6465782e7068703f693d31, 1, 1, 1);
INSERT INTO `phpbb_sessions` VALUES (0x6331353362616165663165333830616633343038306133653534353337386532, 2, 0, 1282678639, 1282678639, 1282682120, 0x36392e3232382e3235312e313730, 0x4d6f7a696c6c612f352e30202857696e646f77733b20553b2057696e646f7773204e5420352e313b20656e2d555329204170706c655765624b69742f3533332e3420284b48544d4c2c206c696b65204765636b6f29204368726f6d652f352e302e3337352e313237205361666172692f3533332e34, '', 0x7563702e7068703f693d313732, 1, 0, 0);
INSERT INTO `phpbb_sessions` VALUES (0x3131376261343161363964663462663239646134613965383430666632333431, 16, 0, 1285903590, 1285903590, 1285903590, 0x36392e33362e3138352e313038, 0x4d6f7a696c6c612f352e302028636f6d70617469626c653b20476f6f676c65626f742f322e313b202b687474703a2f2f7777772e676f6f676c652e636f6d2f626f742e68746d6c29, '', 0x696e6465782e706870, 1, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_sessions_keys`
-- 

CREATE TABLE `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_sessions_keys`
-- 

INSERT INTO `phpbb_sessions_keys` VALUES (0x3939653932623334393264303231386364356462663862653434386235366331, 2, 0x3138392e3138322e3133332e313330, 1282678238);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_sitelist`
-- 

CREATE TABLE `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_sitelist`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_smilies`
-- 

CREATE TABLE `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

-- 
-- Dumping data for table `phpbb_smilies`
-- 

INSERT INTO `phpbb_smilies` VALUES (1, 0x3a44, 0x56657279204861707079, 0x69636f6e5f655f6269676772696e2e676966, 15, 17, 1, 1);
INSERT INTO `phpbb_smilies` VALUES (2, 0x3a2d44, 0x56657279204861707079, 0x69636f6e5f655f6269676772696e2e676966, 15, 17, 2, 1);
INSERT INTO `phpbb_smilies` VALUES (3, 0x3a6772696e3a, 0x56657279204861707079, 0x69636f6e5f655f6269676772696e2e676966, 15, 17, 3, 1);
INSERT INTO `phpbb_smilies` VALUES (4, 0x3a29, 0x536d696c65, 0x69636f6e5f655f736d696c652e676966, 15, 17, 4, 1);
INSERT INTO `phpbb_smilies` VALUES (5, 0x3a2d29, 0x536d696c65, 0x69636f6e5f655f736d696c652e676966, 15, 17, 5, 1);
INSERT INTO `phpbb_smilies` VALUES (6, 0x3a736d696c653a, 0x536d696c65, 0x69636f6e5f655f736d696c652e676966, 15, 17, 6, 1);
INSERT INTO `phpbb_smilies` VALUES (7, 0x3b29, 0x57696e6b, 0x69636f6e5f655f77696e6b2e676966, 15, 17, 7, 1);
INSERT INTO `phpbb_smilies` VALUES (8, 0x3b2d29, 0x57696e6b, 0x69636f6e5f655f77696e6b2e676966, 15, 17, 8, 1);
INSERT INTO `phpbb_smilies` VALUES (9, 0x3a77696e6b3a, 0x57696e6b, 0x69636f6e5f655f77696e6b2e676966, 15, 17, 9, 1);
INSERT INTO `phpbb_smilies` VALUES (10, 0x3a28, 0x536164, 0x69636f6e5f655f7361642e676966, 15, 17, 10, 1);
INSERT INTO `phpbb_smilies` VALUES (11, 0x3a2d28, 0x536164, 0x69636f6e5f655f7361642e676966, 15, 17, 11, 1);
INSERT INTO `phpbb_smilies` VALUES (12, 0x3a7361643a, 0x536164, 0x69636f6e5f655f7361642e676966, 15, 17, 12, 1);
INSERT INTO `phpbb_smilies` VALUES (13, 0x3a6f, 0x537572707269736564, 0x69636f6e5f655f7375727072697365642e676966, 15, 17, 13, 1);
INSERT INTO `phpbb_smilies` VALUES (14, 0x3a2d6f, 0x537572707269736564, 0x69636f6e5f655f7375727072697365642e676966, 15, 17, 14, 1);
INSERT INTO `phpbb_smilies` VALUES (15, 0x3a65656b3a, 0x537572707269736564, 0x69636f6e5f655f7375727072697365642e676966, 15, 17, 15, 1);
INSERT INTO `phpbb_smilies` VALUES (16, 0x3a73686f636b3a, 0x53686f636b6564, 0x69636f6e5f65656b2e676966, 15, 17, 16, 1);
INSERT INTO `phpbb_smilies` VALUES (17, 0x3a3f, 0x436f6e6675736564, 0x69636f6e5f655f636f6e66757365642e676966, 15, 17, 17, 1);
INSERT INTO `phpbb_smilies` VALUES (18, 0x3a2d3f, 0x436f6e6675736564, 0x69636f6e5f655f636f6e66757365642e676966, 15, 17, 18, 1);
INSERT INTO `phpbb_smilies` VALUES (19, 0x3a3f3f3f3a, 0x436f6e6675736564, 0x69636f6e5f655f636f6e66757365642e676966, 15, 17, 19, 1);
INSERT INTO `phpbb_smilies` VALUES (20, 0x382d29, 0x436f6f6c, 0x69636f6e5f636f6f6c2e676966, 15, 17, 20, 1);
INSERT INTO `phpbb_smilies` VALUES (21, 0x3a636f6f6c3a, 0x436f6f6c, 0x69636f6e5f636f6f6c2e676966, 15, 17, 21, 1);
INSERT INTO `phpbb_smilies` VALUES (22, 0x3a6c6f6c3a, 0x4c61756768696e67, 0x69636f6e5f6c6f6c2e676966, 15, 17, 22, 1);
INSERT INTO `phpbb_smilies` VALUES (23, 0x3a78, 0x4d6164, 0x69636f6e5f6d61642e676966, 15, 17, 23, 1);
INSERT INTO `phpbb_smilies` VALUES (24, 0x3a2d78, 0x4d6164, 0x69636f6e5f6d61642e676966, 15, 17, 24, 1);
INSERT INTO `phpbb_smilies` VALUES (25, 0x3a6d61643a, 0x4d6164, 0x69636f6e5f6d61642e676966, 15, 17, 25, 1);
INSERT INTO `phpbb_smilies` VALUES (26, 0x3a50, 0x52617a7a, 0x69636f6e5f72617a7a2e676966, 15, 17, 26, 1);
INSERT INTO `phpbb_smilies` VALUES (27, 0x3a2d50, 0x52617a7a, 0x69636f6e5f72617a7a2e676966, 15, 17, 27, 1);
INSERT INTO `phpbb_smilies` VALUES (28, 0x3a72617a7a3a, 0x52617a7a, 0x69636f6e5f72617a7a2e676966, 15, 17, 28, 1);
INSERT INTO `phpbb_smilies` VALUES (29, 0x3a6f6f70733a, 0x456d626172726173736564, 0x69636f6e5f726564666163652e676966, 15, 17, 29, 1);
INSERT INTO `phpbb_smilies` VALUES (30, 0x3a6372793a, 0x437279696e67206f72205665727920536164, 0x69636f6e5f6372792e676966, 15, 17, 30, 1);
INSERT INTO `phpbb_smilies` VALUES (31, 0x3a6576696c3a, 0x4576696c206f722056657279204d6164, 0x69636f6e5f6576696c2e676966, 15, 17, 31, 1);
INSERT INTO `phpbb_smilies` VALUES (32, 0x3a747769737465643a, 0x54776973746564204576696c, 0x69636f6e5f747769737465642e676966, 15, 17, 32, 1);
INSERT INTO `phpbb_smilies` VALUES (33, 0x3a726f6c6c3a, 0x526f6c6c696e672045796573, 0x69636f6e5f726f6c6c657965732e676966, 15, 17, 33, 1);
INSERT INTO `phpbb_smilies` VALUES (34, 0x3a213a, 0x4578636c616d6174696f6e, 0x69636f6e5f6578636c61696d2e676966, 15, 17, 34, 1);
INSERT INTO `phpbb_smilies` VALUES (35, 0x3a3f3a, 0x5175657374696f6e, 0x69636f6e5f7175657374696f6e2e676966, 15, 17, 35, 1);
INSERT INTO `phpbb_smilies` VALUES (36, 0x3a696465613a, 0x49646561, 0x69636f6e5f696465612e676966, 15, 17, 36, 1);
INSERT INTO `phpbb_smilies` VALUES (37, 0x3a6172726f773a, 0x4172726f77, 0x69636f6e5f6172726f772e676966, 15, 17, 37, 1);
INSERT INTO `phpbb_smilies` VALUES (38, 0x3a7c, 0x4e65757472616c, 0x69636f6e5f6e65757472616c2e676966, 15, 17, 38, 1);
INSERT INTO `phpbb_smilies` VALUES (39, 0x3a2d7c, 0x4e65757472616c, 0x69636f6e5f6e65757472616c2e676966, 15, 17, 39, 1);
INSERT INTO `phpbb_smilies` VALUES (40, 0x3a6d72677265656e3a, 0x4d722e20477265656e, 0x69636f6e5f6d72677265656e2e676966, 15, 17, 40, 1);
INSERT INTO `phpbb_smilies` VALUES (41, 0x3a6765656b3a, 0x4765656b, 0x69636f6e5f655f6765656b2e676966, 17, 17, 41, 1);
INSERT INTO `phpbb_smilies` VALUES (42, 0x3a756765656b3a, 0x55626572204765656b, 0x69636f6e5f655f756765656b2e676966, 17, 18, 42, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_styles`
-- 

CREATE TABLE `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `theme_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`),
  KEY `template_id` (`template_id`),
  KEY `theme_id` (`theme_id`),
  KEY `imageset_id` (`imageset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `phpbb_styles`
-- 

INSERT INTO `phpbb_styles` VALUES (1, 0x70726f73696c766572, 0x26636f70793b2070687042422047726f7570, 1, 1, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_styles_imageset`
-- 

CREATE TABLE `phpbb_styles_imageset` (
  `imageset_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `imageset_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`imageset_id`),
  UNIQUE KEY `imgset_nm` (`imageset_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `phpbb_styles_imageset`
-- 

INSERT INTO `phpbb_styles_imageset` VALUES (1, 0x70726f73696c766572, 0x26636f70793b2070687042422047726f7570, 0x70726f73696c766572);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_styles_imageset_data`
-- 

CREATE TABLE `phpbb_styles_imageset_data` (
  `image_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_filename` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `image_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `i_d` (`imageset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=79 ;

-- 
-- Dumping data for table `phpbb_styles_imageset_data`
-- 

INSERT INTO `phpbb_styles_imageset_data` VALUES (1, 0x736974655f6c6f676f, 0x736974655f6c6f676f2e676966, '', 52, 139, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (2, 0x666f72756d5f6c696e6b, 0x666f72756d5f6c696e6b2e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (3, 0x666f72756d5f72656164, 0x666f72756d5f726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (4, 0x666f72756d5f726561645f6c6f636b6564, 0x666f72756d5f726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (5, 0x666f72756d5f726561645f737562666f72756d, 0x666f72756d5f726561645f737562666f72756d2e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (6, 0x666f72756d5f756e72656164, 0x666f72756d5f756e726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (7, 0x666f72756d5f756e726561645f6c6f636b6564, 0x666f72756d5f756e726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (8, 0x666f72756d5f756e726561645f737562666f72756d, 0x666f72756d5f756e726561645f737562666f72756d2e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (9, 0x746f7069635f6d6f766564, 0x746f7069635f6d6f7665642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (10, 0x746f7069635f72656164, 0x746f7069635f726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (11, 0x746f7069635f726561645f6d696e65, 0x746f7069635f726561645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (12, 0x746f7069635f726561645f686f74, 0x746f7069635f726561645f686f742e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (13, 0x746f7069635f726561645f686f745f6d696e65, 0x746f7069635f726561645f686f745f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (14, 0x746f7069635f726561645f6c6f636b6564, 0x746f7069635f726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (15, 0x746f7069635f726561645f6c6f636b65645f6d696e65, 0x746f7069635f726561645f6c6f636b65645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (16, 0x746f7069635f756e72656164, 0x746f7069635f756e726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (17, 0x746f7069635f756e726561645f6d696e65, 0x746f7069635f756e726561645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (18, 0x746f7069635f756e726561645f686f74, 0x746f7069635f756e726561645f686f742e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (19, 0x746f7069635f756e726561645f686f745f6d696e65, 0x746f7069635f756e726561645f686f745f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (20, 0x746f7069635f756e726561645f6c6f636b6564, 0x746f7069635f756e726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (21, 0x746f7069635f756e726561645f6c6f636b65645f6d696e65, 0x746f7069635f756e726561645f6c6f636b65645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (22, 0x737469636b795f72656164, 0x737469636b795f726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (23, 0x737469636b795f726561645f6d696e65, 0x737469636b795f726561645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (24, 0x737469636b795f726561645f6c6f636b6564, 0x737469636b795f726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (25, 0x737469636b795f726561645f6c6f636b65645f6d696e65, 0x737469636b795f726561645f6c6f636b65645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (26, 0x737469636b795f756e72656164, 0x737469636b795f756e726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (27, 0x737469636b795f756e726561645f6d696e65, 0x737469636b795f756e726561645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (28, 0x737469636b795f756e726561645f6c6f636b6564, 0x737469636b795f756e726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (29, 0x737469636b795f756e726561645f6c6f636b65645f6d696e65, 0x737469636b795f756e726561645f6c6f636b65645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (30, 0x616e6e6f756e63655f72656164, 0x616e6e6f756e63655f726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (31, 0x616e6e6f756e63655f726561645f6d696e65, 0x616e6e6f756e63655f726561645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (32, 0x616e6e6f756e63655f726561645f6c6f636b6564, 0x616e6e6f756e63655f726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (33, 0x616e6e6f756e63655f726561645f6c6f636b65645f6d696e65, 0x616e6e6f756e63655f726561645f6c6f636b65645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (34, 0x616e6e6f756e63655f756e72656164, 0x616e6e6f756e63655f756e726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (35, 0x616e6e6f756e63655f756e726561645f6d696e65, 0x616e6e6f756e63655f756e726561645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (36, 0x616e6e6f756e63655f756e726561645f6c6f636b6564, 0x616e6e6f756e63655f756e726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (37, 0x616e6e6f756e63655f756e726561645f6c6f636b65645f6d696e65, 0x616e6e6f756e63655f756e726561645f6c6f636b65645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (38, 0x676c6f62616c5f72656164, 0x616e6e6f756e63655f726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (39, 0x676c6f62616c5f726561645f6d696e65, 0x616e6e6f756e63655f726561645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (40, 0x676c6f62616c5f726561645f6c6f636b6564, 0x616e6e6f756e63655f726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (41, 0x676c6f62616c5f726561645f6c6f636b65645f6d696e65, 0x616e6e6f756e63655f726561645f6c6f636b65645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (42, 0x676c6f62616c5f756e72656164, 0x616e6e6f756e63655f756e726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (43, 0x676c6f62616c5f756e726561645f6d696e65, 0x616e6e6f756e63655f756e726561645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (44, 0x676c6f62616c5f756e726561645f6c6f636b6564, 0x616e6e6f756e63655f756e726561645f6c6f636b65642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (45, 0x676c6f62616c5f756e726561645f6c6f636b65645f6d696e65, 0x616e6e6f756e63655f756e726561645f6c6f636b65645f6d696e652e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (46, 0x706d5f72656164, 0x746f7069635f726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (47, 0x706d5f756e72656164, 0x746f7069635f756e726561642e676966, '', 27, 27, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (48, 0x69636f6e5f6261636b5f746f70, 0x69636f6e5f6261636b5f746f702e676966, '', 11, 11, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (49, 0x69636f6e5f636f6e746163745f61696d, 0x69636f6e5f636f6e746163745f61696d2e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (50, 0x69636f6e5f636f6e746163745f656d61696c, 0x69636f6e5f636f6e746163745f656d61696c2e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (51, 0x69636f6e5f636f6e746163745f696371, 0x69636f6e5f636f6e746163745f6963712e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (52, 0x69636f6e5f636f6e746163745f6a6162626572, 0x69636f6e5f636f6e746163745f6a61626265722e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (53, 0x69636f6e5f636f6e746163745f6d736e6d, 0x69636f6e5f636f6e746163745f6d736e6d2e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (54, 0x69636f6e5f636f6e746163745f777777, 0x69636f6e5f636f6e746163745f7777772e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (55, 0x69636f6e5f636f6e746163745f7961686f6f, 0x69636f6e5f636f6e746163745f7961686f6f2e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (56, 0x69636f6e5f706f73745f64656c657465, 0x69636f6e5f706f73745f64656c6574652e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (57, 0x69636f6e5f706f73745f696e666f, 0x69636f6e5f706f73745f696e666f2e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (58, 0x69636f6e5f706f73745f7265706f7274, 0x69636f6e5f706f73745f7265706f72742e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (59, 0x69636f6e5f706f73745f746172676574, 0x69636f6e5f706f73745f7461726765742e676966, '', 9, 11, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (60, 0x69636f6e5f706f73745f7461726765745f756e72656164, 0x69636f6e5f706f73745f7461726765745f756e726561642e676966, '', 9, 11, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (61, 0x69636f6e5f746f7069635f617474616368, 0x69636f6e5f746f7069635f6174746163682e676966, '', 10, 7, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (62, 0x69636f6e5f746f7069635f6c6174657374, 0x69636f6e5f746f7069635f6c61746573742e676966, '', 9, 11, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (63, 0x69636f6e5f746f7069635f6e6577657374, 0x69636f6e5f746f7069635f6e65776573742e676966, '', 9, 11, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (64, 0x69636f6e5f746f7069635f7265706f72746564, 0x69636f6e5f746f7069635f7265706f727465642e676966, '', 14, 16, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (65, 0x69636f6e5f746f7069635f756e617070726f766564, 0x69636f6e5f746f7069635f756e617070726f7665642e676966, '', 14, 16, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (66, 0x69636f6e5f757365725f7761726e, 0x69636f6e5f757365725f7761726e2e676966, '', 20, 20, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (67, 0x737562666f72756d5f72656164, 0x737562666f72756d5f726561642e676966, '', 9, 11, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (68, 0x737562666f72756d5f756e72656164, 0x737562666f72756d5f756e726561642e676966, '', 9, 11, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (69, 0x69636f6e5f636f6e746163745f706d, 0x69636f6e5f636f6e746163745f706d2e676966, 0x656e, 20, 28, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (70, 0x69636f6e5f706f73745f65646974, 0x69636f6e5f706f73745f656469742e676966, 0x656e, 20, 42, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (71, 0x69636f6e5f706f73745f71756f7465, 0x69636f6e5f706f73745f71756f74652e676966, 0x656e, 20, 54, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (72, 0x69636f6e5f757365725f6f6e6c696e65, 0x69636f6e5f757365725f6f6e6c696e652e676966, 0x656e, 58, 58, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (73, 0x627574746f6e5f706d5f666f7277617264, 0x627574746f6e5f706d5f666f72776172642e676966, 0x656e, 25, 96, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (74, 0x627574746f6e5f706d5f6e6577, 0x627574746f6e5f706d5f6e65772e676966, 0x656e, 25, 84, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (75, 0x627574746f6e5f706d5f7265706c79, 0x627574746f6e5f706d5f7265706c792e676966, 0x656e, 25, 96, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (76, 0x627574746f6e5f746f7069635f6c6f636b6564, 0x627574746f6e5f746f7069635f6c6f636b65642e676966, 0x656e, 25, 88, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (77, 0x627574746f6e5f746f7069635f6e6577, 0x627574746f6e5f746f7069635f6e65772e676966, 0x656e, 25, 96, 1);
INSERT INTO `phpbb_styles_imageset_data` VALUES (78, 0x627574746f6e5f746f7069635f7265706c79, 0x627574746f6e5f746f7069635f7265706c792e676966, 0x656e, 25, 96, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_styles_template`
-- 

CREATE TABLE `phpbb_styles_template` (
  `template_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `template_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_inherits_id` int(4) unsigned NOT NULL DEFAULT '0',
  `template_inherit_path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `tmplte_nm` (`template_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `phpbb_styles_template`
-- 

INSERT INTO `phpbb_styles_template` VALUES (1, 0x70726f73696c766572, 0x26636f70793b2070687042422047726f7570, 0x70726f73696c766572, 0x6c4e673d, 0, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_styles_template_data`
-- 

CREATE TABLE `phpbb_styles_template_data` (
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template_filename` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_included` text COLLATE utf8_bin NOT NULL,
  `template_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `template_data` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `tid` (`template_id`),
  KEY `tfn` (`template_filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_styles_template_data`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_styles_theme`
-- 

CREATE TABLE `phpbb_styles_theme` (
  `theme_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `theme_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`theme_id`),
  UNIQUE KEY `theme_name` (`theme_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `phpbb_styles_theme`
-- 

INSERT INTO `phpbb_styles_theme` VALUES (1, 0x70726f73696c766572, 0x26636f70793b2070687042422047726f7570, 0x70726f73696c766572, 1, 1282678169, 0x2f2a2020706870424220332e30205374796c652053686565740a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a095374796c65206e616d653a090970726f53696c7665720a094261736564206f6e207374796c653a0970726f53696c766572202874686973206973207468652064656661756c742070687042422033207374796c65290a094f726967696e616c20617574686f723a09737562426c7565202820687474703a2f2f7777772e737562426c75652e636f6d2f20290a094d6f6469666965642062793a09090a090a09436f7079726967687420323030362070687042422047726f7570202820687474703a2f2f7777772e70687062622e636f6d2f20290a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a2a2f0a0a2f2a2047656e6572616c2070726f53696c766572204d61726b7570205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2a207b0a092f2a2052657365742062726f77736572732064656661756c74206d617267696e2c2070616464696e6720616e6420666f6e742073697a6573202a2f0a096d617267696e3a20303b0a0970616464696e673a20303b0a7d0a0a68746d6c207b0a09666f6e742d73697a653a20313030253b0a092f2a20416c776179732073686f772061207363726f6c6c62617220666f722073686f7274207061676573202d2073746f707320746865206a756d70207768656e20746865207363726f6c6c62617220617070656172732e206e6f6e2d49452062726f7773657273202a2f0a096865696768743a20313031253b0a7d0a0a626f6479207b0a092f2a20546578742d53697a696e67207769746820656d733a20687474703a2f2f7777772e636c61676e75742e636f6d2f626c6f672f3334382f202a2f0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09636f6c6f723a20233832383238323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a092f2a666f6e742d73697a653a2036322e35253b09090920546869732073657473207468652064656661756c7420666f6e742073697a6520746f206265206571756976616c656e7420746f2031307078202a2f0a09666f6e742d73697a653a20313070783b0a096d617267696e3a20303b0a0970616464696e673a203132707820303b0a7d0a0a6831207b0a092f2a20466f72756d206e616d65202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a096d617267696e2d72696768743a2032303070783b0a09636f6c6f723a20234646464646463b0a096d617267696e2d746f703a20313570783b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d73697a653a2032656d3b0a7d0a0a6832207b0a092f2a20466f72756d20686561646572207469746c6573202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233366336633663b0a09666f6e742d73697a653a2032656d3b0a096d617267696e3a20302e38656d203020302e32656d20303b0a7d0a0a68322e736f6c6f207b0a096d617267696e2d626f74746f6d3a2031656d3b0a7d0a0a6833207b0a092f2a205375622d686561646572732028616c736f207573656420617320706f737420686561646572732c2062757420646566696e6564206c6174657229202a2f0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09666f6e742d7765696768743a20626f6c643b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a096d617267696e2d626f74746f6d3a203370783b0a0970616464696e672d626f74746f6d3a203270783b0a09666f6e742d73697a653a20312e3035656d3b0a09636f6c6f723a20233938393839383b0a096d617267696e2d746f703a20323070783b0a7d0a0a6834207b0a092f2a20466f72756d20616e6420746f706963206c697374207469746c6573202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e33656d3b0a7d0a0a70207b0a096c696e652d6865696768743a20312e33656d3b0a09666f6e742d73697a653a20312e31656d3b0a096d617267696e2d626f74746f6d3a20312e35656d3b0a7d0a0a696d67207b0a09626f726465722d77696474683a20303b0a7d0a0a6872207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a09626f726465723a2030206e6f6e6520234646464646463b0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0a096865696768743a203170783b0a096d617267696e3a2035707820303b0a09646973706c61793a20626c6f636b3b0a09636c6561723a20626f74683b0a7d0a0a68722e646173686564207b0a09626f726465722d746f703a203170782064617368656420234343434343433b0a096d617267696e3a203130707820303b0a7d0a0a68722e64697669646572207b0a09646973706c61793a206e6f6e653b0a7d0a0a702e7269676874207b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2f2a204d61696e20626c6f636b730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2377726170207b0a0970616464696e673a203020323070783b0a096d696e2d77696474683a2036353070783b0a7d0a0a2373696d706c652d77726170207b0a0970616464696e673a2036707820313070783b0a7d0a0a23706167652d626f6479207b0a096d617267696e3a2034707820303b0a09636c6561723a20626f74683b0a7d0a0a23706167652d666f6f746572207b0a09636c6561723a20626f74683b0a7d0a0a23706167652d666f6f746572206833207b0a096d617267696e2d746f703a20323070783b0a7d0a0a236c6f676f207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a0970616464696e673a20313070782031337078203020313070783b0a7d0a0a61236c6f676f3a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a2053656172636820626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a237365617263682d626f78207b0a09636f6c6f723a20234646464646463b0a09706f736974696f6e3a2072656c61746976653b0a096d617267696e2d746f703a20333070783b0a096d617267696e2d72696768743a203570783b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a09746578742d616c69676e3a2072696768743b0a0977686974652d73706163653a206e6f777261703b202f2a20466f72204f70657261202a2f0a7d0a0a237365617263682d626f7820236b6579776f726473207b0a0977696474683a20393570783b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a237365617263682d626f7820696e707574207b0a09626f726465723a2031707820736f6c696420236230623062303b0a7d0a0a2f2a202e627574746f6e31207374796c6520646566696e6564206c617465722c206a75737420612066657720747765616b7320666f72207468652073656172636820627574746f6e2076657273696f6e202a2f0a237365617263682d626f7820696e7075742e627574746f6e31207b0a0970616464696e673a20317078203570783b0a7d0a0a237365617263682d626f78206c69207b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a203470783b0a7d0a0a237365617263682d626f7820696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e2d72696768743a203370783b0a7d0a0a2f2a2053697465206465736372697074696f6e20616e64206c6f676f202a2f0a23736974652d6465736372697074696f6e207b0a09666c6f61743a206c6566743b0a0977696474683a203730253b0a7d0a0a23736974652d6465736372697074696f6e206831207b0a096d617267696e2d72696768743a20303b0a7d0a0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e686561646572626172207b0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0a09636f6c6f723a20234646464646463b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a7d0a0a2e6e6176626172207b0a096261636b67726f756e642d636f6c6f723a20236562656265623b0a0970616464696e673a203020313070783b0a7d0a0a2e666f72616267207b0a096261636b67726f756e643a2023623162316231206e6f6e65207265706561742d78203020303b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a09636c6561723a20626f74683b0a7d0a0a2e666f72756d6267207b0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a09636c6561723a20626f74683b0a7d0a0a2e70616e656c207b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a203020313070783b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a09636f6c6f723a20233366336633663b0a7d0a0a2e706f7374207b0a0970616464696e673a203020313070783b0a096d617267696e2d626f74746f6d3a203470783b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a2e706f73743a746172676574202e636f6e74656e74207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e706f73743a7461726765742068332061207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e626731097b206261636b67726f756e642d636f6c6f723a20236637663766373b7d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236632663266323b207d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236562656265623b207d0a0a2e726f776267207b0a096d617267696e3a203570782035707820327078203570783b0a7d0a0a2e756370726f776267207b0a096261636b67726f756e642d636f6c6f723a20236532653265323b0a7d0a0a2e6669656c64736267207b0a092f2a626f726465723a20317078202344424445453220736f6c69643b2a2f0a096261636b67726f756e642d636f6c6f723a20236561656165613b0a7d0a0a7370616e2e636f726e6572732d746f702c207370616e2e636f726e6572732d626f74746f6d2c207370616e2e636f726e6572732d746f70207370616e2c207370616e2e636f726e6572732d626f74746f6d207370616e207b0a09666f6e742d73697a653a203170783b0a096c696e652d6865696768743a203170783b0a09646973706c61793a20626c6f636b3b0a096865696768743a203570783b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a7370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a096d617267696e3a2030202d3570783b0a7d0a0a7370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a096d617267696e3a2030202d3570783b0a09636c6561723a20626f74683b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520313030253b0a7d0a0a2e686561646267207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e2d626f74746f6d3a202d3170783b0a7d0a0a2e706f7374207370616e2e636f726e6572732d746f702c202e706f7374207370616e2e636f726e6572732d626f74746f6d2c202e70616e656c207370616e2e636f726e6572732d746f702c202e70616e656c207370616e2e636f726e6572732d626f74746f6d2c202e6e6176626172207370616e2e636f726e6572732d746f702c202e6e6176626172207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a2030202d313070783b0a7d0a0a2e72756c6573207370616e2e636f726e6572732d746f70207b0a096d617267696e3a2030202d3130707820357078202d313070783b0a7d0a0a2e72756c6573207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a20357078202d313070782030202d313070783b0a7d0a0a2f2a20486f72697a6f6e74616c206c697374730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a756c2e6c696e6b6c697374207b0a09646973706c61793a20626c6f636b3b0a096d617267696e3a20303b0a7d0a0a756c2e6c696e6b6c697374206c69207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a096d617267696e2d72696768743a203570783b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a20322e32656d3b0a7d0a0a756c2e6c696e6b6c697374206c692e7269676874736964652c20702e726967687473696465207b0a09666c6f61743a2072696768743b0a096d617267696e2d72696768743a20303b0a096d617267696e2d6c6566743a203570783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a756c2e6e61766c696e6b73207b0a0970616464696e672d626f74746f6d3a203170783b0a096d617267696e2d626f74746f6d3a203170783b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234646464646463b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a756c2e6c65667473696465207b0a09666c6f61743a206c6566743b0a096d617267696e2d6c6566743a20303b0a096d617267696e2d72696768743a203570783b0a09746578742d616c69676e3a206c6566743b0a7d0a0a756c2e726967687473696465207b0a09666c6f61743a2072696768743b0a096d617267696e2d6c6566743a203570783b0a096d617267696e2d72696768743a202d3570783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2f2a205461626c65207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a7461626c652e7461626c6531207b0a092f2a2053656520747765616b732e637373202a2f0a7d0a0a237563702d6d61696e207461626c652e7461626c6531207b0a0970616464696e673a203270783b0a7d0a0a7461626c652e7461626c6531207468656164207468207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09636f6c6f723a20234646464646463b0a096c696e652d6865696768743a20312e33656d3b0a09666f6e742d73697a653a2031656d3b0a0970616464696e673a2030203020347078203370783b0a7d0a0a7461626c652e7461626c6531207468656164207468207370616e207b0a0970616464696e672d6c6566743a203770783b0a7d0a0a7461626c652e7461626c65312074626f6479207472207b0a09626f726465723a2031707820736f6c696420236366636663663b0a7d0a0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a09636f6c6f723a20233030303b0a7d0a0a7461626c652e7461626c6531207464207b0a09636f6c6f723a20233661366136613b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a7461626c652e7461626c65312074626f6479207464207b0a0970616464696e673a203570783b0a09626f726465722d746f703a2031707820736f6c696420234641464146413b0a7d0a0a7461626c652e7461626c65312074626f6479207468207b0a0970616464696e673a203570783b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233030303030303b0a09746578742d616c69676e3a206c6566743b0a09636f6c6f723a20233333333333333b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2f2a20537065636966696320636f6c756d6e207374796c6573202a2f0a7461626c652e7461626c6531202e6e616d6509097b20746578742d616c69676e3a206c6566743b207d0a7461626c652e7461626c6531202e706f73747309097b20746578742d616c69676e3a2063656e7465722021696d706f7274616e743b2077696474683a2037253b207d0a7461626c652e7461626c6531202e6a6f696e6564097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0a7461626c652e7461626c6531202e616374697665097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0a7461626c652e7461626c6531202e6d61726b09097b20746578742d616c69676e3a2063656e7465723b2077696474683a2037253b207d0a7461626c652e7461626c6531202e696e666f09097b20746578742d616c69676e3a206c6566743b2077696474683a203330253b207d0a7461626c652e7461626c6531202e696e666f20646976097b2077696474683a20313030253b2077686974652d73706163653a206e6f726d616c3b206f766572666c6f773a2068696464656e3b207d0a7461626c652e7461626c6531202e6175746f636f6c097b206c696e652d6865696768743a2032656d3b2077686974652d73706163653a206e6f777261703b207d0a7461626c652e7461626c6531207468656164202e6175746f636f6c207b2070616464696e672d6c6566743a2031656d3b207d0a0a7461626c652e7461626c6531207370616e2e72616e6b2d696d67207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a7d0a0a7461626c652e696e666f207464207b0a0970616464696e673a203370783b0a7d0a0a7461626c652e696e666f2074626f6479207468207b0a0970616464696e673a203370783b0a09746578742d616c69676e3a2072696768743b0a09766572746963616c2d616c69676e3a20746f703b0a09636f6c6f723a20233030303030303b0a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e666f72756d6267207461626c652e7461626c6531207b0a096d617267696e3a2030202d327078202d317078202d3170783b0a7d0a0a2f2a204d697363206c61796f7574207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2f2a20636f6c756d6e5b312d325d207374796c65732061726520636f6e7461696e65727320666f722074776f20636f6c756d6e206c61796f757473200a202020416c736f2073656520747765616b732e637373202a2f0a2e636f6c756d6e31207b0a09666c6f61743a206c6566743b0a09636c6561723a206c6566743b0a0977696474683a203439253b0a7d0a0a2e636f6c756d6e32207b0a09666c6f61743a2072696768743b0a09636c6561723a2072696768743b0a0977696474683a203439253b0a7d0a0a2f2a2047656e6572616c20636c617373657320666f7220706c6163696e6720666c6f6174696e6720626c6f636b73202a2f0a2e6c6566742d626f78207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a09746578742d616c69676e3a206c6566743b0a7d0a0a2e72696768742d626f78207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a09746578742d616c69676e3a2072696768743b0a7d0a0a646c2e64657461696c73207b0a092f2a666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b2a2f0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a646c2e64657461696c73206474207b0a09666c6f61743a206c6566743b0a09636c6561723a206c6566743b0a0977696474683a203330253b0a09746578742d616c69676e3a2072696768743b0a09636f6c6f723a20233030303030303b0a09646973706c61793a20626c6f636b3b0a7d0a0a646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a20303b0a0970616464696e672d6c6566743a203570783b0a096d617267696e2d626f74746f6d3a203570783b0a09636f6c6f723a20233832383238323b0a09666c6f61743a206c6566743b0a0977696474683a203635253b0a7d0a0a2f2a20506167696e6174696f6e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e706167696e6174696f6e207b0a096865696768743a2031253b202f2a20494520747765616b2028686f6c6c79206861636b29202a2f0a0977696474683a206175746f3b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a203570783b0a09666c6f61743a2072696768743b0a7d0a0a2e706167696e6174696f6e207370616e2e706167652d736570207b0a09646973706c61793a206e6f6e653b0a7d0a0a6c692e706167696e6174696f6e207b0a096d617267696e2d746f703a20303b0a7d0a0a2e706167696e6174696f6e207374726f6e672c202e706167696e6174696f6e2062207b0a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e706167696e6174696f6e207370616e207374726f6e67207b0a0970616464696e673a2030203270783b0a096d617267696e3a2030203270783b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20234646464646463b0a096261636b67726f756e642d636f6c6f723a20236266626662663b0a09626f726465723a2031707820736f6c696420236266626662663b0a09666f6e742d73697a653a20302e39656d3b0a7d0a0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a766973697465642c202e706167696e6174696f6e207370616e20613a616374697665207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233734373437343b0a096d617267696e3a2030203270783b0a0970616464696e673a2030203270783b0a096261636b67726f756e642d636f6c6f723a20236565656565653b0a09626f726465723a2031707820736f6c696420236261626162613b0a09666f6e742d73697a653a20302e39656d3b0a096c696e652d6865696768743a20312e35656d3b0a7d0a0a2e706167696e6174696f6e207370616e20613a686f766572207b0a09626f726465722d636f6c6f723a20236432643264323b0a096261636b67726f756e642d636f6c6f723a20236432643264323b0a09636f6c6f723a20234646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2e706167696e6174696f6e20696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0a2e726f77202e706167696e6174696f6e207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a096d617267696e2d746f703a20303b0a0970616464696e673a2031707820302031707820313570783b0a09666f6e742d73697a653a20302e39656d3b0a096261636b67726f756e643a206e6f6e65203020353025206e6f2d7265706561743b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236432643264323b0a7d0a0a2f2a204d697363656c6c616e656f7573207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a23666f72756d2d7065726d697373696f6e73207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e672d6c6566743a203570783b0a096d617267696e2d6c6566743a203570783b0a096d617267696e2d746f703a20313070783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2e636f70797269676874207b0a0970616464696e673a203570783b0a09746578742d616c69676e3a2063656e7465723b0a09636f6c6f723a20233535353535353b0a7d0a0a2e736d616c6c207b0a09666f6e742d73697a653a20302e39656d2021696d706f7274616e743b0a7d0a0a2e7469746c657370616365207b0a096d617267696e2d626f74746f6d3a20313570783b0a7d0a0a2e6865616465727370616365207b0a096d617267696e2d746f703a20323070783b0a7d0a0a2e6572726f72207b0a09636f6c6f723a20236263626362633b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d73697a653a2031656d3b0a7d0a0a2e7265706f72746564207b0a096261636b67726f756e642d636f6c6f723a20236637663766373b0a7d0a0a6c692e7265706f727465643a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a7d0a0a6469762e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a09636f6c6f723a20236263626362633b0a0970616464696e673a203020313070783b0a096d617267696e3a203130707820303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6469762e72756c657320756c2c206469762e72756c6573206f6c207b0a096d617267696e2d6c6566743a20323070783b0a7d0a0a702e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0970616464696e673a203570783b0a7d0a0a702e72756c657320696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e672d746f703a203570783b0a7d0a0a702e72756c65732061207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a09636c6561723a20626f74683b0a7d0a0a23746f70207b0a09706f736974696f6e3a206162736f6c7574653b0a09746f703a202d323070783b0a7d0a0a2e636c656172207b0a09646973706c61793a20626c6f636b3b0a09636c6561723a20626f74683b0a09666f6e742d73697a653a203170783b0a096c696e652d6865696768743a203170783b0a096261636b67726f756e643a207472616e73706172656e743b0a7d0a2f2a2070726f53696c766572204c696e6b205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a204c696e6b732061646a7573746d656e7420746f20636f72726563746c7920646973706c617920616e206f72646572206f662072746c2f6c7472206d6978656420636f6e74656e74202a2f0a61207b0a09646972656374696f6e3a206c74723b0a09756e69636f64652d626964693a20656d6265643b0a7d0a0a613a6c696e6b097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a76697369746564097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a686f766572097b20636f6c6f723a20236433643364333b20746578742d6465636f726174696f6e3a20756e6465726c696e653b207d0a613a616374697665097b20636f6c6f723a20236432643264323b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a0a2f2a20436f6c6f7572656420757365726e616d6573202a2f0a2e757365726e616d652d636f6c6f75726564207b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e652021696d706f7274616e743b0a0970616464696e673a20302021696d706f7274616e743b0a7d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233839383938393b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a612e746f7069637469746c65207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20236432643264323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20236432643264323b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236432643264323b0a0970616464696e672d626f74746f6d3a20303b0a7d0a0a2e706f73746c696e6b3a76697369746564207b0a09636f6c6f723a20236264626462643b0a09626f726465722d626f74746f6d2d7374796c653a20646f747465643b0a09626f726465722d626f74746f6d2d636f6c6f723a20233636363636363b0a7d0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20236432643264323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233430343034303b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a6163746976652c202e7369676e617475726520613a686f766572207b0a09626f726465723a206e6f6e653b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a6163746976652c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a09636f6c6f723a20236433643364333b0a7d0a0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b200a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20236433643364333b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b200a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a2e6261636b32746f70207b0a09636c6561723a20626f74683b0a096865696768743a20313170783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a612e746f70207b0a096261636b67726f756e643a206e6f6e65206e6f2d72657065617420746f70206c6566743b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0977696474683a207b494d475f49434f4e5f4241434b5f544f505f57494454487d70783b0a096865696768743a207b494d475f49434f4e5f4241434b5f544f505f4845494748547d70783b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a096f766572666c6f773a2068696464656e3b0a096c65747465722d73706163696e673a203130303070783b0a09746578742d696e64656e743a20313170783b0a7d0a0a612e746f7032207b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742030203530253b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0970616464696e672d6c6566743a20313570783b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e643a206e6f6e65206e6f2d726570656174206c6566742063656e7465723b207d0a612e646f776e09097b206261636b67726f756e643a206e6f6e65206e6f2d7265706561742072696768742063656e7465723b207d0a612e6c65667409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420337078203630253b207d0a612e726967687409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420393525203630253b207d0a0a612e75702c20612e75703a6c696e6b2c20612e75703a6163746976652c20612e75703a76697369746564207b0a0970616464696e672d6c6566743a20313070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a612e75703a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a206c65667420746f703b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e646f776e2c20612e646f776e3a6c696e6b2c20612e646f776e3a6163746976652c20612e646f776e3a76697369746564207b0a0970616464696e672d72696768743a20313070783b0a7d0a0a612e646f776e3a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a20726967687420626f74746f6d3b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a612e6c6566742c20612e6c6566743a6163746976652c20612e6c6566743a76697369746564207b0a0970616464696e672d6c6566743a20313270783b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203630253b0a7d0a0a612e72696768742c20612e72696768743a6163746976652c20612e72696768743a76697369746564207b0a0970616464696e672d72696768743a20313270783b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2031303025203630253b0a7d0a0a2f2a20696e76697369626c6520736b6970206c696e6b2c207573656420666f72206163636573736962696c69747920202a2f0a2e736b69706c696e6b207b0a09706f736974696f6e3a206162736f6c7574653b0a096c6566743a202d39393970783b0a0977696474683a2039393070783b0a7d0a0a2f2a20466565642069636f6e20696e20666f72756d6c6973745f626f64792e68746d6c202a2f0a612e666565642d69636f6e2d666f72756d207b0a09666c6f61743a2072696768743b0a096d617267696e3a203370783b0a7d0a2f2a2070726f53696c76657220436f6e74656e74205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e746f7069636c697374207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a096d617267696e3a20303b0a7d0a0a756c2e666f72756d73207b0a096261636b67726f756e643a2023663966396639206e6f6e65207265706561742d78203020303b0a7d0a0a756c2e746f7069636c697374206c69207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a09636f6c6f723a20233737373737373b0a096d617267696e3a20303b0a7d0a0a756c2e746f7069636c69737420646c207b0a09706f736974696f6e3a2072656c61746976653b0a7d0a0a756c2e746f7069636c697374206c692e726f7720646c207b0a0970616464696e673a2032707820303b0a7d0a0a756c2e746f7069636c697374206474207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a0977696474683a203530253b0a09666f6e742d73697a653a20312e31656d3b0a0970616464696e672d6c6566743a203570783b0a0970616464696e672d72696768743a203570783b0a7d0a0a756c2e746f7069636c697374206464207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0970616464696e673a2034707820303b0a7d0a0a756c2e746f7069636c6973742064666e207b0a092f2a204c6162656c7320666f7220706f73742f7669657720636f756e7473202a2f0a09706f736974696f6e3a206162736f6c7574653b0a096c6566743a202d39393970783b0a0977696474683a2039393070783b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a09706f736974696f6e3a2072656c61746976653b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e673a20302030203020313270783b0a7d0a0a2e666f72756d2d696d616765207b0a09666c6f61743a206c6566743b0a0970616464696e672d746f703a203570783b0a096d617267696e2d72696768743a203570783b0a7d0a0a6c692e726f77207b0a09626f726465722d746f703a2031707820736f6c696420234646464646463b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233866386638663b0a7d0a0a6c692e726f77207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a096c696e652d6865696768743a2031656d3b0a09626f726465722d6c6566742d77696474683a20303b0a096d617267696e3a2032707820302034707820303b0a09636f6c6f723a20234646464646463b0a0970616464696e672d746f703a203270783b0a0970616464696e672d626f74746f6d3a203270783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a6c692e686561646572206474207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a6c692e686561646572206464207b0a096d617267696e2d6c6566743a203170783b0a7d0a0a6c692e68656164657220646c2e69636f6e207b0a096d696e2d6865696768743a20303b0a7d0a0a6c692e68656164657220646c2e69636f6e206474207b0a092f2a20547765616b20666f72206865616465727320616c69676e6d656e74207768656e20666f6c6465722069636f6e2075736564202a2f0a0970616464696e672d6c6566743a20303b0a0970616464696e672d72696768743a20353070783b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096261636b67726f756e642d706f736974696f6e3a2031307078203530253b09092f2a20506f736974696f6e206f6620666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a646c2e69636f6e206474207b0a0970616464696e672d6c6566743a20343570783b09090909092f2a20537061636520666f7220666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a20357078203935253b09092f2a20506f736974696f6e206f6620746f7069632069636f6e202a2f0a7d0a0a64642e706f7374732c2064642e746f706963732c2064642e7669657773207b0a0977696474683a2038253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20322e32656d3b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a2f2a204c69737420696e20666f72756d206465736372697074696f6e202a2f0a646c2e69636f6e206474206f6c2c0a646c2e69636f6e20647420756c207b0a096c6973742d7374796c652d706f736974696f6e3a20696e736964653b0a096d617267696e2d6c6566743a2031656d3b0a7d0a0a646c2e69636f6e206474206c69207b0a09646973706c61793a206c6973742d6974656d3b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a64642e6c617374706f7374207b0a0977696474683a203235253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7265646972656374207b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a64642e6d6f6465726174696f6e207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6c617374706f7374207370616e2c20756c2e746f7069636c6973742064642e7365617263686279207370616e2c20756c2e746f7069636c6973742064642e696e666f207370616e2c20756c2e746f7069636c6973742064642e74696d65207370616e2c2064642e7265646972656374207370616e2c2064642e6d6f6465726174696f6e207370616e207b0a09646973706c61793a20626c6f636b3b0a0970616464696e672d6c6566743a203570783b0a7d0a0a64642e74696d65207b0a0977696474683a206175746f3b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6578747261207b0a0977696474683a203132253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6d61726b207b0a09666c6f61743a2072696768742021696d706f7274616e743b0a0977696474683a2039253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a64642e696e666f207b0a0977696474683a203330253b0a7d0a0a64642e6f7074696f6e207b0a0977696474683a203135253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7365617263686279207b0a0977696474683a203437253b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a2031656d3b0a7d0a0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a096d617267696e2d6c6566743a203570783b0a0970616464696e673a20302e32656d20303b0a09666f6e742d73697a653a20312e31656d3b0a09636f6c6f723a20233333333333333b0a09626f726465722d6c6566743a206e6f6e653b0a09636c6561723a20626f74683b0a0977696474683a203938253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a20436f6e7461696e657220666f7220706f73742f7265706c7920627574746f6e7320616e6420706167696e6174696f6e202a2f0a2e746f7069632d616374696f6e73207b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20312e31656d3b0a096865696768743a20323870783b0a096d696e2d6865696768743a20323870783b0a7d0a6469765b636c6173735d2e746f7069632d616374696f6e73207b0a096865696768743a206175746f3b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a0970616464696e673a20303b0a096c696e652d6865696768743a20312e3438656d3b0a09636f6c6f723a20233333333333333b0a0977696474683a203736253b0a09666c6f61743a206c6566743b0a09636c6561723a20626f74683b0a7d0a0a2e706f7374626f6479202e69676e6f7265207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2e706f7374626f64792068332e6669727374207b0a092f2a2054686520666972737420706f7374206f6e20746865207061676520757365732074686973202a2f0a09666f6e742d73697a653a20312e37656d3b0a7d0a0a2e706f7374626f6479206833207b0a092f2a20506f7374626f6479207265717569726573206120646966666572656e7420683320666f726d6174202d20736f206368616e67652069742068657265202a2f0a09666f6e742d73697a653a20312e35656d3b0a0970616464696e673a203270782030203020303b0a096d617267696e3a2030203020302e33656d20302021696d706f7274616e743b0a09746578742d7472616e73666f726d3a206e6f6e653b0a09626f726465723a206e6f6e653b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a096c696e652d6865696768743a20313235253b0a7d0a0a2e706f7374626f647920683320696d67207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a09766572746963616c2d616c69676e3a20626f74746f6d3b0a7d0a0a2e706f7374626f6479202e636f6e74656e74207b0a09666f6e742d73697a653a20312e33656d3b0a7d0a0a2e736561726368202e706f7374626f6479207b0a0977696474683a203638250a7d0a0a2f2a20546f706963207265766965772070616e656c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23726576696577207b0a096d617267696e2d746f703a2032656d3b0a7d0a0a23746f706963726576696577207b0a0970616464696e672d72696768743a203570783b0a096f766572666c6f773a206175746f3b0a096865696768743a2033303070783b0a7d0a0a23746f706963726576696577202e706f7374626f6479207b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a096d617267696e3a20303b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577202e706f7374207b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577206832207b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a2e706f73742d69676e6f7265202e706f7374626f6479207b0a09646973706c61793a206e6f6e653b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a096d696e2d6865696768743a2033656d3b0a096f766572666c6f773a2068696464656e3b0a096c696e652d6865696768743a20312e34656d3b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a09636f6c6f723a20233333333333333b0a0970616464696e672d626f74746f6d3a203170783b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233938393839383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a09666f6e742d73697a653a20312e36656d3b0a096d617267696e2d746f703a20302e35656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a0970616464696e672d626f74746f6d3a20302e35656d3b0a7d0a0a2e70616e656c206833207b0a096d617267696e3a20302e35656d20303b0a7d0a0a2e70616e656c2070207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a2e636f6e74656e742070207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e31656d3b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a2032656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e7420646c2e666171207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a7d0a0a2e636f6e74656e74206c69207b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a2e636f6e74656e7420756c2c202e636f6e74656e74206f6c207b0a096d617267696e2d626f74746f6d3a2031656d3b0a096d617267696e2d6c6566743a2033656d3b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a09636f6c6f723a20234243424342433b0a0970616464696e673a20302032707820317078203270783b0a7d0a0a2e616e6e6f756e63652c202e756e72656164706f7374207b0a092f2a20486967686c696768742074686520616e6e6f756e63656d656e7473202620756e7265616420706f73747320626f78202a2f0a09626f726465722d6c6566742d636f6c6f723a20234243424342433b0a09626f726465722d72696768742d636f6c6f723a20234243424342433b0a7d0a0a2f2a20506f737420617574686f72202a2f0a702e617574686f72207b0a096d617267696e3a2030203135656d20302e36656d20303b0a0970616464696e673a203020302035707820303b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a096c696e652d6865696768743a20312e32656d3b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a20312e31656d3b0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313430253b0a096f766572666c6f773a2068696464656e3b0a0977696474683a20313030253b0a7d0a0a6464202e7369676e6174757265207b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09636c6561723a206e6f6e653b0a09626f726465723a206e6f6e653b0a7d0a0a2e7369676e6174757265206c69207b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a2e7369676e617475726520756c2c202e7369676e6174757265206f6c207b0a096d617267696e2d626f74746f6d3a2031656d3b0a096d617267696e2d6c6566743a2033656d3b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a206175746f3b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a2031656d3b0a09626f726465722d746f703a203170782064617368656420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313330253b0a7d0a0a2f2a204a756d7020746f20706f7374206c696e6b20666f72206e6f77202a2f0a756c2e736561726368726573756c7473207b0a096c6973742d7374796c653a206e6f6e653b0a09746578742d616c69676e3a2072696768743b0a09636c6561723a20626f74683b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e643a2023656265626562206e6f6e652036707820387078206e6f2d7265706561743b0a09626f726465723a2031707820736f6c696420236462646264623b0a09666f6e742d73697a653a20302e3935656d3b0a096d617267696e3a20302e35656d20317078203020323570783b0a096f766572666c6f773a2068696464656e3b0a0970616464696e673a203570783b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236261626162613b0a09666f6e742d73697a653a2031656d3b0a096d617267696e3a20302e35656d20317078203020313570783b090a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a7d0a0a626c6f636b71756f74652063697465207b0a092f2a20557365726e616d652f736f75726365206f662071756f746572202a2f0a09666f6e742d7374796c653a206e6f726d616c3b0a09666f6e742d7765696768743a20626f6c643b0a096d617267696e2d6c6566743a20323070783b0a09646973706c61793a20626c6f636b3b0a09666f6e742d73697a653a20302e39656d3b0a7d0a0a626c6f636b71756f746520636974652063697465207b0a09666f6e742d73697a653a2031656d3b0a7d0a0a626c6f636b71756f74652e756e6369746564207b0a0970616464696e672d746f703a20323570783b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a0970616464696e673a203370783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a2031707820736f6c696420236438643864383b0a09666f6e742d73697a653a2031656d3b0a7d0a0a646c2e636f6465626f78206474207b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20302e38656d3b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20626c6f636b3b0a7d0a0a626c6f636b71756f746520646c2e636f6465626f78207b0a096d617267696e2d6c6566743a20303b0a7d0a0a646c2e636f6465626f7820636f6465207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096f766572666c6f773a206175746f3b0a09646973706c61793a20626c6f636b3b0a096865696768743a206175746f3b0a096d61782d6865696768743a2032303070783b0a0977686974652d73706163653a206e6f726d616c3b0a0970616464696e672d746f703a203570783b0a09666f6e743a20302e39656d204d6f6e61636f2c2022416e64616c65204d6f6e6f222c22436f7572696572204e6577222c20436f75726965722c206d6f6e6f3b0a096c696e652d6865696768743a20312e33656d3b0a09636f6c6f723a20233862386238623b0a096d617267696e3a2032707820303b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20233030303030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20236263626362633b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233538353835383b207d0a2e73796e746178737472696e67097b20636f6c6f723a20236137613761373b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b200a096d617267696e3a20357078203570782035707820303b0a0970616464696e673a203670783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a203170782064617368656420236438643864383b0a09636c6561723a206c6566743b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a7d0a0a2e617474616368626f78206474207b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a2e617474616368626f78206464207b0a096d617267696e2d746f703a203470783b0a0970616464696e672d746f703a203470783b0a09636c6561723a206c6566743b0a09626f726465722d746f703a2031707820736f6c696420236438643864383b0a7d0a0a2e617474616368626f78206464206464207b0a09626f726465723a206e6f6e653b0a7d0a0a2e617474616368626f782070207b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e617474616368626f7820702e73746174730a7b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e6174746163682d696d616765207b0a096d617267696e3a2033707820303b0a0977696474683a20313030253b0a096d61782d6865696768743a2033353070783b0a096f766572666c6f773a206175746f3b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465723a2031707820736f6c696420233939393939393b0a2f2a09637572736f723a206d6f76653b202a2f0a09637572736f723a2064656661756c743b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a6469762e696e6c696e652d6174746163686d656e7420646c2e7468756d626e61696c2c206469762e696e6c696e652d6174746163686d656e7420646c2e66696c65207b0a09646973706c61793a20626c6f636b3b0a096d617267696e2d626f74746f6d3a203470783b0a7d0a0a6469762e696e6c696e652d6174746163686d656e742070207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e66696c65207b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09646973706c61793a20626c6f636b3b0a7d0a0a646c2e66696c65206474207b0a09746578742d7472616e73666f726d3a206e6f6e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a096d617267696e3a20303b0a0970616464696e673a20303b090a7d0a0a646c2e7468756d626e61696c20696d67207b0a0970616464696e673a203370783b0a09626f726465723a2031707820736f6c696420233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a09666f6e742d7374796c653a206974616c69633b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a2e617474616368626f7820646c2e7468756d626e61696c206464207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465723a2031707820736f6c696420236432643264323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a6669656c647365742e706f6c6c73207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a7d0a0a6669656c647365742e706f6c6c7320646c207b0a096d617267696e2d746f703a203570783b0a09626f726465722d746f703a2031707820736f6c696420236532653265323b0a0970616464696e673a203570782030203020303b0a096c696e652d6865696768743a20313230253b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c73206474207b0a09746578742d616c69676e3a206c6566743b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a0977696474683a203330253b0a09626f726465722d72696768743a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e3a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c73206464207b0a09666c6f61743a206c6566743b0a0977696474683a203130253b0a09626f726465722d6c6566743a206e6f6e653b0a0970616464696e673a2030203570783b0a096d617267696e2d6c6566743a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c732064642e726573756c74626172207b0a0977696474683a203530253b0a7d0a0a6669656c647365742e706f6c6c7320646420696e707574207b0a096d617267696e3a2032707820303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09746578742d616c69676e3a2072696768743b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09636f6c6f723a20234646464646463b0a09666f6e742d7765696768743a20626f6c643b0a0970616464696e673a2030203270783b0a096f766572666c6f773a2076697369626c653b0a096d696e2d77696474683a2032253b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20236161616161613b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233734373437343b0a09626f726465722d72696768743a2031707820736f6c696420233734373437343b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20236265626562653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233863386338633b0a09626f726465722d72696768743a2031707820736f6c696420233863386338633b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431443144313b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236161616161613b0a09626f726465722d72696768743a2031707820736f6c696420236161616161613b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236265626562653b0a09626f726465722d72696768743a2031707820736f6c696420236265626562653b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20236638663866383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234431443144313b0a09626f726465722d72696768743a2031707820736f6c696420234431443144313b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096d617267696e3a203570782030203130707820303b0a096d696e2d6865696768743a20383070783b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0977696474683a203232253b0a09666c6f61743a2072696768743b0a09646973706c61793a20696e6c696e653b0a7d0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566743a2031707820736f6c696420234444444444443b0a7d0a0a2e706f737470726f66696c652064642c202e706f737470726f66696c65206474207b0a096c696e652d6865696768743a20312e32656d3b0a096d617267696e2d6c6566743a203870783b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a2e617661746172207b0a09626f726465723a206e6f6e653b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a2f2a20506f737465722070726f66696c652075736564206279207365617263682a2f0a2e736561726368202e706f737470726f66696c65207b0a0977696474683a203330253b0a7d0a0a2f2a20706d206c69737420696e20636f6d706f7365206d657373616765206966206d61737320706d20697320656e61626c6564202a2f0a646c2e706d6c697374206474207b0a0977696474683a203630252021696d706f7274616e743b0a7d0a0a646c2e706d6c697374206474207465787461726561207b0a0977696474683a203935253b0a7d0a0a646c2e706d6c697374206464207b0a096d617267696e2d6c6566743a203631252021696d706f7274616e743b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a2f2a2070726f53696c76657220427574746f6e205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a20526f6c6c6f76657220627574746f6e730a2020204261736564206f6e3a20687474703a2f2f77656c6c7374796c65642e636f6d2f6373732d6e6f7072656c6f61642d726f6c6c6f766572732e68746d6c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e627574746f6e73207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a096865696768743a206175746f3b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a2e627574746f6e7320646976207b0a09666c6f61743a206c6566743b0a096d617267696e3a203020357078203020303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a2e627574746f6e73206469762061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09706f736974696f6e3a2072656c61746976653b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a2f2a2e627574746f6e7320646976207370616e09097b20646973706c61793a206e6f6e653b207d2a2f0a2f2a2e627574746f6e732064697620613a686f766572097b206261636b67726f756e642d696d6167653a206e6f6e653b207d2a2f0a2e627574746f6e7320646976207370616e0909097b20706f736974696f6e3a206162736f6c7574653b2077696474683a20313030253b206865696768743a20313030253b20637572736f723a20706f696e7465723b7d0a2e627574746f6e732064697620613a686f766572207370616e097b206261636b67726f756e642d706f736974696f6e3a203020313030253b207d0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e666f7277617264706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a0a2f2a205365742062696720627574746f6e2064696d656e73696f6e73202a2f0a2e627574746f6e73206469762e7265706c792d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e706f73742d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e6c6f636b65642d69636f6e097b2077696474683a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f4845494748547d70783b207d0a2e627574746f6e73206469762e706d7265706c792d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e6e6577706d2d69636f6e09097b2077696474683a207b494d475f425554544f4e5f504d5f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e666f7277617264706d2d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f464f52574152445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f464f52574152445f4845494748547d70783b207d0a0a2f2a205375622d68656164657220286e617669676174696f6e20626172290a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a612e7072696e742c20612e73656e64656d61696c2c20612e666f6e7473697a65207b0a09646973706c61793a20626c6f636b3b0a096f766572666c6f773a2068696464656e3b0a096865696768743a20313870783b0a09746578742d696e64656e743a202d3530303070783b0a09746578742d616c69676e3a206c6566743b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030202d3170783b0a0977696474683a20323970783b0a7d0a0a612e666f6e7473697a653a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d323070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d652c202e69636f6e2d6661712c202e69636f6e2d6d656d626572732c202e69636f6e2d686f6d652c202e69636f6e2d7563702c202e69636f6e2d72656769737465722c202e69636f6e2d6c6f676f75742c0a2e69636f6e2d626f6f6b6d61726b2c202e69636f6e2d62756d702c202e69636f6e2d7375627363726962652c202e69636f6e2d756e7375627363726962652c202e69636f6e2d70616765732c202e69636f6e2d736561726368207b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0970616464696e673a203170782030203020313770783b0a7d0a0a2f2a20506f737465722070726f66696c652069636f6e730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a756c2e70726f66696c652d69636f6e73207b0a0970616464696e672d746f703a20313070783b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c69207b0a09666c6f61743a206c6566743b0a096d617267696e3a2030203670782033707820303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c692061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a756c2e70726f66696c652d69636f6e73206c69207370616e207b20646973706c61793a6e6f6e653b207d0a756c2e70726f66696c652d69636f6e73206c6920613a686f766572207b206261636b67726f756e643a206e6f6e653b207d0a0a2f2a20506f736974696f6e696e67206f66206d6f64657261746f722069636f6e73202a2f0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e673a20303b0a7d0a0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73206c69207b0a096d617267696e3a2030203370783b0a7d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a205365742070726f66696c652069636f6e2064696d656e73696f6e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656d61696c2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f454d41494c5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f454d41494c5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e61696d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f41494d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f41494d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7961686f6f2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7765622d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5757575f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5757575f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6d736e6d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6963712d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4943515f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4943515f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6a61626265722d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4a41424245525f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4a41424245525f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e706d2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f504d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f504d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f51554f54455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f51554f54455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f5245504f52545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f5245504f52545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f454449545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f454449545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e64656c6574652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f44454c4554455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f44454c4554455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f494e464f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f494e464f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7761726e2d69636f6e097b2077696474683a207b494d475f49434f4e5f555345525f5741524e5f57494454487d70783b206865696768743a207b494d475f49434f4e5f555345525f5741524e5f4845494748547d70783b207d0a0a2f2a204669782070726f66696c652069636f6e2064656661756c74206d617267696e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b206d617267696e3a203020302030203370783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b206d617267696e3a20302030203020313070783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e2c20756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b206d617267696e3a203020337078203020303b207d0a2f2a2070726f53696c76657220436f6e74726f6c2050616e656c205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d656e75207b0a09666c6f61743a6c6566743b0a0977696474683a203139253b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e207b0a09666c6f61743a206c6566743b0a0977696474683a203831253b0a7d0a0a2363702d6d61696e202e636f6e74656e74207b0a0970616464696e673a20303b0a7d0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20236266626662663b0a7d0a0a2363702d6d61696e202e70616e656c2070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206f6c207b0a096d617267696e2d6c6566743a2032656d3b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236362636263623b0a09626f726465722d746f703a2031707820736f6c696420234639463946393b0a7d0a0a756c2e63706c697374207b0a096d617267696e2d626f74746f6d3a203570783b0a09626f726465722d746f703a2031707820736f6c696420236362636263623b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207b0a096d617267696e2d626f74746f6d3a2031656d3b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09666f6e742d7765696768743a20626f6c643b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233333333333333b0a0970616464696e673a203570783b0a7d0a0a2363702d6d61696e207461626c652e7461626c65312074626f6479207468207b0a09666f6e742d7374796c653a206974616c69633b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e742021696d706f7274616e743b0a09626f726465722d626f74746f6d3a206e6f6e653b0a7d0a0a2363702d6d61696e202e706167696e6174696f6e207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e672d746f703a203170783b0a7d0a0a2363702d6d61696e202e706f7374626f64792070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465723a2031707820736f6c696420236532653265323b0a096d617267696e3a203130707820303b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a7d0a0a2e706d2d6d657373616765206832207b0a0970616464696e672d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e202e706f7374626f64792068332c202363702d6d61696e202e626f7832206833207b0a096d617267696e2d746f703a20303b0a7d0a0a2363702d6d61696e202e627574746f6e73207b0a096d617267696e2d6c6566743a20303b0a7d0a0a2363702d6d61696e20756c2e6c696e6b6c697374207b0a096d617267696e3a20303b0a7d0a0a2f2a204d435020537065636966696320747765616b73202a2f0a2e6d63702d6d61696e202e706f7374626f6479207b0a0977696474683a20313030253b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2374616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a20323070782030202d317078203770783b0a096d696e2d77696474683a2035373070783b0a7d0a0a237461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2374616273206c69207b0a09646973706c61793a20696e6c696e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a23746162732061207b0a09666c6f61743a206c6566743b0a096261636b67726f756e643a206e6f6e65206e6f2d726570656174203025202d333570783b0a096d617267696e3a203020317078203020303b0a0970616464696e673a203020302030203570783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09706f736974696f6e3a2072656c61746976653b0a09637572736f723a20706f696e7465723b0a7d0a0a23746162732061207370616e207b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742031303025202d333570783b0a0970616464696e673a20367078203130707820367078203570783b0a09636f6c6f723a20233832383238323b0a0977686974652d73706163653a206e6f777261703b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20236263626362633b0a7d0a0a2374616273202e6163746976657461622061207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236562656265623b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a0970616464696e672d626f74746f6d3a203770783b0a09636f6c6f723a20233333333333333b0a7d0a0a237461627320613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d373070783b0a7d0a0a237461627320613a686f766572207370616e207b0a096261636b67726f756e642d706f736974696f6e3a31303025202d373070783b0a7d0a0a2374616273202e61637469766574616220613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a202d3230707820377078203020303b0a7d0a0a236d696e697461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a236d696e6974616273206c69207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a0970616464696e673a203020313070782034707820313070783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a096261636b67726f756e642d636f6c6f723a20236632663266323b0a096d617267696e2d6c6566743a203270783b0a7d0a0a236d696e69746162732061207b0a7d0a0a236d696e697461627320613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20436f6e7461696e657220666f72207375622d6e617669676174696f6e206c697374202a2f0a236e617669676174696f6e207b0a0977696474683a20313030253b0a0970616464696e672d746f703a20333670783b0a7d0a0a236e617669676174696f6e20756c207b0a096c6973742d7374796c653a6e6f6e653b0a7d0a0a2f2a2044656661756c74206c697374207374617465202a2f0a236e617669676174696f6e206c69207b0a096d617267696e3a2031707820303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e653b0a7d0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09646973706c61793a20626c6f636b3b0a0970616464696e673a203570783b0a096d617267696e3a2031707820303b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333b0a096261636b67726f756e643a2023636663666366206e6f6e65207265706561742d79203130302520303b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d636f6c6f723a20236336633663363b0a09636f6c6f723a20236263626362633b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09646973706c61793a20626c6f636b3b0a09636f6c6f723a20236433643364333b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20236433643364333b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09626f726465722d626f74746f6d3a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e2d6c6566743a20313070783b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236639663966393b0a0970616464696e673a2030203570783b0a096d617267696e3a203130707820313570782031307078203570783b0a7d0a0a2e63702d6d696e69207370616e2e636f726e6572732d746f702c202e63702d6d696e69207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a2030202d3570783b0a7d0a0a646c2e6d696e69206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233637363736373b0a7d0a0a646c2e6d696e69206464207b0a0970616464696e672d746f703a203470783b0a7d0a0a2e667269656e642d6f6e6c696e65207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a2e667269656e642d6f66666c696e65207b0a09666f6e742d7374796c653a206974616c69633b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23706d2d6d656e75207b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a2f2a20504d2070616e656c2061646a7573746d656e7473202a2f0a2e706d2d70616e656c2d686561646572207b0a096d617267696e3a20303b200a0970616464696e672d626f74746f6d3a20313070783b200a09626f726465722d626f74746f6d3a203170782064617368656420234134423342463b0a7d0a0a2e7265706c792d616c6c207b0a09646973706c61793a20626c6f636b3b200a0970616464696e672d746f703a203470783b200a09636c6561723a20626f74683b0a09666c6f61743a206c6566743b0a7d0a0a2e706d2d70616e656c2d6d657373616765207b0a0970616464696e672d746f703a20313070783b0a7d0a0a2e706d2d72657475726e2d746f207b0a0970616464696e672d746f703a20323370783b0a7d0a0a2363702d6d61696e202e706d2d6d6573736167652d6e6176207b0a096d617267696e3a20303b200a0970616464696e673a2032707820313070782035707820313070783b200a09626f726465722d626f74746f6d3a203170782064617368656420234134423342463b0a7d0a0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233939393939393b0a7d0a0a2f2a20446566696e65642072756c6573206c69737420666f7220504d206f7074696f6e73202a2f0a6f6c2e6465662d72756c6573207b0a0970616464696e672d6c6566743a20303b0a7d0a0a6f6c2e6465662d72756c6573206c69207b0a096c696e652d6865696768743a20313830253b0a0970616464696e673a203170783b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e626731207b0a09626f726465723a20736f6c696420337078207472616e73706172656e743b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e626732207b0a09626f726465723a20736f6c696420337078207472616e73706172656e743b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20236263626362633b0a09626f726465722d72696768742d636f6c6f723a20236263626362633b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236666666666663b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236332633263323b0a09626f726465722d77696474683a2030203370783b090a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236264626462643b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820233030303030303b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d2d6c6567656e64207b0a09626f726465722d6c6566742d77696474683a20313070783b0a09626f726465722d6c6566742d7374796c653a20736f6c69643b0a09626f726465722d72696768742d77696474683a20303b0a096d617267696e2d626f74746f6d3a203370783b0a0970616464696e672d6c6566743a203370783b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a09706f736974696f6e3a2072656c61746976653b0a09666c6f61743a206c6566743b0a096d617267696e3a20313070783b0a0970616464696e673a203570783b0a0977696474683a206175746f3b0a096261636b67726f756e643a20234646464646463b0a09626f726465723a2031707820736f6c696420234343433b0a09746578742d616c69676e3a2063656e7465723b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a2f2a2070726f53696c76657220466f726d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2047656e6572616c20666f726d207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a6669656c64736574207b0a09626f726465722d77696474683a20303b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a696e707574207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09637572736f723a20706f696e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e673a2030203370783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a7d0a0a73656c656374207b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d7765696768743a206e6f726d616c3b0a09637572736f723a20706f696e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a09626f726465723a2031707820736f6c696420233636363636363b0a0970616464696e673a203170783b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a7d0a0a6f7074696f6e207b0a0970616464696e672d72696768743a2031656d3b0a7d0a0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0a09636f6c6f723a2067726179746578743b0a7d0a0a7465787461726561207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a203630253b0a0970616464696e673a203270783b0a09666f6e742d73697a653a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a6c6162656c207b0a09637572736f723a2064656661756c743b0a0970616464696e672d72696768743a203570783b0a09636f6c6f723a20233637363736373b0a7d0a0a6c6162656c20696e707574207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a6c6162656c20696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a6669656c6473657420646c207b0a0970616464696e673a2034707820303b0a7d0a0a6669656c64736574206474207b0a09666c6f61743a206c6566743b090a0977696474683a203430253b0a09746578742d616c69676e3a206c6566743b0a09646973706c61793a20626c6f636b3b0a7d0a0a6669656c64736574206464207b0a096d617267696e2d6c6566743a203431253b0a09766572746963616c2d616c69676e3a20746f703b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2f2a205370656369666963206c61796f75742031202a2f0a6669656c647365742e6669656c647331206474207b0a0977696474683a203135656d3b0a09626f726465722d72696768742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647331206464207b0a096d617267696e2d6c6566743a203135656d3b0a09626f726465722d6c6566742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647331207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a6669656c647365742e6669656c64733120646976207b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2f2a205370656369666963206c61796f75742032202a2f0a6669656c647365742e6669656c647332206474207b0a0977696474683a203135656d3b0a09626f726465722d72696768742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647332206464207b0a096d617267696e2d6c6566743a203136656d3b0a09626f726465722d6c6566742d77696474683a20303b0a7d0a0a2f2a20466f726d20656c656d656e7473202a2f0a6474206c6162656c207b0a09666f6e742d7765696768743a20626f6c643b0a09746578742d616c69676e3a206c6566743b0a7d0a0a6464206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a09636f6c6f723a20233333333b0a7d0a0a646420696e7075742c206464207465787461726561207b0a096d617267696e2d72696768743a203370783b0a7d0a0a64642073656c656374207b0a0977696474683a206175746f3b0a7d0a0a6464207465787461726561207b0a0977696474683a203835253b0a7d0a0a2f2a20486f7665722065666665637473202a2f0a6669656c6473657420646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20696e68657269743b0a7d0a0a2374696d657a6f6e65207b0a0977696474683a203935253b0a7d0a0a2a2068746d6c202374696d657a6f6e65207b0a0977696474683a203530253b0a7d0a0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0a6669656c647365742e717569636b2d6c6f67696e207b0a096d617267696e2d746f703a203570783b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e20696e707574207b0a0977696474683a206175746f3b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0a0977696474683a203135253b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e2d72696768743a203570783b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a2f2a20446973706c6179206f7074696f6e73206f6e2076696577746f7069632f76696577666f72756d20706167657320202a2f0a6669656c647365742e646973706c61792d6f7074696f6e73207b0a09746578742d616c69676e3a2063656e7465723b0a096d617267696e3a2033707820302035707820303b0a7d0a0a6669656c647365742e646973706c61792d6f7074696f6e73206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a6669656c647365742e646973706c61792d6f7074696f6e732061207b0a096d617267696e2d746f703a203370783b0a7d0a0a2f2a20446973706c617920616374696f6e7320666f722075637020616e64206d6370207061676573202a2f0a6669656c647365742e646973706c61792d616374696f6e73207b0a09746578742d616c69676e3a2072696768743b0a096c696e652d6865696768743a2032656d3b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a2031656d3b0a7d0a0a6669656c647365742e646973706c61792d616374696f6e73206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a6669656c647365742e736f72742d6f7074696f6e73207b0a096c696e652d6865696768743a2032656d3b0a7d0a0a2f2a204d435020666f72756d2073656c656374696f6e2a2f0a6669656c647365742e666f72756d2d73656c656374696f6e207b0a096d617267696e3a2035707820302033707820303b0a09666c6f61743a2072696768743b0a7d0a0a6669656c647365742e666f72756d2d73656c656374696f6e32207b0a096d617267696e3a203133707820302033707820303b0a09666c6f61743a2072696768743b0a7d0a0a2f2a204a756d70626f78202a2f0a6669656c647365742e6a756d70626f78207b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a20313570783b0a096865696768743a20322e35656d3b0a7d0a0a6669656c647365742e717569636b6d6f64207b0a0977696474683a203530253b0a09666c6f61743a2072696768743b0a09746578742d616c69676e3a2072696768743b0a096865696768743a20322e35656d3b0a7d0a0a2f2a205375626d697420627574746f6e206669656c64736574202a2f0a6669656c647365742e7375626d69742d627574746f6e73207b0a09746578742d616c69676e3a2063656e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e3a2035707820303b0a7d0a0a6669656c647365742e7375626d69742d627574746f6e7320696e707574207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e672d746f703a203370783b0a0970616464696e672d626f74746f6d3a203370783b0a7d0a0a2f2a20506f7374696e672070616765207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2f2a20427574746f6e73207573656420696e2074686520656469746f72202a2f0a23666f726d61742d627574746f6e73207b0a096d617267696e3a203135707820302032707820303b0a7d0a0a23666f726d61742d627574746f6e7320696e7075742c2023666f726d61742d627574746f6e732073656c656374207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a204d61696e206d65737361676520626f78202a2f0a236d6573736167652d626f78207b0a0977696474683a203830253b0a7d0a0a236d6573736167652d626f78207465787461726561207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a20313030253b0a09666f6e742d73697a653a20312e32656d3b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20456d6f7469636f6e732070616e656c202a2f0a23736d696c65792d626f78207b0a0977696474683a203138253b0a09666c6f61743a2072696768743b0a7d0a0a23736d696c65792d626f7820696d67207b0a096d617267696e3a203370783b0a7d0a0a2f2a20496e707574206669656c64207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a2031707820736f6c696420236330633063303b0a09636f6c6f723a20233333333333333b0a0970616464696e673a203270783b0a09637572736f723a20746578743b0a7d0a0a2e696e707574626f783a686f766572207b0a09626f726465723a2031707820736f6c696420236561656165613b0a7d0a0a2e696e707574626f783a666f637573207b0a09626f726465723a2031707820736f6c696420236561656165613b0a09636f6c6f723a20233462346234623b0a7d0a0a696e7075742e696e707574626f78097b2077696474683a203835253b207d0a696e7075742e6d656469756d097b2077696474683a203530253b207d0a696e7075742e6e6172726f77097b2077696474683a203235253b207d0a696e7075742e74696e7909097b2077696474683a2031323570783b207d0a0a74657874617265612e696e707574626f78207b0a0977696474683a203835253b0a7d0a0a2e6175746f7769647468207b0a0977696474683a206175746f2021696d706f7274616e743b0a7d0a0a2f2a20466f726d20627574746f6e207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a696e7075742e627574746f6e312c20696e7075742e627574746f6e32207b0a09666f6e742d73697a653a2031656d3b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0a0977696474683a206175746f2021696d706f7274616e743b0a0970616464696e672d746f703a203170783b0a0970616464696e672d626f74746f6d3a203170783b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09636f6c6f723a20233030303b0a096261636b67726f756e643a2023464146414641206e6f6e65207265706561742d7820746f70206c6566743b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e31207b0a09666f6e742d7765696768743a20626f6c643b0a09626f726465723a2031707820736f6c696420233636363636363b0a7d0a0a696e7075742e627574746f6e33207b0a0970616464696e673a20303b0a096d617267696e3a20303b0a096c696e652d6865696768743a203570783b0a096865696768743a20313270783b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a09666f6e742d76617269616e743a20736d616c6c2d636170733b0a7d0a0a2f2a20416c7465726e617469766520627574746f6e202a2f0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0a09626f726465723a2031707820736f6c696420233636363636363b0a7d0a0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233030303030303b0a0970616464696e673a20327078203870783b0a096c696e652d6865696768743a20323530253b0a09766572746963616c2d616c69676e3a20746578742d626f74746f6d3b0a096261636b67726f756e642d706f736974696f6e3a2030203170783b0a7d0a0a2f2a20486f76657220737461746573202a2f0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0a09626f726465723a2031707820736f6c696420234243424342433b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a09636f6c6f723a20234243424342433b0a7d0a0a696e7075742e64697361626c6564207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233636363636363b0a7d0a0a2f2a20546f70696320616e6420666f72756d20536561726368202a2f0a2e7365617263682d626f78207b0a096d617267696e2d746f703a203370783b0a096d617267696e2d6c6566743a203570783b0a09666c6f61743a206c6566743b0a7d0a0a2e7365617263682d626f7820696e707574207b0a7d0a0a696e7075742e736561726368207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a206c656674203170783b0a0970616464696e672d6c6566743a20313770783b0a7d0a0a2e66756c6c207b2077696474683a203935253b207d0a2e6d656469756d207b2077696474683a203530253b7d0a2e6e6172726f77207b2077696474683a203235253b7d0a2e74696e79207b2077696474683a203130253b7d0a2f2a2070726f53696c766572205374796c6520536865657420547765616b730a0a5468657365207374796c6520646566696e6974696f6e7320617265206d61696e6c79204945207370656369666963200a747765616b732072657175697265642064756520746f2069747320706f6f722043535320737570706f72742e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2a2068746d6c207461626c652c202a2068746d6c2073656c6563742c202a2068746d6c20696e707574207b20666f6e742d73697a653a20313030253b207d0a2a2068746d6c206872207b206d617267696e3a20303b207d0a2a2068746d6c207370616e2e636f726e6572732d746f702c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b207d0a2a2068746d6c207370616e2e636f726e6572732d746f70207370616e2c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207370616e207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b207d0a0a7461626c652e7461626c6531207b0a0977696474683a203939253b09092f2a204945203c20362062726f7773657273202a2f0a092f2a2054616e74656b206861636b202a2f0a09766f6963652d66616d696c793a20225c227d5c22223b0a09766f6963652d66616d696c793a20696e68657269743b0a0977696474683a20313030253b0a7d0a68746d6c3e626f6479207461626c652e7461626c6531207b2077696474683a20313030253b207d092f2a205265736574203130302520666f72206f70657261202a2f0a0a2a2068746d6c20756c2e746f7069636c697374206c69207b20706f736974696f6e3a2072656c61746976653b207d0a2a2068746d6c202e706f7374626f647920683320696d67207b20766572746963616c2d616c69676e3a206d6964646c653b207d0a0a2f2a20466f726d207374796c6573202a2f0a68746d6c3e626f6479206464206c6162656c20696e707574207b20766572746963616c2d616c69676e3a20746578742d626f74746f6d3b207d092f2a20416c69676e20636865636b626f7865732f726164696f20627574746f6e73206e6963656c79202a2f0a0a2a2068746d6c20696e7075742e627574746f6e312c202a2068746d6c20696e7075742e627574746f6e32207b0a0970616464696e672d626f74746f6d3a20303b0a096d617267696e2d626f74746f6d3a203170783b0a7d0a0a2f2a204d697363206c61796f7574207374796c6573202a2f0a2a2068746d6c202e636f6c756d6e312c202a2068746d6c202e636f6c756d6e32207b2077696474683a203435253b207d0a0a2f2a204e696365206d6574686f6420666f7220636c656172696e6720666c6f6174656420626c6f636b7320776974686f757420686176696e6720746f20696e7365727420616e79206578747261206d61726b757020286c696b65207370616365722061626f7665290a20202046726f6d20687474703a2f2f7777772e706f736974696f6e697365766572797468696e672e6e65742f65617379636c656172696e672e68746d6c200a23746162733a61667465722c20236d696e69746162733a61667465722c202e706f73743a61667465722c202e6e61766261723a61667465722c206669656c6473657420646c3a61667465722c20756c2e746f7069636c69737420646c3a61667465722c20756c2e6c696e6b6c6973743a61667465722c20646c2e706f6c6c733a6166746572207b0a09636f6e74656e743a20222e223b200a09646973706c61793a20626c6f636b3b200a096865696768743a20303b200a09636c6561723a20626f74683b200a097669736962696c6974793a2068696464656e3b0a7d2a2f0a0a2e636c6561726669782c2023746162732c20236d696e69746162732c206669656c6473657420646c2c20756c2e746f7069636c69737420646c2c20646c2e706f6c6c73207b0a096865696768743a2031253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2076696577746f70696320666978202a2f0a2a2068746d6c202e706f7374207b0a096865696768743a203235253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a206e617662617220666978202a2f0a2a2068746d6c202e636c6561726669782c202a2068746d6c202e6e61766261722c20756c2e6c696e6b6c697374207b0a096865696768743a2034253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2053696d706c652066697820736f20666f72756d20616e6420746f706963206c6973747320616c7761797320686176652061206d696e2d686569676874207365742c206576656e20696e204945360a0946726f6d20687474703a2f2f7777772e64757374696e6469617a2e636f6d2f6d696e2d6865696768742d666173742d6861636b202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096865696768743a206175746f2021696d706f7274616e743b0a096865696768743a20333570783b0a7d0a0a2a2068746d6c206c692e726f7720646c2e69636f6e206474207b0a096865696768743a20333570783b0a096f766572666c6f773a2076697369626c653b0a7d0a0a2a2068746d6c20237365617263682d626f78207b0a0977696474683a203235253b0a7d0a0a2f2a20436f72726563746c7920636c65617220666c6f6174696e6720666f722064657461696c73206f6e2070726f66696c652076696577202a2f0a2a3a66697273742d6368696c642b68746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a0a2a2068746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a0a2a2068746d6c202e666f72756d6267207461626c652e7461626c6531207b0a096d617267696e3a2030202d32707820307078202d3170783b0a7d0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6d6d6f6e2e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a68746d6c2c20626f6479207b0a09636f6c6f723a20233533363438323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a6831207b0a09636f6c6f723a20234646464646463b0a7d0a0a6832207b0a09636f6c6f723a20233238333133463b0a7d0a0a6833207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234343434343433b0a09636f6c6f723a20233131353039383b0a7d0a0a6872207b0a09626f726465722d636f6c6f723a20234646464646463b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a68722e646173686564207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a2053656172636820626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a237365617263682d626f78207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820236b6579776f726473207b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a237365617263682d626f7820696e707574207b0a09626f726465722d636f6c6f723a20233030373542303b0a7d0a0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e686561646572626172207b0a096261636b67726f756e642d636f6c6f723a20233132413345423b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a09636f6c6f723a20234646464646463b0a7d0a0a2e6e6176626172207b0a096261636b67726f756e642d636f6c6f723a20236361646365623b0a7d0a0a2e666f72616267207b0a096261636b67726f756e642d636f6c6f723a20233030373662313b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6c6973742e67696622293b0a7d0a0a2e666f72756d6267207b0a096261636b67726f756e642d636f6c6f723a20233132413345423b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a7d0a0a2e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234543463146333b0a09636f6c6f723a20233238333133463b0a7d0a0a2e706f73743a746172676574202e636f6e74656e74207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e706f73743a7461726765742068332061207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e626731097b206261636b67726f756e642d636f6c6f723a20234543463346373b207d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236531656266323b20207d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236361646365623b207d0a0a2e756370726f776267207b0a096261636b67726f756e642d636f6c6f723a20234443444545323b0a7d0a0a2e6669656c64736267207b0a096261636b67726f756e642d636f6c6f723a20234537453845413b0a7d0a0a7370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a2f2a20486f72697a6f6e74616c206c697374730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a756c2e6e61766c696e6b73207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234646464646463b0a7d0a0a2f2a205461626c65207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a7461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20234646464646463b0a7d0a0a7461626c652e7461626c65312074626f6479207472207b0a09626f726465722d636f6c6f723a20234246433143463b0a7d0a0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0a096261636b67726f756e642d636f6c6f723a20234346453146363b0a09636f6c6f723a20233030303b0a7d0a0a7461626c652e7461626c6531207464207b0a09636f6c6f723a20233533363438323b0a7d0a0a7461626c652e7461626c65312074626f6479207464207b0a09626f726465722d746f702d636f6c6f723a20234641464146413b0a7d0a0a7461626c652e7461626c65312074626f6479207468207b0a09626f726465722d626f74746f6d2d636f6c6f723a20233030303030303b0a09636f6c6f723a20233333333333333b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a7461626c652e696e666f2074626f6479207468207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d697363206c61796f7574207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a646c2e64657461696c73206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a646c2e64657461696c73206464207b0a09636f6c6f723a20233533363438323b0a7d0a0a2e736570207b0a09636f6c6f723a20233131393844393b0a7d0a0a2f2a20506167696e6174696f6e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e706167696e6174696f6e207370616e207374726f6e67207b0a09636f6c6f723a20234646464646463b0a096261636b67726f756e642d636f6c6f723a20233436393242463b0a09626f726465722d636f6c6f723a20233436393242463b0a7d0a0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a766973697465642c202e706167696e6174696f6e207370616e20613a616374697665207b0a09636f6c6f723a20233543373538433b0a096261636b67726f756e642d636f6c6f723a20234543454445453b0a09626f726465722d636f6c6f723a20234234424143303b0a7d0a0a2e706167696e6174696f6e207370616e20613a686f766572207b0a09626f726465722d636f6c6f723a20233336384144323b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a09636f6c6f723a20234646463b0a7d0a0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0a2e726f77202e706167696e6174696f6e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a7d0a0a2f2a204d697363656c6c616e656f7573207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e636f70797269676874207b0a09636f6c6f723a20233535353535353b0a7d0a0a2e6572726f72207b0a09636f6c6f723a20234243324134443b0a7d0a0a2e7265706f72746564207b0a096261636b67726f756e642d636f6c6f723a20234637454345463b0a7d0a0a6c692e7265706f727465643a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234543443544382021696d706f7274616e743b0a7d0a2e737469636b792c202e616e6e6f756e6365207b0a092f2a20796f752063616e206164642061206261636b67726f756e6420666f7220737469636b69657320616e6420616e6e6f756e63656d656e74732a2f0a7d0a0a6469762e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a09636f6c6f723a20234243324134443b0a7d0a0a702e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f72206c696e6b732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a613a6c696e6b097b20636f6c6f723a20233130353238393b207d0a613a76697369746564097b20636f6c6f723a20233130353238393b207d0a613a686f766572097b20636f6c6f723a20234433313134313b207d0a613a616374697665097b20636f6c6f723a20233336384144323b207d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20234138443846463b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20234338453646463b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233130353238393b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20234243324134443b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233130353238393b0a7d0a0a612e746f7069637469746c65207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20233336384144323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20234243324134443b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09636f6c6f723a20233336384144323b0a09626f726465722d626f74746f6d2d636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a76697369746564207b0a09636f6c6f723a20233544384642443b0a09626f726465722d626f74746f6d2d636f6c6f723a20233636363636363b0a7d0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234430453446363b0a09636f6c6f723a20233044343437333b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a6163746976652c202e7369676e617475726520613a686f766572207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a6163746976652c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09636f6c6f723a20233130353238393b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233130353238393b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a612e746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a612e746f7032207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f75702e6769662229207d0a612e646f776e09097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f646f776e2e6769662229207d0a612e6c65667409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f6c6566742e6769662229207d0a612e726967687409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f72696768742e6769662229207d0a0a612e75703a686f766572207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6e74656e742e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e666f72756d73207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6772616469656e742e67696622293b0a7d0a0a756c2e746f7069636c697374206c69207b0a09636f6c6f723a20233443354437373b0a7d0a0a756c2e746f7069636c697374206464207b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c20756c2e746f7069636c697374206464207b0a09626f726465722d72696768742d636f6c6f723a20236666663b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f524541445f5352437d22293b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e756e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f554e524541445f5352437d22293b0a7d0a0a6c692e726f77207b0a09626f726465722d746f702d636f6c6f723a2020234646464646463b0a09626f726465722d626f74746f6d2d636f6c6f723a20233030363038463b0a7d0a0a6c692e726f77207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234636463444303b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a2e72746c206c692e726f773a686f766572206464207b0a09626f726465722d72696768742d636f6c6f723a20234343434343433b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a09636f6c6f723a20234646464646463b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09636f6c6f723a20233131353039383b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e666171206474207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20234633424643433b0a09636f6c6f723a20234243324134443b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09626f726465722d746f702d636f6c6f723a2020234343434343433b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f71756f74652e67696622293b0a09626f726465722d636f6c6f723a234442444243453b0a7d0a0a2e72746c20626c6f636b71756f7465207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f71756f74655f72746c2e67696622293b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a234546454544393b0a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234339443244383b0a7d0a0a646c2e636f6465626f78206474207b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e636f6465626f7820636f6465207b0a09636f6c6f723a20233245384235373b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20234646383030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20233030303042423b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233030373730303b207d0a2e73796e746178737472696e67097b20636f6c6f723a20234444303030303b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a2020234339443244383b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2e617474616368626f78206464207b0a09626f726465722d746f702d636f6c6f723a20234339443244383b0a7d0a0a2e617474616368626f782070207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e617474616368626f7820702e7374617473207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465722d636f6c6f723a20233939393939393b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20696d67207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465722d636f6c6f723a20233336384144323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a6669656c647365742e706f6c6c7320646c207b0a09626f726465722d746f702d636f6c6f723a20234443444545323b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f6c6c626172312c202e72746c202e706f6c6c626172322c202e72746c202e706f6c6c626172332c202e72746c202e706f6c6c626172342c202e72746c202e706f6c6c62617235207b0a09626f726465722d72696768742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20234141323334363b0a09626f726465722d626f74746f6d2d636f6c6f723a20233734313632433b0a09626f726465722d72696768742d636f6c6f723a20233734313632433b0a7d0a0a2e72746c202e706f6c6c62617231207b0a09626f726465722d6c6566742d636f6c6f723a20233734313632433b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20234245314534413b0a09626f726465722d626f74746f6d2d636f6c6f723a20233843314333383b0a09626f726465722d72696768742d636f6c6f723a20233843314333383b0a7d0a0a2e72746c202e706f6c6c62617232207b0a09626f726465722d6c6566742d636f6c6f723a20233843314333383b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431314134453b0a09626f726465722d626f74746f6d2d636f6c6f723a20234141323334363b0a09626f726465722d72696768742d636f6c6f723a20234141323334363b0a7d0a0a2e72746c202e706f6c6c62617233207b0a09626f726465722d6c6566742d636f6c6f723a20234141323334363b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20234534313635333b0a09626f726465722d626f74746f6d2d636f6c6f723a20234245314534413b0a09626f726465722d72696768742d636f6c6f723a20234245314534413b0a7d0a0a2e72746c202e706f6c6c62617234207b0a09626f726465722d6c6566742d636f6c6f723a20234245314534413b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20234638313135373b0a09626f726465722d626f74746f6d2d636f6c6f723a20234431314134453b0a09626f726465722d72696768742d636f6c6f723a20234431314134453b0a7d0a0a2e72746c202e706f6c6c62617235207b0a09626f726465722d6c6566742d636f6c6f723a20234431314134453b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234646464646463b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566742d636f6c6f723a20234444444444443b0a7d0a0a2e72746c202e706d202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234444444444443b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f494d4147455345545f4c414e475f504154487d2f69636f6e5f757365725f6f6e6c696e652e67696622293b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220627574746f6e732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f5245504c595f5352437d22293b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4e45575f5352437d22293b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4c4f434b45445f5352437d22293b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f5245504c595f5352437d2229203b7d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f4e45575f5352437d2229203b7d0a2e666f7277617264706d2d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f464f52574152445f5352437d2229203b7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7072696e742e67696622293b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f73656e64656d61696c2e67696622293b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f666f6e7473697a652e67696622293b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d6661710909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6661712e67696622293b207d0a2e69636f6e2d6d656d6265727309090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6d656d626572732e67696622293b207d0a2e69636f6e2d686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d7563700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7563702e67696622293b207d0a2e69636f6e2d726567697374657209090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f72656769737465722e67696622293b207d0a2e69636f6e2d6c6f676f757409090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6c6f676f75742e67696622293b207d0a2e69636f6e2d626f6f6b6d61726b09090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f626f6f6b6d61726b2e67696622293b207d0a2e69636f6e2d62756d700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f62756d702e67696622293b207d0a2e69636f6e2d73756273637269626509090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7375627363726962652e67696622293b207d0a2e69636f6e2d756e737562736372696265090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f756e7375627363726962652e67696622293b207d0a2e69636f6e2d70616765730909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b207d0a2e69636f6e2d73656172636809090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7365617263682e67696622293b207d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f454d41494c5f5352437d22293b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f41494d5f5352437d22293b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5941484f4f5f5352437d22293b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5757575f5352437d22293b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4d534e4d5f5352437d22293b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4943515f5352437d22293b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4a41424245525f5352437d22293b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f504d5f5352437d22293b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f51554f54455f5352437d22293b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f5245504f52545f5352437d22293b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f454449545f5352437d22293b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f44454c4554455f5352437d22293b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f494e464f5f5352437d22293b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f555345525f5741524e5f5352437d22293b207d202f2a204e6565642075706461746564207761726e2069636f6e202a2f0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f722063702e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20234134423342463b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234235433143423b0a09626f726465722d746f702d636f6c6f723a20234639463946393b0a7d0a0a756c2e63706c697374207b0a09626f726465722d746f702d636f6c6f723a20234235433143423b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09626f726465722d626f74746f6d2d636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465722d636f6c6f723a20234442444545323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23746162732061207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273312e67696622293b0a7d0a0a23746162732061207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273322e67696622293b0a09636f6c6f723a20233533363438323b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20234243324134443b0a7d0a0a2374616273202e6163746976657461622061207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234341444345423b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a09636f6c6f723a20233333333333333b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273206c69207b0a096261636b67726f756e642d636f6c6f723a20234531454246323b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09636f6c6f723a20233333333b0a096261636b67726f756e642d636f6c6f723a20234232433243463b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6d656e752e67696622293b0a7d0a0a2e72746c20236e617669676174696f6e2061207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6d656e755f72746c2e67696622293b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d636f6c6f723a20236161626163363b0a09636f6c6f723a20234243324134443b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09636f6c6f723a20234433313134313b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a7d0a0a646c2e6d696e69206474207b0a09636f6c6f723a20233432353036373b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233030303030302021696d706f7274616e743b0a7d0a0a2f2a20504d2070616e656c2061646a7573746d656e7473202a2f0a2e706d2d70616e656c2d6865616465722c0a2363702d6d61696e202e706d2d6d6573736167652d6e6176207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234134423342463b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20234243324134443b0a09626f726465722d72696768742d636f6c6f723a20234243324134443b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234646363630303b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234139423843323b0a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233544384642443b0a7d0a0a2e706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233030303030303b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234343433b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220666f726d732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2047656e6572616c20666f726d207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a73656c656374207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a09636f6c6f723a20233030303b0a7d0a0a6c6162656c207b0a09636f6c6f723a20233432353036373b0a7d0a0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0a09636f6c6f723a2067726179746578743b0a7d0a0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a6464206c6162656c207b0a09636f6c6f723a20233333333b0a7d0a0a2f2a20486f7665722065666665637473202a2f0a6669656c6473657420646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20696e68657269743b0a7d0a0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2f2a20506f7374696e672070616765207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a236d6573736167652d626f78207465787461726561207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20496e707574206669656c64207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b200a09626f726465722d636f6c6f723a20234234424143303b0a09636f6c6f723a20233333333333333b0a7d0a0a2e696e707574626f783a686f766572207b0a09626f726465722d636f6c6f723a20233131413345413b0a7d0a0a2e696e707574626f783a666f637573207b0a09626f726465722d636f6c6f723a20233131413345413b0a09636f6c6f723a20233046343938373b0a7d0a0a2f2a20466f726d20627574746f6e207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0a09636f6c6f723a20233030303b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f627574746f6e2e67696622293b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e31207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a696e7075742e627574746f6e33207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20416c7465726e617469766520627574746f6e202a2f0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a20486f76657220737461746573202a2f0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0a09626f726465722d636f6c6f723a20234243324134443b0a09636f6c6f723a20234243324134443b0a7d0a0a696e7075742e736561726368207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f74657874626f785f7365617263682e67696622293b0a7d0a0a696e7075742e64697361626c6564207b0a09636f6c6f723a20233636363636363b0a7d0a);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_topics`
-- 

CREATE TABLE `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `topic_approved` (`topic_approved`),
  KEY `forum_appr_last` (`forum_id`,`topic_approved`,`topic_last_post_id`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `phpbb_topics`
-- 

INSERT INTO `phpbb_topics` VALUES (1, 2, 0, 0, 1, 0, 'Welcome to phpBB3', 2, 1282678151, 0, 0, 0, 0, 0, 0, 1, 0x61646d696e, 0x414130303030, 1, 2, 0x61646d696e, 0x414130303030, 0x57656c636f6d6520746f20706870424233, 1282678151, 972086460, 0, 0, 0, '', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_topics_posted`
-- 

CREATE TABLE `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_topics_posted`
-- 

INSERT INTO `phpbb_topics_posted` VALUES (2, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_topics_track`
-- 

CREATE TABLE `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_topics_track`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_topics_watch`
-- 

CREATE TABLE `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_topics_watch`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_user_group`
-- 

CREATE TABLE `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_user_group`
-- 

INSERT INTO `phpbb_user_group` VALUES (1, 1, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (2, 2, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (4, 2, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (5, 2, 1, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 3, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 4, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 5, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 6, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 7, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 8, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 9, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 10, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 11, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 12, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 13, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 14, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 15, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 16, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 17, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 18, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 19, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 20, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 21, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 22, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 23, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 24, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 25, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 26, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 27, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 28, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 29, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 30, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 31, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 32, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 33, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 34, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 35, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 36, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 37, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 38, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 39, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 40, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 41, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 42, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 43, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 44, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 45, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 46, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 47, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 48, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 49, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 50, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 51, 0, 0);
INSERT INTO `phpbb_user_group` VALUES (6, 52, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_users`
-- 

CREATE TABLE `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_pass_convert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` decimal(5,2) NOT NULL DEFAULT '0.00',
  `user_dst` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_from` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_icq` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_aim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_yim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_msnm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_website` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_occ` text COLLATE utf8_bin NOT NULL,
  `user_interests` text COLLATE utf8_bin NOT NULL,
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=53 ;

-- 
-- Dumping data for table `phpbb_users`
-- 

INSERT INTO `phpbb_users` VALUES (1, 2, 1, 0x30303030303030303030336b687261336e6b0a6931636a796f3030303030300a6931636a796f303030303030, 0, '', 1282678151, 0x416e6f6e796d6f7573, 0x616e6f6e796d6f7573, '', 0, 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x64204d205920483a69, 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x33366536626265666463666633353931, 1, 0, 0);
INSERT INTO `phpbb_users` VALUES (2, 3, 5, 0x7a696b307a6a7a696b307a6a7a696b3078730a6931636a796f3030303030300a7a696b307a6a7a6862327463, 0, 0x3138392e3138322e3133332e313330, 1282678151, 0x61646d696e, 0x61646d696e, 0x244824374474467150462e7071536150435a4955424f387a397872497a4f4e682f31, 0, 0, 0x616c667265642e6c6167676e657240676d61696c2e636f6d, 149529024, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 1, 0x414130303030, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x61363035636538346630643737383266, 1, 0, 0);
INSERT INTO `phpbb_users` VALUES (3, 2, 6, '', 0, '', 1282678151, 0x416473426f74205b476f6f676c655d, 0x616473626f74205b676f6f676c655d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x66633234663661616265396237633131, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (4, 2, 6, '', 0, '', 1282678151, 0x416c657861205b426f745d, 0x616c657861205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x34303832343637333939333138376130, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (5, 2, 6, '', 0, '', 1282678151, 0x416c7461205669737461205b426f745d, 0x616c7461207669737461205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x36636361366333623634376664323935, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (6, 2, 6, '', 0, '', 1282678151, 0x41736b204a6565766573205b426f745d, 0x61736b206a6565766573205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x32303237393937346439393139643934, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (7, 2, 6, '', 0, '', 1282678151, 0x4261696475205b5370696465725d, 0x6261696475205b7370696465725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x31393836666664636337333331653164, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (8, 2, 6, '', 0, '', 1282678151, 0x457861626f74205b426f745d, 0x657861626f74205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x35313836313134613537363032376463, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (9, 2, 6, '', 0, '', 1282678151, 0x4641535420456e7465727072697365205b437261776c65725d, 0x6661737420656e7465727072697365205b637261776c65725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x65376265303562623932336638396463, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (10, 2, 6, '', 0, '', 1282678151, 0x4641535420576562437261776c6572205b437261776c65725d, 0x6661737420776562637261776c6572205b637261776c65725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x30613765366338623464386638343261, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (11, 2, 6, '', 0, '', 1282678151, 0x4672616e636973205b426f745d, 0x6672616e636973205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x65623764393264633737653933643064, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (12, 2, 6, '', 0, '', 1282678151, 0x47696761626f74205b426f745d, 0x67696761626f74205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x38306230303835616433383965373261, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (13, 2, 6, '', 0, '', 1282678151, 0x476f6f676c6520416473656e7365205b426f745d, 0x676f6f676c6520616473656e7365205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x33633033323539316539323936663264, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (14, 2, 6, '', 0, '', 1282678151, 0x476f6f676c65204465736b746f70, 0x676f6f676c65206465736b746f70, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x62626362393834323532316334313534, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (15, 2, 6, '', 0, '', 1282678151, 0x476f6f676c65204665656466657463686572, 0x676f6f676c65206665656466657463686572, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x38633738333864643238336266323334, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (16, 2, 6, 0x0a6931636a796f3030303030300a6931636a7234303030303030, 0, '', 1282678151, 0x476f6f676c65205b426f745d, 0x676f6f676c65205b626f745d, '', 1282678151, 0, '', 0, '', 1285903590, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x38633362393465663031393937336430, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (17, 2, 6, '', 0, '', 1282678151, 0x48656973652049542d4d61726b74205b437261776c65725d, 0x68656973652069742d6d61726b74205b637261776c65725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x37316362393765623461643839626164, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (18, 2, 6, '', 0, '', 1282678151, 0x4865726974726978205b437261776c65725d, 0x6865726974726978205b637261776c65725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x39306634333565343266643561343237, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (19, 2, 6, '', 0, '', 1282678151, 0x49424d205265736561726368205b426f745d, 0x69626d207265736561726368205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x65373164663336306163363332336663, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (20, 2, 6, '', 0, '', 1282678151, 0x4943437261776c6572202d2049436a6f6273, 0x6963637261776c6572202d2069636a6f6273, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x36353563636337393366643963613230, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (21, 2, 6, '', 0, '', 1282678151, 0x69636869726f205b437261776c65725d, 0x69636869726f205b637261776c65725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x63643230373537333632326663333138, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (22, 2, 6, '', 0, '', 1282678151, 0x4d616a65737469632d3132205b426f745d, 0x6d616a65737469632d3132205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x63626466633031346131613162343330, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (23, 2, 6, '', 0, '', 1282678151, 0x4d657461676572205b426f745d, 0x6d657461676572205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x66643764316435383833613166356332, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (24, 2, 6, '', 0, '', 1282678151, 0x4d534e204e657773426c6f6773, 0x6d736e206e657773626c6f6773, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x38346263393963646331616338373461, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (25, 2, 6, '', 0, '', 1282678151, 0x4d534e205b426f745d, 0x6d736e205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x34316531616663376362633562343035, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (26, 2, 6, '', 0, '', 1282678151, 0x4d534e626f74204d65646961, 0x6d736e626f74206d65646961, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x36343839336233643833653865373966, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (27, 2, 6, '', 0, '', 1282678151, 0x4e472d536561726368205b426f745d, 0x6e672d736561726368205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x39616130323132313833356162363861, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (28, 2, 6, '', 0, '', 1282678151, 0x4e75746368205b426f745d, 0x6e75746368205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x66383536656466383065653165373638, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (29, 2, 6, '', 0, '', 1282678151, 0x4e757463682f435653205b426f745d, 0x6e757463682f637673205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x63636232313562313963373264363731, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (30, 2, 6, '', 0, '', 1282678151, 0x4f6d6e694578706c6f726572205b426f745d, 0x6f6d6e696578706c6f726572205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x63656631373532336265333561356438, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (31, 2, 6, '', 0, '', 1282678151, 0x4f6e6c696e65206c696e6b205b56616c696461746f725d, 0x6f6e6c696e65206c696e6b205b76616c696461746f725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x63653032663337653938353032303031, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (32, 2, 6, '', 0, '', 1282678151, 0x7073626f74205b5069637365617263685d, 0x7073626f74205b7069637365617263685d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x30633662373763323538383962663936, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (33, 2, 6, '', 0, '', 1282678151, 0x5365656b706f7274205b426f745d, 0x7365656b706f7274205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x39616136366461356234633364663462, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (34, 2, 6, '', 0, '', 1282678151, 0x53656e736973205b437261776c65725d, 0x73656e736973205b637261776c65725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x33366632643332633266353861343532, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (35, 2, 6, '', 0, '', 1282678151, 0x53454f20437261776c6572, 0x73656f20637261776c6572, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x61663537313562656365623032393736, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (36, 2, 6, '', 0, '', 1282678151, 0x53656f6d61205b437261776c65725d, 0x73656f6d61205b637261776c65725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x62313536333331326462376537343165, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (37, 2, 6, '', 0, '', 1282678151, 0x53454f536561726368205b437261776c65725d, 0x73656f736561726368205b637261776c65725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x39316162306462326232306432623135, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (38, 2, 6, '', 0, '', 1282678151, 0x536e61707079205b426f745d, 0x736e61707079205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x62663166386239616330353935373537, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (39, 2, 6, '', 0, '', 1282678151, 0x537465656c6572205b437261776c65725d, 0x737465656c6572205b637261776c65725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x64386336643635626163393337363862, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (40, 2, 6, '', 0, '', 1282678151, 0x53796e6f6f205b426f745d, 0x73796e6f6f205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x30653532623832666338626133636639, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (41, 2, 6, '', 0, '', 1282678151, 0x54656c656b6f6d205b426f745d, 0x74656c656b6f6d205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x32666163666666626563616330376562, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (42, 2, 6, '', 0, '', 1282678151, 0x5475726e6974696e426f74205b426f745d, 0x7475726e6974696e626f74205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x36623061333661343535363432656264, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (43, 2, 6, '', 0, '', 1282678151, 0x566f7961676572205b426f745d, 0x766f7961676572205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x31616435653839613963636463336333, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (44, 2, 6, '', 0, '', 1282678151, 0x5733205b536974657365617263685d, 0x7733205b736974657365617263685d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x64376437663439363431363735336334, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (45, 2, 6, '', 0, '', 1282678151, 0x573343205b4c696e6b636865636b5d, 0x773363205b6c696e6b636865636b5d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x64376638386638313062343732643238, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (46, 2, 6, '', 0, '', 1282678151, 0x573343205b56616c696461746f725d, 0x773363205b76616c696461746f725d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x33613734366534663135643632363166, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (47, 2, 6, '', 0, '', 1282678151, 0x576973654e7574205b426f745d, 0x776973656e7574205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x32323064346434396632306438356335, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (48, 2, 6, '', 0, '', 1282678151, 0x59614379205b426f745d, 0x79616379205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x63636236626364663236356532663930, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (49, 2, 6, '', 0, '', 1282678151, 0x5961686f6f204d4d437261776c6572205b426f745d, 0x7961686f6f206d6d637261776c6572205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x33653439386633303363376665376333, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (50, 2, 6, '', 0, '', 1282678151, 0x5961686f6f20536c757270205b426f745d, 0x7961686f6f20736c757270205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x66666164653939353435653833313930, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (51, 2, 6, '', 0, '', 1282678151, 0x5961686f6f205b426f745d, 0x7961686f6f205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x64313439366264366661613533633339, 0, 0, 0);
INSERT INTO `phpbb_users` VALUES (52, 2, 6, '', 0, '', 1282678151, 0x5961686f6f5365656b6572205b426f745d, 0x7961686f6f7365656b6572205b626f745d, '', 1282678151, 0, '', 0, '', 0, 1282678151, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0x656e, 0.00, 0, 0x44204d20642c205920673a692061, 1, 0, 0x394538444137, 0, 0, 0, 0, -3, 0, 0, 0x74, 0x64, 0, 0x74, 0x61, 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0x66393133633537313439633461343630, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_warnings`
-- 

CREATE TABLE `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_warnings`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_words`
-- 

CREATE TABLE `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `phpbb_words`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `phpbb_zebra`
-- 

CREATE TABLE `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- Dumping data for table `phpbb_zebra`
-- 

