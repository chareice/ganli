-- --------------------------------------------------------
-- Host:                         192.168.33.10
-- Server version:               5.1.69 - Source distribution
-- Server OS:                    redhat-linux-gnu
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for ganli_rails
DROP DATABASE IF EXISTS `ganli_rails`;
CREATE DATABASE IF NOT EXISTS `ganli_rails` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ganli_rails`;


-- Dumping structure for table ganli_rails.admin_menus
DROP TABLE IF EXISTS `admin_menus`;
CREATE TABLE IF NOT EXISTS `admin_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.admin_menus: ~9 rows (approximately)
DELETE FROM `admin_menus`;
/*!40000 ALTER TABLE `admin_menus` DISABLE KEYS */;
INSERT INTO `admin_menus` (`id`, `name`, `url`, `rank`, `created_at`, `updated_at`) VALUES
	(1, '文章管理', NULL, NULL, '2013-08-10 15:23:55', '2013-08-10 15:23:55'),
	(2, '用户管理', NULL, NULL, '2013-08-10 16:37:53', '2013-08-10 16:37:55'),
	(3, '页面管理', NULL, NULL, '2013-08-11 08:40:55', '2013-08-11 08:40:58'),
	(4, '内务管理', NULL, NULL, '2013-08-17 17:21:39', '2013-08-17 17:21:39'),
	(5, '教学资源', NULL, NULL, '2013-08-22 10:15:19', '2013-08-22 10:15:20'),
	(6, '订餐系统', NULL, NULL, '2013-08-26 10:57:07', '2013-08-26 10:57:08'),
	(7, '网站管理', NULL, NULL, '2013-08-27 10:40:14', '2013-08-27 10:40:14'),
	(8, '私信管理', NULL, NULL, '2013-09-22 17:33:28', '2013-09-22 17:33:28'),
	(9, '通知公告', NULL, NULL, '2013-09-24 20:29:59', '2013-09-24 20:29:59');
/*!40000 ALTER TABLE `admin_menus` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.admin_menu_permissions
DROP TABLE IF EXISTS `admin_menu_permissions`;
CREATE TABLE IF NOT EXISTS `admin_menu_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_menu_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table ganli_rails.admin_menu_permissions: ~24 rows (approximately)
DELETE FROM `admin_menu_permissions`;
/*!40000 ALTER TABLE `admin_menu_permissions` DISABLE KEYS */;
INSERT INTO `admin_menu_permissions` (`id`, `admin_menu_id`, `permission_id`, `created_at`, `updated_at`, `url`) VALUES
	(1, 1, 1, '2013-08-10 07:36:52', '2013-08-10 07:36:52', NULL),
	(2, 1, 2, '2013-08-10 07:36:52', '2013-08-10 07:36:52', NULL),
	(3, 2, 3, '2013-08-10 21:14:56', '2013-08-10 21:14:58', NULL),
	(4, 2, 4, '2013-08-11 07:48:28', '2013-08-11 07:48:30', NULL),
	(5, 3, 5, '2013-08-11 08:42:30', '2013-08-11 08:42:30', NULL),
	(6, 3, 6, '2013-08-11 09:31:50', '2013-08-11 09:31:50', NULL),
	(7, 4, 8, '2013-08-17 17:33:31', '2013-08-17 17:33:31', NULL),
	(8, 4, 9, '2013-08-18 15:27:58', '2013-08-18 15:27:58', '/admin/affair_forms/apply'),
	(9, 4, 10, '2013-08-20 16:54:43', '2013-08-20 16:54:43', NULL),
	(10, 5, 11, '2013-08-22 10:26:42', '2013-08-22 10:26:43', NULL),
	(11, 5, 12, '2013-08-23 09:50:57', '2013-08-23 09:50:57', '/admin/documents/audit'),
	(12, 5, 13, '2013-08-23 09:51:03', '2013-08-23 02:39:34', NULL),
	(13, 7, 16, '2013-08-27 10:40:32', '2013-08-27 10:40:32', NULL),
	(14, 7, 17, '2013-08-27 19:30:41', '2013-08-27 19:30:41', NULL),
	(15, 6, 14, '2013-08-28 16:24:03', '2013-08-28 16:24:04', NULL),
	(16, 6, 15, '2013-08-28 16:24:09', '2013-08-28 16:24:10', NULL),
	(17, 2, 18, '2013-09-01 16:23:43', '2013-09-01 16:23:43', '/admin/users/audit'),
	(18, 7, 21, '2013-09-11 21:07:43', '2013-09-11 21:07:43', NULL),
	(19, 4, 22, '2013-09-14 22:27:45', '2013-09-14 22:27:46', '/admin/affair_form_instances/list'),
	(20, 8, 24, '2013-09-22 18:01:15', '2013-09-22 18:01:15', NULL),
	(21, 8, 25, '2013-09-22 18:01:20', '2013-09-22 18:01:20', NULL),
	(22, 8, 26, '2013-09-22 18:01:25', '2013-09-22 18:01:25', '/admin/messages/outbox'),
	(23, 9, 27, '2013-09-24 20:30:06', '2013-09-24 20:30:06', '/admin/announcements'),
	(24, 9, 28, '2013-09-24 20:30:15', '2013-09-24 20:30:16', '/admin/announcements/view_index');
/*!40000 ALTER TABLE `admin_menu_permissions` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.affair_forms
DROP TABLE IF EXISTS `affair_forms`;
CREATE TABLE IF NOT EXISTS `affair_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `form` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `audit_process` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.affair_forms: ~2 rows (approximately)
DELETE FROM `affair_forms`;
/*!40000 ALTER TABLE `affair_forms` DISABLE KEYS */;
INSERT INTO `affair_forms` (`id`, `title`, `form`, `created_at`, `updated_at`, `audit_process`) VALUES
	(1, '甘李学校公车出行申请表', '<p>\r\n	<span style="font-size:10px;"></span> \r\n</p>\r\n<table cellpadding="0" cellspacing="0" class="ke-zeroborder" style="width:648px;">\r\n	<tbody>\r\n		<tr>\r\n			<td height="48" width="168">\r\n				申请人\r\n			</td>\r\n			<td width="133">\r\n				<br />\r\n			</td>\r\n			<td width="163">\r\n				申请出车时间\r\n			</td>\r\n			<td width="184">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height="117">\r\n				申请事由\r\n			</td>\r\n			<td colspan="3">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2013-08-18 02:04:16', '2013-09-25 13:05:37', '---\n- \'1\'\n- \'2\'\n'),
	(3, '甘李学校请假登记表', '<table cellpadding="0" cellspacing="0" class="ke-zeroborder" style="width:645px;">\r\n	<tbody>\r\n		<tr>\r\n			<td height="38" width="133" style="text-align:center;">\r\n				姓名\r\n			</td>\r\n			<td width="95">\r\n				<br />\r\n			</td>\r\n			<td width="104" style="text-align:center;">\r\n				任教年级\r\n			</td>\r\n			<td width="115">\r\n				<br />\r\n			</td>\r\n			<td width="72" style="text-align:center;">\r\n				学科\r\n			</td>\r\n			<td width="127">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height="38" style="text-align:center;">\r\n				请假时间\r\n			</td>\r\n			<td colspan="5" style="text-align:center;">\r\n				年&nbsp; 月&nbsp; &nbsp;日&nbsp;&nbsp;&nbsp; 至&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; &nbsp;月&nbsp; 日\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height="80" style="text-align:center;">\r\n				请假事由\r\n			</td>\r\n			<td colspan="5">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height="80" width="133" style="text-align:center;">\r\n				相关工作安排\r\n			</td>\r\n			<td colspan="5">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="6" height="39" width="645" style="text-align:center;">\r\n				注：依据《甘李学校教职工请假办法（试行）》执行，1、一天及一天内由主管主任审批；2、一天以上由主管主任签署意见后，校长审批；3、节假日前一天原则上不准请假。\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<br />\r\n</p>', '2013-09-25 14:02:19', '2013-09-25 14:03:16', '---\n- \'1\'\n');
/*!40000 ALTER TABLE `affair_forms` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.affair_form_instances
DROP TABLE IF EXISTS `affair_form_instances`;
CREATE TABLE IF NOT EXISTS `affair_form_instances` (
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.affair_form_instances: ~2 rows (approximately)
DELETE FROM `affair_form_instances`;
/*!40000 ALTER TABLE `affair_form_instances` DISABLE KEYS */;
INSERT INTO `affair_form_instances` (`id`, `title`, `form`, `affair_form_id`, `created_at`, `updated_at`, `audit_process`, `status`, `proposer`) VALUES
	(19, '甘李学校公车出行申请表', '<p>\r\n	<span style="font-size:10px;"></span> \r\n</p>\r\n<table cellpadding="0" cellspacing="0" class="ke-zeroborder" style="width:648px;">\r\n	<tbody>\r\n		<tr>\r\n			<td height="48" width="168">\r\n				申请人\r\n			</td>\r\n			<td width="133">\r\n				<br />\r\n			</td>\r\n			<td width="163">\r\n				申请出车时间\r\n			</td>\r\n			<td width="184">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height="117">\r\n				申请事由\r\n			</td>\r\n			<td colspan="3">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2013-09-25 13:33:19', '2013-09-25 13:34:14', '---\n- \'1\'\n- \'2\'\n', 1, 1),
	(20, '甘李学校公车出行申请表', '<p>\r\n	<span style="font-size:10px;"></span> \r\n</p>\r\n<table cellpadding="0" cellspacing="0" class="ke-zeroborder" style="width:648px;">\r\n	<tbody>\r\n		<tr>\r\n			<td height="48" width="168">\r\n				申请人\r\n			</td>\r\n			<td width="133">\r\n				<br />\r\n			</td>\r\n			<td width="163">\r\n				申请出车时间\r\n			</td>\r\n			<td width="184">\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height="117">\r\n				申请事由\r\n			</td>\r\n			<td colspan="3">\r\n				啊实打实打算\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2013-09-25 13:35:16', '2013-09-25 13:35:29', '---\n- \'1\'\n- \'2\'\n', 1, 1);
/*!40000 ALTER TABLE `affair_form_instances` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.affair_form_instance_audit_logs
DROP TABLE IF EXISTS `affair_form_instance_audit_logs`;
CREATE TABLE IF NOT EXISTS `affair_form_instance_audit_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `approver` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.affair_form_instance_audit_logs: ~3 rows (approximately)
DELETE FROM `affair_form_instance_audit_logs`;
/*!40000 ALTER TABLE `affair_form_instance_audit_logs` DISABLE KEYS */;
INSERT INTO `affair_form_instance_audit_logs` (`id`, `instance_id`, `status`, `remark`, `approver`, `created_at`, `updated_at`) VALUES
	(9, 19, 0, 'a', 1, '2013-09-25 13:33:33', '2013-09-25 13:33:33'),
	(10, 19, 0, 'a', 2, '2013-09-25 13:34:14', '2013-09-25 13:34:14'),
	(11, 20, 1, '', 1, '2013-09-25 13:35:29', '2013-09-25 13:35:29');
/*!40000 ALTER TABLE `affair_form_instance_audit_logs` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.announcements
DROP TABLE IF EXISTS `announcements`;
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `author` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.announcements: ~2 rows (approximately)
DELETE FROM `announcements`;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` (`id`, `title`, `content`, `author`, `created_at`, `updated_at`, `status`) VALUES
	(1, '外语学院海外研修人员归国学术报', '<table width="74%" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:9pt;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;" class="ke-zeroborder">\r\n	<tbody>\r\n		<tr>\r\n			<td height="360" valign="top" class="content" style="font-size:10.5pt;">\r\n				<p>\r\n					<span>&nbsp;</span> \r\n				</p>\r\n				<div style="font-size:9pt;">\r\n					<span><span>主讲人：唐雄英&nbsp;&nbsp;&nbsp;&nbsp;博士、教授</span></span> \r\n				</div>\r\n				<div style="font-size:9pt;">\r\n					<span>题&nbsp;目：Writing for Publication in English: Views from 5 Sojourning Young Chinese Scientists</span> \r\n				</div>\r\n				<div style="font-size:9pt;">\r\n					<span>&nbsp;</span> \r\n				</div>\r\n				<div style="font-size:9pt;">\r\n					<span>&nbsp;</span> \r\n				</div>\r\n				<div style="font-size:9pt;">\r\n					<span>海外研修单位：</span><span>美国阿拉巴马大学英文系</span><span><span>（2013年1月—2013年7月）</span></span> \r\n				</div>\r\n				<div style="font-size:9pt;">\r\n					<span>&nbsp;</span> \r\n				</div>\r\n				<div style="font-size:9pt;">\r\n					<span>&nbsp;</span> \r\n				</div>\r\n				<div style="font-size:9pt;">\r\n					<span><span>报告时间：9月17日星期二下午14:00-15:00<br />\r\n</span></span><span><span>报告地点：名达楼1区1415教室</span></span> \r\n				</div>\r\n				<div style="font-size:9pt;">\r\n					<p>\r\n						&nbsp;\r\n					</p>\r\n					<p>\r\n						<span>&nbsp;</span> \r\n					</p>\r\n					<div style="font-size:9pt;">\r\n						<span>主讲人：徐红 副教授</span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span><span>题&nbsp;目：TESOL Advanced （Teaching English for Speakers of Other Languages）</span></span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span>&nbsp;</span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span>&nbsp;</span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span>海外研修单位：</span><span>King George International Business College- Canada TESOL Center</span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span><span>国王乔治国际学院-加拿大TESOL中心</span></span><span><span>（2013年3月—2013年8月）</span></span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span>&nbsp;</span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span><span>报告时间：9月17日星期二下午15:00-16:00</span></span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span><span>报告地点：名达楼1区1415教室</span></span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span>&nbsp;</span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span>&nbsp;</span> \r\n					</div>\r\n					<div align="center" style="font-size:9pt;">\r\n						<span>&nbsp;</span> \r\n					</div>\r\n					<div align="center" style="font-size:9pt;">\r\n						<span>&nbsp;</span> \r\n					</div>\r\n					<div style="font-size:9pt;">\r\n						<span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;主办：人事处</span></span> \r\n					</div>\r\n					<div align="center" style="font-size:9pt;">\r\n						<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 承办：外国语学院</span> \r\n					</div>\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2013-09-24 13:00:58', '2013-09-24 13:14:52', 0),
	(2, '党委统战部喜获“中国统一战线宣传先进单位”荣誉', '<span style="background-color:#FFFFFF;">&nbsp;近日，我校党委统战部被中央统战部宣传办、中国统一战线杂志社授予“中国统一战线宣传先进单位”荣誉称号，这已是党委统战部连续八年获此殊荣。党委统战部陈武阳同志获“中国统一战线宣传先进个人”荣誉称号。</span><span style="color:#262626;font-family:仿宋_GB2312;font-size:19px;line-height:21px;background-color:#FFFFFF;"><br />\r\n</span><span style="background-color:#FFFFFF;">　　今年，党委统战部以党的十八大精神为指导，结合学校建设有特色高水平大学，在统一战线中着力开展“同心”系列活动，进一步将社会主义核心价值体系学与行主题教育活动引向深入；扎实做好党外知识分子工作，建立健全党外知识分子工作新机制<span>;</span>努力完善民族宗教工作，积极引导师生自觉遵守国家民族宗教政策等举措，使学校统战工作呈现出新的特点。</span><span style="color:#262626;font-family:仿宋_GB2312;font-size:19px;line-height:21px;background-color:#FFFFFF;"><br />\r\n</span><span style="background-color:#FFFFFF;">　　党委统战部将以此次荣誉的获得为契机，继续解放思想，真抓实干。在省委统战部的指导和学校党委的领导下，为建设地方一流、特色鲜明的教学研究型师范大学夯实基础，开创统战工作新局面。（文<span>/</span>统战部）<br />\r\n</span>', 1, '2013-09-24 13:50:00', '2013-09-25 01:19:21', 0);
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.announcement_viewers
DROP TABLE IF EXISTS `announcement_viewers`;
CREATE TABLE IF NOT EXISTS `announcement_viewers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `announcement_id` int(11) DEFAULT NULL,
  `viewer` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ganli_rails.announcement_viewers: ~2 rows (approximately)
DELETE FROM `announcement_viewers`;
/*!40000 ALTER TABLE `announcement_viewers` DISABLE KEYS */;
INSERT INTO `announcement_viewers` (`id`, `announcement_id`, `viewer`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2013-09-24 21:48:24', '2013-09-24 21:48:24'),
	(2, 2, 1, '2013-09-25 01:46:16', '2013-09-25 01:46:16');
/*!40000 ALTER TABLE `announcement_viewers` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.articles
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.articles: ~21 rows (approximately)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `title`, `content`, `classification_id`, `created_at`, `updated_at`, `status`, `thumb`, `flag`, `author`) VALUES
	(1, '胡剑锋应邀出席中国高等教育学会高教管理研究会2013年学术年会', '<table cellpadding="0" cellspacing="0" width="645"><colgroup><col width="133" style=";width:133px"/><col width="95" style=";width:95px"/><col width="104" style=";width:104px"/><col width="115" style=";width:115px"/><col width="72" style="width:72px"/><col width="127" style=";width:127px"/></colgroup><tbody><tr height="42" style="height:42px"><td colspan="6" height="42" width="645" style=""><span style="font-size: 20px;"><img src="/assets/article/2013/09/10/primary-login-form-15.jpg" title="primary-login-form-15.jpg"/>甘李学校请假登记表</span></td></tr><tr height="38" style=";height:38px"><td height="38" style="">姓名</td><td style="border-left:none"><br/></td><td style="border-left:none">任教年级</td><td style="border-left:none"><br/></td><td style="border-left:none">学科</td><td style="border-left:none"><br/></td></tr><tr height="38" style=";height:38px"><td height="38" style="border-top-style: none;">请假时间</td><td colspan="5" style="border-left:none">年&nbsp; 月&nbsp; &nbsp;日&nbsp;&nbsp;&nbsp; 至&nbsp;&nbsp;&nbsp; 年&nbsp;&nbsp; &nbsp;月&nbsp; 日</td></tr><tr height="80" style=";height:80px"><td height="80" style="border-top-style: none;">请假事由</td><td colspan="5" style="border-left:none"><br/></td></tr><tr height="80" style=";height:80px"><td height="80" width="133" style="border-top-style: none;">相关工<br/> &nbsp; &nbsp;作安排</td><td style="border-top:none;border-left:none"><br/></td><td style="border-top:none"><br/></td><td style="border-top:none"><br/></td><td style="border-top:none"><br/></td><td style="border-top:none"><br/></td></tr><tr height="80" style=";height:80px"><td height="80" width="133" style="border-top-style: none;">主管部门<br/> &nbsp; &nbsp;意见</td><td colspan="5" style="border-right-width: 1px;border-right-color: black;border-left-style: none"><br/></td></tr><tr height="80" style=";height:80px"><td height="80" style="border-top-style: none;">审批</td><td colspan="5" width="512" style="border-left-style: none;"><br/></td></tr></tbody></table><p><br/></p>', 3, '2013-08-09 05:04:47', '2013-09-13 09:17:00', 1, NULL, '0', 1),
	(2, '校领导欢送我校2013年志愿服务西部计划志愿者', '<p>7月9日上午，欢送我校十名参加2013年大学生志愿服务西部计划志愿者的仪式在行政楼北一楼会议室举行。校党委副书记、副校长黄辉玲，校团委副书记于海明和宣传部长余兴，以及志愿者所在二级学院负责人等出席了仪式。</p><p>于海明在会上介绍了今年西部计划的情况。2013年西部计划于去年年底启动，校团委通过校报、校主网页、校广播电视台、微薄、海报、横幅等形式在2013届毕业生中大力宣传，并举办了西部计划优秀志愿者专场事迹报告会。</p><p>今年是报名者最多的一届，当选人数也是最多的，从六名增为十名。他们分别来自机械工程学院、管理学院、外国语学院、土木工程学院、经贸学院。志愿服务地涵盖省份也最多，有新疆、广西、江西、海南、甘肃等五个省区。</p>', 1, '2013-08-10 08:26:58', '2013-09-13 11:04:27', 0, '/assets/article/2013/09/13/flash_2.jpg', 'f', 1),
	(3, '2013年江西科技学院申报本科、专科专业公示', '我校今年拟申报“学前教育”、“金融工程”与“社会工作”3个本科专业；“学前教育”1个专科专业，现将申报材料予以公示，公示时间:2013年7月12日-2013年7月19日。如有意见，请拨打教务处电话：0791-88139273（华婷）或发电子邮件', 2, '2013-08-10 23:40:34', '2013-08-11 02:16:21', 0, NULL, NULL, 1),
	(5, '王海校长莅临教务处调研指导工作', '<p>7月26日上午，校长王海莅临教务处调研指导工作并和教务处全体人员进行了座谈， 受到教务处全体人员的热烈欢迎。副校长胡剑锋、教务处处长马红坤、副处长徐衡、王涛涛、章继涛、办公室主任邹松林等教务处人员参加了座谈会。\r\n &nbsp; &nbsp; &nbsp; 首先，王海校长对教务处全体工作人员暑假期间依然坚守工作岗位表示亲切慰问，并赞扬教务处工作人员精神状态好，工作井然有序。马红坤处长代表教务处向校领导汇报了教务处的主要工作情况及今后管理工作创新思路，并希望校领导多提宝贵意见。\r\n\r\n &nbsp; &nbsp; &nbsp; 王海校长在座谈会上就如何创建高等教育品牌，使江西科技学院成为江西省乃至全国的知名教育品牌进行深入探讨。王校长指出高等教育竞争日益激烈，创建知名教育品牌需要找到支撑点，根据我校实际，培养学生应注重创新意识和创新能力的培养，并提出把我校定位为培养工程师、企业家和生产知识产权的“摇篮”，要成为这“三个摇篮”，是一项长期的奋斗目标，需要做好“三个建设”，即创新文化建设、创新平台建设和创新团队建设；加强顶层设计和体制创新，同时做到提高教师创新意识和提高学生创新能力、学校教学和科研、教职工日常工作和学校创品牌工作的“三个结合”。王海校长还希望教务处近期能够就如何提高教师创新意识和提高培养学生创新能力在目标任务、办法举措、体制机制、氛围营造等方面进行深入探索。\r\n &nbsp; &nbsp; &nbsp; 胡剑锋副校长对教务处过去半年的工作进行了简单回顾，目前所开展的很多工作与王校长的工作思路不谋而合，希望教务处给合学校定位进一步抓好人才培养落实工作，勇于改革工作方法、大胆创新工作思路，提高工作效率，为我校创建知名教育品牌做出应用贡献。</p>', 1, '2013-08-11 02:18:00', '2013-08-28 08:21:20', 0, NULL, NULL, 1),
	(6, '2013级新生军训检阅暨开学典礼隆重举行', '<p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px;"><img alt="\\" width="536" height="242" src="http://jxbsu.com/uploadfile/2013/0913/20130913122750802.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px;"/></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 18px;">&nbsp;</p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px; text-indent: 24pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;"><span style="font-family:Times New Roman">9</span><span style="font-family:宋体">月</span><span style="font-family:Times New Roman">13</span><span style="font-family:宋体">日上午，</span></span><span style="font-family: &#39;Times New Roman&#39;;">2013</span><span style="font-family: 宋体;">级新生军训检阅暨开学典礼在校奥林匹克体育场隆重举行。朝霞辉映，红旗猎猎，今年的军训检阅场上迎来的是首批“<span style="font-family:Times New Roman">95</span><span style="font-family:宋体">后”新生。一个个整齐的方队精神抖擞，一阵阵嘹亮的歌声高亢激昂。<br/><br/></span></span></span><img alt="\\" src="http://jxbsu.com/uploadfile/2013/0913/20130913122848783.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px;"/></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 18px; text-indent: 24pt;">&nbsp;</p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 18px; text-indent: 24pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;">于果董事长</span><span style="font-family: 宋体;">，</span><span style="font-family: 宋体;">王海校长</span><span style="font-family: 宋体;">，</span><span style="font-family: 宋体;">武警部队领导陈海兵少校</span><span style="font-family: 宋体;">，省科技厅高新处处长谭志平、社发处处长李文信，</span><span style="font-family: 宋体;">胡剑锋、</span><span style="font-family: 宋体;">章新蕾、林素君、</span><span style="font-family: 宋体;">黄辉玲、周万华副校长端坐在主席台上，神情庄重，面带微笑。<span style="font-family:Times New Roman">8</span><span style="font-family:宋体">时</span><span style="font-family:Times New Roman">30</span><span style="font-family:宋体">分，主持人周万华副校长宣布检阅开始</span></span><span style="font-family: 宋体;">。</span><span style="font-family: 宋体;">威武雄壮</span><span style="font-family: 宋体;">的中国人民解放军军歌的音乐声响起，仪仗队高举着国旗和校旗昂首走在</span><span style="font-family: 宋体;">受阅</span><span style="font-family: 宋体;">队伍最前列。</span><span style="font-family: 宋体;">在各学院院旗引导下，</span><span style="font-family: 宋体;">一个个中队</span><span style="font-family: 宋体;">迈着矫健有力的正步，</span><span style="font-family: 宋体;">依次</span><span style="font-family: 宋体;">通过主席台前。一张张年轻的脸上飞扬着青春的神采，一声声响亮的口号荡漾着蓬勃的朝气，一双双明亮的眼睛闪烁着激情的光芒。接着</span><span style="font-family: 宋体;">进行了</span><span style="font-family: 宋体;">庄严的升国旗</span><span style="font-family: 宋体;">仪式</span><span style="font-family: 宋体;">。</span><span style="font-family: 宋体;">随后</span><span style="font-family: 宋体;">，</span><span style="font-family: 宋体;">男女方阵准军人级水平的拳术和队列表演、</span><span style="font-family: 宋体;">部队教官精彩的擒拿格斗表演博得了全场阵阵热烈的掌声与喝彩，校艺术团、音乐舞蹈学院优美而欢快的歌舞表演把全场气氛推向了高潮。<br/><br/></span></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px; text-indent: 24pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;"><img alt="\\" width="650" height="628" src="http://jxbsu.com/uploadfile/2013/0913/20130913052808697.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px;"/><br/><br/></span></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 18px; text-indent: 12pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;">&nbsp;&nbsp;在热烈的气氛中，于果董事长代表学校向带训部队领导赠送了锦旗。黄辉玲副校长宣读了学校对军训优秀集体与个人的表彰决定，随后举行了颁奖仪式。</span><span style="font-family: 宋体;">汽车工程学院第1中队等十三个中队被评为优秀中队，</span><span style="font-family: 宋体;">崔晓波等十三人被评为优秀中队指导老师，</span><span style="font-family: 宋体;">周会等八十一名同学被评为</span><span style="font-family: 宋体;">优秀学员</span><span style="font-family: 宋体;">。<br/><br/></span></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px; text-indent: 12pt;"><img alt="\\" src="http://jxbsu.com/uploadfile/2013/0913/20130913123908186.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px; width: 177px; height: 211px;"/>&nbsp;<img alt="\\" src="http://jxbsu.com/uploadfile/2013/0913/20130913123931807.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px; width: 166px; height: 211px;"/>&nbsp;<img alt="\\" width="174" height="211" src="http://jxbsu.com/uploadfile/2013/0913/20130913124012158.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px;"/><br/>&nbsp;</p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 18px; text-indent: 12pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;">&nbsp;</span><span style="font-family: 宋体;">&nbsp;&nbsp;教师代表</span><span style="font-family: 宋体;">徐衡</span><span style="font-family: 宋体;">与新生代表</span><span style="font-family: 宋体;">白桦</span><span style="font-family: 宋体;">先后发言。</span><span style="font-family: 宋体;">徐衡说</span><span style="font-family: 宋体;">，</span><span style="font-family: 宋体;">作为教师代表我向全体同学承诺，我们会用严谨治学的态度、用每一堂精彩的讲课诠释我们的责任，用每一个关爱的眼神、每一句温暖的话语升华我们的责任，用每一位同学的进步、每一位家长的满意检验我们的责任</span><span style="font-family: 宋体;">。</span><span style="font-family: 宋体;">白桦</span><span style="font-family: 宋体;">表示，</span><span style="font-family: 宋体;">在未来四年里，我们要认认真真学习，踏踏实实做人，不断提高分析、解决问题的能力，不断丰富实践经验，展现江科学子的真风采。</span></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 18px; text-indent: 24pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;">最后，胡剑锋副校长发表了讲话。他首先</span><span style="font-family: 宋体;">代表学校向来自全国各地的新同学表示热烈欢迎，向武警支队全体教官表示衷心感谢</span><span style="font-family: 宋体;">，</span><span style="font-family: 宋体;">向辛勤耕耘在教学一线的教职工表示崇高敬意。他说，在校行政、党委的直接领导下，在武警官兵的大力支持和学校各部门的共同努力下，全体新生认真学习，团结协作，刻苦训练，顺利完成了军训的各项任务，达到了预定的目标，取得了显著的成绩，充分展示了江科学子良好的精神风貌。在军训中养成的能吃苦，敢拼搏、讲团结的优良作风，必将为你们今后的征程顺利扬帆，助你们驶向理想的彼岸。他说，</span><span style="font-family: 宋体;">展望未来，学校以建设特色名校为目标，不断推进内涵建设，致力于打造工程师、企业家和生产知识产权的摇篮。学校以科技创新为根本，努力为学生搭建多样化发展的平台，为每一位学生铺就个性化的成才之路，力争将你们培养成社会认可的专才、怪才和特才。他说，</span><span style="font-family: 宋体;">江科的文化是自由开放的。在这里你可以选择课余后参加各种社团，丰富自己的生活；也可以选择在图书馆、电子阅览室神游；你还可以发挥超群想像力，在校园内创业创新。但是这个世界上不存在没有责任的自由。学习是你们来到江科后的首要责任，要多看书、多学习，多听课、少逃课。其次，不要太现实，不能太功利。大学是人格养成之所，“独立之精神、自由之思想”应该成为大家共同的追求。其三，生活不妨从容、优雅一些。他要求同学们经常问问自己：到大学来做什么？将来毕业后做什么样的人？他说，同学们，你们的航程从江科开始，江科也为你们的出发做好了准备。我相信，在你们和老师们的共同努力，一定能实现你们的江科梦！</span></span><span style="font-family: 宋体; font-size: 12pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 18px; text-indent: 12pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;">&nbsp;&nbsp;仪式以全场高唱振奋人心的校歌落幕。<br/></span></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px; text-indent: 12pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;"><br/><img alt="\\" width="523" height="309" src="http://jxbsu.com/uploadfile/2013/0913/20130913123338213.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px;"/><br/><img alt="\\" src="http://jxbsu.com/uploadfile/2013/0913/20130913123405259.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px; width: 523px; height: 373px;"/></span></span></p><p><br/></p>', 1, '2013-09-13 10:55:14', '2013-09-13 10:55:14', 0, '/assets/article/2013/09/13/flash_1.jpg', 'f', 1),
	(7, '国务院办公厅关于2013年 部分节假日安排的通知', '<p>\r\n    <br/>\r\n</p>\r\n<table width="95%" cellspacing="0" cellpadding="0" align="center">\r\n    <tbody>\r\n        <tr>\r\n            <td class="p1" style="line-height: 28px; font-family: 宋体;">\r\n                <span style=""><p style="text-align:center;">\r\n                    <span style="font-size: 18pt;"><strong>国务院办公厅关于2013年<br/>部分节假日安排的通知</strong></span><br/><span style="font-family:楷体_GB2312">国办发明电〔2012〕33号</span>\r\n                </p>\r\n                <p>\r\n                    各省、自治区、直辖市人民政府，国务院各部委、各直属机构：<br/>　　根据国务院《关于修改&lt;全国年节及纪念日放假办法&gt;的决定》，为便于各地区、各部门及早合理安排节假日旅游、交通运输、生产经营等有关工作，经国务院批准，现将2013年元旦、春节、清明节、劳动节、端午节、中秋节和国庆节放假调休日期的具体安排通知如下。<br/>　　<strong>一、元旦：</strong>1月1日至3日放假调休，共3天。1月5日（星期六）、1月6日（星期日）上班。<br/>　　<strong>二、春节：</strong>2月9日至15日放假调休，共7天。2月16日（星期六）、2月17日（星期日）上班。<br/>　　<strong>三、清明节：</strong>4月4日至6日放假调休，共3天。4月7日（星期日）上班。<br/>　　<strong>四、劳动节：</strong>4月29日至5月1日放假调休，共3天。4月27日（星期六）、4月28日（星期日）上班。<br/>　　<strong>五、端午节：</strong>6月10日至12日放假调休，共3天。6月8日（星期六）、6月9日（星期日）上班。<br/>　　<strong>六、中秋节：</strong>9月19日至21日放假调休，共3天。9月22日（星期日）上班。<br/>　　<strong>七、国庆节：</strong>10月1日至7日放假调休，共7天。9月29日（星期日）、10月12日（星期六）上班。<br/>　　节假日期间，各地区、各部门要妥善安排好值班和安全、保卫等工作，遇有重大突发事件发生，要按规定及时报告并妥善处置，确保人民群众祥和平安度过节日假期。<br/>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　 　国务院办公厅<br/>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　2012年12月8日\r\n                </p></span>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p>\r\n    <br/>\r\n</p>', 1, '2013-09-13 14:40:07', '2013-09-13 14:40:55', 0, NULL, '0', 1),
	(8, '黄辉玲副校长率队拜访江浙地区校政校企合作单位', '<p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 18px; text-indent: 18pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;">9</span><span style="font-family: 宋体;">月</span><span style="font-family: 宋体;">4</span><span style="font-family: 宋体;">日</span><span style="font-family: 宋体;">至</span><span style="font-family: 宋体;">10</span><span style="font-family: 宋体;">日，黄辉玲副校长</span><span style="font-family: 宋体;">携</span><span style="font-family: 宋体;">就业指导中心副主任付海华、科长阮宝俊前往江浙地区拜访与我校建立</span><span style="font-family: 宋体;">了</span><span style="font-family: 宋体;">校政、校企合作</span><span style="font-family: 宋体;">关系</span><span style="font-family: 宋体;">的单位</span><span style="font-family: 宋体;">，</span><span style="font-family: 宋体;">分别走访了常熟市人力资源局、苏州吴中人社局、浙江武义县人社局、浙江临海市人才中心、浙江乐清市人才中心及大陆汽车（常熟）有限公司等</span><span style="font-family: 宋体;">五</span><span style="font-family: 宋体;">个地方政府</span><span style="font-family: 宋体;">部门</span><span style="font-family: 宋体;">及</span><span style="font-family: 宋体;">四</span><span style="font-family: 宋体;">家当地企业，</span><span style="font-family: 宋体;">所到之处均</span><span style="font-family: 宋体;">受到热情接待。<br/><br/></span></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px; text-indent: 18pt;">&nbsp;<img alt="\\" width="539" height="362" src="http://jxbsu.com/uploadfile/2013/0911/20130911042604923.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px;"/></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); line-height: 18px; text-indent: 18pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;"><br/>&nbsp;&nbsp;&nbsp; 黄辉玲副校长</span><span style="font-family: 宋体;">向各</span><span style="font-family: 宋体;">合作</span><span style="font-family: 宋体;">方</span><span style="font-family: 宋体;">全面介绍了我校近期发展情况，仔细询问了我校往届毕业生在当地</span><span style="font-family: 宋体;">从</span><span style="font-family: 宋体;">业的状况，了解了当地的经济</span><span style="font-family: 宋体;">发展</span><span style="font-family: 宋体;">及企业用工需求情况，就校政、校企深层次合作</span><span style="font-family: 宋体;">作</span><span style="font-family: 宋体;">了进一步探讨，</span><span style="font-family: 宋体;">诚邀</span><span style="font-family: 宋体;">各地政府组织当地优秀企业来校招聘。各</span><span style="font-family: 宋体;">合作方</span><span style="font-family: 宋体;">都高度评价了我校的发展，对我校的</span><span style="font-family: 宋体;">毕业生</span><span style="font-family: 宋体;">就业工作给予了充分肯定，对</span><span style="font-family: 宋体;">我校</span><span style="font-family: 宋体;">毕业生</span><span style="font-family: 宋体;">从业</span><span style="font-family: 宋体;">的综合能力也给予了很高的评价，</span><span style="font-family: 宋体;">并愉快接受了</span><span style="font-family: 宋体;">来</span><span style="font-family: 宋体;">我</span><span style="font-family: 宋体;">校招聘</span><span style="font-family: 宋体;">的邀请</span><span style="font-family: 宋体;">。</span><span style="font-family: 宋体;">&nbsp;<br/><br/></span></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px; text-indent: 18pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;"><img alt="\\" src="http://jxbsu.com/uploadfile/2013/0911/20130911042631394.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px;"/></span></span></p><p><br/></p>', 1, '2013-09-13 14:41:54', '2013-09-13 14:41:54', 0, NULL, '0', 1),
	(9, '保卫处采取得力措施确保校南大门路段交通高峰期安全', '<p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px; text-indent: 24pt;"><img alt="\\" src="http://jxbsu.com/uploadfile/2013/0911/20130911093639630.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px; width: 609px; height: 265px;"/></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 18px; text-indent: 24pt;"><span style="font-family: 宋体; font-size: 12pt;"><br/>&nbsp;&nbsp;&nbsp;</span><span style="font-size: 14px;"><span style="font-family: 宋体;">每天清晨，随着上课时间临近，校南大门前的路段总会出现持续约四十分钟的交通高峰期。大量学生从他们住宿的长胜地区穿越交通繁忙的紫阳大道，进入南大门到校内上课。同时，还有大量校车、教职工的机动车进入校门。为了确保同学们的安全，保持正常的交通秩序，校保卫处按照于果董事长的指示，本着高度的责任感，会同本地区交警积极制定并实施了新的交通管制措施。9月11日晨，记者在现场看到，从校南大门主入口前直到紫阳大道边划出了隔离带，只允许步行通行，所有车辆一律从大门左侧的通道进出。有数位交警与校保卫人员一道在大路旁和隔离带边沿维持交通秩序，引导稠密的学生人流从大门主入口进入。<br/><br/></span></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px; text-indent: 24pt;"><img alt="\\" src="http://jxbsu.com/uploadfile/2013/0911/20130911093830683.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px; width: 314px; height: 219px;"/>&nbsp;<img alt="\\" src="http://jxbsu.com/uploadfile/2013/0911/20130911093914486.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px; width: 255px; height: 219px;"/></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 18px; text-indent: 24pt;"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 14px;"><span style="font-family: 宋体;">采访中，保卫处朱迎春副处长说，每天校门口各时段的交通高峰期，保卫处都会与交警一道实行相应的交通管制。他希望广大同学为了自身安全，自觉遵守交通规则和管制规定，养成</span><span style="font-family: 宋体;">遵规守纪的良好习惯。<br/><br/></span></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 18px; text-indent: 24pt;"><span style="font-size: 14px;"><span style="font-family: 宋体;"><img alt="\\" src="http://jxbsu.com/uploadfile/2013/0911/20130911094007990.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px; width: 574px; height: 391px;"/></span></span></p><p><br/></p>', 1, '2013-09-13 14:42:18', '2013-09-13 14:42:18', 0, NULL, '0', 1),
	(10, '大学教师发"炫父帖"感动网友 被赞“拼爹”的正能量', '<p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><span style="font-family:宋体">本报记者对话杜义厚、杜传青父子，杜传青说</span><span style="font-family:Times New Roman">——</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　</span><strong><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">面对<span style="font-family:Times New Roman">“</span><span style="font-family:宋体">炫富族</span><span style="font-family:Times New Roman">”</span></span></strong><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p><strong style="font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"></strong></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px;"><strong style="font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></strong></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px;"><strong style="font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　我修车的父亲更伟大</span></strong></p><p><span style="font-family: Arial, sans-serif; font-size: 12px;  background-color: rgb(255, 255, 255);"></span></p><p></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　父亲修了<span style="font-family:Times New Roman">17</span><span style="font-family:宋体">年车子，靠着微薄的收入，省吃俭用坚持供孩子上学，他却说</span><span style="font-family:Times New Roman">“</span><span style="font-family:宋体">我愧对儿子</span><span style="font-family:Times New Roman">”</span><span style="font-family:宋体">；儿子作为大学教师，不但从不因自己有个在街头修车的父亲而觉得</span><span style="font-family:Times New Roman">“</span><span style="font-family:宋体">没面子</span><span style="font-family:Times New Roman">”</span><span style="font-family:宋体">，反而经常向学生提起自己的父亲，在他心里，父亲给他的东西比金钱珍贵千百倍</span><span style="font-family:Times New Roman">……</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　这是一对什么样的父子？是什么促使大学教师儿子发帖<span style="font-family:Times New Roman">“</span><span style="font-family:宋体">炫父</span><span style="font-family:Times New Roman">”</span><span style="font-family:宋体">？他的父亲在得知儿子发帖后又有何感想？昨日，记者专访了这对父子。</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　</span><strong><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">大学教师儿子</span></strong><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　</span><strong><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><span style="font-family:Times New Roman">“</span><span style="font-family:宋体">我从不觉得老爸修车</span><span style="font-family:Times New Roman">‘</span><span style="font-family:宋体">没面子</span><span style="font-family:Times New Roman">’”</span></span></strong><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：这则<span style="font-family:Times New Roman">“</span><span style="font-family:宋体">炫父帖</span><span style="font-family:Times New Roman">”</span><span style="font-family:宋体">是在什么情况发的？</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜传青：呵呵，算是<span style="font-family:Times New Roman">“</span><span style="font-family:宋体">炫父帖</span><span style="font-family:Times New Roman">”</span><span style="font-family:宋体">吗？其实我当时什么都没想。记得第一篇是</span><span style="font-family:Times New Roman">2</span><span style="font-family:宋体">月</span><span style="font-family:Times New Roman">25</span><span style="font-family:宋体">日</span><span style="font-family:Times New Roman">(</span><span style="font-family:宋体">正月十六</span><span style="font-family:Times New Roman">)</span><span style="font-family:宋体">发的，那会儿我刚从邢台老家回到在江西的学校，那天在学校办公室，回想起和老爸在家相处的这一个多月，很有感触，就像写日记一样将这些感触写出来了。</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：在你的眼里，父亲是个怎样的人？</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜传青：我爸特老实，很吃苦耐劳，但他也很内向，不爱说话，就像一头老黄牛，总是默默地劳作。他对待别人也很实在，总觉得活干不好就对不住别人。我爸还特别节俭，一件衣服也不买，我们给他买了他也舍不得穿。</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　我非常感激我爸，是他靠修车子把我供到大学，我才有了今天留学任教的机会。爸爸为了我们牺牲了他自己。为了我们，他有病都舍不得去治，落下了老胃病和老寒腿的毛病。在我眼里，我爸很伟大。</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：现在你当上了大学教师，听说你姐姐也结婚了，父亲还是像以前那样辛勤劳作吗？</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜传青：是。我曾经劝过我爸，叫他干脆别干了，我能养活他，可他不听，说闲着会憋出病来，还不如动动筋骨。我只希望老爸老妈平平安安、开开心心的，他们愿意干什么我不好强拦着，但我希望他们工作适量，不要太辛苦，现在是他们享福的时候了。</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：有人说与教师、医生等比起来，修车不是一个<span style="font-family:Times New Roman">“</span><span style="font-family:宋体">有面子</span><span style="font-family:Times New Roman">”</span><span style="font-family:宋体">的职业。听说你在上大学时就时常和同学们提起父亲是修车子的，后来当了老师，和学生也提到过，不觉得没面子吗？</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜传青：没面子？<span style="font-family:Times New Roman">(</span><span style="font-family:宋体">有些惊讶</span><span style="font-family:Times New Roman">)</span><span style="font-family:宋体">为啥觉得没面子呢？我爸靠着修车子辛辛苦苦把我供到大学，他的钱是干干净净的，他做人也是坦坦荡荡的，我感激他都来不及，我以他为骄傲，从来没觉得没面子。</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：如今很多人在网上<span style="font-family:Times New Roman">“</span><span style="font-family:宋体">炫富</span><span style="font-family:Times New Roman">”</span><span style="font-family:宋体">，你怎么看？</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜传青：也许他们有资本吧，但我觉得他们的资本大多是父辈打拼来的，没什么好<span style="font-family:Times New Roman">“</span><span style="font-family:宋体">炫</span><span style="font-family:Times New Roman">”</span><span style="font-family:宋体">的，因为只有属于自己的东西才有资格拿出来说。我父亲给了我吃苦耐劳的坚韧，让我在艰苦的环境中找到了自己的位置，跟他们比，我觉得我更</span><span style="font-family:Times New Roman">“</span><span style="font-family:宋体">富有</span><span style="font-family:Times New Roman">”</span><span style="font-family:宋体">。我也希望他们多体谅父母一些，财富本身是没有错的，但人贵在要自己去创造财富，而不是坐享其成。</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：作为一名教师，你认为最需要教给学生什么？</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜传青：教他们如何做人。我觉得现在的学生普遍吃苦少，自控力差，不太成熟。而且很多人有些娇气，有攀比吃穿现象，我认为应该教会他们如何正确看待自己，摆正位置，树立起正确的价值观。</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　</span><strong><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">修车老爸</span></strong><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　<strong><span style="font-family:Times New Roman">“</span><span style="font-family:宋体">我愧对儿子，也为他骄傲</span><span style="font-family:Times New Roman">”</span></strong></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：儿子把你的故事发到了网上，您怎么看待这件事？</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜义厚：我也是听别人说的，我不懂网络，也没看见他咋写的。不过我知道，儿子从小不挑吃不挑穿，还很懂事，知道体谅我们，不嫌弃我是个修车子的，我很知足。</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：听说您之前打过很多工，吃了不少苦，是什么支持您把儿子供到大学？</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜义厚：我做了快一辈子的临时工，知道收入不稳定的苦。他要读书才有出路，我供他读书，就是不想让他像我一样。</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：在您眼里，儿子是个怎样的人？</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜义厚：他特别能吃苦<span style="font-family:Times New Roman">(</span><span style="font-family:宋体">眼圈红了</span><span style="font-family:Times New Roman">)</span><span style="font-family:宋体">。上大学，他每年要交</span><span style="font-family:Times New Roman">8000</span><span style="font-family:宋体">多元的学费，而每次从家里走，我最多只能给他</span><span style="font-family:Times New Roman">12000</span><span style="font-family:宋体">元。我想他肯定不够，但他没跟我要过，都是去打工，去饭店端盘子自己挣，别人家孩子有的他没有，我对不住他。可我又觉得骄傲，我孩子能上大学，还能留校当老师，我吃点苦也值了。</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　记者：现在女儿结婚了，儿子也成了大学老师，都自立了，为啥还那么拼命挣钱？</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　杜义厚：习惯了，也不觉得是拼命。毕竟之前没有给孩子提供一个较好的生活环境，现在儿子很孝顺，他不想让我干那么多，总是希望我多休息。但我现在还能干，希望再帮他们一把，给儿子娶上媳妇，再攒点钱，等我们老了不用拖累他们。</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　<span style="font-family:Times New Roman">■</span><span style="font-family:宋体">《我修自行车的老爸》摘录</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　找东西时不经意间发现了照片集，当我翻开看到第一张照片时就难过了，老爸老妈老得和照片上都对不上号了，我的父母曾经也年轻过啊，怎么一下子就老了呢！</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　老爸老了，我回家的次数越来越少了，以前他上街走在我前面，现在却是他走在我身后，给他买的衣服也显得长了，他说晚上睡觉都要弓着腰，伸直了就酸痛，我猛然一惊，老爸身体状况真的每况愈下了，难怪修车的时候要佝偻着<span style="font-family:Times New Roman">……</span></span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　我不知道我老爸还要做多久，做儿女的都不在身边，这是我最内疚的事情，我只能心底记住老爸对我们的付出，对我们默默不语的牺牲。我要在以后的日子多和他聊聊天，多花点时间陪陪他，把自己的工作做好，有出息了，他也就少担心一点了。</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">　　我是一个大学教师，我在学生中常炫耀我有个修自行车的老爸。我是学生的老师，可爸是我的老师。他留给我的精神财富比百万千万的金钱更珍贵。</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多内容请点击：中经论坛&nbsp;网友热议栏目</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;"><o:p></o:p></span></p><p class="p0" style="margin-top: 0pt; margin-bottom: 0pt; padding: 0px; font-family: Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 宋体; font-size: 10.5pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family: &#39;Times New Roman&#39;; font-size: 10.5pt;">（责任编辑：毛雅谊</span><span style="font-family: 宋体; font-size: 10.5pt;">）</span></p><p><br/></p>', 1, '2013-09-13 14:42:45', '2013-09-13 14:43:44', 0, NULL, '0', 1),
	(11, '我校举行2009级本科毕业生设计（论文）校级答辩会', '<p><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">5月31日上午，我校</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">2009级</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">本科毕业</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">设计（</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">论文</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">）</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">校级答辩会在瑶湖校区图书馆报告厅举行。胡剑锋副校长</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">出席</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">。答辩会由教务处副处长章继涛主持。有关各学院的教师和学生共</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">二</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">百余人旁听了答辩会。答辩会邀请的专家有南昌大学机电</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">工程</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">学院博士生导师曾效舒教授（答辩组组长）</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">、熊翔辉教授，</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">南昌工程学院</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">人文与</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">艺术学院院长帅茨平教授，南昌理工学院土木与建筑工程学院副院长刘在今教授，我校计算机学科带头人程从从教授、督导吴熹、吴剑教授等。<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;<img width="486" height="227" alt="\\" src="http://jxbsu.com/uploadfile/2013/0603/20130603125135275.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px;"/><br/><br/>&nbsp;&nbsp;&nbsp; 本次共抽取了十五名2013届本科毕业生参加校级答辩，他们分别来自于汽车工程学院、机械工程学院、信息工程学院、土木工程学院、外国语学院、管理学院、经贸学院、艺术设计学院。每位答辩学生首先用PPT在规定时间内汇报毕业论文的主要内容，然后由专家提问，答辩人当场作答，专家给出答辩评语。答辩会持续一整天，答辩过程井然有序</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">，</span><span style="font-size: 14px; line-height: 18px; text-indent: 32px;  background-color: rgb(255, 255, 255); font-family: 宋体;">气氛良好。</span></p>', 1, '2013-09-13 14:45:03', '2013-09-13 14:45:03', 0, NULL, '0', 1),
	(12, '学校后操场', '<p>风光的后操场</p>', 3, '2013-09-14 00:17:14', '2013-09-14 00:17:14', 0, '/assets/article/2013/09/14/image_show.jpg', '0', 1),
	(13, '祥龙', '<p>祥龙祥龙</p>', 4, '2013-09-14 00:39:08', '2013-09-14 00:39:08', 0, '/assets/article/2013/09/14/student.jpg', '0', 1),
	(14, '学校后操场', '<p>风光的后操场</p>', 3, '2013-09-14 08:40:12', '2013-09-14 08:40:14', 0, '/assets/article/2013/09/14/image_show.jpg', '0', 1),
	(15, '学校后操场', '<p>test</p>', 3, '2013-09-14 01:16:59', '2013-09-14 01:16:59', 0, '/assets/article/2013/09/14/image_show.jpg', '0', 1),
	(16, '学校后操场', '<p>asdadasdas</p>', 3, '2013-09-14 01:17:50', '2013-09-14 01:17:50', 0, '/assets/article/2013/09/14/image_show.jpg', '0', 1),
	(17, '实训中心', '<p>阿三大声大声的</p>', 3, '2013-09-14 01:18:22', '2013-09-14 01:18:22', 0, '/assets/article/2013/09/14/image_show.jpg', '0', 1),
	(18, '省政府主要领导批示  肯定我校对外交流工作', '<p style="font-family:\'font-size:14px;color:#262626;text-align:center;">\r\n	&nbsp;\r\n</p>\r\n<p style="font-family:\'font-size:14px;color:#262626;text-align:center;" align="center">\r\n	<img border="0" alt="" src="http://www.jxnu.edu.cn/picture/article/2/16/c2/c133d7844625a339a138d79654e9/5ae82a48-b54f-4e22-a986-ddb9fc997eaa.jpg" width="500" />\r\n</p>\r\n<p>\r\n	<span style="font-size:16px;font-family:宋体;">&nbsp;&nbsp;&nbsp; 日前，接省政府办公厅电传，鹿心社省长、谢茹副省长、朱虹副省长在中国驻赞比亚使馆给省政府发来的电报《龙腾狮舞卢萨卡，欢乐春节赞比亚》上作批示。对于中国驻赞比亚使馆称赞“江西师范大学学生艺术团带来的精彩舞龙舞狮表演更是技惊全场”，朱虹副省长特别强调：对江西师范大学相关人员应给予表扬奖励。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:16px;font-family:宋体;">&nbsp;&nbsp;&nbsp; 2013年春节前夕，应中国驻赞比亚大使馆邀请，经省外侨办组织协调，在省外侨办张知明副主任、我校副校长张艳国率领下，以科技学院为主体组成的慰问演出团赴赞演出受到热烈欢迎和高度赞誉，演出取得圆满成功。江西师大慰问演出团是随江西省外事侨务办公室组织的江西省友好交流访问团赴赞比亚的。演出团主要是受邀参加由中国驻赞比亚大使馆举办的第一届赞比亚新年庙会开幕式并进行专场演出。赞比亚开国元勋、第一任总统、中国人民的老朋友卡翁达，现任副总统以及政府有关部长，部分国家驻赞大使、参赞等重要嘉宾出席。整场演出受到广大观众的喜爱，特别是驻赞大使馆、赞比亚中华江西同乡会周欲晓的高度赞扬，中国驻赞比亚大使周欲晓多次称赞：你们为国家赢得了荣誉，为江西争了光，为师大扬了名；演出团是民间大使，是中赞友谊的友好使者。</span><br />\r\n<span style="font-size:16px;font-family:宋体;">&nbsp;&nbsp;&nbsp; 中国驻赞比亚大使馆、赞比亚中华江西同乡会分别发来感谢信，高度评价和赞扬江西师大演出团的精彩演出及为中赞友谊作出的贡献。（文/国际合作与交流处）</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 2, '2013-09-15 04:19:14', '2013-09-15 10:04:43', 0, NULL, '0', 1),
	(19, '学校召开庆祝第29个教师节表彰大会', '<p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/09a4a189-dfaf-4952-9a14-ba921519b6e9.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/93837cde-44f2-4dac-ade6-3e9ade0d7c47.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/f19feeb4-e3dc-4a1b-b8db-9e77236f9e3b.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/e29b1869-46d3-44fe-b8e7-b2623006f147.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/60e59d01-4312-4bcb-865f-27b390ad1c58.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/372604fd-d438-4ff4-9373-9724e0329210.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/3c2cb144-b730-48c0-92a1-78d923b140b2.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/fcda362a-35c8-4afc-998d-b64d00275717.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/05ecfac0-6f3a-4ca7-8273-3ae4d520c326.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/8eaa1f60-7ca4-4bfd-a38b-5b012cc3de73.jpg"/></p><p style="text-align:center;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><img border="0" width="600" alt="" src="http://www.jxnu.edu.cn/picture/article/2/d6/00/27eded8e49a3b4c119bba9829539/bd0a1437-3596-4e39-9fb5-13a1b0c49ba3.jpg"/></p><p style="text-align:left;color: rgb(38, 38, 38); font-family: &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 21px; white-space: normal;"><span style="font-size:4px;font-family:宋体">&nbsp;&nbsp;&nbsp; 9月10日下午，在第29个教师节的欢庆日子里，学校在先骕楼实验剧场举行庆祝教师节表彰大会，表彰奖励近年来在学校教学科研、管理服务工作中涌现出来的先进集体和先进个人。<br/>&nbsp;&nbsp;&nbsp; 在家校领导田延光、梅国平、何小平、聂剑、廖维林、张艳国、黄加文、周晓朗、涂宗财，总会计师童颖华，校长助理熊永华出席大会，受表彰的先进集体和个人代表，各学院院长、党委书记、党委副书记、分管教学科研工作的副院长，各机关部门、直附属单位主要负责人和教师代表等500余人参加会议。&nbsp;<br/>&nbsp;&nbsp;&nbsp; 校党委书记田延光代表学校党委和行政向全体教职员工、向为学校建设与发展做出重要贡献的老领导、离退休老同志、老教师致以节日的祝贺和亲切的问候，向获表彰的集体和个人表示热烈祝贺。田延光强调，学校要把广大教职员工作为学校事业发展的最宝贵的力量依靠，全心全意依靠教职员工办学治校，牢固树立和践行“教育以学生为本、办学以教师为本”的理念，把教师队伍建设作为加快学校内涵发展，提升教育教学质量的关键环节和战略任务，大力营造尊重劳动、尊重知识、尊重人才、尊重创造的良好氛围，进一步尊重教师劳动、关心教师发展、提供优质环境。田延光希望广大教师争当爱岗敬业的楷模、教书育人的楷模、终身学习的楷模、师德师风的楷模。&nbsp;<br/>&nbsp;&nbsp;&nbsp; 校长梅国平在主持讲话中指出，召开此次大会旨在总结先进经验、表彰先进典型、营造良好氛围、激励教师成长，进一步增强广大教师的光荣感、责任感和使命感。他表示，学校将高度重视广大教师的利益诉求，大力营造尊师重教的良好氛围，全力做好教师发展服务工作，努力让教师工作上得心应手、生活上无忧无虑、心情上轻松快乐。他希望广大教师真诚关注学生成长，严谨治学、精心施教，做一名社会敬仰的教师；谨记教师职业道德，立德修身，以身立教，做一名品德高尚的教师；树立质量第一意识，追求卓越，拒绝平庸，做一名锐意创新的教师。&nbsp;<br/>&nbsp;&nbsp;&nbsp; 大会表彰了一批先进集体和个人。校党委副书记何小平宣读了学校表彰2011-2012年度“三育人”标兵和先进工作者、第二届“感动师大”人物的决定；副校长聂剑宣读了学校关于国家级管理项目的表彰决定；副校长张艳国宣读了学校关于国家级本科教学工程的表彰决定；副校长涂宗财宣读了学校关于科研、学科建设的表彰决定。詹艾斌等10位同志获得“2011-2012年度‘三育人’标兵”荣誉称号，罗奇清等232位同志获得“2011-2012年度‘三育人’先进工作者”荣誉称号；杨丽娇等10个个人（团体）获得“江西师范大学‘感动师大’人物”荣誉称号；表彰奖励国家大学生校外实践教育基地等11项国家级“本科教学工程”重大项目；表彰奖励获得2013年度国家自然科学基金、社会科学基金项目立项的项目负责人吴亚东等79人、申报人蔡艳等466人、申报立项工作优秀组织单位生命科学院、数学与信息科学学院、文学院等3个学院，2012年度重大科研成果获得者傅修延等37人；表彰奖励化学化工学院获得学科建设突出成绩单位。&nbsp;<br/>&nbsp;&nbsp;&nbsp; 在激昂的音乐声中，校领导为获奖集体和个人代表颁奖。历史文化与旅游学院教师梁洪生、数学与信息科学学院教师黄福生、生命学院院长彭以元、生命科学学院教师涂艺声、学报杂志社教师吴赘、教师教育处处长项国雄分别代表2011-2012年度“三育人”标兵、国家级本科教学工程项目获奖、国家自然、社科基金项目申报立项工作优秀组织单位、自然科学基金项目获得者、国家社会科学基金项目获得者、国家级管理项目获批单位的获奖集体和个人发言，畅谈感受，分享经验。（文/钟雪艳 图/董江洪）&nbsp;</span></p><p><br/></p>', 1, '2013-09-15 04:20:31', '2013-09-15 04:21:02', 0, NULL, '0', 1),
	(20, '文章测试', 'TEST<img src="/assets/article/2013/09/16/QQ截图20130913145613.png" alt="" />', 1, '2013-09-16 03:02:01', '2013-09-16 03:04:01', 0, '/assets/article/2013/09/16/flash_1.jpg', 'f', 1),
	(21, 'asdsadsad', '<img src="/assets/article/2013/09/16/bottom_nav_bg.jpg" alt="" />', 2, '2013-09-16 03:24:16', '2013-09-16 07:59:59', 0, NULL, '0', 1);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.classfiys
DROP TABLE IF EXISTS `classfiys`;
CREATE TABLE IF NOT EXISTS `classfiys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.classfiys: ~0 rows (approximately)
DELETE FROM `classfiys`;
/*!40000 ALTER TABLE `classfiys` DISABLE KEYS */;
/*!40000 ALTER TABLE `classfiys` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.classifications
DROP TABLE IF EXISTS `classifications`;
CREATE TABLE IF NOT EXISTS `classifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `thumb_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.classifications: ~28 rows (approximately)
DELETE FROM `classifications`;
/*!40000 ALTER TABLE `classifications` DISABLE KEYS */;
INSERT INTO `classifications` (`id`, `name`, `created_at`, `updated_at`, `thumb_size`) VALUES
	(1, '新闻', '2013-08-09 04:23:42', '2013-08-09 04:23:42', NULL),
	(2, '通知公告', '2013-08-09 04:24:52', '2013-08-09 04:24:52', NULL),
	(3, '校园风光', '2013-09-10 09:26:26', '2013-09-10 09:32:42', '160 100'),
	(4, '学生作品', '2013-09-13 12:35:38', '2013-09-13 12:35:38', '160 100'),
	(5, '招生信息', '2013-09-13 23:35:54', '2013-09-13 23:35:54', ''),
	(6, '教学简讯', '2013-09-16 07:23:20', '2013-09-16 07:23:20', ''),
	(7, '成果展示', '2013-09-16 07:23:29', '2013-09-16 07:23:29', ''),
	(8, '教研活动', '2013-09-16 07:23:43', '2013-09-16 07:23:43', ''),
	(9, '教师风采', '2013-09-16 07:23:52', '2013-09-16 07:23:52', ''),
	(10, '学生园地', '2013-09-16 07:54:37', '2013-09-16 07:55:38', ''),
	(11, '班级风采', '2013-09-16 07:54:48', '2013-09-16 07:55:28', ''),
	(12, '心理辅导', '2013-09-16 07:55:49', '2013-09-16 07:55:49', ''),
	(13, '活动简讯', '2013-09-16 07:55:58', '2013-09-16 07:55:58', ''),
	(14, '国旗下讲话', '2013-09-16 07:56:14', '2013-09-16 07:56:14', ''),
	(15, '法规政策', '2013-09-16 07:56:29', '2013-09-16 07:56:29', ''),
	(16, '活动简讯', '2013-09-16 07:56:38', '2013-09-16 07:56:38', ''),
	(17, '安全知识', '2013-09-16 07:56:46', '2013-09-16 07:56:46', ''),
	(18, '党支部', '2013-09-16 07:57:02', '2013-09-16 07:57:02', ''),
	(19, '工会', '2013-09-16 07:57:14', '2013-09-16 07:57:22', ''),
	(20, '共青团', '2013-09-16 07:57:32', '2013-09-16 07:57:32', ''),
	(21, '少先队', '2013-09-16 07:57:41', '2013-09-16 07:57:41', ''),
	(22, '招生简章', '2013-09-16 07:57:55', '2013-09-16 07:57:55', ''),
	(23, '学校制度', '2013-09-16 07:58:07', '2013-09-16 07:58:07', ''),
	(24, '招标采购', '2013-09-16 07:58:14', '2013-09-16 07:58:14', ''),
	(25, '财务信息', '2013-09-16 07:58:22', '2013-09-16 07:58:22', ''),
	(26, '制度', '2013-09-16 07:58:36', '2013-09-16 07:58:36', ''),
	(27, '内容', '2013-09-16 07:58:52', '2013-09-16 07:58:52', ''),
	(28, '流程', '2013-09-16 07:59:01', '2013-09-16 07:59:01', '');
/*!40000 ALTER TABLE `classifications` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.documents
DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `uploader` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.documents: ~5 rows (approximately)
DELETE FROM `documents`;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` (`id`, `name`, `path`, `status`, `uploader`, `created_at`, `updated_at`) VALUES
	(1, '语境及其对话语理解的作用', '/rails/ganli/documents/2013/08/23/语境在语言理解中的作用.txt', 1, 1, '2013-08-23 00:37:53', '2013-08-23 03:04:04'),
	(6, 'adsad', '//document/2013/09/16/ConEmu64__.exe', 2, 1, '2013-09-16 03:16:25', '2013-09-16 03:31:12'),
	(7, 'sdfsafdsaf', '//document/2013/09/16/flash_1.jpg', 2, 1, '2013-09-16 03:18:40', '2013-09-16 03:31:09'),
	(8, 'asdasdsa', '/ganli/ganli/document/2013/09/16/admin-login-button-bg.jpg', 2, 1, '2013-09-16 03:21:44', '2013-09-16 03:31:06'),
	(9, 'test', '/ganli/ganli/document/2013/09/23/1_110922145139_5 (1).jpg', 2, 1, '2013-09-23 11:30:13', '2013-09-23 11:32:46');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.friendly_links
DROP TABLE IF EXISTS `friendly_links`;
CREATE TABLE IF NOT EXISTS `friendly_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `friendly_link_classification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.friendly_links: ~2 rows (approximately)
DELETE FROM `friendly_links`;
/*!40000 ALTER TABLE `friendly_links` DISABLE KEYS */;
INSERT INTO `friendly_links` (`id`, `name`, `url`, `rank`, `created_at`, `updated_at`, `friendly_link_classification_id`) VALUES
	(4, '深圳市教科院', 'http://www.szjky.edu.cn/', 0, '2013-09-17 06:37:25', '2013-09-17 06:37:25', 2),
	(5, '龙岗教育', 'http://www.szlg.edu.cn/', 1, '2013-09-17 06:40:21', '2013-09-17 06:41:27', 3);
/*!40000 ALTER TABLE `friendly_links` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.friendly_link_classifications
DROP TABLE IF EXISTS `friendly_link_classifications`;
CREATE TABLE IF NOT EXISTS `friendly_link_classifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.friendly_link_classifications: ~2 rows (approximately)
DELETE FROM `friendly_link_classifications`;
/*!40000 ALTER TABLE `friendly_link_classifications` DISABLE KEYS */;
INSERT INTO `friendly_link_classifications` (`id`, `name`, `created_at`, `updated_at`, `rank`) VALUES
	(2, '市级教育部门', '2013-09-17 06:26:01', '2013-09-17 06:26:01', 0),
	(3, '区级教育部门', '2013-09-17 06:39:15', '2013-09-17 06:39:47', 0);
/*!40000 ALTER TABLE `friendly_link_classifications` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.groups
DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.groups: ~7 rows (approximately)
DELETE FROM `groups`;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, '系统管理员', '2013-08-08 13:51:39', '2013-08-08 13:51:39'),
	(2, '教师', '2013-08-11 08:04:48', '2013-09-16 11:43:18'),
	(3, '级组长', '2013-08-20 02:25:11', '2013-09-16 11:44:30'),
	(4, '科组长', '2013-08-20 05:51:34', '2013-09-16 11:44:38'),
	(5, '行政', '2013-09-16 11:44:49', '2013-09-16 11:45:02'),
	(6, '副校长', '2013-09-16 11:45:14', '2013-09-16 11:45:14'),
	(7, '校长', '2013-09-16 11:45:26', '2013-09-16 11:45:26');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.groups_permissions
DROP TABLE IF EXISTS `groups_permissions`;
CREATE TABLE IF NOT EXISTS `groups_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.groups_permissions: ~44 rows (approximately)
DELETE FROM `groups_permissions`;
/*!40000 ALTER TABLE `groups_permissions` DISABLE KEYS */;
INSERT INTO `groups_permissions` (`id`, `permission_id`, `group_id`, `created_at`, `updated_at`) VALUES
	(2, 1, 1, NULL, NULL),
	(5, 3, 1, NULL, NULL),
	(6, 2, 1, NULL, NULL),
	(7, 4, 1, NULL, NULL),
	(8, 1, 2, NULL, NULL),
	(9, 3, 2, NULL, NULL),
	(10, 4, 2, NULL, NULL),
	(13, 7, 1, NULL, NULL),
	(14, 6, 1, NULL, NULL),
	(15, 5, 1, NULL, NULL),
	(16, 8, 1, NULL, NULL),
	(17, 9, 1, NULL, NULL),
	(18, 7, 3, NULL, NULL),
	(19, 8, 3, NULL, NULL),
	(20, 7, 4, NULL, NULL),
	(21, 8, 4, NULL, NULL),
	(22, 10, 1, NULL, NULL),
	(24, 3, 4, NULL, NULL),
	(25, 10, 4, NULL, NULL),
	(26, 4, 4, NULL, NULL),
	(27, 11, 1, NULL, NULL),
	(28, 12, 1, NULL, NULL),
	(29, 13, 1, NULL, NULL),
	(30, 16, 1, NULL, NULL),
	(31, 17, 1, NULL, NULL),
	(32, 14, 1, NULL, NULL),
	(33, 15, 1, NULL, NULL),
	(34, 18, 1, NULL, NULL),
	(35, 14, 4, NULL, NULL),
	(36, 15, 4, NULL, NULL),
	(37, 19, 1, NULL, NULL),
	(38, 20, 1, NULL, NULL),
	(39, 21, 1, NULL, NULL),
	(40, 22, 1, NULL, NULL),
	(41, 23, 1, NULL, NULL),
	(42, 7, 6, NULL, NULL),
	(43, 7, 7, NULL, NULL),
	(44, 7, 5, NULL, NULL),
	(45, 7, 2, NULL, NULL),
	(46, 24, 1, NULL, NULL),
	(47, 25, 1, NULL, NULL),
	(48, 26, 1, NULL, NULL),
	(49, 27, 1, NULL, NULL),
	(50, 28, 1, NULL, NULL);
/*!40000 ALTER TABLE `groups_permissions` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.guest_messages
DROP TABLE IF EXISTS `guest_messages`;
CREATE TABLE IF NOT EXISTS `guest_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '0',
  `nickname` varchar(255) DEFAULT NULL,
  `content` text,
  `ip` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.guest_messages: ~2 rows (approximately)
DELETE FROM `guest_messages`;
/*!40000 ALTER TABLE `guest_messages` DISABLE KEYS */;
INSERT INTO `guest_messages` (`id`, `status`, `nickname`, `content`, `ip`, `created_at`, `updated_at`) VALUES
	(1, 1, '雪山居士', '阿萨德撒的', '192.168.33.1', '2013-08-27 15:40:00', '2013-09-17 05:41:51'),
	(2, 1, 'Bootstrap ', 'Bootstrap 是快速开发Web应用程序的前端工具包。它是一个CSS和HTML的集合，它使用了最新的浏览器技术，给你的Web开发提供了时尚的版式，表单，buttons，表格，网格系统等等。', '192.168.33.1', '2013-08-28 08:03:40', '2013-08-28 08:07:55');
/*!40000 ALTER TABLE `guest_messages` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.left_navs
DROP TABLE IF EXISTS `left_navs`;
CREATE TABLE IF NOT EXISTS `left_navs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.left_navs: ~1 rows (approximately)
DELETE FROM `left_navs`;
/*!40000 ALTER TABLE `left_navs` DISABLE KEYS */;
INSERT INTO `left_navs` (`id`, `name`, `thumb`, `url`, `rank`, `created_at`, `updated_at`) VALUES
	(2, '教务公告', '/assets/article/2013/09/14/jiaowugonggao.jpg', '/', 1, '2013-09-14 04:56:53', '2013-09-14 04:56:53');
/*!40000 ALTER TABLE `left_navs` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.lunches
DROP TABLE IF EXISTS `lunches`;
CREATE TABLE IF NOT EXISTS `lunches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `mold` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table ganli_rails.lunches: ~5 rows (approximately)
DELETE FROM `lunches`;
/*!40000 ALTER TABLE `lunches` DISABLE KEYS */;
INSERT INTO `lunches` (`id`, `date`, `teacher`, `created_at`, `updated_at`, `mold`) VALUES
	(1, '2013-08-30', 1, '2013-08-28 15:35:59', '2013-08-28 15:35:59', NULL),
	(2, '2013-09-03', 1, '2013-09-01 13:01:56', '2013-09-01 13:01:56', NULL),
	(3, '2013-09-03', 2, '2013-09-01 13:02:16', '2013-09-01 13:02:16', NULL),
	(4, '2013-09-13', 1, '2013-09-12 10:15:39', '2013-09-12 10:15:39', NULL),
	(5, '2013-09-16', 1, '2013-09-14 11:17:22', '2013-09-14 11:17:22', NULL);
/*!40000 ALTER TABLE `lunches` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.messages
DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `content` text,
  `atachment` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.messages: ~1 rows (approximately)
DELETE FROM `messages`;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`id`, `sender`, `receiver`, `content`, `atachment`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '你好！', NULL, '1', '2013-09-24 00:10:11', '2013-09-24 09:17:59');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.navigations
DROP TABLE IF EXISTS `navigations`;
CREATE TABLE IF NOT EXISTS `navigations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `nav_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.navigations: ~43 rows (approximately)
DELETE FROM `navigations`;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;
INSERT INTO `navigations` (`id`, `name`, `url`, `nav_id`, `created_at`, `updated_at`, `rank`) VALUES
	(1, '走进甘李', '', NULL, '2013-08-09 14:07:15', '2013-08-09 14:07:15', 1),
	(2, '学校简介', '', 1, '2013-08-09 14:22:47', '2013-08-09 14:22:47', 0),
	(3, '校长寄语', '', 1, '2013-08-09 14:23:10', '2013-08-09 14:23:10', 1),
	(4, '新闻公告', '1', NULL, '2013-08-09 14:55:00', '2013-09-12 23:42:26', 2),
	(5, '新闻', '1', 4, '2013-08-09 14:55:18', '2013-08-09 14:55:18', 0),
	(6, '通知公告', '2', 4, '2013-08-09 14:55:34', '2013-08-09 14:55:34', 1),
	(7, '教学教研', '6', NULL, '2013-08-09 14:55:48', '2013-09-16 07:35:57', 3),
	(8, '教师风采', '9', 7, '2013-08-09 14:56:05', '2013-08-09 14:56:05', 0),
	(9, '首页', '/', NULL, '2013-09-08 09:56:03', '2013-09-11 14:14:33', 0),
	(10, '德育园地', '10', NULL, '2013-09-08 11:24:32', '2013-09-08 11:24:32', 4),
	(11, '安全教育', '15', NULL, '2013-09-08 11:24:41', '2013-09-08 11:24:41', 5),
	(12, '党建专栏', '18', NULL, '2013-09-08 11:24:53', '2013-09-08 11:24:53', 6),
	(13, '校务公开', '22', NULL, '2013-09-08 11:25:12', '2013-09-08 11:25:12', 7),
	(14, '服务窗口', '26', NULL, '2013-09-08 11:25:25', '2013-09-08 11:25:25', 8),
	(15, '论坛资源', '/bbs', NULL, '2013-09-08 11:25:33', '2013-09-14 13:50:07', 9),
	(16, '组织机构', '', 1, '2013-09-12 10:44:21', '2013-09-12 10:44:21', NULL),
	(17, '办学理念', '', 1, '2013-09-12 10:44:38', '2013-09-12 10:44:38', NULL),
	(18, '教学简讯', '6', 7, '2013-09-12 10:45:12', '2013-09-16 07:24:38', NULL),
	(19, '成果展示', '7', 7, '2013-09-12 10:45:22', '2013-09-12 10:45:22', NULL),
	(20, '教研活动', '8', 7, '2013-09-12 10:45:34', '2013-09-12 10:45:34', NULL),
	(21, '学生园地', '10', 10, '2013-09-12 10:45:46', '2013-09-12 10:45:46', NULL),
	(22, '班级风采', '11', 10, '2013-09-12 10:45:57', '2013-09-12 10:45:57', NULL),
	(23, '心理辅导', '12', 10, '2013-09-12 10:46:06', '2013-09-12 10:46:06', NULL),
	(24, '活动简讯', '13', 10, '2013-09-12 10:46:19', '2013-09-12 10:46:19', NULL),
	(25, '国旗下讲话', '14', 10, '2013-09-12 10:46:32', '2013-09-12 10:46:32', NULL),
	(26, '法规政策', '15', 11, '2013-09-12 10:46:50', '2013-09-12 10:46:50', NULL),
	(27, '活动简讯', '16', 11, '2013-09-12 10:47:05', '2013-09-12 10:47:05', NULL),
	(28, '安全知识', '17', 11, '2013-09-12 10:47:14', '2013-09-12 10:47:14', NULL),
	(29, '党支部', '18', 12, '2013-09-12 10:47:22', '2013-09-12 10:47:22', NULL),
	(30, '工会', '19', 12, '2013-09-12 10:47:33', '2013-09-12 10:47:33', NULL),
	(31, '共青团', '20', 12, '2013-09-12 10:47:42', '2013-09-12 10:47:42', NULL),
	(32, '少先队', '21', 12, '2013-09-12 10:47:49', '2013-09-12 10:47:49', NULL),
	(33, '招生简章', '22', 13, '2013-09-12 10:47:58', '2013-09-12 10:47:58', NULL),
	(34, '学校制度', '23', 13, '2013-09-12 10:48:07', '2013-09-12 10:48:07', NULL),
	(35, '招标采购', '24', 13, '2013-09-12 10:48:17', '2013-09-12 10:48:17', NULL),
	(36, '财务信息', '25', 13, '2013-09-12 10:48:27', '2013-09-12 10:48:27', NULL),
	(37, '制度', '26', 14, '2013-09-12 10:48:37', '2013-09-12 10:48:37', NULL),
	(38, '内容', '27', 14, '2013-09-12 10:48:49', '2013-09-12 10:48:49', NULL),
	(39, '流程', '28', 14, '2013-09-12 10:48:58', '2013-09-12 10:48:58', NULL),
	(40, '内务申请', '/admin/affair_forms/apply', 14, '2013-09-12 10:49:07', '2013-09-12 10:49:07', NULL),
	(41, '甘李论坛', '', 15, '2013-09-12 10:49:17', '2013-09-12 10:49:17', NULL),
	(42, '内部资源', '', 15, '2013-09-12 10:49:27', '2013-09-12 10:49:27', NULL),
	(43, '振华智邦', '', 15, '2013-09-12 10:49:36', '2013-09-12 10:49:36', NULL);
/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.pages
DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `navigation_id` int(11) DEFAULT NULL,
  `content` mediumtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.pages: ~3 rows (approximately)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `navigation_id`, `content`, `created_at`, `updated_at`) VALUES
	(1, '甘李学校', 1, '<p><span style="font-size: 12pt;">江西科技学院是经国家教育部批准成立的一所普通本科高校，具有颁发国家承认的统招本、专科学历资格，并具有学士学位授予权。</span></p><p><span style="font-size: 12pt;">学校前身为江西蓝天学院，成立于1994年。建校以来，学校秉承“以科教兴国为己任，为振兴中华而办学”的宗旨，坚持公益性办学方向，以市场需求为导向，走“精品+特色”的办学之路，为国家培养了20万余名毕业生，受到社会各界的好评，学校办学声誉日益提高。<br/></span></p><p><span style="font-size: 12pt;"><img alt="\\" src="http://jxbsu.com/uploadfile/2011/0503/20110503110624812.jpg" style="padding: 0px; margin: 0px; vertical-align: top; border: 0px;"/></span></p><p><span style="font-size: 12pt;">校园位于江西省省会城市--南昌，占地2000余亩，环境优美，布局合理，各类教学、生活设施一应俱全。建有汽车技术中心、现代制造技术中心、机械基础实验中心、计算机技术实验中心、软件与网络工程技术实验中心、基础电子实验中心、电子技术实验中心、基础实验中心、土木工程实验中心、语言实验中心、护理实验实训中心、管理实验实训中心、艺术设计与制作中心、服装设计与制作中心、音乐实训中心、体育训练中心、驾驶培训中心等17个实验实训中心。兴建了标准一流的图书馆、塑胶田径场、体育馆、剧场等教学活动设施。生态型、花园式和数字化校园环境为师生提供了良好的学习、工作和生活条件。</span></p><p><span style="font-size: 12pt;">学校面向全国31个省、市、自治区招生就业，致力于培养高素质应用型人才。开设有车辆工程、汽车服务工程、机械工程及自动化、材料成型及控制工程、计算机科学与技术、电子信息工程、土木工程、工商管理、人力资源管理、会计学、财务管理、国际经济与贸易、英语、艺术设计、音乐学、舞蹈学、服装设计与工程和护理学等30个本科专业和37个专科专业，形成了以工学和管理学为主，多学科协调发展的学科专业结构和多层次、多学科、多类型、多形式培养应用型人才的办学格局。</span></p><p><span style="font-size: 12pt;">学校坚持实施人才强校战略，通过启动青年教师“硕士化”工程、中青年骨干教师培养工程、高层次拔尖人才引进工程、“双师素质”教师培养工程，打造出了一支结构合理、爱岗敬业、充满活力的教师队伍。学校有2位教师入选省百千万人才工程，1人被评为全国优秀教师，3人入选省学科带头人，7人入选省级中青年骨干教师。</span></p><p><span style="font-size: 12pt;">学校按照“学校有特色、专业有特点、学生有特长”的办学要求，大力规范学校管理，制订和完善了领导决策、民主管理、教学管理等一系列规章制度，积极推进教学名师培养工程、品牌专业建设工程、精品课程建设工程、实验（训）教学示范中心建设工程、网络教育教学资源建设工程和教育教学研究应用工程等“六项工程”，不断创新人才培养模式，改善人才培养环境，努力使学生就业有优势、创业有本领。培养的毕业生因“综合素质高、敬业精神好、动手能力强、上岗适应快”而深受用人单位欢迎。</span></p><p><span style="font-size: 12pt;">学校的创办人于果董事长，是第九、十、十一届全国人大代表，荣获“江西省十大杰出青年”、第十一届“中国十大杰出青年”、“江西省五一劳动奖章”、“全国劳动模范”、教育部授予的“全国优秀教育工作者”、“江西省改革开放三十周年十大杰出建设者”等荣誉称号。</span></p><p><span style="font-size: 12pt;">学校以出色的办学成绩，得到社会的广泛认同。我校现有国家自然科学基金1项，江西省高校重点学科1个，国家级特色专业建设点1个，省级特色专业6个，省级精品课程6门，省级实践教学示范中心3个，江西省高校教学团队2个；省级人才培养模式创新实验区1个。获得省级教学成果一等奖1项、二等奖1项，省级优秀教材二等奖5项。</span></p><p><span style="font-size: 12pt;">2007</span><span style="font-size: 12pt;">年以来，学校连续蝉联“中国民办大学排行榜”榜首，先后多次荣获“江西省普通高等院校毕业生就业先进集体”、“全国‘五四’红旗团委”、“全国高等教育自学考试先进集体”、“全国职业教育先进单位”、“全省大学生思想政治教育工作先进集体”、“江西省园林单位”、“江西十大和谐校园”等称号。</span></p><p><span style="font-size: 12pt;">蓝天高远任翱翔，大鹏展翅九万里。学校将继续坚持依法办学、科学办学、和谐办学，努力把学校建成特色鲜明，省内有优势，国内知名的应用型一流本科高校！</span></p><p><br/></p>', '2013-09-12 00:31:39', '2013-09-12 00:31:39'),
	(2, '组织机构', 16, '<p><img src="http://jxbsu.com/jxut.edu.cn/images/school.jpg" alt="" width="769" height="1559" border="0" usemap="#Map"/><br/></p>', '2013-09-14 07:34:49', '2013-09-14 07:34:49'),
	(3, '办学理念', 17, '<div style="margin:0px;padding:0px;color:#333333;font-family:����;background-color:#FFFFFF;">\r\n	<span style="font-size:small;"><span style="font-family:宋体;">“尚德务实、求真拓新”是北航的办学理念，反映了北航的办学传统和办学特色，是学校今后办学和发展的基本理念，也是全校师生员工建设北航的共同思想基础。<br />\r\n&nbsp;&nbsp;&nbsp; 所谓“尚德”，是指崇尚道德为先，弘扬品行为首，将道德和品行作为立人之本、育人之基。所谓“务实”，是指的讲究实际，不求浮华，脚踏实地，真抓实干，注重解决实际问题。高等学校的根本任务是育人，而良好的道德品行既是成人成才的基础，又是传道授业的要求。追求品德高尚、人格完善，始终是全体师生共同的愿望和要求。务实既是一种态度，又是一种作风。作为工程技术特色突出的大学，我校一直保持注重实践，重视具体问题，一切从实际出发，理论联系实际的良好风尚，北航人也一直保持着兢兢业业、实实在在、默默奉献的优秀传统。“尚德务实”，反映了做人、做事、做学问的基本准则。<br />\r\n&nbsp;&nbsp;&nbsp; 所谓“求真”，是指追求科学真理，领悟人生真谛，探索客观世界的发展规律。高等学校是研究高深学问的殿堂，教学与科研活动本身就是师生共同追求真理、探求真知、孵育真情，培养真才的过程。所谓“拓新”，是指解放思想、勇于开拓、不断创新、与时俱进。没有开拓的精神、创新的意识，就不可能进步，也不可能发展。一个人如此，一所高校如此，一个国家一个民族更是如此。我校建校以来一贯崇尚科学、注重学术、追求真理、开拓进取、勇于创新，这一传统理应得到传承和发扬。<br />\r\n<br />\r\n</span></span>\r\n</div>\r\n<div style="margin:0px;padding:0px;color:#333333;font-family:����;background-color:#FFFFFF;text-align:center;">\r\n	<img width="472" height="345" alt="" src="http://www.buaa.edu.cn/images/content/2011-09/20110930173812492426.jpg" /><br />\r\n办学理念主题雕塑《世纪之声》（学院路校区）<br />\r\n<br />\r\n<img width="472" height="317" alt="" src="http://www.buaa.edu.cn/images/content/2011-09/20110930173911058577.jpg" /><br />\r\n办学理念主题雕塑《世纪之声》（沙河校区）\r\n</div>', '2013-09-16 10:01:20', '2013-09-16 10:01:20'),
	(4, '甘李学校简介', 2, '<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	北京大学创办于1898年，初名京师大学堂，是中国第一所国立综合性大学，也是当时中国最高教育行政机关。辛亥革命后，于1912年改为现名。\r\n</p>\r\n<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	作为新文化运动的中心和“五四”运动的策源地，作为中国最早传播马克思主义和民主科学思想的发祥地，作为中国共产党最早的活动基地，北京大学为民族的振兴和解放、国家的建设和发展、社会的文明和进步做出了不可替代的贡献，在中国走向现代化的进程中起到了重要的先锋作用。爱国、进步、民主、科学的传统精神和勤奋、严谨、求实、创新的学风在这里生生不息、代代相传。\r\n</p>\r\n<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	1917年，著名教育家蔡元培出任北京大学校长，他“循思想自由原则，取兼容并包主义”，对北京大学进行了卓有成效的改革，促进了思想解放和学术繁荣。陈独秀、李大钊、毛泽东以及鲁迅、胡适等一批杰出人才都曾在北京大学任职或任教。\r\n</p>\r\n<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	1937年卢沟桥事变后，北京大学与清华大学、南开大学南迁长沙，共同组成长沙临时大学。不久，临时大学又迁到昆明，改称国立西南联合大学。抗日战争胜利后，北京大学于1946年10月在北平复学。\r\n</p>\r\n<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	中华人民共和国成立后，全国高校于1952年进行院系调整，北京大学成为一所以文理基础教学和研究为主的综合性大学，为国家培养了大批人才。据不完全统计，北京大学的校友和教师有400多位两院院士，中国人文社科界有影响的人士相当多也出自北京大学。\r\n</p>\r\n<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	改革开放以来，北京大学进入了一个前所未有的大发展、大建设的新时期，并成为国家“211工程”重点建设的两所大学之一。\r\n</p>\r\n<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	1998年5月4日，北京大学百年校庆之际，国家主席江泽民在庆祝北京大学建校一百周年大会上发表讲话，发出了“为了实现现代化，我国要有若干所具有世界先进水平的一流大学”的号召。在国家的支持下，北京大学适时启动“创建世界一流大学计划”，从此，北京大学的历史翻开了新的一页。\r\n</p>\r\n<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	2000年4月3日，北京大学与原北京医科大学合并，组建了新的北京大学。原北京医科大学的前身是国立北京医学专门学校，创建于1912年10月26日。20世纪三、四十年代，学校一度名为北平大学医学院，并于1946年7月并入北京大学。1952年在全国高校院系调整中，北京大学医学院脱离北京大学，独立为北京医学院。1985年更名为北京医科大学，1996年成为国家首批“211工程”重点支持的医科大学。两校合并进一步拓宽了北京大学的学科结构，为促进医学与人文社会科学及理科的结合，改革医学教育奠定了基础。\r\n</p>\r\n<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	近年来，在“211工程”和“985工程”的支持下，北京大学进入了一个新的历史发展阶段，在学科建设、人才培养、师资队伍建设、教学科研等各方面都取得了显著成绩，为将北大建设成为世界一流大学奠定了坚实的基础。今天的北京大学已经成为国家培养高素质、创造性人才的摇篮、科学研究的前沿和知识创新的重要基地和国际交流的重要桥梁和窗口。\r\n</p>\r\n<p style="font-family:����;font-size:9pt;color:#002B5E;text-indent:2em;">\r\n	现任校党委书记朱善璐教授、校长王恩哥院士。\r\n</p>', '2013-09-16 10:02:31', '2013-09-16 10:02:31'),
	(5, '校长寄语', 3, '<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	我校将教育理念定位为：尽可能多的研究学生、尽可能多的要求学生、尽可能多的尊重学生、尽可能多的发展学生。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	"尽可能多的要求学生、尽可能多的尊重学生"是前苏联著名教育家马卡连柯对教育的理解和自己关于教育成功经验的总结，"尽可能多的研究学生"是关于教育策略"四个研究"论述中的第一个研究，"尽可能多的发展学生"是对我校培养目标"让不同层次、不同类型的学生到学校能有所学、有所得、有所提高、有所发展，成人、成材"论述中的集中体现。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	好多教育界的资深人士，称马卡连柯为"真正的教育家"。之所以给他这样一个尊称，理由大致有两条，一是他不仅是教育的理论大家，而且是冲在教育教学第一线的实践者，二是他进行教育教学的学校大致就相当于我们现在的民办学校，而且所教的学生和学生之间存在着很大的差异。在这种情况下，马卡连柯总结出了这样的教育理念——尽可能多的要求学生、尽可能多的尊重学生。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	"尽可能多的要求学生"，应该包括这样几层含义：\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	一是对不同的学生提出不同的要求。每个学生的智力因素、非智力因素、生活的环境、受到的影响各不相同，学生入校后，对不同的学生实施相同的教育，提出相同的要求，显然是行不通的。只有对不同的学生提出不同的要求，才能摆脱"使人工具化"的教育误区。也只有这样，才是客观的、现实的做法。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	二是对同一个学生在不同时间、不同环境下，提出不同的要求。"最近发展区的理论"表明，只有要求适当，发展才可能成为现实。"外因通过内因起作用"，外因还起着相当重要的作用，教育应该也属于外因，但决不是外因的全部，时间、环境变了，表明其他外因发生了改变，要求也应随之不同，以达到与其他外因协同起来，对学生产生最佳影响，实现向"最近发展区"的过渡。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	三是对学生循序、不断的提出要求，事物的发展是一个由量变到质变再到新的量变的过程。质变是量变的一定程度上的结果，量变是每时每刻都在发生的，只有不断地、渐进地提出问题，才会保证学生发展方向和发展的速度。远大理想是必要的，具体的目标要求更是必须的，只有这样才是一种辨证的发展观指导下的教育理念和做法。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	"尽可能多的尊重学生"，应该包括以下几层含义：\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	一是尊重学生的人格，我们绝对不能忽略这样一点，就是学生同样是人，是有血有肉，有头脑，有思想，集自然属性和社会属性于一身的个体的人。马斯洛需要学说理论说明，只要是智力正常，他绝对需要尊重，只有受到尊重，他的智力因素才能正常发挥，他的各项非智力因素才会达到平衡，这时他才有更高层次的需要——自我实现的需要，也只有这时，对学生的激励刺激和感知刺激才会发挥最好的效果。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	尊重学生的人格，决不是迁就学生已有的已经扭曲的人格，要采取一系列方式、方法包括必要的强制手段，使学生得以正常发展，教育活动得以正常进行。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	二是尊重人的发展规律。人的发展包括生理发展和心理发展，生理发展和心理发展各有自己的规律又相互影响、相互渗透。尊重这一切，教育才会发挥其应有的作用。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	三是正确理解教育对人的发展所起的作用，教育不是把不同的人培养成相同的"工具"，而是要开发人力资源的潜能，是促进人的科学化、个性化和现代化的教育，是把人的精神和思想彻底解放出来。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	<strong>如何理解"尽可能多的研究学生"</strong> \r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	研究学生是四个研究（研究教育对象，研究教育环境，研究教材和教纲，研究中考和高考试卷）中的第一个研究、也是四个研究的核心。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	"研究"可解释为"探究事物的真相、性质、规律等"，既是主观对客观的能动反映，这种反映具有相对性，有待于深化，尽可能的研究就是要对客观的反映在程度上、层次上尽可能的和客观贴近。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	研究学生，广义上讲，就是要以一种变化、发展的观点、研究的态度对待自己的工作对象、工作内容和各项教育活动。具体讲，就是尽量地认识和掌握每一个学生的认识过程、情感过程、意志过程、还有能力、气质和性格。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	比如说研究性格，美国心理学家卡特尔提出了性格的16种根源特质，含蓄或坦率、迟钝或灵活、激动或稳定、谦虚或武断、严肃或随和、善变或认真、萎缩或莽撞、心软或心硬、相信或多疑、重实际或重理想、直爽或机变……，一旦彻底了解了一个人的特质，就会预测他在某种情况下将怎样行动。当然要研究的内容还有很多、很多，要讲究一定的方法……\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	研究学生之前，要明确一个观点，就是只要是智力正常的人，他的学习成绩上不去，肯定有问题所在，或者是来自于遗传素质的影响，或者是来自于环境的影响。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	还有一个观点就是，只要是智力正常的学生，就有发展的可能，就一定可以有教育的切入点，如何找到这个切入点，是研究的第一步，也是最重要的一步，这一步走好了，就成功了一半。这两个观点使我们既可以正视困难，又可以树立信心。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	还要有一个思想准备，就是决不要埋怨学生基础如何差，而要面对他们，因为只有他们，才有了民办学校生存和发展的基础，要把他们当成是研究的对象，不要抱着一种付出必有回报的心理，从而导致对他们的厌烦，要保持平和的心态研究他们。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	<strong>如何理解"尽可能多的发展学生"</strong> \r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	任何人生来就具有一定的潜能，甚至是巨大的潜能，但人的潜能很少能自动表现出来，当具备了某种条件时，人的潜能会得到超常的发挥，我们的责任和义务就是创造这种条件。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	人的发展，学生的发展，既是教育的终极目标，也是教育的社会功能得以实现的必要条件，人的发展首先是多方面的尽可能的充分发展，但重要的是每个学生富有特点的个性发展。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	学生的发展，应该是全面（包括政治素质、道德素质，知识水平、心智能力，精神素质、身体素质）发展，协调发展，可持续发展，但不应该是也不可能是均衡发展，或者说是平均发展。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	我们的教育决不仅仅是补缺的教育，而更多的是培优的教育，这一点表现在特长的培养上尤为突出，一名同学有音乐天分，一定让他把数学成绩提高到与有逻辑思维天分的学生的程度，是不可能的，也是没有必要的。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	我们处在社会主义市场经济的迅速发展时期，就业是多元化的，大学的招生是多元化的，这就要求我们必须以多元化的大学前期教育（高中教育）去应对多元化的招生方向，特别是我们无法去挑选学生的时期，这样做才是最现实的。具体讲就是我们不能准备一个理想的什么班去招生，而要面对招来的学生去培养他的哪方面特长，为他寻找一个什么样的出路。\r\n</p>\r\n<p style="text-indent:28px;font-size:14px;font-family:\'Microsoft YaHei\';background-color:#FFFFFF;">\r\n	学生的持续发展，学生在校期间的学习时间是及其有限的，社会的大课堂是无限的，学校的任务就是要在有限的学校时间给学生一个持续发展的原动力，使学生能够持续的确定目标，不断地选定自己的发展途径，准确地确定自己的发展方式，其核心是准确的把握自己的能力和具体问题具体分析的能力\r\n</p>', '2013-09-16 10:03:53', '2013-09-16 10:09:08');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.permissions: ~28 rows (approximately)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `describe`, `created_at`, `updated_at`) VALUES
	(1, '发布文章', '可以新增加文章', '2013-08-10 15:21:03', '2013-08-08 02:11:11'),
	(2, '修改文章', '对文章进行修改', '2013-08-10 15:21:58', '2013-08-10 15:22:00'),
	(3, '用户组管理', '新增新的用户组', '2013-08-10 17:07:32', '2013-08-10 17:07:33'),
	(4, '用户管理', '对用户列表进行管理', '2013-08-11 07:44:23', '2013-08-11 07:44:25'),
	(5, '网站导航管理', '对网站导航分类进行管理', '2013-08-11 08:41:33', '2013-08-11 08:41:33'),
	(6, '网站页面管理', '对网站页面进行修改', '2013-08-11 09:30:37', '2013-08-11 09:30:38'),
	(7, '网站管理后台', '是否可以访问网站管理后台', '2013-08-12 07:52:26', '2013-08-12 07:52:26'),
	(8, '内务表单管理', '新建内务表单', '2013-08-17 17:25:34', '2013-08-17 17:25:35'),
	(9, '内务申请', '填写内务表单并提交审核', '2013-08-18 15:07:09', '2013-08-18 15:07:09'),
	(10, '内务表单审核', '审核内务表单', '2013-08-20 16:52:21', '2013-08-20 16:52:21'),
	(11, '上传教育资源', '上传教育资源到系统', '2013-08-22 10:24:43', '2013-08-22 10:24:44'),
	(12, '教育资源审核', '审核教师发布的教育资源', '2013-08-23 09:01:42', '2013-08-23 09:01:42'),
	(13, '教育资源库', '浏览教育资源库中的内容', '2013-08-23 09:02:06', '2013-08-23 09:02:07'),
	(14, '预定次日午餐', '进行第二个工作日的午餐预订', '2013-08-26 10:57:50', '2013-08-26 10:57:51'),
	(15, '订餐查看', '按日期查看订餐情况', '2013-08-26 11:01:30', '2013-08-26 11:01:30'),
	(16, '友情链接管理', '友情链接的管理', '2013-08-27 10:39:41', '2013-08-27 10:39:41'),
	(17, '留言板管理', '网站留言板管理', '2013-08-27 10:40:03', '2013-08-27 10:40:03'),
	(18, '审核注册用户', '对注册用户进行审核', '2013-09-01 16:18:27', '2013-09-01 16:18:27'),
	(19, '论坛管理', '对论坛进行管理', '2013-09-02 15:50:34', '2013-09-02 15:50:35'),
	(20, '论坛受信用户组', '可先显示发布的消息再进行审核', '2013-09-02 21:47:50', '2013-09-02 21:47:50'),
	(21, '页面左侧栏目', '管理页面左侧的栏目', '2013-09-11 21:06:29', '2013-09-11 21:06:30'),
	(22, '内务申请表查看', '查看所有的内务申请表', '2013-09-14 22:23:11', '2013-09-14 22:23:11'),
	(23, '删除教育资源', '可对教育资源进行删除操作', '2013-09-15 09:16:36', '2013-09-15 09:16:36'),
	(24, '写私信', '发送私信', '2013-09-22 17:56:21', '2013-09-22 17:56:21'),
	(25, '收件箱', '查看收到的私信', '2013-09-22 17:56:37', '2013-09-22 17:56:37'),
	(26, '发件箱', '查看发出的私信', '2013-09-22 17:56:52', '2013-09-22 17:56:52'),
	(27, '通知公告管理', '发布通知公告', '2013-09-24 18:40:57', '2013-09-24 18:40:57'),
	(28, '查看通知公告', '查看通知公告', '2013-09-24 18:41:12', '2013-09-24 18:41:12');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.permission_actions
DROP TABLE IF EXISTS `permission_actions`;
CREATE TABLE IF NOT EXISTS `permission_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.permission_actions: ~118 rows (approximately)
DELETE FROM `permission_actions`;
/*!40000 ALTER TABLE `permission_actions` DISABLE KEYS */;
INSERT INTO `permission_actions` (`id`, `permission_id`, `action`, `created_at`, `updated_at`) VALUES
	(3, 1, 'admin/articles#new', '2013-08-08 02:11:58', '2013-08-08 02:11:58'),
	(4, 1, 'admin/articles#create', '2013-08-08 02:12:03', '2013-08-08 02:12:03'),
	(5, 2, 'admin/articles#edit', '2013-08-10 15:22:53', '2013-08-10 15:22:53'),
	(6, 2, 'admin/articles#update', '2013-08-10 15:23:08', '2013-08-10 15:23:08'),
	(7, 2, 'admin/articles#index', '2013-08-10 16:16:21', '2013-08-10 16:16:22'),
	(8, 3, 'admin/groups#index', '2013-08-10 21:16:00', '2013-08-10 21:16:01'),
	(9, 4, 'admin/users#index', '2013-08-11 07:46:59', '2013-08-11 07:46:59'),
	(10, 5, 'admin/navigations#index', '2013-08-11 08:41:56', '2013-08-11 08:42:06'),
	(11, 6, 'admin/pages#index', '2013-08-11 09:32:40', '2013-08-11 09:32:40'),
	(12, 7, 'admin/admin#index', '2013-08-12 07:52:47', '2013-08-12 07:52:47'),
	(13, 3, 'admin/groups#edit', '2013-08-12 07:54:59', '2013-08-12 07:54:59'),
	(14, 3, 'admin/groups#update', '2013-08-12 07:55:15', '2013-08-12 07:55:15'),
	(15, 3, 'admin/groups#destroy', '2013-08-12 07:55:42', '2013-08-12 07:55:42'),
	(16, 6, 'admin/pages#new', '2013-08-14 15:02:04', '2013-08-14 15:02:05'),
	(17, 6, 'admin/pages#edit', '2013-08-14 15:02:17', '2013-08-14 15:02:17'),
	(18, 4, 'admin/users#edit', '2013-08-14 15:04:25', '2013-08-14 15:04:26'),
	(19, 5, 'admin/navigations#new', '2013-08-16 10:18:56', '2013-08-16 10:18:56'),
	(20, 5, 'admin/navigations#edit', '2013-08-16 10:19:09', '2013-08-16 10:19:09'),
	(21, 8, 'admin/affair_forms#index', '2013-08-18 08:49:24', '2013-08-18 08:49:25'),
	(22, 8, 'admin/affair_forms#new', '2013-08-18 09:52:55', '2013-08-18 09:52:56'),
	(23, 8, 'admin/affair_forms#create', '2013-08-18 09:55:26', '2013-08-18 09:55:26'),
	(24, 9, 'admin/affair_form_instances#index', '2013-08-18 15:07:48', '2013-08-18 15:07:48'),
	(25, 9, 'admin/affair_form_instances#new', '2013-08-18 15:08:05', '2013-08-18 15:08:05'),
	(26, 9, 'admin/affair_form_instances#create', '2013-08-18 15:08:18', '2013-08-18 15:08:19'),
	(27, 9, 'admin/affair_forms#apply', '2013-08-18 21:34:11', '2013-08-18 21:34:11'),
	(28, 8, 'admin/affair_forms#edit', '2013-08-19 16:44:40', '2013-08-19 16:44:41'),
	(29, 8, 'admin/affair_forms#update', '2013-08-19 16:44:54', '2013-08-19 16:44:54'),
	(30, 3, 'admin/groups#new', '2013-08-20 10:19:20', '2013-08-20 10:19:21'),
	(31, 3, 'admin/groups#create', '2013-08-20 10:19:31', '2013-08-20 10:19:31'),
	(32, 8, 'admin/affair_forms#destroy', '2013-08-20 14:45:35', '2013-08-20 14:45:35'),
	(33, 10, 'admin/affair_form_instance_audit_logs#index', '2013-08-20 16:53:34', '2013-08-20 16:53:34'),
	(34, 10, 'admin/affair_form_instance_audit_logs#new', '2013-08-20 16:53:51', '2013-08-20 16:53:51'),
	(35, 10, 'admin/affair_form_instance_audit_logs#create', '2013-08-20 16:54:13', '2013-08-20 16:54:14'),
	(36, 4, 'admin/users#update', '2013-08-20 22:18:54', '2013-08-20 22:18:54'),
	(37, 9, 'admin/affair_forms#propose', '2013-08-21 09:25:28', '2013-08-21 09:25:29'),
	(38, 11, 'admin/documents#new', '2013-08-22 10:25:17', '2013-08-22 10:25:17'),
	(39, 11, 'admin/documents#create', '2013-08-22 10:25:29', '2013-08-22 10:25:29'),
	(40, 12, 'admin/documents#edit', '2013-08-23 09:02:27', '2013-08-23 09:02:28'),
	(41, 12, 'admin/documents#update', '2013-08-23 09:02:43', '2013-08-23 09:02:44'),
	(42, 13, 'admin/documents#index', '2013-08-23 09:50:20', '2013-08-23 09:50:25'),
	(43, 12, 'admin/documents#audit', '2013-08-23 09:50:47', '2013-08-23 09:50:47'),
	(44, 12, 'admin/documents#audit_download', '2013-08-23 10:53:38', '2013-08-23 10:53:38'),
	(45, 13, 'admin/documents#download', '2013-08-23 11:25:45', '2013-08-23 11:25:45'),
	(46, 16, 'admin/friendly_links#index', '2013-08-27 10:41:04', '2013-08-27 10:41:04'),
	(47, 16, 'admin/friendly_links#new', '2013-08-27 10:41:17', '2013-08-27 10:41:17'),
	(48, 16, 'admin/friendly_links#create', '2013-08-27 10:41:28', '2013-08-27 10:41:29'),
	(49, 16, 'admin/friendly_links#edit', '2013-08-27 10:41:37', '2013-08-27 10:41:37'),
	(50, 16, 'admin/friendly_links#update', '2013-08-27 10:41:43', '2013-08-27 10:41:43'),
	(51, 16, 'admin/friendly_links#destroy', '2013-08-27 10:41:50', '2013-08-27 10:41:51'),
	(52, 17, 'admin/guest_messages#index', '2013-08-27 19:28:41', '2013-08-27 19:28:41'),
	(53, 17, 'admin/guest_messages#new', '2013-08-27 19:28:53', '2013-08-27 19:28:53'),
	(54, 17, 'admin/guest_messages#create', '2013-08-27 19:29:04', '2013-08-27 19:29:04'),
	(55, 17, 'admin/guest_messages#edit', '2013-08-27 19:29:11', '2013-08-27 19:29:11'),
	(56, 17, 'admin/guest_messages#update', '2013-08-27 19:29:19', '2013-08-27 19:29:20'),
	(57, 17, 'admin/guest_messages#destroy', '2013-08-27 19:29:26', '2013-08-27 19:29:26'),
	(58, 15, 'admin/lunches#index', '2013-08-28 16:24:39', '2013-08-28 16:24:39'),
	(59, 14, 'admin/lunches#new', '2013-08-28 16:24:51', '2013-08-28 16:24:51'),
	(60, 14, 'admin/lunches#create', '2013-08-28 16:24:59', '2013-08-28 16:24:59'),
	(61, 9, 'admin/affair_form_instances#show', '2013-08-30 09:43:19', '2013-08-30 09:43:19'),
	(62, 9, 'admin/affair_form_instances#destroy', '2013-08-30 15:20:36', '2013-08-30 15:20:36'),
	(63, 4, 'admin/users#new', '2013-08-30 16:13:27', '2013-08-30 16:13:27'),
	(64, 18, 'admin/users#audit', '2013-09-01 16:22:26', '2013-09-01 16:22:26'),
	(65, 18, 'admin/users#destroy', '2013-09-01 17:40:22', '2013-09-01 17:40:23'),
	(66, 18, 'admin/users#audit_pass', '2013-09-01 17:40:33', '2013-09-01 17:40:33'),
	(67, 19, 'bbs/topics#show_content', '2013-09-02 20:13:32', '2013-09-02 20:13:32'),
	(68, 19, 'bbs/topics#change_status', '2013-09-02 20:25:28', '2013-09-02 20:25:28'),
	(69, 19, 'bbs/topics#replies_audit', '2013-09-02 22:12:13', '2013-09-02 22:12:13'),
	(70, 19, 'bbs/topics#show_reply_content', '2013-09-02 22:13:50', '2013-09-02 22:13:50'),
	(71, 5, 'admin/navigations#create', '2013-09-08 17:54:14', '2013-09-08 17:54:14'),
	(74, 2, 'admin/articles#destroy', '2013-09-10 16:55:07', '2013-09-10 16:55:07'),
	(75, 2, 'admin/classifications#new', '2013-09-10 16:55:21', '2013-09-10 16:55:21'),
	(76, 2, 'admin/classifications#create', '2013-09-10 16:55:39', '2013-09-10 16:55:39'),
	(77, 2, 'admin/classifications#index', '2013-09-10 16:58:07', '2013-09-10 16:58:07'),
	(78, 2, 'admin/classifications#edit', '2013-09-10 17:11:10', '2013-09-10 17:11:10'),
	(79, 2, 'admin/classifications#update', '2013-09-10 17:44:25', '2013-09-10 17:44:25'),
	(80, 21, 'admin/left_navs#index', '2013-09-11 21:07:00', '2013-09-11 21:07:00'),
	(81, 21, 'admin/left_navs#create', '2013-09-11 21:07:12', '2013-09-11 21:07:13'),
	(82, 21, 'admin/left_navs#edit', '2013-09-11 21:07:20', '2013-09-11 21:07:20'),
	(83, 21, 'admin/left_navs#update', '2013-09-11 21:07:26', '2013-09-11 21:07:27'),
	(84, 21, 'admin/left_navs#destroy', '2013-09-11 21:07:32', '2013-09-11 21:07:32'),
	(85, 21, 'admin/left_navs#new', '2013-09-11 21:08:27', '2013-09-11 21:08:27'),
	(86, 5, 'admin/navigations#update', '2013-09-11 22:11:55', '2013-09-11 22:11:56'),
	(87, 5, 'admin/navigations#create', '2013-09-11 22:12:29', '2013-09-11 22:12:30'),
	(88, 6, 'admin/pages#create', '2013-09-12 08:14:29', '2013-09-12 08:14:29'),
	(89, 6, 'admin/pages#create', '2013-09-12 08:14:29', '2013-09-12 08:14:29'),
	(90, 22, 'admin/affair_form_instances#list', '2013-09-14 22:27:10', '2013-09-14 22:27:11'),
	(91, 22, 'admin/affair_form_instances#admin_view', '2013-09-14 22:27:18', '2013-09-14 22:27:19'),
	(92, 5, 'admin/navigations#destroy', '2013-09-15 07:47:13', '2013-09-15 07:47:13'),
	(93, 23, 'admin/documents#destroy', '2013-09-15 09:27:36', '2013-09-15 09:27:36'),
	(94, 4, 'admin/users#create', '2013-09-15 11:39:27', '2013-09-15 11:39:27'),
	(95, 1, 'admin/files#image_up', '2013-09-15 13:23:27', '2013-09-15 13:23:27'),
	(96, 2, 'admin/files#image_up', '2013-09-15 13:23:39', '2013-09-15 13:23:40'),
	(97, 6, 'admin/pages#update', '2013-09-16 18:05:06', '2013-09-16 18:05:06'),
	(98, 16, 'admin/friendly_link_classifications#index', '2013-09-17 12:41:56', '2013-09-17 12:41:56'),
	(99, 16, 'admin/friendly_link_classifications#new', '2013-09-17 12:42:08', '2013-09-17 12:42:08'),
	(100, 16, 'admin/friendly_link_classifications#edit', '2013-09-17 12:42:17', '2013-09-17 12:42:17'),
	(101, 16, 'admin/friendly_link_classifications#update', '2013-09-17 12:42:27', '2013-09-17 12:42:28'),
	(102, 16, 'admin/friendly_link_classifications#create', '2013-09-17 12:42:36', '2013-09-17 12:42:36'),
	(103, 16, 'admin/friendly_link_classifications#destroy', '2013-09-17 12:42:42', '2013-09-17 12:42:43'),
	(104, 6, 'admin/pages#destroy', '2013-09-17 14:10:54', '2013-09-17 14:10:54'),
	(105, 24, 'admin/messages#new', '2013-09-22 17:58:31', '2013-09-22 17:58:42'),
	(106, 24, 'admin/messages#create', '2013-09-22 17:58:54', '2013-09-22 17:58:54'),
	(107, 25, 'admin/messages#index', '2013-09-22 17:59:08', '2013-09-22 17:59:08'),
	(108, 26, 'admin/messages#outbox', '2013-09-22 18:00:59', '2013-09-22 18:01:00'),
	(109, 24, 'admin/messages#download', '2013-09-23 20:25:08', '2013-09-23 20:25:08'),
	(110, 25, 'admin/messages#download', '2013-09-23 20:25:16', '2013-09-23 20:25:16'),
	(111, 26, 'admin/messages#download', '2013-09-23 20:25:20', '2013-09-23 20:25:20'),
	(113, 25, 'admin/messages#show', '2013-09-23 20:33:20', '2013-09-23 20:33:21'),
	(114, 26, 'admin/messages#show', '2013-09-23 20:33:31', '2013-09-23 20:33:31'),
	(115, 26, 'admin/messages#preview', '2013-09-24 18:17:26', '2013-09-24 18:17:26'),
	(116, 27, 'admin/announcements#new', '2013-09-24 20:27:25', '2013-09-24 20:27:25'),
	(117, 27, 'admin/announcements#create', '2013-09-24 20:27:52', '2013-09-24 20:27:52'),
	(118, 27, 'admin/announcements#index', '2013-09-24 20:28:07', '2013-09-24 20:28:07'),
	(119, 27, 'admin/announcements#edit', '2013-09-24 20:28:34', '2013-09-24 20:28:34'),
	(120, 27, 'admin/announcements#update', '2013-09-24 20:28:48', '2013-09-24 20:28:48'),
	(121, 27, 'admin/announcements#destroy', '2013-09-24 20:28:56', '2013-09-24 20:28:57'),
	(122, 28, 'admin/announcements#show', '2013-09-24 20:29:07', '2013-09-24 20:29:07'),
	(123, 28, 'admin/announcements#view_index', '2013-09-24 20:29:18', '2013-09-24 20:29:18');
/*!40000 ALTER TABLE `permission_actions` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.replies
DROP TABLE IF EXISTS `replies`;
CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.replies: ~14 rows (approximately)
DELETE FROM `replies`;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` (`id`, `user_id`, `topic_id`, `content`, `created_at`, `updated_at`, `status`) VALUES
	(1, 1, 3, '哦哦 原来是这样啊', '2013-08-25 14:24:07', '2013-09-02 14:09:07', 1),
	(2, 1, 25, '谁说的', '2013-09-02 06:16:55', '2013-09-02 06:16:55', 0),
	(3, 1, 25, '谁说的\r\n', '2013-09-02 06:17:01', '2013-09-02 06:17:01', 0),
	(4, 1, 25, '呵呵 当然是我说的啊', '2013-09-02 10:39:52', '2013-09-02 10:39:52', 0),
	(5, 1, 32, '知道你有权限', '2013-09-02 13:50:35', '2013-09-02 13:50:35', 0),
	(6, 1, 32, '知道你丫有权限', '2013-09-02 14:14:35', '2013-09-02 14:14:35', 0),
	(8, 1, 32, '一楼', '2013-09-15 11:31:44', '2013-09-15 11:31:44', 3),
	(10, 1, 32, '三楼', '2013-09-15 11:31:53', '2013-09-15 11:31:53', 3),
	(11, 1, 32, '四楼', '2013-09-15 11:31:59', '2013-09-15 11:31:59', 3),
	(12, 1, 32, '五楼', '2013-09-15 11:32:04', '2013-09-15 11:32:04', 3),
	(13, 1, 32, '速度来参与讨论', '2013-09-15 11:32:11', '2013-09-15 11:32:11', 3),
	(14, 1, 5, '其实都还不错的 如果你仔细看过了的话', '2013-09-15 11:39:32', '2013-09-15 11:39:32', 3),
	(15, 1, 6, '那个是我最中意的', '2013-09-15 11:54:17', '2013-09-15 11:54:17', 3),
	(16, 1, 5, '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈和', '2013-09-15 12:07:49', '2013-09-15 12:07:49', 3);
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.schema_migrations
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.schema_migrations: ~62 rows (approximately)
DELETE FROM `schema_migrations`;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
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
	('20130925141225');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.topics
DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.topics: ~40 rows (approximately)
DELETE FROM `topics`;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`, `status`) VALUES
	(3, 1, 'Ruby 性能真的比 Node 差这么多么', '公司内部有个项目，很简单，几乎没什么业务逻辑，就是根据几个Key到mongodb中去查询，然后前端返回JSON\r\n\r\n一开始是使用rails配合grape出的第一版，跑在passenger下，然后被passenger蛋疼的并发模式伤到了，切到了rack配合grape跑在thin上，快了很多，2核机器4个process下，性能提高了2倍，但是由于历史原因还是载入整个rails环境，而且，Mongodb使用了Mongoid的驱动\r\n\r\n看了robbin同志关于api后台的描述，后面又不满足了，去掉了rails环境，单独使用grape配合mongodb的原生驱动，加入rainbows的线程池模式，4个process,64个线程池加上64个连接池，大概也就提升了50%\r\n\r\n后面，闲着无聊，觉得mongodb的原始驱动是基于阻塞的socket模式，在线程池模式下，将会带来大量的线程切换的消耗，因此萌生了基于Eventmachine搞一个异步io查询的连接池, 先尝试了下用Node写了个基本的从Mongod中查询api，然后基于mongodb的原生驱动写了个基本可用~~报错不管~~的异步游标的实现，对比下，顿时，我和我的小伙伴都惊呆了\r\n\r\n使用ruby + 自制的异步游标 + rainbows , 单进程大概可以负载15个请求每秒，而同样的查询同样的数据源，NODE单个进程可以负担50+的请求每秒，而且，平均消耗时间都在ruby的一半以下\r\n\r\nruby是1.9.3--p286,有点老，\r\nnode用的是apt-get的装的\r\n在2K的数据中查询出113个数据，数据JSON化之后大概有70+KB，有点大，\r\n但是差距真的感觉十分明显啊', '2013-08-25 13:21:31', '2013-09-02 13:47:55', 2),
	(5, 1, 'MongoDB 图形界面的管理工具那个好用？', 'Ubuntu 上有什么好的 GUI 工具啊，介绍一下，谢谢.', '2013-09-02 04:35:19', '2013-09-14 13:50:35', 1),
	(6, 1, 'MongoDB 图形界面的管理工具那个好用？', 'Ubuntu 上有什么好的 GUI 工具啊，介绍一下，谢谢.', '2013-09-02 04:35:38', '2013-09-15 11:29:09', 1),
	(7, 1, 'Rails secret key 泄漏了，是不是逆向计算任意用户 Cookie', '比如 Ruby China 用的是 cookie_store，并且 secret key 现在是知道的，如：https://github.com/ruby-china/ruby-china/blob/master/config/initializers/secret_token.rb\r\n\r\n是不是就可以逆向计算出任意用户的 cookie？\r\n\r\n由于 Ruby China 是用了 Devise，假如有最简单的 Rails 项目，没有使用这个 gem ，是否可以呢？', '2013-09-02 04:39:53', '2013-09-15 11:29:49', 1),
	(8, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '其实早就关注这个语言，只是一直没有花时间学习。\r\n\r\n最近下定决心开始深入，感觉还是很不错的。\r\n\r\n整理了一些各方面的资源，分享一下：\r\n\r\n入门\r\n\r\n官方入门文档：\r\n\r\nGetting started Guide: http://elixir-lang.org/getting_started/1.html\r\nMix 入门： http://elixir-lang.org/getting_started/mix/1.html\r\nElixir OTP入门： http://elixir-lang.org/getting_started/mix/2.html\r\n\r\n书籍\r\n\r\nDave Thomas Programming Elixir: http://pragprog.com/book/elixir/programming-elixir\r\nO\'Reilly: Introducing Elixir: http://shop.oreilly.com/product/0636920030584.do\r\n两本书推荐PragProg Dave Thomas的，不过两本书都明显滞后于当前开发版本。\r\n\r\n视频\r\n\r\nPragProg 9 Minutes: http://www.youtube.com/watch?v=hht9s6nAAx8&feature=youtu.be\r\nPragProg 30 Minutes: http://www.youtube.com/watch?v=a-off4Vznjs&feature=youtu.be\r\n上面两个都是很好的入门视频。\r\n\r\n还有一个跟PeepCode跟Jose Valim的Meet Elixir，\r\nhttps://peepcode.com/products/elixir\r\n这个是跟Jose一起做一个小项目，不太算入门视频，更像是展示Elixir的特性。\r\n\r\nDave Thomas, Power of Erlang, Joy of Ruby:\r\nhttp://confreaks.com/videos/2591-lonestarruby2013-elixir-power-of-erlang-joy-of-ruby\r\n\r\nElixir 项目\r\n\r\nElixir语言： https://github.com/elixir-lang/elixir\r\nDynamo Web Framework: https://github.com/elixir-lang/dynamo\r\nEcto: Database Client: https://github.com/elixir-lang/ecto\r\n\r\n更多项目： https://github.com/elixir-lang/elixir/wiki/Projects-in-the-wild\r\n\r\n上面大部分都在开发早期，因为Elixir接近0.10.2但是还不是1.0，很多API都在早期，喜欢看源码学习的朋友可以看看。\r\n\r\n##编辑器插件\r\nVim: https://github.com/elixir-lang/vim-elixir\r\nEmacs: https://github.com/elixir-lang/emacs-elixir\r\nTextmate/Subl : https://github.com/elixir-lang/elixir-tmbundle\r\n\r\n外加一个我写的Emacs Yasnippet的snippets:\r\nhttps://github.com/hisea/elixir-yasnippets', '2013-09-02 04:40:26', '2013-09-15 11:30:43', 1),
	(9, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '其实早就关注这个语言，只是一直没有花时间学习。\r\n\r\n最近下定决心开始深入，感觉还是很不错的。\r\n\r\n整理了一些各方面的资源，分享一下：\r\n\r\n入门\r\n\r\n官方入门文档：\r\n\r\nGetting started Guide: http://elixir-lang.org/getting_started/1.html\r\nMix 入门： http://elixir-lang.org/getting_started/mix/1.html\r\nElixir OTP入门： http://elixir-lang.org/getting_started/mix/2.html\r\n\r\n书籍\r\n\r\nDave Thomas Programming Elixir: http://pragprog.com/book/elixir/programming-elixir\r\nO\'Reilly: Introducing Elixir: http://shop.oreilly.com/product/0636920030584.do\r\n两本书推荐PragProg Dave Thomas的，不过两本书都明显滞后于当前开发版本。\r\n\r\n视频\r\n\r\nPragProg 9 Minutes: http://www.youtube.com/watch?v=hht9s6nAAx8&feature=youtu.be\r\nPragProg 30 Minutes: http://www.youtube.com/watch?v=a-off4Vznjs&feature=youtu.be\r\n上面两个都是很好的入门视频。\r\n\r\n还有一个跟PeepCode跟Jose Valim的Meet Elixir，\r\nhttps://peepcode.com/products/elixir\r\n这个是跟Jose一起做一个小项目，不太算入门视频，更像是展示Elixir的特性。\r\n\r\nDave Thomas, Power of Erlang, Joy of Ruby:\r\nhttp://confreaks.com/videos/2591-lonestarruby2013-elixir-power-of-erlang-joy-of-ruby\r\n\r\nElixir 项目\r\n\r\nElixir语言： https://github.com/elixir-lang/elixir\r\nDynamo Web Framework: https://github.com/elixir-lang/dynamo\r\nEcto: Database Client: https://github.com/elixir-lang/ecto\r\n\r\n更多项目： https://github.com/elixir-lang/elixir/wiki/Projects-in-the-wild\r\n\r\n上面大部分都在开发早期，因为Elixir接近0.10.2但是还不是1.0，很多API都在早期，喜欢看源码学习的朋友可以看看。\r\n\r\n##编辑器插件\r\nVim: https://github.com/elixir-lang/vim-elixir\r\nEmacs: https://github.com/elixir-lang/emacs-elixir\r\nTextmate/Subl : https://github.com/elixir-lang/elixir-tmbundle\r\n\r\n外加一个我写的Emacs Yasnippet的snippets:\r\nhttps://github.com/hisea/elixir-yasnippets', '2013-09-02 04:40:26', '2013-09-15 11:30:45', 1),
	(10, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '其实早就关注这个语言，只是一直没有花时间学习。\r\n\r\n最近下定决心开始深入，感觉还是很不错的。\r\n\r\n整理了一些各方面的资源，分享一下：\r\n\r\n入门\r\n\r\n官方入门文档：\r\n\r\nGetting started Guide: http://elixir-lang.org/getting_started/1.html\r\nMix 入门： http://elixir-lang.org/getting_started/mix/1.html\r\nElixir OTP入门： http://elixir-lang.org/getting_started/mix/2.html\r\n\r\n书籍\r\n\r\nDave Thomas Programming Elixir: http://pragprog.com/book/elixir/programming-elixir\r\nO\'Reilly: Introducing Elixir: http://shop.oreilly.com/product/0636920030584.do\r\n两本书推荐PragProg Dave Thomas的，不过两本书都明显滞后于当前开发版本。\r\n\r\n视频\r\n\r\nPragProg 9 Minutes: http://www.youtube.com/watch?v=hht9s6nAAx8&feature=youtu.be\r\nPragProg 30 Minutes: http://www.youtube.com/watch?v=a-off4Vznjs&feature=youtu.be\r\n上面两个都是很好的入门视频。\r\n\r\n还有一个跟PeepCode跟Jose Valim的Meet Elixir，\r\nhttps://peepcode.com/products/elixir\r\n这个是跟Jose一起做一个小项目，不太算入门视频，更像是展示Elixir的特性。\r\n\r\nDave Thomas, Power of Erlang, Joy of Ruby:\r\nhttp://confreaks.com/videos/2591-lonestarruby2013-elixir-power-of-erlang-joy-of-ruby\r\n\r\nElixir 项目\r\n\r\nElixir语言： https://github.com/elixir-lang/elixir\r\nDynamo Web Framework: https://github.com/elixir-lang/dynamo\r\nEcto: Database Client: https://github.com/elixir-lang/ecto\r\n\r\n更多项目： https://github.com/elixir-lang/elixir/wiki/Projects-in-the-wild\r\n\r\n上面大部分都在开发早期，因为Elixir接近0.10.2但是还不是1.0，很多API都在早期，喜欢看源码学习的朋友可以看看。\r\n\r\n##编辑器插件\r\nVim: https://github.com/elixir-lang/vim-elixir\r\nEmacs: https://github.com/elixir-lang/emacs-elixir\r\nTextmate/Subl : https://github.com/elixir-lang/elixir-tmbundle\r\n\r\n外加一个我写的Emacs Yasnippet的snippets:\r\nhttps://github.com/hisea/elixir-yasnippets', '2013-09-02 04:40:27', '2013-09-15 11:30:47', 1),
	(11, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '其实早就关注这个语言，只是一直没有花时间学习。\r\n\r\n最近下定决心开始深入，感觉还是很不错的。\r\n\r\n整理了一些各方面的资源，分享一下：\r\n\r\n入门\r\n\r\n官方入门文档：\r\n\r\nGetting started Guide: http://elixir-lang.org/getting_started/1.html\r\nMix 入门： http://elixir-lang.org/getting_started/mix/1.html\r\nElixir OTP入门： http://elixir-lang.org/getting_started/mix/2.html\r\n\r\n书籍\r\n\r\nDave Thomas Programming Elixir: http://pragprog.com/book/elixir/programming-elixir\r\nO\'Reilly: Introducing Elixir: http://shop.oreilly.com/product/0636920030584.do\r\n两本书推荐PragProg Dave Thomas的，不过两本书都明显滞后于当前开发版本。\r\n\r\n视频\r\n\r\nPragProg 9 Minutes: http://www.youtube.com/watch?v=hht9s6nAAx8&feature=youtu.be\r\nPragProg 30 Minutes: http://www.youtube.com/watch?v=a-off4Vznjs&feature=youtu.be\r\n上面两个都是很好的入门视频。\r\n\r\n还有一个跟PeepCode跟Jose Valim的Meet Elixir，\r\nhttps://peepcode.com/products/elixir\r\n这个是跟Jose一起做一个小项目，不太算入门视频，更像是展示Elixir的特性。\r\n\r\nDave Thomas, Power of Erlang, Joy of Ruby:\r\nhttp://confreaks.com/videos/2591-lonestarruby2013-elixir-power-of-erlang-joy-of-ruby\r\n\r\nElixir 项目\r\n\r\nElixir语言： https://github.com/elixir-lang/elixir\r\nDynamo Web Framework: https://github.com/elixir-lang/dynamo\r\nEcto: Database Client: https://github.com/elixir-lang/ecto\r\n\r\n更多项目： https://github.com/elixir-lang/elixir/wiki/Projects-in-the-wild\r\n\r\n上面大部分都在开发早期，因为Elixir接近0.10.2但是还不是1.0，很多API都在早期，喜欢看源码学习的朋友可以看看。\r\n\r\n##编辑器插件\r\nVim: https://github.com/elixir-lang/vim-elixir\r\nEmacs: https://github.com/elixir-lang/emacs-elixir\r\nTextmate/Subl : https://github.com/elixir-lang/elixir-tmbundle\r\n\r\n外加一个我写的Emacs Yasnippet的snippets:\r\nhttps://github.com/hisea/elixir-yasnippets', '2013-09-02 04:40:27', '2013-09-02 04:40:27', 0),
	(12, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '其实早就关注这个语言，只是一直没有花时间学习。\r\n\r\n最近下定决心开始深入，感觉还是很不错的。\r\n\r\n整理了一些各方面的资源，分享一下：\r\n\r\n入门\r\n\r\n官方入门文档：\r\n\r\nGetting started Guide: http://elixir-lang.org/getting_started/1.html\r\nMix 入门： http://elixir-lang.org/getting_started/mix/1.html\r\nElixir OTP入门： http://elixir-lang.org/getting_started/mix/2.html\r\n\r\n书籍\r\n\r\nDave Thomas Programming Elixir: http://pragprog.com/book/elixir/programming-elixir\r\nO\'Reilly: Introducing Elixir: http://shop.oreilly.com/product/0636920030584.do\r\n两本书推荐PragProg Dave Thomas的，不过两本书都明显滞后于当前开发版本。\r\n\r\n视频\r\n\r\nPragProg 9 Minutes: http://www.youtube.com/watch?v=hht9s6nAAx8&feature=youtu.be\r\nPragProg 30 Minutes: http://www.youtube.com/watch?v=a-off4Vznjs&feature=youtu.be\r\n上面两个都是很好的入门视频。\r\n\r\n还有一个跟PeepCode跟Jose Valim的Meet Elixir，\r\nhttps://peepcode.com/products/elixir\r\n这个是跟Jose一起做一个小项目，不太算入门视频，更像是展示Elixir的特性。\r\n\r\nDave Thomas, Power of Erlang, Joy of Ruby:\r\nhttp://confreaks.com/videos/2591-lonestarruby2013-elixir-power-of-erlang-joy-of-ruby\r\n\r\nElixir 项目\r\n\r\nElixir语言： https://github.com/elixir-lang/elixir\r\nDynamo Web Framework: https://github.com/elixir-lang/dynamo\r\nEcto: Database Client: https://github.com/elixir-lang/ecto\r\n\r\n更多项目： https://github.com/elixir-lang/elixir/wiki/Projects-in-the-wild\r\n\r\n上面大部分都在开发早期，因为Elixir接近0.10.2但是还不是1.0，很多API都在早期，喜欢看源码学习的朋友可以看看。\r\n\r\n##编辑器插件\r\nVim: https://github.com/elixir-lang/vim-elixir\r\nEmacs: https://github.com/elixir-lang/emacs-elixir\r\nTextmate/Subl : https://github.com/elixir-lang/elixir-tmbundle\r\n\r\n外加一个我写的Emacs Yasnippet的snippets:\r\nhttps://github.com/hisea/elixir-yasnippets', '2013-09-02 04:40:27', '2013-09-02 04:40:27', 0),
	(13, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '其实早就关注这个语言，只是一直没有花时间学习。\r\n\r\n最近下定决心开始深入，感觉还是很不错的。\r\n\r\n整理了一些各方面的资源，分享一下：\r\n\r\n入门\r\n\r\n官方入门文档：\r\n\r\nGetting started Guide: http://elixir-lang.org/getting_started/1.html\r\nMix 入门： http://elixir-lang.org/getting_started/mix/1.html\r\nElixir OTP入门： http://elixir-lang.org/getting_started/mix/2.html\r\n\r\n书籍\r\n\r\nDave Thomas Programming Elixir: http://pragprog.com/book/elixir/programming-elixir\r\nO\'Reilly: Introducing Elixir: http://shop.oreilly.com/product/0636920030584.do\r\n两本书推荐PragProg Dave Thomas的，不过两本书都明显滞后于当前开发版本。\r\n\r\n视频\r\n\r\nPragProg 9 Minutes: http://www.youtube.com/watch?v=hht9s6nAAx8&feature=youtu.be\r\nPragProg 30 Minutes: http://www.youtube.com/watch?v=a-off4Vznjs&feature=youtu.be\r\n上面两个都是很好的入门视频。\r\n\r\n还有一个跟PeepCode跟Jose Valim的Meet Elixir，\r\nhttps://peepcode.com/products/elixir\r\n这个是跟Jose一起做一个小项目，不太算入门视频，更像是展示Elixir的特性。\r\n\r\nDave Thomas, Power of Erlang, Joy of Ruby:\r\nhttp://confreaks.com/videos/2591-lonestarruby2013-elixir-power-of-erlang-joy-of-ruby\r\n\r\nElixir 项目\r\n\r\nElixir语言： https://github.com/elixir-lang/elixir\r\nDynamo Web Framework: https://github.com/elixir-lang/dynamo\r\nEcto: Database Client: https://github.com/elixir-lang/ecto\r\n\r\n更多项目： https://github.com/elixir-lang/elixir/wiki/Projects-in-the-wild\r\n\r\n上面大部分都在开发早期，因为Elixir接近0.10.2但是还不是1.0，很多API都在早期，喜欢看源码学习的朋友可以看看。\r\n\r\n##编辑器插件\r\nVim: https://github.com/elixir-lang/vim-elixir\r\nEmacs: https://github.com/elixir-lang/emacs-elixir\r\nTextmate/Subl : https://github.com/elixir-lang/elixir-tmbundle\r\n\r\n外加一个我写的Emacs Yasnippet的snippets:\r\nhttps://github.com/hisea/elixir-yasnippets', '2013-09-02 04:40:27', '2013-09-15 11:30:22', 1),
	(14, 1, '我校2013级统招本科新生开始首日军训', ' 8月29日，我校2013级统招本科新生开始了第一天的军训。早上六点半，参加军训的新生们身着迷彩服，个个精神抖擞，在奥林匹克运动场集合，开始了大学里的第一课。胡剑锋、黄辉玲副校长在教务处、学工处等部门负责人的陪同下巡视了现场。胡剑锋详细询问了各学院的中队分布情况和出勤率，要求各学院认真抓好入学教育的第一课，叮嘱医务等后勤人员做好医疗急救、水源供给等后勤工作，确保新生军训安全有序地进行。据悉，军训首日的安排是学唱校歌、入学专业介绍和自查内务。', '2013-09-02 05:53:46', '2013-09-02 05:53:46', 0),
	(15, 1, 'Ruby on Rails Validation Errors', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:24', '2013-09-02 05:54:24', 0),
	(16, 1, 'Ruby on Rails Validation Errors', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:25', '2013-09-02 05:54:25', 0),
	(17, 1, 'Ruby on Rails Validation Errors', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:25', '2013-09-02 05:54:25', 0),
	(18, 1, 'Ruby on Rails Validation Errors', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:25', '2013-09-15 11:30:27', 1),
	(19, 1, 'ASDASDS', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:40', '2013-09-02 05:54:40', 0),
	(20, 1, 'ASDASDS', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:40', '2013-09-02 05:54:40', 0),
	(21, 1, 'ASDASDS', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:41', '2013-09-15 11:30:29', 1),
	(22, 1, 'ASDASDS', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:41', '2013-09-15 11:30:25', 1),
	(23, 1, 'ASDASDS', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:41', '2013-09-02 05:54:41', 0),
	(24, 1, 'ASDASDS', 'def create\r\n    interest = KnownInterest.new( :email => params[:email] )\r\n    if(interest.valid? and interest.save)\r\n        flash[:notice] = "Thanks for showing interest, We\'ll be in touch with updates."\r\n    else\r\n        flash[:notice] = interest.errors.messages\r\n    end     \r\n    redirect_to action: "index"\r\nend', '2013-09-02 05:54:42', '2013-09-02 05:54:42', 0),
	(25, 1, 'safasfs', 'afsfadf', '2013-09-02 06:00:12', '2013-09-02 06:00:12', 0),
	(26, 1, '我是受信任的组吗？', '萨达撒的撒', '2013-09-02 13:37:57', '2013-09-02 13:37:57', 0),
	(27, 1, '发个试下', '我的也要审核？', '2013-09-02 13:42:12', '2013-09-02 13:42:12', 0),
	(28, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '阿萨德撒打算的撒的', '2013-09-02 13:42:36', '2013-09-02 13:42:36', 0),
	(29, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '阿萨德撒打算的撒的', '2013-09-02 13:43:07', '2013-09-02 13:43:07', 0),
	(30, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '阿萨德撒打算的撒的', '2013-09-02 13:43:09', '2013-09-02 13:43:09', 0),
	(31, 1, '最近在学习 Elixir, 分享些资源, 顺便寻找同好', '阿萨德撒打算的撒的', '2013-09-02 13:43:21', '2013-09-02 13:47:43', 2),
	(33, 1, '新的帖子测试', '<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	离新一代 iPhone 发布还有几个小时，同学们都很兴奋吧。这里再告诉同学们一个好消息，《使用 RSpec 测试 Rails 程序》这本书昨天正式发布了，购买地址：<span class="Apple-converted-space">&nbsp;</span><a href="https://leanpub.com/everydayrailsrspec-cn" target="_blank">https://leanpub.com/everydayrailsrspec-cn</a>\r\n</p>\r\n<h4 style="color:#222222;background-color:#ffffff;text-indent:0px;">\r\n	简介\r\n</h4>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	《使用 RSpec 测试 Rails 程序》是《Everyday Rails Testing with RSpec》的中文版，原作者为 Aaron Sumner。本书的部分内容源自 Aaron 在<span class="Apple-converted-space">&nbsp;</span><a href="http://everydayrails.com/">Everyday Rails</a><span class="Apple-converted-space">&nbsp;</span>网站上发布的系列文章，后来汇编成书，并增添了部分内容。\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	本书较为系统全面地介绍了如何使用 RSpec 测试 Rails 程序，通过本书你可以：\r\n</p>\r\n<ul style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	<li style="font-size:13px;color:#333333;">\r\n		了解测试的类型；\r\n	</li>\r\n	<li style="font-size:13px;color:#333333;">\r\n		知道如何测试 Rails 程序；\r\n	</li>\r\n	<li style="font-size:13px;color:#333333;">\r\n		知道如何编写各种类型的测试；\r\n	</li>\r\n	<li style="font-size:13px;color:#333333;">\r\n		知道如何组织程序；\r\n	</li>\r\n	<li style="font-size:13px;color:#333333;">\r\n		了解 Rails 测试的原则和策略；\r\n	</li>\r\n	<li style="font-size:13px;color:#333333;">\r\n		知道如何使用“测试驱动开发”理念开发 Rails 程序；\r\n	</li>\r\n</ul>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	这本书特别适合对“测试”概念不熟悉，刚开始学 Rails，而且想学习 TDD 的同学。\r\n</p>\r\n<h4 style="color:#222222;background-color:#ffffff;text-indent:0px;">\r\n	FAQ\r\n</h4>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	<strong>如何购买，怎么支付？</strong>\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	这本书通过 Leanpub 发布，可以直接在 Leanpub 的网站购买，地址为<span class="Apple-converted-space">&nbsp;</span><a href="https://leanpub.com/everydayrailsrspec-cn" target="_blank">https://leanpub.com/everydayrailsrspec-cn</a>。可以使用 Paypal 或信用卡支付。\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	如果实在不便使用 Paypal 支付，可以在某宝上找我代购，地址<span class="Apple-converted-space">&nbsp;</span><a href="http://item.taobao.com/item.htm?id=20151973725" target="_blank">http://item.taobao.com/item.htm?id=20151973725</a>。\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	<strong>购买后还会收到后续更新吗？</strong>\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	Leanpub 的理念就是尽早发布，持续发布。所以，我会保持更新，而且所有更新都不会再收费。一旦有更新，您会收到来自 Leanpub 的邮件通知。\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	<strong>购买后，如果不满意可以退款吗？</strong>\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	可以。按 Leanpub 规定，您有 45 天得免费退款期，100% 返还。但退款后，无法收到后续更新。\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	<strong>发现问题怎么反馈？</strong>\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	如果您对本书有任何建议、意见和错误指正，请发往<span class="Apple-converted-space">&nbsp;</span><a href="https://github.com/AndorChen/everydayrailsrspec-cn/issues" target="_blank">https://github.com/AndorChen/everydayrailsrspec-cn/issues</a>，我会尽快回复。\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	购买地址：<a href="https://leanpub.com/everydayrailsrspec-cn" target="_blank">https://leanpub.com/everydayrailsrspec-cn</a>\r\n</p>\r\n<p style="color:#333333;background-color:#ffffff;text-indent:0px;">\r\n	趁直播还没开始，赶快打开浏览器购买吧，把知识转换成<span class="Apple-converted-space">&nbsp;</span><img title=":iphone:" class="emoji" style="height:20px;width:20px;" alt="" src="http://l.ruby-china.org/assets/emojis/iphone.png" />！\r\n</p>', '2013-09-15 11:40:22', '2013-09-15 11:40:22', 3);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `lastlogin` datetime DEFAULT NULL,
  `account` varchar(16) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `teacher_position` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table ganli_rails.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `status`, `lastlogin`, `account`, `qq`, `phone`, `teacher_position`, `grade`) VALUES
	(1, '邵成磊', 'chareice@live.com', '9c8c784647ef61e23dc0a134e940b32e', '2013-08-07 04:34:13', '2013-09-25 12:52:14', 1, '2013-09-25 09:41:06', 'chareice', '81376258', '18942321753', '', ''),
	(2, '年级组长', 'chareice@live.com', 'c4ca4238a0b923820dcc509a6f75849b', '2013-09-25 11:53:15', '2013-09-25 13:17:24', 1, '2013-09-25 11:53:15', 'tester', '81376258', '18942321753', '', '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table ganli_rails.users_groups
DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table ganli_rails.users_groups: ~2 rows (approximately)
DELETE FROM `users_groups`;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2013-08-08 14:54:30', '2013-08-20 14:20:47'),
	(11, 2, 4, '2013-09-25 11:53:15', '2013-09-25 13:28:03');
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
