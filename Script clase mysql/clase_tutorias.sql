-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clase
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

-- Dump completed on 2025-08-21 21:25:04
