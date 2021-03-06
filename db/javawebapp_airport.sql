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
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `AIRPORT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(350) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AIRPORT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES ('ATL','Hartsfield Jackson Atlanta International','Atlanta','GA'),('AUS','Austin Bergstrom International','Austin','TX'),('BNA','Nashville International','Nashville','TN'),('BOS','General Edward Lawrence Logan International','Boston','MA'),('BWI','Baltimore/Washington International Thurgood Marshall','Baltimore','MD'),('CLE','Cleveland Hopkins International','Cleveland','OH'),('CLT','Charlotte Douglas International','Charlotte','NC'),('DCA','Ronald Reagan Washington National','Washington','DC'),('DEN','Denver International','Denver','CO'),('DFW','Dallas Fort Worth International','Dallas-Fort Worth','TX'),('DTW','Detroit Metropolitan Wayne County','Detroit','MI'),('EWR','Newark Liberty International','Newark','NJ'),('FLL','Fort Lauderdale Hollywood International','Fort Lauderdale','FL'),('HNL','Honolulu International','Honolulu','HI'),('HOU','William P Hobby','Houston','TX'),('IAD','Washington Dulles International','Washington','MD'),('IAH','George Bush Intercontinental Houston','Houston','TX'),('JFK','John F Kennedy International','New York','NY'),('LAS','McCarran International','Las Vegas','NV'),('LAX','Los Angeles International','Los Angeles','CA'),('LGA','La Guardia','New York','NY'),('MCI','Kansas City International','Kansas City','MO'),('MCO','Orlando International','Orlando','FL'),('MDW','Chicago Midway International','Chicago','IL'),('MIA','Miami International','Miami','FL'),('MSP','Minneapolis-St Paul International/Wold-Chamberlain','Minneapolis','MN'),('OAK','Metropolitan Oakland International','Oakland','CA'),('ORD','Chicago O\'Hare International','Chicago','IL'),('PDX','Portland International','Portland','OR'),('PHL','Philadelphia International','Philadelphia','PA'),('PHX','Phoenix Sky Harbor International','Phoenix','AZ'),('RDU','Raleigh Durham International','Raleigh/Durham','NC'),('SAN','San Diego International','San Diego','CA'),('SEA','Seattle Tacoma International','Seattle','WA'),('SFO','San Francisco International','San Francisco','CA'),('SLC','Salt Lake City International','Salt Lake City','UT'),('SMF','Sacramento International','Sacramento','CA'),('SNA','John Wayne-Orange County','Santa Ana','CA'),('STL','Lambert St Louis International','St Louis','MO'),('TPA','Tampa International','Tampa','FL');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-14  3:01:07
