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
-- Dumping data for table `DimCargos`
--

LOCK TABLES `DimCargos` WRITE;
/*!40000 ALTER TABLE `DimCargos` DISABLE KEYS */;
INSERT INTO `DimCargos` VALUES (2,'Junior'),(3,'Junior Advanced'),(4,'Semi Senior'),(5,'Senior'),(6,'Senior Advanced'),(7,'Senior Level One'),(9,'Senior Level Three'),(10,'Senior Level Four'),(13,'Architect Designer'),(14,'Tech Lead');
/*!40000 ALTER TABLE `DimCargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `DimTecnologias`
--

LOCK TABLES `DimTecnologias` WRITE;
/*!40000 ALTER TABLE `DimTecnologias` DISABLE KEYS */;
INSERT INTO `DimTecnologias` VALUES (1,'iOS','Mobile'),(3,'React','Web UI'),(4,'MongoDB','Web UI'),(5,'VUE JS','Web UI'),(6,'JavaScript','Web UI'),(7,'Java','Programming'),(8,'C++','Programming'),(9,'Python','Programming'),(10,'C','Programming'),(11,'Angular','Web UI');
/*!40000 ALTER TABLE `DimTecnologias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FactEmpresas`
--

LOCK TABLES `FactEmpresas` WRITE;
/*!40000 ALTER TABLE `FactEmpresas` DISABLE KEYS */;
INSERT INTO `FactEmpresas` VALUES (123,'Globant','Global Company',1,1),(124,'TCS','Global Company',2,5),(125,'Sabre','Global Company',3,5),(126,'d-Local','Global Company',4,2),(127,'Overactive','Global Company',5,3),(128,'Wabbi','Start Up',6,4),(129,'Tienda Inglesa','Global Company',7,6),(200,'Nimacloud','Start Up',8,7),(201,'Mercado Libre','Start Up',9,10),(202,'SparkDigital','Start Up',10,9);
/*!40000 ALTER TABLE `FactEmpresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FactMujeres`
--

LOCK TABLES `FactMujeres` WRITE;
/*!40000 ALTER TABLE `FactMujeres` DISABLE KEYS */;
INSERT INTO `FactMujeres` VALUES (1,'Virginia','Lombardi',46288064,'iOS Developer',1,1),(2,'Lucia','Perez',54568907,'Systems Engineering',5,4),(3,'Mariana','Orman',33458065,'iOS Developer',8,1),(4,'Lorena','Alvarez',56789073,'Java Developer',2,7),(5,'Alicia','Gonzalez',45678753,'Python Developer',3,9),(6,'Martina','Bernardi',56873219,'Android Developer',4,2),(7,'Isabel','Vayra',34623786,'Web UI Developer',6,3),(8,'Micaela','Nelson',56784325,'Web UI Developer',7,5),(9,'Susana','Mori',34868063,'C Developer',10,10),(12,'Siri','Altez',43211285,'iOS Developer',2,1);
/*!40000 ALTER TABLE `FactMujeres` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2022-02-05 18:04:24
