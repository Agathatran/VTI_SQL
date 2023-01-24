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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `AccountID` int unsigned NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `DepartmentID` tinyint unsigned NOT NULL,
  `PositionID` tinyint unsigned NOT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AccountID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Username` (`Username`),
  KEY `DepartmentID` (`DepartmentID`),
  KEY `PositionID` (`PositionID`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`),
  CONSTRAINT `account_ibfk_2` FOREIGN KEY (`PositionID`) REFERENCES `position` (`PositionID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'lamchiki@gmail.com','lamchiki','Lam Chi Ky',5,1,'2020-03-05 00:00:00'),(2,'phamtrungkien@gmail.com','phamtrungkien','Pham Trung Kien',1,2,'2020-03-05 00:00:00'),(3,'hongochiep@gmail.com','hongochiep','Ho Ngoc Hiep',2,3,'2020-03-07 00:00:00'),(4,'nguyentrongthai@gmail.com','nguyentrongthai','Nguyen Trong Thai',3,4,'2020-03-08 00:00:00'),(5,'nguyenductien@gmail.com','nguyenductien','Nguyen Duc Tien',4,4,'2020-03-10 00:00:00'),(6,'buianhtuan@gmail.com','buianhtuan','Bui Anh Tuan',6,3,'2020-04-05 00:00:00'),(7,'nguyenxuanhau@gmail.com','nguyenxuanhau','Nguyen Xuan Hau',7,2,'2020-04-05 00:00:00'),(8,'trantheanh@gmail.com','trantheanh','Tran The Anh',8,1,'2020-04-07 00:00:00'),(9,'nguyenhoangthanh@gmail.com','nguyenhoangthanh','Nguyen Hoang Thanh',9,2,'2020-04-07 00:00:00'),(10,'ngotritrong@gmail.com','ngotritrong','Ngo Tri Trong',11,2,'2020-04-07 00:00:00'),(11,'maivanthuong@gmail.com','maivanthuong','Mai Van Thuong',12,2,'2020-04-07 00:00:00'),(12,'hoangvancuong@gmail.com','hoangvancuong','Hoang Van Cuong',13,2,'2020-04-07 00:00:00'),(13,'havietkhanh@gmail.com','havietkhanh','Ha Viet Khanh',14,2,'2020-04-07 00:00:00'),(14,'nguyentruongan@gmail.com','nguyentruongan','Nguyen Truong An',15,2,'2020-04-07 00:00:00'),(15,'nguyenthingocthu@gmail.com','nguyenthingocthu','Nguyen Thi Ngoc Thu',16,2,'2020-04-07 00:00:00'),(16,'nguyenthihongtuoi@gmail.com','nguyenthihongtuoi','Nguyen Thi Hong Tuoi',17,2,'2020-04-07 00:00:00'),(17,'vtiaccademy@gmail.com','vtiaccademy','Vi Ti Ai',10,1,'2020-04-09 00:00:00');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
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
