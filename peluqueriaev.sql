-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: peluqueriaev
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `dueno`
--

DROP TABLE IF EXISTS `dueno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dueno` (
  `DNI` int NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(40) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dueno`
--

LOCK TABLES `dueno` WRITE;
/*!40000 ALTER TABLE `dueno` DISABLE KEYS */;
INSERT INTO `dueno` VALUES (10362995,'Mario','Vega','3516488382','Colon 5061'),(17567123,'Marianella','Flores','3513298379','Humberto Primo 772'),(19533153,'Josefina','García','3513388379','Colon 15'),(21533111,'María','Gonzalez','3516488381','Urquiza 1061'),(21533122,'Ariel','García','3513388379','Tablada 106'),(23546987,'María','Perez','4789689','Pueyrredon 8110'),(28957346,'Juan','Perez','4789689','Belgrano 101'),(31391722,'Pedro','Gimenez','3513388381','Carlos Paz 109'),(34331722,'Pedro','Gimenez','3513388381','Carlos Paz 109'),(36537322,'Pedro','Vaca','3513375379','Rivera Indarte 85');
/*!40000 ALTER TABLE `dueno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial` (
  `ID_Historial` int NOT NULL,
  `Fecha` date NOT NULL,
  `Perro` int NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Monto` int NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `fk_fp` (`Perro`),
  CONSTRAINT `fk_fp` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
INSERT INTO `historial` VALUES (1,'2020-12-12',10,'consulta1',2000),(2,'2022-06-01',10,'consulta2',2000),(3,'2022-06-10',11,'',1500),(4,'2022-06-15',12,'Lavado',3000),(5,'2022-06-15',13,'Lavado',2350),(6,'2022-06-15',11,'Lavados',23500),(7,'2022-06-15',11,'Lavados',23500),(8,'2022-06-15',11,'Lavados',23500),(9,'2022-06-16',12,'Lavado',9530),(10,'2022-06-16',13,'Lavado',7510),(11,'2022-06-16',14,'Lavado',8520),(12,'2022-06-17',15,'Corte',2000),(13,'2022-06-17',16,'Corte',2350),(14,'2022-06-20',10,'Corte',2350),(15,'2022-06-20',11,'Corte',5960),(16,'2022-06-20',12,'',4120),(17,'2022-06-20',13,'lavado',7960),(18,'2022-06-20',14,'lavado',9510),(19,'2022-06-20',15,'lavado',5000),(20,'2022-06-20',16,'lavado',5960);
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perro`
--

DROP TABLE IF EXISTS `perro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perro` (
  `ID_Perro` int NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `DNI_dueno` int NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  KEY `fk_fd` (`DNI_dueno`),
  CONSTRAINT `fk_fd` FOREIGN KEY (`DNI_dueno`) REFERENCES `dueno` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perro`
--

LOCK TABLES `perro` WRITE;
/*!40000 ALTER TABLE `perro` DISABLE KEYS */;
INSERT INTO `perro` VALUES (10,'Camilo','2020-12-12','Macho',10362995),(11,'Frida','2021-02-10','Hembra',17567123),(12,'Lennon','2018-09-07','Macho',19533153),(13,'Olivia','2019-10-25','Hembra',21533122),(14,'Toto','2020-02-23','Macho',23546987),(15,'Fido','2021-02-15','Macho',28957346),(16,'Puppy','2018-01-01','Hembra',31391722);
/*!40000 ALTER TABLE `perro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 15:49:12
