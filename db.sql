/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm2a866
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm2a866` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm2a866`;

/*Table structure for table `baoxiuxinxi` */

DROP TABLE IF EXISTS `baoxiuxinxi`;

CREATE TABLE `baoxiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiumingcheng` varchar(200) NOT NULL COMMENT '报修名称',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='报修信息';

/*Data for the table `baoxiuxinxi` */

insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiumingcheng`,`baoxiuneirong`,`baoxiuriqi`,`tupian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`userid`) values (81,'2021-05-11 12:03:01','报修名称1','报修内容1','2021-05-11','http://localhost:8080/ssm2a866/upload/baoxiuxinxi_tupian1.jpg','教师账号1','教师姓名1','学号1','姓名1',1);
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiumingcheng`,`baoxiuneirong`,`baoxiuriqi`,`tupian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`userid`) values (82,'2021-05-11 12:03:01','报修名称2','报修内容2','2021-05-11','http://localhost:8080/ssm2a866/upload/baoxiuxinxi_tupian2.jpg','教师账号2','教师姓名2','学号2','姓名2',2);
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiumingcheng`,`baoxiuneirong`,`baoxiuriqi`,`tupian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`userid`) values (83,'2021-05-11 12:03:01','报修名称3','报修内容3','2021-05-11','http://localhost:8080/ssm2a866/upload/baoxiuxinxi_tupian3.jpg','教师账号3','教师姓名3','学号3','姓名3',3);
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiumingcheng`,`baoxiuneirong`,`baoxiuriqi`,`tupian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`userid`) values (84,'2021-05-11 12:03:01','报修名称4','报修内容4','2021-05-11','http://localhost:8080/ssm2a866/upload/baoxiuxinxi_tupian4.jpg','教师账号4','教师姓名4','学号4','姓名4',4);
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiumingcheng`,`baoxiuneirong`,`baoxiuriqi`,`tupian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`userid`) values (85,'2021-05-11 12:03:01','报修名称5','报修内容5','2021-05-11','http://localhost:8080/ssm2a866/upload/baoxiuxinxi_tupian5.jpg','教师账号5','教师姓名5','学号5','姓名5',5);
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiumingcheng`,`baoxiuneirong`,`baoxiuriqi`,`tupian`,`jiaoshizhanghao`,`jiaoshixingming`,`xuehao`,`xingming`,`userid`) values (86,'2021-05-11 12:03:01','报修名称6','报修内容6','2021-05-11','http://localhost:8080/ssm2a866/upload/baoxiuxinxi_tupian6.jpg','教师账号6','教师姓名6','学号6','姓名6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm2a866/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm2a866/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm2a866/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshizhanghao` varchar(200) NOT NULL COMMENT '教师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `gongling` varchar(200) NOT NULL COMMENT '工龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshizhanghao` (`jiaoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`gongling`,`xingbie`,`shouji`,`zhaopian`) values (21,'2021-05-11 12:03:01','教师1','123456','教师姓名1',1,'工龄1','男','13823888881','http://localhost:8080/ssm2a866/upload/jiaoshi_zhaopian1.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`gongling`,`xingbie`,`shouji`,`zhaopian`) values (22,'2021-05-11 12:03:01','教师2','123456','教师姓名2',2,'工龄2','男','13823888882','http://localhost:8080/ssm2a866/upload/jiaoshi_zhaopian2.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`gongling`,`xingbie`,`shouji`,`zhaopian`) values (23,'2021-05-11 12:03:01','教师3','123456','教师姓名3',3,'工龄3','男','13823888883','http://localhost:8080/ssm2a866/upload/jiaoshi_zhaopian3.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`gongling`,`xingbie`,`shouji`,`zhaopian`) values (24,'2021-05-11 12:03:01','教师4','123456','教师姓名4',4,'工龄4','男','13823888884','http://localhost:8080/ssm2a866/upload/jiaoshi_zhaopian4.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`gongling`,`xingbie`,`shouji`,`zhaopian`) values (25,'2021-05-11 12:03:01','教师5','123456','教师姓名5',5,'工龄5','男','13823888885','http://localhost:8080/ssm2a866/upload/jiaoshi_zhaopian5.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshizhanghao`,`mima`,`jiaoshixingming`,`nianling`,`gongling`,`xingbie`,`shouji`,`zhaopian`) values (26,'2021-05-11 12:03:01','教师6','123456','教师姓名6',6,'工龄6','男','13823888886','http://localhost:8080/ssm2a866/upload/jiaoshi_zhaopian6.jpg');

/*Table structure for table `quxiaoyuyue` */

DROP TABLE IF EXISTS `quxiaoyuyue`;

CREATE TABLE `quxiaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshihao` varchar(200) DEFAULT NULL COMMENT '实验室号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shifouquxiao` varchar(200) DEFAULT NULL COMMENT '是否取消',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='取消预约';

/*Data for the table `quxiaoyuyue` */

insert  into `quxiaoyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouquxiao`,`quxiaoyuanyin`,`quxiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (51,'2021-05-11 12:03:01','实验室号1','名称1','http://localhost:8080/ssm2a866/upload/quxiaoyuyue_tupian1.jpg','是','取消原因1','2021-05-11 12:03:01','教师账号1','教师姓名1','是','',1);
insert  into `quxiaoyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouquxiao`,`quxiaoyuanyin`,`quxiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (52,'2021-05-11 12:03:01','实验室号2','名称2','http://localhost:8080/ssm2a866/upload/quxiaoyuyue_tupian2.jpg','是','取消原因2','2021-05-11 12:03:01','教师账号2','教师姓名2','是','',2);
insert  into `quxiaoyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouquxiao`,`quxiaoyuanyin`,`quxiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (53,'2021-05-11 12:03:01','实验室号3','名称3','http://localhost:8080/ssm2a866/upload/quxiaoyuyue_tupian3.jpg','是','取消原因3','2021-05-11 12:03:01','教师账号3','教师姓名3','是','',3);
insert  into `quxiaoyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouquxiao`,`quxiaoyuanyin`,`quxiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (54,'2021-05-11 12:03:01','实验室号4','名称4','http://localhost:8080/ssm2a866/upload/quxiaoyuyue_tupian4.jpg','是','取消原因4','2021-05-11 12:03:01','教师账号4','教师姓名4','是','',4);
insert  into `quxiaoyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouquxiao`,`quxiaoyuanyin`,`quxiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (55,'2021-05-11 12:03:01','实验室号5','名称5','http://localhost:8080/ssm2a866/upload/quxiaoyuyue_tupian5.jpg','是','取消原因5','2021-05-11 12:03:01','教师账号5','教师姓名5','是','',5);
insert  into `quxiaoyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouquxiao`,`quxiaoyuanyin`,`quxiaoshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (56,'2021-05-11 12:03:01','实验室号6','名称6','http://localhost:8080/ssm2a866/upload/quxiaoyuyue_tupian6.jpg','是','取消原因6','2021-05-11 12:03:01','教师账号6','教师姓名6','是','',6);

/*Table structure for table `shiyanbaogao` */

DROP TABLE IF EXISTS `shiyanbaogao`;

CREATE TABLE `shiyanbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xueshengbaogao` varchar(200) DEFAULT NULL COMMENT '学生报告',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='实验报告';

/*Data for the table `shiyanbaogao` */

insert  into `shiyanbaogao`(`id`,`addtime`,`kechengmingcheng`,`xueshengbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`tijiaoshijian`,`xuehao`,`xingming`,`userid`) values (71,'2021-05-11 12:03:01','课程名称1','http://localhost:8080/ssm2a866/upload/shiyanbaogao_xueshengbaogao1.jpg','教师账号1','教师姓名1','2021-05-11 12:03:01','学号1','姓名1',1);
insert  into `shiyanbaogao`(`id`,`addtime`,`kechengmingcheng`,`xueshengbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`tijiaoshijian`,`xuehao`,`xingming`,`userid`) values (72,'2021-05-11 12:03:01','课程名称2','http://localhost:8080/ssm2a866/upload/shiyanbaogao_xueshengbaogao2.jpg','教师账号2','教师姓名2','2021-05-11 12:03:01','学号2','姓名2',2);
insert  into `shiyanbaogao`(`id`,`addtime`,`kechengmingcheng`,`xueshengbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`tijiaoshijian`,`xuehao`,`xingming`,`userid`) values (73,'2021-05-11 12:03:01','课程名称3','http://localhost:8080/ssm2a866/upload/shiyanbaogao_xueshengbaogao3.jpg','教师账号3','教师姓名3','2021-05-11 12:03:01','学号3','姓名3',3);
insert  into `shiyanbaogao`(`id`,`addtime`,`kechengmingcheng`,`xueshengbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`tijiaoshijian`,`xuehao`,`xingming`,`userid`) values (74,'2021-05-11 12:03:01','课程名称4','http://localhost:8080/ssm2a866/upload/shiyanbaogao_xueshengbaogao4.jpg','教师账号4','教师姓名4','2021-05-11 12:03:01','学号4','姓名4',4);
insert  into `shiyanbaogao`(`id`,`addtime`,`kechengmingcheng`,`xueshengbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`tijiaoshijian`,`xuehao`,`xingming`,`userid`) values (75,'2021-05-11 12:03:01','课程名称5','http://localhost:8080/ssm2a866/upload/shiyanbaogao_xueshengbaogao5.jpg','教师账号5','教师姓名5','2021-05-11 12:03:01','学号5','姓名5',5);
insert  into `shiyanbaogao`(`id`,`addtime`,`kechengmingcheng`,`xueshengbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`tijiaoshijian`,`xuehao`,`xingming`,`userid`) values (76,'2021-05-11 12:03:01','课程名称6','http://localhost:8080/ssm2a866/upload/shiyanbaogao_xueshengbaogao6.jpg','教师账号6','教师姓名6','2021-05-11 12:03:01','学号6','姓名6',6);

/*Table structure for table `shiyankecheng` */

DROP TABLE IF EXISTS `shiyankecheng`;

CREATE TABLE `shiyankecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kaikeshijian` datetime DEFAULT NULL COMMENT '开课时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `shiyanneirong` longtext COMMENT '实验内容',
  `shiyanbaogao` varchar(200) DEFAULT NULL COMMENT '实验报告',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='实验课程';

/*Data for the table `shiyankecheng` */

insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`shiyanneirong`,`shiyanbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`userid`) values (61,'2021-05-11 12:03:01','课程名称1','课程分类1','2021-05-11 12:03:01','2021-05-11 12:03:01','实验内容1','http://localhost:8080/ssm2a866/upload/shiyankecheng_shiyanbaogao1.jpg','教师账号1','教师姓名1',1);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`shiyanneirong`,`shiyanbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`userid`) values (62,'2021-05-11 12:03:01','课程名称2','课程分类2','2021-05-11 12:03:01','2021-05-11 12:03:01','实验内容2','http://localhost:8080/ssm2a866/upload/shiyankecheng_shiyanbaogao2.jpg','教师账号2','教师姓名2',2);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`shiyanneirong`,`shiyanbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`userid`) values (63,'2021-05-11 12:03:01','课程名称3','课程分类3','2021-05-11 12:03:01','2021-05-11 12:03:01','实验内容3','http://localhost:8080/ssm2a866/upload/shiyankecheng_shiyanbaogao3.jpg','教师账号3','教师姓名3',3);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`shiyanneirong`,`shiyanbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`userid`) values (64,'2021-05-11 12:03:01','课程名称4','课程分类4','2021-05-11 12:03:01','2021-05-11 12:03:01','实验内容4','http://localhost:8080/ssm2a866/upload/shiyankecheng_shiyanbaogao4.jpg','教师账号4','教师姓名4',4);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`shiyanneirong`,`shiyanbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`userid`) values (65,'2021-05-11 12:03:01','课程名称5','课程分类5','2021-05-11 12:03:01','2021-05-11 12:03:01','实验内容5','http://localhost:8080/ssm2a866/upload/shiyankecheng_shiyanbaogao5.jpg','教师账号5','教师姓名5',5);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengfenlei`,`kaikeshijian`,`jieshushijian`,`shiyanneirong`,`shiyanbaogao`,`jiaoshizhanghao`,`jiaoshixingming`,`userid`) values (66,'2021-05-11 12:03:01','课程名称6','课程分类6','2021-05-11 12:03:01','2021-05-11 12:03:01','实验内容6','http://localhost:8080/ssm2a866/upload/shiyankecheng_shiyanbaogao6.jpg','教师账号6','教师姓名6',6);

/*Table structure for table `shiyanshixinxi` */

DROP TABLE IF EXISTS `shiyanshixinxi`;

CREATE TABLE `shiyanshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshihao` varchar(200) NOT NULL COMMENT '实验室号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `guimo` varchar(200) NOT NULL COMMENT '规模',
  `shiyanshileixing` varchar(200) DEFAULT NULL COMMENT '实验室类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `rongnarenshu` int(11) DEFAULT NULL COMMENT '容纳人数',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shiyanshihao` (`shiyanshihao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='实验室信息';

/*Data for the table `shiyanshixinxi` */

insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`guimo`,`shiyanshileixing`,`tupian`,`zhuangtai`,`rongnarenshu`,`keyueshijian`,`weizhi`,`xiangqing`,`clicktime`,`clicknum`) values (31,'2021-05-11 12:03:01','实验室号1','名称1','大型','实验室类型1','http://localhost:8080/ssm2a866/upload/shiyanshixinxi_tupian1.jpg','可预约',1,'可约时间1','位置1','详情1','2021-05-11 12:03:01',1);
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`guimo`,`shiyanshileixing`,`tupian`,`zhuangtai`,`rongnarenshu`,`keyueshijian`,`weizhi`,`xiangqing`,`clicktime`,`clicknum`) values (32,'2021-05-11 12:03:01','实验室号2','名称2','大型','实验室类型2','http://localhost:8080/ssm2a866/upload/shiyanshixinxi_tupian2.jpg','可预约',2,'可约时间2','位置2','详情2','2021-05-11 12:03:01',2);
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`guimo`,`shiyanshileixing`,`tupian`,`zhuangtai`,`rongnarenshu`,`keyueshijian`,`weizhi`,`xiangqing`,`clicktime`,`clicknum`) values (33,'2021-05-11 12:03:01','实验室号3','名称3','大型','实验室类型3','http://localhost:8080/ssm2a866/upload/shiyanshixinxi_tupian3.jpg','可预约',3,'可约时间3','位置3','详情3','2021-05-11 12:03:01',3);
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`guimo`,`shiyanshileixing`,`tupian`,`zhuangtai`,`rongnarenshu`,`keyueshijian`,`weizhi`,`xiangqing`,`clicktime`,`clicknum`) values (34,'2021-05-11 12:03:01','实验室号4','名称4','大型','实验室类型4','http://localhost:8080/ssm2a866/upload/shiyanshixinxi_tupian4.jpg','可预约',4,'可约时间4','位置4','详情4','2021-05-11 12:03:01',4);
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`guimo`,`shiyanshileixing`,`tupian`,`zhuangtai`,`rongnarenshu`,`keyueshijian`,`weizhi`,`xiangqing`,`clicktime`,`clicknum`) values (35,'2021-05-11 12:03:01','实验室号5','名称5','大型','实验室类型5','http://localhost:8080/ssm2a866/upload/shiyanshixinxi_tupian5.jpg','可预约',5,'可约时间5','位置5','详情5','2021-05-11 12:03:01',5);
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`guimo`,`shiyanshileixing`,`tupian`,`zhuangtai`,`rongnarenshu`,`keyueshijian`,`weizhi`,`xiangqing`,`clicktime`,`clicknum`) values (36,'2021-05-11 12:03:01','实验室号6','名称6','大型','实验室类型6','http://localhost:8080/ssm2a866/upload/shiyanshixinxi_tupian6.jpg','可预约',6,'可约时间6','位置6','详情6','2021-05-11 12:03:01',6);

/*Table structure for table `shiyanshiyuyue` */

DROP TABLE IF EXISTS `shiyanshiyuyue`;

CREATE TABLE `shiyanshiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshihao` varchar(200) DEFAULT NULL COMMENT '实验室号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shifouyuyue` varchar(200) DEFAULT NULL COMMENT '是否预约',
  `yuyueyuanyin` longtext COMMENT '预约原因',
  `yuyueshijian` varchar(200) NOT NULL COMMENT '预约时间',
  `jiaoshizhanghao` varchar(200) DEFAULT NULL COMMENT '教师账号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='实验室预约';

/*Data for the table `shiyanshiyuyue` */

insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouyuyue`,`yuyueyuanyin`,`yuyueshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (41,'2021-05-11 12:03:01','实验室号1','名称1','http://localhost:8080/ssm2a866/upload/shiyanshiyuyue_tupian1.jpg','是','预约原因1','预约时间1','教师账号1','教师姓名1','是','',1);
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouyuyue`,`yuyueyuanyin`,`yuyueshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (42,'2021-05-11 12:03:01','实验室号2','名称2','http://localhost:8080/ssm2a866/upload/shiyanshiyuyue_tupian2.jpg','是','预约原因2','预约时间2','教师账号2','教师姓名2','是','',2);
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouyuyue`,`yuyueyuanyin`,`yuyueshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (43,'2021-05-11 12:03:01','实验室号3','名称3','http://localhost:8080/ssm2a866/upload/shiyanshiyuyue_tupian3.jpg','是','预约原因3','预约时间3','教师账号3','教师姓名3','是','',3);
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouyuyue`,`yuyueyuanyin`,`yuyueshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (44,'2021-05-11 12:03:01','实验室号4','名称4','http://localhost:8080/ssm2a866/upload/shiyanshiyuyue_tupian4.jpg','是','预约原因4','预约时间4','教师账号4','教师姓名4','是','',4);
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouyuyue`,`yuyueyuanyin`,`yuyueshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (45,'2021-05-11 12:03:01','实验室号5','名称5','http://localhost:8080/ssm2a866/upload/shiyanshiyuyue_tupian5.jpg','是','预约原因5','预约时间5','教师账号5','教师姓名5','是','',5);
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshihao`,`mingcheng`,`tupian`,`shifouyuyue`,`yuyueyuanyin`,`yuyueshijian`,`jiaoshizhanghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (46,'2021-05-11 12:03:01','实验室号6','名称6','http://localhost:8080/ssm2a866/upload/shiyanshiyuyue_tupian6.jpg','是','预约原因6','预约时间6','教师账号6','教师姓名6','是','',6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1620706979253,'11','xuesheng','学生','gqz332n8ldykyb9hkh3wkyhs8ow0bpwe','2021-05-11 12:23:06','2021-05-11 13:23:06');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-11 12:03:01');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620706979254 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (11,'2021-05-11 12:03:01','学生1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/ssm2a866/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (12,'2021-05-11 12:03:01','学生2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/ssm2a866/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (13,'2021-05-11 12:03:01','学生3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssm2a866/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (14,'2021-05-11 12:03:01','学生4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssm2a866/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (15,'2021-05-11 12:03:01','学生5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssm2a866/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (16,'2021-05-11 12:03:01','学生6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssm2a866/upload/xuesheng_zhaopian6.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (1620706979253,'2021-05-11 12:22:59','11','11','11','1','男','11111111111',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
