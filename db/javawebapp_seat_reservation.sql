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
-- Table structure for table `seat_reservation`
--

DROP TABLE IF EXISTS `seat_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat_reservation` (
  `FLIGHT_NUMBER` int NOT NULL DEFAULT '0',
  `FLIGHT_DATE` date NOT NULL,
  `SEAT_NUMBER` varchar(20) NOT NULL,
  `CUSTOMER_NAME` varchar(80) DEFAULT NULL,
  `CUSTOMER_PHONE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`FLIGHT_NUMBER`,`FLIGHT_DATE`,`SEAT_NUMBER`),
  CONSTRAINT `seat_reservation_ibfk_1` FOREIGN KEY (`FLIGHT_NUMBER`, `FLIGHT_DATE`) REFERENCES `flight_instance` (`FLIGHT_NUMBER`, `FLIGHT_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_reservation`
--

LOCK TABLES `seat_reservation` WRITE;
/*!40000 ALTER TABLE `seat_reservation` DISABLE KEYS */;
INSERT INTO `seat_reservation` VALUES (536,'2015-05-31','1A','Angela Warren','0-(962)033-5022'),(536,'2015-05-31','1B','Catherine Perry','3-(107)252-8001'),(536,'2015-05-31','2A','Steven Wells','1-(745)548-0385'),(536,'2015-05-31','2B','Betty Cox','3-(315)056-0054'),(536,'2015-05-31','3A','Samuel Murphy','0-(643)734-5239'),(536,'2015-05-31','3B','Dennis Willis','5-(655)211-7642'),(536,'2015-05-31','4A','Irene Fernandez','5-(259)089-8800'),(536,'2015-05-31','4B','Shawn Hall','0-(573)689-4906'),(536,'2015-05-31','5A','Scott Taylor','4-(459)850-2982'),(7027,'2015-05-31','1A','Edward Rodriguez','8-(135)694-0726'),(7027,'2015-05-31','1B','Ruth Holmes','0-(962)033-5022'),(7027,'2015-05-31','2A','Julie Peters','7-(425)744-0416'),(7027,'2015-05-31','2B','Roy Cunningham','7-(224)798-9872'),(7027,'2015-05-31','3A','Steven Schmidt','2-(611)614-7244'),(7027,'2015-05-31','3B','Kathryn Johnston','9-(224)200-3456'),(7027,'2015-05-31','4A','Betty Peterson','9-(235)442-3861'),(8835,'2015-05-31','1A','Kathryn Wallace','0-(985)577-2462'),(8835,'2015-05-31','1B','Sarah Young','4-(585)959-0936'),(8835,'2015-05-31','2A','Mary Bradley','4-(535)366-5880'),(8835,'2015-05-31','2B','Irene Grant','2-(053)037-2115'),(8835,'2015-05-31','3A','Theresa Bradley','3-(260)125-1522'),(8835,'2015-05-31','3B','Gerald Price','7-(284)103-9553'),(8835,'2015-05-31','4A','Henry Webb','2-(431)574-8295'),(8835,'2015-05-31','4B','Randy Castillo','3-(620)616-4724'),(8835,'2015-05-31','5A','Antonio Ferguson','1-(675)219-4169'),(8835,'2015-05-31','5B','Lori Perry','6-(124)365-2332'),(8835,'2015-05-31','6A','Kevin Mcdonald','3-(679)850-1937'),(8835,'2015-05-31','6B','Benjamin Jenkins','4-(809)277-6698'),(8835,'2015-05-31','7A','Phyllis Elliott','2-(525)192-1140'),(8835,'2015-05-31','7B','Paula Ford','8-(242)740-6864');
/*!40000 ALTER TABLE `seat_reservation` ENABLE KEYS */;
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
