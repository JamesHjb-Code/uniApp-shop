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
-- Table structure for table `shopdetailimg`
--

DROP TABLE IF EXISTS `shopdetailimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopdetailimg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `shop_Id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopdetailimg`
--

LOCK TABLES `shopdetailimg` WRITE;
/*!40000 ALTER TABLE `shopdetailimg` DISABLE KEYS */;
INSERT INTO `shopdetailimg` VALUES (1,'/static/shopDetailImg/apple12.jpg',1),(2,'/static/shopDetailImg/apple12-1.jpg',1),(3,'/static/shopDetailImg/xiaomi11qingchun.jpg',2),(4,'/static/shopDetailImg/xiaomi11qingchun-1.jpg',2),(5,'/static/shopDetailImg/xiaomi11pro.jpg',3),(6,'/static/shopDetailImg/xiaomi11pro-1.jpg',3),(7,'/static/shopDetailImg/huaweimate30.jpg',4),(8,'/static/shopDetailImg/huaweimate30-1.jpg',4),(9,'/static/shopDetailImg/huaweinova8.jpg',5),(10,'/static/shopDetailImg/huaweinove8-1.jpg',5),(11,'/static/shopDetailImg/huaweimate30.jpg',6),(12,'/static/shopDetailImg/huaweimate30-1.jpg',6),(13,'/static/shopDetailImg/vivos9e.jpg',7),(14,'/static/shopDetailImg/xiaomi11pro-1.jpg',7),(15,'/static/shopDetailImg/oppo.jpg',8),(16,'/static/shopDetailImg/oppo-1.jpg',8),(17,'/static/shopDetailImg/apple12.jpg',9),(18,'/static/shopDetailImg/apple12-1.jpg',9);
/*!40000 ALTER TABLE `shopdetailimg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-21 21:36:16
