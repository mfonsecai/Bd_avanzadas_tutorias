-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clase2
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes` (
  `doc_id` int NOT NULL AUTO_INCREMENT,
  `doc_nombre` varchar(100) NOT NULL,
  `doc_correo` varchar(255) NOT NULL,
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `doc_correo` (`doc_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,'Docente 1','doc1@correo.com'),(2,'Docente 2','doc2@correo.com'),(3,'Docente 3','doc3@correo.com'),(4,'Docente 4','doc4@correo.com'),(5,'Docente 5','doc5@correo.com'),(6,'Docente 6','doc6@correo.com'),(7,'Docente 7','doc7@correo.com'),(8,'Docente 8','doc8@correo.com'),(9,'Docente 9','doc9@correo.com'),(10,'Docente 10','doc10@correo.com'),(11,'Docente 11','doc11@correo.com'),(12,'Docente 12','doc12@correo.com'),(13,'Docente 13','doc13@correo.com'),(14,'Docente 14','doc14@correo.com'),(15,'Docente 15','doc15@correo.com'),(16,'Docente 16','doc16@correo.com'),(17,'Docente 17','doc17@correo.com'),(18,'Docente 18','doc18@correo.com'),(19,'Docente 19','doc19@correo.com'),(20,'Docente 20','doc20@correo.com');
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes_materias`
--

DROP TABLE IF EXISTS `docentes_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes_materias` (
  `doc_id` int NOT NULL,
  `mat_id` int NOT NULL,
  PRIMARY KEY (`doc_id`,`mat_id`),
  KEY `mat_id` (`mat_id`),
  CONSTRAINT `docentes_materias_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `docentes` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `docentes_materias_ibfk_2` FOREIGN KEY (`mat_id`) REFERENCES `materias` (`mat_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes_materias`
--

LOCK TABLES `docentes_materias` WRITE;
/*!40000 ALTER TABLE `docentes_materias` DISABLE KEYS */;
INSERT INTO `docentes_materias` VALUES (1,1),(2,1),(3,2),(4,2),(5,3),(6,3),(7,4),(8,4),(9,5),(10,5),(11,6),(12,6),(13,7),(14,7),(15,8),(16,8),(17,9),(18,9),(19,10),(20,10);
/*!40000 ALTER TABLE `docentes_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `est_id` int NOT NULL AUTO_INCREMENT,
  `est_nombre` varchar(100) NOT NULL,
  `est_carrera` varchar(60) NOT NULL,
  `est_celular` varchar(20) NOT NULL DEFAULT '20',
  `est_correo` varchar(255) NOT NULL,
  `est_inscripcion` timestamp NOT NULL,
  PRIMARY KEY (`est_id`),
  UNIQUE KEY `est_correo` (`est_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'Estudiante 1','Ingeniería de Sistemas','3000000001','est1@correo.com','2025-08-22 02:20:49'),(2,'Estudiante 2','Ingeniería de Sistemas','3000000002','est2@correo.com','2025-08-22 02:20:49'),(3,'Estudiante 3','Ingeniería de Sistemas','3000000003','est3@correo.com','2025-08-22 02:20:49'),(4,'Estudiante 4','Ingeniería de Sistemas','3000000004','est4@correo.com','2025-08-22 02:20:49'),(5,'Estudiante 5','Ingeniería de Sistemas','3000000005','est5@correo.com','2025-08-22 02:20:49'),(6,'Estudiante 6','Ingeniería de Sistemas','3000000006','est6@correo.com','2025-08-22 02:20:49'),(7,'Estudiante 7','Ingeniería de Sistemas','3000000007','est7@correo.com','2025-08-22 02:20:49'),(8,'Estudiante 8','Ingeniería de Sistemas','3000000008','est8@correo.com','2025-08-22 02:20:49'),(9,'Estudiante 9','Ingeniería de Sistemas','3000000009','est9@correo.com','2025-08-22 02:20:49'),(10,'Estudiante 10','Ingeniería de Sistemas','3000000010','est10@correo.com','2025-08-22 02:20:49'),(11,'Estudiante 11','Ingeniería de Sistemas','3000000011','est11@correo.com','2025-08-22 02:20:49'),(12,'Estudiante 12','Ingeniería de Sistemas','3000000012','est12@correo.com','2025-08-22 02:20:49'),(13,'Estudiante 13','Ingeniería de Sistemas','3000000013','est13@correo.com','2025-08-22 02:20:49'),(14,'Estudiante 14','Ingeniería de Sistemas','3000000014','est14@correo.com','2025-08-22 02:20:49'),(15,'Estudiante 15','Ingeniería de Sistemas','3000000015','est15@correo.com','2025-08-22 02:20:49'),(16,'Estudiante 16','Ingeniería de Sistemas','3000000016','est16@correo.com','2025-08-22 02:20:49'),(17,'Estudiante 17','Ingeniería de Sistemas','3000000017','est17@correo.com','2025-08-22 02:20:49'),(18,'Estudiante 18','Ingeniería de Sistemas','3000000018','est18@correo.com','2025-08-22 02:20:49'),(19,'Estudiante 19','Ingeniería de Sistemas','3000000019','est19@correo.com','2025-08-22 02:20:49'),(20,'Estudiante 20','Ingeniería de Sistemas','3000000020','est20@correo.com','2025-08-22 02:20:49'),(21,'Estudiante 21','Ingeniería de Sistemas','3000000021','est21@correo.com','2025-08-22 02:20:49'),(22,'Estudiante 22','Ingeniería de Sistemas','3000000022','est22@correo.com','2025-08-22 02:20:49'),(23,'Estudiante 23','Ingeniería de Sistemas','3000000023','est23@correo.com','2025-08-22 02:20:49'),(24,'Estudiante 24','Ingeniería de Sistemas','3000000024','est24@correo.com','2025-08-22 02:20:49'),(25,'Estudiante 25','Ingeniería de Sistemas','3000000025','est25@correo.com','2025-08-22 02:20:49'),(26,'Estudiante 26','Ingeniería de Sistemas','3000000026','est26@correo.com','2025-08-22 02:20:49'),(27,'Estudiante 27','Ingeniería de Sistemas','3000000027','est27@correo.com','2025-08-22 02:20:49'),(28,'Estudiante 28','Ingeniería de Sistemas','3000000028','est28@correo.com','2025-08-22 02:20:49'),(29,'Estudiante 29','Ingeniería de Sistemas','3000000029','est29@correo.com','2025-08-22 02:20:49'),(30,'Estudiante 30','Ingeniería de Sistemas','3000000030','est30@correo.com','2025-08-22 02:20:49'),(31,'Estudiante 31','Ingeniería de Sistemas','3000000031','est31@correo.com','2025-08-22 02:20:49'),(32,'Estudiante 32','Ingeniería de Sistemas','3000000032','est32@correo.com','2025-08-22 02:20:49'),(33,'Estudiante 33','Ingeniería de Sistemas','3000000033','est33@correo.com','2025-08-22 02:20:49'),(34,'Estudiante 34','Ingeniería de Sistemas','3000000034','est34@correo.com','2025-08-22 02:20:49'),(35,'Estudiante 35','Ingeniería de Sistemas','3000000035','est35@correo.com','2025-08-22 02:20:49'),(36,'Estudiante 36','Ingeniería de Sistemas','3000000036','est36@correo.com','2025-08-22 02:20:49'),(37,'Estudiante 37','Ingeniería de Sistemas','3000000037','est37@correo.com','2025-08-22 02:20:49'),(38,'Estudiante 38','Ingeniería de Sistemas','3000000038','est38@correo.com','2025-08-22 02:20:49'),(39,'Estudiante 39','Ingeniería de Sistemas','3000000039','est39@correo.com','2025-08-22 02:20:49'),(40,'Estudiante 40','Ingeniería de Sistemas','3000000040','est40@correo.com','2025-08-22 02:20:49'),(41,'Estudiante 41','Ingeniería de Sistemas','3000000041','est41@correo.com','2025-08-22 02:20:49'),(42,'Estudiante 42','Ingeniería de Sistemas','3000000042','est42@correo.com','2025-08-22 02:20:49'),(43,'Estudiante 43','Ingeniería de Sistemas','3000000043','est43@correo.com','2025-08-22 02:20:49'),(44,'Estudiante 44','Ingeniería de Sistemas','3000000044','est44@correo.com','2025-08-22 02:20:49'),(45,'Estudiante 45','Ingeniería de Sistemas','3000000045','est45@correo.com','2025-08-22 02:20:49'),(46,'Estudiante 46','Ingeniería de Sistemas','3000000046','est46@correo.com','2025-08-22 02:20:49'),(47,'Estudiante 47','Ingeniería de Sistemas','3000000047','est47@correo.com','2025-08-22 02:20:49'),(48,'Estudiante 48','Ingeniería de Sistemas','3000000048','est48@correo.com','2025-08-22 02:20:49'),(49,'Estudiante 49','Ingeniería de Sistemas','3000000049','est49@correo.com','2025-08-22 02:20:49'),(50,'Estudiante 50','Ingeniería de Sistemas','3000000050','est50@correo.com','2025-08-22 02:20:49'),(51,'Estudiante 51','Ingeniería de Sistemas','3000000051','est51@correo.com','2025-08-22 02:20:49'),(52,'Estudiante 52','Ingeniería de Sistemas','3000000052','est52@correo.com','2025-08-22 02:20:49'),(53,'Estudiante 53','Ingeniería de Sistemas','3000000053','est53@correo.com','2025-08-22 02:20:49'),(54,'Estudiante 54','Ingeniería de Sistemas','3000000054','est54@correo.com','2025-08-22 02:20:49'),(55,'Estudiante 55','Ingeniería de Sistemas','3000000055','est55@correo.com','2025-08-22 02:20:49'),(56,'Estudiante 56','Ingeniería de Sistemas','3000000056','est56@correo.com','2025-08-22 02:20:49'),(57,'Estudiante 57','Ingeniería de Sistemas','3000000057','est57@correo.com','2025-08-22 02:20:49'),(58,'Estudiante 58','Ingeniería de Sistemas','3000000058','est58@correo.com','2025-08-22 02:20:49'),(59,'Estudiante 59','Ingeniería de Sistemas','3000000059','est59@correo.com','2025-08-22 02:20:49'),(60,'Estudiante 60','Ingeniería de Sistemas','3000000060','est60@correo.com','2025-08-22 02:20:49'),(61,'Estudiante 61','Ingeniería de Sistemas','3000000061','est61@correo.com','2025-08-22 02:20:49'),(62,'Estudiante 62','Ingeniería de Sistemas','3000000062','est62@correo.com','2025-08-22 02:20:49'),(63,'Estudiante 63','Ingeniería de Sistemas','3000000063','est63@correo.com','2025-08-22 02:20:49'),(64,'Estudiante 64','Ingeniería de Sistemas','3000000064','est64@correo.com','2025-08-22 02:20:49'),(65,'Estudiante 65','Ingeniería de Sistemas','3000000065','est65@correo.com','2025-08-22 02:20:49'),(66,'Estudiante 66','Ingeniería de Sistemas','3000000066','est66@correo.com','2025-08-22 02:20:49'),(67,'Estudiante 67','Ingeniería de Sistemas','3000000067','est67@correo.com','2025-08-22 02:20:49'),(68,'Estudiante 68','Ingeniería de Sistemas','3000000068','est68@correo.com','2025-08-22 02:20:49'),(69,'Estudiante 69','Ingeniería de Sistemas','3000000069','est69@correo.com','2025-08-22 02:20:49'),(70,'Estudiante 70','Ingeniería de Sistemas','3000000070','est70@correo.com','2025-08-22 02:20:49'),(71,'Estudiante 71','Ingeniería de Sistemas','3000000071','est71@correo.com','2025-08-22 02:20:49'),(72,'Estudiante 72','Ingeniería de Sistemas','3000000072','est72@correo.com','2025-08-22 02:20:49'),(73,'Estudiante 73','Ingeniería de Sistemas','3000000073','est73@correo.com','2025-08-22 02:20:49'),(74,'Estudiante 74','Ingeniería de Sistemas','3000000074','est74@correo.com','2025-08-22 02:20:49'),(75,'Estudiante 75','Ingeniería de Sistemas','3000000075','est75@correo.com','2025-08-22 02:20:49'),(76,'Estudiante 76','Ingeniería de Sistemas','3000000076','est76@correo.com','2025-08-22 02:20:49'),(77,'Estudiante 77','Ingeniería de Sistemas','3000000077','est77@correo.com','2025-08-22 02:20:49'),(78,'Estudiante 78','Ingeniería de Sistemas','3000000078','est78@correo.com','2025-08-22 02:20:49'),(79,'Estudiante 79','Ingeniería de Sistemas','3000000079','est79@correo.com','2025-08-22 02:20:49'),(80,'Estudiante 80','Ingeniería de Sistemas','3000000080','est80@correo.com','2025-08-22 02:20:49'),(81,'Estudiante 81','Ingeniería de Sistemas','3000000081','est81@correo.com','2025-08-22 02:20:49'),(82,'Estudiante 82','Ingeniería de Sistemas','3000000082','est82@correo.com','2025-08-22 02:20:49'),(83,'Estudiante 83','Ingeniería de Sistemas','3000000083','est83@correo.com','2025-08-22 02:20:49'),(84,'Estudiante 84','Ingeniería de Sistemas','3000000084','est84@correo.com','2025-08-22 02:20:49'),(85,'Estudiante 85','Ingeniería de Sistemas','3000000085','est85@correo.com','2025-08-22 02:20:49'),(86,'Estudiante 86','Ingeniería de Sistemas','3000000086','est86@correo.com','2025-08-22 02:20:49'),(87,'Estudiante 87','Ingeniería de Sistemas','3000000087','est87@correo.com','2025-08-22 02:20:49'),(88,'Estudiante 88','Ingeniería de Sistemas','3000000088','est88@correo.com','2025-08-22 02:20:49'),(89,'Estudiante 89','Ingeniería de Sistemas','3000000089','est89@correo.com','2025-08-22 02:20:49'),(90,'Estudiante 90','Ingeniería de Sistemas','3000000090','est90@correo.com','2025-08-22 02:20:49'),(91,'Estudiante 91','Ingeniería de Sistemas','3000000091','est91@correo.com','2025-08-22 02:20:49'),(92,'Estudiante 92','Ingeniería de Sistemas','3000000092','est92@correo.com','2025-08-22 02:20:49'),(93,'Estudiante 93','Ingeniería de Sistemas','3000000093','est93@correo.com','2025-08-22 02:20:49'),(94,'Estudiante 94','Ingeniería de Sistemas','3000000094','est94@correo.com','2025-08-22 02:20:49'),(95,'Estudiante 95','Ingeniería de Sistemas','3000000095','est95@correo.com','2025-08-22 02:20:49'),(96,'Estudiante 96','Ingeniería de Sistemas','3000000096','est96@correo.com','2025-08-22 02:20:49'),(97,'Estudiante 97','Ingeniería de Sistemas','3000000097','est97@correo.com','2025-08-22 02:20:49'),(98,'Estudiante 98','Ingeniería de Sistemas','3000000098','est98@correo.com','2025-08-22 02:20:49'),(99,'Estudiante 99','Ingeniería de Sistemas','3000000099','est99@correo.com','2025-08-22 02:20:49'),(100,'Estudiante 100','Ingeniería de Sistemas','3000000100','est100@correo.com','2025-08-22 02:20:49');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes_materias`
--

DROP TABLE IF EXISTS `estudiantes_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes_materias` (
  `est_id` int NOT NULL,
  `mat_id` int NOT NULL,
  PRIMARY KEY (`est_id`,`mat_id`),
  KEY `mat_id` (`mat_id`),
  CONSTRAINT `estudiantes_materias_ibfk_1` FOREIGN KEY (`est_id`) REFERENCES `estudiantes` (`est_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estudiantes_materias_ibfk_2` FOREIGN KEY (`mat_id`) REFERENCES `materias` (`mat_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes_materias`
--

LOCK TABLES `estudiantes_materias` WRITE;
/*!40000 ALTER TABLE `estudiantes_materias` DISABLE KEYS */;
INSERT INTO `estudiantes_materias` VALUES (8,1),(9,1),(10,1),(1,2),(9,2),(10,2),(1,3),(2,3),(10,3),(1,4),(2,4),(3,4),(2,5),(3,5),(4,5),(3,6),(4,6),(5,6),(4,7),(5,7),(6,7),(5,8),(6,8),(7,8),(6,9),(7,9),(8,9),(7,10),(8,10),(9,10);
/*!40000 ALTER TABLE `estudiantes_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `mat_id` int NOT NULL AUTO_INCREMENT,
  `mat_nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`mat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Matemáticas I'),(2,'Programación I'),(3,'Bases de Datos'),(4,'Redes de Computadoras'),(5,'Sistemas Operativos'),(6,'Ingeniería de Software'),(7,'Algoritmos'),(8,'Inteligencia Artificial'),(9,'Seguridad Informática'),(10,'Arquitectura de Computadores');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `nota_id` int NOT NULL AUTO_INCREMENT,
  `mat_id` int NOT NULL,
  `est_id` int NOT NULL,
  `nota` float NOT NULL,
  PRIMARY KEY (`nota_id`),
  KEY `mat_id` (`mat_id`),
  KEY `est_id` (`est_id`),
  CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`mat_id`) REFERENCES `materias` (`mat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`est_id`) REFERENCES `estudiantes` (`est_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,2,1,4.5),(2,3,1,3.8),(3,4,1,4),(4,3,2,3.5),(5,4,2,4.2),(6,5,2,4),(7,4,3,3.7),(8,5,3,4.1),(9,6,3,3.9),(10,5,4,3.6),(11,6,4,4),(12,7,4,4.5),(13,6,5,4.3),(14,7,5,3.8),(15,8,5,4.1),(16,7,6,3.9),(17,8,6,4.4),(18,9,6,4.2),(19,8,7,4),(20,9,7,3.7),(21,10,7,4.3),(22,9,8,4.1),(23,10,8,4.5),(24,1,8,3.6),(25,10,9,3.9),(26,1,9,4.2),(27,2,9,3.8),(28,1,10,4.4),(29,2,10,3.9),(30,3,10,4.1);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorias`
--

DROP TABLE IF EXISTS `tutorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorias` (
  `tut_id` int NOT NULL AUTO_INCREMENT,
  `tut_fecha_hora` timestamp NOT NULL,
  `tut_tema` varchar(100) NOT NULL,
  `mat_id` int NOT NULL,
  `est_id` int NOT NULL,
  `doc_id` int NOT NULL,
  `tut_seguimiento` text NOT NULL,
  PRIMARY KEY (`tut_id`),
  KEY `mat_id` (`mat_id`),
  KEY `est_id` (`est_id`),
  KEY `doc_id` (`doc_id`),
  CONSTRAINT `tutorias_ibfk_1` FOREIGN KEY (`mat_id`) REFERENCES `materias` (`mat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tutorias_ibfk_2` FOREIGN KEY (`est_id`) REFERENCES `estudiantes` (`est_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tutorias_ibfk_3` FOREIGN KEY (`doc_id`) REFERENCES `docentes` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorias`
--

LOCK TABLES `tutorias` WRITE;
/*!40000 ALTER TABLE `tutorias` DISABLE KEYS */;
INSERT INTO `tutorias` VALUES (1,'2025-08-22 02:24:32','Repaso de Matemáticas',1,1,1,'Se trabajaron ejercicios básicos'),(2,'2025-08-22 02:24:32','Consultas SQL',3,2,5,'Se resolvieron dudas de SELECT'),(3,'2025-08-22 02:24:32','Redes OSI',4,3,7,'Explicación de capa de transporte'),(4,'2025-08-22 02:24:32','Estructuras de datos',2,4,3,'Listas enlazadas'),(5,'2025-08-22 02:24:32','Hilos y concurrencia',5,5,9,'Introducción a multithreading'),(6,'2025-08-22 02:24:32','Casos de uso UML',6,6,11,'Diagramas de secuencia'),(7,'2025-08-22 02:24:32','Complejidad algorítmica',7,7,13,'Big-O notación'),(8,'2025-08-22 02:24:32','Redes neuronales',8,8,15,'Ejemplo de perceptrón'),(9,'2025-08-22 02:24:32','Ataques de red',9,9,17,'Práctica de pentesting básico'),(10,'2025-08-22 02:24:32','Microprocesadores',10,10,19,'Arquitectura x86'),(11,'2025-08-22 02:24:32','Repaso SQL avanzado',3,11,6,'Procedimientos almacenados'),(12,'2025-08-22 02:24:32','Routing dinámico',4,12,8,'RIP y OSPF'),(13,'2025-08-22 02:24:32','Semáforos en SO',5,13,10,'Ejemplo de exclusión mutua'),(14,'2025-08-22 02:24:32','Metodologías ágiles',6,14,12,'Scrum y Kanban'),(15,'2025-08-22 02:24:32','Búsqueda binaria',7,15,14,'Implementación en C'),(16,'2025-08-22 02:24:32','Redes convolucionales',8,16,16,'CNN básicas'),(17,'2025-08-22 02:24:32','Criptografía simétrica',9,17,18,'AES y DES'),(18,'2025-08-22 02:24:32','Pipeline CPU',10,18,20,'Ejemplo en RISC'),(19,'2025-08-22 02:24:32','Teoría de grafos',1,19,2,'Dijkstra aplicado'),(20,'2025-08-22 02:24:32','POO en Java',2,20,4,'Herencia y polimorfismo');
/*!40000 ALTER TABLE `tutorias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-26 21:27:49
