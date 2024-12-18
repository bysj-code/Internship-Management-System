/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shixishengguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shixishengguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shixishengguanli`;

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-20 17:42:12'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-20 17:42:12'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-20 17:42:12'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-20 17:42:12'),(5,'tongzhi_types','通知类型',1,'通知类型1',NULL,NULL,'2023-03-20 17:42:12'),(6,'tongzhi_types','通知类型',2,'通知类型2',NULL,NULL,'2023-03-20 17:42:12'),(7,'shixi_types','实习类型',1,'实习',NULL,NULL,'2023-03-20 17:42:13'),(8,'shixi_types','实习类型',2,'考公',NULL,NULL,'2023-03-20 17:42:13'),(9,'shixi_types','实习类型',3,'考研',NULL,NULL,'2023-03-20 17:42:13'),(10,'shixi_types','实习类型',4,'出国留学',NULL,NULL,'2023-03-20 17:42:13'),(11,'shixi_types','实习类型',5,'其他',NULL,NULL,'2023-03-20 17:42:13'),(12,'hangye_types','行业',1,'互联网',NULL,NULL,'2023-03-20 17:42:13'),(13,'hangye_types','行业',2,'金融',NULL,NULL,'2023-03-20 17:42:13'),(14,'hangye_types','行业',3,'服务行业',NULL,NULL,'2023-03-20 17:42:13'),(15,'suoshuleixing_types','所属类型',1,'电商',NULL,NULL,'2023-03-20 17:42:13'),(16,'suoshuleixing_types','所属类型',2,'银行',NULL,NULL,'2023-03-20 17:42:13'),(17,'suoshuleixing_types','所属类型',3,'医院',NULL,NULL,'2023-03-20 17:42:13'),(18,'daijiao_types','是否安排带教',1,'否',NULL,NULL,'2023-03-20 17:42:13'),(19,'daijiao_types','是否安排带教',2,'是',NULL,NULL,'2023-03-20 17:42:13'),(20,'buzhu_types','补助',1,'餐补和交通补助',NULL,NULL,'2023-03-20 17:42:13'),(21,'buzhu_types','补助',2,'无',NULL,NULL,'2023-03-20 17:42:13'),(22,'buzhu_types','补助',3,'餐补',NULL,NULL,'2023-03-20 17:42:13'),(23,'buzhu_types','补助',4,'交通补助',NULL,NULL,'2023-03-20 17:42:13'),(24,'sushe_types','住宿',1,'包宿',NULL,NULL,'2023-03-20 17:42:13'),(25,'sushe_types','住宿',2,'不包',NULL,NULL,'2023-03-20 17:42:13'),(26,'zhaopin_shifou_types','是否招聘',1,'否',NULL,NULL,'2023-03-20 17:42:13'),(27,'zhaopin_shifou_types','是否招聘',2,'是',NULL,NULL,'2023-03-20 17:42:13'),(28,'manyi_types','单位满意状态',1,'争取转正',NULL,NULL,'2023-03-20 17:42:13'),(29,'manyi_types','单位满意状态',2,'实习结束就走',NULL,NULL,'2023-03-20 17:42:13'),(30,'manyi_types','单位满意状态',3,'想换实习单位',NULL,NULL,'2023-03-20 17:42:13'),(31,'kaoyanzhuanye_types','考研专业',1,'专业1',NULL,NULL,'2023-03-20 17:42:13'),(32,'kaoyanzhuanye_types','考研专业',2,'专业2',NULL,NULL,'2023-03-20 17:42:13'),(33,'kaoyanzhuanye_types','考研专业',3,'专业3',NULL,NULL,'2023-03-20 17:42:13'),(34,'jianli_types','求职意向',1,'求职意向1',NULL,NULL,'2023-03-20 17:42:13'),(35,'jianli_types','求职意向',2,'求职意向2',NULL,NULL,'2023-03-20 17:42:13'),(36,'jianli_types','求职意向',3,'求职意向3',NULL,NULL,'2023-03-20 17:42:13'),(37,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2023-03-20 17:42:13'),(38,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2023-03-20 17:42:13'),(39,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2023-03-20 17:42:13'),(40,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2023-03-20 17:42:13'),(41,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2023-03-20 17:42:13'),(42,'zhaopin_toudi_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-03-20 17:42:13'),(43,'zhaopin_toudi_yesno_types','审核状态',2,'通过',NULL,NULL,'2023-03-20 17:42:13'),(44,'zhaopin_toudi_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-03-20 17:42:13'),(45,'gongsi_types','公司类型',1,'公司类型1',NULL,NULL,'2023-03-20 17:42:13'),(46,'gongsi_types','公司类型',2,'公司类型2',NULL,NULL,'2023-03-20 17:42:13'),(47,'gongsi_types','公司类型',3,'公司类型3',NULL,NULL,'2023-03-20 17:42:13'),(48,'leixing_types','招聘类型',1,'招聘类型1',NULL,NULL,'2023-03-20 17:42:13'),(49,'leixing_types','招聘类型',2,'校园招聘',NULL,NULL,'2023-03-20 17:42:13'),(50,'zhaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-20 17:42:13'),(51,'zhaopin_types','招聘岗位',4,'招聘岗位4',NULL,'','2023-03-21 10:46:16');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-20 17:42:29','公告详情1','2023-03-20 17:42:29'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-20 17:42:29','公告详情2','2023-03-20 17:42:29'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-20 17:42:29','公告详情3','2023-03-20 17:42:29'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-20 17:42:29','公告详情4','2023-03-20 17:42:29'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-20 17:42:29','公告详情5','2023-03-20 17:42:29'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-20 17:42:29','公告详情6','2023-03-20 17:42:29'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-20 17:42:29','公告详情7','2023-03-20 17:42:29'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-20 17:42:29','公告详情8','2023-03-20 17:42:29'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-20 17:42:29','公告详情9','2023-03-20 17:42:29'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-20 17:42:29','公告详情10','2023-03-20 17:42:29'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-20 17:42:29','公告详情11','2023-03-20 17:42:29'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-20 17:42:29','公告详情12','2023-03-20 17:42:29'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-20 17:42:29','公告详情13','2023-03-20 17:42:29'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-20 17:42:29','公告详情14','2023-03-20 17:42:29');

/*Table structure for table `gongsi` */

DROP TABLE IF EXISTS `gongsi`;

CREATE TABLE `gongsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `gongsi_name` varchar(200) DEFAULT NULL COMMENT '公司名称 Search111 ',
  `gongsi_types` int(11) DEFAULT NULL COMMENT '公司类型',
  `gongsi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `gongsi_photo` varchar(200) DEFAULT NULL COMMENT '公司logo',
  `gongsi_chenglishijian_time` timestamp NULL DEFAULT NULL COMMENT '公司成立时间',
  `gongsi_content` text COMMENT '公司介绍',
  `gongsi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公司';

/*Data for the table `gongsi` */

insert  into `gongsi`(`id`,`username`,`password`,`gongsi_name`,`gongsi_types`,`gongsi_phone`,`gongsi_email`,`gongsi_photo`,`gongsi_chenglishijian_time`,`gongsi_content`,`gongsi_delete`,`create_time`) values (1,'a1','123456','公司名称1',2,'17703786901','1@qq.com','upload/gongsi1.jpg','2023-03-20 17:42:29','公司介绍1',1,'2023-03-20 17:42:29'),(2,'a2','123456','公司名称2',3,'17703786902','2@qq.com','upload/gongsi2.jpg','2023-03-20 17:42:29','公司介绍2',1,'2023-03-20 17:42:29'),(3,'a3','123456','公司名称3',3,'17703786903','3@qq.com','upload/gongsi3.jpg','2023-03-20 17:42:29','公司介绍3',1,'2023-03-20 17:42:29');

/*Table structure for table `jianli` */

DROP TABLE IF EXISTS `jianli`;

CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int(11) DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '现在位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='简历';

/*Data for the table `jianli` */

insert  into `jianli`(`id`,`xuesheng_id`,`jianli_uuid_number`,`jianli_name`,`jianli_xingming`,`jianli_types`,`jianli_xinzi`,`jianli_xueli`,`jianli_jingli`,`sex_types`,`jianli_file`,`jianli_phone`,`jianli_photo`,`jianli_address`,`jiaoyu_text`,`shixi_text`,`geren_text`,`create_time`) values (1,2,'1679305349012','简历标题1','姓名1',2,'期望工资1','学历1','工作经历1',1,'upload/file.rar','17703786901','upload/jianli1.jpg','现在位置1','教育经历1','实习或工作经历1','个人介绍1','2023-03-20 17:42:29'),(2,3,'1679305349080','简历标题2','姓名2',3,'期望工资2','学历2','工作经历2',1,'upload/file.rar','17703786902','upload/jianli2.jpg','现在位置2','教育经历2','实习或工作经历2','个人介绍2','2023-03-20 17:42:29'),(15,1,'1679361973768','简历111','张三',3,'9000','本科','经理1111',2,'upload/1679362118810.doc','177888899999','upload/1679362136441.jpg','位置11','经历1111','工作经历111','广东省发生发生的','2023-03-21 09:29:13'),(16,5,'1679366509061','简历1111','张1',3,'8888','学历111','经历111',1,'upload/1679366538987.doc','17788889999','upload/1679366542334.jpg','位置111','感到孤独时感受到','红粉帝国和对方回复的','对方就很烦的更好地发挥的','2023-03-21 10:42:33');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',1,'1@qq.com','2023-03-20 17:42:29'),(2,'a2','123456','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',2,'2@qq.com','2023-03-20 17:42:29'),(3,'a3','123456','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',1,'3@qq.com','2023-03-20 17:42:29');

/*Table structure for table `shixi` */

DROP TABLE IF EXISTS `shixi`;

CREATE TABLE `shixi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shixi_uuid_number` varchar(200) DEFAULT NULL COMMENT '实习编号',
  `shixi_name` varchar(200) DEFAULT NULL COMMENT '实习名称  Search111 ',
  `shixi_types` int(11) DEFAULT NULL COMMENT '实习类型 Search111',
  `shixi_danweimingcheng` varchar(200) DEFAULT NULL COMMENT '实习单位  Search111 ',
  `hangye_types` int(11) DEFAULT NULL COMMENT '行业 Search111',
  `suoshuleixing_types` int(11) DEFAULT NULL COMMENT '所属类型 Search111',
  `qiye_guimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `shixi_danweidizhi` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `jinru_time` timestamp NULL DEFAULT NULL COMMENT '进入时间',
  `shixi_gangwei` varchar(200) DEFAULT NULL COMMENT '实习岗位',
  `shixi_gangwei_fangxiang` varchar(200) DEFAULT NULL COMMENT '岗位培养方向',
  `daijiao_types` int(11) DEFAULT NULL COMMENT '是否安排带教',
  `buzhu_types` int(11) DEFAULT NULL COMMENT '补助',
  `sushe_types` int(11) DEFAULT NULL COMMENT '包宿',
  `xinzi` decimal(10,2) DEFAULT NULL COMMENT '薪资 ',
  `xianzhu_address` varchar(200) DEFAULT NULL COMMENT '现住地址',
  `tonggongsixiaoyou_content` longtext COMMENT '同公司校友情况 ',
  `zhaopin_shifou_types` int(11) DEFAULT NULL COMMENT '是否招聘',
  `danweizhuanye_content` longtext COMMENT '单位专业评价',
  `danweirenshi_content` longtext COMMENT '单位人事评价',
  `manyi_types` int(11) DEFAULT NULL COMMENT '单位满意状态',
  `shixi_kaoyanxuexiao` varchar(200) DEFAULT NULL COMMENT '考研学校  Search111 ',
  `kaoyanzhuanye_types` int(11) DEFAULT NULL COMMENT '考研专业',
  `shixi_kaoyanfangxiang` varchar(200) DEFAULT NULL COMMENT '方向',
  `shixi_kaogongdiqu` varchar(200) DEFAULT NULL COMMENT '考公地区  Search111 ',
  `shixi_kaogongzhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `kaogong_time` timestamp NULL DEFAULT NULL COMMENT '考公时间',
  `shixi_liuxue` varchar(200) DEFAULT NULL COMMENT '留学国家',
  `shixi_liuxue_daxue` varchar(200) DEFAULT NULL COMMENT '留学大学',
  `shixi_liuxue_danwei` varchar(200) DEFAULT NULL COMMENT '留学单位',
  `shixi_content` longtext COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间    show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='实习';

/*Data for the table `shixi` */

insert  into `shixi`(`id`,`xuesheng_id`,`shixi_uuid_number`,`shixi_name`,`shixi_types`,`shixi_danweimingcheng`,`hangye_types`,`suoshuleixing_types`,`qiye_guimo`,`shixi_danweidizhi`,`jinru_time`,`shixi_gangwei`,`shixi_gangwei_fangxiang`,`daijiao_types`,`buzhu_types`,`sushe_types`,`xinzi`,`xianzhu_address`,`tonggongsixiaoyou_content`,`zhaopin_shifou_types`,`danweizhuanye_content`,`danweirenshi_content`,`manyi_types`,`shixi_kaoyanxuexiao`,`kaoyanzhuanye_types`,`shixi_kaoyanfangxiang`,`shixi_kaogongdiqu`,`shixi_kaogongzhiwei`,`kaogong_time`,`shixi_liuxue`,`shixi_liuxue_daxue`,`shixi_liuxue_danwei`,`shixi_content`,`insert_time`,`create_time`) values (1,2,'1679305349103','实习名称1',3,'实习单位1',2,1,'企业规模1','单位地址1','2023-03-20 17:42:29','实习岗位1','岗位培养方向1',2,1,1,'275.58','现住地址1','同公司校友情况1',1,'单位专业评价1','单位人事评价1',2,'考研学校1',1,'方向1','考公地区1','职位1','2023-03-20 17:42:29','留学国家1','留学大学1','留学单位1','备注1','2023-03-20 17:42:29','2023-03-20 17:42:29'),(2,1,'1679305349026','实习名称2',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'考研学校2',3,'方向2',NULL,NULL,NULL,NULL,NULL,NULL,'备注2','2023-03-20 17:42:29','2023-03-20 17:42:29'),(3,1,'1679305349014','实习名称3',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'留学国家3','留学大学3','留学单位3','备注3','2023-03-20 17:42:29','2023-03-20 17:42:29'),(4,3,'1679305349013','实习名称4',1,'实习单位4',1,3,'企业规模4','单位地址4','2023-03-20 17:42:29','实习岗位4','岗位培养方向4',1,4,2,'171.25','现住地址4','同公司校友情况4',3,'单位专业评价4','单位人事评价4',1,'考研学校4',1,'方向4','考公地区4','职位4','2023-03-20 17:42:29','留学国家4','留学大学4','留学单位4','备注4','2023-03-20 17:42:29','2023-03-20 17:42:29'),(5,2,'1679305349058','实习名称5',1,'实习单位5',2,1,'企业规模5','单位地址5','2023-03-20 17:42:29','实习岗位5','岗位培养方向5',1,1,1,'327.42','现住地址5','同公司校友情况5',2,'单位专业评价5','单位人事评价5',3,'考研学校5',1,'方向5','考公地区5','职位5','2023-03-20 17:42:29','留学国家5','留学大学5','留学单位5','备注5','2023-03-20 17:42:29','2023-03-20 17:42:29'),(6,2,'1679305349095','实习名称6',4,'实习单位6',3,3,'企业规模6','单位地址6','2023-03-20 17:42:29','实习岗位6','岗位培养方向6',1,3,1,'846.61','现住地址6','同公司校友情况6',2,'单位专业评价6','单位人事评价6',1,'考研学校6',3,'方向6','考公地区6','职位6','2023-03-20 17:42:29','留学国家6','留学大学6','留学单位6','备注6','2023-03-20 17:42:29','2023-03-20 17:42:29'),(7,1,'1679305349100','实习名称7',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'考公地区7','职位7','2023-03-20 17:42:29',NULL,NULL,NULL,'备注7','2023-03-20 17:42:29','2023-03-20 17:42:29'),(8,2,'1679305349090','实习名称8',2,'实习单位8',1,2,'企业规模8','单位地址8','2023-03-20 17:42:29','实习岗位8','岗位培养方向8',2,1,2,'337.47','现住地址8','同公司校友情况8',2,'单位专业评价8','单位人事评价8',3,'考研学校8',3,'方向8','考公地区8','职位8','2023-03-20 17:42:29','留学国家8','留学大学8','留学单位8','备注8','2023-03-20 17:42:29','2023-03-20 17:42:29'),(9,1,'1679305349095','实习名称9',1,'实习单位9',3,2,'企业规模9','单位地址9','2023-03-20 17:42:29','实习岗位9','岗位培养方向9',2,2,1,'631.53','现住地址9','同公司校友情况9',2,'单位专业评价9','单位人事评价9',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'备注9','2023-03-20 17:42:29','2023-03-20 17:42:29'),(10,2,'1679305349089','实习名称10',5,'实习单位10',3,3,'企业规模10','单位地址10','2023-03-20 17:42:29','实习岗位10','岗位培养方向10',1,4,2,'581.53','现住地址10','同公司校友情况10',2,'单位专业评价10','单位人事评价10',2,'考研学校10',1,'方向10','考公地区10','职位10','2023-03-20 17:42:29','留学国家10','留学大学10','留学单位10','备注10','2023-03-20 17:42:29','2023-03-20 17:42:29'),(11,3,'1679305349020','实习名称11',3,'实习单位11',1,2,'企业规模11','单位地址11','2023-03-20 17:42:29','实习岗位11','岗位培养方向11',2,4,2,'529.77','现住地址11','同公司校友情况11',1,'单位专业评价11','单位人事评价11',1,'考研学校11',1,'方向11','考公地区11','职位11','2023-03-20 17:42:29','留学国家11','留学大学11','留学单位11','备注11','2023-03-20 17:42:29','2023-03-20 17:42:29'),(12,1,'1679305349027','实习名称12',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'留学国家12','留学大学12','留学单位12','备注12','2023-03-20 17:42:29','2023-03-20 17:42:29'),(13,3,'1679305349103','实习名称13',3,'实习单位13',2,3,'企业规模13','单位地址13','2023-03-20 17:42:29','实习岗位13','岗位培养方向13',2,1,2,'354.80','现住地址13','同公司校友情况13',1,'单位专业评价13','单位人事评价13',3,'考研学校13',1,'方向13','考公地区13','职位13','2023-03-20 17:42:29','留学国家13','留学大学13','留学单位13','备注13','2023-03-20 17:42:29','2023-03-20 17:42:29'),(14,3,'1679305349101','实习名称14',5,'实习单位14',3,2,'企业规模14','单位地址14','2023-03-20 17:42:29','实习岗位14','岗位培养方向14',1,3,2,'639.30','现住地址14','同公司校友情况14',1,'单位专业评价14','单位人事评价14',1,'考研学校14',3,'方向14','考公地区14','职位14','2023-03-20 17:42:29','留学国家14','留学大学14','留学单位14','备注14','2023-03-20 17:42:29','2023-03-20 17:42:29'),(15,5,'1679366580955','实习名称111',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'考公地区111','职位1111','2023-01-01 00:00:00',NULL,NULL,NULL,'广东省供货商还是的','2023-03-21 10:43:39','2023-03-21 10:43:39');

/*Table structure for table `shixirizhi` */

DROP TABLE IF EXISTS `shixirizhi`;

CREATE TABLE `shixirizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shixirizhi_uuid_number` varchar(200) DEFAULT NULL COMMENT '实习日志编号',
  `shixirizhi_name` varchar(200) DEFAULT NULL COMMENT '实习日志标题  Search111 ',
  `riqi_time` date DEFAULT NULL COMMENT '日期',
  `shixirizhi_content` longtext COMMENT '实习日志内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='实习日志';

/*Data for the table `shixirizhi` */

insert  into `shixirizhi`(`id`,`xuesheng_id`,`shixirizhi_uuid_number`,`shixirizhi_name`,`riqi_time`,`shixirizhi_content`,`insert_time`,`create_time`) values (1,1,'1112222333','实习标题111','2023-03-21','司法傻瓜大使馆的','2023-03-21 09:42:40','2023-03-21 09:42:43'),(2,1,'1679365142846','标题111','2019-12-18','大使馆的风格的方式更好地撒谎第三话费电话费黄金分割 回复的股份的对方回复的的方法的东风浩荡回复涣发大号的根深蒂固第三个时高时低华东师范大使馆的风格的方式更好地撒谎第三话费电话费黄金分割 回复的股份的对方回复的的方法的东风浩荡回复涣发大号的根深蒂固第三个时高时低华东师范大使馆的风格','2023-03-21 10:19:33','2023-03-21 10:19:33'),(3,5,'1679366647051','标题111','2023-03-21','发广东省格式的广东省格式的','2023-03-21 10:44:17','2023-03-21 10:44:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','4npjincxda925bvqvppwtdq69f08g6n3','2023-03-20 17:44:34','2023-03-21 11:54:27'),(2,1,'a1','xuesheng','学生','ijiowo4se9wuhimfigf7ehrilknib71d','2023-03-21 09:08:54','2023-03-21 11:44:37'),(3,1,'a1','gongsi','公司','xs1ihzhlniwb8yhomeo8ugr4beb08w7e','2023-03-21 10:28:39','2023-03-21 11:49:16'),(4,4,'a5','xuesheng','学生','ugb6e4enc1e1z9irxy800xdk3rsn7vwx','2023-03-21 10:32:18','2023-03-21 11:32:19'),(5,5,'a5','xuesheng','学生','f14cji65geyq09av8zr1a2kpbq71gvvj','2023-03-21 10:40:56','2023-03-21 11:40:57'),(6,1,'a1','laoshi','老师','idy9wu279b5azhei854smf5dn9rlm2vu','2023-03-21 10:49:46','2023-03-21 11:49:46');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `tongzhi_name` varchar(200) DEFAULT NULL COMMENT '通知名称 Search111  ',
  `tongzhi_photo` varchar(200) DEFAULT NULL COMMENT '通知图片 ',
  `tongzhi_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `tongzhi_types` int(11) NOT NULL COMMENT '通知类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间 ',
  `tongzhi_content` longtext COMMENT '通知内容 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='通知';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`xuesheng_id`,`tongzhi_name`,`tongzhi_photo`,`tongzhi_file`,`tongzhi_types`,`insert_time`,`tongzhi_content`,`create_time`) values (1,3,'通知名称1','upload/tongzhi1.jpg','upload/file.rar',2,'2023-03-20 17:42:29','通知内容1','2023-03-20 17:42:29'),(2,2,'通知名称2','upload/tongzhi2.jpg','upload/file.rar',1,'2023-03-20 17:42:29','通知内容2','2023-03-20 17:42:29'),(3,3,'通知名称3','upload/tongzhi3.jpg','upload/file.rar',2,'2023-03-20 17:42:29','通知内容3','2023-03-20 17:42:29'),(4,2,'通知名称4','upload/tongzhi4.jpg','upload/file.rar',1,'2023-03-20 17:42:29','通知内容4','2023-03-20 17:42:29'),(5,3,'通知名称5','upload/tongzhi5.jpg','upload/file.rar',1,'2023-03-20 17:42:29','通知内容5','2023-03-20 17:42:29'),(6,1,'通知名称6','upload/tongzhi6.jpg','upload/file.rar',1,'2023-03-20 17:42:29','通知内容6','2023-03-20 17:42:29'),(7,3,'通知名称7','upload/tongzhi7.jpg','upload/file.rar',2,'2023-03-20 17:42:29','通知内容7','2023-03-20 17:42:29'),(8,1,'通知名称8','upload/tongzhi8.jpg','upload/file.rar',2,'2023-03-20 17:42:29','通知内容8','2023-03-20 17:42:29'),(9,3,'通知名称9','upload/tongzhi9.jpg','upload/file.rar',1,'2023-03-20 17:42:29','通知内容9','2023-03-20 17:42:29'),(10,2,'通知名称10','upload/tongzhi10.jpg','upload/file.rar',1,'2023-03-20 17:42:29','通知内容10','2023-03-20 17:42:29'),(11,3,'通知名称11','upload/tongzhi11.jpg','upload/file.rar',1,'2023-03-20 17:42:29','通知内容11','2023-03-20 17:42:29'),(12,3,'通知名称12','upload/tongzhi12.jpg','upload/file.rar',1,'2023-03-20 17:42:29','通知内容12','2023-03-20 17:42:29'),(13,2,'通知名称13','upload/tongzhi13.jpg','upload/file.rar',2,'2023-03-20 17:42:29','通知内容13','2023-03-20 17:42:29'),(14,1,'通知名称14','upload/tongzhi14.jpg','upload/file.rar',2,'2023-03-20 17:42:29','通知内容14','2023-03-20 17:42:29'),(15,2,'标题111','/upload/1679367012912.jpg','/upload/1679367016367.doc',1,'2023-03-21 10:50:28','<p>轨道射灯广大施工图</p>','2023-03-21 10:50:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-20 17:42:12');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_name`,`xuesheng_phone`,`xuesheng_id_number`,`xuesheng_photo`,`sex_types`,`xuesheng_email`,`create_time`) values (1,'a1','123456','学生姓名1','17703786901','410224199010102001','upload/xuesheng1.jpg',2,'1@qq.com','2023-03-20 17:42:29'),(2,'a2','123456','学生姓名2','17703786902','410224199010102002','upload/xuesheng2.jpg',1,'2@qq.com','2023-03-20 17:42:29'),(3,'a3','123456','学生姓名3','17703786903','410224199010102003','upload/xuesheng3.jpg',2,'3@qq.com','2023-03-20 17:42:29'),(5,'a5','123456','张5','17788889999','444777888899999991','upload/1679366463276.jpg',2,'5@qq.com','2023-03-21 10:40:48');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongsi_id` int(11) DEFAULT NULL COMMENT '公司',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `leixing_types` int(11) DEFAULT NULL COMMENT '招聘类型 Search111',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='职位招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`gongsi_id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_daiyu`,`zhaopin_address`,`lianxiren_name`,`zhaopin_phone`,`zhaopin_types`,`leixing_types`,`zhaopin_renshu_number`,`shangxia_types`,`zhaopin_content`,`create_time`) values (1,3,'招聘信息名称1','upload/zhaopin1.jpg','薪资待遇1','上班地点1','联系人1','17703786901',1,1,199,1,'招聘信息详情1','2023-03-20 17:42:29'),(2,3,'招聘信息名称2','upload/zhaopin2.jpg','薪资待遇2','上班地点2','联系人2','17703786902',2,1,85,1,'招聘信息详情2','2023-03-20 17:42:29'),(3,2,'招聘信息名称3','upload/zhaopin3.jpg','薪资待遇3','上班地点3','联系人3','17703786903',1,1,108,1,'招聘信息详情3','2023-03-20 17:42:29'),(4,3,'招聘信息名称4','upload/zhaopin4.jpg','薪资待遇4','上班地点4','联系人4','17703786904',2,2,403,1,'招聘信息详情4','2023-03-20 17:42:29'),(5,3,'招聘信息名称5','upload/zhaopin5.jpg','薪资待遇5','上班地点5','联系人5','17703786905',1,1,440,1,'招聘信息详情5','2023-03-20 17:42:29'),(6,2,'招聘信息名称6','upload/zhaopin6.jpg','薪资待遇6','上班地点6','联系人6','17703786906',1,2,373,1,'招聘信息详情6','2023-03-20 17:42:29'),(7,3,'招聘信息名称7','upload/zhaopin7.jpg','薪资待遇7','上班地点7','联系人7','17703786907',1,1,400,1,'招聘信息详情7','2023-03-20 17:42:29'),(8,1,'招聘信息名称8','upload/zhaopin8.jpg','薪资待遇8','上班地点8','联系人8','17703786908',3,2,133,1,'招聘信息详情8','2023-03-20 17:42:29'),(9,1,'招聘信息名称9','upload/zhaopin9.jpg','薪资待遇9','上班地点9','联系人9','17703786909',2,1,240,1,'招聘信息详情9','2023-03-20 17:42:29'),(10,3,'招聘信息名称10','upload/zhaopin10.jpg','薪资待遇10','上班地点10','联系人10','17703786910',1,2,423,1,'招聘信息详情10','2023-03-20 17:42:29'),(11,1,'招聘信息名称11','upload/zhaopin11.jpg','薪资待遇11','上班地点11','联系人11','17703786911',2,2,354,1,'招聘信息详情11','2023-03-20 17:42:29'),(12,2,'招聘信息名称12','upload/zhaopin12.jpg','薪资待遇12','上班地点12','联系人12','17703786912',3,1,25,1,'招聘信息详情12','2023-03-20 17:42:29'),(13,3,'招聘信息名称13','upload/zhaopin13.jpg','薪资待遇13','上班地点13','联系人13','17703786913',3,1,75,1,'招聘信息详情13','2023-03-20 17:42:29'),(14,1,'招聘信息名称14','upload/zhaopin14.jpg','薪资待遇14','上班地点14','联系人14','17703786914',2,1,79,1,'招聘信息详情14','2023-03-20 17:42:29');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `zhaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='职位收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`xuesheng_id`,`zhaopin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(2,2,2,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(3,3,3,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(4,4,2,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(5,5,3,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(6,6,3,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(7,7,2,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(8,8,3,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(9,9,2,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(10,10,2,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(11,11,2,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(12,12,2,1,'2023-03-20 17:42:29','2023-03-20 17:42:29'),(15,14,5,1,'2023-03-21 10:41:32','2023-03-21 10:41:32');

/*Table structure for table `zhaopin_liuyan` */

DROP TABLE IF EXISTS `zhaopin_liuyan`;

CREATE TABLE `zhaopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='职位留言';

/*Data for the table `zhaopin_liuyan` */

insert  into `zhaopin_liuyan`(`id`,`zhaopin_id`,`xuesheng_id`,`zhaopin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'留言内容1','回复信息1','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(2,2,2,'留言内容2','回复信息2','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(3,3,2,'留言内容3','回复信息3','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(4,4,3,'留言内容4','回复信息4','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(5,5,2,'留言内容5','回复信息5','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(6,6,3,'留言内容6','回复信息6','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(7,7,1,'留言内容7','回复信息7','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(8,8,3,'留言内容8','回复信息8','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(9,9,1,'留言内容9','回复信息9','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(10,10,1,'留言内容10','回复信息10','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(11,11,1,'留言内容11','回复信息11','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(12,12,2,'留言内容12','回复信息12','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(13,13,2,'留言内容13','回复信息13','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(14,14,1,'留言内容14','回复信息14','2023-03-20 17:42:29','2023-03-20 17:42:29','2023-03-20 17:42:29'),(15,14,5,'gdfsgd','个地方都是感受到','2023-03-21 10:41:35','2023-03-21 10:49:31','2023-03-21 10:41:35');

/*Table structure for table `zhaopin_toudi` */

DROP TABLE IF EXISTS `zhaopin_toudi`;

CREATE TABLE `zhaopin_toudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int(11) DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `zhaopin_toudi_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `zhaopin_toudi_yesno_text` text COMMENT '投递回复',
  `zhaopin_toudi_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='简历投递';

/*Data for the table `zhaopin_toudi` */

insert  into `zhaopin_toudi`(`id`,`jianli_id`,`zhaopin_id`,`insert_time`,`zhaopin_toudi_yesno_types`,`zhaopin_toudi_yesno_text`,`zhaopin_toudi_shenhe_time`,`create_time`) values (16,15,14,'2023-03-21 09:47:10',1,NULL,NULL,'2023-03-21 09:47:10'),(17,16,14,'2023-03-21 10:42:48',2,'个地方根深蒂固萨达','2023-03-21 10:49:39','2023-03-21 10:42:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
