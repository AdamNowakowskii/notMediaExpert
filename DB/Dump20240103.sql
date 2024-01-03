-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: notmediaexpert
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Iphone'),(2,'Samsung'),(3,'Google'),(4,'OnePlus');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(500) NOT NULL,
  `idPhone` int NOT NULL,
  `phoneUrl` varchar(200) NOT NULL,
  `screen` varchar(45) NOT NULL,
  `battery` varchar(45) NOT NULL,
  `ram` varchar(300) NOT NULL,
  `phonePrice` int NOT NULL,
  `phoneCategory` varchar(45) NOT NULL,
  `phoneName` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,'The iPhone 13 Pro Max is the flagship model from Apple, offering a premium smartphone experience with advanced features and sleek design. This device boasts a stunning 6.7-inch Super Retina XDR display, delivering vibrant colors and sharp details. Powered by the A15 Bionic chip, it provides exceptional performance and smooth multitasking.',2593,'/i14ProMax.jpg','6.8 inch Full Screen','7800mAh','16GB RAM',1099,'iPhone','i14 Pro Max'),(2,'The Samsung I23 is a flagship model from Samsung that stands out with advanced features and a unique design. The phone features a large 6.5-inch Super AMOLED display, providing excellent image quality and vibrant colors. It is powered by a powerful octa-core processor, ensuring fast and smooth performance.',2393,'/phone.jpg','6.2 inch Full Screen','5400mAh','32GB RAM',3000,'Samsung','SAMSUNG I23'),(3,'This phone is a flagship model from Apple. It features a 4.7-inch display, a 3000 mAh battery, 4GB of RAM, and is attractively priced at $999.',1,'/iphoneX.jpg','4.7 inch','3000 mAh','4GB RAM',999,'iPhone','iPhone X'),(4,'This is an advanced smartphone from Samsung. It has a 5.5-inch display, a 4000 mAh battery, 6GB of RAM, and is available at a price of $1499.',2,'/SamsungGalaxyS21.jpg','5.5 inch','4000 mAh','6GB RAM',1499,'Samsung','Samsung Galaxy S21'),(5,'This is an iPhone model with a 6.2-inch display. It is equipped with a 5000 mAh battery and 8GB of RAM. The price of this model is $1999.',3,'/iPhone12.jpg','6.2 inch','5000 mAh','8GB RAM',1999,'iPhone','iPhone 12'),(6,'This phone offers a large 6.7-inch display, a 4000 mAh battery, and 8GB of RAM. The price of this model is $1599.',4,'/SamsungGalaxyNote20.jpg','6.7 inch','4000 mAh','8GB RAM',1599,'Samsung','Samsung Galaxy Note 20'),(7,'This is a smartphone with a 6.1-inch display, a 3500 mAh battery, and 6GB of RAM. It is available at an attractive price of $899.',5,'/GooglePixel5.jpg','6.1 inch','3500 mAh','6GB RAM',899,'Google','Google Pixel 5'),(8,'This phone is a budget model from Nokia. It has a 5.8-inch display, a 3000 mAh battery, and 4GB of RAM. The price of this model is $799.',6,'/Nokia5.4.jpg','5.8 inch','3000 mAh','4GB RAM',799,'Nokia','Nokia 5.4'),(9,'This is a flagship model from Xiaomi with a 6.5-inch display, a 4500 mAh battery, and 6GB of RAM. The price of this model is $1199.',7,'/XiaomiMi11.jpg','6.5 inch','4500 mAh','6GB RAM',1199,'Xiaomi','Xiaomi Mi 11'),(10,'This phone is from the Samsung Galaxy S21 Ultra series, characterized by a huge 6.9-inch display, a 5000 mAh battery, and 12GB of RAM. The price of this model is $1899.',8,'/SamsungGalaxyS21Ultra.jpg','6.9 inch','5000 mAh','12GB RAM',1899,'Samsung','Samsung Galaxy S21 Ultra'),(11,'This phone is a mid-range model from OnePlus. It has a 6.3-inch display, a 4000 mAh battery, and 8GB of RAM. It is available at a price of $999.',9,'/OnePlusNord.jpg','6.3 inch','4000 mAh','8GB RAM',999,'OnePlus','OnePlus Nord');
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'adam','nniowas','damian@op.pl','dmian123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `email` varchar(50) NOT NULL,
  `role_name` varchar(20) NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`email`,`role_name`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('damian@op.pl','USER');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-03 22:25:35
