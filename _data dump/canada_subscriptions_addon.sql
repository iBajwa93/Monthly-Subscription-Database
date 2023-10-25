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
-- Table structure for table `addon`
--

DROP TABLE IF EXISTS `addon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon` (
  `addonID` int NOT NULL,
  `addonName` varchar(80) NOT NULL,
  `monthlyPrice` double NOT NULL,
  `required_serviceID` int DEFAULT NULL,
  `required_bundleID` int DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`addonID`),
  KEY `FK_addon_reqServiceID_idx` (`required_serviceID`),
  KEY `FK_addon_reqBundleID_idx` (`required_bundleID`),
  CONSTRAINT `FK_addon_reqBundleID` FOREIGN KEY (`required_bundleID`) REFERENCES `bundle` (`bundleID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_addon_reqServiceID` FOREIGN KEY (`required_serviceID`) REFERENCES `service` (`serviceID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon`
--

LOCK TABLES `addon` WRITE;
/*!40000 ALTER TABLE `addon` DISABLE KEYS */;
INSERT INTO `addon` VALUES (1001,'Starz',5.99,1000,NULL,'Multiplatform'),(1002,'Teletoon+',5.99,1000,NULL,''),(1003,'StackTV (add-on)',12.99,1000,NULL,'Multiplatform add-on version'),(1005,'Amazon Music Unlimited (Prime)',8.99,1000,NULL,'add-on version, reduced cost for Prime members'),(1006,'Shudder (add-on)',5.99,1000,NULL,'Multiplatform add-on version'),(1007,'Britbox (add-on)',9.99,1000,NULL,'Multiplatform add-on version'),(1009,'AMC+ (add-on)',8.99,1000,NULL,'Multiplatform add-on version'),(1010,'Paramount+ Premium (add-on)',9.99,1000,NULL,'add-on version for Prime'),(1011,'Love Nature',3.99,1000,NULL,'multiplatform add-on '),(2001,'Netflix (Standard)',10.5,2000,NULL,'Service upgrade'),(2002,'Netflix (Premium)',15,2000,NULL,'Service upgrade'),(2003,'Netflix (Basic)',4,2000,NULL,'Service upgrade'),(3001,'Funimation Premium Plus',3,3000,NULL,'Service upgrade'),(7001,'Audible Premium Plus - 2 Credits',11,7000,NULL,'Includes 2 credits a month'),(10001,'Crunchyroll (Mega Fan)',2.5,10000,NULL,'Service upgrade'),(11001,'Tidal (HiFi Plus)',10,11000,NULL,'Service upgrade, Includes higher quality and direct artist payouts'),(12001,'Amazon Music Unlimited (Family)',6,12000,NULL,'Service upgrade, Supports up to 6 people'),(14001,'Spotify (Duo)',3,14000,NULL,'Service upgrade. Up to 2 accounts'),(14002,'Spotify (Family)',6,14000,NULL,'Service upgrade. Up to 6 accounts'),(15002,'Youtube Music (Family)',5,15000,NULL,'Service upgrade. Up to 5 family members'),(18001,'Starz',5.99,18000,NULL,'Multiplatform'),(18002,'Shudder (add-on)',5.99,18000,NULL,'Multiplatform add-on version'),(18003,'Britbox (add-on)',9.99,18000,NULL,'Multiplatform add-on version'),(18005,'Love Nature',3.99,18000,NULL,'multiplatform add-on '),(21001,'Playstation Plus Premium',10,21000,NULL,'Service Upgrade'),(21002,'Playstation Plus Extra',6,21000,NULL,'Service Upgrade'),(24001,'Starz',5.99,24000,NULL,'Multiplatform'),(24002,'Crave Total',10,24000,NULL,'Service Upgrade. Includes higher quality and 4 streams at once'),(27001,'Viki Plus (with Kocowa)',6.63,27000,NULL,'Service Upgrade. New shows available immediately, unlimited access'),(37001,'Fubo TV Premium',15,37000,NULL,'Includes 24 entertainment channels, 3 kids networks'),(40001,'Sportsnet Now Premium',20,40000,NULL,'More leagues, out-of-market hockey, WWE network'),(41001,'Starz',5.99,41000,NULL,'Multiplatform, (Prime student plan)'),(41002,'Teletoon+',5.99,41000,NULL,''),(41003,'StackTV (add-on)',12.99,41000,NULL,'Multiplatform add-on version (Prime student plan)'),(41005,'Amazon Music Unlimited (Prime)',8.99,41000,NULL,'add-on version, reduced cost for Prime members (Prime student plan)'),(41006,'Shudder (add-on)',5.99,41000,NULL,'Multiplatform add-on version (Prime student plan)'),(41007,'Britbox (add-on)',9.99,41000,NULL,'Multiplatform add-on version (Prime student plan)'),(41009,'AMC+ (add-on)',8.99,41000,NULL,'Multiplatform add-on version (Prime student plan)'),(41010,'Paramount+ Premium (add-on)',9.99,41000,NULL,'add-on version for (Prime student plan) '),(41011,'Love Nature',3.99,41000,NULL,'multiplatform add-on (Prime student plan)'),(43001,'Apple Music (Family)',6,43000,NULL,'Service upgrade from Individual plan'),(7770001,'AppleOne (Family)',6,NULL,7770000,'Supports 5 people+iCloud (200 GB)'),(7770002,'AppleOne (Premier)',19,NULL,7770000,'Supports 5 people+includes iCloud (2TB), News+, Fitness+'),(7770031,'Youtube Premium (Family)',11,NULL,7770030,'Service Upgrade. Up to 5 family members');
/*!40000 ALTER TABLE `addon` ENABLE KEYS */;
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
