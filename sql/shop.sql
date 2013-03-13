-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.24-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema shop
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ shop;
USE shop;

--
-- Table structure for table `shop`.`advice`
--

DROP TABLE IF EXISTS `advice`;
CREATE TABLE `advice` (
  `advice_id` int(11) NOT NULL auto_increment,
  `title` varchar(30) default NULL,
  `content` varchar(30) default NULL,
  `userid` int(11) default NULL,
  PRIMARY KEY  (`advice_id`),
  KEY `userid` (`userid`),
  CONSTRAINT `advice_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `shop`.`advice`
--

/*!40000 ALTER TABLE `advice` DISABLE KEYS */;
/*!40000 ALTER TABLE `advice` ENABLE KEYS */;


--
-- Table structure for table `shop`.`manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `manager_id` int(10) unsigned NOT NULL auto_increment,
  `manager_name` varchar(45) NOT NULL default '',
  `manager_password` varchar(45) NOT NULL default '',
  `manager_type` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `shop`.`manager`
--

/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` (`manager_id`,`manager_name`,`manager_password`,`manager_type`) VALUES 
 (1,'severus','severus','super_admin'),
 (2,'tom','tom','order_admin'),
 (3,'jerry','jerry','product_admin'),
 (4,'scott','scott','user_admin'),
 (5,'tiger','tiger','pay_type_admin'),
 (6,'root','root','product_type_admin');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;


--
-- Table structure for table `shop`.`orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `sale_count` varchar(255) default NULL,
  `order_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  PRIMARY KEY  (`order_item_id`),
  KEY `FK60163F61E0A93363` (`product_id`),
  KEY `FK60163F6153FAA168` (`order_id`),
  CONSTRAINT `FK60163F6153FAA168` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `FK60163F61E0A93363` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `shop`.`orderitem`
--

/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` (`order_item_id`,`sale_count`,`order_id`,`product_id`) VALUES 
 (1,'1',1,1),
 (2,'1',2,1),
 (3,'1',3,1),
 (4,'1',4,2),
 (5,'1',5,13),
 (6,'1',6,33),
 (7,'1',7,7),
 (8,'1',8,7),
 (9,'1',9,7),
 (10,'1',10,34),
 (11,'1',11,31),
 (12,'1',12,31),
 (13,'1',13,31),
 (14,'1',14,31),
 (15,'1',15,31),
 (16,'1',16,31),
 (17,'1',17,1),
 (18,'1',18,1),
 (19,'1',19,1),
 (20,'45',20,1),
 (21,'34',21,5),
 (22,'34',22,5),
 (23,'34',23,5),
 (24,'1',24,2);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;


--
-- Table structure for table `shop`.`orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `order_num` varchar(255) default NULL,
  `send_place` varchar(255) default NULL,
  `order_time` varchar(255) default NULL,
  `order_status` varchar(255) default NULL,
  `send_man` varchar(255) default NULL,
  `send_zip` varchar(255) default NULL,
  `send_phone` varchar(255) default NULL,
  `send_email` varchar(255) default NULL,
  `bak` varchar(255) default NULL,
  `user_id` int(11) default NULL,
  `pay_type_id` int(11) default NULL,
  PRIMARY KEY  (`order_id`),
  KEY `FK8D444F05C41AE271` (`user_id`),
  KEY `FK8D444F057DA0CBB4` (`pay_type_id`),
  CONSTRAINT `FK8D444F057DA0CBB4` FOREIGN KEY (`pay_type_id`) REFERENCES `paytype` (`pay_type_id`),
  CONSTRAINT `FK8D444F05C41AE271` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `shop`.`orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`order_id`,`order_num`,`send_place`,`order_time`,`order_status`,`send_man`,`send_zip`,`send_phone`,`send_email`,`bak`,`user_id`,`pay_type_id`) VALUES 
 (1,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-43-02 03:43:11','未处理','张树凯','157100','13654685409','severuszh@gmail.com','aaa',1,4),
 (2,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-48-02 03:48:23','未处理','张树凯','157100','13654685409','severuszh@gmail.com','ss',1,2),
 (3,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-49-02 03:49:52','未处理','张树凯','157100','13654685409','severuszh@gmail.com','sdf',1,3),
 (4,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-53-02 03:53:16','未处理','张树凯','157100','13654685409','severuszh@gmail.com','dsf',1,4),
 (5,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-56-02 03:56:36','未处理','张树凯','157100','13654685409','severuszh@gmail.com','sfa',1,4),
 (6,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-04-02 04:04:29','未处理','张树凯','157100','13654685409','severuszh@gmail.com','s',1,4);
INSERT INTO `orders` (`order_id`,`order_num`,`send_place`,`order_time`,`order_status`,`send_man`,`send_zip`,`send_phone`,`send_email`,`bak`,`user_id`,`pay_type_id`) VALUES 
 (7,'435jd834uh23kh523','黑龙江省','09-31-02 04:31:29','未处理','刘杰','157102','13645872154','liujie@126.com','sdfasdfasd',4,4),
 (8,'435jd834uh23kh523','黑龙江省','09-32-02 04:32:25','未处理','刘杰','157102','13645872154','liujie@126.com','dfdd',4,4),
 (9,'435jd834uh23kh523','黑龙江省','09-34-02 04:34:42','未处理','刘杰','157102','13645872154','liujie@126.com','asdf',4,4),
 (10,'435jd834uh23kh523','黑龙江省齐齐哈尔市','09-38-02 04:38:29','未处理','付强','157600','13624604627','fuqiang843012@163.com','dfs',2,4),
 (11,'435jd834uh23kh523','黑龙江省齐齐哈尔市','09-41-02 04:41:11','未处理','付强','157600','13624604627','fuqiang843012@163.com','dsf',2,4),
 (12,'435jd834uh23kh523','黑龙江省齐齐哈尔市','09-42-02 04:42:03','未处理','付强','157600','13624604627','fuqiang843012@163.com','dsf',2,4),
 (13,'435jd834uh23kh523','黑龙江省齐齐哈尔市','09-42-02 04:42:33','未处理','付强','157600','13624604627','fuqiang843012@163.com','dsf',2,4);
INSERT INTO `orders` (`order_id`,`order_num`,`send_place`,`order_time`,`order_status`,`send_man`,`send_zip`,`send_phone`,`send_email`,`bak`,`user_id`,`pay_type_id`) VALUES 
 (14,'435jd834uh23kh523','黑龙江省齐齐哈尔市','09-43-02 04:43:16','未处理','付强','157600','13624604627','fuqiang843012@163.com','dsf',2,4),
 (15,'435jd834uh23kh523','黑龙江省齐齐哈尔市','09-43-02 04:43:45','未处理','付强','157600','13624604627','fuqiang843012@163.com','dsf',2,4),
 (16,'435jd834uh23kh523','黑龙江省齐齐哈尔市','09-45-02 04:45:12','未处理','付强','157600','13624604627','fuqiang843012@163.com','dsf',2,4),
 (17,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-11-11 09:11:15','未处理','张树凯','157100','13654685409','severuszh@gmail.com','asf',1,6),
 (18,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-13-11 09:13:56','未处理','张树凯','157100','13654685409','severuszh@gmail.com','asf',1,6),
 (19,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-14-11 09:14:14','未处理','张树凯','157100','13654685409','severuszh@gmail.com','asf',1,6),
 (20,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-45-11 01:45:13','未处理','张树凯','157100','13654685409','severuszh@gmail.com','fas',1,3);
INSERT INTO `orders` (`order_id`,`order_num`,`send_place`,`order_time`,`order_status`,`send_man`,`send_zip`,`send_phone`,`send_email`,`bak`,`user_id`,`pay_type_id`) VALUES 
 (21,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-50-11 01:50:45','未处理','张树凯','157100','13654685409','severuszh@gmail.com','hjm',1,6),
 (22,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-51-11 01:51:18','未处理','张树凯','157100','13654685409','severuszh@gmail.com','hjm',1,6),
 (23,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-51-11 01:51:53','未处理','张树凯','157100','13654685409','severuszh@gmail.com','hjm',1,6),
 (24,'435jd834uh23kh523','黑龙江省海林市城区河东路133-1号','09-53-27 04:53:36','未处理','张树凯','157100','13654685409','severuszh@gmail.com','aakdjflaksdjfkas',1,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Table structure for table `shop`.`paytype`
--

DROP TABLE IF EXISTS `paytype`;
CREATE TABLE `paytype` (
  `pay_type_id` int(11) NOT NULL auto_increment,
  `pay_type_name` varchar(255) default NULL,
  PRIMARY KEY  (`pay_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `shop`.`paytype`
--

/*!40000 ALTER TABLE `paytype` DISABLE KEYS */;
INSERT INTO `paytype` (`pay_type_id`,`pay_type_name`) VALUES 
 (1,'网上银行'),
 (2,'支付宝'),
 (3,'快钱支付'),
 (4,'邮局汇款'),
 (5,'其他付款方式'),
 (6,'银行汇款');
/*!40000 ALTER TABLE `paytype` ENABLE KEYS */;


--
-- Table structure for table `shop`.`product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL auto_increment,
  `product_name` varchar(255) default NULL,
  `product_price` varchar(255) default NULL,
  `product_vip_price` varchar(255) default NULL,
  `product_command_info` varchar(255) default NULL,
  `product_detail_info` varchar(255) default NULL,
  `product_count` int(11) default NULL,
  `product_sale_count` varchar(255) default NULL,
  `product_hit` int(11) default NULL,
  `product_image_path` varchar(255) default NULL,
  `product_type_id` int(11) default NULL,
  PRIMARY KEY  (`product_id`),
  KEY `FK50C664CFA8232542` (`product_type_id`),
  CONSTRAINT `FK50C664CFA8232542` FOREIGN KEY (`product_type_id`) REFERENCES `producttype` (`product_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `shop`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_id`,`product_name`,`product_price`,`product_vip_price`,`product_command_info`,`product_detail_info`,`product_count`,`product_sale_count`,`product_hit`,`product_image_path`,`product_type_id`) VALUES 
 (1,'苹果G3lse','7888.00','7888.00','轻薄小巧','2G内存 250G硬盘  T8110CPU',64550,'5411111145',21,'./picture/c2.jpg',1),
 (2,'sony  LKJDF23','5420.00','4990.00','时尚大方','2G内存 250G硬盘  T8110CPU',6144,'011',4,'./picture/c3.jpg',1),
 (3,'联想ThinkPad','6910.00','59950.00','轻薄  时尚  朴实','2G内存 250G硬盘  T8110CPU',88651,'37',1,'./picture/c4.jpg',1),
 (4,'HP  LJGODJ43','7851.00','7500.00','简单  实用','2G内存 250G硬盘  T8110CPU',5454,'0',2,'./picture/c5.jpg',1),
 (5,'华硕  JDFH','5446.00','5000.00','高品质  坚若磐石','2G内存 250G硬盘  T8110CPU',744,'9343434',15,'./picture/c6.jpg',1),
 (6,'DELL ljdfk_0','4999.00','4732.00','方便','2G内存 250G硬盘  T8110CPU',44544,'0',1,'./picture/c7.jpg',1),
 (7,'apple JLKJ0_1','9800.00','9600.00','高贵 轻薄 小巧','2G内存 250G硬盘  T8110CPU',164153,'0111',2,'./picture/c8.jpg',1),
 (8,'SONY LKJL','8756.00','8652.00','高贵','2G内存 250G硬盘  T8110CPU',4454,'25',1,'./picture/c9.jpg',1);
INSERT INTO `product` (`product_id`,`product_name`,`product_price`,`product_vip_price`,`product_command_info`,`product_detail_info`,`product_count`,`product_sale_count`,`product_hit`,`product_image_path`,`product_type_id`) VALUES 
 (9,'SONY LKJis','5621.00','5423.00','轻薄 小巧','2G内存 250G硬盘  T8110CPU',935,'0',4,'./picture/c10.jpg',1),
 (10,'HP HFSKD_34','4560.00','4460.00','朴实  高品质','2G内存 250G硬盘  T8110CPU',231,'0',1,'./picture/c11.jpg',1),
 (11,'HP FDS_4','7840.00','7530.00','时尚大方','2G内存 250G硬盘  T8110CPU',15465,'0',0,'./picture/c12.jpg',1),
 (12,'HP LDJFGSD','5421.00','5200.00','简单实用','2G内存 250G硬盘  T8110CPU',764,'18',0,'./picture/c13.jpg',1),
 (13,'联想 ThinkPad S','6200.00','60000.00','时尚 ','2G内存 250G硬盘  T8110CPU',14113,'01',1,'./picture/c14.jpg',1),
 (14,'联想ThinkPad G','5999.00','5700.00','轻薄小巧','2G内存 250G硬盘  T8110CPU',4252,'11',29,'./picture/c15.jpg',1),
 (15,'联想ThinkPad J','5700.00','5600.00','简单  放表','2G内存 250G硬盘  T8110CPU',5454,'0',1,'./picture/c16.jpg',1),
 (16,'Dell','5800.00','5700.00','朴实  高品质','2G内存 250G硬盘  T8110CPU',541,'0',0,'./picture/c17.jpg',1);
INSERT INTO `product` (`product_id`,`product_name`,`product_price`,`product_vip_price`,`product_command_info`,`product_detail_info`,`product_count`,`product_sale_count`,`product_hit`,`product_image_path`,`product_type_id`) VALUES 
 (17,'DELL fLKJFD','4800.00','4700.00','朴实  高品质','2G内存 250G硬盘  T8110CPU',7524,'87',0,'./picture/c18.jpg',1),
 (18,'DELL fskalfj','8751.00','8500.00','高品质  坚若磐石','2G内存 250G硬盘  T8110CPU',416,'0',15,'./picture/c19.jpg',1),
 (19,'DELL JKFDL','5612.00','5400.00','高贵','2G内存 250G硬盘  T8110CPU',1448,'0',0,'./picture/c20.jpg',1),
 (20,'HP OERUOW','5600.00','5400.00','朴实  高品质','2G内存 250G硬盘  T8110CPU',547,'0',0,'./picture/c21.jpg',1),
 (21,'HP falksd','5600.00','5400.00','简单 ','2G内存 250G硬盘  T8110CPU',1541,'11',0,'./picture/c22.jpg',1),
 (22,'apple  DDD_2','7800.00','7600.00','高品质','2G内存 250G硬盘  T8110CPU',526,'0',0,'./picture/c23.jpg',1),
 (23,'apple FF_#','4500.00','4400.00','时尚','2G内存 250G硬盘  T8110CPU',55,'0',0,'./picture/c24.jpg',1),
 (24,'APPLE LKFD','5100.00','5000.00','轻薄','2G内存 250G硬盘  T8110CPU',85,'25',0,'./picture/c25.gif',1);
INSERT INTO `product` (`product_id`,`product_name`,`product_price`,`product_vip_price`,`product_command_info`,`product_detail_info`,`product_count`,`product_sale_count`,`product_hit`,`product_image_path`,`product_type_id`) VALUES 
 (25,'HP 主机','4999.00','4700.00','朴实','2G内存 250G硬盘  T8110CPU',655,'0',0,'./picture/c26.gif',1),
 (26,'HP klasjf','3800.00','3700.00','高品质','2G内存 250G硬盘  T8110CPU',41,'0',0,'./picture/c27.gif',1),
 (27,'Lenove','5400.00','5000.00','时尚','2G内存 250G硬盘  T8110CPU',74,'0',36,'./picture/c28.gif',1),
 (28,'USB  HUB','26.00','24.00','小巧','2插头',475,'0',0,'./picture/d2.gif',3),
 (29,'USB数据线 -ss','10.00','9.00','方便','1.2M',55,'0',0,'./picture/d4.gif',3),
 (30,'USB数据线 -d','11.00','10.00','实用','1M',8485,'0',0,'./picture/d5.gif',3),
 (31,'USB数据线 -SD','5.00','4.00','方便','0.5M',518,'0111111',1,'./picture/d6.gif',3),
 (32,'USB数据线-JK','7.00','6.00','实用','1M',455,'0',0,'./picture/d8.gif',3),
 (33,'USB数据线-cm','10.00','9.50','实用','1M',54,'01',24,'./picture/d10.gif',3);
INSERT INTO `product` (`product_id`,`product_name`,`product_price`,`product_vip_price`,`product_command_info`,`product_detail_info`,`product_count`,`product_sale_count`,`product_hit`,`product_image_path`,`product_type_id`) VALUES 
 (34,'USB数据线-CJ','11.00','11.00','方便','2M',54,'01',1,'./picture/d13.gif',3),
 (35,'USB数据线-kxj','10.00','9.00','实用','0.8M',74,'0',0,'./picture/d14.gif',3),
 (36,'网线','25.00','24.00','方便','5M',69,'0',0,'./picture/d11.gif',3),
 (37,'视频输出线','37.00','35.00','实用','4M',89,'0',0,'./picture/d20.gif',3),
 (38,'光纤','78.00','76.00','方便','100M',474,'5',1,'./picture/d60.gif',3),
 (39,'网卡','240.00','230.00','方便实用','快速外接',74,'0',0,'./picture/e2.gif',4),
 (40,'内置网卡','190.00','180.00','方便实用','快速外接',415,'0',0,'./picture/e3.gif',4),
 (41,'内置网卡-MH','260.00','251.00','方便实用','快速外接',44,'0',0,'./picture/e4.gif',4),
 (42,'内存条_2G','110.00','106.00','实用','高品质 2G',85,'7',0,'./picture/e5.gif',4),
 (43,'内存条_4G','120.00','111.00','实用','高品质 2G',74,'0',1,'./picture/e11.gif',4);
INSERT INTO `product` (`product_id`,`product_name`,`product_price`,`product_vip_price`,`product_command_info`,`product_detail_info`,`product_count`,`product_sale_count`,`product_hit`,`product_image_path`,`product_type_id`) VALUES 
 (44,'存储卡_HG','85.00','80.00','实用','高品质 2G',548,'13',0,'./picture/e6.gif',4),
 (45,'锂电池','542.00','532.00','电力充足','高品质',54,'0',0,'./picture/e9.gif',4),
 (46,'内存条_HNF','150.00','145.00','实用','高品质',84,'0',0,'./picture/e12.gif',4),
 (47,'存储卡KL','45.00','40.00','大容量4G','高品质',8585,'0',0,'./picture/e16.gif',4),
 (48,'存储卡','65.00','60.00','大容量8G','高品质',54,'0',0,'./picture/e17.gif',4),
 (49,'锂电池_JHF','590.00','580.00','电力充足','高品质',748,'0',0,'./picture/e19.gif',4),
 (50,'内存条-hRF','120.00','110.00','大容量2G','高品质',455,'0',0,'./picture/e20.gif',4),
 (51,'内存条JKQ','120.00','120.00','大容量2G','高品质',5854,'0',12,'./picture/e21.gif',4),
 (52,'锂电池JG','430.00','420.00','电力充足','高品质',45,'0',0,'./picture/e22.gif',4),
 (53,'锂电池LP','4500.00','440.00','电力充足','高品质',5458,'0',0,'./picture/e23.gif',4);
INSERT INTO `product` (`product_id`,`product_name`,`product_price`,`product_vip_price`,`product_command_info`,`product_detail_info`,`product_count`,`product_sale_count`,`product_hit`,`product_image_path`,`product_type_id`) VALUES 
 (54,'内存条_+HN','120.00','120.00','电力充足','高品质',74,'0',0,'./picture/e26.gif',4),
 (55,'匹克运动鞋 p47','450.00','440.00','舒适 ','舒适',44,'0',5,'./picture/f1.jpg',5),
 (56,'匹克运动鞋y7','350.00','340.00','舒适 ','舒适 ',485,'0',0,'./picture/f2.jpg',5),
 (57,'匹克运动鞋G56','450.00','380.00','舒适 ','舒适 ',55,'0',0,'./picture/f3.jpg',5),
 (58,'nick运动鞋K7h','550.00','540.00','舒适 ','舒适 ',58,'0',0,'./picture/f4.jpg',5),
 (59,'nick运动鞋_JB8','650.00','450.00','舒适 ','舒适 ',488,'0',0,'./picture/f5.jpg',5),
 (60,'nick运动鞋_j!','450.00','380.00','舒适 ','舒适 ',78,'0',0,'./picture/f6.jpg',5),
 (61,'nick运动鞋_HU','990.00','880.00','舒适 ','舒适 ',7458,'0',0,'./picture/f7.jpg',5),
 (62,'nick','570.00','560.00','舒适 ','舒适 ',55,'0',9,'./picture/f8.jpg',5),
 (63,'nick  LJF','750.00','740.00','舒适 ','舒适 ',45,'0',0,'./picture/f9.jpg',5);
INSERT INTO `product` (`product_id`,`product_name`,`product_price`,`product_vip_price`,`product_command_info`,`product_detail_info`,`product_count`,`product_sale_count`,`product_hit`,`product_image_path`,`product_type_id`) VALUES 
 (64,'ad 运动鞋','650.00','640.00','舒适 ','舒适 ',96,'0',0,'./picture/f10.jpg',5),
 (65,'nick_JKHI','450.00','680.00','舒适 ','舒适 ',44,'0',0,'./picture/f11.jpg',5),
 (66,'nickv','850.00','840.00','舒适 ','舒适 ',565,'0',0,'./picture/f12.jpg',5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Table structure for table `shop`.`producttype`
--

DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype` (
  `product_type_id` int(11) NOT NULL auto_increment,
  `product_type_name` varchar(255) default NULL,
  PRIMARY KEY  (`product_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `shop`.`producttype`
--

/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
INSERT INTO `producttype` (`product_type_id`,`product_type_name`) VALUES 
 (1,'电脑类'),
 (2,'MP3/MP4类'),
 (3,'数据线类'),
 (4,'电子元件类'),
 (5,'服装类'),
 (6,'日用品类'),
 (7,'计算机辅助设备'),
 (8,'旅行用品');
/*!40000 ALTER TABLE `producttype` ENABLE KEYS */;


--
-- Table structure for table `shop`.`sitehit`
--

DROP TABLE IF EXISTS `sitehit`;
CREATE TABLE `sitehit` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `hit` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `shop`.`sitehit`
--

/*!40000 ALTER TABLE `sitehit` DISABLE KEYS */;
INSERT INTO `sitehit` (`id`,`hit`) VALUES 
 (1,280);
/*!40000 ALTER TABLE `sitehit` ENABLE KEYS */;


--
-- Table structure for table `shop`.`user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `truename` varchar(255) default NULL,
  `certificate_type` varchar(255) default NULL,
  `certificate_num` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `zip` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `password_hint` varchar(255) default NULL,
  `password_result` varchar(255) default NULL,
  `card_level` varchar(255) default NULL,
  `member_score` int(11) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `shop`.`user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`,`username`,`password`,`truename`,`certificate_type`,`certificate_num`,`sex`,`address`,`tel`,`zip`,`email`,`password_hint`,`password_result`,`card_level`,`member_score`) VALUES 
 (1,'severus','severus','张树凯','身份证','231083198612130414','男','黑龙江省海林市城区河东路133-1号','13654685409','157100','severuszh@gmail.com','用户名','severus','二级魔法师',41387),
 (2,'fuqiang','fuqiang','付强','身份证','325016198412304562','男','黑龙江省齐齐哈尔市','13624604627','157600','fuqiang843012@163.com','名字','fuqiang','0级麻瓜',1274),
 (4,'liujie','liujie','刘杰','身份证','231054198504073658','男','黑龙江省','13645872154','157102','liujie@126.com','名字','liujie','一级魔法师',26394);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
