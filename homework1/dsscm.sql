/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.17-log : Database - dsscm
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dsscm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dsscm`;

/*Table structure for table `tb_bill` */

DROP TABLE IF EXISTS `tb_bill`;

CREATE TABLE `tb_bill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `billCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账单编码',
  `productId` bigint(20) DEFAULT NULL COMMENT '商品编号',
  `productName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `productDesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品描述',
  `productUnit` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品单位',
  `productCount` decimal(20,2) DEFAULT NULL COMMENT '商品数量',
  `totalPrice` decimal(20,2) DEFAULT NULL COMMENT '商品总额',
  `isPayment` int(10) DEFAULT NULL COMMENT '是否支付（1：未支付 2：已支付）',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  `providerId` int(20) DEFAULT NULL COMMENT '供应商ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bill` */

insert  into `tb_bill`(`id`,`billCode`,`productId`,`productName`,`productDesc`,`productUnit`,`productCount`,`totalPrice`,`isPayment`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`,`providerId`) values (1,'BILL2016_001',NULL,'洗发水、护发素','日用品-洗发、护发','瓶','500.00','25000.00',2,1,'2018-12-14 13:02:03',NULL,NULL,13),(2,'BILL2016_002',NULL,'香皂、肥皂、药皂','日用品-皂类','块','1000.00','10000.00',2,1,'2019-03-23 04:20:40',NULL,NULL,13),(3,'BILL2016_003',NULL,'大豆油','食品-食用油','斤','300.00','5890.00',2,1,'2018-12-14 13:02:03',NULL,NULL,6),(4,'BILL2016_004',NULL,'橄榄油','食品-进口食用油','斤','200.00','9800.00',2,1,'2018-10-10 03:12:13',NULL,NULL,7),(5,'BILL2016_005',NULL,'洗洁精','日用品-厨房清洁','瓶','500.00','7000.00',2,1,'2018-12-14 13:02:03',NULL,NULL,9),(6,'BILL2016_006',NULL,'美国大杏仁','食品-坚果','袋','300.00','5000.00',2,1,'2019-04-14 06:08:09',NULL,NULL,4),(7,'BILL2016_007',NULL,'沐浴液、精油','日用品-沐浴类','瓶','500.00','23000.00',1,1,'2018-07-22 10:10:22',NULL,NULL,14),(8,'BILL2016_008',NULL,'不锈钢盘碗','日用品-厨房用具','个','600.00','6000.00',2,1,'2018-04-14 05:12:13',NULL,NULL,14),(9,'BILL2016_009',NULL,'塑料杯','日用品-杯子','个','350.00','1750.00',2,1,'2018-02-04 11:40:20',NULL,NULL,14),(10,'BILL2016_010',NULL,'豆瓣酱','食品-调料','瓶','200.00','2000.00',2,1,'2018-10-29 05:07:03',NULL,NULL,8),(11,'BILL2016_011',NULL,'海之蓝','饮料-国酒','瓶','50.00','10000.00',1,1,'2018-04-14 16:16:00',NULL,NULL,1),(12,'BILL2016_012',NULL,'芝华士','饮料-洋酒','瓶','20.00','6000.00',1,1,'2018-09-09 17:00:00',NULL,NULL,1),(13,'BILL2016_013',NULL,'长城红葡萄酒','饮料-红酒','瓶','60.00','800.00',2,1,'2018-11-14 15:23:00',NULL,NULL,1),(14,'BILL2016_014',NULL,'泰国香米','食品-大米','斤','400.00','5000.00',2,1,'2019-10-09 15:20:00',NULL,NULL,3),(15,'BILL2016_015',NULL,'东北大米','食品-大米','斤','600.00','4000.00',2,1,'2019-11-14 14:00:00',NULL,NULL,3),(16,'BILL2016_016',NULL,'可口可乐','饮料','瓶','2000.00','6000.00',2,1,'2018-03-27 13:03:01',NULL,NULL,2),(17,'BILL2016_017',NULL,'脉动','饮料','瓶','1500.00','4500.00',2,1,'2019-05-10 12:00:00',NULL,NULL,2),(18,'BILL2016_018',NULL,'哇哈哈','饮料','瓶','2000.00','4000.00',2,1,'2018-11-24 15:12:03',NULL,NULL,2),(19,'1213',NULL,'1212',NULL,'1212','1.00','1.00',1,NULL,'2019-11-08 16:29:29',NULL,NULL,3);

/*Table structure for table `tb_news` */

DROP TABLE IF EXISTS `tb_news`;

CREATE TABLE `tb_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(40) NOT NULL COMMENT '标题',
  `content` varchar(1000) NOT NULL COMMENT '内容',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=704 DEFAULT CHARSET=utf8;

/*Data for the table `tb_news` */

insert  into `tb_news`(`id`,`title`,`content`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`) values (531,'会员特惠月开始了','会员特惠月开始了,亲们赶快下单啊,不到剁手誓不罢休啊,不到离婚誓不清空购物车啊。更多优惠，尽在易买网。',NULL,'2010-12-22 00:00:00',NULL,NULL),(597,'迎双旦促销大酬宾','迎双旦促销大酬宾',NULL,'2010-12-24 00:00:00',NULL,NULL),(649,'加入会员，赢千万大礼包','加入会员，赢千万大礼包',NULL,'2010-12-22 00:00:00',NULL,NULL),(650,'新年不夜天，通宵也是开张了','新年不夜天，通宵也是开张了',NULL,'2011-05-22 00:00:00',NULL,NULL),(651,'积分兑换开始了','积分兑换开始了',NULL,'2010-12-22 00:00:00',NULL,NULL),(653,'团购阿迪1折起','团购阿迪1折起',NULL,'2010-12-22 00:00:00',NULL,NULL),(664,'最新酷睿笔记本','IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。',NULL,'2013-08-05 00:00:00',NULL,NULL),(675,'aa','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789',NULL,'2013-08-14 00:00:00',NULL,NULL),(676,'ResultR','ResultResultResultResultResu',NULL,'2016-03-28 00:00:00',NULL,NULL),(677,'会员特惠月开始了1','会员特惠月开始了',NULL,'2010-12-22 00:00:00',NULL,NULL),(678,'迎双旦促销大酬宾2','迎双旦促销大酬宾',NULL,'2010-12-24 00:00:00',NULL,NULL),(679,'加入会员，赢千万大礼包3','加入会员，赢千万大礼包',NULL,'2010-12-22 00:00:00',NULL,NULL),(680,'新年不夜天，通宵也是开张了4','新年不夜天，通宵也是开张了',NULL,'2011-05-22 00:00:00',NULL,NULL),(681,'积分兑换开始了5','积分兑换开始了',NULL,'2010-12-22 00:00:00',NULL,NULL),(682,'团购阿迪1折起6','团购阿迪1折起',NULL,'2010-12-22 00:00:00',NULL,NULL),(683,'最新酷睿笔记本7','IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。',NULL,'2013-08-05 00:00:00',NULL,NULL),(684,'aa8','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789',NULL,'2013-08-14 00:00:00',NULL,NULL),(685,'ResultR9','ResultResultResultResultResu',NULL,'2016-03-28 00:00:00',NULL,NULL),(686,'会员特惠月开始了11','会员特惠月开始了',NULL,'2010-12-22 00:00:00',NULL,NULL),(687,'迎双旦促销大酬宾21','迎双旦促销大酬宾',NULL,'2010-12-24 00:00:00',NULL,NULL),(688,'加入会员，赢千万大礼包31','加入会员，赢千万大礼包',NULL,'2010-12-22 00:00:00',NULL,NULL),(689,'新年不夜天，通宵也是开张了41','新年不夜天，通宵也是开张了',NULL,'2011-05-22 00:00:00',NULL,NULL),(690,'积分兑换开始了51','积分兑换开始了',NULL,'2010-12-22 00:00:00',NULL,NULL),(691,'团购阿迪1折起61','团购阿迪1折起',NULL,'2010-12-22 00:00:00',NULL,NULL),(692,'最新酷睿笔记本71','IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。',NULL,'2013-08-05 00:00:00',NULL,NULL),(693,'aa81','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789',NULL,'2013-08-14 00:00:00',NULL,NULL),(694,'ResultR91','ResultResultResultResultResu',NULL,'2016-03-28 00:00:00',NULL,NULL),(695,'会员特惠月开始了111','会员特惠月开始了',NULL,'2010-12-22 00:00:00',NULL,NULL),(696,'迎双旦促销大酬宾211','迎双旦促销大酬宾',NULL,'2010-12-24 00:00:00',NULL,NULL),(697,'加入会员，赢千万大礼包311','加入会员，赢千万大礼包',NULL,'2010-12-22 00:00:00',NULL,NULL),(698,'新年不夜天，通宵也是开张了411','新年不夜天，通宵也是开张了',NULL,'2011-05-22 00:00:00',NULL,NULL),(699,'积分兑换开始了511','积分兑换开始了',NULL,'2010-12-22 00:00:00',NULL,NULL),(700,'团购阿迪1折起611','团购阿迪1折起',NULL,'2010-12-22 00:00:00',NULL,NULL),(701,'最新酷睿笔记本711','IBME系列全场促销中，最新酷睿双核处理器，保证CPU更高效的运转。',NULL,'2013-08-05 00:00:00',NULL,NULL),(702,'aa811','012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789',NULL,'2013-08-14 00:00:00',NULL,NULL),(703,'ResultR911','ResultResultResultResultResu',NULL,'2016-03-28 00:00:00',NULL,NULL);

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userName` varchar(50) DEFAULT NULL COMMENT '顾客姓名',
  `customerPhone` varchar(20) DEFAULT NULL COMMENT '顾客联系电话',
  `userAddress` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `proCount` int(11) DEFAULT NULL COMMENT '商品数量',
  `cost` decimal(20,2) DEFAULT NULL COMMENT '总消费',
  `serialNumber` varchar(255) NOT NULL COMMENT '订单号',
  `status` int(11) DEFAULT NULL COMMENT '订单状态【"待审核","审核通过","配货","卖家已发货","已收货"】',
  `payType` int(11) DEFAULT NULL COMMENT '付款方式【在线支付，货到付款】',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tb_order` */

insert  into `tb_order`(`id`,`userName`,`customerPhone`,`userAddress`,`proCount`,`cost`,`serialNumber`,`status`,`payType`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`) values (1,'张三','13912341234','北京市花园路小区',4,'43.00','60B7487F47F9434EAA5FD1D9E22CB06C',1,1,NULL,NULL,NULL,NULL),(2,'张三','13912341234','北京市海淀区成府路',1,'25.00','8EF5E1557D55413781658A65FC301B8A',2,1,NULL,NULL,NULL,NULL),(3,'李四','13512343214','北京市海淀区大有庄',3,'10.50','51718726C1274CC59504AB4E6FD64BA0',1,2,NULL,NULL,NULL,NULL),(4,'王五','13243211234','湖南长沙',1,'5000.00','8EF5E1557D55413781658A65FC301123',1,1,NULL,'2019-11-10 23:14:00',NULL,NULL),(5,'王五','13243211234','湖南长沙',1,'30.00','8EF5E1557D55413781658A65FC301124',1,1,NULL,'2019-11-10 23:47:34',NULL,NULL),(6,'王五','13243211234','湖南长沙',1,'50.00','8EF5E1557D55413781658A65FC301125',NULL,NULL,NULL,'2019-11-10 23:48:11',NULL,NULL);

/*Table structure for table `tb_order_detail` */

DROP TABLE IF EXISTS `tb_order_detail`;

CREATE TABLE `tb_order_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderId` int(10) NOT NULL COMMENT '订单主键',
  `productId` int(10) NOT NULL COMMENT '商品主键',
  `quantity` int(10) NOT NULL COMMENT '数量',
  `cost` decimal(10,2) NOT NULL COMMENT '消费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `tb_order_detail` */

insert  into `tb_order_detail`(`id`,`orderId`,`productId`,`quantity`,`cost`) values (1,1,1,5,'25.00'),(2,1,2,4,'10.00'),(3,1,3,1,'5.00'),(4,1,4,1,'3.00'),(5,4,5,1,'50000.00'),(6,2,2,10,'25.00'),(7,3,3,1,'5.00'),(8,3,2,1,'2.50'),(9,3,4,1,'3.00'),(10,5,2,12,'30.00'),(11,6,2,20,'50.00');

/*Table structure for table `tb_product` */

DROP TABLE IF EXISTS `tb_product`;

CREATE TABLE `tb_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `description` text COMMENT '描述',
  `price` decimal(10,2) NOT NULL COMMENT '价格',
  `placement` varchar(30) DEFAULT NULL COMMENT '摆放位置',
  `stock` decimal(10,2) NOT NULL COMMENT '库存',
  `categoryLevel1Id` int(10) DEFAULT NULL COMMENT '分类1',
  `categoryLevel2Id` int(10) DEFAULT NULL COMMENT '分类2',
  `categoryLevel3Id` int(10) DEFAULT NULL COMMENT '分类3',
  `fileName` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `isDelete` int(1) DEFAULT '0' COMMENT '是否删除(1：删除 0：未删除)',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tb_product` */

insert  into `tb_product`(`id`,`name`,`description`,`price`,`placement`,`stock`,`categoryLevel1Id`,`categoryLevel2Id`,`categoryLevel3Id`,`fileName`,`isDelete`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`) values (1,'苹果',NULL,'5.00','A1-1','100.00',1,101,10101,NULL,0,NULL,'2019-11-07 12:15:25',NULL,NULL),(2,'西瓜',NULL,'2.50',NULL,'500.00',1,101,10101,NULL,0,NULL,'2019-11-07 12:15:26',NULL,NULL),(3,'德芙巧克力',NULL,'5.00',NULL,'100.00',1,104,10404,NULL,0,NULL,'2019-11-07 12:17:44',NULL,NULL),(4,'蒙牛250ml牛奶',NULL,'3.00',NULL,'200.00',6,603,60301,NULL,0,NULL,'2019-11-07 12:18:30',NULL,NULL),(5,'联想笔记本',NULL,'5000.00',NULL,'20.00',9,902,90206,NULL,0,NULL,'2019-11-07 12:19:15',NULL,NULL),(6,'威猛先生洁厕剂500ml',NULL,'8.00',NULL,'20.00',11,1102,110205,NULL,0,NULL,'2019-11-07 12:29:35',NULL,NULL),(7,'晨光中性笔',NULL,'3.00',NULL,'50.00',8,8,80101,NULL,0,NULL,'2019-11-07 12:30:22',NULL,NULL),(8,'得力中性笔',NULL,'3.00',NULL,'50.00',8,8,80101,NULL,0,NULL,'2019-11-07 12:31:01',NULL,NULL),(9,'白雪中性笔',NULL,'2.00',NULL,'50.00',8,8,80101,NULL,0,NULL,'2019-11-07 12:31:37',NULL,NULL),(11,'可口可乐 500ml','','3.00','111','200.00',2,201,20101,NULL,0,1,'2019-11-09 22:55:36',NULL,NULL),(12,'百事可乐500ml','','3.00','111','2000.00',2,201,20101,'D:\\soft\\apache-tomcat-7.0.76\\webapps\\DSSCM\\statics\\uploadfiles\\1573314179407_Personal.jpg',0,1,'2019-11-09 23:26:38',NULL,NULL),(14,'七喜 350ml','','2.50','A12','51.00',2,201,20101,'D:\\soft\\apache-tomcat-7.0.76\\webapps\\DSSCM\\statics\\uploadfiles\\1573362131932_product.jpg',0,1,'2019-11-10 14:22:31',1,'2019-11-10 14:22:32');

/*Table structure for table `tb_product_category` */

DROP TABLE IF EXISTS `tb_product_category`;

CREATE TABLE `tb_product_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `parentId` int(10) NOT NULL COMMENT '父级目录id',
  `type` int(11) DEFAULT NULL COMMENT '级别(1:一级 2：二级 3：三级)',
  `iconClass` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120409 DEFAULT CHARSET=utf8;

/*Data for the table `tb_product_category` */

insert  into `tb_product_category`(`id`,`name`,`parentId`,`type`,`iconClass`) values (1,'食品',0,1,''),(2,'饮料烟酒',0,1,''),(3,'副食',0,1,''),(4,'粮油',0,1,''),(5,'生鲜类',0,1,''),(6,'日配类',0,1,''),(7,'散装加工',0,1,''),(8,'文体办公',0,1,''),(9,'五金家电',0,1,''),(10,'家居百货',0,1,''),(11,'洗涤日化',0,1,''),(12,'针纺服饰',0,1,''),(101,'生鲜食品',1,2,''),(102,'休闲食品',1,2,''),(103,'饼干糕点',1,2,''),(104,'糖果',1,2,''),(105,'冲调食品',1,2,''),(106,'营养保健品',1,2,''),(201,'饮料',2,2,''),(202,'酒类',2,2,''),(301,'罐头',3,2,''),(302,'调味制品',3,2,''),(303,'土产干货',3,2,''),(304,'酱菜',3,2,''),(401,'速食品',4,2,''),(402,'粮食类',4,2,''),(403,'食用油',4,2,''),(501,'畜禽类',5,2,''),(502,'水产类',5,2,''),(503,'蔬果类',5,2,''),(504,'熟食速食',5,2,''),(601,'面包主食',6,2,''),(602,'熟食素食',6,2,''),(603,'奶蛋类',6,2,''),(604,'冻品类',6,2,''),(605,'保鲜果汁',6,2,''),(701,'散货食品',7,2,''),(702,'自制加工 ',7,2,''),(801,'文化办公',8,2,''),(802,'体育娱乐',8,2,''),(803,'图书音像',8,2,''),(804,'玩具类',8,2,''),(901,'五金交电 ',9,2,''),(902,'视听家电 ',9,2,''),(903,'大家电',9,2,''),(1001,'家居用品',10,2,''),(1002,'休闲用品',10,2,''),(1003,'箱包皮具',10,2,''),(1101,'个人洁护',11,2,''),(1102,'家用清洁',11,2,''),(1103,'家用纸品类',11,2,''),(1104,'杀虫芳香类',11,2,''),(1201,'床上用品',12,2,''),(1202,'针棉织品',12,2,''),(1203,'服装服饰',12,2,''),(1204,'鞋帽类',12,2,''),(10101,'水果',101,3,''),(10102,'蔬菜',101,3,''),(10103,'乳品',101,3,''),(10104,'禽蛋',101,3,''),(10105,'肉制品',101,3,''),(10106,'水产制品',101,3,''),(10107,'冷冻速食',101,3,''),(10108,'火腿/熟肉制品',101,3,''),(10109,'礼品菜',101,3,''),(10201,'干果',102,3,''),(10202,'膨化食品',102,3,''),(10203,'肉质食品',102,3,''),(10204,'果脯蜜饯',102,3,''),(10205,'枣类',102,3,''),(10301,'曲奇',103,3,''),(10302,'饼干',103,3,''),(10303,'糕点',103,3,''),(10304,'派类',103,3,''),(10305,'糕点',103,3,''),(10401,'软糖',104,3,''),(10402,'硬糖',104,3,''),(10403,'果冻',104,3,''),(10404,'巧克力',104,3,''),(10405,'香口胶',104,3,''),(10406,'硬糖',104,3,''),(10501,'奶、豆粉',105,3,''),(10502,'藕粉、羹',105,3,''),(10503,'固体咖啡',105,3,''),(10504,'麦片/餐糊',105,3,''),(10505,'夏凉饮品',105,3,''),(10506,'茶叶',105,3,''),(10507,'功能糖',105,3,''),(10601,'药酒',106,3,''),(10602,'参茸滋补',106,3,''),(10603,'蜂产品',106,3,''),(10604,'浓缩保健',106,3,''),(10605,'减肥食品',106,3,''),(20101,'碳酸饮料',201,3,''),(20102,'饮用水',201,3,''),(20103,'茶饮/咖啡',201,3,''),(20104,'果汁',201,3,''),(20105,'功能饮料',201,3,''),(20106,'常温奶品',201,3,''),(20201,'国产白酒',202,3,''),(20202,'葡萄/色酒',202,3,''),(20203,'啤酒',202,3,''),(20204,'功能酒',202,3,''),(20205,'进口酒',202,3,''),(20206,'其他',202,3,''),(30101,'水果罐头',301,3,''),(30102,'农产罐头',301,3,''),(30103,'畜产罐头',301,3,''),(30104,'水产罐头',301,3,''),(30105,'果酱',301,3,''),(30106,'沙拉酱',301,3,''),(30201,'调味料',302,3,''),(30202,'调味汁',302,3,''),(30203,'调味酱',302,3,''),(30301,'农产干货',303,3,''),(30302,'水产干货',303,3,''),(30303,'畜产干货',303,3,''),(30401,'酱菜',304,3,''),(30402,'腐乳',304,3,''),(40101,'方便面',401,3,''),(40102,'方便粥/饭',401,3,''),(40103,'速食调理',401,3,''),(40201,'米面类',402,3,''),(40202,'杂粮类',402,3,''),(40203,'粮食制品',402,3,''),(40301,'花生油',403,3,''),(40302,'调和油',403,3,''),(40303,'色拉油',403,3,''),(40304,'粟米油',403,3,''),(40305,'菜籽油',403,3,''),(50101,'猪肉及分割',501,3,''),(50102,'猪肉加工品',501,3,''),(50103,'牛肉及分割',501,3,''),(50104,'牛肉加工品',501,3,''),(50105,'羊肉及分割',501,3,''),(50106,'羊肉及加工品',501,3,''),(50107,'禽类及分割',501,3,''),(50108,'禽类加工品',501,3,''),(50201,'淡水鱼类',502,3,''),(50202,'海水鱼类',502,3,''),(50203,'虾蟹贝龟',502,3,''),(50204,'水产制品',502,3,''),(50205,'水发制品',502,3,''),(50301,'蔬菜',503,3,''),(50302,'水果',503,3,''),(50303,'干菜',503,3,''),(50401,'熟食制品',504,3,''),(50402,'速食制品',504,3,''),(60101,'面包西点',601,3,''),(60102,'主食面点',601,3,''),(60201,'熟食制品',602,3,''),(60202,'豆制小菜',602,3,''),(60203,'半成品',602,3,''),(60204,'素食制品',602,3,''),(60301,'鲜奶',603,3,''),(60302,'发酵奶',603,3,''),(60303,'调味奶',603,3,''),(60304,'奶油乳酪',603,3,''),(60305,'蛋品类',603,3,''),(60401,'速冻面点',604,3,''),(60402,'微波食品',604,3,''),(60403,'肉类制品',604,3,''),(60404,'水产制品',604,3,''),(60405,'蔬菜制品',604,3,''),(60406,'冰棒雪糕',604,3,''),(60501,'鲜果汁',605,3,''),(60502,'鲜菜汁',605,3,''),(70101,'散装蜜饯',701,3,''),(70102,'散装干果',701,3,''),(70103,'散装糖果',701,3,''),(70104,'散装干货',701,3,''),(70105,'散装茶叶',701,3,''),(70106,'散装糕点',701,3,''),(70107,'散装粮',701,3,''),(70108,'散装油',701,3,''),(70201,'面包西点',702,3,''),(70202,'主食面点 ',702,3,''),(70203,'熟食制品',702,3,''),(70204,'素食制品',702,3,''),(70205,'半成品',702,3,''),(80101,'文具',801,3,''),(80102,'纸张本册',801,3,''),(80103,'档案用品',801,3,''),(80104,'办公器材',801,3,''),(80105,'通讯器材',801,3,''),(80106,'工艺/礼品',801,3,''),(80107,'相册相架',801,3,''),(80201,'娱乐用品',802,3,''),(80202,'球类球具',802,3,''),(80203,'运动器材',802,3,''),(80301,'图书类',803,3,''),(80302,'期刊杂志',803,3,''),(80303,'音像制品',803,3,''),(80304,'影像制品',803,3,''),(80401,'塑料玩具',804,3,''),(80402,'布绒玩具',804,3,''),(80403,'拼装玩具',804,3,''),(80404,'电动玩具',804,3,''),(80405,'仿真玩具',804,3,''),(80406,'童车同床',804,3,''),(80407,'益智玩具',804,3,''),(90101,'自行车配件 ',901,3,''),(90102,'灯具照明',901,3,''),(90103,'电工电料 ',901,3,''),(90104,'家用五金 ',901,3,''),(90105,'汽摩用品',901,3,''),(90106,'维修工具 ',901,3,''),(90201,'电视 ',902,3,''),(90202,'影碟机',902,3,''),(90203,'音响 ',902,3,''),(90204,'随身听 ',902,3,''),(90205,'游戏机 ',902,3,''),(90206,'电脑',902,3,''),(90207,'摄像机 ',902,3,''),(90208,'附助器材 ',902,3,''),(90301,'冰箱冰柜',903,3,''),(90302,'洗衣机',903,3,''),(90303,'空调',903,3,''),(90304,'精品小家电',903,3,''),(90405,'热水器',903,3,''),(90406,'灶具',903,3,''),(90407,'油烟机',903,3,''),(90408,'饮水机',903,3,''),(90409,'微波炉',903,3,''),(100101,'家用厨具',1001,3,''),(100102,'餐具茶具',1001,3,''),(100103,'不锈钢制品',1001,3,''),(100104,'搪铝制品',1001,3,''),(100105,'玻璃制品',1001,3,''),(100106,'塑料制品',1001,3,''),(100107,'家用耗品',1001,3,''),(100108,'家用杂品',1001,3,''),(100201,'拼装家具',1002,3,''),(100202,'竹木藤具',1002,3,''),(100203,'室内装饰',1002,3,''),(100204,'雨具伞具',1002,3,''),(100205,'工艺盆栽',1002,3,''),(100301,'成人箱包',1003,3,''),(100302,'学生包',1003,3,''),(100303,'旅行箱包',1003,3,''),(100304,'休闲包',1003,3,''),(100305,'钥匙/钱包',1003,3,''),(110101,'洗浴用品',1101,3,''),(110102,'洗发用品',1101,3,''),(110103,'美发护发',1101,3,''),(110104,'美容化妆',1101,3,''),(110105,'润护品',1101,3,''),(110106,'个人洁护',1101,3,''),(110107,'功能液/皂',1101,3,''),(110108,'婴幼用品',1101,3,''),(110201,'洗衣粉',1102,3,''),(110202,'衣物护理',1102,3,''),(110203,'居室清洁剂',1102,3,''),(110204,'厨房清洁剂',1102,3,''),(110205,'浴厕清洁剂',1102,3,''),(110206,'皮革养护剂',1102,3,''),(110207,'洗衣皂',1102,3,''),(110301,'餐/面/湿巾',1103,3,''),(110302,'卫生巾',1103,3,''),(110303,'护垫',1103,3,''),(110304,'家用卷纸',1103,3,''),(110305,'成人保健',1103,3,''),(110306,'一次性用品',1103,3,''),(110401,'杀虫片/剂',1104,3,''),(110402,'杀虫器/具',1104,3,''),(110403,'防虫用品',1104,3,''),(110404,'芳香剂',1104,3,''),(110405,'除湿用品',1104,3,''),(120101,'寝具套件',1201,3,''),(120102,'床单被罩',1201,3,''),(120103,'床垫枕头',1201,3,''),(120104,'夏凉用具',1201,3,''),(120105,'被/褥/枕/垫',1201,3,''),(120106,'家装布艺',1201,3,''),(120201,'男内衣/裤',1202,3,''),(120202,'女内衣/裤',1202,3,''),(120203,'男/女睡衣',1202,3,''),(120204,'男袜',1202,3,''),(120205,'女袜',1202,3,''),(120206,'毛巾浴巾',1202,3,''),(120207,'儿童内衣',1202,3,''),(120208,'童袜',1202,3,''),(120301,'男式服装',1203,3,''),(120302,'女式服装',1203,3,''),(120303,'儿童服装',1203,3,''),(120304,'衬衫',1203,3,''),(120305,'御寒外套',1203,3,''),(120306,'应季时装',1203,3,''),(120307,'毛衣毛裤',1203,3,''),(120308,'皮带',1203,3,''),(120309,'领带',1203,3,''),(120401,'男式皮鞋',1204,3,''),(120402,'女式皮鞋',1204,3,''),(120403,'童鞋',1204,3,''),(120404,'拖鞋',1204,3,''),(120405,'旅游鞋',1204,3,''),(120406,'便鞋',1204,3,''),(120407,'休闲鞋',1204,3,''),(120408,'功能鞋具',1204,3,'');

/*Table structure for table `tb_provider` */

DROP TABLE IF EXISTS `tb_provider`;

CREATE TABLE `tb_provider` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `proCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商编码',
  `proName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商名称',
  `proDesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商详细描述',
  `proContact` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商联系人',
  `proPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `proAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `proFax` varchar(20) DEFAULT NULL COMMENT '传真',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `companyLicPicPath` varchar(200) DEFAULT NULL COMMENT '企业营业执照的存储路径',
  `orgCodePicPath` varchar(200) DEFAULT NULL COMMENT '组织机构代码证的存储路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `tb_provider` */

insert  into `tb_provider`(`id`,`proCode`,`proName`,`proDesc`,`proContact`,`proPhone`,`proAddress`,`proFax`,`createdBy`,`creationDate`,`modifyDate`,`modifyBy`,`companyLicPicPath`,`orgCodePicPath`) values (1,'BJ_GYS001','北京三木堂商贸有限公司','长期合作伙伴，主营产品:茅台、五粮液、郎酒、酒鬼酒、泸州老窖、赖茅酒、法国红酒等','张国强','13566667777','北京市丰台区育芳园北路','010-58858787',1,'2019-03-21 16:52:07',NULL,NULL,NULL,NULL),(2,'HB_GYS001','石家庄帅益食品贸易有限公司','长期合作伙伴，主营产品:饮料、水饮料、植物蛋白饮料、休闲食品、果汁饮料、功能饮料等','王军','13309094212','河北省石家庄新华区','0311-67738876',1,'2019-04-13 04:20:40',NULL,NULL,NULL,NULL),(3,'GZ_GYS001','深圳市泰香米业有限公司','初次合作伙伴，主营产品：良记金轮米,龙轮香米等','郑程瀚','13402013312','广东省深圳市福田区深南大道6006华丰大厦','0755-67776212',1,'2019-03-21 16:56:07',NULL,NULL,NULL,NULL),(4,'GZ_GYS002','深圳市喜来客商贸有限公司','长期合作伙伴，主营产品：坚果炒货.果脯蜜饯.天然花茶.营养豆豆.特色美食.进口食品.海味零食.肉脯肉','林妮','18599897645','广东省深圳市福龙工业区B2栋3楼西','0755-67772341',1,'2019-03-22 16:52:07',NULL,NULL,NULL,NULL),(5,'JS_GYS001','兴化佳美调味品厂','长期合作伙伴，主营产品：天然香辛料、鸡精、复合调味料','徐国洋','13754444221','江苏省兴化市林湖工业区','0523-21299098',1,'2019-11-22 16:52:07',NULL,NULL,NULL,NULL),(6,'BJ_GYS002','北京纳福尔食用油有限公司','长期合作伙伴，主营产品：山茶油、大豆油、花生油、橄榄油等','马莺','13422235678','北京市朝阳区珠江帝景1号楼','010-588634233',1,'2018-03-21 17:52:07',NULL,NULL,NULL,NULL),(7,'BJ_GYS003','北京国粮食用油有限公司','初次合作伙伴，主营产品：花生油、大豆油、小磨油等','王驰','13344441135','北京大兴青云店开发区','010-588134111',1,'2019-04-13 00:00:00',NULL,NULL,NULL,NULL),(8,'ZJ_GYS001','慈溪市广和绿色食品厂','长期合作伙伴，主营产品：豆瓣酱、黄豆酱、甜面酱，辣椒，大蒜等农产品','薛圣丹','18099953223','浙江省宁波市慈溪周巷小安村','0574-34449090',1,'2018-11-21 06:02:07',NULL,NULL,NULL,NULL),(9,'GX_GYS001','优百商贸有限公司','长期合作伙伴，主营产品：日化产品','李立国','13323566543','广西南宁市秀厢大道42-1号','0771-98861134',1,'2018-03-21 19:52:07',NULL,NULL,NULL,NULL),(10,'JS_GYS002','南京火头军信息技术有限公司','长期合作伙伴，主营产品：不锈钢厨具等','陈女士','13098992113','江苏省南京市浦口区浦口大道1号新城总部大厦A座903室','025-86223345',1,'2018-03-25 16:52:07',NULL,NULL,NULL,NULL),(11,'GZ_GYS003','广州市白云区美星五金制品厂','长期合作伙伴，主营产品：海绵床垫、坐垫、靠垫、海绵枕头、头枕等','梁天','13562276775','广州市白云区钟落潭镇福龙路20号','020-85542231',1,'2019-12-21 06:12:17',NULL,NULL,NULL,NULL),(12,'BJ_GYS004','北京隆盛日化科技','长期合作伙伴，主营产品：日化环保清洗剂，家居洗涤专卖、洗涤用品网、墙体除霉剂、墙面霉菌清除剂等','孙欣','13689865678','北京市大兴区旧宫','010-35576786',1,'2018-11-21 12:51:11',NULL,NULL,NULL,NULL),(13,'SD_GYS001','山东豪克华光联合发展有限公司','长期合作伙伴，主营产品：洗衣皂、洗衣粉、洗衣液、洗洁精、消杀类、香皂等','吴洪转','13245468787','山东济阳济北工业区仁和街21号','0531-53362445',1,'2019-01-28 10:52:07',NULL,NULL,NULL,NULL),(14,'JS_GYS003','无锡喜源坤商行','长期合作伙伴，主营产品：日化品批销','周一清','18567674532','江苏无锡盛岸西路','0510-32274422',1,'2018-04-23 11:11:11',NULL,NULL,NULL,NULL),(15,'ZJ_GYS002','乐摆日用品厂','长期合作伙伴，主营产品：各种中、高档塑料杯，塑料乐扣水杯（密封杯）、保鲜杯（保鲜盒）、广告杯、礼品杯','王世杰','13212331567','浙江省金华市义乌市义东路','0579-34452321',1,'2019-08-22 10:01:30',NULL,NULL,NULL,NULL);

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roleCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色编码',
  `roleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tb_role` */

insert  into `tb_role`(`id`,`roleCode`,`roleName`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`)
values (1,'DSSCM_ADMIN','系统管理员',1,'2019-08-13 00:00:00',1,'2019-11-03 11:00:44'),(2,'DSSCM_MANAGER','经理',1,'2019-08-13 00:00:00',NULL,NULL),(3,'DSSCM_EMPLOYEE','普通员工',1,'2019-08-13 00:00:00',NULL,NULL),(4,'DSSCM_PERSONNEL','人事部员工',1,'2019-11-01 23:37:21',NULL,NULL),(5,'DSSCM_PURCHASE','采购部员工',1,'2019-11-01 23:37:21',NULL,NULL),(6,'DSSCM_MATERIAL','物资部员工',1,'2019-11-01 23:37:22',NULL,NULL),(7,'DSSCM_SALES','销售部员工',1,'2019-11-01 23:37:23',NULL,NULL),(10,'dsscm_123','员工123',1,'2019-11-04 09:02:36',1,'2019-11-04 09:04:41');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编码',
  `userName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `userPassword` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户密码',
  `gender` int(10) DEFAULT NULL COMMENT '性别（1:女、 2:男）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `userDesc` text COMMENT '简介',
  `userRole` int(10) DEFAULT NULL COMMENT '用户角色（取自角色表-角色id）',
  `imgPath` varchar(100) DEFAULT NULL COMMENT '用户照片',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`userCode`,`userName`,`userPassword`,`gender`,`birthday`,`email`,`phone`,`address`,`userDesc`,`userRole`,`imgPath`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`) values (1,'admin','系统管理员','123456',2,'1991-10-22',NULL,'13688889999','北京市海淀区成府路207号','\"I like the way you work it  \r\nNo diggity  \r\nI wanna bag it up\"',1,NULL,1,'2019-10-24 13:01:49',1,'2019-11-03 16:40:25'),(2,'liming','李明','0000000',2,'1993-12-10',NULL,'13688884457','北京市东城区前门东大街9号',NULL,2,NULL,1,'2019-10-24 13:01:50',NULL,NULL),(3,'hanlubiao','韩路彪','0000000',2,'1994-06-05',NULL,'18567542321','北京市朝阳区北辰中心12号',NULL,2,NULL,1,'2019-10-24 13:01:51',NULL,NULL),(4,'zhanghua','张华','0000000',1,'1993-06-15',NULL,'13544561111','北京市海淀区学院路61号',NULL,3,NULL,1,'2019-10-24 13:01:51',NULL,NULL),(5,'wangyang','王洋','0000000',2,'1992-12-31',NULL,'13444561124','北京市海淀区西二旗辉煌国际16层',NULL,3,NULL,1,'2019-10-24 13:01:52',NULL,NULL),(6,'zhaoyan','赵燕','0000000',1,'1996-03-07',NULL,'18098764545','北京市海淀区回龙观小区10号楼',NULL,3,NULL,1,'2019-10-24 13:01:53',NULL,NULL),(7,'sunlei','孙磊','0000000',2,'1991-01-04',NULL,'13387676765','北京市朝阳区管庄新月小区12楼',NULL,3,NULL,1,'2019-10-24 13:01:53',NULL,NULL),(8,'sunxing','孙兴','0000000',2,'1998-03-12',NULL,'13367890900','北京市朝阳区建国门南大街10号',NULL,3,NULL,1,'2019-10-24 13:01:54',NULL,NULL),(9,'zhangchen','张晨','0000000',1,'1986-03-28',NULL,'18098765434','朝阳区管庄路口北柏林爱乐三期13号楼',NULL,3,NULL,1,'2019-10-24 13:01:55',1,'2019-11-14 14:15:36'),(10,'dengchao','邓超','0000000',2,'1991-11-04',NULL,'13689674534','北京市海淀区北航家属院10号楼',NULL,3,NULL,1,'2019-10-24 13:01:55',NULL,NULL),(11,'yangguo','杨过','0000000',2,'1990-01-01',NULL,'13388886623','北京市朝阳区北苑家园茉莉园20号楼','',6,NULL,1,'2019-10-24 13:01:56',1,'2019-11-03 16:50:51'),(12,'zhaomin','赵敏','12345678',1,'1997-12-04','','18099897657','北京市昌平区天通苑3区12号楼','',5,'D:\\soft\\apache-tomcat-7.0.76\\webapps\\DSSCM\\statics\\uploadfiles\\1572829866723_Personal.jpg',1,'2019-10-24 13:01:57',1,'2019-11-04 09:09:21'),(13,'zhangsan','张三','123456',2,'1992-02-29','123@qq.com','13912341234','湖南长沙','',7,'D:\\soft\\apache-tomcat-7.0.76\\webapps\\DSSCM\\statics\\uploadfiles\\1572768815398_Personal.jpg',NULL,'2019-11-03 11:59:17',1,'2019-11-07 23:47:52'),(14,'wangwu','王五','1234567',2,'2019-11-01','123@qq.com','13912341234','湖南长沙','',10,NULL,1,'2019-11-08 16:39:27',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;





CREATE TABLE `dsscm`.`tb_idcard` (
  `id` INT NOT NULL,
  `uid` INT NOT NULL,
  `CODE` VARCHAR(18) NULL,
  PRIMARY KEY (`id`));


  INSERT INTO `tb_idcard` (`id`,`uid`,`CODE`) VALUES (1,1,'430101200001011234');
INSERT INTO `tb_idcard` (`id`,`uid`,`CODE`) VALUES (2,2,'430101200001011321');
