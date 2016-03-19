-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_schoolweb
-- ------------------------------------------------------
-- Server version	5.6.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `count_id` int(11) NOT NULL AUTO_INCREMENT,
  `today_count` int(11) DEFAULT NULL,
  `yesterday_count` int(11) DEFAULT NULL,
  `all_count` int(11) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  `day_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`count_id`),
  UNIQUE KEY `count_id_UNIQUE` (`count_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1,109,0,109,110,1);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `mess_id` int(11) NOT NULL AUTO_INCREMENT,
  `mess_title` varchar(50) NOT NULL,
  `vis_name` varchar(50) NOT NULL,
  `vis_tel` varchar(15) DEFAULT NULL,
  `vis_email` varchar(45) DEFAULT NULL,
  `mess_content` text NOT NULL,
  `mess_date` datetime DEFAULT NULL,
  PRIMARY KEY (`mess_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'测试1·','/??','???','','','2016-03-18 20:33:25');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_column` int(11) NOT NULL COMMENT '栏目类别用数字标记',
  `news_title` varchar(50) NOT NULL,
  `news_uploader` varchar(50) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `last_operation` varchar(50) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `img_loaction` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='文章信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,1,'图片新闻测试1','陈恒','Admin','发布','2016-03-17 09:39:35',3,NULL),(2,1,'哈哈哈哈哈哈哈2333333333','sss','chen','更新','2016-03-17 20:17:09',6,NULL),(3,1,'嘉实喊你来看画展啦','王月','chen','更新','2016-03-18 12:25:37',0,NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_detail`
--

DROP TABLE IF EXISTS `news_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_detail` (
  `news_id` int(11) NOT NULL,
  `news_column` int(11) NOT NULL,
  `news_contents` longtext,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_detail`
--

LOCK TABLES `news_detail` WRITE;
/*!40000 ALTER TABLE `news_detail` DISABLE KEYS */;
INSERT INTO `news_detail` VALUES (1,1,'<p>\r\n	qweqweqwe\r\n</p>\r\n<p>\r\n	<img src=\"http://localhost:8080/Try/editor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" />\r\n</p>'),(2,1,'<p>\r\n	<img border=\"0\" alt=\"\" src=\"../editor/plugins/emoticons/images/10.gif\" /><img border=\"0\" alt=\"\" src=\"../editor/plugins/emoticons/images/1.gif\" /><img border=\"0\" alt=\"\" src=\"../editor/plugins/emoticons/images/3.gif\" /> \r\n</p>\r\n<img alt=\"\" src=\"/Try/editor/attached/20160317201654_561.jpg\" width=\"264\" height=\"145\" /> \r\n<p>\r\n	&nbsp;\r\n</p>'),(3,1,'<p style=\"font-family:\'Microsoft Yahei\', 微软雅黑, 宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;font-size:14px;text-indent:20px;background-color:#F6F3FE;\">\r\n	<strong>&nbsp;</strong><span style=\"line-height:1.5;\">&nbsp;</span><span style=\"line-height:1.5;\">&nbsp;&nbsp;</span><span style=\"line-height:1.5;\">近日来，学校行政楼底楼大厅内时常人头攒动，有校内各年级的同学，有闻讯而来的老师，也有众多的领导来宾。是什么吸引了他们？原来，这里正在举办我校602班方泽佼同学的个人书画展。</span>\r\n</p>\r\n<blockquote>\r\n</blockquote>\r\n<span style=\"font-family:\'Microsoft Yahei\', 微软雅黑, 宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;font-size:14px;line-height:1.5;background-color:#F6F3FE;\">&nbsp; &nbsp; &nbsp; &nbsp; 先来认识一下方泽佼同学：“我叫方泽佼，从八岁开始学习国画和软笔书法，这些，都是我成长的点点滴滴。在我的书画生涯中，给我帮助最大的便是我爷爷了，是他给了我前进的动力和勇气。是他鼓励我和我们嘉兴、浙江的名书画家大胆交流，这也给我带来了许多帮助。你们能相信吗？五年的时间中，近四年我是在家自学的，现在的作品虽然称不上好，却也拿得出手。绘画不是枯涩地再现原图，而是经过画者的领悟，进行概括提炼，挪移取舍的精神活动，要加入自己的理解与个人风格。古今中外的画家都十分注重书画对人气质修养的提升作用，我</span><span style=\"font-family:\'Microsoft Yahei\', 微软雅黑, 宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;font-size:14px;line-height:1;\"><span style=\"line-height:1.5;\"></span></span><span style=\"font-family:\'Microsoft Yahei\', 微软雅黑, 宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;font-size:14px;line-height:1.5;background-color:#F6F3FE;\">将一幅幅作品呈现给大家。这些晨曦润成的水墨意趣、曝晒调和的热烈色彩、暮色涌动的线条悠扬，洋溢着希望，洋溢着期待……”</span><br />\r\n<span style=\"font-family:\'Microsoft Yahei\', 微软雅黑, 宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;font-size:14px;line-height:1.5;background-color:#F6F3FE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;从她的前言中，我们读到了一个孩子的成长历程，最让我们感叹的是她坚持不懈的自学毅力，“师傅领进门，修行靠自己”在她身上得到了最好的诠释。虽然目前她的作品还很稚嫩，甚至有些“杂”，但我们相信，以如此持之以恒的毅力，假以时日必有所成。这也正是这位嘉实学姐在本次个人书画展中，传递给学弟学妹们最宝贵的精神财富。 展厅虽小，却是最接地气的嘉实学子艺术风采展示平台；展厅虽简，却能让嘉实学子最真实生动地感受艺术熏陶。此后，这一小型的艺术展厅，将持续推出嘉实学子们的书画、摄影等视觉艺术作品，小展厅欢迎大家的莅临鉴赏，也欢迎有才华的同学、老师、校友前来参展。</span> \r\n<blockquote>\r\n</blockquote>\r\n<blockquote>\r\n	<div class=\"text-img\" style=\"margin:20px 0px 0px;padding:0px;text-align:center;font-family:\'Microsoft Yahei\', 微软雅黑, 宋体, Arial, Lucida, Verdana, Helvetica, sans-serif;font-size:14px;background-color:#F6F3FE;\">\r\n		<div class=\"img\" style=\"margin:0px auto;padding:0px;\">\r\n			<img src=\"http://localhost:8080/Try/content/img/ex.jpg\" alt=\"\" style=\"width:400px;height:300px;\" /> \r\n		</div>\r\n	</div>\r\n</blockquote>');
/*!40000 ALTER TABLE `news_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `real_name` varchar(50) NOT NULL,
  `user_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_count` int(11) NOT NULL DEFAULT '0',
  `permission_sign` bit(1) NOT NULL DEFAULT b'0' COMMENT '0为普通管理员，1为超级管理员',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','陈恒','Admin','2016-03-19 14:10:09',20,''),(2,'chen','陈恒','123456','2016-03-19 17:51:46',23,'\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-19 17:59:07
