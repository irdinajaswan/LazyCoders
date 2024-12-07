-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: ticketing_system
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `journeys`
--

DROP TABLE IF EXISTS `journeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journeys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `journey_date` datetime NOT NULL,
  `destination` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journeys`
--

LOCK TABLES `journeys` WRITE;
/*!40000 ALTER TABLE `journeys` DISABLE KEYS */;
INSERT INTO `journeys` VALUES (1,'2024-12-25 15:30:00','Seoul','010-1234-5678','2024-12-07 07:24:17','2024-12-07 07:24:17'),(2,'2024-12-31 10:00:00','Busan','010-9876-5432','2024-12-07 07:24:17','2024-12-07 07:24:17'),(3,'2024-12-25 15:30:00','Seoul','010-1234-5678','2024-12-07 07:27:57','2024-12-07 07:27:57'),(4,'2024-12-31 10:00:00','Busan','010-9876-5432','2024-12-07 07:27:57','2024-12-07 07:27:57'),(5,'2024-12-25 15:30:00','Seoul','010-1234-5678','2024-12-07 07:28:33','2024-12-07 07:28:33'),(6,'2024-12-31 10:00:00','Busan','010-9876-5432','2024-12-07 07:28:33','2024-12-07 07:28:33'),(7,'2024-12-25 15:30:00','Seoul','010-1234-5678','2024-12-07 07:31:09','2024-12-07 07:31:09'),(8,'2024-12-31 10:00:00','Busan','010-9876-5432','2024-12-07 07:31:09','2024-12-07 07:31:09');
/*!40000 ALTER TABLE `journeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploaded_files`
--

DROP TABLE IF EXISTS `uploaded_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploaded_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `upload_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `uploaded_files_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploaded_files`
--

LOCK TABLES `uploaded_files` WRITE;
/*!40000 ALTER TABLE `uploaded_files` DISABLE KEYS */;
INSERT INTO `uploaded_files` VALUES (5,'data_2024_12_01.xlsx','2024-12-07 07:28:33',1),(6,'data_2024_12_02.xlsx','2024-12-07 07:28:33',1),(7,'data_2024_12_01.xlsx','2024-12-07 07:31:09',1),(8,'data_2024_12_02.xlsx','2024-12-07 07:31:09',1);
/*!40000 ALTER TABLE `uploaded_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Doe','john@example.com','2024-12-07 07:28:33','2024-12-07 07:28:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ticketing_system'
--

--
-- Dumping routines for database 'ticketing_system'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-07 16:35:28
