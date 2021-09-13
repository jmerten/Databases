CREATE DATABASE  IF NOT EXISTS `module3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `module3`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: module3
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
-- Table structure for table `patron`
--

DROP TABLE IF EXISTS `patron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patron` (
  `PatronID` char(4) NOT NULL,
  `PatronName` varchar(45) NOT NULL,
  `PatronZip` varchar(45) NOT NULL,
  PRIMARY KEY (`PatronID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patron`
--

LOCK TABLES `patron` WRITE;
/*!40000 ALTER TABLE `patron` DISABLE KEYS */;
INSERT INTO `patron` VALUES ('PT1','Daisy','23185'),('PT10','Faizel','23187'),('PT11','David','22032'),('PT12','Agnes','23134'),('PT13','Sofia','23131'),('PT14','Deborah','23158'),('PT15','Chrystal','23160'),('PT16','Titus','22142'),('PT17','Rosa','23159'),('PT18','Trinity','23151'),('PT19','Luther','23163'),('PT2','Derya','23139'),('PT20','Albert','22031'),('PT3','Akari','23185'),('PT4','Lenn','23146'),('PT5','Ruzha','22031'),('PT6','Daniel','23147'),('PT7','Rory','23136'),('PT8','Beatrice','23185'),('PT9','Michael','22030');
/*!40000 ALTER TABLE `patron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spaemployee`
--

DROP TABLE IF EXISTS `spaemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spaemployee` (
  `SEID` char(3) NOT NULL,
  `SEName` varchar(45) NOT NULL,
  `SEYearofHire` char(4) NOT NULL,
  PRIMARY KEY (`SEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spaemployee`
--

LOCK TABLES `spaemployee` WRITE;
/*!40000 ALTER TABLE `spaemployee` DISABLE KEYS */;
INSERT INTO `spaemployee` VALUES ('SE1','Frank','2010'),('SE2','Suzie','2007'),('SE3','Eveline','2009'),('SE4','Billy','2011'),('SE5','Sarah','2006');
/*!40000 ALTER TABLE `spaemployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spaprocedure`
--

DROP TABLE IF EXISTS `spaprocedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spaprocedure` (
  `ProcedureID` char(3) NOT NULL,
  `ProcedureName` varchar(45) NOT NULL,
  PRIMARY KEY (`ProcedureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spaprocedure`
--

LOCK TABLES `spaprocedure` WRITE;
/*!40000 ALTER TABLE `spaprocedure` DISABLE KEYS */;
INSERT INTO `spaprocedure` VALUES ('PR1','Manicure'),('PR2','Pedicure'),('PR3','45m Massage'),('PR4','1h Massage'),('PR5','30m Massage');
/*!40000 ALTER TABLE `spaprocedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit` (
  `VisitID` char(3) NOT NULL,
  `Patron` char(4) NOT NULL,
  `SEmployee` char(3) NOT NULL,
  `VisitDate` date NOT NULL,
  `VisitTime` varchar(45) NOT NULL,
  PRIMARY KEY (`VisitID`),
  KEY `Patron` (`Patron`),
  KEY `SEmployee` (`SEmployee`),
  CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`Patron`) REFERENCES `patron` (`PatronID`),
  CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`SEmployee`) REFERENCES `spaemployee` (`SEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES ('V1','PT20','SE5','2018-01-02','10:04:00'),('V10','PT13','SE4','2018-03-22','10:48:00'),('V11','PT4','SE4','2018-03-27','16:33:00'),('V12','PT1','SE5','2018-04-11','12:57:00'),('V13','PT20','SE3','2018-04-28','8:09:00'),('V14','PT6','SE3','2018-05-26','7:12:00'),('V15','PT17','SE3','2018-06-09','16:04:00'),('V16','PT1','SE1','2018-06-10','7:12:00'),('V17','PT7','SE5','2018-06-13','17:16:00'),('V18','PT11','SE2','2018-06-26','10:19:00'),('V19','PT5','SE2','2018-07-09','9:21:00'),('V2','PT16','SE2','2018-01-03','14:52:00'),('V20','PT20','SE4','2018-07-09','11:45:00'),('V21','PT17','SE1','2018-07-09','18:00:00'),('V22','PT13','SE1','2018-07-15','15:07:00'),('V23','PT9','SE3','2018-07-16','9:36:00'),('V24','PT17','SE1','2018-07-31','20:52:00'),('V25','PT20','SE2','2018-08-19','15:07:00'),('V26','PT18','SE4','2018-08-24','8:24:00'),('V27','PT4','SE3','2018-09-14','19:12:00'),('V28','PT17','SE5','2018-10-09','13:26:00'),('V29','PT17','SE5','2018-10-11','16:33:00'),('V3','PT19','SE1','2018-01-22','9:36:00'),('V30','PT8','SE5','2018-10-18','11:16:00'),('V31','PT9','SE2','2018-10-19','10:19:00'),('V32','PT3','SE5','2018-10-24','9:21:00'),('V33','PT11','SE3','2018-11-03','14:24:00'),('V34','PT16','SE3','2018-12-04','18:57:00'),('V35','PT9','SE2','2018-12-05','21:50:00'),('V36','PT12','SE3','2018-12-09','9:07:00'),('V37','PT19','SE4','2018-12-10','16:48:00'),('V38','PT2','SE3','2018-12-13','21:36:00'),('V39','PT11','SE2','2018-12-17','10:19:00'),('V4','PT7','SE5','2018-01-22','18:28:00'),('V40','PT8','SE4','2018-12-26','10:33:00'),('V5','PT3','SE5','2018-01-24','9:36:00'),('V6','PT14','SE1','2018-01-26','8:52:00'),('V7','PT1','SE5','2018-02-04','20:09:00'),('V8','PT3','SE4','2018-02-26','6:57:00'),('V9','PT16','SE5','2018-03-08','13:55:00');
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitprocedures`
--

DROP TABLE IF EXISTS `visitprocedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitprocedures` (
  `VisitID` char(3) NOT NULL,
  `ProcedureID` char(3) NOT NULL,
  `AmountCharged` int NOT NULL,
  PRIMARY KEY (`VisitID`,`ProcedureID`),
  KEY `ProcedureID` (`ProcedureID`),
  CONSTRAINT `visitprocedures_ibfk_1` FOREIGN KEY (`VisitID`) REFERENCES `visit` (`VisitID`),
  CONSTRAINT `visitprocedures_ibfk_2` FOREIGN KEY (`ProcedureID`) REFERENCES `spaprocedure` (`ProcedureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitprocedures`
--

LOCK TABLES `visitprocedures` WRITE;
/*!40000 ALTER TABLE `visitprocedures` DISABLE KEYS */;
INSERT INTO `visitprocedures` VALUES ('V1','PR2',20),('V1','PR3',100),('V1','PR5',50),('V10','PR1',10),('V10','PR2',20),('V10','PR3',100),('V11','PR1',10),('V11','PR2',20),('V11','PR3',100),('V12','PR1',10),('V12','PR3',100),('V12','PR5',50),('V13','PR1',10),('V13','PR2',20),('V13','PR3',100),('V14','PR1',10),('V14','PR2',20),('V14','PR3',100),('V15','PR2',20),('V15','PR3',100),('V15','PR4',200),('V16','PR1',10),('V16','PR2',20),('V16','PR3',100),('V17','PR2',20),('V17','PR3',100),('V17','PR5',50),('V18','PR2',20),('V18','PR4',200),('V18','PR5',50),('V19','PR2',20),('V19','PR4',200),('V19','PR5',50),('V2','PR1',10),('V2','PR2',20),('V2','PR5',50),('V20','PR1',10),('V20','PR3',100),('V20','PR5',50),('V21','PR1',10),('V21','PR3',100),('V21','PR5',50),('V22','PR3',100),('V22','PR4',200),('V22','PR5',50),('V23','PR2',20),('V23','PR4',200),('V23','PR5',50),('V24','PR1',10),('V24','PR4',200),('V24','PR5',50),('V25','PR1',10),('V25','PR3',100),('V25','PR4',200),('V26','PR1',10),('V26','PR4',200),('V26','PR5',50),('V27','PR1',10),('V27','PR2',20),('V27','PR5',50),('V28','PR2',20),('V28','PR3',100),('V28','PR5',50),('V29','PR2',20),('V29','PR4',200),('V29','PR5',50),('V3','PR1',10),('V3','PR4',200),('V3','PR5',50),('V30','PR2',20),('V30','PR3',100),('V30','PR4',200),('V31','PR1',10),('V31','PR4',200),('V31','PR5',50),('V32','PR1',10),('V32','PR2',20),('V32','PR4',200),('V33','PR2',20),('V33','PR3',100),('V33','PR5',50),('V34','PR1',10),('V34','PR2',20),('V34','PR4',200),('V35','PR2',20),('V35','PR3',100),('V35','PR5',50),('V36','PR1',10),('V36','PR2',20),('V36','PR5',50),('V37','PR3',100),('V37','PR4',200),('V37','PR5',50),('V38','PR3',100),('V38','PR4',200),('V38','PR5',50),('V39','PR1',10),('V39','PR3',100),('V39','PR5',50),('V4','PR2',20),('V4','PR4',200),('V4','PR5',50),('V40','PR1',10),('V40','PR4',200),('V40','PR5',50),('V5','PR1',10),('V5','PR3',100),('V5','PR4',200),('V6','PR2',20),('V6','PR3',100),('V6','PR5',50),('V7','PR2',20),('V7','PR4',200),('V7','PR5',50),('V8','PR1',10),('V8','PR4',200),('V8','PR5',50),('V9','PR1',10),('V9','PR4',200),('V9','PR5',50);
/*!40000 ALTER TABLE `visitprocedures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-25 19:37:31
