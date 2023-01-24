-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: testing_system_assignment_1
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
  `accountID` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DepartmentID` int unsigned NOT NULL,
  `positionid` int unsigned NOT NULL,
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`accountID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'lamkichi@gmail.com','lamchiki','Lam Chi Ky',5,1,'2020-03-05 00:00:00'),(2,'phamtrungkien@gmail.com','phamtrungkien','Pham Trung Kien',1,2,'2020-03-05 00:00:00'),(3,'hongochiep@gmail.com','hongochiep','HoNgocHiep',2,3,'2020-03-07 00:00:00'),(4,'nguyentrongthai@gmail.com','nguyentrongthai','Nguyen Trong Thai',3,4,'2020-03-08 00:00:00'),(5,'loc.nguyenba@vti.com.vn','nguyenductien','Nguyễn Bá Lộc',4,4,'2020-03-10 00:00:00'),(6,'buianhtuan@gmail.com','Buianhtuan','Bui Anh Tuan',6,3,'2020-04-05 00:00:00'),(7,'nguyenxuanhau@gmail.com','nguyenxuanhau','Nguyen Xuan Hau',7,2,'2020-04-05 00:00:00'),(8,'trantheanh@gmail.com','trantheanh','Tran The Anh',8,1,'2020-04-07 00:00:00'),(9,'nguyenhoangthanh@gmail.com','nguyenhoangthanh','Nguyen Hoang Thanh',9,2,'2020-04-07 00:00:00'),(10,'ngotritrong@gmail.com','ngotritrong','Ngo Tri Trong',11,2,'2020-04-07 00:00:00'),(11,'maivanthuong@gmail.com','maivanthuong','Mai Van Thuong',12,2,'2020-04-07 00:00:00'),(12,'hoangvancuong@gmail.com','hoangvancuong','Hoang Van Cuong',13,2,'2020-04-07 00:00:00'),(13,'havietkhanh@gmail.com','havietkhanh','Ha Viet Khanh',14,2,'2020-04-07 00:00:00'),(14,'nguyentruongan@gmail.com','nguyentruongan','Nguyen Truong An',15,2,'2020-04-07 00:00:00'),(15,'nguyenthingocthu@gmail.com','nguyenthingocthu','Nguyen Thi Ngoc Thu',16,2,'2020-04-07 00:00:00'),(16,'nguyenthihongtuoi@gmail.com','nguyenthihongtuoi','Nguyen Thi Hong Tuoi',17,2,'2020-04-07 00:00:00'),(17,'vtiacademy@gmail.com','vtiacademy','Vi Ti Ai',10,1,'2020-04-09 00:00:00');
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

-- Dump completed on 2023-01-24 20:06:43
