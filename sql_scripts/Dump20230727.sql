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
-- Table structure for table `tb_addresses`
--

DROP TABLE IF EXISTS `tb_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_addresses` (
  `idaddress` int NOT NULL AUTO_INCREMENT,
  `idperson` int NOT NULL,
  `desaddress` varchar(128) NOT NULL,
  `desnumber` varchar(16) NOT NULL,
  `descomplement` varchar(32) DEFAULT NULL,
  `descity` varchar(32) NOT NULL,
  `desstate` varchar(32) NOT NULL,
  `descountry` varchar(32) NOT NULL,
  `deszipcode` char(8) NOT NULL,
  `desdistrict` varchar(60) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idaddress`),
  KEY `fk_addresses_persons_idx` (`idperson`),
  CONSTRAINT `fk_addresses_persons` FOREIGN KEY (`idperson`) REFERENCES `tb_persons` (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_addresses`
--

LOCK TABLES `tb_addresses` WRITE;
/*!40000 ALTER TABLE `tb_addresses` DISABLE KEYS */;
INSERT INTO `tb_addresses` VALUES (1,1,'Rua da Ema','73','home','São Paulo','SP','Brasil','08485420','Conjunto Habitacional Santa Etelvina II','2023-07-19 22:27:26'),(2,1,'Rua da Ema','73','casa','São Paulo','SP','Brasil','08485420','Conjunto Habitacional Santa Etelvina II','2023-07-19 22:27:53'),(3,1,'Rua da Ema','73','casa','São Paulo','SP','Brasil','08485420','Conjunto Habitacional Santa Etelvina II','2023-07-19 22:28:18'),(4,1,'Rua da Ema','73','casa','São Paulo','SP','Brasil','08485420','Conjunto Habitacional Santa Etelvina II','2023-07-19 23:28:32'),(5,1,'Rua da Ema','73','casa','São Paulo','SP','Brasil','08485420','Conjunto Habitacional Santa Etelvina II','2023-07-19 23:39:08');
/*!40000 ALTER TABLE `tb_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_carts`
--

DROP TABLE IF EXISTS `tb_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carts` (
  `idcart` int NOT NULL AUTO_INCREMENT,
  `dessessionid` varchar(64) NOT NULL,
  `iduser` int DEFAULT NULL,
  `deszipcode` char(8) DEFAULT NULL,
  `vlfreight` decimal(10,2) DEFAULT NULL,
  `nrdays` int DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcart`),
  KEY `FK_carts_users_idx` (`iduser`),
  CONSTRAINT `fk_carts_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carts`
--

LOCK TABLES `tb_carts` WRITE;
/*!40000 ALTER TABLE `tb_carts` DISABLE KEYS */;
INSERT INTO `tb_carts` VALUES (5,'8e181cc9d9e68e56e448e0b58cbc0c81',NULL,NULL,NULL,NULL,'2023-06-10 01:55:28'),(6,'0bfc235741f16c510a90478660897b23',1,NULL,NULL,NULL,'2023-06-10 06:22:06'),(7,'58acedf03905da70865e677b22261da7',NULL,'08485420',0.00,0,'2023-06-10 06:37:00'),(8,'0bb080279c0f6b4f215328a1eacd127e',NULL,'08485420',74.42,6,'2023-06-20 00:41:30'),(9,'84a3f75f43e83506a9bcf8b86714ef51',NULL,NULL,NULL,NULL,'2023-07-04 00:00:06'),(10,'fc9e5deba4050a3f1e7eaf55c77a62d3',1,'08485420',0.00,0,'2023-07-19 22:09:44');
/*!40000 ALTER TABLE `tb_carts` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tb_categories`
--

DROP TABLE IF EXISTS `tb_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categories` (
  `idcategory` int NOT NULL AUTO_INCREMENT,
  `descategory` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categories`
--

LOCK TABLES `tb_categories` WRITE;
/*!40000 ALTER TABLE `tb_categories` DISABLE KEYS */;
INSERT INTO `tb_categories` VALUES (2,'LG','2023-04-27 23:25:51'),(3,'Motorola','2023-05-01 23:19:32'),(4,'Samsung','2023-05-01 23:19:39');
/*!40000 ALTER TABLE `tb_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orders`
--

DROP TABLE IF EXISTS `tb_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_orders` (
  `idorder` int NOT NULL AUTO_INCREMENT,
  `idcart` int NOT NULL,
  `iduser` int NOT NULL,
  `idstatus` int NOT NULL,
  `idaddress` int NOT NULL,
  `vltotal` decimal(10,2) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idorder`),
  KEY `FK_orders_users_idx` (`iduser`),
  KEY `fk_orders_ordersstatus_idx` (`idstatus`),
  KEY `fk_orders_carts_idx` (`idcart`),
  KEY `fk_orders_addresses_idx` (`idaddress`),
  CONSTRAINT `fk_orders_addresses` FOREIGN KEY (`idaddress`) REFERENCES `tb_addresses` (`idaddress`),
  CONSTRAINT `fk_orders_carts` FOREIGN KEY (`idcart`) REFERENCES `tb_carts` (`idcart`),
  CONSTRAINT `fk_orders_ordersstatus` FOREIGN KEY (`idstatus`) REFERENCES `tb_ordersstatus` (`idstatus`),
  CONSTRAINT `fk_orders_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orders`
--

LOCK TABLES `tb_orders` WRITE;
/*!40000 ALTER TABLE `tb_orders` DISABLE KEYS */;
INSERT INTO `tb_orders` VALUES (1,8,1,2,13,151.43,'2023-06-20 01:33:21'),(2,10,1,1,2,3837.77,'2023-07-19 22:27:53'),(3,10,1,1,3,3837.77,'2023-07-19 22:28:18'),(4,10,1,1,4,3837.77,'2023-07-19 23:28:32'),(5,10,1,1,5,3837.77,'2023-07-19 23:39:08');
/*!40000 ALTER TABLE `tb_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ordersstatus`
--

DROP TABLE IF EXISTS `tb_ordersstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ordersstatus` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `desstatus` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ordersstatus`
--

LOCK TABLES `tb_ordersstatus` WRITE;
/*!40000 ALTER TABLE `tb_ordersstatus` DISABLE KEYS */;
INSERT INTO `tb_ordersstatus` VALUES (1,'Em Aberto','2017-03-13 03:00:00'),(2,'Aguardando Pagamento','2017-03-13 03:00:00'),(3,'Pago','2017-03-13 03:00:00'),(4,'Entregue','2017-03-13 03:00:00');
/*!40000 ALTER TABLE `tb_ordersstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_persons`
--

DROP TABLE IF EXISTS `tb_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_persons` (
  `idperson` int NOT NULL AUTO_INCREMENT,
  `desperson` varchar(64) NOT NULL,
  `desemail` varchar(128) DEFAULT NULL,
  `nrphone` bigint DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_persons`
--

LOCK TABLES `tb_persons` WRITE;
/*!40000 ALTER TABLE `tb_persons` DISABLE KEYS */;
INSERT INTO `tb_persons` VALUES (1,'JoÃ£o Rangel','admin@hcode.com.br',2147483647,'2017-03-01 03:00:00'),(7,'Suporte','suporte@hcode.com.br',1112345678,'2017-03-15 16:10:27'),(9,'victor','joaorodrigues2012.jr@gmail.com',1111111111,'2023-04-26 23:20:59'),(10,'Victor','teste2@teste.com',NULL,'2023-06-10 22:18:09'),(11,'Victor','teste6@teste.com',NULL,'2023-06-10 23:38:53');
/*!40000 ALTER TABLE `tb_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_products` (
  `idproduct` int NOT NULL AUTO_INCREMENT,
  `desproduct` varchar(64) NOT NULL,
  `vlprice` decimal(10,2) NOT NULL,
  `vlwidth` decimal(10,2) NOT NULL,
  `vlheight` decimal(10,2) NOT NULL,
  `vllength` decimal(10,2) NOT NULL,
  `vlweight` decimal(10,2) NOT NULL,
  `desurl` varchar(128) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (1,'Smartphone Android 7.0',999.95,75.00,151.00,80.00,167.00,'smartphone-android-7.0','2017-03-13 03:00:00'),(2,'SmartTV LED 4K',3925.99,917.00,596.00,288.00,8600.00,'smarttv-led-4k','2017-03-13 03:00:00'),(3,'Notebook 14\" 4GB 1TB',1949.99,345.00,23.00,30.00,2000.00,'notebook-14-4gb-1tb','2017-03-13 03:00:00'),(5,'Smartphone Motorola Moto G5 Plus',1135.23,15.20,7.40,0.70,0.16,'smartphone-motorola-moto-g5-plus','2023-05-17 23:35:12'),(6,'Smartphone Moto Z Play',1887.78,14.10,0.90,1.16,0.13,'smartphone-moto-z-play','2023-05-17 23:35:12'),(7,'Smartphone Samsung Galaxy J5 Pro',1299.00,14.60,7.10,0.80,0.16,'smartphone-samsung-galaxy-j5','2023-05-17 23:35:12'),(8,'Smartphone Samsung Galaxy J7 Prime',1149.00,15.10,7.50,0.80,0.16,'smartphone-samsung-galaxy-j7','2023-05-17 23:35:12'),(9,'Smartphone Samsung Galaxy J3 Dual',679.90,14.20,7.10,0.70,0.14,'smartphone-samsung-galaxy-j3','2023-05-17 23:35:12');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productscategories`
--

DROP TABLE IF EXISTS `tb_productscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_productscategories` (
  `idcategory` int NOT NULL,
  `idproduct` int NOT NULL,
  PRIMARY KEY (`idcategory`,`idproduct`),
  KEY `fk_productscategories_products_idx` (`idproduct`),
  CONSTRAINT `fk_productscategories_categories` FOREIGN KEY (`idcategory`) REFERENCES `tb_categories` (`idcategory`),
  CONSTRAINT `fk_productscategories_products` FOREIGN KEY (`idproduct`) REFERENCES `tb_products` (`idproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productscategories`
--

LOCK TABLES `tb_productscategories` WRITE;
/*!40000 ALTER TABLE `tb_productscategories` DISABLE KEYS */;
INSERT INTO `tb_productscategories` VALUES (2,1),(4,1),(2,2),(4,2),(2,3),(4,3),(2,5),(3,5),(2,6),(3,6),(2,7),(2,8),(2,9);
/*!40000 ALTER TABLE `tb_productscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `idperson` int NOT NULL,
  `deslogin` varchar(64) NOT NULL,
  `despassword` varchar(256) NOT NULL,
  `inadmin` tinyint NOT NULL DEFAULT '0',
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`),
  KEY `FK_users_persons_idx` (`idperson`),
  CONSTRAINT `fk_users_persons` FOREIGN KEY (`idperson`) REFERENCES `tb_persons` (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,1,'admin','$2y$12$YlooCyNvyTji8bPRcrfNfOKnVMmZA9ViM2A3IpFjmrpIbp5ovNmga',1,'2017-03-13 03:00:00'),(7,7,'suporte','$2y$12$HFjgUm/mk1RzTy4ZkJaZBe0Mc/BA2hQyoUckvm.lFa6TesjtNpiMe',1,'2017-03-15 16:10:27'),(9,9,'victor25','$2y$12$8cYPqLe9J57umJ0nJ1Ovu.DciP0dUcictuyFqs8aPnsGQLirMKj56',1,'2023-04-26 23:20:59'),(10,10,'teste2@teste.com','$2y$12$AF4dEc.Ax2QaWHMBTAzRZeby8.quFQpbqYXgQOSC4o08hw7b1IPyW',0,'2023-06-10 22:18:09'),(11,11,'teste6@teste.com','$2y$12$K49uJiVKmr5rGTOohMgK4uznqe4nHJ6qOohzUlt6PYvgwJd1I9aR.',0,'2023-06-10 23:38:53');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_userslogs`
--

DROP TABLE IF EXISTS `tb_userslogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_userslogs` (
  `idlog` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `deslog` varchar(128) NOT NULL,
  `desip` varchar(45) NOT NULL,
  `desuseragent` varchar(128) NOT NULL,
  `dessessionid` varchar(64) NOT NULL,
  `desurl` varchar(128) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlog`),
  KEY `fk_userslogs_users_idx` (`iduser`),
  CONSTRAINT `fk_userslogs_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userslogs`
--

LOCK TABLES `tb_userslogs` WRITE;
/*!40000 ALTER TABLE `tb_userslogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_userslogs` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-07-27  1:51:39
