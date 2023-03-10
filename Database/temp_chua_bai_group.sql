-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: temp_chua_bai
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group` (
  `GroupID` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(50) NOT NULL,
  `CreatorID` int unsigned DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`GroupID`),
  UNIQUE KEY `GroupName` (`GroupName`),
  KEY `CreatorID` (`CreatorID`),
  CONSTRAINT `group_ibfk_1` FOREIGN KEY (`CreatorID`) REFERENCES `account` (`AccountID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'Testing System',5,'2019-03-05 00:00:00'),(2,'Developement',1,'2020-03-07 00:00:00'),(3,'VTI Sale 01',2,'2020-03-09 00:00:00'),(4,'VTI Sale 02a',3,'2020-03-10 00:00:00'),(5,'VTI Sale 02b',4,'2020-03-28 00:00:00'),(6,'VTI Creator',6,'2020-04-06 00:00:00'),(7,'VTI Marketing 01',7,'2020-04-07 00:00:00'),(8,'Management',8,'2020-04-08 00:00:00'),(9,'Chat with love',9,'2020-04-09 00:00:00'),(10,'Vi Ti Ai',10,'2020-04-10 00:00:00');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24 20:06:38
