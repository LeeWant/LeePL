/*
SQLyog Ultimate v9.63 
MySQL - 5.7.16 : Database - plant
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`plant` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `plant`;

/*Table structure for table `hf_info` */

DROP TABLE IF EXISTS `hf_info`;

CREATE TABLE `hf_info` (
  `hf_id` int(200) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `zt_id` varchar(20) DEFAULT NULL,
  `hf_content` varchar(200) NOT NULL,
  `hf_time` datetime NOT NULL,
  `user_img` varchar(100) NOT NULL,
  PRIMARY KEY (`hf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `hf_info` */

insert  into `hf_info`(`hf_id`,`user_id`,`zt_id`,`hf_content`,`hf_time`,`user_img`) values (9,'旺儿','11','非常美丽的故事感人','2017-10-31 20:49:06','uploadImages/mh.jpg'),(10,'旺儿','11','也很凄美','2017-10-31 20:52:00','uploadImages/mh.jpg'),(14,'李颢','12','真是个感人的故事','2017-10-31 22:25:52','uploadImages/mh.jpg'),(16,'lee','13','玫瑰棒的','2017-10-31 22:52:23','uploadImages/tx1.jpg'),(17,'lee','13','呼啦啦啦','2017-10-31 22:52:28','uploadImages/tx1.jpg'),(19,'山药大师','15','多吃山药好的很！','2017-10-31 22:54:04','uploadImages/tx2.jpg'),(20,'lee','15','我也觉得','2017-10-31 22:55:48','uploadImages/tx1.jpg'),(21,'忠贤是个仙女','15','养生之路！','2017-10-31 22:56:43','uploadImages/tx3.png'),(22,'花语代表我的心','14','最喜欢满天星','2017-10-31 23:00:10','uploadImages/tx5.jpg'),(23,'花语代表我的心','13','玫瑰很美','2017-10-31 23:00:21','uploadImages/tx5.jpg'),(30,'Lee','16','多姿多彩','2017-11-02 09:45:49','uploadImages/tx1.jpg');

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `user_id` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_nickname` varchar(20) DEFAULT NULL,
  `user_sex` int(1) NOT NULL DEFAULT '0',
  `user_modificationtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_del` int(11) DEFAULT '0',
  `user_level` int(1) NOT NULL DEFAULT '0',
  `user_regdate` datetime DEFAULT NULL,
  `user_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_info` */

insert  into `user_info`(`user_id`,`user_password`,`user_nickname`,`user_sex`,`user_modificationtime`,`user_del`,`user_level`,`user_regdate`,`user_img`) values ('125','123',NULL,0,'2018-06-10 11:29:55',0,0,'2018-06-10 11:29:55','uploadImages/tx2.jpg'),('admin','admin',NULL,0,'2017-11-05 21:52:02',0,1,NULL,NULL),('Lee','lee123',NULL,1,'2017-10-31 23:19:33',0,0,'2017-10-31 22:49:02','uploadImages/tx1.jpg'),('Lee1','1234',NULL,0,'2018-03-20 19:38:06',0,0,'2018-03-20 19:36:20','uploadImages/u=1373411777,3992091759&fm=27&gp=0.jpg'),('山药大师','123',NULL,1,'2017-10-31 23:19:41',0,0,'2017-10-31 22:53:08','uploadImages/tx2.jpg'),('忠贤是个仙女','123',NULL,0,'2017-10-31 22:46:17',0,0,'2017-10-31 22:41:19','uploadImages/tx3.png'),('旺儿','123',NULL,0,'2017-10-31 22:50:32',0,0,'2017-10-31 20:35:16','uploadImages/tx2.jpg'),('花语代表我的心','123',NULL,0,'2017-10-31 22:59:48',0,0,'2017-10-31 22:59:23','uploadImages/tx5.jpg');

/*Table structure for table `zt_info` */

DROP TABLE IF EXISTS `zt_info`;

CREATE TABLE `zt_info` (
  `zt_id` int(200) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `zt_theme` varchar(20) DEFAULT '植物',
  `zt_title` varchar(20) NOT NULL,
  `zt_content` varchar(500) DEFAULT NULL,
  `zt_hfl` int(20) DEFAULT '0',
  `zt_time` datetime NOT NULL,
  `user_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`zt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `zt_info` */

insert  into `zt_info`(`zt_id`,`user_id`,`zt_theme`,`zt_title`,`zt_content`,`zt_hfl`,`zt_time`,`user_img`) values (11,'旺儿','植物','爱丽丝――法国 名花','爱丽丝是法国的国花，最初，这个名字的由来，原希腊神话中的“彩虹神”伊丽丝。伊丽丝是掌管恋爱的神，所以又称她为“彩虹”女神，是因为，恋爱的美丽和绚丽、幻想，不都像彩虹一样迷人吗？　　当然，恋爱不能是凭一时兴起的。自远古以来，男女都在追求“永不消失的爱”。而善妒的宙斯使者伊利斯(IRIS)以为变成花之后，应该会改变这种想法吧！　　当你受制于[伊利斯]的魔力时，即使你变成“爱丽丝”也不会有任何怨言吧！那道总是晴空下闪烁着美丽光辉的彩虹-----爱丽丝。 　　难道世上真的有这么完美的恋爱吗？牵牛花—别名东云草　　直到数十年前，无论在都市、乡间或家中的庭院里，都可以看到牵牛花的方足。现在由于水泥公寓房子越来越多了，都市的人，恐怕也只能偶而在墙角发现它了。　　牵牛花是一种很平民化又令人感觉亲切的花。　　正因为它这种平实的特性，更可用代表一般人平实的爱情，但是，又因为他只在早上开花，一会儿就凋谢了，也给人一种短暂、渺茫的感觉。',2,'2017-10-31 20:36:30','uploadImages/mh.jpg'),(13,'忠贤是个仙女','植物','玫瑰 （蔷薇科蔷薇属植物）','玫瑰（学名：Rosa rugosa Thunb.）：原产地中国。属蔷薇目，蔷薇科落叶灌木，枝杆多针刺，奇数羽状复叶，小叶5-9片，椭圆形，有边刺。花瓣倒卵形，重瓣至半重瓣，花有紫红色、白色，果期8-9月，扁球形。枝条较为柔弱软垂且多密刺，每年花期只有一次，因此较少用于育种，近来其主要被重视的特性为抗病性与耐寒性。\r\n玫瑰作为经济作物时，其花朵主要用于食品及提炼香精玫瑰油，玫瑰油应用于化妆品、食品、精细化工等工业。\r\n在欧洲诸语言中，蔷薇、玫瑰、月季都是使用同一个词，如英语是rose，德语是Die Rose。玫瑰是英国的国花，也是中国吉林省吉林市的市花。通俗意义中的“玫瑰”已成为多种蔷薇属植物的通称。',3,'2017-10-31 22:43:25','uploadImages/tx3.png'),(14,'Lee','植物','满天星 （石竹科石头花属植物）','满天星，原名：圆锥石头花，别名：锥花丝石竹、圆锥花丝石竹、丝石竹、锥花霞草、满天星，石竹科、石头花属多年生草本。产新疆阿尔泰山区和塔什库尔干。耐寒，喜冷凉气候，忌炎热，多雨。生于海拔1 100-1 500米河滩、草地、固定沙丘、石质山坡及农田中。哈萨克斯坦、俄罗斯（西伯利亚）、蒙古（西部）、欧洲（西部、中部和东部）、北美也有。根、茎可供药用。栽培可供观赏。满天星的花语是:甘愿做配角的爱，只愿在你身边。',1,'2017-10-31 22:51:48','uploadImages/tx1.jpg'),(15,'山药大师','植物','怀山药——养生必备','山药原名薯蓣，唐代宗名李预，因避讳改为薯药；北宋时因避宋英宗赵曙讳而更名山药。河南怀庆府（今博爱，武陟，温县）所产最佳，谓之“怀山药”。“怀山药”曾在1914年巴拿马万国博览会上展出，遂蜚声中外，历年来向英、美等十多个国家和地区出口。《本草纲目》说它有补中益气，强筋健脾等滋补功效。山药，作为药食两用的中药材，受区域气候特征、地质特点、生长习性等因素的影响，具有不同的产地特征。山药主产地河南博爱、武陟、温县等地，山西、陕西、山东、河北、浙江、湖南、四川、云南、贵州、广西等地也有栽培。以广西、河北、河南等地为主的几大产地构成了国内主要山药栽培区。',3,'2017-10-31 22:53:54','uploadImages/tx2.jpg'),(16,'花语代表我的心','植物','七色堇e','七色堇（jǐn），又名七色花。传说中的七色堇是具有七个花瓣的花朵，每片花瓣都呈现不同的颜色，分别为黄、红、蓝、绿、橙、紫、青。\r\n自然界没有真正的七色花，因为花朵是植物的繁殖器官，如果色彩太杂，反而会使昆虫眼花缭乱，从而降低光顾授粉的概率，从这一点看，七色堇的存在也是有悖于自然规律的。',1,'2017-10-31 23:01:15','uploadImages/tx5.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
