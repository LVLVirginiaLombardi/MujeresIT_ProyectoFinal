/* The backup of the mujeres_it database is created. To do so, all the tables that compose it are chosen, 
that is to say: DimCargos, DimTecnologias, FactEmpresas, FactMujeres and FactPeriodos. 
With all the population of this tables.*/

CREATE DATABASE  IF NOT EXISTS `mujeres_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mujeres_it`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: mujeres_it
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `DimCargos`
--

DROP TABLE IF EXISTS `DimCargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DimCargos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Seniority` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DimCargos`
--

LOCK TABLES `DimCargos` WRITE;
/*!40000 ALTER TABLE `DimCargos` DISABLE KEYS */;
INSERT INTO `DimCargos` VALUES (1,'Trainee'),(2,'Junior'),(3,'Junior Advanced'),(4,'Semi Senior'),(5,'Senior'),(6,'Senior Advanced'),(7,'Senior Level One'),(8,'Senior Level Two'),(9,'Senior Level Three'),(10,'Senior Level Four');
/*!40000 ALTER TABLE `DimCargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DimTecnologias`
--

DROP TABLE IF EXISTS `DimTecnologias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DimTecnologias` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DimTecnologias`
--

LOCK TABLES `DimTecnologias` WRITE;
/*!40000 ALTER TABLE `DimTecnologias` DISABLE KEYS */;
INSERT INTO `DimTecnologias` VALUES (1,'iOS','Mobile'),(2,'Android','Mobile'),(3,'React','Web UI'),(4,'MongoDB','Web UI'),(5,'VUE JS','Web UI'),(6,'JavaScript','Web UI'),(7,'Java','Programming'),(8,'C++','Programming'),(9,'Python','Programming'),(10,'C','Programming');
/*!40000 ALTER TABLE `DimTecnologias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FactEmpresas`
--

DROP TABLE IF EXISTS `FactEmpresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FactEmpresas` (
  `ID` int NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Tipo` varchar(255) DEFAULT NULL,
  `IDMujer` int NOT NULL,
  `IDCargo` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `IDMujer` (`IDMujer`),
  KEY `IDCargo` (`IDCargo`),
  CONSTRAINT `factempresas_ibfk_1` FOREIGN KEY (`IDMujer`) REFERENCES `FactMujeres` (`ID`),
  CONSTRAINT `factempresas_ibfk_2` FOREIGN KEY (`IDCargo`) REFERENCES `DimCargos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FactEmpresas`
--

LOCK TABLES `FactEmpresas` WRITE;
/*!40000 ALTER TABLE `FactEmpresas` DISABLE KEYS */;
INSERT INTO `FactEmpresas` VALUES (123,'Globant','Global Company',1,1),(124,'TCS','Global Company',2,5),(125,'Sabre','Global Company',3,5),(126,'d-Local','Global Company',4,2),(127,'Overactive','Global Company',5,3),(128,'Wabbi','Start Up',6,4),(129,'Tienda Inglesa','Global Company',7,6),(200,'Nimacloud','Start Up',8,7),(201,'Mercado Libre','Start Up',9,10),(202,'SparkDigital','Start Up',10,9);
/*!40000 ALTER TABLE `FactEmpresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FactMujeres`
--

DROP TABLE IF EXISTS `FactMujeres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FactMujeres` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `DNI` int NOT NULL,
  `Profesion` varchar(255) DEFAULT NULL,
  `IDCargo` int NOT NULL,
  `IDTecnologia` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDCargo` (`IDCargo`),
  KEY `IDTecnologia` (`IDTecnologia`),
  CONSTRAINT `factmujeres_ibfk_1` FOREIGN KEY (`IDCargo`) REFERENCES `DimCargos` (`ID`),
  CONSTRAINT `factmujeres_ibfk_2` FOREIGN KEY (`IDTecnologia`) REFERENCES `DimTecnologias` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FactMujeres`
--

LOCK TABLES `FactMujeres` WRITE;
/*!40000 ALTER TABLE `FactMujeres` DISABLE KEYS */;
INSERT INTO `FactMujeres` VALUES (1,'Virginia','Lombardi',46288064,'iOS Developer',1,1),(2,'Lucia','Perez',54568907,'Systems Engineering',5,4),(3,'Mariana','Orman',33458065,'iOS Developer',8,1),(4,'Lorena','Alvarez',56789073,'Java Developer',2,7),(5,'Alicia','Gonzalez',45678753,'Python Developer',3,9),(6,'Martina','Bernardi',56873219,'Android Developer',4,2),(7,'Isabel','Vayra',34623786,'Web UI Developer',6,3),(8,'Micaela','Nelson',56784325,'Web UI Developer',7,5),(9,'Susana','Mori',34868063,'C Developer',10,10),(10,'Natalia','Bonjour',65433456,'C++ Developer',9,8);
/*!40000 ALTER TABLE `FactMujeres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FactPeriodos`
--

DROP TABLE IF EXISTS `FactPeriodos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FactPeriodos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Dia` int NOT NULL,
  `Mes` int NOT NULL,
  `Anio` int NOT NULL,
  `IDEmpresa` int NOT NULL,
  `IDMujerIt` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDEmpresa` (`IDEmpresa`),
  KEY `IDMujerIt` (`IDMujerIt`),
  CONSTRAINT `factperiodos_ibfk_1` FOREIGN KEY (`IDEmpresa`) REFERENCES `FactEmpresas` (`ID`),
  CONSTRAINT `factperiodos_ibfk_2` FOREIGN KEY (`IDMujerIt`) REFERENCES `FactMujeres` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FactPeriodos`
--

LOCK TABLES `FactPeriodos` WRITE;
/*!40000 ALTER TABLE `FactPeriodos` DISABLE KEYS */;
INSERT INTO `FactPeriodos` VALUES (1,18,1,2021,123,10),(2,20,2,2019,125,2),(3,23,12,2020,127,4),(4,31,10,2010,129,6),(5,12,8,2015,201,8),(6,11,7,2021,202,3),(7,21,6,2021,124,5),(8,29,3,2013,126,7),(9,1,4,2014,128,9),(10,10,5,2016,200,1);
/*!40000 ALTER TABLE `FactPeriodos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-09 13:46:05
