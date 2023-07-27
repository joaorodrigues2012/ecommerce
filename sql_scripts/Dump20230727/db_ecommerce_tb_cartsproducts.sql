-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: db_ecommerce
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tb_cartsproducts`
--

DROP TABLE IF EXISTS `tb_cartsproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cartsproducts` (
  `idcartproduct` int NOT NULL AUTO_INCREMENT,
  `idcart` int NOT NULL,
  `idproduct` int NOT NULL,
  `dtremoved` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcartproduct`),
  KEY `FK_cartsproducts_carts_idx` (`idcart`),
  KEY `FK_cartsproducts_products_idx` (`idproduct`),
  CONSTRAINT `fk_cartsproducts_carts` FOREIGN KEY (`idcart`) REFERENCES `tb_carts` (`idcart`),
  CONSTRAINT `fk_cartsproducts_products` FOREIGN KEY (`idproduct`) REFERENCES `tb_products` (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cartsproducts`
--

LOCK TABLES `tb_cartsproducts` WRITE;
/*!40000 ALTER TABLE `tb_cartsproducts` DISABLE KEYS */;
INSERT INTO `tb_cartsproducts` VALUES (22,5,3,NULL,'2023-06-10 01:56:00'),(23,6,5,'2023-06-10 03:25:36','2023-06-10 06:22:06'),(24,6,5,'2023-06-10 03:25:40','2023-06-10 06:23:30'),(25,6,5,'2023-06-10 03:26:59','2023-06-10 06:24:30'),(26,6,5,'2023-06-10 03:27:10','2023-06-10 06:25:44'),(27,6,5,'2023-06-10 03:35:35','2023-06-10 06:26:23'),(28,6,9,'2023-06-10 03:35:37','2023-06-10 06:27:17'),(29,5,6,NULL,'2023-06-10 06:28:24'),(30,6,6,'2023-06-10 03:35:32','2023-06-10 06:29:24'),(31,6,5,'2023-06-10 03:35:35','2023-06-10 06:32:20'),(32,6,6,NULL,'2023-06-10 06:35:47'),(33,7,6,'2023-06-14 21:31:29','2023-06-10 06:37:38'),(34,7,3,NULL,'2023-06-10 06:39:21'),(35,7,3,NULL,'2023-06-10 06:49:56'),(36,7,6,NULL,'2023-06-15 00:20:16'),(37,8,6,'2023-06-19 22:20:12','2023-06-20 00:41:30'),(38,8,6,'2023-06-24 18:04:07','2023-06-20 00:46:44'),(39,8,6,'2023-06-24 18:04:09','2023-06-20 01:03:19'),(40,8,6,NULL,'2023-06-20 01:12:32'),(41,10,3,NULL,'2023-07-19 22:09:50'),(42,10,6,NULL,'2023-07-19 22:09:59');
/*!40000 ALTER TABLE `tb_cartsproducts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-27  1:49:51
