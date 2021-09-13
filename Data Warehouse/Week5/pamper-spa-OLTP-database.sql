CREATE DATABASE  IF NOT EXISTS `pamperspa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `pamperspa`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: pamperspa
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `patron` (
  `PatronID` char(4) NOT NULL,
  `PatronName` varchar(45) DEFAULT NULL,
  `PatronZip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PatronID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patron`
--

LOCK TABLES `patron` WRITE;
/*!40000 ALTER TABLE `patron` DISABLE KEYS */;
INSERT INTO `patron` VALUES ('PT1','Daisy','23185'),('PT10','Kitra','23185'),('PT11','Acton','23139'),('PT12','Magee','23146'),('PT13','Camden','23147'),('PT14','Brandon','22031'),('PT15','Zenia','23185'),('PT16','Xerxes','23139'),('PT17','Ila','23146'),('PT18','Samuel','23147'),('PT19','Virginia','22031'),('PT2','Ellena','23185'),('PT20','Ulric','23185'),('PT21','Serena','23139'),('PT22','Zachery','23146'),('PT23','Craig','23147'),('PT24','Kevin','22031'),('PT25','Avram','23185'),('PT26','Jillian','23139'),('PT27','Ignacia','23146'),('PT3','Nelly','23185'),('PT4','Marcia','60650'),('PT5','Hop','23185'),('PT6','Stella','23139'),('PT7','Erasmus','23146'),('PT8','Patricia','23147'),('PT9','Ferris','22031');
/*!40000 ALTER TABLE `patron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spaemployee`
--

DROP TABLE IF EXISTS `spaemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `spaemployee` (
  `SEID` char(3) NOT NULL,
  `SEName` varchar(45) DEFAULT NULL,
  `SEYearofHire` char(4) DEFAULT NULL,
  PRIMARY KEY (`SEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spaemployee`
--

LOCK TABLES `spaemployee` WRITE;
/*!40000 ALTER TABLE `spaemployee` DISABLE KEYS */;
INSERT INTO `spaemployee` VALUES ('SE1','Claire','2000'),('SE2','Jamie','2008'),('SE3','Laura','2010'),('SE4','Tom','2015'),('SE5','Andrew','2018');
/*!40000 ALTER TABLE `spaemployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spaprocedure`
--

DROP TABLE IF EXISTS `spaprocedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `spaprocedure` (
  `ProcedureID` char(3) NOT NULL,
  `ProcedureName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProcedureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spaprocedure`
--

LOCK TABLES `spaprocedure` WRITE;
/*!40000 ALTER TABLE `spaprocedure` DISABLE KEYS */;
INSERT INTO `spaprocedure` VALUES ('PR1','Mani'),('PR2','Pedi'),('PR3','Massage'),('PR4','Botox'),('PR5','Facial');
/*!40000 ALTER TABLE `spaprocedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `visit` (
  `VisitID` char(3) NOT NULL,
  `Patron` char(4) DEFAULT NULL,
  `SEmployee` char(3) DEFAULT NULL,
  `VisitDate` date DEFAULT NULL,
  `VisitTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`VisitID`),
  KEY `fk_idx` (`SEmployee`),
  KEY `vfk1_idx` (`Patron`),
  KEY `vfk2_idx` (`SEmployee`),
  CONSTRAINT `VFK1` FOREIGN KEY (`Patron`) REFERENCES `patron` (`patronid`),
  CONSTRAINT `vfk2` FOREIGN KEY (`SEmployee`) REFERENCES `spaemployee` (`seid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES ('V1','PT1','SE1','2018-01-01','8:00 AM'),('V10','PT9','SE1','2018-07-19','4:41 PM'),('V11','PT10','SE2','2018-10-24','3:38 PM'),('V12','PT11','SE3','2018-07-14','1:59 PM'),('V13','PT12','SE4','2018-10-27','8:14 AM'),('V14','PT13','SE5','2018-06-13','2:10 PM'),('V15','PT14','SE1','2018-04-29','8:29 AM'),('V16','PT15','SE2','2018-01-05','10:30 AM'),('V17','PT16','SE3','2018-11-22','11:50 AM'),('V18','PT17','SE4','2018-08-09','8:26 AM'),('V19','PT18','SE5','2018-11-10','1:36 PM'),('V2','PT2','SE2','2018-01-02','8:30 AM'),('V20','PT19','SE1','2018-11-01','8:57 AM'),('V21','PT20','SE2','2018-07-27','12:40 PM'),('V22','PT21','SE3','2018-10-06','12:22 PM'),('V23','PT22','SE4','2018-05-30','11:09 AM'),('V24','PT23','SE5','2018-12-30','3:31 PM'),('V25','PT24','SE1','2018-11-01','1:33 PM'),('V26','PT25','SE2','2018-02-24','2:46 PM'),('V27','PT26','SE3','2018-03-15','1:58 PM'),('V28','PT27','SE4','2018-04-24','12:19 PM'),('V29','PT5','SE5','2018-03-14','4:20 PM'),('V3','PT3','SE1','2018-01-03','8:30 AM'),('V30','PT6','SE1','2018-01-13','4:40 PM'),('V31','PT7','SE2','2018-10-27','11:38 AM'),('V32','PT8','SE3','2018-12-23','2:51 PM'),('V33','PT9','SE4','2018-07-15','2:33 PM'),('V34','PT10','SE5','2018-09-24','3:48 PM'),('V35','PT11','SE1','2018-12-24','12:46 PM'),('V36','PT12','SE2','2018-11-03','1:30 PM'),('V37','PT13','SE3','2018-10-06','9:13 AM'),('V38','PT14','SE4','2018-05-16','10:40 AM'),('V39','PT15','SE5','2018-06-28','3:57 PM'),('V4','PT1','SE2','2018-01-03','8:00 AM'),('V40','PT16','SE1','2018-12-23','1:33 PM'),('V5','PT4','SE1','2018-01-04','8:00 AM'),('V6','PT5','SE2','2018-03-18','12:56 PM'),('V7','PT6','SE3','2018-08-28','8:13 AM'),('V8','PT7','SE4','2018-03-03','8:05 AM'),('V9','PT8','SE5','2018-03-21','12:05 PM');
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitprocedures`
--

DROP TABLE IF EXISTS `visitprocedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `visitprocedures` (
  `VisitID` char(3) NOT NULL,
  `ProcedureID` char(3) NOT NULL,
  `AmountCharged` int(11) DEFAULT NULL,
  PRIMARY KEY (`VisitID`,`ProcedureID`),
  KEY `fk2_idx` (`ProcedureID`),
  CONSTRAINT `fk1` FOREIGN KEY (`VisitID`) REFERENCES `visit` (`visitid`),
  CONSTRAINT `fk2` FOREIGN KEY (`ProcedureID`) REFERENCES `spaprocedure` (`procedureid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitprocedures`
--

LOCK TABLES `visitprocedures` WRITE;
/*!40000 ALTER TABLE `visitprocedures` DISABLE KEYS */;
INSERT INTO `visitprocedures` VALUES ('V1','PR1',10),('V1','PR2',20),('V1','PR3',100),('V10','PR1',10),('V10','PR4',200),('V10','PR5',50),('V11','PR2',20),('V11','PR3',100),('V11','PR4',200),('V12','PR1',10),('V12','PR2',20),('V12','PR5',50),('V13','PR3',100),('V13','PR4',200),('V13','PR5',50),('V14','PR1',10),('V14','PR2',20),('V14','PR3',100),('V15','PR1',10),('V15','PR4',200),('V15','PR5',50),('V16','PR2',20),('V16','PR3',100),('V16','PR4',200),('V17','PR1',10),('V17','PR2',20),('V17','PR5',50),('V18','PR3',100),('V18','PR4',200),('V18','PR5',50),('V19','PR1',10),('V19','PR2',20),('V19','PR3',100),('V2','PR1',10),('V2','PR4',200),('V2','PR5',50),('V20','PR2',20),('V20','PR3',100),('V20','PR4',200),('V21','PR1',10),('V21','PR2',20),('V21','PR5',50),('V22','PR3',100),('V22','PR4',200),('V22','PR5',50),('V23','PR1',10),('V23','PR2',20),('V23','PR3',100),('V24','PR1',10),('V24','PR4',200),('V24','PR5',50),('V25','PR2',20),('V25','PR3',100),('V25','PR4',200),('V26','PR1',10),('V26','PR2',20),('V26','PR5',50),('V27','PR3',100),('V27','PR4',200),('V27','PR5',50),('V28','PR1',10),('V28','PR2',20),('V28','PR3',100),('V29','PR1',10),('V29','PR4',200),('V29','PR5',50),('V3','PR2',20),('V3','PR3',100),('V3','PR4',200),('V30','PR1',10),('V30','PR2',20),('V30','PR5',50),('V31','PR3',100),('V31','PR4',200),('V31','PR5',50),('V32','PR1',10),('V32','PR2',20),('V32','PR3',100),('V33','PR1',10),('V33','PR4',200),('V33','PR5',50),('V34','PR2',20),('V34','PR3',100),('V34','PR4',200),('V35','PR1',10),('V35','PR2',20),('V35','PR5',50),('V36','PR3',100),('V36','PR4',200),('V36','PR5',50),('V37','PR1',10),('V37','PR2',20),('V37','PR3',100),('V38','PR1',13),('V38','PR4',200),('V38','PR5',50),('V39','PR2',23),('V39','PR3',110),('V39','PR4',215),('V4','PR1',13),('V4','PR2',23),('V4','PR5',65),('V40','PR3',110),('V40','PR4',215),('V40','PR5',65),('V5','PR1',13),('V5','PR2',23),('V5','PR3',110),('V6','PR1',13),('V6','PR4',215),('V6','PR5',65),('V7','PR2',23),('V7','PR3',110),('V7','PR4',215),('V8','PR1',13),('V8','PR2',23),('V8','PR5',65),('V9','PR3',110),('V9','PR4',215),('V9','PR5',65);
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

-- Dump completed on 2019-01-08 15:13:17
