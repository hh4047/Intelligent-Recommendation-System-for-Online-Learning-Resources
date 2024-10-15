/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xsxuexiziliaotuijian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xsxuexiziliaotuijian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xsxuexiziliaotuijian`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'ziliao_types','学习资料类型',1,'学习资料类型1',NULL,NULL,'2023-04-12 16:32:42'),(2,'ziliao_types','学习资料类型',2,'学习资料类型2',NULL,NULL,'2023-04-12 16:32:42'),(3,'ziliao_types','学习资料类型',3,'学习资料类型3',NULL,NULL,'2023-04-12 16:32:43'),(4,'ziliao_yesno_types','学习资料审核',1,'待审核',NULL,NULL,'2023-04-12 16:32:43'),(5,'ziliao_yesno_types','学习资料审核',2,'通过',NULL,NULL,'2023-04-12 16:32:43'),(6,'ziliao_yesno_types','学习资料审核',3,'拒绝',NULL,NULL,'2023-04-12 16:32:43'),(7,'ziliao_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-12 16:32:43'),(8,'ziliao_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-12 16:32:43'),(9,'ziliao_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-12 16:32:43'),(10,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-12 16:32:43'),(11,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-12 16:32:43'),(12,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-12 16:32:43'),(13,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-12 16:32:43'),(14,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-12 16:32:43'),(15,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-12 16:32:43'),(16,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-12 16:32:43');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jiaoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',354,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',295,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(3,'帖子标题3',2,NULL,NULL,'发布内容3',58,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',180,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',112,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(6,'帖子标题6',2,NULL,NULL,'发布内容6',12,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',272,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',155,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',209,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',275,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',318,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',274,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(14,'帖子标题14',1,NULL,NULL,'发布内容14',326,1,'2023-04-12 17:16:17','2023-04-12 17:16:17','2023-04-12 17:16:17'),(15,NULL,1,NULL,NULL,'登录后才能进入数据详情页\n',14,2,'2023-04-13 10:12:38',NULL,'2023-04-13 10:12:38'),(17,NULL,NULL,1,NULL,'22222222222222222',14,2,'2023-04-13 10:13:35',NULL,'2023-04-13 10:13:35'),(18,NULL,NULL,NULL,1,'33333333333333333333',14,2,'2023-04-13 10:14:22',NULL,'2023-04-13 10:14:22');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_phone`,`jiaoshi_id_number`,`jiaoshi_photo`,`sex_types`,`jiaoshi_email`,`create_time`) values (1,'a1','123456','教师姓名1','17703786901','410224199010102001','upload/jiaoshi1.jpg',1,'1@qq.com','2023-04-12 17:16:17'),(2,'a2','123456','教师姓名2','17703786902','410224199010102002','upload/jiaoshi2.jpg',1,'2@qq.com','2023-04-12 17:16:17'),(3,'a3','123456','教师姓名3','17703786903','410224199010102003','upload/jiaoshi3.jpg',2,'3@qq.com','2023-04-12 17:16:17');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告信息标题1',3,'upload/news1.jpg','2023-04-12 17:16:17','公告信息详情1','2023-04-12 17:16:17'),(2,'公告信息标题2',1,'upload/news2.jpg','2023-04-12 17:16:17','公告信息详情2','2023-04-12 17:16:17'),(3,'公告信息标题3',3,'upload/news3.jpg','2023-04-12 17:16:17','公告信息详情3','2023-04-12 17:16:17'),(4,'公告信息标题4',2,'upload/news4.jpg','2023-04-12 17:16:17','公告信息详情4','2023-04-12 17:16:17'),(5,'公告信息标题5',1,'upload/news5.jpg','2023-04-12 17:16:17','公告信息详情5','2023-04-12 17:16:17'),(6,'公告信息标题6',1,'upload/news6.jpg','2023-04-12 17:16:17','公告信息详情6','2023-04-12 17:16:17'),(7,'公告信息标题7',2,'upload/news7.jpg','2023-04-12 17:16:17','公告信息详情7','2023-04-12 17:16:17'),(8,'公告信息标题8',1,'upload/news8.jpg','2023-04-12 17:16:17','公告信息详情8','2023-04-12 17:16:17'),(9,'公告信息标题9',2,'upload/news9.jpg','2023-04-12 17:16:17','公告信息详情9','2023-04-12 17:16:17'),(10,'公告信息标题10',2,'upload/news10.jpg','2023-04-12 17:16:17','公告信息详情10','2023-04-12 17:16:17'),(11,'公告信息标题11',3,'upload/news11.jpg','2023-04-12 17:16:17','公告信息详情11','2023-04-12 17:16:17'),(12,'公告信息标题12',2,'upload/news12.jpg','2023-04-12 17:16:17','公告信息详情12','2023-04-12 17:16:17'),(13,'公告信息标题13',3,'upload/news13.jpg','2023-04-12 17:16:17','公告信息详情13','2023-04-12 17:16:17'),(14,'公告信息标题14',1,'upload/news14.jpg','2023-04-12 17:16:17','公告信息详情14','2023-04-12 17:16:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '采购员id',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','学生','zdzlvr3o9oqw3vejfsd3ythhs0jr0yzk','2023-04-12 17:40:52','2023-04-13 11:11:39'),(2,1,'admin','users','管理员','g8kzkg9j1sz8aiy4lmyfe0g8raayjlpj','2023-04-12 17:58:19','2023-04-13 11:15:23'),(3,1,'a1','jiaoshi','教师','d8sodok6bg81sfbkbu75y5wid8uskpha','2023-04-13 10:13:15','2023-04-13 11:13:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-12 16:32:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','学生姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-04-12 17:16:17'),(2,'a2','123456','学生姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-04-12 17:16:17'),(3,'a3','123456','学生姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-04-12 17:16:17');

/*Table structure for table `ziliao` */

DROP TABLE IF EXISTS `ziliao`;

CREATE TABLE `ziliao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `ziliao_name` varchar(200) DEFAULT NULL COMMENT '学习资料标题  Search111 ',
  `ziliao_photo` varchar(200) DEFAULT NULL COMMENT '学习资料照片',
  `ziliao_file` varchar(200) DEFAULT NULL COMMENT '学习资料文件',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `ziliao_types` int(11) DEFAULT NULL COMMENT '学习资料类型 Search111',
  `ziliao_content` text COMMENT '详情 ',
  `ziliao_yesno_types` int(11) DEFAULT NULL COMMENT '学习资料审核 Search111',
  `ziliao_yesno_text` text COMMENT '审核回复 ',
  `ziliao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='学习资料';

/*Data for the table `ziliao` */

insert  into `ziliao`(`id`,`ziliao_name`,`ziliao_photo`,`ziliao_file`,`jiaoshi_id`,`zan_number`,`cai_number`,`ziliao_types`,`ziliao_content`,`ziliao_yesno_types`,`ziliao_yesno_text`,`ziliao_delete`,`insert_time`,`create_time`) values (1,'学习资料标题1','upload/ziliao1.jpg','upload/file.rar',3,190,110,1,'详情1',1,NULL,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(2,'学习资料标题2','upload/ziliao2.jpg','upload/file.rar',3,261,415,1,'详情2',1,NULL,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(3,'学习资料标题3','upload/ziliao3.jpg','upload/file.rar',2,308,416,1,'详情3',1,NULL,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(4,'学习资料标题4','upload/ziliao4.jpg','upload/file.rar',2,77,145,3,'详情4',1,NULL,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(5,'学习资料标题5','upload/ziliao5.jpg','upload/file.rar',1,481,113,3,'详情5',1,NULL,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(6,'学习资料标题6','upload/ziliao6.jpg','upload/file.rar',3,414,341,3,'详情6',1,NULL,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(7,'学习资料标题7','upload/ziliao7.jpg','upload/file.rar',3,224,34,3,'详情7',2,'111111111111111111',1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(8,'学习资料标题8','upload/ziliao8.jpg','upload/file.rar',3,175,93,2,'详情8',2,'通过',1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(9,'学习资料标题9','upload/ziliao9.jpg','upload/file.rar',1,304,395,3,'详情9',2,'通过',1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(10,'学习资料标题10','upload/ziliao10.jpg','upload/file.rar',2,464,138,2,'详情10',2,'通过',1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(11,'学习资料标题11','upload/ziliao11.jpg','upload/file.rar',1,191,307,1,'详情11',2,'通过',1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(12,'学习资料标题12','upload/ziliao12.jpg','upload/file.rar',3,155,262,3,'详情12',2,'通过',1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(13,'学习资料标题13','upload/ziliao13.jpg','upload/file.rar',2,12,394,2,'详情13',2,'通过',1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(14,'学习资料标题14','upload/ziliao14.jpg','upload/file.rar',1,285,104,1,'详情14',2,'通过',1,'2023-04-12 17:16:17','2023-04-12 17:16:17');

/*Table structure for table `ziliao_collection` */

DROP TABLE IF EXISTS `ziliao_collection`;

CREATE TABLE `ziliao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziliao_id` int(11) DEFAULT NULL COMMENT '学习资料',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ziliao_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学习资料收藏';

/*Data for the table `ziliao_collection` */

insert  into `ziliao_collection`(`id`,`ziliao_id`,`yonghu_id`,`ziliao_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(5,5,2,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(6,6,3,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(7,7,1,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(8,8,1,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(10,10,2,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(11,11,3,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(12,12,2,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(13,13,2,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(14,14,2,1,'2023-04-12 17:16:17','2023-04-12 17:16:17'),(16,14,1,2,'2023-04-13 10:11:44','2023-04-13 10:11:44'),(17,14,1,1,'2023-04-13 10:11:56','2023-04-13 10:11:56'),(18,9,1,1,'2023-04-13 10:12:09','2023-04-13 10:12:09');

/*Table structure for table `ziliao_commentback` */

DROP TABLE IF EXISTS `ziliao_commentback`;

CREATE TABLE `ziliao_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziliao_id` int(11) DEFAULT NULL COMMENT '学习资料',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ziliao_commentback_pingfen_number` int(11) DEFAULT NULL COMMENT '评分',
  `ziliao_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='学习资料评价';

/*Data for the table `ziliao_commentback` */

insert  into `ziliao_commentback`(`id`,`ziliao_id`,`yonghu_id`,`ziliao_commentback_pingfen_number`,`ziliao_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,4,'评价内容1','2023-04-12 17:16:17','回复信息1','2023-04-12 17:16:17','2023-04-12 17:16:17'),(2,2,2,0,'评价内容2','2023-04-12 17:16:17','回复信息2','2023-04-12 17:16:17','2023-04-12 17:16:17'),(3,3,3,2,'评价内容3','2023-04-12 17:16:17','回复信息3','2023-04-12 17:16:17','2023-04-12 17:16:17'),(4,4,3,5,'评价内容4','2023-04-12 17:16:17','回复信息4','2023-04-12 17:16:17','2023-04-12 17:16:17'),(5,5,1,0,'评价内容5','2023-04-12 17:16:17','回复信息5','2023-04-12 17:16:17','2023-04-12 17:16:17'),(6,6,1,1,'评价内容6','2023-04-12 17:16:17','回复信息6','2023-04-12 17:16:17','2023-04-12 17:16:17'),(7,7,2,3,'评价内容7','2023-04-12 17:16:17','回复信息7','2023-04-12 17:16:17','2023-04-12 17:16:17'),(8,8,2,5,'评价内容8','2023-04-12 17:16:17','回复信息8','2023-04-12 17:16:17','2023-04-12 17:16:17'),(9,9,2,5,'评价内容9','2023-04-12 17:16:17','回复信息9','2023-04-12 17:16:17','2023-04-12 17:16:17'),(10,10,3,3,'评价内容10','2023-04-12 17:16:17','回复信息10','2023-04-12 17:16:17','2023-04-12 17:16:17'),(11,11,3,0,'评价内容11','2023-04-12 17:16:17','回复信息11','2023-04-12 17:16:17','2023-04-12 17:16:17'),(12,12,1,4,'评价内容12','2023-04-12 17:16:17','回复信息12','2023-04-12 17:16:17','2023-04-12 17:16:17'),(13,13,2,2,'评价内容13','2023-04-12 17:16:17','回复信息13','2023-04-12 17:16:17','2023-04-12 17:16:17'),(14,14,3,2,'评价内容14','2023-04-12 17:16:17','回复信息14','2023-04-12 17:16:17','2023-04-12 17:16:17'),(32,14,1,5,'123','2023-04-13 10:11:49',NULL,NULL,'2023-04-13 10:11:49'),(33,9,1,3,'123','2023-04-13 10:12:14','111111111111','2023-04-13 10:13:28','2023-04-13 10:12:14');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
