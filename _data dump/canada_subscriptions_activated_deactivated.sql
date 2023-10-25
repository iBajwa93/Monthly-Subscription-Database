-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: canada_subscriptions
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `activated_deactivated`
--

DROP TABLE IF EXISTS `activated_deactivated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activated_deactivated` (
  `statusID` int NOT NULL,
  `subscriberID` int NOT NULL,
  `serviceID` int DEFAULT NULL,
  `addonID` int DEFAULT NULL,
  `bundleID` int DEFAULT NULL,
  `statusDate` date NOT NULL,
  `isActive` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`statusID`),
  KEY `FK_status_subscriberID_idx` (`subscriberID`),
  KEY `FK_status_serviceID_idx` (`serviceID`),
  KEY `FK_status_addonID_idx` (`addonID`),
  KEY `FK_status_bundleID_idx` (`bundleID`),
  CONSTRAINT `FK_status_addonID` FOREIGN KEY (`addonID`) REFERENCES `addon` (`addonID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_status_bundleID` FOREIGN KEY (`bundleID`) REFERENCES `bundle` (`bundleID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_status_serviceID` FOREIGN KEY (`serviceID`) REFERENCES `service` (`serviceID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_status_subscriberID` FOREIGN KEY (`subscriberID`) REFERENCES `subscriber` (`subscriberID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activated_deactivated`
--

LOCK TABLES `activated_deactivated` WRITE;
/*!40000 ALTER TABLE `activated_deactivated` DISABLE KEYS */;
INSERT INTO `activated_deactivated` VALUES (1,9,14000,NULL,NULL,'2022-01-01','TRUE'),(2,9,13000,NULL,NULL,'2022-01-01','TRUE'),(3,1,4000,NULL,NULL,'2022-01-05','TRUE'),(4,6,2000,NULL,NULL,'2022-01-13','TRUE'),(5,4,18000,NULL,NULL,'2022-01-22','TRUE'),(6,6,NULL,2001,NULL,'2022-02-13','TRUE'),(7,1,1000,NULL,NULL,'2022-02-20','TRUE'),(8,8,NULL,NULL,7770010,'2022-02-22','TRUE'),(9,4,NULL,18001,NULL,'2022-02-27','TRUE'),(10,2,8000,NULL,NULL,'2022-03-01','TRUE'),(11,6,25000,NULL,NULL,'2022-03-04','TRUE'),(12,5,41000,NULL,NULL,'2022-03-26','TRUE'),(13,5,NULL,41002,NULL,'2022-03-26','TRUE'),(14,7,7000,NULL,NULL,'2022-04-08','TRUE'),(15,3,12000,NULL,NULL,'2022-04-18','TRUE'),(16,6,NULL,2001,NULL,'2022-04-20','FALSE'),(17,7,6000,NULL,NULL,'2022-04-23','TRUE'),(18,8,3000,NULL,NULL,'2022-04-24','TRUE'),(19,3,1000,NULL,NULL,'2022-04-26','TRUE'),(20,9,13000,NULL,NULL,'2022-05-02','FALSE'),(21,8,9000,NULL,NULL,'2022-05-04','TRUE'),(22,8,19000,NULL,NULL,'2022-05-04','TRUE'),(23,3,12000,NULL,NULL,'2022-05-09','FALSE'),(24,6,NULL,2002,NULL,'2022-05-10','TRUE'),(25,3,NULL,1005,NULL,'2022-05-11','TRUE'),(26,9,30000,NULL,NULL,'2022-05-11','TRUE'),(27,1,41000,NULL,NULL,'2022-05-13','TRUE'),(28,1,1000,NULL,NULL,'2022-05-13','FALSE'),(29,2,24000,NULL,NULL,'2022-05-14','TRUE'),(30,2,NULL,24002,NULL,'2022-05-14','TRUE'),(31,6,25000,NULL,NULL,'2022-05-15','FALSE'),(32,7,2000,NULL,NULL,'2022-05-17','TRUE'),(33,7,NULL,2001,NULL,'2022-05-17','TRUE'),(34,5,27000,NULL,NULL,'2022-05-20','TRUE'),(35,1,NULL,1006,NULL,'2022-05-25','TRUE'),(36,10,33000,NULL,NULL,'2022-06-05','TRUE'),(37,7,NULL,7001,NULL,'2022-06-08','TRUE'),(38,2,24000,NULL,NULL,'2022-06-14','FALSE'),(39,2,NULL,24002,NULL,'2022-06-14','FALSE'),(40,4,21000,NULL,NULL,'2022-06-15','TRUE'),(41,4,NULL,21002,NULL,'2022-06-15','TRUE'),(42,2,5000,NULL,NULL,'2022-06-25','TRUE'),(43,2,8000,NULL,NULL,'2022-06-26','FALSE'),(44,3,12000,NULL,NULL,'2022-07-05','TRUE'),(45,3,NULL,12001,NULL,'2022-07-05','TRUE'),(46,3,NULL,1005,NULL,'2022-07-05','FALSE'),(47,5,NULL,27001,NULL,'2022-07-14','TRUE'),(48,8,9000,NULL,NULL,'2022-07-14','FALSE'),(49,9,10000,NULL,NULL,'2022-07-23','TRUE'),(50,10,NULL,NULL,7770020,'2022-07-23','TRUE'),(51,7,2000,NULL,NULL,'2022-08-09','FALSE'),(52,7,NULL,2001,NULL,'2022-08-09','FALSE'),(53,7,4000,NULL,NULL,'2022-08-10','TRUE'),(54,4,NULL,18001,NULL,'2022-08-13','FALSE'),(55,1,NULL,1006,NULL,'2022-08-28','FALSE'),(56,2,8000,NULL,NULL,'2022-09-10','TRUE'),(57,5,NULL,27001,NULL,'2022-09-11','FALSE'),(58,7,6000,NULL,NULL,'2022-09-17','FALSE'),(59,7,NULL,7001,NULL,'2022-10-03','FALSE'),(60,5,27000,NULL,NULL,'2022-10-10','FALSE'),(61,3,1000,NULL,NULL,'2022-10-19','FALSE'),(62,3,12000,NULL,NULL,'2022-10-19','FALSE'),(63,3,NULL,12001,NULL,'2022-10-19','FALSE'),(64,9,10000,NULL,NULL,'2022-11-13','FALSE'),(65,5,44000,NULL,NULL,'2022-11-27','TRUE'),(66,7,4000,NULL,NULL,'2022-12-05','FALSE');
/*!40000 ALTER TABLE `activated_deactivated` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-19  0:12:51
