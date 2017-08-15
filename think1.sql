﻿# Host: 192.168.1.201  (Version: 5.5.48-log)
# Date: 2016-12-28 16:44:00
# Generator: MySQL-Front 5.3  (Build 4.214)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "think_admin_company"
#

DROP TABLE IF EXISTS `think_admin_company`;
CREATE TABLE `think_admin_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示禁用，1表示启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "think_admin_company"
#

INSERT INTO `think_admin_company` VALUES (1,'典阅科技有限公司',1);

#
# Structure for table "think_admin_message"
#

DROP TABLE IF EXISTS `think_admin_message`;
CREATE TABLE `think_admin_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uid` int(10) DEFAULT NULL COMMENT '收信人',
  `title` char(10) DEFAULT NULL COMMENT '消息标题',
  `contents` varchar(30) DEFAULT NULL COMMENT '消息内容',
  `type` tinyint(1) NOT NULL,
  `newstime` datetime NOT NULL,
  `from_id` tinyint(1) NOT NULL COMMENT '消息来源UID',
  `status` tinyint(1) NOT NULL COMMENT '消息读取状态0表示未读，1表示已读',
  `is_delete` tinyint(1) NOT NULL COMMENT '0表示已经删除，1表示未删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "think_admin_message"
#

INSERT INTO `think_admin_message` VALUES (1,88,'您有短消息注意查收','您还有未处理的任务需要处理',1,'2016-12-13 21:59:59',89,0,0);

#
# Structure for table "think_admin_nav"
#

DROP TABLE IF EXISTS `think_admin_nav`;
CREATE TABLE `think_admin_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `pid` int(11) unsigned DEFAULT '0' COMMENT '所属菜单',
  `name` varchar(15) DEFAULT '' COMMENT '菜单名称',
  `mca` varchar(255) DEFAULT '' COMMENT '模块、控制器、方法',
  `ico` varchar(20) DEFAULT '' COMMENT 'font-awesome图标',
  `order_number` int(11) unsigned DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

#
# Data for table "think_admin_nav"
#

/*!40000 ALTER TABLE `think_admin_nav` DISABLE KEYS */;
INSERT INTO `think_admin_nav` VALUES (1,0,'系统设置','Admin/shezhi/config','cog',9),(2,1,'菜单管理','Admin/Nav/index',NULL,NULL),(38,0,'首页','','home',1),(39,0,'我的培训','Admin/peixun/myPeixun','mortar-board',4),(40,0,'消息通知','Admin/Nav/send','send',5),(41,0,'资源管理','Admin/Nav/ziyuan','cubes',6),(42,0,'供应商管理','Admin/Nav/supplierManage','user-circle',7),(43,0,'审核任务','Admin/Nav/audit','calendar-check-o',8),(45,39,'我的课程','Admin/Course/index','circle-o',NULL),(46,39,'我的考试','Admin/peixun/kaoshi','circle-o',NULL),(47,41,'课程管理','Admin/ziyuan/kecheng','circle-o',NULL),(49,41,'试卷管理','Admin/ziyuan/shijuan','circle-o',NULL),(50,41,'问卷管理','Admin/ziyuan/wenjuan','circle-o',NULL),(51,43,'培训项目审核','Admin/audit/audit','circle-o',NULL),(52,43,'课程审核','Admin/audit/course','circle-o',NULL),(53,43,'试卷审核','Admin/audit/exam','circle-o',NULL),(54,43,'问卷审核','Admin/audit/question','circle-o',NULL),(55,1,'组织架构','Admin/shezhi/zuzhi','circle-o',1),(56,1,'岗位管理','Admin/AuditUsers/jobsmanage','circle-o',2),(57,1,'注册审核','Admin/AuditUsers/registration','circle-o',3),(58,1,'资讯','Admin/News/page','circle-o',5),(59,1,'学分','Admin/shezhi/xuefen','circle-o',6),(60,1,'初始化设置','Admin/shezhi/chushi','circle-o',7),(61,41,'新建课程','Admin/Course/courseAdd','circle-o',NULL),(64,41,'讲师管理','Admin/Lecturer/pagelist','circle-o',NULL),(65,0,'培训管理','Admin/peixun/guanli','fa fa-mortar-board',4),(66,65,'培训项目','Admin/Manage/index','fa fa-circle-o',NULL),(67,39,'我的调研','Admin/peixun/survey','fa fa-circle-o',NULL),(68,46,'参加考试','Admin/peixun/joinExam','fa fa-circle-o',NULL),(69,46,'查看考试结果','Admin/peixun/checkExamResult','fa fa-circle-o',NULL),(70,67,'参加调研','Admin/peixun/ jionSurvey','fa fa-circle-o',NULL),(71,67,'查看调研结果','Admin/peixun/ checkSurveyrResult','fa fa-circle-o',NULL),(72,42,'供应商管理','Admin/Supplier/supplierManage','fa fa-circle-o',NULL),(75,65,'我的授课','Admin/Teach','fa fa-circle-o',NULL),(76,65,'主持考试','Admin/Host/index','fa fa-circle-o',NULL),(77,65,'主持调研','Admin/Survey/index','fa fa-circle-o',NULL),(78,1,'权限管理','Admin/Jurisdiction/index','circle-o',4);
/*!40000 ALTER TABLE `think_admin_nav` ENABLE KEYS */;

#
# Structure for table "think_admin_project"
#

DROP TABLE IF EXISTS `think_admin_project`;
CREATE TABLE `think_admin_project` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `project_name` char(60) DEFAULT NULL COMMENT '名称',
  `class_name` char(60) DEFAULT NULL COMMENT '班级',
  `project_description` text COMMENT '描述',
  `project_covers` char(60) DEFAULT NULL COMMENT '项目封面',
  `project_budget` float(20,2) DEFAULT NULL COMMENT '项目预算',
  `designated_ person` int(10) DEFAULT NULL COMMENT '指定人员',
  `is_public` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示不公开，1表示公开',
  `population` tinyint(6) DEFAULT '0' COMMENT '指定人数',
  `add_time` datetime DEFAULT NULL,
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `type` tinyint(1) DEFAULT '2' COMMENT '0表示进行中，1表示草稿，2表示待审核，3表示拒绝，4表示已完成',
  PRIMARY KEY (`id`),
  KEY `name,class` (`project_name`,`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

#
# Data for table "think_admin_project"
#

INSERT INTO `think_admin_project` VALUES (1,88,'在线金融教育','高级班','&lt;p&gt;国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。&lt;/p&gt;\r\n','/Upload/photo/5853ab351a566.png',0.00,NULL,1,0,'2016-12-11 14:22:20','2016-12-13 16:52:53','2016-12-27 16:52:55',3),(2,88,'全明星周末','周末班','&lt;p&gt;国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。国家新闻出版总署收录　本刊是中国学术期刊（光盘版）、中国期刊全文数据库(&lt;a href=&quot;http://baike.baidu.com/view/15874.htm&quot; target=&quot;_blank&quot;&gt;CNKI&lt;/a&gt;)、万方数据资源系统、维普资讯系统等收录期刊。&lt;/p&gt;\r\n','/Upload/photo/5853ab4acb279.jpg',0.00,NULL,1,0,'2016-12-11 14:22:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(3,88,'wesdfdsf','dsdsds','&lt;p&gt;asddsadsadsadsadsads&lt;/p&gt;\r\n','/Upload/photo/5853ac557fc6f.jpg',10000.00,NULL,1,0,'2016-12-11 14:22:20','2016-12-05 16:57:40','2016-12-20 16:57:42',0),(4,88,'sdsadsadsa','dsadsadsadsa','&lt;p&gt;dsadsadsad&lt;/p&gt;\r\n','/Upload/photo/5853ac7349fe6.png',0.00,NULL,1,0,'2016-12-11 14:22:20','2016-12-05 16:58:15','2016-12-19 16:58:16',3),(5,88,'金融投资','投机班','','/Upload/photo/5853ac7c95133.jpg',0.00,NULL,1,0,'2016-12-11 14:22:20','0000-00-00 00:00:00','0000-00-00 00:00:00',3),(78,88,'sdsdsds','dsdsd','','/Upload/photo/58573f601faad.jpg',10000.00,NULL,1,0,'2016-12-11 14:22:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(79,88,'1000','10000','','/Upload/photo/585741e3b90e6.jpg',10000.00,NULL,1,0,'2016-12-11 14:22:20','2016-12-06 10:12:42','0000-00-00 00:00:00',0),(80,88,'1111','11111','','/Upload/photo/5857428b3783b.jpg',10000.00,NULL,1,0,'2016-12-11 14:22:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(81,88,'全明星周末1','高级班','&lt;p&gt;sdsdsdsds&lt;/p&gt;\r\n','/Upload/photo/585746b26ed26.png',10000.00,NULL,1,0,'2016-12-11 14:22:20','2016-12-05 10:32:43','2016-12-06 10:32:48',0),(82,88,'全明星周末2','高级班','','/Upload/photo/5857472f26583.jpg',10000.00,NULL,1,0,'2016-12-11 14:22:20','2016-12-05 10:35:06','2016-12-12 10:35:12',3),(83,88,'群学教育','1000.','&lt;p&gt;sdsdsds&lt;/p&gt;\r\n','/Upload/photo/58574e39d7222.jpg',10000.00,NULL,1,0,'2016-12-11 14:22:20','0000-00-00 00:00:00','0000-00-00 00:00:00',3),(84,88,'好好学习','sdsdsd','&lt;p&gt;&lt;em&gt;sdsdsds&lt;/em&gt;&lt;/p&gt;\r\n','/Upload/photo/58574e58e22e5.png',100000.00,NULL,1,0,'2016-12-11 14:22:20','0000-00-00 00:00:00','0000-00-00 00:00:00',3),(85,88,'聊聊金融咨询','class001','&lt;p&gt;的撒旦撒旦&lt;/p&gt;\r\n','/Upload/photo/5853ab351a566.png',10000.00,NULL,1,0,'2016-12-11 14:22:20','2016-11-28 11:06:51','2016-12-20 11:06:54',2),(86,NULL,'李翔','打发打发','<p>是的才 水电费收费的</p>\r\n','/Upload/photo/585a34877d9be.jpg',100000.00,NULL,0,0,'2016-12-11 14:22:20','2016-12-06 15:52:17','2016-12-12 15:52:19',2),(87,NULL,'sdsds','sdsdc','<p>dsds&nbsp;</p>\r\n','/Upload/photo/5860797463b2b.jpg',10000.00,NULL,1,0,'2016-12-11 14:22:20','2016-12-19 14:41:09','2016-12-23 14:41:13',2),(88,NULL,'dsdv','sdsd','<p>sdfsdf&nbsp;</p>\r\n','/Upload/photo/586079b9e5164.jpg',10000.00,NULL,0,0,'2016-12-11 14:22:20','2016-12-06 10:01:11','2016-12-20 10:01:14',2),(89,NULL,'sdsds','dsdsd','<p>sdd sdsadsadsa</p>\r\n','/Upload/photo/586079f6590fc.jpg',10000.00,NULL,1,0,'2016-12-11 14:22:20','2016-12-06 10:02:04','2016-12-12 10:02:06',2),(90,NULL,'sds','ds','<p>sadsdsdsdsd</p>\r\n','/Upload/photo/58607a7e28aa3.jpg',1000.00,NULL,1,0,'2016-12-11 14:22:20','2016-12-20 10:04:26','2016-12-20 10:04:29',2),(91,NULL,'sdsdsd','dsdsds','<p>dsdsdsds</p>\r\n','/Upload/photo/58607c78f05e8.jpg',10000.00,NULL,0,0,'2016-12-11 14:22:20','2016-12-06 10:12:56','2016-12-13 10:12:58',2),(92,NULL,'dsdsds','dsdsd','<p>dsdsd&nbsp;</p>\r\n','/Upload/photo/58607cadc2f6c.jpg',1000.00,NULL,0,0,'2016-12-11 14:22:20','2016-12-06 10:13:50','2016-12-05 10:13:52',2);

#
# Structure for table "think_alipay_order"
#

DROP TABLE IF EXISTS `think_alipay_order`;
CREATE TABLE `think_alipay_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付宝回执单主键id',
  `product_order_sn` bigint(15) NOT NULL COMMENT '订单号',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '支付金额',
  `alipay_sn` varchar(255) NOT NULL DEFAULT '' COMMENT '阿里支付单号',
  `buyer_email` varchar(255) NOT NULL DEFAULT '' COMMENT '购买者邮箱',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `detail` text NOT NULL COMMENT '详细内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

#
# Data for table "think_alipay_order"
#

/*!40000 ALTER TABLE `think_alipay_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_alipay_order` ENABLE KEYS */;

#
# Structure for table "think_auth_group"
#

DROP TABLE IF EXISTS `think_auth_group`;
CREATE TABLE `think_auth_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text COMMENT '规则id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户组表';

#
# Data for table "think_auth_group"
#

/*!40000 ALTER TABLE `think_auth_group` DISABLE KEYS */;
INSERT INTO `think_auth_group` VALUES (1,'管理员',1,'6,96,20,1,2,3,4,5,64,145,146,147,148,149,150,21,7,8,9,10,11,12,13,14,15,16,123,124,125,19,104,105,106,107,108,118,109,110,111,112,117,126,127,133,154,159,134,135,136,128,129,137,152,153,155,138,151,156,158,139,140,130,131,141,142,143,144,137'),(2,'讲师',1,'143,144'),(3,'学员',1,NULL);
/*!40000 ALTER TABLE `think_auth_group` ENABLE KEYS */;

#
# Structure for table "think_auth_group_access"
#

DROP TABLE IF EXISTS `think_auth_group_access`;
CREATE TABLE `think_auth_group_access` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `group_id` int(11) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组明细表';

#
# Data for table "think_auth_group_access"
#

/*!40000 ALTER TABLE `think_auth_group_access` DISABLE KEYS */;
INSERT INTO `think_auth_group_access` VALUES (92,1);
/*!40000 ALTER TABLE `think_auth_group_access` ENABLE KEYS */;

#
# Structure for table "think_auth_rule"
#

DROP TABLE IF EXISTS `think_auth_rule`;
CREATE TABLE `think_auth_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 COMMENT='规则表';

#
# Data for table "think_auth_rule"
#

/*!40000 ALTER TABLE `think_auth_rule` DISABLE KEYS */;
INSERT INTO `think_auth_rule` VALUES (1,20,'Admin/ShowNav/nav','菜单管理',1,1,''),(2,1,'Admin/Nav/index','菜单列表',1,1,''),(3,1,'Admin/Nav/add','添加菜单',1,1,''),(4,1,'Admin/Nav/edit','修改菜单',1,1,''),(5,1,'Admin/Nav/delete','删除菜单',1,1,''),(6,0,'Admin/Index/index','后台首页',1,1,''),(7,21,'Admin/Rule/index','权限管理',1,1,''),(8,7,'Admin/Rule/add','添加权限',1,1,''),(9,7,'Admin/Rule/edit','修改权限',1,1,''),(10,7,'Admin/Rule/delete','删除权限',1,1,''),(11,21,'Admin/Rule/group','用户组管理',1,1,''),(12,11,'Admin/Rule/add_group','添加用户组',1,1,''),(13,11,'Admin/Rule/edit_group','修改用户组',1,1,''),(14,11,'Admin/Rule/delete_group','删除用户组',1,1,''),(15,11,'Admin/Rule/rule_group','分配权限',1,1,''),(16,11,'Admin/Rule/check_user','添加成员',1,1,''),(19,21,'Admin/Rule/admin_user_list','管理员列表',1,1,''),(20,0,'Admin/ShowNav/config','系统设置',1,1,''),(21,0,'Admin/ShowNav/rule','权限控制',1,1,''),(64,1,'Admin/Nav/order','菜单排序',1,1,''),(96,6,'Admin/Index/welcome','欢迎界面',1,1,''),(104,0,'Admin/ShowNav/posts','文章管理',1,1,''),(105,104,'Admin/Posts/index','文章列表',1,1,''),(106,105,'Admin/Posts/add_posts','添加文章',1,1,''),(107,105,'Admin/Posts/edit_posts','修改文章',1,1,''),(108,105,'Admin/Posts/delete_posts','删除文章',1,1,''),(109,104,'Admin/Posts/category_list','分类列表',1,1,''),(110,109,'Admin/Posts/add_category','添加分类',1,1,''),(111,109,'Admin/Posts/edit_category','修改分类',1,1,''),(112,109,'Admin/Posts/delete_category','删除分类',1,1,''),(117,109,'Admin/Posts/order_category','分类排序',1,1,''),(118,105,'Admin/Posts/order_posts','文章排序',1,1,''),(123,11,'Admin/Rule/add_user_to_group','设置为管理员',1,1,''),(124,11,'Admin/Rule/add_admin','添加管理员',1,1,''),(125,11,'Admin/Rule/edit_admin','修改管理员',1,1,''),(126,0,'','首页',1,1,''),(127,0,'Admin/peixun/guanli','培训管理',1,1,''),(128,0,'Admin/Nav/send','消息通知',1,1,''),(129,0,'Admin/Nav/ziyuan','资源管理',1,1,''),(130,0,'Admin/Rule/gongyishang','供应商管理',1,1,''),(131,0,'Admin/Nav/shenhe','审核任务',1,1,''),(133,127,'Admin/Manage/index','培训项目',1,1,''),(134,127,'Admin/peixun/kecheng','我的课程',1,1,''),(135,127,'Admin/peixun/kaoshi','我的考试',1,1,''),(136,127,'Admin/peixun/diaoyan','我的调研',1,1,''),(137,129,'Admin/ziyuan/kecheng','课程管理',1,1,''),(138,129,'Admin/Lecturer/pagelist','讲师管理',1,1,''),(139,129,'Admin/ziyuan/shijuan','试卷管理',1,1,''),(140,129,'Admin/ziyuan/wenjuan','问卷管理',1,1,''),(141,131,'Admin/shenhe/xiangmu','培训项目审核',1,1,''),(142,131,'Admin/shenhe/kecheng','课程审核',1,1,''),(143,131,'Admin/shenhe/kaoshi','考试审核',1,1,''),(144,131,'Admin/shenhe/wenjuan','问卷审核',1,1,''),(145,20,'Admin/shezhi/zuzhi','组织架构',1,1,''),(146,20,'Admin/AuditUsers/jobsmanage','岗位管理',1,1,''),(147,20,'Admin/AuditUsers/registration','注册审核',1,1,''),(148,20,'Admin/shezhi/zixun','资讯',1,1,''),(149,20,'Admin/shezhi/xuefen','学分',1,1,''),(150,20,'Admin/shezhi/chushihua','初始化设置',1,1,''),(151,138,'Admin/Rule/indexsss','上传试卷',1,1,''),(152,137,'Admin/Course/courseAdd','课程增加',1,1,''),(153,137,'Admin/Course/edit','课程编辑',1,1,''),(154,133,'Admin/Manges/creates','新建培训项目',1,1,''),(155,137,'Admin/Course/upload','上传图片',1,1,''),(156,138,'Admin/Lecturer/add','添加讲师',1,1,''),(158,138,'Admin/Lecturer/edit','编辑讲师',1,1,''),(159,133,'Admin/Manage/zhiding','培训管理',1,1,''),(163,137,'Admin/Course/index','我的课程',1,1,'');
/*!40000 ALTER TABLE `think_auth_rule` ENABLE KEYS */;

#
# Structure for table "think_course"
#

DROP TABLE IF EXISTS `think_course`;
CREATE TABLE `think_course` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `course_name` varchar(50) NOT NULL COMMENT '课程名',
  `course_code` varchar(20) NOT NULL DEFAULT '' COMMENT '课程编码',
  `course_time` int(10) unsigned NOT NULL COMMENT '课程时长',
  `course_cat_id` int(10) unsigned NOT NULL COMMENT '分类',
  `lecturer` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '讲师ＩＤ',
  `course_way` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '授课方式:0在线，1面授',
  `media_src` varchar(255) NOT NULL COMMENT '媒体地址',
  `maker` varchar(50) NOT NULL COMMENT '制作人',
  `chapter` varchar(255) NOT NULL DEFAULT '' COMMENT '章节',
  `course_cover` varchar(255) NOT NULL DEFAULT '0' COMMENT '课程封面',
  `credit` tinyint(2) unsigned NOT NULL COMMENT '学分',
  `auditing` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否启用:0表示禁用,1表示启用',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0表示待审核，1表示已通过，2表示已拒绝',
  `is_public` tinyint(1) DEFAULT '0' COMMENT '0表示不公开，1表示公开',
  `click_count` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `start_time` datetime DEFAULT NULL COMMENT '面授课程开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '面授结束时间',
  `location` varchar(30) DEFAULT NULL COMMENT '面授地点',
  `restrictions` char(30) DEFAULT '0' COMMENT '限制人数',
  `course_description` text NOT NULL COMMENT '课程描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "think_course"
#

/*!40000 ALTER TABLE `think_course` DISABLE KEYS */;
INSERT INTO `think_course` VALUES (1,'建筑','12345',120,1,14,1,'www.baidu.com','88','','/Upload/photo/5853ab351a566.png',12,1,1482129486,0,1,1,1,'2016-12-21 11:07:46','2016-12-29 11:07:54','桑达科技大厦','10',''),(2,'建筑工程','1234',120,1,14,1,'www.baidu.com','88','','/Upload/photo/5853ab351a566.png',5,1,1482129486,0,1,1,2,'2016-12-23 11:08:01','2016-12-31 11:08:11','桑达科技大厦','10',''),(3,'建筑','1234',120,1,2,1,'www.baidu.com','88','','/Upload/photo/5853ab351a566.png',0,1,1482129486,0,1,0,10,'2016-12-26 11:08:15','2017-03-23 11:08:20','桑达科技大厦','10',''),(4,'建筑工程','12345',120,1,2,1,'www.baidu.com','88','','/Upload/photo/5853ab351a566.png',12,1,1482129486,0,1,0,20,NULL,NULL,'桑达科技大厦','10',''),(6,'建筑工程','1234',120,1,14,1,'www.baidu.com','88','','/Upload/photo/5853ab351a566.png',5,1,1482129486,0,0,1,30,NULL,NULL,'桑达科技大厦','10',''),(7,'建筑工程','1234',120,1,14,1,'www.baidu.com','88','','/Upload/photo/5853ab351a566.png',5,1,1482129486,0,0,1,10,NULL,NULL,'桑达科技大厦','10',''),(8,'建筑工程','１２３４',60,1,14,1,'123','88','','/Upload/photo/5853ab351a566.png',12,1,1482129486,0,0,0,10,NULL,NULL,'桑达科技大厦','100',''),(9,'高等数学','１２３４',60,1,14,1,'123','88','','/Upload/photo/5853ab351a566.png',12,1,1482129486,0,0,0,20,NULL,NULL,'桑达科技大厦','100',''),(10,'高等数学','１２３４',80,1,14,1,'123','88','','/Upload/photo/5853ab351a566.png',12,1,1482129486,0,0,0,0,NULL,NULL,'桑达科技大厦','10',''),(11,'高等数学1aa','5',90,1,14,1,'123','88','','/Upload/photo/5853ab351a566.png',12,1,1482823265,0,1,1,0,NULL,NULL,'桑达科技大厦','10',''),(12,'高等数学a','5',45,1,14,1,'http://www.baiud.com','88','','/Upload/photo/5853ab351a566.png',12,0,1482129486,0,0,0,0,NULL,NULL,'桑达科技大厦','10',''),(13,'高等数学1b','5',120,1,14,1,'','88','','/Upload/photo/5853ab351a566.png',0,0,1482129486,0,2,0,0,NULL,NULL,'桑达科技大厦','10',''),(14,'语文3','12345',120,1,14,1,'','','','/Upload/photo/5853ab351a566.png',0,0,1482129486,0,2,0,0,NULL,NULL,'桑达科技大厦','10','');
/*!40000 ALTER TABLE `think_course` ENABLE KEYS */;

#
# Structure for table "think_course_article"
#

DROP TABLE IF EXISTS `think_course_article`;
CREATE TABLE `think_course_article` (
  `id` int(60) NOT NULL DEFAULT '0',
  `course_id` int(60) NOT NULL,
  `sort` tinyint(10) NOT NULL,
  `title` char(30) NOT NULL,
  `contents` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示pdf,1表示wps,2表示PPT，3表示excle, 4表示视频',
  `ico` varchar(20) NOT NULL COMMENT '图标',
  `save_name` varchar(60) DEFAULT NULL COMMENT '保存文件名',
  `true_name` varchar(60) DEFAULT NULL COMMENT '文件原名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "think_course_article"
#

INSERT INTO `think_course_article` VALUES (1,1,1,'基础语文教育','1、 基础知识回顾：23个声母、24个韵母、16个整体认读音节。\r\n　　2、 声调：分为四声。标调歌：“有a 不放过，无a 找o、e ,i、u 并列标在后”\r\n　　3、 音节：音节是声母、韵母和声调的组合。\r\n　　(1)当韵母“u”和声母“j、q、x、y”相拼时，去掉“u”头上的两点，如“ju”。\r\n　　(2)人或事物等专用名词的拼音，第一个字母大写，如“北京 Beijing”\r\n　　4、 隔音符号：当a、o、e 开头的音节连接在其他音节后面，读音易发生混淆时，应在第一个音节后面加上隔音符号，用“’”表示，帮助分清两个音节。\r\n　　如“ping’an（平安）”、“qi’e（企鹅）”。\r\n　　二、汉字\r\n　　1、笔画与笔顺规则\r\n　　“先横后竖（十），先撇后捺（八），从上到下（景），从左到右（树），从外到内（同），从内到外（函），先里面后封口（国），先中间后两边（水）。”\r\n　　2、偏旁部首和间架结构（7种结构）\r\n　　独体字（中）、左右结构（秋）、左中右结构（做）、上下结构（恩）、上中下结构（翼）、全包围和半包围结构（园、区）、品字形结构（晶）\r\n　　3、 无声的老师——字典（3种查字方法）\r\n　　（1）“音序查字法”的步骤：认准字音；定字母、翻索引；查音节、找汉字。\r\n　　（2）“部首查字法”的步骤：定部首、翻索引；数余画；查汉字。\r\n　　部首查字法的规则：上下都有，取上不去下；\r\n　　左右都有，取左不取右；\r\n　　内外都有，取外不取内。\r\n　　独体字一般将字的第一画作为其部首。\r\n　　（3）“数笔画查字法”的步骤：数准笔画数；翻索引、查‘难检字索引’；找汉字。\r\n　　4、形近字（8种表现形式）——理解记忆法、口诀记忆法\r\n　　（1）笔画相同而位置不同“由”和“甲”\r\n　　(2)字形相似但笔形不同“外”和“处”\r\n　　（3）字形相似但偏旁不同“晴”和“睛”\r\n　　（4）字形相似但笔画数量不同“今”和“令”\r\n　　（5）结构单位相同但位置不同“陪”和“部”\r\n　　（6）形近音相同“很”和“狠”\r\n　　（7）形近音相近“清”和“情”\r\n　　（8）形近音不同“贫”和“贪”\r\n　　5、多音字：字形相同，读音不同。如“塞”、“露”、“咽”。\r\n　　同音字：音同形不同。如“燥”和“躁”。\r\n　　6、多义字：有两种或两种以上意思的字。\r\n　　如：“张”(1)展开（2）看、望（3）陈设（4）姓\r\n　　三、词语\r\n　　实词：名词（木）、动词（跑）、形容词（美丽）、数词（一）、量词（位）、代词（你、我、他们）\r\n　　1、词性划分','http://www.wsview.com/yzplayerAction!play2.action?autoPlay=false&userVideoID=119208&iframe=iframe',1,'movie-o','lianjie.doc','yuwen.doc'),(2,1,2,'中学语文教育','古代汉语、现代汉语、文学概论、中国现当代文学、教育原理、教育心理学、中小学语文教材教法、中小学语文教学研究、现代教育技术、写作、中小学语文教学实习、毕业实习等，以及各校的主要特色课程和实践环节。','http://www.wsview.com/yzplayerAction!play2.action?autoPlay=false&userVideoID=119208&iframe=iframe',2,'movie-o','lianjie.doc','yuwen.doc'),(3,1,3,'大学语文教育','古代汉语、现代汉语、文学概论、中国现当代文学、教育原理、教育心理学、中小学语文教材教法、中小学语文教学研究、现代教育技术、写作、中小学语文教学实习、毕业实习等，以及各校的主要特色课程和实践环节。','http://www.wsview.com/yzplayerAction!play2.action?autoPlay=false&userVideoID=119208&iframe=iframe',3,'movie-o','lianjie.doc','lianjie.doc'),(4,3,4,'终极语文教育','古代汉语、现代汉语、文学概论、中国现当代文学、教育原理、教育心理学、中小学语文教材教法、中小学语文教学研究、现代教育技术、写作、中小学语文教学实习、毕业实习等，以及各校的主要特色课程和实践环节。','http://www.wsview.com/yzplayerAction!play2.action?autoPlay=false&userVideoID=119208&iframe=iframe',1,'movie-o','lianjie.doc','lianjie.doc'),(5,3,1,'大学语文教育','古代汉语、现代汉语、文学概论、中国现当代文学、教育原理、教育心理学、中小学语文教材教法、中小学语文教学研究、现代教育技术、写作、中小学语文教学实习、毕业实习等，以及各校的主要特色课程和实践环节。','http://www.wsview.com/yzplayerAction!play2.action?autoPlay=false&userVideoID=119208&iframe=iframe',2,'movie-o','lianjie.doc','lianjie.doc'),(6,3,2,'大学语文教育','古代汉语、现代汉语、文学概论、中国现当代文学、教育原理、教育心理学、中小学语文教材教法、中小学语文教学研究、现代教育技术、写作、中小学语文教学实习、毕业实习等，以及各校的主要特色课程和实践环节。','http://www.wsview.com/yzplayerAction!play2.action?autoPlay=false&userVideoID=119208&iframe=iframe',2,'word-o','lianjie.doc','lianjie.xlsx'),(7,3,3,'大学语文教育','古代汉语、现代汉语、文学概论、中国现当代文学、教育原理、教育心理学、中小学语文教材教法、中小学语文教学研究、现代教育技术、写作、中小学语文教学实习、毕业实习等，以及各校的主要特色课程和实践环节。','http://www.wsview.com/yzplayerAction!play2.action?autoPlay=false&userVideoID=119208&iframe=iframe',3,'pdf-o','lianjie.doc','lianjie.doc'),(8,3,4,'大学语文教育','古代汉语、现代汉语、文学概论、中国现当代文学、教育原理、教育心理学、中小学语文教材教法、中小学语文教学研究、现代教育技术、写作、中小学语文教学实习、毕业实习等，以及各校的主要特色课程和实践环节。','www.baidu.com',4,'powerpoint-o','lianjie.doc','lianjie.doc');

#
# Structure for table "think_course_category"
#

DROP TABLE IF EXISTS `think_course_category`;
CREATE TABLE `think_course_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ＩＤ',
  `pid` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000' COMMENT '父类id',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `cat_name` varchar(50) DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='课程分类';

#
# Data for table "think_course_category"
#

/*!40000 ALTER TABLE `think_course_category` DISABLE KEYS */;
INSERT INTO `think_course_category` VALUES (1,0000000000,1,'新闻'),(2,0000000000,2,'资讯'),(3,0000000001,0,'国内新闻'),(5,0000000001,0,'国际新闻'),(6,0000000003,0,'深圳新闻'),(7,0000000003,0,'广州新闻'),(8,0000000002,0,'国际资讯'),(9,0000000002,0,'国内资讯'),(10,0000000008,0,'资讯');
/*!40000 ALTER TABLE `think_course_category` ENABLE KEYS */;

#
# Structure for table "think_course_comment"
#

DROP TABLE IF EXISTS `think_course_comment`;
CREATE TABLE `think_course_comment` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `uid` int(60) NOT NULL COMMENT '学员ID',
  `course_id` int(60) NOT NULL COMMENT '课程ID',
  `student_evaluation` tinyint(1) NOT NULL DEFAULT '0' COMMENT '学员评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "think_course_comment"
#

INSERT INTO `think_course_comment` VALUES (1,88,1,2),(2,88,3,2);

#
# Structure for table "think_course_detail"
#

DROP TABLE IF EXISTS `think_course_detail`;
CREATE TABLE `think_course_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '课程ＩＤ',
  `course_intro` text COMMENT '课程介绍',
  `course_aim` text COMMENT '课程目标',
  `course_summary` text COMMENT '课程概要',
  `course_outline` text COMMENT '课程大纲',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

#
# Data for table "think_course_detail"
#

/*!40000 ALTER TABLE `think_course_detail` DISABLE KEYS */;
INSERT INTO `think_course_detail` VALUES (1,'大学语文课主要以古今中外最优秀的文学作品为载体，以汉民族最优美精炼的语言为媒介，通过对特定时代的社会生活场景和自然生态环境描写，并通过对真实人物事件的记载或塑造出的生动感人的艺术形象，把古今的贤哲英雄和杰出的诗人作家的深邃睿智的思想，崇高美好的节操，独树一帜的艺术才华，呈现给我们的后人，使之引为楷模，陶冶情操，具备分辨真善美、假恶丑的能力，并且继承前人宝贵的思想精神遗产，努力修养自己的道德情操。','现代社会要求公民具备良好的人文素养和科学素养，具备创新精神、合作意识和开放的视野，具备包括阅读理解与表达交流在内的多方面的基本能力，以及运用现代技术搜集和处理信息的能力。语文教育应该而且能够为造就现代社会所需的一代新人发挥重要作用。面对社会发展的需要，语文教育必须在课程目标和内容、教学观念和学习方式、评价目的和方法等方面进行系统的改革。','&lt;p&gt;我是超人&lt;/p&gt;\r\n怀着崇敬的心情踏入桂子山，欣喜的看到我们的大学还有语文课。这对我们理科生很有意义，语文课让我们在困顿的推理计算中解放出来，在一遍一遍的化学实验中解放出来。感受语言魅力，拥抱文字温暖。语文书是我从书架上取下来最多的一本书，特别是其中的小说，每一篇我都从头到尾看了不下五遍.还有诗词曲赋，他们融绘画美、音乐美于一身。清晨踏着第一抹阳光，到电影场朗读诗词是一种不可言传的精神享受。','大学语文课主要以古今中外最优秀的文学作品为载体，以汉民族最优美精炼的语言为媒介，通过对特定时代的社会生活场景和自然生态环境描写，并通过对真实人物事件的记载或塑造出的生动感人的艺术形象，把古今的贤哲英雄和杰出的诗人作家的深邃睿智的思想，崇高美好的节操，独树一帜的艺术才华，呈现给我们的后人，使之引为楷模，陶冶情操，具备分辨真善美、假恶丑的能力，并且继承前人宝贵的思想精神遗产，努力修养自己的道德情操。'),(2,'好好学习','&lt;p&gt;天天向上&lt;/p&gt;\r\n','&lt;p&gt;努力努力更努力&lt;/p&gt;\r\n',NULL),(3,'好好学习怎么计算','&lt;p&gt;做一个有头脑的人&lt;/p&gt;\r\n','&lt;p&gt;一个有用的有&lt;/p&gt;\r\n','大学语文课主要以古今中外最优秀的文学作品为载体，以汉民族最优美精炼的语言为媒介，通过对特定时代的社会生活场景和自然生态环境描写，并通过对真实人物事件的记载或塑造出的生动感人的艺术形象，把古今的贤哲英雄和杰出的诗人作家的深邃睿智的思想，崇高美好的节操，独树一帜的艺术才华，呈现给我们的后人，使之引为楷模，陶冶情操，具备分辨真善美、假恶丑的能力，并且继承前人宝贵的思想精神遗产，努力修养自己的道德情操。'),(4,'好好学习','&lt;p&gt;好好计算&lt;/p&gt;\r\n','&lt;p&gt;好好算计&lt;/p&gt;\r\n',NULL),(5,'价绍','&lt;p&gt;１２１２３４4&lt;/p&gt;\r\n','&lt;p&gt;人工有工&lt;/p&gt;\r\n',NULL),(6,'好好学习','&lt;p&gt;天天向上&lt;/p&gt;\r\n','&lt;p&gt;努力努力更努力&lt;/p&gt;\r\n',NULL),(7,'好好学习','&lt;p&gt;天天向上&lt;/p&gt;\r\n','&lt;p&gt;努力努力更努力&lt;/p&gt;\r\n',NULL),(8,'价绍','&lt;p&gt;１２１２３４&lt;/p&gt;\r\n','&lt;p&gt;人工有工&lt;/p&gt;\r\n',NULL),(9,'价绍','&lt;p&gt;１２１２３４&lt;/p&gt;\r\n','&lt;p&gt;人工有工&lt;/p&gt;\r\n',NULL),(10,'价绍','&lt;p&gt;１２１２３４&lt;/p&gt;\r\n','&lt;p&gt;人工有工&lt;/p&gt;\r\n',NULL),(11,'价绍','&lt;p&gt;１２１２３４&lt;/p&gt;\r\n','&lt;p&gt;人工有工&lt;/p&gt;\r\n',NULL),(12,'价绍','&lt;p&gt;１２１２３４3&lt;/p&gt;\r\n','&lt;p&gt;人工有工&lt;/p&gt;\r\n',NULL),(13,'价绍','&lt;p&gt;１２１２３４&lt;/p&gt;\r\n','&lt;p&gt;人工有工&lt;/p&gt;\r\n',NULL),(14,'','','',NULL),(15,'','','',NULL),(16,'','','',NULL),(17,'','','',NULL),(18,'','','',NULL),(19,'','','',NULL),(20,'','','',NULL),(21,'','','',NULL),(22,'','','',NULL),(23,'好好学习','&lt;p&gt;天天向上&lt;/p&gt;\r\n','&lt;p&gt;好好学习咯&lt;/p&gt;\r\n',NULL),(24,'好好学习　天天向上','&lt;p&gt;学好数理化&lt;/p&gt;\r\n','&lt;p&gt;走遍天下都不怕&lt;/p&gt;\r\n',NULL);
/*!40000 ALTER TABLE `think_course_detail` ENABLE KEYS */;

#
# Structure for table "think_course_record"
#

DROP TABLE IF EXISTS `think_course_record`;
CREATE TABLE `think_course_record` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `course_id` int(30) NOT NULL COMMENT '课程ID',
  `recently_lookup_time` tinyint(10) NOT NULL DEFAULT '0' COMMENT '最近预览时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "think_course_record"
#

INSERT INTO `think_course_record` VALUES (1,88,1,10);

#
# Structure for table "think_examination"
#

DROP TABLE IF EXISTS `think_examination`;
CREATE TABLE `think_examination` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(100) NOT NULL COMMENT '试卷名称',
  `test_cat_id` smallint(30) NOT NULL COMMENT '试卷分类',
  `test_score` tinyint(6) NOT NULL DEFAULT '0' COMMENT '试卷分值',
  `test_heir` varchar(60) DEFAULT NULL COMMENT '上传人',
  `test_upload_time` datetime NOT NULL COMMENT '上传时间',
  `status` tinyint(1) NOT NULL COMMENT '0表示待审核，1表示已通过，3表示已拒绝',
  `is_available` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用，0表示禁用，1表示启用',
  `principal` varchar(60) DEFAULT NULL COMMENT '负责人',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `test_mode` tinyint(1) DEFAULT NULL COMMENT '考试方式0表示线下，1表示线上',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "think_examination"
#

INSERT INTO `think_examination` VALUES (1,'试卷名字金融服务礼仪',1,100,'光头强','2016-12-27 14:21:35',1,1,'大熊','2016-12-11 14:22:20',1,'2017-01-07 14:23:39'),(2,'金融理财常识',1,100,'大头儿子','2016-12-27 14:21:35',1,1,'小头爸爸','2016-12-11 14:22:20',1,'2017-01-07 14:23:39'),(3,'试卷名字金融服务礼仪',1,100,'光头强','2016-12-20 16:36:54',1,1,'小头爸爸','2016-12-22 16:36:08',0,'0000-00-00 00:00:00'),(4,'金融理财常识是的撒',1,100,'光头强','0000-00-00 00:00:00',1,1,'小头爸爸','2016-12-20 16:37:15',1,'2016-12-30 16:37:21');

#
# Structure for table "think_examination_category"
#

DROP TABLE IF EXISTS `think_examination_category`;
CREATE TABLE `think_examination_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `sort` int(10) NOT NULL DEFAULT '1' COMMENT '排序',
  `cat_name` varchar(50) NOT NULL DEFAULT '' COMMENT '栏目名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "think_examination_category"
#

INSERT INTO `think_examination_category` VALUES (1,0,1,'金融在线教育'),(2,0,1,'跨境电商融资'),(3,0,1,'银行在线金融教育'),(4,0,2,'贷款行业在线金融教育'),(5,0,1,'国内跨境电商融资'),(6,0,2,'国际跨境电商融资');

#
# Structure for table "think_jobs_manage"
#

DROP TABLE IF EXISTS `think_jobs_manage`;
CREATE TABLE `think_jobs_manage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '岗位管理',
  `name` varchar(120) DEFAULT NULL COMMENT '岗位名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

#
# Data for table "think_jobs_manage"
#

INSERT INTO `think_jobs_manage` VALUES (16,'3333'),(17,'4444'),(18,'5555'),(23,'00000'),(24,'1001010010'),(30,'777'),(31,'222'),(32,'333'),(33,'555'),(34,'444'),(35,'222');

#
# Structure for table "think_lecturer"
#

DROP TABLE IF EXISTS `think_lecturer`;
CREATE TABLE `think_lecturer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `resource` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT '讲师的添加者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "think_lecturer"
#

INSERT INTO `think_lecturer` VALUES (1,'讲师小明',NULL,'小明',23,1,NULL,15,20000.00,NULL,NULL,'深圳南山区','&lt;p&gt;是一个好讲师&lt;/p&gt;\r\n','',NULL,NULL,NULL,88),(2,'小白',NULL,'小白集团',23,1,NULL,12,123.00,NULL,NULL,'深圳','&lt;p&gt;好好学习&lt;/p&gt;\r\n','20161214/5850c3140bf0e.png',NULL,NULL,NULL,88),(4,'讲师小明',NULL,'小明1',23,1,NULL,15,20000.00,NULL,NULL,'深圳南山区','&lt;p&gt;是一个好讲师&lt;/p&gt;\r\n','20161214/5850e2fe91527.png',NULL,NULL,NULL,88),(5,'讲师小明',NULL,'小明',23,1,NULL,15,20000.00,NULL,NULL,'深圳南山区','&lt;p&gt;是一个好讲师&lt;/p&gt;\r\n','',NULL,NULL,NULL,88),(6,'讲师小明',NULL,'小明',23,1,NULL,15,20000.00,NULL,NULL,'深圳南山区','&lt;p&gt;是一个好讲师&lt;/p&gt;\r\n','',NULL,NULL,NULL,88),(7,'admin',88,'１２',23,0,NULL,0,10000.00,NULL,NULL,'深圳','&lt;p&gt;１２３&lt;/p&gt;\r\n','20161214/5850fd1c993ca.png',NULL,NULL,NULL,88),(9,'admin',88,'外部',23,0,NULL,10,2000.00,NULL,NULL,'湖南','&lt;p&gt;哈哈&lt;/p&gt;\r\n','20161215/58524a4b79100.png',NULL,NULL,NULL,88),(10,'admin',89,'哈哈',12,0,NULL,23,12.00,NULL,NULL,'湖南','&lt;p&gt;123&lt;/p&gt;\r\n','',NULL,NULL,NULL,88),(11,'admin',88,'哈哈',12,0,NULL,23,12.00,NULL,NULL,'湖南','&lt;p&gt;123&lt;/p&gt;\r\n','[]',NULL,NULL,NULL,88),(12,'admin',88,'',23,0,NULL,50,8000.00,NULL,NULL,'深圳','&lt;p&gt;大冲&lt;/p&gt;\r\n','',NULL,NULL,NULL,88),(13,'小明',0,'供应商',23,1,NULL,10,2000.00,NULL,NULL,'深圳','&lt;p&gt;好好学习　天天向上&lt;/p&gt;\r\n','[{&quot;src&quot;:&quot;20161219/585789da13892.png&quot;},{&quot;src&quot;:&quot;20161220/5858d95f6dde2.png&quot;}]',NULL,NULL,NULL,88),(14,'admin',88,'',23,0,NULL,20,20000.00,NULL,NULL,'深圳','&lt;p&gt;好好先生&lt;/p&gt;\r\n','[{&quot;src&quot;:&quot;20161220/5858e896ea16c.png&quot;}]',NULL,NULL,NULL,88),(15,'admin',88,'小白',23,0,NULL,12,2000.00,NULL,NULL,'深圳','&lt;p&gt;123&lt;/p&gt;\r\n','[{&quot;src&quot;:&quot;20161220/5858e9751a026.png&quot;}]',NULL,NULL,NULL,88),(16,'柔柔弱弱若',0,'柔柔弱弱若',33,1,NULL,33,333.00,NULL,NULL,'让人','<p>333</p>\r\n','333',NULL,NULL,NULL,91);

#
# Structure for table "think_lecturer_comment"
#

DROP TABLE IF EXISTS `think_lecturer_comment`;
CREATE TABLE `think_lecturer_comment` (
  `id` smallint(60) NOT NULL AUTO_INCREMENT,
  `lecturer_id` smallint(60) NOT NULL COMMENT '讲师ID',
  `uid` smallint(60) NOT NULL COMMENT '学员ID',
  `lecturer_evaluation` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "think_lecturer_comment"
#

INSERT INTO `think_lecturer_comment` VALUES (1,14,88,2);

#
# Structure for table "think_news"
#

DROP TABLE IF EXISTS `think_news`;
CREATE TABLE `think_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `create_time` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

#
# Data for table "think_news"
#

/*!40000 ALTER TABLE `think_news` DISABLE KEYS */;
INSERT INTO `think_news` VALUES (8,'咨询','&lt;p&gt;谢谢&lt;/p&gt;\r\n',1482129486,88);
/*!40000 ALTER TABLE `think_news` ENABLE KEYS */;

#
# Structure for table "think_oauth_user"
#

DROP TABLE IF EXISTS `think_oauth_user`;
CREATE TABLE `think_oauth_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联的本站用户id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型 1：融云   2：友盟',
  `nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '第三方昵称',
  `head_img` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `access_token` varchar(255) NOT NULL DEFAULT '' COMMENT 'access_token token',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8;

#
# Data for table "think_oauth_user"
#

INSERT INTO `think_oauth_user` VALUES (671,88,2,'白俊遥','','','k2232R1tBYJ232XJQelszNuV2tlzgsdj9m8A6JtRJXMtM2tfOffQP3U0qNG5zL2qnw9Envm4TqeJtIbMjwAZYMaLjnXw==',1457693930,1457693930),(682,88,1,'admin','http://bjyadmin.com/Upload/avatar/user1.jpg','','U8IQ2WNHEO2GWUI5DBKrdSQmKe0yMO+J4U8bCkk5sypUTfI76qou2KKL6uzeqp+0KfzWsqxlwp+yjyGI3e3g6w==',1469453417,1469453417);

#
# Structure for table "think_order"
#

DROP TABLE IF EXISTS `think_order`;
CREATE TABLE `think_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单主键',
  `order_sn` int(11) unsigned NOT NULL COMMENT '订单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "think_order"
#


#
# Structure for table "think_province_city_area"
#

DROP TABLE IF EXISTS `think_province_city_area`;
CREATE TABLE `think_province_city_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(25) NOT NULL DEFAULT '' COMMENT '城市名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3511 DEFAULT CHARSET=utf8;

#
# Data for table "think_province_city_area"
#

/*!40000 ALTER TABLE `think_province_city_area` DISABLE KEYS */;
INSERT INTO `think_province_city_area` VALUES (1,0,'北京'),(2,1,'北京市辖'),(3,2,'东城区'),(4,2,'西城区'),(5,2,'崇文区'),(6,2,'宣武区'),(7,2,'朝阳区'),(8,2,'丰台区'),(9,2,'石景山区'),(10,2,'海淀区'),(11,2,'门头沟区'),(12,2,'房山区'),(13,2,'通州区'),(14,2,'顺义区'),(15,2,'昌平区'),(16,1,'北京县辖'),(17,16,'大兴县'),(18,16,'平谷县'),(19,16,'怀柔县'),(20,16,'密云县'),(21,16,'延庆县'),(22,0,'天津'),(23,22,'天津市辖'),(24,23,'和平区'),(25,23,'河东区'),(26,23,'河西区'),(27,23,'南开区'),(28,23,'河北区'),(29,23,'红桥区'),(30,23,'塘沽区'),(31,23,'汉沽区'),(32,23,'大港区'),(33,23,'东丽区'),(34,23,'西青区'),(35,23,'津南区'),(36,23,'北辰区'),(37,23,'武清区'),(38,22,'天津县辖'),(39,38,'宁河县'),(40,38,'静海县'),(41,38,'宝坻县'),(42,38,'蓟  县'),(43,0,'河北'),(44,43,'石家庄'),(45,44,'市辖区'),(46,44,'长安区'),(47,44,'桥东区'),(48,44,'桥西区'),(49,44,'新华区'),(50,44,'郊  区'),(51,44,'井陉矿区'),(52,44,'井陉县'),(53,44,'正定县'),(54,44,'栾城县'),(55,44,'行唐县'),(56,44,'灵寿县'),(57,44,'高邑县'),(58,44,'深泽县'),(59,44,'赞皇县'),(60,44,'无极县'),(61,44,'平山县'),(62,44,'元氏县'),(63,44,'赵  县'),(64,44,'辛集市'),(65,44,'藁城市'),(66,44,'晋州市'),(67,44,'新乐市'),(68,44,'鹿泉市'),(69,43,'唐山'),(70,69,'市辖区'),(71,69,'路南区'),(72,69,'路北区'),(73,69,'古冶区'),(74,69,'开平区'),(75,69,'新  区'),(76,69,'丰润县'),(77,69,'滦  县'),(78,69,'滦南县'),(79,69,'乐亭县'),(80,69,'迁西县'),(81,69,'玉田县'),(82,69,'唐海县'),(83,69,'遵化市'),(84,69,'丰南市'),(85,69,'迁安市'),(86,43,'秦皇岛'),(87,86,'市辖区'),(88,86,'海港区'),(89,86,'山海关区'),(90,86,'北戴河区'),(91,86,'青龙满族自治县'),(92,86,'昌黎县'),(93,86,'抚宁县'),(94,86,'卢龙县'),(95,43,'邯郸'),(96,95,'市辖区'),(97,95,'邯山区'),(98,95,'丛台区'),(99,95,'复兴区'),(100,95,'峰峰矿区'),(101,95,'邯郸县'),(102,95,'临漳县'),(103,95,'成安县'),(104,95,'大名县'),(105,95,'涉  县'),(106,95,'磁  县'),(107,95,'肥乡县'),(108,95,'永年县'),(109,95,'邱  县'),(110,95,'鸡泽县'),(111,95,'广平县'),(112,95,'馆陶县'),(113,95,'魏  县'),(114,95,'曲周县'),(115,95,'武安市'),(116,43,'邢台'),(117,116,'市辖区'),(118,116,'桥东区'),(119,116,'桥西区'),(120,116,'邢台县'),(121,116,'临城县'),(122,116,'内丘县'),(123,116,'柏乡县'),(124,116,'隆尧县'),(125,116,'任  县'),(126,116,'南和县'),(127,116,'宁晋县'),(128,116,'巨鹿县'),(129,116,'新河县'),(130,116,'广宗县'),(131,116,'平乡县'),(132,116,'威  县'),(133,116,'清河县'),(134,116,'临西县'),(135,116,'南宫市'),(136,116,'沙河市'),(137,43,'保定'),(138,137,'市辖区'),(139,137,'新市区'),(140,137,'北市区'),(141,137,'南市区'),(142,137,'满城县'),(143,137,'清苑县'),(144,137,'涞水县'),(145,137,'阜平县'),(146,137,'徐水县'),(147,137,'定兴县'),(148,137,'唐  县'),(149,137,'高阳县'),(150,137,'容城县'),(151,137,'涞源县'),(152,137,'望都县'),(153,137,'安新县'),(154,137,'易  县'),(155,137,'曲阳县'),(156,137,'蠡  县'),(157,137,'顺平县'),(158,137,'博野县'),(159,137,'雄  县'),(160,137,'涿州市'),(161,137,'定州市'),(162,137,'安国市'),(163,137,'高碑店市'),(164,43,'张家口'),(165,164,'市辖区'),(166,164,'桥东区'),(167,164,'桥西区'),(168,164,'宣化区'),(169,164,'下花园区'),(170,164,'宣化县'),(171,164,'张北县'),(172,164,'康保县'),(173,164,'沽源县'),(174,164,'尚义县'),(175,164,'蔚  县'),(176,164,'阳原县'),(177,164,'怀安县'),(178,164,'万全县'),(179,164,'怀来县'),(180,164,'涿鹿县'),(181,164,'赤城县'),(182,164,'崇礼县'),(183,43,'承德'),(184,183,'市辖区'),(185,183,'双桥区'),(186,183,'双滦区'),(187,183,'鹰手营子矿区'),(188,183,'承德县'),(189,183,'兴隆县'),(190,183,'平泉县'),(191,183,'滦平县'),(192,183,'隆化县'),(193,183,'丰宁满族自治县'),(194,183,'宽城满族自治县'),(196,43,'沧州'),(197,196,'市辖区'),(198,196,'新华区'),(199,196,'运河区'),(200,196,'沧  县'),(201,196,'青  县'),(202,196,'东光县'),(203,196,'海兴县'),(204,196,'盐山县'),(205,196,'肃宁县'),(206,196,'南皮县'),(207,196,'吴桥县'),(208,196,'献  县'),(209,196,'孟村回族自治县'),(210,196,'泊头市'),(211,196,'任丘市'),(212,196,'黄骅市'),(213,196,'河间市'),(214,43,'廊坊'),(215,214,'市辖区'),(216,214,'安次区'),(217,214,'廊坊市广阳区'),(218,214,'固安县'),(219,214,'永清县'),(220,214,'香河县'),(221,214,'大城县'),(222,214,'文安县'),(223,214,'大厂回族自治县'),(224,214,'霸州市'),(225,214,'三河市'),(226,43,'衡水'),(227,226,'市辖区'),(228,226,'桃城区'),(229,226,'枣强县'),(230,226,'武邑县'),(231,226,'武强县'),(232,226,'饶阳县'),(233,226,'安平县'),(234,226,'故城县'),(235,226,'景  县'),(236,226,'阜城县'),(237,226,'冀州市'),(238,226,'深州市'),(239,0,'山西'),(240,239,'太原'),(241,240,'市辖区'),(242,240,'小店区'),(243,240,'迎泽区'),(244,240,'杏花岭区'),(245,240,'尖草坪区'),(246,240,'万柏林区'),(247,240,'晋源区'),(248,240,'清徐县'),(249,240,'阳曲县'),(250,240,'娄烦县'),(251,240,'古交市'),(252,239,'大同'),(253,252,'市辖区'),(254,252,'城  区'),(255,252,'矿  区'),(256,252,'南郊区'),(257,252,'新荣区'),(258,252,'阳高县'),(259,252,'天镇县'),(260,252,'广灵县'),(261,252,'灵丘县'),(262,252,'浑源县'),(263,252,'左云县'),(264,252,'大同县'),(265,239,'阳泉'),(266,265,'市辖区'),(267,265,'城  区'),(268,265,'矿  区'),(269,265,'郊  区'),(270,265,'平定县'),(271,265,'盂  县'),(272,239,'长治'),(273,272,'市辖区'),(274,272,'城  区'),(275,272,'郊  区'),(276,272,'长治县'),(277,272,'襄垣县'),(278,272,'屯留县'),(279,272,'平顺县'),(280,272,'黎城县'),(281,272,'壶关县'),(282,272,'长子县'),(283,272,'武乡县'),(284,272,'沁  县'),(285,272,'沁源县'),(286,272,'潞城市'),(287,239,'晋城'),(288,287,'市辖区'),(289,287,'城  区'),(290,287,'沁水县'),(291,287,'阳城县'),(292,287,'陵川县'),(293,287,'泽州县'),(294,287,'高平市'),(295,239,'朔州'),(296,295,'市辖区'),(297,295,'朔城区'),(298,295,'平鲁区'),(299,295,'山阴县'),(300,295,'应  县'),(301,295,'右玉县'),(302,295,'怀仁县'),(303,239,'晋中'),(304,303,'市辖区'),(305,303,'榆次区'),(306,303,'榆社县'),(307,303,'左权县'),(308,303,'和顺县'),(309,303,'昔阳县'),(310,303,'寿阳县'),(311,303,'太谷县'),(312,303,'祁  县'),(313,303,'平遥县'),(314,303,'灵石县'),(315,303,'介休市'),(316,239,'运城'),(317,316,'市辖区'),(318,316,'盐湖区'),(319,316,'临猗县'),(320,316,'万荣县'),(321,316,'闻喜县'),(322,316,'稷山县'),(323,316,'新绛县'),(324,316,'绛  县'),(325,316,'垣曲县'),(326,316,'夏  县'),(327,316,'平陆县'),(328,316,'芮城县'),(329,316,'永济市'),(330,316,'河津市'),(331,239,'忻州'),(332,331,'市辖区'),(333,331,'忻府区'),(334,331,'定襄县'),(335,331,'五台县'),(336,331,'代  县'),(337,331,'繁峙县'),(338,331,'宁武县'),(339,331,'静乐县'),(340,331,'神池县'),(341,331,'五寨县'),(342,331,'岢岚县'),(343,331,'河曲县'),(344,331,'保德县'),(345,331,'偏关县'),(346,331,'原平市'),(347,239,'临汾'),(348,347,'市辖区'),(349,347,'尧都区'),(350,347,'曲沃县'),(351,347,'翼城县'),(352,347,'襄汾县'),(353,347,'洪洞县'),(354,347,'古  县'),(355,347,'安泽县'),(356,347,'浮山县'),(357,347,'吉  县'),(358,347,'乡宁县'),(359,347,'大宁县'),(360,347,'隰  县'),(361,347,'永和县'),(362,347,'蒲  县'),(363,347,'汾西县'),(364,347,'侯马市'),(365,347,'霍州市'),(366,239,'吕梁地区'),(367,366,'孝义市'),(368,366,'离石市'),(369,366,'汾阳市'),(370,366,'文水县'),(371,366,'交城县'),(372,366,'兴  县'),(373,366,'临  县'),(374,366,'柳林县'),(375,366,'石楼县'),(376,366,'岚  县'),(377,366,'方山县'),(378,366,'中阳县'),(379,366,'交口县'),(380,0,'内蒙古'),(381,380,'呼和浩特'),(382,381,'市辖区'),(383,381,'新城区'),(384,381,'回民区'),(385,381,'玉泉区'),(386,381,'赛罕区'),(387,381,'土默特左旗'),(388,381,'托克托县'),(389,381,'和林格尔县'),(390,381,'清水河县'),(391,381,'武川县'),(392,380,'包头'),(393,392,'市辖区'),(394,392,'东河区'),(395,392,'昆都伦区'),(396,392,'青山区'),(397,392,'石拐区'),(398,392,'白云矿区'),(399,392,'九原区'),(400,392,'土默特右旗'),(401,392,'固阳县'),(403,380,'乌海'),(404,403,'市辖区'),(405,403,'海勃湾区'),(406,403,'海南区'),(407,403,'乌达区'),(408,380,'赤峰'),(409,408,'市辖区'),(410,408,'红山区'),(411,408,'元宝山区'),(412,408,'松山区'),(413,408,'阿鲁科尔沁旗'),(414,408,'巴林左旗'),(415,408,'巴林右旗'),(416,408,'林西县'),(417,408,'克什克腾旗'),(418,408,'翁牛特旗'),(419,408,'喀喇沁旗'),(420,408,'宁城县'),(421,408,'敖汉旗'),(422,380,'通辽'),(423,422,'市辖区'),(424,422,'科尔沁区'),(425,422,'科尔沁左翼中旗'),(426,422,'科尔沁左翼后旗'),(427,422,'开鲁县'),(428,422,'库伦旗'),(429,422,'奈曼旗'),(430,422,'扎鲁特旗'),(431,422,'霍林郭勒市'),(432,380,'呼伦贝尔盟'),(433,432,'海拉尔市'),(434,432,'满洲里市'),(435,432,'扎兰屯市'),(436,432,'牙克石市'),(437,432,'根河市'),(438,432,'额尔古纳市'),(439,432,'阿荣旗'),(441,432,'鄂伦春自治旗'),(442,432,'鄂温克族自治旗'),(443,432,'新巴尔虎右旗'),(444,432,'新巴尔虎左旗'),(445,432,'陈巴尔虎旗'),(446,380,'兴安盟'),(447,446,'乌兰浩特市'),(448,446,'阿尔山市'),(449,446,'科尔沁右翼前旗'),(450,446,'科尔沁右翼中旗'),(451,446,'扎赉特旗'),(452,446,'突泉县'),(453,380,'锡林郭勒盟'),(454,453,'二连浩特市'),(455,453,'锡林浩特市'),(456,453,'阿巴嘎旗'),(457,453,'苏尼特左旗'),(458,453,'苏尼特右旗'),(459,453,'东乌珠穆沁旗'),(460,453,'西乌珠穆沁旗'),(461,453,'太仆寺旗'),(462,453,'镶黄旗'),(463,453,'正镶白旗'),(464,453,'正蓝旗'),(465,453,'多伦县'),(466,380,'乌兰察布盟'),(467,466,'集宁市'),(468,466,'丰镇市'),(469,466,'卓资县'),(470,466,'化德县'),(471,466,'商都县'),(472,466,'兴和县'),(473,466,'凉城县'),(474,466,'察哈尔右翼前旗'),(475,466,'察哈尔右翼中旗'),(476,466,'察哈尔右翼后旗'),(477,466,'四子王旗'),(478,380,'伊克昭盟'),(479,478,'东胜市'),(480,478,'达拉特旗'),(481,478,'准格尔旗'),(482,478,'鄂托克前旗'),(483,478,'鄂托克旗'),(484,478,'杭锦旗'),(485,478,'乌审旗'),(486,478,'伊金霍洛旗'),(487,380,'巴彦淖尔盟'),(488,487,'临河市'),(489,487,'五原县'),(490,487,'磴口县'),(491,487,'乌拉特前旗'),(492,487,'乌拉特中旗'),(493,487,'乌拉特后旗'),(494,487,'杭锦后旗'),(495,380,'阿拉善盟'),(496,495,'阿拉善左旗'),(497,495,'阿拉善右旗'),(498,495,'额济纳旗'),(499,0,'辽宁'),(500,499,'沈阳'),(501,500,'市辖区'),(502,500,'和平区'),(503,500,'沈河区'),(504,500,'大东区'),(505,500,'皇姑区'),(506,500,'铁西区'),(507,500,'苏家屯区'),(508,500,'东陵区'),(509,500,'新城子区'),(510,500,'于洪区'),(511,500,'辽中县'),(512,500,'康平县'),(513,500,'法库县'),(514,500,'新民市'),(515,499,'大连'),(516,515,'市辖区'),(517,515,'中山区'),(518,515,'西岗区'),(519,515,'沙河口区'),(520,515,'甘井子区'),(521,515,'旅顺口区'),(522,515,'金州区'),(523,515,'长海县'),(524,515,'瓦房店市'),(525,515,'普兰店市'),(526,515,'庄河市'),(527,499,'鞍山'),(528,527,'市辖区'),(529,527,'铁东区'),(530,527,'铁西区'),(531,527,'立山区'),(532,527,'千山区'),(533,527,'台安县'),(534,527,'岫岩满族自治县'),(535,527,'海城市'),(536,499,'抚顺'),(537,536,'市辖区'),(538,536,'新抚区'),(539,536,'东洲区'),(540,536,'望花区'),(541,536,'顺城区'),(542,536,'抚顺县'),(543,536,'新宾满族自治县'),(544,536,'清原满族自治县'),(545,499,'本溪'),(546,545,'市辖区'),(547,545,'平山区'),(548,545,'溪湖区'),(549,545,'明山区'),(550,545,'南芬区'),(551,545,'本溪满族自治县'),(552,545,'桓仁满族自治县'),(553,499,'丹东'),(554,553,'市辖区'),(555,553,'元宝区'),(556,553,'振兴区'),(557,553,'振安区'),(558,553,'宽甸满族自治县'),(559,553,'东港市'),(560,553,'凤城市'),(561,499,'锦州'),(562,561,'市辖区'),(563,561,'古塔区'),(564,561,'凌河区'),(565,561,'太和区'),(566,561,'黑山县'),(567,561,'义  县'),(568,561,'凌海市'),(569,561,'北宁市'),(570,499,'营口'),(571,570,'市辖区'),(572,570,'站前区'),(573,570,'西市区'),(574,570,'鲅鱼圈区'),(575,570,'老边区'),(576,570,'盖州市'),(577,570,'大石桥市'),(578,499,'阜新'),(579,578,'市辖区'),(580,578,'海州区'),(581,578,'新邱区'),(582,578,'太平区'),(583,578,'清河门区'),(584,578,'细河区'),(585,578,'阜新蒙古族自治县'),(586,578,'彰武县'),(587,499,'辽阳'),(588,587,'市辖区'),(589,587,'白塔区'),(590,587,'文圣区'),(591,587,'宏伟区'),(592,587,'弓长岭区'),(593,587,'太子河区'),(594,587,'辽阳县'),(595,587,'灯塔市'),(596,499,'盘锦'),(597,596,'市辖区'),(598,596,'双台子区'),(599,596,'兴隆台区'),(600,596,'大洼县'),(601,596,'盘山县'),(602,499,'铁岭'),(603,602,'市辖区'),(604,602,'银州区'),(605,602,'清河区'),(606,602,'铁岭县'),(607,602,'西丰县'),(608,602,'昌图县'),(609,602,'铁法市'),(610,602,'开原市'),(611,499,'朝阳'),(612,611,'市辖区'),(613,611,'双塔区'),(614,611,'龙城区'),(615,611,'朝阳县'),(616,611,'建平县'),(618,611,'北票市'),(619,611,'凌源市'),(620,499,'葫芦岛'),(621,620,'市辖区'),(622,620,'连山区'),(623,620,'龙港区'),(624,620,'南票区'),(625,620,'绥中县'),(626,620,'建昌县'),(627,620,'兴城市'),(628,0,'吉林'),(629,628,'长春'),(630,629,'市辖区'),(631,629,'南关区'),(632,629,'宽城区'),(633,629,'朝阳区'),(634,629,'二道区'),(635,629,'绿园区'),(636,629,'双阳区'),(637,629,'农安县'),(638,629,'九台市'),(639,629,'榆树市'),(640,629,'德惠市'),(641,628,'吉林'),(642,641,'市辖区'),(643,641,'昌邑区'),(644,641,'龙潭区'),(645,641,'船营区'),(646,641,'丰满区'),(647,641,'永吉县'),(648,641,'蛟河市'),(649,641,'桦甸市'),(650,641,'舒兰市'),(651,641,'磐石市'),(652,628,'四平'),(653,652,'市辖区'),(654,652,'铁西区'),(655,652,'铁东区'),(656,652,'梨树县'),(657,652,'伊通满族自治县'),(658,652,'公主岭市'),(659,652,'双辽市'),(660,628,'辽源'),(661,660,'市辖区'),(662,660,'龙山区'),(663,660,'西安区'),(664,660,'东丰县'),(665,660,'东辽县'),(666,628,'通化'),(667,666,'市辖区'),(668,666,'东昌区'),(669,666,'二道江区'),(670,666,'通化县'),(671,666,'辉南县'),(672,666,'柳河县'),(673,666,'梅河口市'),(674,666,'集安市'),(675,628,'白山'),(676,675,'市辖区'),(677,675,'八道江区'),(678,675,'抚松县'),(679,675,'靖宇县'),(680,675,'长白朝鲜族自治县'),(681,675,'江源县'),(682,675,'临江市'),(683,628,'松原'),(684,683,'市辖区'),(685,683,'宁江区'),(687,683,'长岭县'),(688,683,'乾安县'),(689,683,'扶余县'),(690,628,'白城'),(691,690,'市辖区'),(692,690,'洮北区'),(693,690,'镇赉县'),(694,690,'通榆县'),(695,690,'洮南市'),(696,690,'大安市'),(697,628,'延边朝鲜族自治州'),(698,697,'延吉市'),(699,697,'图们市'),(700,697,'敦化市'),(701,697,'珲春市'),(702,697,'龙井市'),(703,697,'和龙市'),(704,697,'汪清县'),(705,697,'安图县'),(706,0,'黑龙江'),(707,706,'哈尔滨'),(708,707,'市辖区'),(709,707,'道里区'),(710,707,'南岗区'),(711,707,'道外区'),(712,707,'太平区'),(713,707,'香坊区'),(714,707,'动力区'),(715,707,'平房区'),(716,707,'呼兰县'),(717,707,'依兰县'),(718,707,'方正县'),(719,707,'宾  县'),(720,707,'巴彦县'),(721,707,'木兰县'),(722,707,'通河县'),(723,707,'延寿县'),(724,707,'阿城市'),(725,707,'双城市'),(726,707,'尚志市'),(727,707,'五常市'),(728,706,'齐齐哈尔'),(729,728,'市辖区'),(730,728,'龙沙区'),(731,728,'建华区'),(732,728,'铁锋区'),(733,728,'昂昂溪区'),(734,728,'富拉尔基区'),(735,728,'碾子山区'),(736,728,'梅里斯达斡尔族区'),(737,728,'龙江县'),(738,728,'依安县'),(739,728,'泰来县'),(740,728,'甘南县'),(741,728,'富裕县'),(742,728,'克山县'),(743,728,'克东县'),(744,728,'拜泉县'),(745,728,'讷河市'),(746,706,'鸡西'),(747,746,'市辖区'),(748,746,'鸡冠区'),(749,746,'恒山区'),(750,746,'滴道区'),(751,746,'梨树区'),(752,746,'城子河区'),(753,746,'麻山区'),(754,746,'鸡东县'),(755,746,'虎林市'),(756,746,'密山市'),(757,706,'鹤岗'),(758,757,'市辖区'),(759,757,'向阳区'),(760,757,'工农区'),(761,757,'南山区'),(762,757,'兴安区'),(763,757,'东山区'),(764,757,'兴山区'),(765,757,'萝北县'),(766,757,'绥滨县'),(767,706,'双鸭山'),(768,767,'市辖区'),(769,767,'尖山区'),(770,767,'岭东区'),(771,767,'四方台区'),(772,767,'宝山区'),(773,767,'集贤县'),(774,767,'友谊县'),(775,767,'宝清县'),(776,767,'饶河县'),(777,706,'大庆'),(778,777,'市辖区'),(779,777,'萨尔图区'),(780,777,'龙凤区'),(781,777,'让胡路区'),(782,777,'红岗区'),(783,777,'大同区'),(784,777,'肇州县'),(785,777,'肇源县'),(786,777,'林甸县'),(788,706,'伊春'),(789,788,'市辖区'),(790,788,'伊春区'),(791,788,'南岔区'),(792,788,'友好区'),(793,788,'西林区'),(794,788,'翠峦区'),(795,788,'新青区'),(796,788,'美溪区'),(797,788,'金山屯区'),(798,788,'五营区'),(799,788,'乌马河区'),(800,788,'汤旺河区'),(801,788,'带岭区'),(802,788,'乌伊岭区'),(803,788,'红星区'),(804,788,'上甘岭区'),(805,788,'嘉荫县'),(806,788,'铁力市'),(807,706,'佳木斯'),(808,807,'市辖区'),(809,807,'永红区'),(810,807,'向阳区'),(811,807,'前进区'),(812,807,'东风区'),(813,807,'郊  区'),(814,807,'桦南县'),(815,807,'桦川县'),(816,807,'汤原县'),(817,807,'抚远县'),(818,807,'同江市'),(819,807,'富锦市'),(820,706,'七台河'),(821,820,'市辖区'),(822,820,'新兴区'),(823,820,'桃山区'),(824,820,'茄子河区'),(825,820,'勃利县'),(826,706,'牡丹江'),(827,826,'市辖区'),(828,826,'东安区'),(829,826,'阳明区'),(830,826,'爱民区'),(831,826,'西安区'),(832,826,'东宁县'),(833,826,'林口县'),(834,826,'绥芬河市'),(835,826,'海林市'),(836,826,'宁安市'),(837,826,'穆棱市'),(838,706,'黑河'),(839,838,'市辖区'),(840,838,'爱辉区'),(841,838,'嫩江县'),(842,838,'逊克县'),(843,838,'孙吴县'),(844,838,'北安市'),(845,838,'五大连池市'),(846,706,'绥化'),(847,846,'市辖区'),(848,846,'北林区'),(849,846,'望奎县'),(850,846,'兰西县'),(851,846,'青冈县'),(852,846,'庆安县'),(853,846,'明水县'),(854,846,'绥棱县'),(855,846,'安达市'),(856,846,'肇东市'),(857,846,'海伦市'),(858,706,'大兴安岭地区'),(859,858,'呼玛县'),(860,858,'塔河县'),(861,858,'漠河县'),(862,0,'上海'),(863,862,'上海市辖'),(864,863,'黄浦区'),(865,863,'卢湾区'),(866,863,'徐汇区'),(867,863,'长宁区'),(868,863,'静安区'),(869,863,'普陀区'),(870,863,'闸北区'),(871,863,'虹口区'),(872,863,'杨浦区'),(873,863,'闵行区'),(874,863,'宝山区'),(875,863,'嘉定区'),(876,863,'浦东新区'),(877,863,'金山区'),(878,863,'松江区'),(879,863,'青浦区'),(880,862,'上海县辖'),(881,880,'南汇县'),(882,880,'奉贤县'),(883,880,'崇明县'),(884,0,'江苏'),(885,884,'南京'),(886,885,'市辖区'),(887,885,'玄武区'),(888,885,'白下区'),(889,885,'秦淮区'),(890,885,'建邺区'),(891,885,'鼓楼区'),(892,885,'下关区'),(893,885,'浦口区'),(894,885,'大厂区'),(895,885,'栖霞区'),(896,885,'雨花台区'),(897,885,'江宁区'),(898,885,'江浦县'),(899,885,'六合县'),(900,885,'溧水县'),(901,885,'高淳县'),(902,884,'无锡'),(903,902,'市辖区'),(904,902,'崇安区'),(905,902,'南长区'),(906,902,'北塘区'),(907,902,'锡山区'),(908,902,'惠山区'),(909,902,'滨湖区'),(910,902,'江阴市'),(911,902,'宜兴市'),(912,884,'徐州'),(913,912,'市辖区'),(914,912,'鼓楼区'),(915,912,'云龙区'),(916,912,'九里区'),(917,912,'贾汪区'),(918,912,'泉山区'),(919,912,'丰  县'),(920,912,'沛  县'),(921,912,'铜山县'),(922,912,'睢宁县'),(923,912,'新沂市'),(924,912,'邳州市'),(925,884,'常州'),(926,925,'市辖区'),(927,925,'天宁区'),(928,925,'钟楼区'),(929,925,'戚墅堰区'),(930,925,'郊  区'),(931,925,'溧阳市'),(932,925,'金坛市'),(933,925,'武进市'),(934,884,'苏州'),(935,934,'市辖区'),(936,934,'沧浪区'),(937,934,'平江区'),(938,934,'金阊区'),(939,934,'虎丘区'),(940,934,'吴中区'),(941,934,'相城区'),(942,934,'常熟市'),(943,934,'张家港市'),(944,934,'昆山市'),(945,934,'吴江市'),(946,934,'太仓市'),(947,884,'南通'),(948,947,'市辖区'),(949,947,'崇川区'),(950,947,'港闸区'),(951,947,'海安县'),(952,947,'如东县'),(953,947,'启东市'),(954,947,'如皋市'),(955,947,'通州市'),(956,947,'海门市'),(957,884,'连云港'),(958,957,'市辖区'),(959,957,'连云区'),(960,957,'云台区'),(961,957,'新浦区'),(962,957,'海州区'),(963,957,'赣榆县'),(964,957,'东海县'),(965,957,'灌云县'),(966,957,'灌南县'),(967,884,'淮安'),(968,967,'市辖区'),(969,967,'清河区'),(970,967,'楚州区'),(971,967,'淮阴区'),(972,967,'清浦区'),(973,967,'涟水县'),(974,967,'洪泽县'),(975,967,'盱眙县'),(976,967,'金湖县'),(977,884,'盐城'),(978,977,'市辖区'),(979,977,'城  区'),(980,977,'响水县'),(981,977,'滨海县'),(982,977,'阜宁县'),(983,977,'射阳县'),(984,977,'建湖县'),(985,977,'盐都县'),(986,977,'东台市'),(987,977,'大丰市'),(988,884,'扬州'),(989,988,'市辖区'),(990,988,'广陵区'),(991,988,'邗江区'),(992,988,'郊  区'),(993,988,'宝应县'),(994,988,'仪征市'),(995,988,'高邮市'),(996,988,'江都市'),(997,884,'镇江'),(998,997,'市辖区'),(999,997,'京口区'),(1000,997,'润州区'),(1001,997,'丹徒县'),(1002,997,'丹阳市'),(1003,997,'扬中市'),(1004,997,'句容市'),(1005,884,'泰州'),(1006,1005,'市辖区'),(1007,1005,'海陵区'),(1008,1005,'高港区'),(1009,1005,'兴化市'),(1010,1005,'靖江市'),(1011,1005,'泰兴市'),(1012,1005,'姜堰市'),(1013,884,'宿迁'),(1014,1013,'市辖区'),(1015,1013,'宿城区'),(1016,1013,'宿豫县'),(1017,1013,'沭阳县'),(1018,1013,'泗阳县'),(1019,1013,'泗洪县'),(1020,0,'浙江'),(1021,1020,'杭州'),(1022,1021,'市辖区'),(1023,1021,'上城区'),(1024,1021,'下城区'),(1025,1021,'江干区'),(1026,1021,'拱墅区'),(1027,1021,'西湖区'),(1028,1021,'滨江区'),(1029,1021,'桐庐县'),(1030,1021,'淳安县'),(1031,1021,'萧山市'),(1032,1021,'建德市'),(1033,1021,'富阳市'),(1034,1021,'余杭市'),(1035,1021,'临安市'),(1036,1020,'宁波'),(1037,1036,'市辖区'),(1038,1036,'海曙区'),(1039,1036,'江东区'),(1040,1036,'江北区'),(1041,1036,'北仑区'),(1042,1036,'镇海区'),(1043,1036,'象山县'),(1044,1036,'宁海县'),(1045,1036,'鄞  县'),(1046,1036,'余姚市'),(1047,1036,'慈溪市'),(1048,1036,'奉化市'),(1049,1020,'温州'),(1050,1049,'市辖区'),(1051,1049,'鹿城区'),(1052,1049,'龙湾区'),(1053,1049,'瓯海区'),(1054,1049,'洞头县'),(1055,1049,'永嘉县'),(1056,1049,'平阳县'),(1057,1049,'苍南县'),(1058,1049,'文成县'),(1059,1049,'泰顺县'),(1060,1049,'瑞安市'),(1061,1049,'乐清市'),(1062,1020,'嘉兴'),(1063,1062,'市辖区'),(1064,1062,'秀城区'),(1065,1062,'秀洲区'),(1066,1062,'嘉善县'),(1067,1062,'海盐县'),(1068,1062,'海宁市'),(1069,1062,'平湖市'),(1070,1062,'桐乡市'),(1071,1020,'湖州'),(1072,1071,'市辖区'),(1073,1071,'德清县'),(1074,1071,'长兴县'),(1075,1071,'安吉县'),(1076,1020,'绍兴'),(1077,1076,'市辖区'),(1078,1076,'越城区'),(1079,1076,'绍兴县'),(1080,1076,'新昌县'),(1081,1076,'诸暨市'),(1082,1076,'上虞市'),(1083,1076,'嵊州市'),(1084,1020,'金华'),(1085,1084,'市辖区'),(1086,1084,'婺城区'),(1087,1084,'金东区'),(1088,1084,'武义县'),(1089,1084,'浦江县'),(1090,1084,'磐安县'),(1091,1084,'兰溪市'),(1092,1084,'义乌市'),(1093,1084,'东阳市'),(1094,1084,'永康市'),(1095,1020,'衢州'),(1096,1095,'市辖区'),(1097,1095,'柯城区'),(1098,1095,'衢  县'),(1099,1095,'常山县'),(1100,1095,'开化县'),(1101,1095,'龙游县'),(1102,1095,'江山市'),(1103,1020,'舟山'),(1104,1103,'市辖区'),(1105,1103,'定海区'),(1106,1103,'普陀区'),(1107,1103,'岱山县'),(1108,1103,'嵊泗县'),(1109,1020,'台州'),(1110,1109,'市辖区'),(1111,1109,'椒江区'),(1112,1109,'黄岩区'),(1113,1109,'路桥区'),(1114,1109,'玉环县'),(1115,1109,'三门县'),(1116,1109,'天台县'),(1117,1109,'仙居县'),(1118,1109,'温岭市'),(1119,1109,'临海市'),(1120,1020,'丽水'),(1121,1120,'市辖区'),(1122,1120,'莲都区'),(1123,1120,'青田县'),(1124,1120,'缙云县'),(1125,1120,'遂昌县'),(1126,1120,'松阳县'),(1127,1120,'云和县'),(1128,1120,'庆元县'),(1129,1120,'景宁畲族自治县'),(1130,1120,'龙泉市'),(1131,0,'安徽'),(1132,1131,'合肥'),(1133,1132,'市辖区'),(1134,1132,'东市区'),(1135,1132,'中市区'),(1136,1132,'西市区'),(1137,1132,'郊  区'),(1138,1132,'长丰县'),(1139,1132,'肥东县'),(1140,1132,'肥西县'),(1141,1131,'芜湖'),(1142,1141,'市辖区'),(1143,1141,'镜湖区'),(1144,1141,'马塘区'),(1145,1141,'新芜区'),(1146,1141,'鸠江区'),(1147,1141,'芜湖县'),(1148,1141,'繁昌县'),(1149,1141,'南陵县'),(1150,1131,'蚌埠'),(1151,1150,'市辖区'),(1152,1150,'东市区'),(1153,1150,'中市区'),(1154,1150,'西市区'),(1155,1150,'郊  区'),(1156,1150,'怀远县'),(1157,1150,'五河县'),(1158,1150,'固镇县'),(1159,1131,'淮南'),(1160,1159,'市辖区'),(1161,1159,'大通区'),(1162,1159,'田家庵区'),(1163,1159,'谢家集区'),(1164,1159,'八公山区'),(1165,1159,'潘集区'),(1166,1159,'凤台县'),(1167,1131,'马鞍山'),(1168,1167,'市辖区'),(1169,1167,'金家庄区'),(1170,1167,'花山区'),(1171,1167,'雨山区'),(1172,1167,'向山区'),(1173,1167,'当涂县'),(1174,1131,'淮北'),(1175,1174,'市辖区'),(1176,1174,'杜集区'),(1177,1174,'相山区'),(1178,1174,'烈山区'),(1179,1174,'濉溪县'),(1180,1131,'铜陵'),(1181,1180,'市辖区'),(1182,1180,'铜官山区'),(1183,1180,'狮子山区'),(1184,1180,'郊  区'),(1185,1180,'铜陵县'),(1186,1131,'安庆'),(1187,1186,'市辖区'),(1188,1186,'迎江区'),(1189,1186,'大观区'),(1190,1186,'郊  区'),(1191,1186,'怀宁县'),(1192,1186,'枞阳县'),(1193,1186,'潜山县'),(1194,1186,'太湖县'),(1195,1186,'宿松县'),(1196,1186,'望江县'),(1197,1186,'岳西县'),(1198,1186,'桐城市'),(1199,1131,'黄山'),(1200,1199,'市辖区'),(1201,1199,'屯溪区'),(1202,1199,'黄山区'),(1203,1199,'徽州区'),(1204,1199,'歙  县'),(1205,1199,'休宁县'),(1206,1199,'黟  县'),(1207,1199,'祁门县'),(1208,1131,'滁州'),(1209,1208,'市辖区'),(1210,1208,'琅琊区'),(1211,1208,'南谯区'),(1212,1208,'来安县'),(1213,1208,'全椒县'),(1214,1208,'定远县'),(1215,1208,'凤阳县'),(1216,1208,'天长市'),(1217,1208,'明光市'),(1218,1131,'阜阳'),(1219,1218,'市辖区'),(1220,1218,'颍州区'),(1221,1218,'颍东区'),(1222,1218,'颍泉区'),(1223,1218,'临泉县'),(1224,1218,'太和县'),(1225,1218,'阜南县'),(1226,1218,'颍上县'),(1227,1218,'界首市'),(1228,1131,'宿州'),(1229,1228,'市辖区'),(1230,1228,'墉桥区'),(1231,1228,'砀山县'),(1232,1228,'萧  县'),(1233,1228,'灵璧县'),(1234,1228,'泗  县'),(1235,1131,'巢湖'),(1236,1235,'市辖区'),(1237,1235,'居巢区'),(1238,1235,'庐江县'),(1239,1235,'无为县'),(1240,1235,'含山县'),(1241,1235,'和  县'),(1242,1131,'六安'),(1243,1242,'市辖区'),(1244,1242,'金安区'),(1245,1242,'裕安区'),(1246,1242,'寿  县'),(1247,1242,'霍邱县'),(1248,1242,'舒城县'),(1249,1242,'金寨县'),(1250,1242,'霍山县'),(1251,1131,'亳州'),(1252,1251,'市辖区'),(1253,1251,'谯城区'),(1254,1251,'涡阳县'),(1255,1251,'蒙城县'),(1256,1251,'利辛县'),(1257,1131,'池州'),(1258,1257,'市辖区'),(1259,1257,'贵池区'),(1260,1257,'东至县'),(1261,1257,'石台县'),(1262,1257,'青阳县'),(1263,1131,'宣城'),(1264,1263,'市辖区'),(1265,1263,'宣州区'),(1266,1263,'郎溪县'),(1267,1263,'广德县'),(1268,1263,'泾  县'),(1269,1263,'绩溪县'),(1270,1263,'旌德县'),(1271,1263,'宁国市'),(1272,0,'福建'),(1273,1272,'福州'),(1274,1273,'市辖区'),(1275,1273,'鼓楼区'),(1276,1273,'台江区'),(1277,1273,'仓山区'),(1278,1273,'马尾区'),(1279,1273,'晋安区'),(1280,1273,'闽侯县'),(1281,1273,'连江县'),(1282,1273,'罗源县'),(1283,1273,'闽清县'),(1284,1273,'永泰县'),(1285,1273,'平潭县'),(1286,1273,'福清市'),(1287,1273,'长乐市'),(1288,1272,'厦门'),(1289,1288,'市辖区'),(1290,1288,'鼓浪屿区'),(1291,1288,'思明区'),(1292,1288,'开元区'),(1293,1288,'杏林区'),(1294,1288,'湖里区'),(1295,1288,'集美区'),(1296,1288,'同安区'),(1297,1272,'莆田'),(1298,1297,'市辖区'),(1299,1297,'城厢区'),(1300,1297,'涵江区'),(1301,1297,'莆田县'),(1302,1297,'仙游县'),(1303,1272,'三明'),(1304,1303,'市辖区'),(1305,1303,'梅列区'),(1306,1303,'三元区'),(1307,1303,'明溪县'),(1308,1303,'清流县'),(1309,1303,'宁化县'),(1310,1303,'大田县'),(1311,1303,'尤溪县'),(1312,1303,'沙  县'),(1313,1303,'将乐县'),(1314,1303,'泰宁县'),(1315,1303,'建宁县'),(1316,1303,'永安市'),(1317,1272,'泉州'),(1318,1317,'市辖区'),(1319,1317,'鲤城区'),(1320,1317,'丰泽区'),(1321,1317,'洛江区'),(1322,1317,'泉港区'),(1323,1317,'惠安县'),(1324,1317,'安溪县'),(1325,1317,'永春县'),(1326,1317,'德化县'),(1327,1317,'金门县'),(1328,1317,'石狮市'),(1329,1317,'晋江市'),(1330,1317,'南安市'),(1331,1272,'漳州'),(1332,1331,'市辖区'),(1333,1331,'芗城区'),(1334,1331,'龙文区'),(1335,1331,'云霄县'),(1336,1331,'漳浦县'),(1337,1331,'诏安县'),(1338,1331,'长泰县'),(1339,1331,'东山县'),(1340,1331,'南靖县'),(1341,1331,'平和县'),(1342,1331,'华安县'),(1343,1331,'龙海市'),(1344,1272,'南平'),(1345,1344,'市辖区'),(1346,1344,'延平区'),(1347,1344,'顺昌县'),(1348,1344,'浦城县'),(1349,1344,'光泽县'),(1350,1344,'松溪县'),(1351,1344,'政和县'),(1352,1344,'邵武市'),(1353,1344,'武夷山市'),(1354,1344,'建瓯市'),(1355,1344,'建阳市'),(1356,1272,'龙岩'),(1357,1356,'市辖区'),(1358,1356,'新罗区'),(1359,1356,'长汀县'),(1360,1356,'永定县'),(1361,1356,'上杭县'),(1362,1356,'武平县'),(1363,1356,'连城县'),(1364,1356,'漳平市'),(1365,1272,'宁德'),(1366,1365,'市辖区'),(1367,1365,'蕉城区'),(1368,1365,'霞浦县'),(1369,1365,'古田县'),(1370,1365,'屏南县'),(1371,1365,'寿宁县'),(1372,1365,'周宁县'),(1373,1365,'柘荣县'),(1374,1365,'福安市'),(1375,1365,'福鼎市'),(1376,0,'江西'),(1377,1376,'南昌'),(1378,1377,'市辖区'),(1379,1377,'东湖区'),(1380,1377,'西湖区'),(1381,1377,'青云谱区'),(1382,1377,'湾里区'),(1383,1377,'郊  区'),(1384,1377,'南昌县'),(1385,1377,'新建县'),(1386,1377,'安义县'),(1387,1377,'进贤县'),(1388,1376,'景德镇'),(1389,1388,'市辖区'),(1390,1388,'昌江区'),(1391,1388,'珠山区'),(1392,1388,'浮梁县'),(1393,1388,'乐平市'),(1394,1376,'萍乡'),(1395,1394,'市辖区'),(1396,1394,'安源区'),(1397,1394,'湘东区'),(1398,1394,'莲花县'),(1399,1394,'上栗县'),(1400,1394,'芦溪县'),(1401,1376,'九江'),(1402,1401,'市辖区'),(1403,1401,'庐山区'),(1404,1401,'浔阳区'),(1405,1401,'九江县'),(1406,1401,'武宁县'),(1407,1401,'修水县'),(1408,1401,'永修县'),(1409,1401,'德安县'),(1410,1401,'星子县'),(1411,1401,'都昌县'),(1412,1401,'湖口县'),(1413,1401,'彭泽县'),(1414,1401,'瑞昌市'),(1415,1376,'新余'),(1416,1415,'市辖区'),(1417,1415,'渝水区'),(1418,1415,'分宜县'),(1419,1376,'鹰潭'),(1420,1419,'市辖区'),(1421,1419,'月湖区'),(1422,1419,'余江县'),(1423,1419,'贵溪市'),(1424,1376,'赣州'),(1425,1424,'市辖区'),(1426,1424,'章贡区'),(1427,1424,'赣  县'),(1428,1424,'信丰县'),(1429,1424,'大余县'),(1430,1424,'上犹县'),(1431,1424,'崇义县'),(1432,1424,'安远县'),(1433,1424,'龙南县'),(1434,1424,'定南县'),(1435,1424,'全南县'),(1436,1424,'宁都县'),(1437,1424,'于都县'),(1438,1424,'兴国县'),(1439,1424,'会昌县'),(1440,1424,'寻乌县'),(1441,1424,'石城县'),(1442,1424,'瑞金市'),(1443,1424,'南康市'),(1444,1376,'吉安'),(1445,1444,'市辖区'),(1446,1444,'吉州区'),(1447,1444,'青原区'),(1448,1444,'吉安县'),(1449,1444,'吉水县'),(1450,1444,'峡江县'),(1451,1444,'新干县'),(1452,1444,'永丰县'),(1453,1444,'泰和县'),(1454,1444,'遂川县'),(1455,1444,'万安县'),(1456,1444,'安福县'),(1457,1444,'永新县'),(1458,1444,'井冈山市'),(1459,1376,'宜春'),(1460,1459,'市辖区'),(1461,1459,'袁州区'),(1462,1459,'奉新县'),(1463,1459,'万载县'),(1464,1459,'上高县'),(1465,1459,'宜丰县'),(1466,1459,'靖安县'),(1467,1459,'铜鼓县'),(1468,1459,'丰城市'),(1469,1459,'樟树市'),(1470,1459,'高安市'),(1471,1376,'抚州'),(1472,1471,'市辖区'),(1473,1471,'临川区'),(1474,1471,'南城县'),(1475,1471,'黎川县'),(1476,1471,'南丰县'),(1477,1471,'崇仁县'),(1478,1471,'乐安县'),(1479,1471,'宜黄县'),(1480,1471,'金溪县'),(1481,1471,'资溪县'),(1482,1471,'东乡县'),(1483,1471,'广昌县'),(1484,1376,'上饶'),(1485,1484,'市辖区'),(1486,1484,'信州区'),(1487,1484,'上饶县'),(1488,1484,'广丰县'),(1489,1484,'玉山县'),(1490,1484,'铅山县'),(1491,1484,'横峰县'),(1492,1484,'弋阳县'),(1493,1484,'余干县'),(1494,1484,'波阳县'),(1495,1484,'万年县'),(1496,1484,'婺源县'),(1497,1484,'德兴市'),(1498,0,'山东'),(1499,1498,'济南'),(1500,1499,'市辖区'),(1501,1499,'历下区'),(1502,1499,'市中区'),(1503,1499,'槐荫区'),(1504,1499,'天桥区'),(1505,1499,'历城区'),(1506,1499,'长清县'),(1507,1499,'平阴县'),(1508,1499,'济阳县'),(1509,1499,'商河县'),(1510,1499,'章丘市'),(1511,1498,'青岛'),(1512,1511,'市辖区'),(1513,1511,'市南区'),(1514,1511,'市北区'),(1515,1511,'四方区'),(1516,1511,'黄岛区'),(1517,1511,'崂山区'),(1518,1511,'李沧区'),(1519,1511,'城阳区'),(1520,1511,'胶州市'),(1521,1511,'即墨市'),(1522,1511,'平度市'),(1523,1511,'胶南市'),(1524,1511,'莱西市'),(1525,1498,'淄博'),(1526,1525,'市辖区'),(1527,1525,'淄川区'),(1528,1525,'张店区'),(1529,1525,'博山区'),(1530,1525,'临淄区'),(1531,1525,'周村区'),(1532,1525,'桓台县'),(1533,1525,'高青县'),(1534,1525,'沂源县'),(1535,1498,'枣庄'),(1536,1535,'市辖区'),(1537,1535,'市中区'),(1538,1535,'薛城区'),(1539,1535,'峄城区'),(1540,1535,'台儿庄区'),(1541,1535,'山亭区'),(1542,1535,'滕州市'),(1543,1498,'东营'),(1544,1543,'市辖区'),(1545,1543,'东营区'),(1546,1543,'河口区'),(1547,1543,'垦利县'),(1548,1543,'利津县'),(1549,1543,'广饶县'),(1550,1498,'烟台'),(1551,1550,'市辖区'),(1552,1550,'芝罘区'),(1553,1550,'福山区'),(1554,1550,'牟平区'),(1555,1550,'莱山区'),(1556,1550,'长岛县'),(1557,1550,'龙口市'),(1558,1550,'莱阳市'),(1559,1550,'莱州市'),(1560,1550,'蓬莱市'),(1561,1550,'招远市'),(1562,1550,'栖霞市'),(1563,1550,'海阳市'),(1564,1498,'潍坊'),(1565,1564,'市辖区'),(1566,1564,'潍城区'),(1567,1564,'寒亭区'),(1568,1564,'坊子区'),(1569,1564,'奎文区'),(1570,1564,'临朐县'),(1571,1564,'昌乐县'),(1572,1564,'青州市'),(1573,1564,'诸城市'),(1574,1564,'寿光市'),(1575,1564,'安丘市'),(1576,1564,'高密市'),(1577,1564,'昌邑市'),(1578,1498,'济宁'),(1579,1578,'市辖区'),(1580,1578,'市中区'),(1581,1578,'任城区'),(1582,1578,'微山县'),(1583,1578,'鱼台县'),(1584,1578,'金乡县'),(1585,1578,'嘉祥县'),(1586,1578,'汶上县'),(1587,1578,'泗水县'),(1588,1578,'梁山县'),(1589,1578,'曲阜市'),(1590,1578,'兖州市'),(1591,1578,'邹城市'),(1592,1498,'泰安'),(1593,1592,'市辖区'),(1594,1592,'泰山区'),(1595,1592,'岱岳区'),(1596,1592,'宁阳县'),(1597,1592,'东平县'),(1598,1592,'新泰市'),(1599,1592,'肥城市'),(1600,1498,'威海'),(1601,1600,'市辖区'),(1602,1600,'环翠区'),(1603,1600,'文登市'),(1604,1600,'荣成市'),(1605,1600,'乳山市'),(1606,1498,'日照'),(1607,1606,'市辖区'),(1608,1606,'东港区'),(1609,1606,'五莲县'),(1610,1606,'莒  县'),(1611,1498,'莱芜'),(1612,1611,'市辖区'),(1613,1611,'莱城区'),(1614,1611,'钢城区'),(1615,1498,'临沂'),(1616,1615,'市辖区'),(1617,1615,'兰山区'),(1618,1615,'罗庄区'),(1619,1615,'河东区'),(1620,1615,'沂南县'),(1621,1615,'郯城县'),(1622,1615,'沂水县'),(1623,1615,'苍山县'),(1624,1615,'费  县'),(1625,1615,'平邑县'),(1626,1615,'莒南县'),(1627,1615,'蒙阴县'),(1628,1615,'临沭县'),(1629,1498,'德州'),(1630,1629,'市辖区'),(1631,1629,'德城区'),(1632,1629,'陵  县'),(1633,1629,'宁津县'),(1634,1629,'庆云县'),(1635,1629,'临邑县'),(1636,1629,'齐河县'),(1637,1629,'平原县'),(1638,1629,'夏津县'),(1639,1629,'武城县'),(1640,1629,'乐陵市'),(1641,1629,'禹城市'),(1642,1498,'聊城'),(1643,1642,'市辖区'),(1644,1642,'东昌府区'),(1645,1642,'阳谷县'),(1646,1642,'莘  县'),(1647,1642,'茌平县'),(1648,1642,'东阿县'),(1649,1642,'冠  县'),(1650,1642,'高唐县'),(1651,1642,'临清市'),(1652,1498,'滨州'),(1653,1652,'市辖区'),(1654,1652,'滨城区'),(1655,1652,'惠民县'),(1656,1652,'阳信县'),(1657,1652,'无棣县'),(1658,1652,'沾化县'),(1659,1652,'博兴县'),(1660,1652,'邹平县'),(1661,1498,'菏泽'),(1662,1661,'市辖区'),(1663,1661,'牡丹区'),(1664,1661,'曹  县'),(1665,1661,'单  县'),(1666,1661,'成武县'),(1667,1661,'巨野县'),(1668,1661,'郓城县'),(1669,1661,'鄄城县'),(1670,1661,'定陶县'),(1671,1661,'东明县'),(1672,0,'河南'),(1673,1672,'郑州'),(1674,1673,'市辖区'),(1675,1673,'中原区'),(1676,1673,'二七区'),(1677,1673,'管城回族区'),(1678,1673,'金水区'),(1679,1673,'上街区'),(1680,1673,'邙山区'),(1681,1673,'中牟县'),(1682,1673,'巩义市'),(1683,1673,'荥阳市'),(1684,1673,'新密市'),(1685,1673,'新郑市'),(1686,1673,'登封市'),(1687,1672,'开封'),(1688,1687,'市辖区'),(1689,1687,'龙亭区'),(1690,1687,'顺河回族区'),(1691,1687,'鼓楼区'),(1692,1687,'南关区'),(1693,1687,'郊  区'),(1694,1687,'杞  县'),(1695,1687,'通许县'),(1696,1687,'尉氏县'),(1697,1687,'开封县'),(1698,1687,'兰考县'),(1699,1672,'洛阳'),(1700,1699,'市辖区'),(1701,1699,'老城区'),(1702,1699,'西工区'),(1703,1699,'廛河回族区'),(1704,1699,'涧西区'),(1705,1699,'吉利区'),(1706,1699,'洛龙区'),(1707,1699,'孟津县'),(1708,1699,'新安县'),(1709,1699,'栾川县'),(1710,1699,'嵩  县'),(1711,1699,'汝阳县'),(1712,1699,'宜阳县'),(1713,1699,'洛宁县'),(1714,1699,'伊川县'),(1715,1699,'偃师市'),(1716,1672,'平顶山'),(1717,1716,'市辖区'),(1718,1716,'新华区'),(1719,1716,'卫东区'),(1720,1716,'石龙区'),(1721,1716,'湛河区'),(1722,1716,'宝丰县'),(1723,1716,'叶  县'),(1724,1716,'鲁山县'),(1725,1716,'郏  县'),(1726,1716,'舞钢市'),(1727,1716,'汝州市'),(1728,1672,'安阳'),(1729,1728,'市辖区'),(1730,1728,'文峰区'),(1731,1728,'北关区'),(1732,1728,'铁西区'),(1733,1728,'郊  区'),(1734,1728,'安阳县'),(1735,1728,'汤阴县'),(1736,1728,'滑  县'),(1737,1728,'内黄县'),(1738,1728,'林州市'),(1739,1672,'鹤壁'),(1740,1739,'市辖区'),(1741,1739,'鹤山区'),(1742,1739,'山城区'),(1743,1739,'郊  区'),(1744,1739,'浚  县'),(1745,1739,'淇  县'),(1746,1672,'新乡'),(1747,1746,'市辖区'),(1748,1746,'红旗区'),(1749,1746,'新华区'),(1750,1746,'北站区'),(1751,1746,'郊  区'),(1752,1746,'新乡县'),(1753,1746,'获嘉县'),(1754,1746,'原阳县'),(1755,1746,'延津县'),(1756,1746,'封丘县'),(1757,1746,'长垣县'),(1758,1746,'卫辉市'),(1759,1746,'辉县市'),(1760,1672,'焦作'),(1761,1760,'市辖区'),(1762,1760,'解放区'),(1763,1760,'中站区'),(1764,1760,'马村区'),(1765,1760,'山阳区'),(1766,1760,'修武县'),(1767,1760,'博爱县'),(1768,1760,'武陟县'),(1769,1760,'温  县'),(1770,1760,'济源市'),(1771,1760,'沁阳市'),(1772,1760,'孟州市'),(1773,1672,'濮阳'),(1774,1773,'市辖区'),(1775,1773,'市  区'),(1776,1773,'清丰县'),(1777,1773,'南乐县'),(1778,1773,'范  县'),(1779,1773,'台前县'),(1780,1773,'濮阳县'),(1781,1672,'许昌'),(1782,1781,'市辖区'),(1783,1781,'魏都区'),(1784,1781,'许昌县'),(1785,1781,'鄢陵县'),(1786,1781,'襄城县'),(1787,1781,'禹州市'),(1788,1781,'长葛市'),(1789,1672,'漯河'),(1790,1789,'市辖区'),(1791,1789,'源汇区'),(1792,1789,'舞阳县'),(1793,1789,'临颍县'),(1794,1789,'郾城县'),(1795,1672,'三门峡'),(1796,1795,'市辖区'),(1797,1795,'湖滨区'),(1798,1795,'渑池县'),(1799,1795,'陕  县'),(1800,1795,'卢氏县'),(1801,1795,'义马市'),(1802,1795,'灵宝市'),(1803,1672,'南阳'),(1804,1803,'市辖区'),(1805,1803,'宛城区'),(1806,1803,'卧龙区'),(1807,1803,'南召县'),(1808,1803,'方城县'),(1809,1803,'西峡县'),(1810,1803,'镇平县'),(1811,1803,'内乡县'),(1812,1803,'淅川县'),(1813,1803,'社旗县'),(1814,1803,'唐河县'),(1815,1803,'新野县'),(1816,1803,'桐柏县'),(1817,1803,'邓州市'),(1818,1672,'商丘'),(1819,1818,'市辖区'),(1820,1818,'梁园区'),(1821,1818,'睢阳区'),(1822,1818,'民权县'),(1823,1818,'睢  县'),(1824,1818,'宁陵县'),(1825,1818,'柘城县'),(1826,1818,'虞城县'),(1827,1818,'夏邑县'),(1828,1818,'永城市'),(1829,1672,'信阳'),(1830,1829,'市辖区'),(1831,1829,'师河区'),(1832,1829,'平桥区'),(1833,1829,'罗山县'),(1834,1829,'光山县'),(1835,1829,'新  县'),(1836,1829,'商城县'),(1837,1829,'固始县'),(1838,1829,'潢川县'),(1839,1829,'淮滨县'),(1840,1829,'息  县'),(1841,1672,'周口'),(1842,1841,'市辖区'),(1843,1841,'川汇区'),(1844,1841,'扶沟县'),(1845,1841,'西华县'),(1846,1841,'商水县'),(1847,1841,'沈丘县'),(1848,1841,'郸城县'),(1849,1841,'淮阳县'),(1850,1841,'太康县'),(1851,1841,'鹿邑县'),(1852,1841,'项城市'),(1853,1672,'驻马店'),(1854,1853,'市辖区'),(1855,1853,'驿城区'),(1856,1853,'西平县'),(1857,1853,'上蔡县'),(1858,1853,'平舆县'),(1859,1853,'正阳县'),(1860,1853,'确山县'),(1861,1853,'泌阳县'),(1862,1853,'汝南县'),(1863,1853,'遂平县'),(1864,1853,'新蔡县'),(1865,0,'湖北'),(1866,1865,'武汉'),(1867,1866,'市辖区'),(1868,1866,'江岸区'),(1869,1866,'江汉区'),(1870,1866,'乔口区'),(1871,1866,'汉阳区'),(1872,1866,'武昌区'),(1873,1866,'青山区'),(1874,1866,'洪山区'),(1875,1866,'东西湖区'),(1876,1866,'汉南区'),(1877,1866,'蔡甸区'),(1878,1866,'江夏区'),(1879,1866,'黄陂区'),(1880,1866,'新洲区'),(1881,1865,'黄石'),(1882,1881,'市辖区'),(1883,1881,'黄石港区'),(1884,1881,'石灰窑区'),(1885,1881,'下陆区'),(1886,1881,'铁山区'),(1887,1881,'阳新县'),(1888,1881,'大冶市'),(1889,1865,'十堰'),(1890,1889,'市辖区'),(1891,1889,'茅箭区'),(1892,1889,'张湾区'),(1893,1889,'郧  县'),(1894,1889,'郧西县'),(1895,1889,'竹山县'),(1896,1889,'竹溪县'),(1897,1889,'房  县'),(1898,1889,'丹江口市'),(1899,1865,'宜昌'),(1900,1899,'市辖区'),(1901,1899,'西陵区'),(1902,1899,'伍家岗区'),(1903,1899,'点军区'),(1904,1899,'虎亭区'),(1905,1899,'宜昌县'),(1906,1899,'远安县'),(1907,1899,'兴山县'),(1908,1899,'秭归县'),(1909,1899,'长阳土家族自治县'),(1910,1899,'五峰土家族自治县'),(1911,1899,'宜都市'),(1912,1899,'当阳市'),(1913,1899,'枝江市'),(1914,1865,'襄樊'),(1915,1914,'市辖区'),(1916,1914,'襄城区'),(1917,1914,'樊城区'),(1918,1914,'襄阳县'),(1919,1914,'南漳县'),(1920,1914,'谷城县'),(1921,1914,'保康县'),(1922,1914,'老河口市'),(1923,1914,'枣阳市'),(1924,1914,'宜城市'),(1925,1865,'鄂州'),(1926,1925,'市辖区'),(1927,1925,'梁子湖区'),(1928,1925,'华容区'),(1929,1925,'鄂城区'),(1930,1865,'荆门'),(1931,1930,'市辖区'),(1932,1930,'东宝区'),(1933,1930,'京山县'),(1934,1930,'沙洋县'),(1935,1930,'钟祥市'),(1936,1865,'孝感'),(1937,1936,'市辖区'),(1938,1936,'孝南区'),(1939,1936,'孝昌县'),(1940,1936,'大悟县'),(1941,1936,'云梦县'),(1942,1936,'应城市'),(1943,1936,'安陆市'),(1944,1936,'汉川市'),(1945,1865,'荆州'),(1946,1945,'市辖区'),(1947,1945,'沙市区'),(1948,1945,'荆州区'),(1949,1945,'公安县'),(1950,1945,'监利县'),(1951,1945,'江陵县'),(1952,1945,'石首市'),(1953,1945,'洪湖市'),(1954,1945,'松滋市'),(1955,1865,'黄冈'),(1956,1955,'市辖区'),(1957,1955,'黄州区'),(1958,1955,'团风县'),(1959,1955,'红安县'),(1960,1955,'罗田县'),(1961,1955,'英山县'),(1962,1955,'浠水县'),(1963,1955,'蕲春县'),(1964,1955,'黄梅县'),(1965,1955,'麻城市'),(1966,1955,'武穴市'),(1967,1865,'咸宁'),(1968,1967,'市辖区'),(1969,1967,'咸安区'),(1970,1967,'嘉鱼县'),(1971,1967,'通城县'),(1972,1967,'崇阳县'),(1973,1967,'通山县'),(1974,1967,'赤壁市'),(1975,1865,'随州'),(1976,1975,'市辖区'),(1977,1975,'曾都区'),(1978,1975,'广水市'),(1980,1979,'恩施市'),(1981,1979,'利川市'),(1982,1979,'建始县'),(1983,1979,'巴东县'),(1984,1979,'宣恩县'),(1985,1979,'咸丰县'),(1986,1979,'来凤县'),(1987,1979,'鹤峰县'),(1988,1865,'省直辖行政单位'),(1989,1988,'仙桃市'),(1990,1988,'潜江市'),(1991,1988,'天门市'),(1992,1988,'神农架林区'),(1993,0,'湖南'),(1994,1993,'长沙'),(1995,1994,'市辖区'),(1996,1994,'芙蓉区'),(1997,1994,'天心区'),(1998,1994,'岳麓区'),(1999,1994,'开福区'),(2000,1994,'雨花区'),(2001,1994,'长沙县'),(2002,1994,'望城县'),(2003,1994,'宁乡县'),(2004,1994,'浏阳市'),(2005,1993,'株洲'),(2006,2005,'市辖区'),(2007,2005,'荷塘区'),(2008,2005,'芦淞区'),(2009,2005,'石峰区'),(2010,2005,'天元区'),(2011,2005,'株洲县'),(2012,2005,'攸  县'),(2013,2005,'茶陵县'),(2014,2005,'炎陵县'),(2015,2005,'醴陵市'),(2016,1993,'湘潭'),(2017,2016,'市辖区'),(2018,2016,'雨湖区'),(2019,2016,'岳塘区'),(2020,2016,'湘潭县'),(2021,2016,'湘乡市'),(2022,2016,'韶山市'),(2023,1993,'衡阳'),(2024,2023,'市辖区'),(2025,2023,'江东区'),(2026,2023,'城南区'),(2027,2023,'城北区'),(2028,2023,'郊   区'),(2029,2023,'南岳区'),(2030,2023,'衡阳县'),(2031,2023,'衡南县'),(2032,2023,'衡山县'),(2033,2023,'衡东县'),(2034,2023,'祁东县'),(2035,2023,'耒阳市'),(2036,2023,'常宁市'),(2037,1993,'邵阳'),(2038,2037,'市辖区'),(2039,2037,'双清区'),(2040,2037,'大祥区'),(2041,2037,'北塔区'),(2042,2037,'邵东县'),(2043,2037,'新邵县'),(2044,2037,'邵阳县'),(2045,2037,'隆回县'),(2046,2037,'洞口县'),(2047,2037,'绥宁县'),(2048,2037,'新宁县'),(2049,2037,'城步苗族自治县'),(2050,2037,'武冈市'),(2051,1993,'岳阳'),(2052,2051,'市辖区'),(2053,2051,'岳阳楼区'),(2054,2051,'云溪区'),(2055,2051,'君山区'),(2056,2051,'岳阳县'),(2057,2051,'华容县'),(2058,2051,'湘阴县'),(2059,2051,'平江县'),(2060,2051,'汨罗市'),(2061,2051,'临湘市'),(2062,1993,'常德'),(2063,2062,'市辖区'),(2064,2062,'武陵区'),(2065,2062,'鼎城区'),(2066,2062,'安乡县'),(2067,2062,'汉寿县'),(2068,2062,'澧  县'),(2069,2062,'临澧县'),(2070,2062,'桃源县'),(2071,2062,'石门县'),(2072,2062,'津市市'),(2073,1993,'张家界'),(2074,2073,'市辖区'),(2075,2073,'永定区'),(2076,2073,'武陵源区'),(2077,2073,'慈利县'),(2078,2073,'桑植县'),(2079,1993,'益阳'),(2080,2079,'市辖区'),(2081,2079,'资阳区'),(2082,2079,'赫山区'),(2083,2079,'南  县'),(2084,2079,'桃江县'),(2085,2079,'安化县'),(2086,2079,'沅江市'),(2087,1993,'郴州'),(2088,2087,'市辖区'),(2089,2087,'北湖区'),(2090,2087,'苏仙区'),(2091,2087,'桂阳县'),(2092,2087,'宜章县'),(2093,2087,'永兴县'),(2094,2087,'嘉禾县'),(2095,2087,'临武县'),(2096,2087,'汝城县'),(2097,2087,'桂东县'),(2098,2087,'安仁县'),(2099,2087,'资兴市'),(2100,1993,'永州'),(2101,2100,'市辖区'),(2102,2100,'芝山区'),(2103,2100,'冷水滩区'),(2104,2100,'祁阳县'),(2105,2100,'东安县'),(2106,2100,'双牌县'),(2107,2100,'道  县'),(2108,2100,'江永县'),(2109,2100,'宁远县'),(2110,2100,'蓝山县'),(2111,2100,'新田县'),(2112,2100,'江华瑶族自治县'),(2113,1993,'怀化'),(2114,2113,'市辖区'),(2115,2113,'鹤城区'),(2116,2113,'中方县'),(2117,2113,'沅陵县'),(2118,2113,'辰溪县'),(2119,2113,'溆浦县'),(2120,2113,'会同县'),(2121,2113,'麻阳苗族自治县'),(2122,2113,'新晃侗族自治县'),(2123,2113,'芷江侗族自治县'),(2125,2113,'通道侗族自治县'),(2126,2113,'洪江市'),(2127,1993,'娄底'),(2128,2127,'市辖区'),(2129,2127,'娄星区'),(2130,2127,'双峰县'),(2131,2127,'新化县'),(2132,2127,'冷水江市'),(2133,2127,'涟源市'),(2135,2134,'吉首市'),(2136,2134,'泸溪县'),(2137,2134,'凤凰县'),(2138,2134,'花垣县'),(2139,2134,'保靖县'),(2140,2134,'古丈县'),(2141,2134,'永顺县'),(2142,2134,'龙山县'),(2143,0,'广东'),(2144,2143,'广州'),(2145,2144,'市辖区'),(2146,2144,'东山区'),(2147,2144,'荔湾区'),(2148,2144,'越秀区'),(2149,2144,'海珠区'),(2150,2144,'天河区'),(2151,2144,'芳村区'),(2152,2144,'白云区'),(2153,2144,'黄埔区'),(2154,2144,'番禺区'),(2155,2144,'花都区'),(2156,2144,'增城市'),(2157,2144,'从化市'),(2158,2143,'韶关'),(2159,2158,'市辖区'),(2160,2158,'北江区'),(2161,2158,'武江区'),(2162,2158,'浈江区'),(2163,2158,'曲江县'),(2164,2158,'始兴县'),(2165,2158,'仁化县'),(2166,2158,'翁源县'),(2167,2158,'乳源瑶族自治县'),(2168,2158,'新丰县'),(2169,2158,'乐昌市'),(2170,2158,'南雄市'),(2171,2143,'深圳'),(2172,2171,'市辖区'),(2173,2171,'罗湖区'),(2174,2171,'福田区'),(2175,2171,'南山区'),(2176,2171,'宝安区'),(2177,2171,'龙岗区'),(2178,2171,'盐田区'),(2179,2143,'珠海'),(2180,2179,'市辖区'),(2181,2179,'香洲区'),(2182,2179,'斗门县'),(2183,2143,'汕头'),(2184,2183,'市辖区'),(2185,2183,'达濠区'),(2186,2183,'龙湖区'),(2187,2183,'金园区'),(2188,2183,'升平区'),(2189,2183,'河浦区'),(2190,2183,'南澳县'),(2191,2183,'潮阳市'),(2192,2183,'澄海市'),(2193,2143,'佛山'),(2194,2193,'市辖区'),(2195,2193,'城  区'),(2196,2193,'石湾区'),(2197,2193,'顺德市'),(2198,2193,'南海市'),(2199,2193,'三水市'),(2200,2193,'高明市'),(2201,2143,'江门'),(2202,2201,'市辖区'),(2203,2201,'蓬江区'),(2204,2201,'江海区'),(2205,2201,'台山市'),(2206,2201,'新会市'),(2207,2201,'开平市'),(2208,2201,'鹤山市'),(2209,2201,'恩平市'),(2210,2143,'湛江'),(2211,2210,'市辖区'),(2212,2210,'赤坎区'),(2213,2210,'霞山区'),(2214,2210,'坡头区'),(2215,2210,'麻章区'),(2216,2210,'遂溪县'),(2217,2210,'徐闻县'),(2218,2210,'廉江市'),(2219,2210,'雷州市'),(2220,2210,'吴川市'),(2221,2143,'茂名'),(2222,2221,'市辖区'),(2223,2221,'茂南区'),(2224,2221,'电白县'),(2225,2221,'高州市'),(2226,2221,'化州市'),(2227,2221,'信宜市'),(2228,2143,'肇庆'),(2229,2228,'市辖区'),(2230,2228,'端州区'),(2231,2228,'鼎湖区'),(2232,2228,'广宁县'),(2233,2228,'怀集县'),(2234,2228,'封开县'),(2235,2228,'德庆县'),(2236,2228,'高要市'),(2237,2228,'四会市'),(2238,2143,'惠州'),(2239,2238,'市辖区'),(2240,2238,'惠城区'),(2241,2238,'博罗县'),(2242,2238,'惠东县'),(2243,2238,'龙门县'),(2244,2238,'惠阳市'),(2245,2143,'梅州'),(2246,2245,'市辖区'),(2247,2245,'梅江区'),(2248,2245,'梅  县'),(2249,2245,'大埔县'),(2250,2245,'丰顺县'),(2251,2245,'五华县'),(2252,2245,'平远县'),(2253,2245,'蕉岭县'),(2254,2245,'兴宁市'),(2255,2143,'汕尾'),(2256,2255,'市辖区'),(2257,2255,'城  区'),(2258,2255,'海丰县'),(2259,2255,'陆河县'),(2260,2255,'陆丰市'),(2261,2143,'河源'),(2262,2261,'市辖区'),(2263,2261,'源城区'),(2264,2261,'紫金县'),(2265,2261,'龙川县'),(2266,2261,'连平县'),(2267,2261,'和平县'),(2268,2261,'东源县'),(2269,2143,'阳江'),(2270,2269,'市辖区'),(2271,2269,'江城区'),(2272,2269,'阳西县'),(2273,2269,'阳东县'),(2274,2269,'阳春市'),(2275,2143,'清远'),(2276,2275,'市辖区'),(2277,2275,'清城区'),(2278,2275,'佛冈县'),(2279,2275,'阳山县'),(2281,2275,'连南瑶族自治县'),(2282,2275,'清新县'),(2283,2275,'英德市'),(2284,2275,'连州市'),(2285,2143,'东莞'),(2286,2285,'莞城区'),(2287,2285,'东城区'),(2288,2285,'南城区'),(2289,2285,'万江区'),(2290,2143,'中山'),(2291,2290,'石岐区'),(2292,2290,'东区'),(2293,2290,'西区'),(2294,2290,'南区'),(2295,2290,'五桂山'),(2296,2143,'潮州'),(2297,2296,'市辖区'),(2298,2296,'湘桥区'),(2299,2296,'潮安县'),(2300,2296,'饶平县'),(2301,2143,'揭阳'),(2302,2301,'市辖区'),(2303,2301,'榕城区'),(2304,2301,'揭东县'),(2305,2301,'揭西县'),(2306,2301,'惠来县'),(2307,2301,'普宁市'),(2308,2143,'云浮'),(2309,2308,'市辖区'),(2310,2308,'云城区'),(2311,2308,'新兴县'),(2312,2308,'郁南县'),(2313,2308,'云安县'),(2314,2308,'罗定市'),(2315,0,'广西'),(2316,2315,'南宁'),(2317,2316,'市辖区'),(2318,2316,'兴宁区'),(2319,2316,'新城区'),(2320,2316,'城北区'),(2321,2316,'江南区'),(2322,2316,'永新区'),(2323,2316,'市郊区'),(2324,2316,'邕宁县'),(2325,2316,'武鸣县'),(2326,2315,'柳州'),(2327,2326,'市辖区'),(2328,2326,'城中区'),(2329,2326,'鱼峰区'),(2330,2326,'柳南区'),(2331,2326,'柳北区'),(2332,2326,'市郊区'),(2333,2326,'柳江县'),(2334,2326,'柳城县'),(2335,2315,'桂林'),(2336,2335,'市辖区'),(2337,2335,'秀峰区'),(2338,2335,'叠彩区'),(2339,2335,'象山区'),(2340,2335,'七星区'),(2341,2335,'雁山区'),(2342,2335,'阳朔县'),(2343,2335,'临桂县'),(2344,2335,'灵川县'),(2345,2335,'全州县'),(2346,2335,'兴安县'),(2347,2335,'永福县'),(2348,2335,'灌阳县'),(2349,2335,'龙胜各县自治区'),(2350,2335,'资源县'),(2351,2335,'平乐县'),(2352,2335,'荔蒲县'),(2353,2335,'恭城瑶族自治县'),(2354,2315,'梧州'),(2355,2354,'市辖区'),(2356,2354,'万秀区'),(2357,2354,'蝶山区'),(2358,2354,'市郊区'),(2359,2354,'苍梧县'),(2360,2354,'藤  县'),(2361,2354,'蒙山县'),(2362,2354,'岑溪市'),(2363,2315,'北海'),(2364,2363,'市辖区'),(2365,2363,'海城区'),(2366,2363,'银海区'),(2367,2363,'铁山港区'),(2368,2363,'合浦县'),(2369,2315,'防城港'),(2370,2369,'市辖区'),(2371,2369,'港口区'),(2372,2369,'防城区'),(2373,2369,'上思县'),(2374,2369,'东兴市'),(2375,2315,'钦州'),(2376,2375,'市辖区'),(2377,2375,'钦南区'),(2378,2375,'钦北区'),(2379,2375,'浦北县'),(2380,2375,'灵山县'),(2381,2315,'贵港'),(2382,2381,'市辖区'),(2383,2381,'港北区'),(2384,2381,'港南区'),(2385,2381,'平南县'),(2386,2381,'桂平市'),(2387,2315,'玉林'),(2388,2387,'市辖区'),(2389,2387,'玉州区'),(2390,2387,'容  县'),(2391,2387,'陆川县'),(2392,2387,'博白县'),(2393,2387,'兴业县'),(2394,2387,'北流市'),(2395,2315,'南宁地区'),(2396,2395,'凭祥市'),(2397,2395,'横  县'),(2398,2395,'宾阳县'),(2399,2395,'上林县'),(2400,2395,'隆安县'),(2401,2395,'马山县'),(2402,2395,'扶绥县'),(2403,2395,'崇左县'),(2404,2395,'大新县'),(2405,2395,'天等县'),(2406,2395,'宁明县'),(2407,2395,'龙州县'),(2408,2315,'柳州地区'),(2409,2408,'合山市'),(2410,2408,'鹿寨县'),(2411,2408,'象州县'),(2412,2408,'武宣县'),(2413,2408,'来宾县'),(2414,2408,'融安县'),(2415,2408,'三江侗族自治县'),(2416,2408,'融水苗族自治县'),(2417,2408,'金秀瑶族自治县'),(2418,2408,'忻城县'),(2419,2315,'贺州地区'),(2420,2419,'贺州市'),(2421,2419,'昭平县'),(2422,2419,'钟山县'),(2423,2419,'富川瑶族自治县'),(2424,2315,'百色地区'),(2425,2424,'百色市'),(2426,2424,'田阳县'),(2427,2424,'田东县'),(2428,2424,'平果县'),(2429,2424,'德保县'),(2430,2424,'靖西县'),(2431,2424,'那坡县'),(2432,2424,'凌云县'),(2433,2424,'乐业县'),(2434,2424,'田林县'),(2435,2424,'隆林各族自治县'),(2436,2424,'西林县'),(2437,2315,'河池地区'),(2438,2437,'河池市'),(2439,2437,'宜州市'),(2440,2437,'罗城仫佬族自治县'),(2441,2437,'环江毛南族自治县'),(2442,2437,'南丹县'),(2443,2437,'天峨县'),(2444,2437,'凤山县'),(2445,2437,'东兰县'),(2446,2437,'巴马瑶族自治县'),(2447,2437,'都安瑶族自治县'),(2448,2437,'大化瑶族自治县'),(2449,0,'海南'),(2450,2449,'海南'),(2451,2450,'通什市'),(2452,2450,'琼海市'),(2453,2450,'儋州市'),(2454,2450,'琼山市'),(2455,2450,'文昌市'),(2456,2450,'万宁市'),(2457,2450,'东方市'),(2458,2450,'定安县'),(2459,2450,'屯昌县'),(2460,2450,'澄迈县'),(2461,2450,'临高县'),(2462,2450,'白沙黎族自治县'),(2463,2450,'昌江黎族自治县'),(2464,2450,'乐东黎族自治县'),(2465,2450,'陵水黎族自治县'),(2468,2450,'西沙群岛'),(2469,2450,'南沙群岛'),(2471,2449,'海口'),(2472,2471,'市辖区'),(2473,2471,'振东区'),(2474,2471,'新华区'),(2475,2471,'秀英区'),(2476,2449,'三亚'),(2477,2476,'市辖区'),(2478,0,'重庆'),(2479,2478,'重庆市辖'),(2480,2479,'万州区'),(2481,2479,'涪陵区'),(2482,2479,'渝中区'),(2483,2479,'大渡口区'),(2484,2479,'江北区'),(2485,2479,'沙坪坝区'),(2486,2479,'九龙坡区'),(2487,2479,'南岸区'),(2488,2479,'北碚区'),(2489,2479,'万盛区'),(2490,2479,'双桥区'),(2491,2479,'渝北区'),(2492,2479,'巴南区'),(2493,2479,'黔江区'),(2494,2478,'重庆县辖'),(2495,2494,'长寿县'),(2496,2494,'綦江县'),(2497,2494,'潼南县'),(2498,2494,'铜梁县'),(2499,2494,'大足县'),(2500,2494,'荣昌县'),(2501,2494,'璧山县'),(2502,2494,'梁平县'),(2503,2494,'城口县'),(2504,2494,'丰都县'),(2505,2494,'垫江县'),(2506,2494,'武隆县'),(2507,2494,'忠  县'),(2508,2494,'开  县'),(2509,2494,'云阳县'),(2510,2494,'奉节县'),(2511,2494,'巫山县'),(2512,2494,'巫溪县'),(2513,2494,'石柱土家族自治县'),(2517,2478,'重庆县级'),(2518,2517,'江津市'),(2519,2517,'合川市'),(2520,2517,'永川市'),(2521,2517,'南川市'),(2522,0,'四川'),(2523,2522,'成都'),(2524,2523,'市辖区'),(2525,2523,'高新区'),(2526,2523,'锦江区'),(2527,2523,'青羊区'),(2528,2523,'金牛区'),(2529,2523,'武侯区'),(2530,2523,'成华区'),(2531,2523,'龙泉驿区'),(2532,2523,'青白江区'),(2533,2523,'金堂县'),(2534,2523,'双流县'),(2535,2523,'温江县'),(2536,2523,'郫  县'),(2537,2523,'新都县'),(2538,2523,'大邑县'),(2539,2523,'蒲江县'),(2540,2523,'新津县'),(2541,2523,'都江堰市'),(2542,2523,'彭州市'),(2543,2523,'邛崃市'),(2544,2523,'崇州市'),(2545,2522,'自贡'),(2546,2545,'市辖区'),(2547,2545,'自流井区'),(2548,2545,'贡井区'),(2549,2545,'大安区'),(2550,2545,'沿滩区'),(2551,2545,'荣  县'),(2552,2545,'富顺县'),(2553,2522,'攀枝花'),(2554,2553,'市辖区'),(2555,2553,'东  区'),(2556,2553,'西  区'),(2557,2553,'仁和区'),(2558,2553,'米易县'),(2559,2553,'盐边县'),(2560,2522,'泸州'),(2561,2560,'市辖区'),(2562,2560,'江阳区'),(2563,2560,'纳溪区'),(2564,2560,'龙马潭区'),(2565,2560,'泸  县'),(2566,2560,'合江县'),(2567,2560,'叙永县'),(2568,2560,'古蔺县'),(2569,2522,'德阳'),(2570,2569,'市辖区'),(2571,2569,'旌阳区'),(2572,2569,'中江县'),(2573,2569,'罗江县'),(2574,2569,'广汉市'),(2575,2569,'什邡市'),(2576,2569,'绵竹市'),(2577,2522,'绵阳'),(2578,2577,'市辖区'),(2579,2577,'涪城区'),(2580,2577,'游仙区'),(2581,2577,'科学城区'),(2582,2577,'三台县'),(2583,2577,'盐亭县'),(2584,2577,'安  县'),(2585,2577,'梓潼县'),(2586,2577,'北川县'),(2587,2577,'平武县'),(2588,2577,'江油市'),(2589,2522,'广元'),(2590,2589,'市辖区'),(2591,2589,'市中区'),(2592,2589,'元坝区'),(2593,2589,'朝天区'),(2594,2589,'旺苍县'),(2595,2589,'青川县'),(2596,2589,'剑阁县'),(2597,2589,'苍溪县'),(2598,2522,'遂宁'),(2599,2598,'市辖区'),(2600,2598,'市中区'),(2601,2598,'蓬溪县'),(2602,2598,'射洪县'),(2603,2598,'大英县'),(2604,2522,'内江'),(2605,2604,'市辖区'),(2606,2604,'市中区'),(2607,2604,'东兴区'),(2608,2604,'威远县'),(2609,2604,'资中县'),(2610,2604,'隆昌县'),(2611,2522,'乐山'),(2612,2611,'市辖区'),(2613,2611,'市中区'),(2614,2611,'沙湾区'),(2615,2611,'五通桥区'),(2616,2611,'金口河区'),(2617,2611,'犍为县'),(2618,2611,'井研县'),(2619,2611,'夹江县'),(2620,2611,'沐川县'),(2621,2611,'峨边彝族自治县'),(2622,2611,'马边彝族自治县'),(2623,2611,'峨眉山市'),(2624,2522,'南充'),(2625,2624,'市辖区'),(2626,2624,'顺庆区'),(2627,2624,'高坪区'),(2628,2624,'嘉陵区'),(2629,2624,'南部县'),(2630,2624,'营山县'),(2631,2624,'蓬安县'),(2632,2624,'仪陇县'),(2633,2624,'西充县'),(2634,2624,'阆中市'),(2635,2522,'眉山'),(2636,2635,'市辖区'),(2637,2635,'东坡区'),(2638,2635,'仁寿县'),(2639,2635,'彭山县'),(2640,2635,'洪雅县'),(2641,2635,'丹棱县'),(2642,2635,'青神县'),(2643,2522,'宜宾'),(2644,2643,'市辖区'),(2645,2643,'翠屏区'),(2646,2643,'宜宾县'),(2647,2643,'南溪县'),(2648,2643,'江安县'),(2649,2643,'长宁县'),(2650,2643,'高  县'),(2651,2643,'珙  县'),(2652,2643,'筠连县'),(2653,2643,'兴文县'),(2654,2643,'屏山县'),(2655,2522,'广安'),(2656,2655,'市辖区'),(2657,2655,'广安区'),(2658,2655,'岳池县'),(2659,2655,'武胜县'),(2660,2655,'邻水县'),(2661,2655,'华蓥市'),(2662,2522,'达州'),(2663,2662,'市辖区'),(2664,2662,'通川区'),(2665,2662,'达  县'),(2666,2662,'宣汉县'),(2667,2662,'开江县'),(2668,2662,'大竹县'),(2669,2662,'渠  县'),(2670,2662,'万源市'),(2671,2522,'雅安'),(2672,2671,'市辖区'),(2673,2671,'雨城区'),(2674,2671,'名山县'),(2675,2671,'荥经县'),(2676,2671,'汉源县'),(2677,2671,'石棉县'),(2678,2671,'天全县'),(2679,2671,'芦山县'),(2680,2671,'宝兴县'),(2681,2522,'巴中'),(2682,2681,'市辖区'),(2683,2681,'巴州区'),(2684,2681,'通江县'),(2685,2681,'南江县'),(2686,2681,'平昌县'),(2687,2522,'资阳'),(2688,2687,'市辖区'),(2689,2687,'雁江区'),(2690,2687,'安岳县'),(2691,2687,'乐至县'),(2692,2687,'简阳市'),(2694,2693,'汶川县'),(2695,2693,'理  县'),(2696,2693,'茂  县'),(2697,2693,'松潘县'),(2698,2693,'九寨沟县'),(2699,2693,'金川县'),(2700,2693,'小金县'),(2701,2693,'黑水县'),(2702,2693,'马尔康县'),(2703,2693,'壤塘县'),(2704,2693,'阿坝县'),(2705,2693,'若尔盖县'),(2706,2693,'红原县'),(2707,2522,'甘孜藏族自治州'),(2708,2707,'康定县'),(2709,2707,'泸定县'),(2710,2707,'丹巴县'),(2711,2707,'九龙县'),(2712,2707,'雅江县'),(2713,2707,'道孚县'),(2714,2707,'炉霍县'),(2715,2707,'甘孜县'),(2716,2707,'新龙县'),(2717,2707,'德格县'),(2718,2707,'白玉县'),(2719,2707,'石渠县'),(2720,2707,'色达县'),(2721,2707,'理塘县'),(2722,2707,'巴塘县'),(2723,2707,'乡城县'),(2724,2707,'稻城县'),(2725,2707,'得荣县'),(2726,2522,'凉山彝族自治州'),(2727,2726,'西昌市'),(2728,2726,'木里藏族自治县'),(2729,2726,'盐源县'),(2730,2726,'德昌县'),(2731,2726,'会理县'),(2732,2726,'会东县'),(2733,2726,'宁南县'),(2734,2726,'普格县'),(2735,2726,'布拖县'),(2736,2726,'金阳县'),(2737,2726,'昭觉县'),(2738,2726,'喜德县'),(2739,2726,'冕宁县'),(2740,2726,'越西县'),(2741,2726,'甘洛县'),(2742,2726,'美姑县'),(2743,2726,'雷波县'),(2744,0,'贵州'),(2745,2744,'贵阳'),(2746,2745,'市辖区'),(2747,2745,'南明区'),(2748,2745,'云岩区'),(2749,2745,'花溪区'),(2750,2745,'乌当区'),(2751,2745,'白云区'),(2752,2745,'小河区'),(2753,2745,'开阳县'),(2754,2745,'息烽县'),(2755,2745,'修文县'),(2756,2745,'清镇市'),(2757,2744,'六盘水'),(2758,2757,'钟山区'),(2759,2757,'六枝特区'),(2760,2757,'水城县'),(2761,2757,'盘  县'),(2762,2744,'遵义'),(2763,2762,'市辖区'),(2764,2762,'红花岗区'),(2765,2762,'遵义县'),(2766,2762,'桐梓县'),(2767,2762,'绥阳县'),(2768,2762,'正安县'),(2771,2762,'凤冈县'),(2772,2762,'湄潭县'),(2773,2762,'余庆县'),(2774,2762,'习水县'),(2775,2762,'赤水市'),(2776,2762,'仁怀市'),(2777,2744,'安顺'),(2778,2777,'市辖区'),(2779,2777,'西秀区'),(2780,2777,'平坝县'),(2781,2777,'普定县'),(2785,2744,'铜仁地区'),(2786,2785,'铜仁市'),(2787,2785,'江口县'),(2788,2785,'玉屏侗族自治县'),(2789,2785,'石阡县'),(2790,2785,'思南县'),(2792,2785,'德江县'),(2793,2785,'沿河土家族自治县'),(2794,2785,'松桃苗族自治县'),(2795,2785,'万山特区'),(2797,2796,'兴义市'),(2798,2796,'兴仁县'),(2799,2796,'普安县'),(2800,2796,'晴隆县'),(2801,2796,'贞丰县'),(2802,2796,'望谟县'),(2803,2796,'册亨县'),(2804,2796,'安龙县'),(2805,2744,'毕节地区'),(2806,2805,'毕节市'),(2807,2805,'大方县'),(2808,2805,'黔西县'),(2809,2805,'金沙县'),(2810,2805,'织金县'),(2811,2805,'纳雍县'),(2813,2805,'赫章县'),(2815,2814,'凯里市'),(2816,2814,'黄平县'),(2817,2814,'施秉县'),(2818,2814,'三穗县'),(2819,2814,'镇远县'),(2820,2814,'岑巩县'),(2821,2814,'天柱县'),(2822,2814,'锦屏县'),(2823,2814,'剑河县'),(2824,2814,'台江县'),(2825,2814,'黎平县'),(2826,2814,'榕江县'),(2827,2814,'从江县'),(2828,2814,'雷山县'),(2829,2814,'麻江县'),(2830,2814,'丹寨县'),(2832,2831,'都匀市'),(2833,2831,'福泉市'),(2834,2831,'荔波县'),(2835,2831,'贵定县'),(2836,2831,'瓮安县'),(2837,2831,'独山县'),(2838,2831,'平塘县'),(2839,2831,'罗甸县'),(2840,2831,'长顺县'),(2841,2831,'龙里县'),(2842,2831,'惠水县'),(2843,2831,'三都水族自治县'),(2844,0,'云南'),(2845,2844,'昆明'),(2846,2845,'市辖区'),(2847,2845,'五华区'),(2848,2845,'盘龙区'),(2849,2845,'官渡区'),(2850,2845,'西山区'),(2851,2845,'东川区'),(2852,2845,'呈贡县'),(2853,2845,'晋宁县'),(2854,2845,'富民县'),(2855,2845,'宜良县'),(2856,2845,'石林彝族自治县'),(2857,2845,'嵩明县'),(2860,2845,'安宁市'),(2861,2844,'曲靖'),(2862,2861,'市辖区'),(2863,2861,'麒麟区'),(2864,2861,'马龙县'),(2865,2861,'陆良县'),(2866,2861,'师宗县'),(2867,2861,'罗平县'),(2868,2861,'富源县'),(2869,2861,'会泽县'),(2870,2861,'沾益县'),(2871,2861,'宣威市'),(2872,2844,'玉溪'),(2873,2872,'市辖区'),(2874,2872,'红塔区'),(2875,2872,'江川县'),(2876,2872,'澄江县'),(2877,2872,'通海县'),(2878,2872,'华宁县'),(2879,2872,'易门县'),(2880,2872,'峨山彝族自治县'),(2883,2844,'保山'),(2884,2883,'市辖区'),(2885,2883,'隆阳区'),(2886,2883,'施甸县'),(2887,2883,'腾冲县'),(2888,2883,'龙陵县'),(2889,2883,'昌宁县'),(2890,2844,'昭通地区'),(2891,2890,'昭通市'),(2892,2890,'鲁甸县'),(2893,2890,'巧家县'),(2894,2890,'盐津县'),(2895,2890,'大关县'),(2896,2890,'永善县'),(2897,2890,'绥江县'),(2898,2890,'镇雄县'),(2899,2890,'彝良县'),(2900,2890,'威信县'),(2901,2890,'水富县'),(2902,2844,'楚雄彝族自治州'),(2903,2902,'楚雄市'),(2904,2902,'双柏县'),(2905,2902,'牟定县'),(2906,2902,'南华县'),(2907,2902,'姚安县'),(2908,2902,'大姚县'),(2909,2902,'永仁县'),(2910,2902,'元谋县'),(2911,2902,'武定县'),(2912,2902,'禄丰县'),(2914,2913,'个旧市'),(2915,2913,'开远市'),(2916,2913,'蒙自县'),(2917,2913,'屏边苗族自治县'),(2918,2913,'建水县'),(2919,2913,'石屏县'),(2920,2913,'弥勒县'),(2921,2913,'泸西县'),(2922,2913,'元阳县'),(2923,2913,'红河县'),(2925,2913,'绿春县'),(2926,2913,'河口瑶族自治县'),(2928,2927,'文山县'),(2929,2927,'砚山县'),(2930,2927,'西畴县'),(2931,2927,'麻栗坡县'),(2932,2927,'马关县'),(2933,2927,'丘北县'),(2934,2927,'广南县'),(2935,2927,'富宁县'),(2936,2844,'思茅地区'),(2937,2936,'思茅市'),(2939,2936,'墨江哈尼族自治县'),(2940,2936,'景东彝族自治县'),(2945,2936,'澜沧拉祜族自治县'),(2946,2936,'西盟佤族自治县'),(2948,2947,'景洪市'),(2949,2947,'勐海县'),(2950,2947,'勐腊县'),(2951,2844,'大理白族自治州'),(2952,2951,'大理市'),(2953,2951,'漾濞彝族自治县'),(2954,2951,'祥云县'),(2955,2951,'宾川县'),(2956,2951,'弥渡县'),(2957,2951,'南涧彝族自治县'),(2959,2951,'永平县'),(2960,2951,'云龙县'),(2961,2951,'洱源县'),(2962,2951,'剑川县'),(2963,2951,'鹤庆县'),(2965,2964,'瑞丽市'),(2966,2964,'潞西市'),(2967,2964,'梁河县'),(2968,2964,'盈江县'),(2969,2964,'陇川县'),(2970,2844,'丽江地区'),(2971,2970,'丽江纳西族自治县'),(2972,2970,'永胜县'),(2973,2970,'华坪县'),(2974,2970,'宁蒗彝族自治县'),(2975,2844,'怒江傈僳族自治州'),(2976,2975,'泸水县'),(2977,2975,'福贡县'),(2980,2844,'迪庆藏族自治州'),(2981,2980,'中甸县'),(2982,2980,'德钦县'),(2983,2980,'维西傈僳族自治县'),(2984,2844,'临沧地区'),(2985,2984,'临沧县'),(2986,2984,'凤庆县'),(2987,2984,'云  县'),(2988,2984,'永德县'),(2989,2984,'镇康县'),(2992,2984,'沧源佤族自治县'),(2993,0,'西藏'),(2994,2993,'拉萨'),(2995,2994,'市辖区'),(2996,2994,'城关区'),(2997,2994,'林周县'),(2998,2994,'当雄县'),(2999,2994,'尼木县'),(3000,2994,'曲水县'),(3001,2994,'堆龙德庆县'),(3002,2994,'达孜县'),(3003,2994,'墨竹工卡县'),(3004,2993,'昌都地区'),(3005,3004,'昌都县'),(3006,3004,'江达县'),(3007,3004,'贡觉县'),(3008,3004,'类乌齐县'),(3009,3004,'丁青县'),(3010,3004,'察雅县'),(3011,3004,'八宿县'),(3012,3004,'左贡县'),(3013,3004,'芒康县'),(3014,3004,'洛隆县'),(3015,3004,'边坝县'),(3016,2993,'山南地区'),(3017,3016,'乃东县'),(3018,3016,'扎囊县'),(3019,3016,'贡嘎县'),(3020,3016,'桑日县'),(3021,3016,'琼结县'),(3022,3016,'曲松县'),(3023,3016,'措美县'),(3024,3016,'洛扎县'),(3025,3016,'加查县'),(3026,3016,'隆子县'),(3027,3016,'错那县'),(3028,3016,'浪卡子县'),(3029,2993,'日喀则地区'),(3030,3029,'日喀则市'),(3031,3029,'南木林县'),(3032,3029,'江孜县'),(3033,3029,'定日县'),(3034,3029,'萨迦县'),(3035,3029,'拉孜县'),(3036,3029,'昂仁县'),(3037,3029,'谢通门县'),(3038,3029,'白朗县'),(3039,3029,'仁布县'),(3040,3029,'康马县'),(3041,3029,'定结县'),(3042,3029,'仲巴县'),(3043,3029,'亚东县'),(3044,3029,'吉隆县'),(3045,3029,'聂拉木县'),(3046,3029,'萨嘎县'),(3047,3029,'岗巴县'),(3048,2993,'那曲地区'),(3049,3048,'那曲县'),(3050,3048,'嘉黎县'),(3051,3048,'比如县'),(3052,3048,'聂荣县'),(3053,3048,'安多县'),(3054,3048,'申扎县'),(3055,3048,'索  县'),(3056,3048,'班戈县'),(3057,3048,'巴青县'),(3058,3048,'尼玛县'),(3059,2993,'阿里地区'),(3060,3059,'普兰县'),(3061,3059,'札达县'),(3062,3059,'噶尔县'),(3063,3059,'日土县'),(3064,3059,'革吉县'),(3065,3059,'改则县'),(3066,3059,'措勤县'),(3067,2993,'林芝地区'),(3068,3067,'林芝县'),(3069,3067,'工布江达县'),(3070,3067,'米林县'),(3071,3067,'墨脱县'),(3072,3067,'波密县'),(3073,3067,'察隅县'),(3074,3067,'朗  县'),(3075,0,'陕西'),(3076,3075,'西安'),(3077,3076,'市辖区'),(3078,3076,'新城区'),(3079,3076,'碑林区'),(3080,3076,'莲湖区'),(3081,3076,'灞桥区'),(3082,3076,'未央区'),(3083,3076,'雁塔区'),(3084,3076,'阎良区'),(3085,3076,'临潼区'),(3086,3076,'长安县'),(3087,3076,'蓝田县'),(3088,3076,'周至县'),(3089,3076,'户  县'),(3090,3076,'高陵县'),(3091,3075,'铜川'),(3092,3091,'市辖区'),(3093,3091,'王益区'),(3094,3091,'印台区'),(3095,3091,'耀  县'),(3096,3091,'宜君县'),(3097,3075,'宝鸡'),(3098,3097,'市辖区'),(3099,3097,'渭滨区'),(3100,3097,'金台区'),(3101,3097,'宝鸡县'),(3102,3097,'凤翔县'),(3103,3097,'岐山县'),(3104,3097,'扶风县'),(3105,3097,'眉  县'),(3106,3097,'陇  县'),(3107,3097,'千阳县'),(3108,3097,'麟游县'),(3109,3097,'凤  县'),(3110,3097,'太白县'),(3111,3075,'咸阳'),(3112,3111,'市辖区'),(3113,3111,'秦都区'),(3114,3111,'杨陵区'),(3115,3111,'渭城区'),(3116,3111,'三原县'),(3117,3111,'泾阳县'),(3118,3111,'乾  县'),(3119,3111,'礼泉县'),(3120,3111,'永寿县'),(3121,3111,'彬  县'),(3122,3111,'长武县'),(3123,3111,'旬邑县'),(3124,3111,'淳化县'),(3125,3111,'武功县'),(3126,3111,'兴平市'),(3127,3075,'渭南'),(3128,3127,'市辖区'),(3129,3127,'临渭区'),(3130,3127,'华  县'),(3131,3127,'潼关县'),(3132,3127,'大荔县'),(3133,3127,'合阳县'),(3134,3127,'澄城县'),(3135,3127,'蒲城县'),(3136,3127,'白水县'),(3137,3127,'富平县'),(3138,3127,'韩城市'),(3139,3127,'华阴市'),(3140,3075,'延安'),(3141,3140,'市辖区'),(3142,3140,'宝塔区'),(3143,3140,'延长县'),(3144,3140,'延川县'),(3145,3140,'子长县'),(3146,3140,'安塞县'),(3147,3140,'志丹县'),(3148,3140,'吴旗县'),(3149,3140,'甘泉县'),(3150,3140,'富  县'),(3151,3140,'洛川县'),(3152,3140,'宜川县'),(3153,3140,'黄龙县'),(3154,3140,'黄陵县'),(3155,3075,'汉中'),(3156,3155,'市辖区'),(3157,3155,'汉台区'),(3158,3155,'南郑县'),(3159,3155,'城固县'),(3160,3155,'洋  县'),(3161,3155,'西乡县'),(3162,3155,'勉  县'),(3163,3155,'宁强县'),(3164,3155,'略阳县'),(3165,3155,'镇巴县'),(3166,3155,'留坝县'),(3167,3155,'佛坪县'),(3168,3075,'榆林'),(3169,3168,'市辖区'),(3170,3168,'榆阳区'),(3171,3168,'神木县'),(3172,3168,'府谷县'),(3173,3168,'横山县'),(3174,3168,'靖边县'),(3175,3168,'定边县'),(3176,3168,'绥德县'),(3177,3168,'米脂县'),(3178,3168,'佳  县'),(3179,3168,'吴堡县'),(3180,3168,'清涧县'),(3181,3168,'子洲县'),(3182,3075,'安康'),(3183,3182,'市辖区'),(3184,3182,'汉滨区'),(3185,3182,'汉阴县'),(3186,3182,'石泉县'),(3187,3182,'宁陕县'),(3188,3182,'紫阳县'),(3189,3182,'岚皋县'),(3190,3182,'平利县'),(3191,3182,'镇坪县'),(3192,3182,'旬阳县'),(3193,3182,'白河县'),(3194,3075,'商洛地区'),(3195,3194,'商州市'),(3196,3194,'洛南县'),(3197,3194,'丹凤县'),(3198,3194,'商南县'),(3199,3194,'山阳县'),(3200,3194,'镇安县'),(3201,3194,'柞水县'),(3202,0,'甘肃'),(3203,3202,'兰州'),(3204,3203,'市辖区'),(3205,3203,'城关区'),(3206,3203,'七里河区'),(3207,3203,'西固区'),(3208,3203,'安宁区'),(3209,3203,'红古区'),(3210,3203,'永登县'),(3211,3203,'皋兰县'),(3212,3203,'榆中县'),(3213,3202,'嘉峪关'),(3214,3213,'市辖区'),(3215,3202,'金昌'),(3216,3215,'市辖区'),(3217,3215,'金川区'),(3218,3215,'永昌县'),(3219,3202,'白银'),(3220,3219,'市辖区'),(3221,3219,'白银区'),(3222,3219,'平川区'),(3223,3219,'靖远县'),(3224,3219,'会宁县'),(3225,3219,'景泰县'),(3226,3202,'天水'),(3227,3226,'市辖区'),(3228,3226,'秦城区'),(3229,3226,'北道区'),(3230,3226,'清水县'),(3231,3226,'秦安县'),(3232,3226,'甘谷县'),(3233,3226,'武山县'),(3234,3226,'张家川回族自治县'),(3235,3202,'酒泉地区'),(3236,3235,'玉门市'),(3237,3235,'酒泉市'),(3238,3235,'敦煌市'),(3239,3235,'金塔县'),(3240,3235,'肃北蒙古族自治县'),(3242,3235,'安西县'),(3243,3202,'张掖地区'),(3244,3243,'张掖市'),(3245,3243,'肃南裕固族自治县'),(3246,3243,'民乐县'),(3247,3243,'临泽县'),(3248,3243,'高台县'),(3249,3243,'山丹县'),(3250,3202,'武威地区'),(3251,3250,'武威市'),(3252,3250,'民勤县'),(3253,3250,'古浪县'),(3254,3250,'天祝藏族自治县'),(3255,3202,'定西地区'),(3256,3255,'定西县'),(3257,3255,'通渭县'),(3258,3255,'陇西县'),(3259,3255,'渭源县'),(3260,3255,'临洮县'),(3261,3255,'漳  县'),(3262,3255,'岷  县'),(3263,3202,'陇南地区'),(3264,3263,'武都县'),(3265,3263,'宕昌县'),(3266,3263,'成  县'),(3267,3263,'康  县'),(3268,3263,'文  县'),(3269,3263,'西和县'),(3270,3263,'礼  县'),(3271,3263,'两当县'),(3272,3263,'徽  县'),(3273,3202,'平凉地区'),(3274,3273,'平凉市'),(3275,3273,'泾川县'),(3276,3273,'灵台县'),(3277,3273,'崇信县'),(3278,3273,'华亭县'),(3279,3273,'庄浪县'),(3280,3273,'静宁县'),(3281,3202,'庆阳地区'),(3282,3281,'西峰市'),(3283,3281,'庆阳县'),(3284,3281,'环  县'),(3285,3281,'华池县'),(3286,3281,'合水县'),(3287,3281,'正宁县'),(3288,3281,'宁  县'),(3289,3281,'镇原县'),(3290,3202,'临夏回族自治州'),(3291,3290,'临夏市'),(3292,3290,'临夏县'),(3293,3290,'康乐县'),(3294,3290,'永靖县'),(3295,3290,'广河县'),(3296,3290,'和政县'),(3297,3290,'东乡族自治县'),(3299,3202,'甘南藏族自治州'),(3300,3299,'合作市'),(3301,3299,'临潭县'),(3302,3299,'卓尼县'),(3303,3299,'舟曲县'),(3304,3299,'迭部县'),(3305,3299,'玛曲县'),(3306,3299,'碌曲县'),(3307,3299,'夏河县'),(3308,0,'青海'),(3309,3308,'西宁'),(3310,3309,'市辖区'),(3311,3309,'城东区'),(3312,3309,'城中区'),(3313,3309,'城西区'),(3314,3309,'城北区'),(3316,3309,'湟中县'),(3317,3309,'湟源县'),(3318,3308,'海东地区'),(3319,3318,'平安县'),(3321,3318,'乐都县'),(3322,3318,'互助土族自治县'),(3323,3318,'化隆回族自治县'),(3324,3318,'循化撒拉族自治县'),(3325,3308,'海北藏族自治州'),(3326,3325,'门源回族自治县'),(3327,3325,'祁连县'),(3328,3325,'海晏县'),(3329,3325,'刚察县'),(3330,3308,'黄南藏族自治州'),(3331,3330,'同仁县'),(3332,3330,'尖扎县'),(3333,3330,'泽库县'),(3334,3330,'河南蒙古族自治县'),(3335,3308,'海南藏族自治州'),(3336,3335,'共和县'),(3337,3335,'同德县'),(3338,3335,'贵德县'),(3339,3335,'兴海县'),(3340,3335,'贵南县'),(3341,3308,'果洛藏族自治州'),(3342,3341,'玛沁县'),(3343,3341,'班玛县'),(3344,3341,'甘德县'),(3345,3341,'达日县'),(3346,3341,'久治县'),(3347,3341,'玛多县'),(3348,3308,'玉树藏族自治州'),(3349,3348,'玉树县'),(3350,3348,'杂多县'),(3351,3348,'称多县'),(3352,3348,'治多县'),(3353,3348,'囊谦县'),(3354,3348,'曲麻莱县'),(3356,3355,'格尔木市'),(3357,3355,'德令哈市'),(3358,3355,'乌兰县'),(3359,3355,'都兰县'),(3360,3355,'天峻县'),(3361,0,'宁夏'),(3362,3361,'银川'),(3363,3362,'市辖区'),(3364,3362,'城  区'),(3365,3362,'新城区'),(3366,3362,'郊  区'),(3367,3362,'永宁县'),(3368,3362,'贺兰县'),(3369,3361,'石嘴山'),(3370,3369,'市辖区'),(3371,3369,'大武口区'),(3372,3369,'石嘴山区'),(3373,3369,'石炭井区'),(3374,3369,'平罗县'),(3375,3369,'陶乐县'),(3376,3369,'惠农县'),(3377,3361,'吴忠'),(3378,3377,'市辖区'),(3379,3377,'利通区'),(3380,3377,'中卫县'),(3381,3377,'中宁县'),(3382,3377,'盐池县'),(3383,3377,'同心县'),(3384,3377,'青铜峡市'),(3385,3377,'灵武市'),(3386,3361,'固原地区'),(3387,3386,'固原县'),(3388,3386,'海原县'),(3389,3386,'西吉县'),(3390,3386,'隆德县'),(3391,3386,'泾源县'),(3392,3386,'彭阳县'),(3393,0,'新疆'),(3394,3393,'乌鲁木齐'),(3395,3394,'市辖区'),(3396,3394,'天山区'),(3397,3394,'沙依巴克区'),(3398,3394,'新市区'),(3399,3394,'水磨沟区'),(3400,3394,'头屯河区'),(3401,3394,'南泉区'),(3402,3394,'东山区'),(3403,3394,'乌鲁木齐县'),(3404,3393,'克拉玛依'),(3405,3404,'市辖区'),(3406,3404,'独山子区'),(3407,3404,'克拉玛依区'),(3408,3404,'白碱滩区'),(3409,3404,'乌尔禾区'),(3410,3393,'吐鲁番地区'),(3411,3410,'吐鲁番市'),(3412,3410,'鄯善县'),(3413,3410,'托克逊县'),(3414,3393,'哈密地区'),(3415,3414,'哈密市'),(3417,3414,'伊吾县'),(3418,3393,'昌吉回族自治州'),(3419,3418,'昌吉市'),(3420,3418,'阜康市'),(3421,3418,'米泉市'),(3422,3418,'呼图壁县'),(3423,3418,'玛纳斯县'),(3424,3418,'奇台县'),(3425,3418,'吉木萨尔县'),(3426,3418,'木垒哈萨克自治县'),(3428,3427,'博乐市'),(3429,3427,'精河县'),(3430,3427,'温泉县'),(3432,3431,'库尔勒市'),(3433,3431,'轮台县'),(3434,3431,'尉犁县'),(3435,3431,'若羌县'),(3436,3431,'且末县'),(3437,3431,'焉耆回族自治县'),(3438,3431,'和静县'),(3439,3431,'和硕县'),(3440,3431,'博湖县'),(3441,3393,'阿克苏地区'),(3442,3441,'阿克苏市'),(3443,3441,'温宿县'),(3444,3441,'库车县'),(3445,3441,'沙雅县'),(3446,3441,'新和县'),(3447,3441,'拜城县'),(3448,3441,'乌什县'),(3449,3441,'阿瓦提县'),(3450,3441,'柯坪县'),(3452,3451,'阿图什市'),(3453,3451,'阿克陶县'),(3454,3451,'阿合奇县'),(3455,3451,'乌恰县'),(3456,3393,'喀什地区'),(3457,3456,'喀什市'),(3458,3456,'疏附县'),(3459,3456,'疏勒县'),(3460,3456,'英吉沙县'),(3461,3456,'泽普县'),(3462,3456,'莎车县'),(3463,3456,'叶城县'),(3464,3456,'麦盖提县'),(3465,3456,'岳普湖县'),(3466,3456,'伽师县'),(3467,3456,'巴楚县'),(3469,3393,'和田地区'),(3470,3469,'和田市'),(3471,3469,'和田县'),(3472,3469,'墨玉县'),(3473,3469,'皮山县'),(3474,3469,'洛浦县'),(3475,3469,'策勒县'),(3476,3469,'于田县'),(3477,3469,'民丰县'),(3478,3393,'伊犁哈萨克自治州'),(3479,3478,'奎屯市'),(3480,3393,'伊犁地区'),(3481,3480,'伊宁市'),(3482,3480,'伊宁县'),(3484,3480,'霍城县'),(3485,3480,'巩留县'),(3486,3480,'新源县'),(3487,3480,'昭苏县'),(3488,3480,'特克斯县'),(3489,3480,'尼勒克县'),(3490,3393,'塔城地区'),(3491,3490,'塔城市'),(3492,3490,'乌苏市'),(3493,3490,'额敏县'),(3494,3490,'沙湾县'),(3495,3490,'托里县'),(3496,3490,'裕民县'),(3498,3393,'阿勒泰地区'),(3499,3498,'阿勒泰市'),(3500,3498,'布尔津县'),(3501,3498,'富蕴县'),(3502,3498,'福海县'),(3503,3498,'哈巴河县'),(3504,3498,'青河县'),(3505,3498,'吉木乃县'),(3506,3393,'省直辖行政单位'),(3507,3506,'石河子市'),(3508,0,'台湾'),(3509,0,'香港'),(3510,0,'澳门');
/*!40000 ALTER TABLE `think_province_city_area` ENABLE KEYS */;

#
# Structure for table "think_supplier"
#

DROP TABLE IF EXISTS `think_supplier`;
CREATE TABLE `think_supplier` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商id',
  `sname` varchar(150) NOT NULL COMMENT '供应商名称',
  `style` tinyint(1) NOT NULL COMMENT '供应商类型 1机构 2讲师',
  `sc_type` int(11) NOT NULL COMMENT '擅长类型id',
  `main_course` varchar(150) NOT NULL COMMENT '主打课程',
  `linkman` varchar(100) NOT NULL COMMENT '联系人',
  `position` varchar(100) NOT NULL COMMENT '职位',
  `tel` varchar(255) NOT NULL COMMENT '电话号码',
  `phone_number` varchar(255) NOT NULL COMMENT '手机号',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='供应商表';

#
# Data for table "think_supplier"
#

INSERT INTO `think_supplier` VALUES (6,'44444',2,4,'33333','3333','33e','wew','11111'),(7,'435345',2,2,'4二二二特','伟热热热','热吻二二二','二二二热','二人台二'),(8,'44444',2,2,'44444','444','4444','44444','4444444'),(9,'(⊙o⊙)…ee',2,4,'(⊙o⊙)…(⊙o⊙)…(⊙o⊙)…','额鹅鹅鹅','呃呃呃','恩恩','呃呃呃'),(11,'对对对',1,4,'饿肚肚','呃呃呃额额','额鹅鹅鹅','呃呃呃e','呃呃呃额额'),(12,'柔柔弱弱',1,4,'柔柔弱弱若','柔柔弱弱','柔柔弱弱若','柔柔弱弱若','柔柔弱弱若'),(13,'444',1,3,'4444','4444','44444','44444','4444'),(14,'3333',1,2,'呃呃呃','额鹅鹅鹅','呃呃呃','呃呃呃','33333'),(15,'555',2,3,'5555','5555','5555','55555','5555');

#
# Structure for table "think_supplier_type"
#

DROP TABLE IF EXISTS `think_supplier_type`;
CREATE TABLE `think_supplier_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `tname` varchar(100) NOT NULL COMMENT '供应商擅长类别名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='供应商类别表';

#
# Data for table "think_supplier_type"
#

INSERT INTO `think_supplier_type` VALUES (1,'人力资源'),(2,'人力资源管理1'),(3,'人力资源2'),(4,'人力资源管理3'),(5,'人力资源52'),(12,'社会管理565'),(13,'社会管理268');

#
# Structure for table "think_survey"
#

DROP TABLE IF EXISTS `think_survey`;
CREATE TABLE `think_survey` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `survey_name` varchar(60) NOT NULL DEFAULT '' COMMENT '调研名称',
  `survey_cat_id` smallint(30) NOT NULL COMMENT '分类ID',
  `survey_score` tinyint(6) NOT NULL DEFAULT '0' COMMENT '调研分数',
  `survey_heir` varchar(60) DEFAULT '' COMMENT '上传人',
  `survey_upload_time` datetime NOT NULL COMMENT '上传时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示待审核，1表示已通过，3表示已拒绝',
  `is_available` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用，0表示禁用，1表示启用',
  `principal` varchar(60) NOT NULL DEFAULT '' COMMENT '负责人',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `survey_mode` tinyint(1) NOT NULL COMMENT '调研方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "think_survey"
#

INSERT INTO `think_survey` VALUES (1,'金融服务礼仪认知调查问卷',1,100,'光头强','2016-12-06 15:05:17',1,1,'熊二','2016-12-03 15:05:33','2017-01-13 15:05:39',1),(2,'素质教育程度调查问卷',1,100,'光头强','2016-12-14 15:07:46',3,1,'熊大','2016-12-20 15:08:12','2016-12-26 15:08:17',0);

#
# Structure for table "think_survey_category"
#

DROP TABLE IF EXISTS `think_survey_category`;
CREATE TABLE `think_survey_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `sort` int(10) NOT NULL DEFAULT '1' COMMENT '排序',
  `cat_name` varchar(50) DEFAULT '' COMMENT '栏目分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "think_survey_category"
#

INSERT INTO `think_survey_category` VALUES (1,0,1,'法治科普类'),(2,0,2,'素质教育类');

#
# Structure for table "think_tissue_group_access"
#

DROP TABLE IF EXISTS `think_tissue_group_access`;
CREATE TABLE `think_tissue_group_access` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `tissue_id` int(11) NOT NULL COMMENT '组织架构关联字段',
  `manage_id` int(11) NOT NULL DEFAULT '0' COMMENT '组织架构权限,0-普通用户,1-管理员,2-负责人',
  KEY `tissue_id` (`tissue_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "think_tissue_group_access"
#


#
# Structure for table "think_tissue_rule"
#

DROP TABLE IF EXISTS `think_tissue_rule`;
CREATE TABLE `think_tissue_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '组织架构表',
  `pid` int(11) DEFAULT NULL COMMENT '组织架构级别，0一级，1二级',
  `title` varchar(120) DEFAULT '' COMMENT '组织名称',
  `rules` text COMMENT '规则ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "think_tissue_rule"
#


#
# Structure for table "think_user_company"
#

DROP TABLE IF EXISTS `think_user_company`;
CREATE TABLE `think_user_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `company_id` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "think_user_company"
#

INSERT INTO `think_user_company` VALUES (1,88,1),(2,89,1);

#
# Structure for table "think_users"
#

DROP TABLE IF EXISTS `think_users`;
CREATE TABLE `think_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；mb_password加密',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像，相对于upload/avatar目录',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `email_code` varchar(60) DEFAULT NULL COMMENT '激活码',
  `phone` bigint(11) unsigned DEFAULT NULL COMMENT '手机号',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '用户状态 0：拒绝； 1：审核通过 ；2：待审核 ; 3 逻辑删除',
  `register_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `last_login_time` int(10) unsigned NOT NULL COMMENT '最后登录时间',
  `job_number` varchar(18) DEFAULT '' COMMENT '工号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

#
# Data for table "think_users"
#

INSERT INTO `think_users` VALUES (88,'admin','e10adc3949ba59abbe56e057f20f883e','/Upload/avatar/user1.jpg','','',NULL,1,1449199996,'',0,''),(89,'admin2','e10adc3949ba59abbe56e057f20f883e','/Upload/avatar/user2.jpg','','',NULL,1,1449199996,'',0,''),(90,'admin3','e10adc3949ba59abbe56e057f20f883e','','','',0,1,1449199996,'',0,''),(91,'Andy22222','e10adc3949ba59abbe56e057f20f883e','','',NULL,18682380839,1,1482454971,'',0,''),(92,'shineen','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(93,'shineen1','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(94,'shineen2','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(95,'shineen3','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(96,'shineen4','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(97,'shineen5','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(98,'shineen6','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(99,'shineen7','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,3,1482459790,'',0,''),(100,'shineen8','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(101,'shineen9','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(102,'shineen10','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(103,'shineen11','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(104,'shineen12','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(105,'shineen13','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(106,'shineen14','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(107,'shineen15','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(108,'shineen16','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,3,1482459790,'',0,''),(109,'shineen17','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,3,1482459790,'',0,''),(110,'shineen18','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,3,1482459790,'',0,''),(111,'shineen19','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(112,'shineen20','25d55ad283aa400af464c76d713c07ad','','',NULL,17052737268,1,1482459790,'',0,''),(113,'shineen21','e10adc3949ba59abbe56e057f20f883e','','',NULL,13760475648,1,1482739726,'',0,''),(114,'佳123456','fcea920f7412b5da7be0cf42b8c93759','','',NULL,13590157414,2,1482885794,'',0,''),(115,'1111111','7fa8282ad93047a4d6fe6111c93b308a','','',NULL,18175676368,2,1482886556,'',0,''),(116,'后台管理员','e10adc3949ba59abbe56e057f20f883e','','275156029@qq.com',NULL,13800138000,1,1482895718,'',0,'');
