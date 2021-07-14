CREATE DATABASE  IF NOT EXISTS `javawebapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `javawebapp`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: javawebapp
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `flight_instance`
--

DROP TABLE IF EXISTS `flight_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_instance` (
  `FLIGHT_NUMBER` int NOT NULL DEFAULT '0',
  `FLIGHT_DATE` date NOT NULL,
  `NUMBER_OF_AVAILABLE_SEATS` int DEFAULT NULL,
  `AIRPLANE_ID` int DEFAULT NULL,
  `DEPARTURE_TIME` time DEFAULT NULL,
  `ARRIVAL_TIME` time DEFAULT NULL,
  PRIMARY KEY (`FLIGHT_NUMBER`,`FLIGHT_DATE`),
  KEY `AIRPLANE_ID` (`AIRPLANE_ID`),
  CONSTRAINT `flight_instance_ibfk_1` FOREIGN KEY (`AIRPLANE_ID`) REFERENCES `airplane` (`AIRPLANE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_instance`
--

LOCK TABLES `flight_instance` WRITE;
/*!40000 ALTER TABLE `flight_instance` DISABLE KEYS */;
INSERT INTO `flight_instance` VALUES (162,'2015-05-31',10,1929,'17:35:00','20:27:00'),(199,'2015-05-31',8,2010,'07:52:00','10:36:00'),(281,'2015-05-31',16,3964,'06:04:00','08:33:00'),(536,'2015-05-31',10,873,'07:59:00','10:32:00'),(811,'2015-05-31',8,1940,'06:46:00','08:27:00'),(1093,'2015-05-31',8,899,'11:50:00','14:23:00'),(1111,'2015-05-31',10,957,'06:34:00','09:00:00'),(1182,'2015-05-31',8,1988,'17:45:00','19:26:00'),(1486,'2015-05-31',12,1455,'18:33:00','21:23:00'),(1780,'2015-05-31',14,2480,'07:12:00','10:03:00'),(2419,'2015-05-31',12,1377,'17:39:00','20:05:00'),(3952,'2015-05-31',10,3090,'17:50:00','19:50:00'),(4009,'2015-05-31',10,979,'12:42:00','15:08:00'),(4447,'2015-05-31',10,2031,'12:08:00','14:52:00'),(4452,'2015-05-31',12,2504,'11:24:00','14:15:00'),(4495,'2015-05-31',10,1967,'12:14:00','13:55:00'),(4553,'2015-05-31',16,4010,'18:57:00','21:26:00'),(5075,'2015-05-31',12,1505,'11:22:00','14:14:00'),(5222,'2015-05-31',12,1473,'07:45:00','10:37:00'),(5358,'2015-05-31',12,2546,'06:16:00','08:16:00'),(5496,'2015-05-31',12,1431,'11:38:00','14:28:00'),(5817,'2015-05-31',10,927,'17:57:00','20:30:00'),(6259,'2015-05-31',8,3134,'12:29:00','15:06:00'),(6273,'2015-05-31',14,2517,'18:22:00','21:13:00'),(6836,'2015-05-31',10,3160,'17:42:00','20:19:00'),(7027,'2015-05-31',12,1404,'06:51:00','09:41:00'),(8835,'2015-05-31',14,2448,'18:13:00','20:57:00'),(8993,'2015-05-31',16,3987,'12:58:00','15:27:00'),(9449,'2015-05-31',8,3076,'11:51:00','13:51:00'),(9851,'2015-05-31',8,3111,'06:11:00','08:48:00');
/*!40000 ALTER TABLE `flight_instance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-14  3:01:06
