# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.13)
# Database: ganli_rails
# Generation Time: 2013-10-07 03:03:12 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_menu_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_menu_permissions`;

CREATE TABLE `admin_menu_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_menu_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `admin_menu_permissions` WRITE;
/*!40000 ALTER TABLE `admin_menu_permissions` DISABLE KEYS */;

INSERT INTO `admin_menu_permissions` (`id`, `admin_menu_id`, `permission_id`, `created_at`, `updated_at`, `url`)
VALUES
	(1,1,1,'2013-08-10 07:36:52','2013-08-10 07:36:52',NULL),
	(2,1,2,'2013-08-10 07:36:52','2013-08-10 07:36:52',NULL),
	(3,2,3,'2013-08-10 21:14:56','2013-08-10 21:14:58',NULL),
	(4,2,4,'2013-08-11 07:48:28','2013-08-11 07:48:30',NULL),
	(5,3,5,'2013-08-11 08:42:30','2013-08-11 08:42:30',NULL),
	(6,3,6,'2013-08-11 09:31:50','2013-08-11 09:31:50',NULL),
	(7,4,8,'2013-08-17 17:33:31','2013-08-17 17:33:31',NULL),
	(8,4,9,'2013-08-18 15:27:58','2013-08-18 15:27:58','/admin/affair_forms/apply'),
	(9,4,10,'2013-08-20 16:54:43','2013-08-20 16:54:43',NULL),
	(10,5,11,'2013-08-22 10:26:42','2013-08-22 10:26:43',NULL),
	(11,5,12,'2013-08-23 09:50:57','2013-08-23 09:50:57','/admin/documents/audit'),
	(12,5,13,'2013-08-23 09:51:03','2013-08-23 02:39:34',NULL),
	(13,7,16,'2013-08-27 10:40:32','2013-08-27 10:40:32',NULL),
	(14,7,17,'2013-08-27 19:30:41','2013-08-27 19:30:41',NULL),
	(15,6,14,'2013-08-28 16:24:03','2013-08-28 16:24:04',NULL),
	(16,6,15,'2013-08-28 16:24:09','2013-08-28 16:24:10',NULL),
	(17,2,18,'2013-09-01 16:23:43','2013-09-01 16:23:43','/admin/users/audit'),
	(18,7,21,'2013-09-11 21:07:43','2013-09-11 21:07:43',NULL),
	(19,4,22,'2013-09-14 22:27:45','2013-09-14 22:27:46','/admin/affair_form_instances/list'),
	(20,8,24,'2013-09-22 18:01:15','2013-09-22 18:01:15',NULL),
	(21,8,25,'2013-09-22 18:01:20','2013-09-22 18:01:20',NULL),
	(22,8,26,'2013-09-22 18:01:25','2013-09-22 18:01:25','/admin/messages/outbox'),
	(23,9,27,'2013-09-24 20:30:06','2013-09-24 20:30:06','/admin/announcements'),
	(24,9,28,'2013-09-24 20:30:15','2013-09-24 20:30:16','/admin/announcements/view_index');

/*!40000 ALTER TABLE `admin_menu_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_menus`;

CREATE TABLE `admin_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `admin_menus` WRITE;
/*!40000 ALTER TABLE `admin_menus` DISABLE KEYS */;

INSERT INTO `admin_menus` (`id`, `name`, `url`, `rank`, `created_at`, `updated_at`)
VALUES
	(1,'文章管理',NULL,NULL,'2013-08-10 15:23:55','2013-08-10 15:23:55'),
	(2,'用户管理',NULL,NULL,'2013-08-10 16:37:53','2013-08-10 16:37:55'),
	(3,'页面管理',NULL,NULL,'2013-08-11 08:40:55','2013-08-11 08:40:58'),
	(4,'内务管理',NULL,NULL,'2013-08-17 17:21:39','2013-08-17 17:21:39'),
	(5,'教学资源',NULL,NULL,'2013-08-22 10:15:19','2013-08-22 10:15:20'),
	(6,'订餐系统',NULL,NULL,'2013-08-26 10:57:07','2013-08-26 10:57:08'),
	(7,'网站管理',NULL,NULL,'2013-08-27 10:40:14','2013-08-27 10:40:14'),
	(8,'私信管理',NULL,NULL,'2013-09-22 17:33:28','2013-09-22 17:33:28'),
	(9,'通知公告',NULL,NULL,'2013-09-24 20:29:59','2013-09-24 20:29:59');

/*!40000 ALTER TABLE `admin_menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table affair_form_instance_audit_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `affair_form_instance_audit_logs`;

CREATE TABLE `affair_form_instance_audit_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `approver` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `affair_form_instance_audit_logs` WRITE;
/*!40000 ALTER TABLE `affair_form_instance_audit_logs` DISABLE KEYS */;

INSERT INTO `affair_form_instance_audit_logs` (`id`, `instance_id`, `status`, `remark`, `approver`, `created_at`, `updated_at`)
VALUES
	(9,19,0,'a',1,'2013-09-25 13:33:33','2013-09-25 13:33:33'),
	(10,19,0,'a',2,'2013-09-25 13:34:14','2013-09-25 13:34:14');

/*!40000 ALTER TABLE `affair_form_instance_audit_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table affair_form_instances
# ------------------------------------------------------------

DROP TABLE IF EXISTS `affair_form_instances`;

CREATE TABLE `affair_form_instances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `form` text,
  `affair_form_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `audit_process` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `proposer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `affair_form_instances` WRITE;
/*!40000 ALTER TABLE `affair_form_instances` DISABLE KEYS */;

INSERT INTO `affair_form_instances` (`id`, `title`, `form`, `affair_form_id`, `created_at`, `updated_at`, `audit_process`, `status`, `proposer`)
VALUES
	(19,'甘李学校公车出行申请表','<p>\r\n	<span style=\"font-size:10px;\"></span> \r\n</p>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"ke-zeroborder\" style=\"width:648px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"48\" width=\"168\">\r\n				申请人\r\n			</td>\r\n			<td width=\"133\">\r\n				<br />\r\n			</td>\r\n			<td width=\"163\">\r\n				申请出车时间\r\n			</td>\r\n			<td width=\"184\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"117\">\r\n				申请事由\r\n			</td>\r\n			<td colspan=\"3\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>',1,'2013-09-25 13:33:19','2013-09-25 13:34:14','---\n- \'1\'\n- \'2\'\n',1,1);

/*!40000 ALTER TABLE `affair_form_instances` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table affair_forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `affair_forms`;

CREATE TABLE `affair_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `form` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `audit_process` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `affair_forms` WRITE;
/*!40000 ALTER TABLE `affair_forms` DISABLE KEYS */;

INSERT INTO `affair_forms` (`id`, `title`, `form`, `created_at`, `updated_at`, `audit_process`)
VALUES
	(1,'甘李学校公车出行申请表','<p>\r\n	<span style=\"font-size:10px;\"></span> \r\n</p>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"ke-zeroborder\" style=\"width:648px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"48\" width=\"168\">\r\n				申请人\r\n			</td>\r\n			<td width=\"133\">\r\n				<br />\r\n			</td>\r\n			<td width=\"163\">\r\n				申请出车时间\r\n			</td>\r\n			<td width=\"184\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"117\">\r\n				申请事由\r\n			</td>\r\n			<td colspan=\"3\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','2013-08-18 02:04:16','2013-09-26 10:20:13','---\n- \'1\'\n- \'2\'\n'),
	(3,'甘李学校请假登记表','<table cellpadding=\"0\" cellspacing=\"0\" class=\"ke-zeroborder\" style=\"width:645px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"38\" width=\"133\" style=\"text-align:center;\">\r\n				姓名\r\n			</td>\r\n			<td width=\"95\">\r\n				<br />\r\n			</td>\r\n			<td width=\"104\" style=\"text-align:center;\">\r\n				任教年级\r\n			</td>\r\n			<td width=\"115\">\r\n				<br />\r\n			</td>\r\n			<td width=\"72\" style=\"text-align:center;\">\r\n				学科\r\n			</td>\r\n			<td width=\"127\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"38\" style=\"text-align:center;\">\r\n				请假时间\r\n			</td>\r\n			<td colspan=\"5\" style=\"text-align:center;\">\r\n				年&nbsp; 月&nbsp; &nbsp;日&nbsp;&nbsp;&nbsp; 至&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; &nbsp;月&nbsp; 日\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"80\" style=\"text-align:center;\">\r\n				请假事由\r\n			</td>\r\n			<td colspan=\"5\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"80\" width=\"133\" style=\"text-align:center;\">\r\n				相关工作安排\r\n			</td>\r\n			<td colspan=\"5\">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\" height=\"39\" width=\"645\" style=\"text-align:center;\">\r\n				注：依据《甘李学校教职工请假办法（试行）》执行，1、一天及一天内由主管主任审批；2、一天以上由主管主任签署意见后，校长审批；3、节假日前一天原则上不准请假。\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<br />\r\n</p>','2013-09-25 14:02:19','2013-09-25 14:03:16','---\n- \'1\'\n');

/*!40000 ALTER TABLE `affair_forms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table announcement_viewers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `announcement_viewers`;

CREATE TABLE `announcement_viewers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `announcement_id` int(11) DEFAULT NULL,
  `viewer` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table announcements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `announcements`;

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `author` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table articles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `classification_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `thumb` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table classfiys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classfiys`;

CREATE TABLE `classfiys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table classifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classifications`;

CREATE TABLE `classifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `thumb_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `classifications` WRITE;
/*!40000 ALTER TABLE `classifications` DISABLE KEYS */;

INSERT INTO `classifications` (`id`, `name`, `created_at`, `updated_at`, `thumb_size`)
VALUES
	(1,'新闻','2013-08-09 04:23:42','2013-08-09 04:23:42',NULL),
	(2,'通知公告','2013-08-09 04:24:52','2013-08-09 04:24:52',NULL),
	(3,'校园风光','2013-09-10 09:26:26','2013-09-10 09:32:42','160 100'),
	(4,'学生作品','2013-09-13 12:35:38','2013-09-13 12:35:38','160 100'),
	(5,'招生信息','2013-09-13 23:35:54','2013-09-13 23:35:54',''),
	(6,'教学简讯','2013-09-16 07:23:20','2013-09-16 07:23:20',''),
	(7,'成果展示','2013-09-16 07:23:29','2013-09-16 07:23:29',''),
	(8,'教研活动','2013-09-16 07:23:43','2013-09-16 07:23:43',''),
	(9,'教师风采','2013-09-16 07:23:52','2013-09-16 07:23:52',''),
	(10,'学生园地','2013-09-16 07:54:37','2013-09-16 07:55:38',''),
	(11,'班级风采','2013-09-16 07:54:48','2013-09-16 07:55:28',''),
	(12,'心理辅导','2013-09-16 07:55:49','2013-09-16 07:55:49',''),
	(13,'活动简讯','2013-09-16 07:55:58','2013-09-16 07:55:58',''),
	(14,'国旗下讲话','2013-09-16 07:56:14','2013-09-16 07:56:14',''),
	(15,'法规政策','2013-09-16 07:56:29','2013-09-16 07:56:29',''),
	(16,'活动简讯','2013-09-16 07:56:38','2013-09-16 07:56:38',''),
	(17,'安全知识','2013-09-16 07:56:46','2013-09-16 07:56:46',''),
	(18,'党支部','2013-09-16 07:57:02','2013-09-16 07:57:02',''),
	(19,'工会','2013-09-16 07:57:14','2013-09-16 07:57:22',''),
	(20,'共青团','2013-09-16 07:57:32','2013-09-16 07:57:32',''),
	(21,'少先队','2013-09-16 07:57:41','2013-09-16 07:57:41',''),
	(22,'招生简章','2013-09-16 07:57:55','2013-09-16 07:57:55',''),
	(23,'学校制度','2013-09-16 07:58:07','2013-09-16 07:58:07',''),
	(24,'招标采购','2013-09-16 07:58:14','2013-09-16 07:58:14',''),
	(25,'财务信息','2013-09-16 07:58:22','2013-09-16 07:58:22',''),
	(26,'服务事项','2013-09-16 07:58:36','2013-09-26 10:06:04',''),
	(27,'工作流程','2013-09-16 07:58:52','2013-09-26 10:06:20',''),
	(28,'工作制度','2013-09-16 07:59:01','2013-09-26 10:06:27',''),
	(29,'联系方式','2013-09-26 10:06:36','2013-09-26 10:06:36','');

/*!40000 ALTER TABLE `classifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table documents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `uploader` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;

INSERT INTO `documents` (`id`, `name`, `path`, `status`, `uploader`, `created_at`, `updated_at`)
VALUES
	(6,'adsad','//document/2013/09/16/ConEmu64__.exe',2,1,'2013-09-16 03:16:25','2013-09-16 03:31:12'),
	(7,'sdfsafdsaf','//document/2013/09/16/flash_1.jpg',2,1,'2013-09-16 03:18:40','2013-09-16 03:31:09'),
	(8,'asdasdsa','/ganli/ganli/document/2013/09/16/admin-login-button-bg.jpg',2,1,'2013-09-16 03:21:44','2013-09-16 03:31:06'),
	(9,'test','/ganli/ganli/document/2013/09/23/1_110922145139_5 (1).jpg',2,1,'2013-09-23 11:30:13','2013-09-23 11:32:46'),
	(10,'test','/Users/chareice/git/ganli/document/2013/10/03/Untitled 1.doc',1,1,'2013-10-03 06:23:04','2013-10-03 06:23:20'),
	(11,'tetst','/document/2013/10/03/ganli_rails_2013-10-03.sql',1,1,'2013-10-03 06:26:20','2013-10-03 06:26:53'),
	(12,'test','/document/2013/10/07/Untitled 1.doc',1,1,'2013-10-07 02:32:11','2013-10-07 02:34:59');

/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table friendly_link_classifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `friendly_link_classifications`;

CREATE TABLE `friendly_link_classifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `friendly_link_classifications` WRITE;
/*!40000 ALTER TABLE `friendly_link_classifications` DISABLE KEYS */;

INSERT INTO `friendly_link_classifications` (`id`, `name`, `created_at`, `updated_at`, `rank`)
VALUES
	(2,'市级教育部门','2013-09-17 06:26:01','2013-09-26 07:48:46',0),
	(3,'区级教育部门','2013-09-17 06:39:15','2013-09-26 07:49:05',1);

/*!40000 ALTER TABLE `friendly_link_classifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table friendly_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `friendly_links`;

CREATE TABLE `friendly_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `friendly_link_classification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `friendly_links` WRITE;
/*!40000 ALTER TABLE `friendly_links` DISABLE KEYS */;

INSERT INTO `friendly_links` (`id`, `name`, `url`, `rank`, `created_at`, `updated_at`, `friendly_link_classification_id`)
VALUES
	(4,'深圳市教科院','http://www.szjky.edu.cn/',0,'2013-09-17 06:37:25','2013-09-17 06:37:25',2),
	(5,'龙岗教育','http://www.szlg.edu.cn/',1,'2013-09-17 06:40:21','2013-09-17 06:41:27',3);

/*!40000 ALTER TABLE `friendly_links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'系统管理员','2013-08-08 13:51:39','2013-08-08 13:51:39'),
	(2,'教师','2013-08-11 08:04:48','2013-09-16 11:43:18'),
	(3,'级组长','2013-08-20 02:25:11','2013-09-16 11:44:30'),
	(4,'科组长','2013-08-20 05:51:34','2013-09-16 11:44:38'),
	(5,'行政','2013-09-16 11:44:49','2013-09-16 11:45:02'),
	(6,'副校长','2013-09-16 11:45:14','2013-09-16 11:45:14'),
	(7,'校长','2013-09-16 11:45:26','2013-09-16 11:45:26');

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table groups_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups_permissions`;

CREATE TABLE `groups_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `groups_permissions` WRITE;
/*!40000 ALTER TABLE `groups_permissions` DISABLE KEYS */;

INSERT INTO `groups_permissions` (`id`, `permission_id`, `group_id`, `created_at`, `updated_at`)
VALUES
	(2,1,1,NULL,NULL),
	(5,3,1,NULL,NULL),
	(6,2,1,NULL,NULL),
	(7,4,1,NULL,NULL),
	(8,1,2,NULL,NULL),
	(9,3,2,NULL,NULL),
	(10,4,2,NULL,NULL),
	(13,7,1,NULL,NULL),
	(14,6,1,NULL,NULL),
	(15,5,1,NULL,NULL),
	(16,8,1,NULL,NULL),
	(17,9,1,NULL,NULL),
	(18,7,3,NULL,NULL),
	(19,8,3,NULL,NULL),
	(20,7,4,NULL,NULL),
	(21,8,4,NULL,NULL),
	(22,10,1,NULL,NULL),
	(24,3,4,NULL,NULL),
	(25,10,4,NULL,NULL),
	(26,4,4,NULL,NULL),
	(27,11,1,NULL,NULL),
	(28,12,1,NULL,NULL),
	(29,13,1,NULL,NULL),
	(30,16,1,NULL,NULL),
	(31,17,1,NULL,NULL),
	(32,14,1,NULL,NULL),
	(33,15,1,NULL,NULL),
	(34,18,1,NULL,NULL),
	(35,14,4,NULL,NULL),
	(36,15,4,NULL,NULL),
	(37,19,1,NULL,NULL),
	(38,20,1,NULL,NULL),
	(39,21,1,NULL,NULL),
	(40,22,1,NULL,NULL),
	(41,23,1,NULL,NULL),
	(42,7,6,NULL,NULL),
	(43,7,7,NULL,NULL),
	(44,7,5,NULL,NULL),
	(45,7,2,NULL,NULL),
	(46,24,1,NULL,NULL),
	(47,25,1,NULL,NULL),
	(48,26,1,NULL,NULL),
	(49,27,1,NULL,NULL),
	(50,28,1,NULL,NULL);

/*!40000 ALTER TABLE `groups_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table guest_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `guest_messages`;

CREATE TABLE `guest_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '0',
  `nickname` varchar(255) DEFAULT NULL,
  `content` text,
  `ip` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `guest_messages` WRITE;
/*!40000 ALTER TABLE `guest_messages` DISABLE KEYS */;

INSERT INTO `guest_messages` (`id`, `status`, `nickname`, `content`, `ip`, `created_at`, `updated_at`)
VALUES
	(1,1,'雪山居士','阿萨德撒的','192.168.33.1','2013-08-27 15:40:00','2013-09-17 05:41:51'),
	(2,1,'Bootstrap ','Bootstrap 是快速开发Web应用程序的前端工具包。它是一个CSS和HTML的集合，它使用了最新的浏览器技术，给你的Web开发提供了时尚的版式，表单，buttons，表格，网格系统等等。','192.168.33.1','2013-08-28 08:03:40','2013-08-28 08:07:55');

/*!40000 ALTER TABLE `guest_messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table left_navs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `left_navs`;

CREATE TABLE `left_navs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `left_navs` WRITE;
/*!40000 ALTER TABLE `left_navs` DISABLE KEYS */;

INSERT INTO `left_navs` (`id`, `name`, `thumb`, `url`, `rank`, `created_at`, `updated_at`)
VALUES
	(2,'教务公告','/assets/article/2013/09/14/jiaowugonggao.jpg','/',1,'2013-09-14 04:56:53','2013-09-14 04:56:53');

/*!40000 ALTER TABLE `left_navs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lunches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lunches`;

CREATE TABLE `lunches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `mold` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `lunches` WRITE;
/*!40000 ALTER TABLE `lunches` DISABLE KEYS */;

INSERT INTO `lunches` (`id`, `date`, `teacher`, `created_at`, `updated_at`, `mold`)
VALUES
	(6,'2013-09-27',1,'2013-09-26 02:02:16','2013-09-26 02:02:16','---\n- \'1\'\n- \'2\'\n- \'3\'\n');

/*!40000 ALTER TABLE `lunches` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `content` text,
  `atachment` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `destroy_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table navigations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `navigations`;

CREATE TABLE `navigations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `nav_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `navigations` WRITE;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;

INSERT INTO `navigations` (`id`, `name`, `url`, `nav_id`, `created_at`, `updated_at`, `rank`)
VALUES
	(1,'走进甘李','/pages/2',NULL,'2013-08-09 14:07:15','2013-10-02 13:03:06',1),
	(2,'学校简介','',1,'2013-08-09 14:22:47','2013-08-09 14:22:47',0),
	(3,'校长寄语','',1,'2013-08-09 14:23:10','2013-08-09 14:23:10',1),
	(4,'新闻公告','1',NULL,'2013-08-09 14:55:00','2013-09-12 23:42:26',2),
	(5,'新闻','1',4,'2013-08-09 14:55:18','2013-08-09 14:55:18',0),
	(6,'通知公告','2',4,'2013-08-09 14:55:34','2013-08-09 14:55:34',1),
	(7,'教学教研','6',NULL,'2013-08-09 14:55:48','2013-09-16 07:35:57',3),
	(8,'教师风采','9',7,'2013-08-09 14:56:05','2013-08-09 14:56:05',0),
	(9,'首页','/',NULL,'2013-09-08 09:56:03','2013-09-11 14:14:33',0),
	(10,'德育园地','10',NULL,'2013-09-08 11:24:32','2013-09-08 11:24:32',4),
	(11,'安全教育','15',NULL,'2013-09-08 11:24:41','2013-09-08 11:24:41',5),
	(12,'党建专栏','18',NULL,'2013-09-08 11:24:53','2013-09-08 11:24:53',6),
	(13,'校务公开','22',NULL,'2013-09-08 11:25:12','2013-09-08 11:25:12',7),
	(14,'服务窗口','/page/service',NULL,'2013-09-08 11:25:25','2013-09-27 01:06:58',8),
	(15,'论坛资源','/bbs',NULL,'2013-09-08 11:25:33','2013-09-14 13:50:07',9),
	(16,'组织机构','',1,'2013-09-12 10:44:21','2013-09-12 10:44:21',NULL),
	(17,'办学理念','',1,'2013-09-12 10:44:38','2013-09-12 10:44:38',NULL),
	(18,'教学简讯','6',7,'2013-09-12 10:45:12','2013-09-16 07:24:38',NULL),
	(19,'成果展示','7',7,'2013-09-12 10:45:22','2013-09-12 10:45:22',NULL),
	(20,'教研活动','8',7,'2013-09-12 10:45:34','2013-09-12 10:45:34',NULL),
	(21,'学生园地','10',10,'2013-09-12 10:45:46','2013-09-12 10:45:46',NULL),
	(22,'班级风采','11',10,'2013-09-12 10:45:57','2013-09-12 10:45:57',NULL),
	(23,'心理辅导','12',10,'2013-09-12 10:46:06','2013-09-12 10:46:06',NULL),
	(24,'活动简讯','13',10,'2013-09-12 10:46:19','2013-09-12 10:46:19',NULL),
	(25,'国旗下讲话','14',10,'2013-09-12 10:46:32','2013-09-12 10:46:32',NULL),
	(26,'法规政策','15',11,'2013-09-12 10:46:50','2013-09-12 10:46:50',NULL),
	(27,'活动简讯','16',11,'2013-09-12 10:47:05','2013-09-12 10:47:05',NULL),
	(28,'安全知识','17',11,'2013-09-12 10:47:14','2013-09-12 10:47:14',NULL),
	(29,'党支部','18',12,'2013-09-12 10:47:22','2013-09-12 10:47:22',NULL),
	(30,'工会','19',12,'2013-09-12 10:47:33','2013-09-12 10:47:33',NULL),
	(31,'共青团','20',12,'2013-09-12 10:47:42','2013-09-12 10:47:42',NULL),
	(32,'少先队','21',12,'2013-09-12 10:47:49','2013-09-12 10:47:49',NULL),
	(33,'招生简章','22',13,'2013-09-12 10:47:58','2013-09-12 10:47:58',NULL),
	(34,'学校制度','23',13,'2013-09-12 10:48:07','2013-09-12 10:48:07',NULL),
	(35,'招标采购','24',13,'2013-09-12 10:48:17','2013-09-12 10:48:17',NULL),
	(36,'财务信息','25',13,'2013-09-12 10:48:27','2013-09-12 10:48:27',NULL),
	(37,'服务事项','26',14,'2013-09-12 10:48:37','2013-09-26 10:04:50',NULL),
	(38,'工作流程','27',14,'2013-09-12 10:48:49','2013-09-26 10:04:59',NULL),
	(39,'工作制度','28',14,'2013-09-12 10:48:58','2013-09-26 10:05:08',NULL),
	(40,'联系方式','29',14,'2013-09-12 10:49:07','2013-09-26 10:06:53',NULL),
	(41,'甘李论坛','',15,'2013-09-12 10:49:17','2013-09-12 10:49:17',NULL),
	(42,'内部资源','',15,'2013-09-12 10:49:27','2013-09-12 10:49:27',NULL),
	(43,'振华智邦','',15,'2013-09-12 10:49:36','2013-09-12 10:49:36',NULL);

/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `navigation_id` int(11) DEFAULT NULL,
  `content` mediumtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `title`, `navigation_id`, `content`, `created_at`, `updated_at`)
VALUES
	(2,'组织机构',16,'<p><img src=\"http://jxbsu.com/jxut.edu.cn/images/school.jpg\" alt=\"\" width=\"769\" height=\"1559\" border=\"0\" usemap=\"#Map\"/><br/></p>','2013-09-14 07:34:49','2013-09-14 07:34:49'),
	(3,'办学理念',17,'<div style=\"margin:0px;padding:0px;color:#333333;font-family:����;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:small;\"><span style=\"font-family:宋体;\">“尚德务实、求真拓新”是北航的办学理念，反映了北航的办学传统和办学特色，是学校今后办学和发展的基本理念，也是全校师生员工建设北航的共同思想基础。<br />\r\n&nbsp;&nbsp;&nbsp; 所谓“尚德”，是指崇尚道德为先，弘扬品行为首，将道德和品行作为立人之本、育人之基。所谓“务实”，是指的讲究实际，不求浮华，脚踏实地，真抓实干，注重解决实际问题。高等学校的根本任务是育人，而良好的道德品行既是成人成才的基础，又是传道授业的要求。追求品德高尚、人格完善，始终是全体师生共同的愿望和要求。务实既是一种态度，又是一种作风。作为工程技术特色突出的大学，我校一直保持注重实践，重视具体问题，一切从实际出发，理论联系实际的良好风尚，北航人也一直保持着兢兢业业、实实在在、默默奉献的优秀传统。“尚德务实”，反映了做人、做事、做学问的基本准则。<br />\r\n&nbsp;&nbsp;&nbsp; 所谓“求真”，是指追求科学真理，领悟人生真谛，探索客观世界的发展规律。高等学校是研究高深学问的殿堂，教学与科研活动本身就是师生共同追求真理、探求真知、孵育真情，培养真才的过程。所谓“拓新”，是指解放思想、勇于开拓、不断创新、与时俱进。没有开拓的精神、创新的意识，就不可能进步，也不可能发展。一个人如此，一所高校如此，一个国家一个民族更是如此。我校建校以来一贯崇尚科学、注重学术、追求真理、开拓进取、勇于创新，这一传统理应得到传承和发扬。<br />\r\n<br />\r\n</span></span>\r\n</div>\r\n<div style=\"margin:0px;padding:0px;color:#333333;font-family:����;background-color:#FFFFFF;text-align:center;\">\r\n	<img width=\"472\" height=\"345\" alt=\"\" src=\"http://www.buaa.edu.cn/images/content/2011-09/20110930173812492426.jpg\" /><br />\r\n办学理念主题雕塑《世纪之声》（学院路校区）<br />\r\n<br />\r\n<img width=\"472\" height=\"317\" alt=\"\" src=\"http://www.buaa.edu.cn/images/content/2011-09/20110930173911058577.jpg\" /><br />\r\n办学理念主题雕塑《世纪之声》（沙河校区）\r\n</div>','2013-09-16 10:01:20','2013-09-16 10:01:20'),
	(4,'甘李学校简介',2,'<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	北京大学创办于1898年，初名京师大学堂，是中国第一所国立综合性大学，也是当时中国最高教育行政机关。辛亥革命后，于1912年改为现名。\r\n</p>\r\n<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	作为新文化运动的中心和“五四”运动的策源地，作为中国最早传播马克思主义和民主科学思想的发祥地，作为中国共产党最早的活动基地，北京大学为民族的振兴和解放、国家的建设和发展、社会的文明和进步做出了不可替代的贡献，在中国走向现代化的进程中起到了重要的先锋作用。爱国、进步、民主、科学的传统精神和勤奋、严谨、求实、创新的学风在这里生生不息、代代相传。\r\n</p>\r\n<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	1917年，著名教育家蔡元培出任北京大学校长，他“循思想自由原则，取兼容并包主义”，对北京大学进行了卓有成效的改革，促进了思想解放和学术繁荣。陈独秀、李大钊、毛泽东以及鲁迅、胡适等一批杰出人才都曾在北京大学任职或任教。\r\n</p>\r\n<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	1937年卢沟桥事变后，北京大学与清华大学、南开大学南迁长沙，共同组成长沙临时大学。不久，临时大学又迁到昆明，改称国立西南联合大学。抗日战争胜利后，北京大学于1946年10月在北平复学。\r\n</p>\r\n<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	中华人民共和国成立后，全国高校于1952年进行院系调整，北京大学成为一所以文理基础教学和研究为主的综合性大学，为国家培养了大批人才。据不完全统计，北京大学的校友和教师有400多位两院院士，中国人文社科界有影响的人士相当多也出自北京大学。\r\n</p>\r\n<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	改革开放以来，北京大学进入了一个前所未有的大发展、大建设的新时期，并成为国家“211工程”重点建设的两所大学之一。\r\n</p>\r\n<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	1998年5月4日，北京大学百年校庆之际，国家主席江泽民在庆祝北京大学建校一百周年大会上发表讲话，发出了“为了实现现代化，我国要有若干所具有世界先进水平的一流大学”的号召。在国家的支持下，北京大学适时启动“创建世界一流大学计划”，从此，北京大学的历史翻开了新的一页。\r\n</p>\r\n<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	2000年4月3日，北京大学与原北京医科大学合并，组建了新的北京大学。原北京医科大学的前身是国立北京医学专门学校，创建于1912年10月26日。20世纪三、四十年代，学校一度名为北平大学医学院，并于1946年7月并入北京大学。1952年在全国高校院系调整中，北京大学医学院脱离北京大学，独立为北京医学院。1985年更名为北京医科大学，1996年成为国家首批“211工程”重点支持的医科大学。两校合并进一步拓宽了北京大学的学科结构，为促进医学与人文社会科学及理科的结合，改革医学教育奠定了基础。\r\n</p>\r\n<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	近年来，在“211工程”和“985工程”的支持下，北京大学进入了一个新的历史发展阶段，在学科建设、人才培养、师资队伍建设、教学科研等各方面都取得了显著成绩，为将北大建设成为世界一流大学奠定了坚实的基础。今天的北京大学已经成为国家培养高素质、创造性人才的摇篮、科学研究的前沿和知识创新的重要基地和国际交流的重要桥梁和窗口。\r\n</p>\r\n<p style=\"font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;\">\r\n	现任校党委书记朱善璐教授、校长王恩哥院士。\r\n</p>','2013-09-16 10:02:31','2013-09-16 10:02:31'),
	(5,'校长寄语',3,'<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	我校将教育理念定位为：尽可能多的研究学生、尽可能多的要求学生、尽可能多的尊重学生、尽可能多的发展学生。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	\"尽可能多的要求学生、尽可能多的尊重学生\"是前苏联著名教育家马卡连柯对教育的理解和自己关于教育成功经验的总结，\"尽可能多的研究学生\"是关于教育策略\"四个研究\"论述中的第一个研究，\"尽可能多的发展学生\"是对我校培养目标\"让不同层次、不同类型的学生到学校能有所学、有所得、有所提高、有所发展，成人、成材\"论述中的集中体现。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	好多教育界的资深人士，称马卡连柯为\"真正的教育家\"。之所以给他这样一个尊称，理由大致有两条，一是他不仅是教育的理论大家，而且是冲在教育教学第一线的实践者，二是他进行教育教学的学校大致就相当于我们现在的民办学校，而且所教的学生和学生之间存在着很大的差异。在这种情况下，马卡连柯总结出了这样的教育理念——尽可能多的要求学生、尽可能多的尊重学生。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	\"尽可能多的要求学生\"，应该包括这样几层含义：\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	一是对不同的学生提出不同的要求。每个学生的智力因素、非智力因素、生活的环境、受到的影响各不相同，学生入校后，对不同的学生实施相同的教育，提出相同的要求，显然是行不通的。只有对不同的学生提出不同的要求，才能摆脱\"使人工具化\"的教育误区。也只有这样，才是客观的、现实的做法。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	二是对同一个学生在不同时间、不同环境下，提出不同的要求。\"最近发展区的理论\"表明，只有要求适当，发展才可能成为现实。\"外因通过内因起作用\"，外因还起着相当重要的作用，教育应该也属于外因，但决不是外因的全部，时间、环境变了，表明其他外因发生了改变，要求也应随之不同，以达到与其他外因协同起来，对学生产生最佳影响，实现向\"最近发展区\"的过渡。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	三是对学生循序、不断的提出要求，事物的发展是一个由量变到质变再到新的量变的过程。质变是量变的一定程度上的结果，量变是每时每刻都在发生的，只有不断地、渐进地提出问题，才会保证学生发展方向和发展的速度。远大理想是必要的，具体的目标要求更是必须的，只有这样才是一种辨证的发展观指导下的教育理念和做法。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	\"尽可能多的尊重学生\"，应该包括以下几层含义：\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	一是尊重学生的人格，我们绝对不能忽略这样一点，就是学生同样是人，是有血有肉，有头脑，有思想，集自然属性和社会属性于一身的个体的人。马斯洛需要学说理论说明，只要是智力正常，他绝对需要尊重，只有受到尊重，他的智力因素才能正常发挥，他的各项非智力因素才会达到平衡，这时他才有更高层次的需要——自我实现的需要，也只有这时，对学生的激励刺激和感知刺激才会发挥最好的效果。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	尊重学生的人格，决不是迁就学生已有的已经扭曲的人格，要采取一系列方式、方法包括必要的强制手段，使学生得以正常发展，教育活动得以正常进行。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	二是尊重人的发展规律。人的发展包括生理发展和心理发展，生理发展和心理发展各有自己的规律又相互影响、相互渗透。尊重这一切，教育才会发挥其应有的作用。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	三是正确理解教育对人的发展所起的作用，教育不是把不同的人培养成相同的\"工具\"，而是要开发人力资源的潜能，是促进人的科学化、个性化和现代化的教育，是把人的精神和思想彻底解放出来。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	<strong>如何理解\"尽可能多的研究学生\"</strong> \r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	研究学生是四个研究（研究教育对象，研究教育环境，研究教材和教纲，研究中考和高考试卷）中的第一个研究、也是四个研究的核心。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	\"研究\"可解释为\"探究事物的真相、性质、规律等\"，既是主观对客观的能动反映，这种反映具有相对性，有待于深化，尽可能的研究就是要对客观的反映在程度上、层次上尽可能的和客观贴近。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	研究学生，广义上讲，就是要以一种变化、发展的观点、研究的态度对待自己的工作对象、工作内容和各项教育活动。具体讲，就是尽量地认识和掌握每一个学生的认识过程、情感过程、意志过程、还有能力、气质和性格。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	比如说研究性格，美国心理学家卡特尔提出了性格的16种根源特质，含蓄或坦率、迟钝或灵活、激动或稳定、谦虚或武断、严肃或随和、善变或认真、萎缩或莽撞、心软或心硬、相信或多疑、重实际或重理想、直爽或机变……，一旦彻底了解了一个人的特质，就会预测他在某种情况下将怎样行动。当然要研究的内容还有很多、很多，要讲究一定的方法……\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	研究学生之前，要明确一个观点，就是只要是智力正常的人，他的学习成绩上不去，肯定有问题所在，或者是来自于遗传素质的影响，或者是来自于环境的影响。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	还有一个观点就是，只要是智力正常的学生，就有发展的可能，就一定可以有教育的切入点，如何找到这个切入点，是研究的第一步，也是最重要的一步，这一步走好了，就成功了一半。这两个观点使我们既可以正视困难，又可以树立信心。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	还要有一个思想准备，就是决不要埋怨学生基础如何差，而要面对他们，因为只有他们，才有了民办学校生存和发展的基础，要把他们当成是研究的对象，不要抱着一种付出必有回报的心理，从而导致对他们的厌烦，要保持平和的心态研究他们。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	<strong>如何理解\"尽可能多的发展学生\"</strong> \r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	任何人生来就具有一定的潜能，甚至是巨大的潜能，但人的潜能很少能自动表现出来，当具备了某种条件时，人的潜能会得到超常的发挥，我们的责任和义务就是创造这种条件。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	人的发展，学生的发展，既是教育的终极目标，也是教育的社会功能得以实现的必要条件，人的发展首先是多方面的尽可能的充分发展，但重要的是每个学生富有特点的个性发展。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	学生的发展，应该是全面（包括政治素质、道德素质，知识水平、心智能力，精神素质、身体素质）发展，协调发展，可持续发展，但不应该是也不可能是均衡发展，或者说是平均发展。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	我们的教育决不仅仅是补缺的教育，而更多的是培优的教育，这一点表现在特长的培养上尤为突出，一名同学有音乐天分，一定让他把数学成绩提高到与有逻辑思维天分的学生的程度，是不可能的，也是没有必要的。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	我们处在社会主义市场经济的迅速发展时期，就业是多元化的，大学的招生是多元化的，这就要求我们必须以多元化的大学前期教育（高中教育）去应对多元化的招生方向，特别是我们无法去挑选学生的时期，这样做才是最现实的。具体讲就是我们不能准备一个理想的什么班去招生，而要面对招来的学生去培养他的哪方面特长，为他寻找一个什么样的出路。\r\n</p>\r\n<p style=\"text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;\">\r\n	学生的持续发展，学生在校期间的学习时间是及其有限的，社会的大课堂是无限的，学校的任务就是要在有限的学校时间给学生一个持续发展的原动力，使学生能够持续的确定目标，不断地选定自己的发展途径，准确地确定自己的发展方式，其核心是准确的把握自己的能力和具体问题具体分析的能力\r\n</p>','2013-09-16 10:03:53','2013-09-16 10:09:08');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permission_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_actions`;

CREATE TABLE `permission_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `permission_actions` WRITE;
/*!40000 ALTER TABLE `permission_actions` DISABLE KEYS */;

INSERT INTO `permission_actions` (`id`, `permission_id`, `action`, `created_at`, `updated_at`)
VALUES
	(3,1,'admin/articles#new','2013-08-08 02:11:58','2013-08-08 02:11:58'),
	(4,1,'admin/articles#create','2013-08-08 02:12:03','2013-08-08 02:12:03'),
	(5,2,'admin/articles#edit','2013-08-10 15:22:53','2013-08-10 15:22:53'),
	(6,2,'admin/articles#update','2013-08-10 15:23:08','2013-08-10 15:23:08'),
	(7,2,'admin/articles#index','2013-08-10 16:16:21','2013-08-10 16:16:22'),
	(8,3,'admin/groups#index','2013-08-10 21:16:00','2013-08-10 21:16:01'),
	(9,4,'admin/users#index','2013-08-11 07:46:59','2013-08-11 07:46:59'),
	(10,5,'admin/navigations#index','2013-08-11 08:41:56','2013-08-11 08:42:06'),
	(11,6,'admin/pages#index','2013-08-11 09:32:40','2013-08-11 09:32:40'),
	(12,7,'admin/admin#index','2013-08-12 07:52:47','2013-08-12 07:52:47'),
	(13,3,'admin/groups#edit','2013-08-12 07:54:59','2013-08-12 07:54:59'),
	(14,3,'admin/groups#update','2013-08-12 07:55:15','2013-08-12 07:55:15'),
	(15,3,'admin/groups#destroy','2013-08-12 07:55:42','2013-08-12 07:55:42'),
	(16,6,'admin/pages#new','2013-08-14 15:02:04','2013-08-14 15:02:05'),
	(17,6,'admin/pages#edit','2013-08-14 15:02:17','2013-08-14 15:02:17'),
	(18,4,'admin/users#edit','2013-08-14 15:04:25','2013-08-14 15:04:26'),
	(19,5,'admin/navigations#new','2013-08-16 10:18:56','2013-08-16 10:18:56'),
	(20,5,'admin/navigations#edit','2013-08-16 10:19:09','2013-08-16 10:19:09'),
	(21,8,'admin/affair_forms#index','2013-08-18 08:49:24','2013-08-18 08:49:25'),
	(22,8,'admin/affair_forms#new','2013-08-18 09:52:55','2013-08-18 09:52:56'),
	(23,8,'admin/affair_forms#create','2013-08-18 09:55:26','2013-08-18 09:55:26'),
	(24,9,'admin/affair_form_instances#index','2013-08-18 15:07:48','2013-08-18 15:07:48'),
	(25,9,'admin/affair_form_instances#new','2013-08-18 15:08:05','2013-08-18 15:08:05'),
	(26,9,'admin/affair_form_instances#create','2013-08-18 15:08:18','2013-08-18 15:08:19'),
	(27,9,'admin/affair_forms#apply','2013-08-18 21:34:11','2013-08-18 21:34:11'),
	(28,8,'admin/affair_forms#edit','2013-08-19 16:44:40','2013-08-19 16:44:41'),
	(29,8,'admin/affair_forms#update','2013-08-19 16:44:54','2013-08-19 16:44:54'),
	(30,3,'admin/groups#new','2013-08-20 10:19:20','2013-08-20 10:19:21'),
	(31,3,'admin/groups#create','2013-08-20 10:19:31','2013-08-20 10:19:31'),
	(32,8,'admin/affair_forms#destroy','2013-08-20 14:45:35','2013-08-20 14:45:35'),
	(33,10,'admin/affair_form_instance_audit_logs#index','2013-08-20 16:53:34','2013-08-20 16:53:34'),
	(34,10,'admin/affair_form_instance_audit_logs#new','2013-08-20 16:53:51','2013-08-20 16:53:51'),
	(35,10,'admin/affair_form_instance_audit_logs#create','2013-08-20 16:54:13','2013-08-20 16:54:14'),
	(36,4,'admin/users#update','2013-08-20 22:18:54','2013-08-20 22:18:54'),
	(37,9,'admin/affair_forms#propose','2013-08-21 09:25:28','2013-08-21 09:25:29'),
	(38,11,'admin/documents#new','2013-08-22 10:25:17','2013-08-22 10:25:17'),
	(39,11,'admin/documents#create','2013-08-22 10:25:29','2013-08-22 10:25:29'),
	(40,12,'admin/documents#edit','2013-08-23 09:02:27','2013-08-23 09:02:28'),
	(41,12,'admin/documents#update','2013-08-23 09:02:43','2013-08-23 09:02:44'),
	(42,13,'admin/documents#index','2013-08-23 09:50:20','2013-08-23 09:50:25'),
	(43,12,'admin/documents#audit','2013-08-23 09:50:47','2013-08-23 09:50:47'),
	(44,12,'admin/documents#audit_download','2013-08-23 10:53:38','2013-08-23 10:53:38'),
	(45,13,'admin/documents#download','2013-08-23 11:25:45','2013-08-23 11:25:45'),
	(46,16,'admin/friendly_links#index','2013-08-27 10:41:04','2013-08-27 10:41:04'),
	(47,16,'admin/friendly_links#new','2013-08-27 10:41:17','2013-08-27 10:41:17'),
	(48,16,'admin/friendly_links#create','2013-08-27 10:41:28','2013-08-27 10:41:29'),
	(49,16,'admin/friendly_links#edit','2013-08-27 10:41:37','2013-08-27 10:41:37'),
	(50,16,'admin/friendly_links#update','2013-08-27 10:41:43','2013-08-27 10:41:43'),
	(51,16,'admin/friendly_links#destroy','2013-08-27 10:41:50','2013-08-27 10:41:51'),
	(52,17,'admin/guest_messages#index','2013-08-27 19:28:41','2013-08-27 19:28:41'),
	(53,17,'admin/guest_messages#new','2013-08-27 19:28:53','2013-08-27 19:28:53'),
	(54,17,'admin/guest_messages#create','2013-08-27 19:29:04','2013-08-27 19:29:04'),
	(55,17,'admin/guest_messages#edit','2013-08-27 19:29:11','2013-08-27 19:29:11'),
	(56,17,'admin/guest_messages#update','2013-08-27 19:29:19','2013-08-27 19:29:20'),
	(57,17,'admin/guest_messages#destroy','2013-08-27 19:29:26','2013-08-27 19:29:26'),
	(58,15,'admin/lunches#index','2013-08-28 16:24:39','2013-08-28 16:24:39'),
	(59,14,'admin/lunches#new','2013-08-28 16:24:51','2013-08-28 16:24:51'),
	(60,14,'admin/lunches#create','2013-08-28 16:24:59','2013-08-28 16:24:59'),
	(61,9,'admin/affair_form_instances#show','2013-08-30 09:43:19','2013-08-30 09:43:19'),
	(62,9,'admin/affair_form_instances#destroy','2013-08-30 15:20:36','2013-08-30 15:20:36'),
	(63,4,'admin/users#new','2013-08-30 16:13:27','2013-08-30 16:13:27'),
	(64,18,'admin/users#audit','2013-09-01 16:22:26','2013-09-01 16:22:26'),
	(65,18,'admin/users#destroy','2013-09-01 17:40:22','2013-09-01 17:40:23'),
	(66,18,'admin/users#audit_pass','2013-09-01 17:40:33','2013-09-01 17:40:33'),
	(67,19,'bbs/topics#show_content','2013-09-02 20:13:32','2013-09-02 20:13:32'),
	(68,19,'bbs/topics#change_status','2013-09-02 20:25:28','2013-09-02 20:25:28'),
	(69,19,'bbs/topics#replies_audit','2013-09-02 22:12:13','2013-09-02 22:12:13'),
	(70,19,'bbs/topics#show_reply_content','2013-09-02 22:13:50','2013-09-02 22:13:50'),
	(71,5,'admin/navigations#create','2013-09-08 17:54:14','2013-09-08 17:54:14'),
	(74,2,'admin/articles#destroy','2013-09-10 16:55:07','2013-09-10 16:55:07'),
	(75,2,'admin/classifications#new','2013-09-10 16:55:21','2013-09-10 16:55:21'),
	(76,2,'admin/classifications#create','2013-09-10 16:55:39','2013-09-10 16:55:39'),
	(77,2,'admin/classifications#index','2013-09-10 16:58:07','2013-09-10 16:58:07'),
	(78,2,'admin/classifications#edit','2013-09-10 17:11:10','2013-09-10 17:11:10'),
	(79,2,'admin/classifications#update','2013-09-10 17:44:25','2013-09-10 17:44:25'),
	(80,21,'admin/left_navs#index','2013-09-11 21:07:00','2013-09-11 21:07:00'),
	(81,21,'admin/left_navs#create','2013-09-11 21:07:12','2013-09-11 21:07:13'),
	(82,21,'admin/left_navs#edit','2013-09-11 21:07:20','2013-09-11 21:07:20'),
	(83,21,'admin/left_navs#update','2013-09-11 21:07:26','2013-09-11 21:07:27'),
	(84,21,'admin/left_navs#destroy','2013-09-11 21:07:32','2013-09-11 21:07:32'),
	(85,21,'admin/left_navs#new','2013-09-11 21:08:27','2013-09-11 21:08:27'),
	(86,5,'admin/navigations#update','2013-09-11 22:11:55','2013-09-11 22:11:56'),
	(87,5,'admin/navigations#create','2013-09-11 22:12:29','2013-09-11 22:12:30'),
	(88,6,'admin/pages#create','2013-09-12 08:14:29','2013-09-12 08:14:29'),
	(89,6,'admin/pages#create','2013-09-12 08:14:29','2013-09-12 08:14:29'),
	(90,22,'admin/affair_form_instances#list','2013-09-14 22:27:10','2013-09-14 22:27:11'),
	(91,22,'admin/affair_form_instances#admin_view','2013-09-14 22:27:18','2013-09-14 22:27:19'),
	(92,5,'admin/navigations#destroy','2013-09-15 07:47:13','2013-09-15 07:47:13'),
	(93,23,'admin/documents#destroy','2013-09-15 09:27:36','2013-09-15 09:27:36'),
	(94,4,'admin/users#create','2013-09-15 11:39:27','2013-09-15 11:39:27'),
	(95,1,'admin/files#image_up','2013-09-15 13:23:27','2013-09-15 13:23:27'),
	(96,2,'admin/files#image_up','2013-09-15 13:23:39','2013-09-15 13:23:40'),
	(97,6,'admin/pages#update','2013-09-16 18:05:06','2013-09-16 18:05:06'),
	(98,16,'admin/friendly_link_classifications#index','2013-09-17 12:41:56','2013-09-17 12:41:56'),
	(99,16,'admin/friendly_link_classifications#new','2013-09-17 12:42:08','2013-09-17 12:42:08'),
	(100,16,'admin/friendly_link_classifications#edit','2013-09-17 12:42:17','2013-09-17 12:42:17'),
	(101,16,'admin/friendly_link_classifications#update','2013-09-17 12:42:27','2013-09-17 12:42:28'),
	(102,16,'admin/friendly_link_classifications#create','2013-09-17 12:42:36','2013-09-17 12:42:36'),
	(103,16,'admin/friendly_link_classifications#destroy','2013-09-17 12:42:42','2013-09-17 12:42:43'),
	(104,6,'admin/pages#destroy','2013-09-17 14:10:54','2013-09-17 14:10:54'),
	(105,24,'admin/messages#new','2013-09-22 17:58:31','2013-09-22 17:58:42'),
	(106,24,'admin/messages#create','2013-09-22 17:58:54','2013-09-22 17:58:54'),
	(107,25,'admin/messages#index','2013-09-22 17:59:08','2013-09-22 17:59:08'),
	(108,26,'admin/messages#outbox','2013-09-22 18:00:59','2013-09-22 18:01:00'),
	(109,24,'admin/messages#download','2013-09-23 20:25:08','2013-09-23 20:25:08'),
	(110,25,'admin/messages#download','2013-09-23 20:25:16','2013-09-23 20:25:16'),
	(111,26,'admin/messages#download','2013-09-23 20:25:20','2013-09-23 20:25:20'),
	(113,25,'admin/messages#show','2013-09-23 20:33:20','2013-09-23 20:33:21'),
	(114,26,'admin/messages#show','2013-09-23 20:33:31','2013-09-23 20:33:31'),
	(115,26,'admin/messages#preview','2013-09-24 18:17:26','2013-09-24 18:17:26'),
	(116,27,'admin/announcements#new','2013-09-24 20:27:25','2013-09-24 20:27:25'),
	(117,27,'admin/announcements#create','2013-09-24 20:27:52','2013-09-24 20:27:52'),
	(118,27,'admin/announcements#index','2013-09-24 20:28:07','2013-09-24 20:28:07'),
	(119,27,'admin/announcements#edit','2013-09-24 20:28:34','2013-09-24 20:28:34'),
	(120,27,'admin/announcements#update','2013-09-24 20:28:48','2013-09-24 20:28:48'),
	(121,27,'admin/announcements#destroy','2013-09-24 20:28:56','2013-09-24 20:28:57'),
	(122,28,'admin/announcements#show','2013-09-24 20:29:07','2013-09-24 20:29:07'),
	(123,28,'admin/announcements#view_index','2013-09-24 20:29:18','2013-09-24 20:29:18'),
	(124,25,'admin/messages#destroy','2013-09-26 21:50:46','2013-09-26 21:50:47'),
	(125,26,'admin/messages#destroy','2013-09-26 21:50:51','2013-09-26 21:50:51'),
	(126,25,'admin/messages#crocodoc',NULL,NULL),
	(127,26,'admin/messages#crocodoc',NULL,NULL);

/*!40000 ALTER TABLE `permission_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `describe`, `created_at`, `updated_at`)
VALUES
	(1,'发布文章','可以新增加文章','2013-08-10 15:21:03','2013-08-08 02:11:11'),
	(2,'修改文章','对文章进行修改','2013-08-10 15:21:58','2013-08-10 15:22:00'),
	(3,'用户组管理','新增新的用户组','2013-08-10 17:07:32','2013-08-10 17:07:33'),
	(4,'用户管理','对用户列表进行管理','2013-08-11 07:44:23','2013-08-11 07:44:25'),
	(5,'网站导航管理','对网站导航分类进行管理','2013-08-11 08:41:33','2013-08-11 08:41:33'),
	(6,'网站页面管理','对网站页面进行修改','2013-08-11 09:30:37','2013-08-11 09:30:38'),
	(7,'网站管理后台','是否可以访问网站管理后台','2013-08-12 07:52:26','2013-08-12 07:52:26'),
	(8,'内务表单管理','新建内务表单','2013-08-17 17:25:34','2013-08-17 17:25:35'),
	(9,'内务申请','填写内务表单并提交审核','2013-08-18 15:07:09','2013-08-18 15:07:09'),
	(10,'内务表单审核','审核内务表单','2013-08-20 16:52:21','2013-08-20 16:52:21'),
	(11,'上传教育资源','上传教育资源到系统','2013-08-22 10:24:43','2013-08-22 10:24:44'),
	(12,'教育资源审核','审核教师发布的教育资源','2013-08-23 09:01:42','2013-08-23 09:01:42'),
	(13,'教育资源库','浏览教育资源库中的内容','2013-08-23 09:02:06','2013-08-23 09:02:07'),
	(14,'预定次日用餐','进行第二个工作日的用餐预订','2013-08-26 10:57:50','2013-08-26 10:57:51'),
	(15,'订餐查看','按日期查看订餐情况','2013-08-26 11:01:30','2013-08-26 11:01:30'),
	(16,'友情链接管理','友情链接的管理','2013-08-27 10:39:41','2013-08-27 10:39:41'),
	(17,'留言板管理','网站留言板管理','2013-08-27 10:40:03','2013-08-27 10:40:03'),
	(18,'审核注册用户','对注册用户进行审核','2013-09-01 16:18:27','2013-09-01 16:18:27'),
	(19,'论坛管理','对论坛进行管理','2013-09-02 15:50:34','2013-09-02 15:50:35'),
	(20,'论坛受信用户组','可先显示发布的消息再进行审核','2013-09-02 21:47:50','2013-09-02 21:47:50'),
	(21,'页面左侧栏目','管理页面左侧的栏目','2013-09-11 21:06:29','2013-09-11 21:06:30'),
	(22,'内务申请表查看','查看所有的内务申请表','2013-09-14 22:23:11','2013-09-14 22:23:11'),
	(23,'删除教育资源','可对教育资源进行删除操作','2013-09-15 09:16:36','2013-09-15 09:16:36'),
	(24,'写私信','发送私信','2013-09-22 17:56:21','2013-09-22 17:56:21'),
	(25,'收件箱','查看收到的私信','2013-09-22 17:56:37','2013-09-22 17:56:37'),
	(26,'发件箱','查看发出的私信','2013-09-22 17:56:52','2013-09-22 17:56:52'),
	(27,'通知公告管理','发布通知公告','2013-09-24 18:40:57','2013-09-24 18:40:57'),
	(28,'查看通知公告','查看通知公告','2013-09-24 18:41:12','2013-09-24 18:41:12');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table replies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `replies`;

CREATE TABLE `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `floor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20130713025005'),
	('20130713030707'),
	('20130713041954'),
	('20130713042712'),
	('20130716080109'),
	('20130716131013'),
	('20130717140706'),
	('20130719113847'),
	('20130807085950'),
	('20130807090015'),
	('20130807133531'),
	('20130808014248'),
	('20130808015451'),
	('20130808015834'),
	('20130808143854'),
	('20130808151300'),
	('20130809084038'),
	('20130809084518'),
	('20130809131606'),
	('20130809132802'),
	('20130809133148'),
	('20130809133705'),
	('20130809134738'),
	('20130810032816'),
	('20130810034553'),
	('20130817074222'),
	('20130817074251'),
	('20130818014347'),
	('20130818021832'),
	('20130818130139'),
	('20130820055015'),
	('20130820081426'),
	('20130820082453'),
	('20130820091250'),
	('20130821010841'),
	('20130822020334'),
	('20130822141745'),
	('20130826013143'),
	('20130826083701'),
	('20130827103001'),
	('20130827104313'),
	('20130827152851'),
	('20130829080536'),
	('20130901065949'),
	('20130902075828'),
	('20130902080516'),
	('20130910084639'),
	('20130910100525'),
	('20130911125802'),
	('20130913083114'),
	('20130913092625'),
	('20130914085857'),
	('20130917042620'),
	('20130917050247'),
	('20130917071707'),
	('20130920094647'),
	('20130920105831'),
	('20130922084344'),
	('20130924000721'),
	('20130924134430'),
	('20130925050751'),
	('20130925141225'),
	('20130926133359'),
	('20130926133757'),
	('20130927031719'),
	('20131002091540'),
	('20131002091605'),
	('20131005093556');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topics`;

CREATE TABLE `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `last_floor` int(11) DEFAULT '0',
  `read_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `lastlogin` datetime DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `teacher_position` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `status`, `lastlogin`, `account`, `qq`, `phone`, `teacher_position`, `grade`)
VALUES
	(1,'邵成磊','chareice@live.com','9c8c784647ef61e23dc0a134e940b32e','2013-08-07 04:34:13','2013-10-07 02:31:37',1,'2013-10-06 02:06:35','chareice','81376258','18942321753','',''),
	(2,'年级组长','chareice@live.com','c4ca4238a0b923820dcc509a6f75849b','2013-09-25 11:53:15','2013-10-05 12:00:29',1,'2013-10-03 06:28:47','tester','81376258','18942321753','','');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`, `created_at`, `updated_at`)
VALUES
	(1,1,1,'2013-08-08 14:54:30','2013-08-20 14:20:47'),
	(11,2,4,'2013-09-25 11:53:15','2013-09-25 13:28:03');

/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
