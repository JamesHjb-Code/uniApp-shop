-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: my_shop
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `commundetail`
--

DROP TABLE IF EXISTS `commundetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commundetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `father_id` int NOT NULL,
  `img` varchar(200) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commundetail`
--

LOCK TABLES `commundetail` WRITE;
/*!40000 ALTER TABLE `commundetail` DISABLE KEYS */;
INSERT INTO `commundetail` VALUES (1,10,'/static/pics/houseHome.jpeg','现代简约 明亮的外表卧室背景墙'),(2,20,'/static/pics/photodesign.jpeg','黑白摄影设计够美观'),(3,30,'/static/pics/starbeautyone.jpeg','明星美女-皮肤很白又很细'),(4,40,'/static/pics/spacedesign.jpeg','办公室空间设计效果图'),(5,50,'/static/pics/familydecoration.jpeg','户型效果图-欧美风格装修'),(6,60,'/static/pics/advertising.jpeg','广告摄影真是好看，又是cool'),(7,70,'/static/pics/photoacademy.jpeg','学习摄影是一件值得的事件'),(8,80,'/static/pics/codeone.jpeg','编程语言为python-机器学习'),(9,90,'/static/pics/sweetone.jpeg','清纯甜美的女人是个漂亮'),(10,100,'/static/pics/animeone.jpeg','我喜欢看动漫图片，动漫美女真是好看'),(11,110,'/static/pics/gamestwo.jpeg','我喜欢玩游戏，可以使我本身放松'),(12,130,'/static/pics/sportstwo.jpeg','坚持锻炼才是王道'),(13,140,'/static/pics/nbathree.jpeg','科比是世界上最伟大的篮球运动员'),(14,140,'/static/pics/nbaone.jpeg','NBA最强的阵容'),(15,110,'/static/pics/gamesone.jpeg','英雄联盟是最火热的大型游戏');
/*!40000 ALTER TABLE `commundetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-09 17:48:03
