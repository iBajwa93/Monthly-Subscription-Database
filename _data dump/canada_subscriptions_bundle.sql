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
-- Table structure for table `bundle`
--

DROP TABLE IF EXISTS `bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundle` (
  `bundleID` int NOT NULL,
  `bundleName` varchar(100) NOT NULL,
  `monthlyPrice` double NOT NULL,
  `required_serviceID_1` int DEFAULT NULL,
  `required_serviceID_2` int DEFAULT NULL,
  `required_serviceID_3` int DEFAULT NULL,
  `required_serviceID_4` int DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`bundleID`),
  KEY `FK_serviceID_idx` (`required_serviceID_1`),
  KEY `FK_bundle_requiredID_2_idx` (`required_serviceID_2`),
  KEY `FK_bundle_requiredID_3_idx` (`required_serviceID_3`),
  KEY `FK_bundle_requiredID_4_idx` (`required_serviceID_4`),
  CONSTRAINT `FK_bundle_requiredID_1` FOREIGN KEY (`required_serviceID_1`) REFERENCES `service` (`serviceID`),
  CONSTRAINT `FK_bundle_requiredID_2` FOREIGN KEY (`required_serviceID_2`) REFERENCES `service` (`serviceID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_bundle_requiredID_3` FOREIGN KEY (`required_serviceID_3`) REFERENCES `service` (`serviceID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_bundle_requiredID_4` FOREIGN KEY (`required_serviceID_4`) REFERENCES `service` (`serviceID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundle`
--

LOCK TABLES `bundle` WRITE;
/*!40000 ALTER TABLE `bundle` DISABLE KEYS */;
INSERT INTO `bundle` VALUES (7770000,'Apple One',18.95,16000,18000,39000,NULL,''),(7770010,'Xbox Game Pass Ultimate',16.99,23000,20000,NULL,NULL,''),(7770020,'WWE Network + Sportsnet',24.99,34000,40000,NULL,NULL,''),(7770030,'Youtube Premium',11.99,15000,NULL,NULL,NULL,'Includes Youtube music, downloads and no ads for youtube'),(7770040,'Youtube Premium (Student)',6.99,45000,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `bundle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-19  0:12:52
