-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'shane123@gmail.com','$2a$10$LHiLxA/p5eSsQOh/19CJ0.xnhZhI6dR/ZBgKLHWbnjvn65yVxqra6'),(2,'amy1@gmail.com','$2a$10$zB1wH75mrS97cjL85JXXhO2BPypXkpl/G1SBCEqYpWnFCTrwZbGzK'),(3,'nick@gmail.com','$2a$10$gWUNxdJgJrGwzGKxsYOXz.69NWEW0JNghArVJwa7WsQTcwcGRLVxG'),(4,'gimy808@gmail.com','$2a$10$Y7lOy1.9buZZfgbIHo/YaeequkGRYPl5FzWUtwjyGT2HLst0S5MnK'),(5,'addy@gmail.com','$2a$10$jdsmwc39hEx4t45CCFhKEe8rq8Yu2qxpf9oRuVso2HJbAU9a/.9lW'),(6,'wang@gmail.com','$2a$10$W9Ffo7WGtQQt6O9KHg2M9eUnqRUSrG/s7VvCc2E7u5oHDFnCmwm/S'),(7,'ariel@gmail.com','$2a$10$vhgTK/YmGntPikfa3rISzuELOQlOyb0bT6ZjdCkR9.JbEUMC7WG8W'),(8,'liu@gmail.com','$2a$10$PI4R3qPvXWB5WKbRihpecumsiz5W2ie2wtgT45KNZe/5YYUmYiVXe'),(9,'lin@gmail.com','$2a$10$nNXwESvkoRbeFD8XOkkCKeQ5Mvk6L70SGVRNh3Eooijwv.RJEA/Oa'),(10,'tang@gmail.com','$2a$10$Fncc12I.57qIvr4MRrLZd.xWDbCdeBwLOiH5o8MttJCyaDfW6O5.G');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-13 13:23:55
