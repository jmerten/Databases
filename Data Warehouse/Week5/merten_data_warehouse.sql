-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: pamperspa_dw
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `dim_calendar`
--

DROP TABLE IF EXISTS `dim_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_calendar` (
  `CalendarKey` int NOT NULL,
  `Fulldate` datetime DEFAULT NULL,
  `Weekday` char(1) DEFAULT NULL,
  `DayoftheWeek` varchar(10) DEFAULT NULL,
  `Quarter` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`CalendarKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_calendar`
--

LOCK TABLES `dim_calendar` WRITE;
/*!40000 ALTER TABLE `dim_calendar` DISABLE KEYS */;
INSERT INTO `dim_calendar` VALUES (1,'2018-01-01 00:00:00','Y','Monday',1),(2,'2018-01-02 00:00:00','Y','Tuesday',1),(3,'2018-01-03 00:00:00','Y','Wednesday',1),(4,'2018-01-04 00:00:00','Y','Thursday',1),(5,'2018-01-05 00:00:00','Y','Friday',1),(6,'2018-01-13 00:00:00','N','Saturday',1),(7,'2018-02-24 00:00:00','N','Saturday',1),(8,'2018-03-03 00:00:00','N','Saturday',1),(9,'2018-03-14 00:00:00','Y','Wednesday',1),(10,'2018-03-15 00:00:00','Y','Thursday',1),(11,'2018-03-18 00:00:00','N','Sunday',1),(12,'2018-03-21 00:00:00','Y','Wednesday',1),(13,'2018-04-24 00:00:00','Y','Tuesday',2),(14,'2018-04-29 00:00:00','N','Sunday',2),(15,'2018-05-16 00:00:00','Y','Wednesday',2),(16,'2018-05-30 00:00:00','Y','Wednesday',2),(17,'2018-06-13 00:00:00','Y','Wednesday',2),(18,'2018-06-28 00:00:00','Y','Thursday',2),(19,'2018-07-14 00:00:00','N','Saturday',3),(20,'2018-07-15 00:00:00','N','Sunday',3),(21,'2018-07-19 00:00:00','Y','Thursday',3),(22,'2018-07-27 00:00:00','Y','Friday',3),(23,'2018-08-09 00:00:00','Y','Thursday',3),(24,'2018-08-28 00:00:00','Y','Tuesday',3),(25,'2018-09-24 00:00:00','Y','Monday',3),(26,'2018-10-06 00:00:00','N','Saturday',4),(27,'2018-10-24 00:00:00','Y','Wednesday',4),(28,'2018-10-27 00:00:00','N','Saturday',4),(29,'2018-11-01 00:00:00','Y','Thursday',4),(30,'2018-11-03 00:00:00','N','Saturday',4),(31,'2018-11-10 00:00:00','N','Saturday',4),(32,'2018-11-22 00:00:00','Y','Thursday',4),(33,'2018-12-23 00:00:00','N','Sunday',4),(34,'2018-12-24 00:00:00','Y','Monday',4),(35,'2018-12-30 00:00:00','N','Sunday',4);
/*!40000 ALTER TABLE `dim_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_employee`
--

DROP TABLE IF EXISTS `dim_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_employee` (
  `Employee_Key` int NOT NULL,
  `Employee_ID` char(3) DEFAULT NULL,
  `Employee_Name` varchar(45) DEFAULT NULL,
  `Employee_YearofHire` char(4) DEFAULT NULL,
  PRIMARY KEY (`Employee_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_employee`
--

LOCK TABLES `dim_employee` WRITE;
/*!40000 ALTER TABLE `dim_employee` DISABLE KEYS */;
INSERT INTO `dim_employee` VALUES (1,'SE1','Claire','2000'),(2,'SE2','Jamie','2008'),(3,'SE3','Laura','2010'),(4,'SE4','Tom','2015'),(5,'SE5','Andrew','2018');
/*!40000 ALTER TABLE `dim_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_patron`
--

DROP TABLE IF EXISTS `dim_patron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_patron` (
  `PatronKey` int NOT NULL,
  `PatronID` char(4) DEFAULT NULL,
  `PatronZip` varchar(45) DEFAULT NULL,
  `PatronSex` varchar(255) DEFAULT NULL,
  `PatronTitle` varchar(255) DEFAULT NULL,
  `PatronEthnicity` varchar(255) DEFAULT NULL,
  `PatronAge` double DEFAULT NULL,
  PRIMARY KEY (`PatronKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_patron`
--

LOCK TABLES `dim_patron` WRITE;
/*!40000 ALTER TABLE `dim_patron` DISABLE KEYS */;
INSERT INTO `dim_patron` VALUES (1,'PT1','23185','Female','Mrs','Black Hispanic',41),(2,'PT10','23185','Female','Mrs','White Hispanic',38),(3,'PT11','23139','Male','Honorable','Black',39),(4,'PT12','23146','Female','Mrs','Asian',41),(5,'PT13','23147','Male','Ms','Black',40),(6,'PT14','22031','Male','Rev','Black',63),(7,'PT15','23185','Female','Rev','Black Hispanic',43),(8,'PT16','23139','Male','Rev','Black Hispanic',58),(9,'PT17','23146','Female','Mrs','Mixed',53),(10,'PT18','23147','Male','Dr','Black',32),(11,'PT19','22031','Female','Mr','Black Hispanic',61),(12,'PT2','23185','Female','Dr','White Hispanic',61),(13,'PT20','23185','Male','Mr','White',20),(14,'PT21','23139','Female','Rev','Black',40),(15,'PT22','23146','Male','Mr','Mixed',29),(16,'PT23','23147','Male','Mr','Asian',47),(17,'PT24','22031','Male','Mr','Black',54),(18,'PT25','23185','Female','Honorable','Black Hispanic',38),(19,'PT26','23139','Female','Mrs','White',64),(20,'PT27','23146','Female','Mr','White',62),(21,'PT3','23185','Female','Mrs','Mixed',30),(22,'PT4','60650','Female','Mrs','White Hispanic',51),(23,'PT5','23185','Female','Mrs','White',30),(24,'PT6','23139','Female','Mrs','White Hispanic',37),(25,'PT7','23146','Female','Mrs','Black Hispanic',28),(26,'PT8','23147','Female','Dr','White',60),(27,'PT9','22031','Male','Mr','NA',42);
/*!40000 ALTER TABLE `dim_patron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_procedure`
--

DROP TABLE IF EXISTS `dim_procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_procedure` (
  `ProcedureKey` int NOT NULL,
  `ProcedureID` char(3) DEFAULT NULL,
  `ProcedureName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProcedureKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_procedure`
--

LOCK TABLES `dim_procedure` WRITE;
/*!40000 ALTER TABLE `dim_procedure` DISABLE KEYS */;
INSERT INTO `dim_procedure` VALUES (1,'PR1','Mani'),(2,'PR2','Pedi'),(3,'PR3','Massage'),(4,'PR4','Botox'),(5,'PR5','Facial');
/*!40000 ALTER TABLE `dim_procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_time`
--

DROP TABLE IF EXISTS `dim_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_time` (
  `Timekey` int NOT NULL,
  `Time` char(8) DEFAULT NULL,
  `PartofDay` char(2) DEFAULT NULL,
  PRIMARY KEY (`Timekey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_time`
--

LOCK TABLES `dim_time` WRITE;
/*!40000 ALTER TABLE `dim_time` DISABLE KEYS */;
INSERT INTO `dim_time` VALUES (1,'08:00:00','AM'),(2,'04:41:00','PM'),(3,'03:38:00','PM'),(4,'01:59:00','PM'),(5,'08:14:00','AM'),(6,'02:10:00','PM'),(7,'08:29:00','AM'),(8,'10:30:00','AM'),(9,'11:50:00','AM'),(10,'08:26:00','AM'),(11,'01:36:00','PM'),(12,'08:30:00','AM'),(13,'08:57:00','AM'),(14,'12:40:00','PM'),(15,'12:22:00','PM'),(16,'11:09:00','AM'),(17,'03:31:00','PM'),(18,'01:33:00','PM'),(19,'02:46:00','PM'),(20,'01:58:00','PM'),(21,'12:19:00','PM'),(22,'04:20:00','PM'),(23,'08:30:00','AM'),(24,'04:40:00','PM'),(25,'11:38:00','AM'),(26,'02:51:00','PM'),(27,'02:33:00','PM'),(28,'03:48:00','PM'),(29,'12:46:00','PM'),(30,'01:30:00','PM'),(31,'09:13:00','AM'),(32,'10:40:00','AM'),(33,'03:57:00','PM'),(34,'08:00:00','AM'),(35,'01:33:00','PM'),(36,'08:00:00','AM'),(37,'12:56:00','PM'),(38,'08:13:00','AM'),(39,'08:05:00','AM'),(40,'12:05:00','PM');
/*!40000 ALTER TABLE `dim_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_revenue`
--

DROP TABLE IF EXISTS `fact_revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_revenue` (
  `CalendarKey` int NOT NULL,
  `PatronKey` int NOT NULL,
  `ProcedureKey` int NOT NULL,
  `Timekey` int NOT NULL,
  `Employee_Key` int NOT NULL,
  `AmountCharged` int DEFAULT NULL,
  PRIMARY KEY (`CalendarKey`,`PatronKey`,`ProcedureKey`,`Timekey`,`Employee_Key`),
  KEY `Employee_Key_idx` (`Employee_Key`),
  KEY `PatronKey_idx` (`PatronKey`),
  KEY `ProcedureKey_idx` (`ProcedureKey`),
  KEY `Timekey_idx` (`Timekey`),
  CONSTRAINT `CalendarKey` FOREIGN KEY (`CalendarKey`) REFERENCES `dim_calendar` (`CalendarKey`),
  CONSTRAINT `Employee_Key` FOREIGN KEY (`Employee_Key`) REFERENCES `dim_employee` (`Employee_Key`),
  CONSTRAINT `PatronKey` FOREIGN KEY (`PatronKey`) REFERENCES `dim_patron` (`PatronKey`),
  CONSTRAINT `ProcedureKey` FOREIGN KEY (`ProcedureKey`) REFERENCES `dim_procedure` (`ProcedureKey`),
  CONSTRAINT `Timekey` FOREIGN KEY (`Timekey`) REFERENCES `dim_time` (`Timekey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_revenue`
--

LOCK TABLES `fact_revenue` WRITE;
/*!40000 ALTER TABLE `fact_revenue` DISABLE KEYS */;
INSERT INTO `fact_revenue` VALUES (1,1,1,1,1,10),(1,1,1,34,1,10),(1,1,1,36,1,10),(1,1,2,1,1,20),(1,1,2,34,1,20),(1,1,2,36,1,20),(1,1,3,1,1,100),(1,1,3,34,1,100),(1,1,3,36,1,100),(2,12,1,12,2,10),(2,12,1,23,2,10),(2,12,4,12,2,200),(2,12,4,23,2,200),(2,12,5,12,2,50),(2,12,5,23,2,50),(3,1,1,1,2,13),(3,1,1,34,2,13),(3,1,1,36,2,13),(3,1,2,1,2,23),(3,1,2,34,2,23),(3,1,2,36,2,23),(3,1,5,1,2,65),(3,1,5,34,2,65),(3,1,5,36,2,65),(3,21,2,12,1,20),(3,21,2,23,1,20),(3,21,3,12,1,100),(3,21,3,23,1,100),(3,21,4,12,1,200),(3,21,4,23,1,200),(4,22,1,1,1,13),(4,22,1,34,1,13),(4,22,1,36,1,13),(4,22,2,1,1,23),(4,22,2,34,1,23),(4,22,2,36,1,23),(4,22,3,1,1,110),(4,22,3,34,1,110),(4,22,3,36,1,110),(5,7,2,8,2,20),(5,7,3,8,2,100),(5,7,4,8,2,200),(6,24,1,24,1,10),(6,24,2,24,1,20),(6,24,5,24,1,50),(7,18,1,19,2,10),(7,18,2,19,2,20),(7,18,5,19,2,50),(8,25,1,39,4,13),(8,25,2,39,4,23),(8,25,5,39,4,65),(9,23,1,22,5,10),(9,23,4,22,5,200),(9,23,5,22,5,50),(10,19,3,20,3,100),(10,19,4,20,3,200),(10,19,5,20,3,50),(11,23,1,37,2,13),(11,23,4,37,2,215),(11,23,5,37,2,65),(12,26,3,40,5,110),(12,26,4,40,5,215),(12,26,5,40,5,65),(13,20,1,21,4,10),(13,20,2,21,4,20),(13,20,3,21,4,100),(14,6,1,7,1,10),(14,6,4,7,1,200),(14,6,5,7,1,50),(15,6,1,32,4,13),(15,6,4,32,4,200),(15,6,5,32,4,50),(16,15,1,16,4,10),(16,15,2,16,4,20),(16,15,3,16,4,100),(17,5,1,6,5,10),(17,5,2,6,5,20),(17,5,3,6,5,100),(18,7,2,33,5,23),(18,7,3,33,5,110),(18,7,4,33,5,215),(19,3,1,4,3,10),(19,3,2,4,3,20),(19,3,5,4,3,50),(20,27,1,27,4,10),(20,27,4,27,4,200),(20,27,5,27,4,50),(21,27,1,2,1,10),(21,27,4,2,1,200),(21,27,5,2,1,50),(22,13,1,14,2,10),(22,13,2,14,2,20),(22,13,5,14,2,50),(23,9,3,10,4,100),(23,9,4,10,4,200),(23,9,5,10,4,50),(24,24,2,38,3,23),(24,24,3,38,3,110),(24,24,4,38,3,215),(25,2,2,28,5,20),(25,2,3,28,5,100),(25,2,4,28,5,200),(26,5,1,31,3,10),(26,5,2,31,3,20),(26,5,3,31,3,100),(26,14,3,15,3,100),(26,14,4,15,3,200),(26,14,5,15,3,50),(27,2,2,3,2,20),(27,2,3,3,2,100),(27,2,4,3,2,200),(28,4,3,5,4,100),(28,4,4,5,4,200),(28,4,5,5,4,50),(28,25,3,25,2,100),(28,25,4,25,2,200),(28,25,5,25,2,50),(29,11,2,13,1,20),(29,11,3,13,1,100),(29,11,4,13,1,200),(29,17,2,18,1,20),(29,17,2,35,1,20),(29,17,3,18,1,100),(29,17,3,35,1,100),(29,17,4,18,1,200),(29,17,4,35,1,200),(30,4,3,30,2,100),(30,4,4,30,2,200),(30,4,5,30,2,50),(31,10,1,11,5,10),(31,10,2,11,5,20),(31,10,3,11,5,100),(32,8,1,9,3,10),(32,8,2,9,3,20),(32,8,5,9,3,50),(33,8,3,18,1,110),(33,8,3,35,1,110),(33,8,4,18,1,215),(33,8,4,35,1,215),(33,8,5,18,1,65),(33,8,5,35,1,65),(33,26,1,26,3,10),(33,26,2,26,3,20),(33,26,3,26,3,100),(34,3,1,29,1,10),(34,3,2,29,1,20),(34,3,5,29,1,50),(35,16,1,17,5,10),(35,16,4,17,5,200),(35,16,5,17,5,50);
/*!40000 ALTER TABLE `fact_revenue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-11  8:45:05
