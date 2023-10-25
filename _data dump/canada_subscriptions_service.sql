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
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `serviceID` int NOT NULL,
  `serviceName` varchar(80) NOT NULL,
  `monthlyPrice` double NOT NULL,
  `category` varchar(50) NOT NULL,
  `info` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1000,'Amazon Prime ',9.99,'Film/TV',''),(2000,'Netflix ',5.99,'Film/TV','Netflix basic with ads'),(3000,'Funimation Premium',9.99,'Film/TV','large selection of dubbed anime'),(4000,'Disney+',11.99,'Film/TV',''),(5000,'Paramount+ Premium',9.99,'Film/TV','standalone version'),(6000,'Google Play Pass',5.99,'Gaming',''),(7000,'Audible Premium Plus',14.95,'Books','Includes 1 credit a month'),(8000,'Britbox',9.99,'Film/TV','standalone version'),(9000,'Marvel Unlimited',13.25,'Books',''),(10000,'Crunchyroll ',9.99,'Film/TV','Fan plan, contains a wide variety of anime'),(11000,'Tidal',9.99,'Music','HiFi plan'),(12000,'Amazon Music Unlimited (non-Prime)',9.99,'Music','standalone service for non-Prime members'),(13000,'Kindle Unlimited',9.99,'Books',''),(14000,'Spotify ',9.99,'Music','Individual plan'),(15000,'Youtube Music',9.99,'Music',''),(16000,'Apple Music (voice)',4.99,'Music','Voice plan membership'),(17000,'Shudder',5.99,'Film/TV','standalone version'),(18000,'Apple TV+',8.99,'Film/TV',''),(19000,'DC Universe Infinite',10.62,'Books',''),(20000,'Xbox Game Pass',11.99,'Gaming',''),(21000,'Playstation Plus',11.99,'Gaming','Essential plan only'),(22000,'Nintendo Switch Online',4.99,'Gaming',''),(23000,'Xbox Live Gold',11.99,'Gaming',''),(24000,'Crave',9.99,'Film/TV','Mobile plan, single streaming'),(25000,'Eros Now Premium',3.99,'Film/TV',''),(26000,'AMC+',8.99,'Film/TV','Standalone version'),(27000,'Viki',6.62,'Film/TV','Standard'),(28000,'Dazn',24.99,'Sports',''),(29000,'HiDive',6.62,'Film/TV','large selection of anime'),(30000,'Kobo Plus',9.99,'Books',''),(32000,'TSN',19.99,'Sports',''),(33000,'UFC Fight Pass',10.99,'Sports',''),(34000,'WWE Network',14.99,'Sports',''),(35000,'IndieFlix',4.99,'Film/TV',''),(36000,'StackTV ',12.99,'Film/TV','Standalone version, includes live streaming'),(37000,'Fubo TV',24.99,'Film/TV','Essentials version, Includes live sports streaming'),(38000,'RiverTV',16.99,'Film/TV','includes live streaming'),(39000,'Apple Arcade',5.99,'Gaming',''),(40000,'Sportsnet Now',14.99,'Sports','Standard plan'),(41000,'Amazon Prime (Student)',4.99,'Film/TV','50% off Prime monthly plan'),(42000,'Spotify (Student)',4.99,'Film/TV','50% off deal of Individual plan'),(43000,'Apple Music (Individual)',10.99,'Film/TV','includes full UI, better audio and 3rd party support'),(44000,'Apple Music (Student)',4.99,'Film/TV','50% off deal of Individual plan'),(45000,'Youtube Music (Student)',4.99,'Film/TV','50% off Youtube Music');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
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
