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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `QuestionID` int unsigned NOT NULL AUTO_INCREMENT,
  `Content` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CategoryID` tinyint unsigned NOT NULL,
  `TypeID` tinyint unsigned NOT NULL,
  `CreatorID` int unsigned NOT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`QuestionID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `TypeID` (`TypeID`),
  KEY `CreatorID` (`CreatorID`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categoryquestion` (`CategoryID`),
  CONSTRAINT `question_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `typequestion` (`TypeID`),
  CONSTRAINT `question_ibfk_3` FOREIGN KEY (`CreatorID`) REFERENCES `account` (`AccountID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Câu hỏi về Java',1,1,1,'2020-04-05 00:00:00'),(2,'Câu Hỏi về PHP',10,2,2,'2020-04-05 00:00:00'),(3,'Hỏi về C#',9,2,3,'2020-04-06 00:00:00'),(4,'Hỏi về Ruby',6,1,4,'2020-04-06 00:00:00'),(5,'Hỏi về Postman',5,1,5,'2020-04-06 00:00:00'),(6,'Hỏi về ADO.NET',3,2,6,'2020-04-06 00:00:00'),(7,'Hỏi về ASP.NET',2,1,7,'2020-04-06 00:00:00'),(8,'Hỏi về C++',8,1,8,'2020-04-07 00:00:00'),(9,'Hỏi về SQL',4,2,9,'2020-04-07 00:00:00'),(10,'Hỏi về Python',7,1,10,'2020-04-07 00:00:00');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24 20:06:40
