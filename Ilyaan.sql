CREATE DATABASE  IF NOT EXISTS `diemdtechnologiesilyaan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `diemdtechnologiesilyaan`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: diemdtechnologiesilyaan
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `tblaanmelden`
--

DROP TABLE IF EXISTS `tblaanmelden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblaanmelden` (
  `AanmeldenID` int NOT NULL AUTO_INCREMENT,
  `Naam` tinytext NOT NULL,
  `Voornaam` tinytext NOT NULL,
  `Geboortedatum` datetime DEFAULT NULL,
  `Geslacht` tinyint(1) NOT NULL,
  `gebruikersnaam` tinytext NOT NULL,
  `Wachtwoord` tinytext NOT NULL,
  `Straat` tinytext NOT NULL,
  `Nummer` int NOT NULL,
  `Postcode` int NOT NULL,
  `Gemeente` tinytext NOT NULL,
  `Email` tinytext NOT NULL,
  `Telnr` int NOT NULL,
  `rol` varchar(45) NOT NULL,
  PRIMARY KEY (`AanmeldenID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaanmelden`
--

LOCK TABLES `tblaanmelden` WRITE;
/*!40000 ALTER TABLE `tblaanmelden` DISABLE KEYS */;
INSERT INTO `tblaanmelden` VALUES (1,'Milan','Scharmin','2005-11-21 11:30:00',0,'Milqno','Melk','Oude Brugseweg',25,8460,'Westkerke','milan.scharmin@student.ppsjo.be',499500724,'Werknemer'),(2,'Ilyaan','Ali','2007-11-11 11:11:11',0,'Ali','Ali','Ali',11,1111,'Ali','Ali@gmail.com',1111111111,'Klant'),(3,'Dennis','Hu','2005-02-18 00:00:00',0,'Dennis','Hu','Hu',11,1111,'Hu','Hu@gmail.com',1111111111,''),(4,'Darius','achternaam','2005-11-11 11:11:11',0,'Darius','achternaam','achernaam',11,1111,'achternaam','achternaam@gmail.com',1111111111,''),(5,'Erjan','achter','2005-11-11 11:11:11',0,'Erjan','Erjan','Erjan',11,1111,'Erjan','erjan@gmail.com',1111111111,'');
/*!40000 ALTER TABLE `tblaanmelden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblboeking`
--

DROP TABLE IF EXISTS `tblboeking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblboeking` (
  `BoekingsID` int NOT NULL AUTO_INCREMENT,
  `AanmeldenID` int NOT NULL,
  `DienstID` int NOT NULL,
  `Wanneer` datetime NOT NULL,
  `Waar` tinytext NOT NULL,
  `Probleem` mediumtext NOT NULL,
  PRIMARY KEY (`BoekingsID`),
  KEY `fk_BoekingAanmelden_idx` (`AanmeldenID`),
  KEY `fk_BoekingDiensten_idx` (`DienstID`),
  CONSTRAINT `fk_BoekingAanmelden` FOREIGN KEY (`AanmeldenID`) REFERENCES `tblaanmelden` (`AanmeldenID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_BoekingDiensten` FOREIGN KEY (`DienstID`) REFERENCES `tbldiensten` (`idDienst`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblboeking`
--

LOCK TABLES `tblboeking` WRITE;
/*!40000 ALTER TABLE `tblboeking` DISABLE KEYS */;
INSERT INTO `tblboeking` VALUES (2,1,2,'2006-10-11 00:00:00','test','test'),(3,1,1,'1111-11-11 00:00:00','Oostende','Ja'),(6,1,1,'2006-11-11 00:00:00','office','gpu'),(8,1,1,'2019-11-05 00:00:00','college','cpu'),(14,1,1,'2024-06-05 00:00:00','dsay','dsadas');
/*!40000 ALTER TABLE `tblboeking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldiensten`
--

DROP TABLE IF EXISTS `tbldiensten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldiensten` (
  `idDienst` int NOT NULL AUTO_INCREMENT,
  `Omschrijving` longtext NOT NULL,
  `prijs` double NOT NULL,
  PRIMARY KEY (`idDienst`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldiensten`
--

LOCK TABLES `tbldiensten` WRITE;
/*!40000 ALTER TABLE `tbldiensten` DISABLE KEYS */;
INSERT INTO `tbldiensten` VALUES (1,'probleme',5),(2,'prob leem',1),(3,'fukhgsdfjghfd',8),(4,'gdfsgsdfg',10),(5,'dfgsdfg',11);
/*!40000 ALTER TABLE `tbldiensten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvoorbereidingopdracht`
--

DROP TABLE IF EXISTS `tblvoorbereidingopdracht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvoorbereidingopdracht` (
  `OpdrachtID` int NOT NULL AUTO_INCREMENT,
  `AanmeldenID` int NOT NULL,
  `DienstID` int NOT NULL,
  `voorbereidingsduur` int DEFAULT NULL,
  PRIMARY KEY (`OpdrachtID`),
  KEY `fk_VoorbereidingAanmelden_idx` (`AanmeldenID`),
  KEY `fk_VoorbereidingDienst_idx` (`DienstID`),
  CONSTRAINT `fk_VoorbereidingAanmelden` FOREIGN KEY (`AanmeldenID`) REFERENCES `tblaanmelden` (`AanmeldenID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_VoorbereidingDienst` FOREIGN KEY (`DienstID`) REFERENCES `tbldiensten` (`idDienst`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvoorbereidingopdracht`
--

LOCK TABLES `tblvoorbereidingopdracht` WRITE;
/*!40000 ALTER TABLE `tblvoorbereidingopdracht` DISABLE KEYS */;
INSERT INTO `tblvoorbereidingopdracht` VALUES (1,1,2,NULL),(2,2,1,NULL),(3,3,3,NULL),(4,4,4,NULL),(5,5,5,NULL);
/*!40000 ALTER TABLE `tblvoorbereidingopdracht` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 17:29:38
