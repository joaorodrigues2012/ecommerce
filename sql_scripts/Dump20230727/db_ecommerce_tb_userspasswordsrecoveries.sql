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
-- Table structure for table `tb_userspasswordsrecoveries`
--

DROP TABLE IF EXISTS `tb_userspasswordsrecoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_userspasswordsrecoveries` (
  `idrecovery` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `desip` varchar(45) NOT NULL,
  `dtrecovery` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idrecovery`),
  KEY `fk_userspasswordsrecoveries_users_idx` (`iduser`),
  CONSTRAINT `fk_userspasswordsrecoveries_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userspasswordsrecoveries`
--

LOCK TABLES `tb_userspasswordsrecoveries` WRITE;
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` DISABLE KEYS */;
INSERT INTO `tb_userspasswordsrecoveries` VALUES (1,7,'127.0.0.1',NULL,'2017-03-15 16:10:59'),(2,7,'127.0.0.1','2017-03-15 13:33:45','2017-03-15 16:11:18'),(3,7,'127.0.0.1','2017-03-15 13:37:35','2017-03-15 16:37:12'),(4,9,'::1',NULL,'2023-04-26 23:24:56'),(5,9,'::1',NULL,'2023-04-26 23:25:31'),(6,9,'::1',NULL,'2023-04-26 23:25:51'),(7,9,'::1',NULL,'2023-04-26 23:27:02'),(8,9,'::1',NULL,'2023-04-26 23:36:48'),(9,9,'::1',NULL,'2023-04-27 23:43:57'),(10,9,'::1',NULL,'2023-04-27 23:54:07'),(11,9,'::1',NULL,'2023-04-27 23:54:46'),(12,9,'::1',NULL,'2023-04-27 23:55:02'),(13,9,'::1',NULL,'2023-04-27 23:55:32'),(14,9,'::1',NULL,'2023-04-27 23:55:46'),(15,9,'::1',NULL,'2023-04-27 23:56:22'),(16,9,'::1',NULL,'2023-04-27 23:56:36'),(17,9,'::1',NULL,'2023-04-27 23:57:45'),(18,9,'::1',NULL,'2023-04-27 23:58:34'),(19,9,'::1',NULL,'2023-04-28 00:01:27'),(20,9,'::1',NULL,'2023-04-28 00:02:08'),(21,9,'::1',NULL,'2023-04-28 00:02:20'),(22,9,'::1',NULL,'2023-04-28 00:02:24'),(23,9,'::1',NULL,'2023-04-28 00:05:58'),(24,9,'::1',NULL,'2023-04-28 00:06:08'),(25,9,'::1',NULL,'2023-04-28 00:06:14'),(26,9,'::1',NULL,'2023-04-28 00:06:18'),(27,9,'::1',NULL,'2023-04-28 00:06:30'),(28,9,'::1',NULL,'2023-04-28 00:06:56'),(29,9,'::1',NULL,'2023-04-28 00:08:19'),(30,9,'::1',NULL,'2023-04-28 00:08:32'),(31,9,'::1',NULL,'2023-04-28 00:08:40'),(32,9,'::1',NULL,'2023-04-28 00:09:25'),(33,9,'::1',NULL,'2023-04-28 00:09:40'),(34,9,'::1',NULL,'2023-04-28 00:11:13'),(35,9,'::1',NULL,'2023-04-28 00:12:27'),(36,9,'::1',NULL,'2023-04-28 00:18:44'),(37,9,'::1',NULL,'2023-04-28 00:19:41'),(38,9,'::1',NULL,'2023-04-28 00:20:29'),(39,9,'::1',NULL,'2023-04-28 00:21:11'),(40,9,'::1',NULL,'2023-04-28 00:21:15'),(41,9,'::1',NULL,'2023-04-28 00:21:34'),(42,9,'::1',NULL,'2023-04-28 00:22:48'),(43,9,'::1',NULL,'2023-04-28 00:31:07'),(44,9,'::1',NULL,'2023-05-01 23:04:31'),(45,10,'::1',NULL,'2023-06-10 22:31:49'),(46,10,'::1',NULL,'2023-06-10 22:32:22'),(47,10,'::1',NULL,'2023-06-10 22:34:47'),(48,10,'::1',NULL,'2023-06-10 22:37:25'),(49,10,'::1',NULL,'2023-06-10 22:38:30'),(50,10,'::1',NULL,'2023-06-10 22:40:27');
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-27  1:49:49
