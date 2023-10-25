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
-- Temporary view structure for view `addon_transactions`
--

DROP TABLE IF EXISTS `addon_transactions`;
/*!50001 DROP VIEW IF EXISTS `addon_transactions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `addon_transactions` AS SELECT 
 1 AS `paymentID`,
 1 AS `subscriberID`,
 1 AS `addonID`,
 1 AS `addonName`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `amountPaid`,
 1 AS `paymentDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `service_transactions`
--

DROP TABLE IF EXISTS `service_transactions`;
/*!50001 DROP VIEW IF EXISTS `service_transactions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `service_transactions` AS SELECT 
 1 AS `paymentID`,
 1 AS `subscriberID`,
 1 AS `serviceID`,
 1 AS `serviceName`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `amountPaid`,
 1 AS `paymentDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `check_substatus`
--

DROP TABLE IF EXISTS `check_substatus`;
/*!50001 DROP VIEW IF EXISTS `check_substatus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `check_substatus` AS SELECT 
 1 AS `statusID`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `serviceName`,
 1 AS `statusDate`,
 1 AS `isActive`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bundle_transactions`
--

DROP TABLE IF EXISTS `bundle_transactions`;
/*!50001 DROP VIEW IF EXISTS `bundle_transactions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bundle_transactions` AS SELECT 
 1 AS `paymentID`,
 1 AS `subscriberID`,
 1 AS `bundleID`,
 1 AS `bundleName`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `amountPaid`,
 1 AS `paymentDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `addon_transactions`
--

/*!50001 DROP VIEW IF EXISTS `addon_transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `addon_transactions` AS select `payment`.`paymentID` AS `paymentID`,`payment`.`subscriberID` AS `subscriberID`,`payment`.`addonID` AS `addonID`,`addon`.`addonName` AS `addonName`,`subscriber`.`firstName` AS `firstName`,`subscriber`.`lastName` AS `lastName`,`payment`.`amountPaid` AS `amountPaid`,`payment`.`paymentDate` AS `paymentDate` from ((`payment` join `addon`) join `subscriber`) where ((`payment`.`addonID` = `addon`.`addonID`) and (`payment`.`subscriberID` = `subscriber`.`subscriberID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `service_transactions`
--

/*!50001 DROP VIEW IF EXISTS `service_transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `service_transactions` AS select `payment`.`paymentID` AS `paymentID`,`payment`.`subscriberID` AS `subscriberID`,`payment`.`serviceID` AS `serviceID`,`service`.`serviceName` AS `serviceName`,`subscriber`.`firstName` AS `firstName`,`subscriber`.`lastName` AS `lastName`,`payment`.`amountPaid` AS `amountPaid`,`payment`.`paymentDate` AS `paymentDate` from ((`payment` join `service`) join `subscriber`) where ((`payment`.`serviceID` = `service`.`serviceID`) and (`payment`.`subscriberID` = `subscriber`.`subscriberID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `check_substatus`
--

/*!50001 DROP VIEW IF EXISTS `check_substatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `check_substatus` AS select `activated_deactivated`.`statusID` AS `statusID`,`subscriber`.`firstName` AS `firstname`,`subscriber`.`lastName` AS `lastname`,`service`.`serviceName` AS `serviceName`,`activated_deactivated`.`statusDate` AS `statusDate`,`activated_deactivated`.`isActive` AS `isActive` from ((`activated_deactivated` join `subscriber`) join `service`) where ((`subscriber`.`subscriberID` = `activated_deactivated`.`subscriberID`) and (`service`.`serviceID` = `activated_deactivated`.`serviceID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bundle_transactions`
--

/*!50001 DROP VIEW IF EXISTS `bundle_transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bundle_transactions` AS select `payment`.`paymentID` AS `paymentID`,`payment`.`subscriberID` AS `subscriberID`,`payment`.`bundleID` AS `bundleID`,`bundle`.`bundleName` AS `bundleName`,`subscriber`.`firstName` AS `firstName`,`subscriber`.`lastName` AS `lastName`,`payment`.`amountPaid` AS `amountPaid`,`payment`.`paymentDate` AS `paymentDate` from ((`payment` join `bundle`) join `subscriber`) where ((`payment`.`bundleID` = `bundle`.`bundleID`) and (`payment`.`subscriberID` = `subscriber`.`subscriberID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'canada_subscriptions'
--

--
-- Dumping routines for database 'canada_subscriptions'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-19  0:12:52
