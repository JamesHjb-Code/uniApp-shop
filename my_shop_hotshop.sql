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
-- Table structure for table `hotshop`
--

DROP TABLE IF EXISTS `hotshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotshop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `img` varchar(255) NOT NULL,
  `sellPrice` int NOT NULL,
  `marketPrice` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotshop`
--

LOCK TABLES `hotshop` WRITE;
/*!40000 ALTER TABLE `hotshop` DISABLE KEYS */;
INSERT INTO `hotshop` VALUES (1,'Apple iPhone 12 (A2404) 128GB 白色','/static/hotShop/apple12.jpg',4399,4799),(2,'小米11青春版 骁龙780G处理器 AMOLED柔性直屏','/static/hotShop/xiaomi11qingchun.jpg',3799,4199),(3,'小米11 Pro 5G 骁龙888 2K AMOLED四曲面柔性屏 67W无线闪充','/static/hotShop/xiaomi11pro.jpg',3288,3422),(4,'华为 HUAWEI Mate 30E Pro 5G麒麟990E SoC芯','/static/hotShop/huaweimate30.jpg',3199,2899),(5,'华为 HUAWEI nova 8 麒麟985 5G SoC芯片 6400万魅力四摄','/static/hotShop/huaweinova8.jpg',4899,5299),(6,'华为 HUAWEI Mate 40 Pro麒麟9000 SoC芯片 超感知徕卡电影影像','/static/hotShop/huaweimate30.jpg',6799,7499),(7,'vivo S9e 5G手机 8GB+128GB 星夜极光','/static/hotShop/vivos9e.jpg',3299,3499),(8,'OPPO Reno5 5G 6400万水光人像四摄 65W超级闪充 8+128','/static/hotShop/oppo.jpg',2899,2699),(9,'OPPO Reno5 5G 6400万水光人像四摄 65W超级闪充 8+128','/static/hotShop/oppo.jpg',2899,2699),(10,'Apple iPhone 12 (A2404) 128GB 白色','/static/hotShop/apple12.jpg',4399,4799),(11,'小米11青春版 骁龙780G处理器 AMOLED柔性直屏','/static/hotShop/xiaomi11qingchun.jpg',3799,4199),(12,'小米11 Pro 5G 骁龙888 2K AMOLED四曲面柔性屏 67W无线闪充','/static/hotShop/xiaomi11pro.jpg',3288,3422),(13,'华为 HUAWEI Mate 30E Pro 5G麒麟990E SoC芯','/static/hotShop/huaweimate30.jpg',3199,2899),(14,'华为 HUAWEI nova 8 麒麟985 5G SoC芯片 6400万魅力四摄','/static/hotShop/huaweinova8.jpg',4899,5299),(15,'华为 HUAWEI Mate 40 Pro麒麟9000 SoC芯片 超感知徕卡电影影像','/static/hotShop/huaweimate30.jpg',6799,7499),(16,'vivo S9e 5G手机 8GB+128GB 星夜极光','/static/hotShop/vivos9e.jpg',3299,3499),(17,'OPPO Reno5 5G 6400万水光人像四摄 65W超级闪充 8+128','/static/hotShop/oppo.jpg',2899,2699),(18,'OPPO Reno5 5G 6400万水光人像四摄 65W超级闪充 8+128','/static/hotShop/oppo.jpg',2899,2699),(19,'小米11 Pro 5G 骁龙888 2K AMOLED四曲面柔性屏 67W无线闪充','/static/hotShop/xiaomi11pro.jpg',3288,3422),(20,'OPPO Reno5 5G 6400万水光人像四摄 65W超级闪充 8+128','/static/hotShop/oppo.jpg',2899,2699),(21,'Apple iPhone 12 (A2404) 128GB 白色','/static/hotShop/apple12.jpg',4399,4799),(22,'小米11青春版 骁龙780G处理器 AMOLED柔性直屏','/static/hotShop/xiaomi11qingchun.jpg',3799,4199),(23,'Apple iPhone 12 (A2404) 128GB 白色','/static/hotShop/apple12.jpg',4399,4799),(24,'小米11 Pro 5G 骁龙888 2K AMOLED四曲面柔性屏 67W无线闪充','/static/hotShop/xiaomi11pro.jpg',3288,3422),(25,'Apple iPhone 12 (A2404) 128GB 白色','/static/hotShop/apple12.jpg',4399,4799),(26,'OPPO Reno5 5G 6400万水光人像四摄 65W超级闪充 8+128','/static/hotShop/oppo.jpg',2899,2699),(27,'OPPO Reno5 5G 6400万水光人像四摄 65W超级闪充 8+128','/static/hotShop/oppo.jpg',2899,2699),(28,'小米11青春版 骁龙780G处理器 AMOLED柔性直屏','/static/hotShop/xiaomi11qingchun.jpg',3799,4199);
/*!40000 ALTER TABLE `hotshop` ENABLE KEYS */;
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
