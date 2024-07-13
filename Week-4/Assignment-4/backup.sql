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

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `content` text,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'奇妙的冒險','在森林中發現了一個神秘的寶箱。',1),(2,'神秘的湖泊','湖中出現了一隻巨大的怪物。',3),(3,'遺失的寶藏','村民們展開了一場尋寶大冒險。',3),(4,'失落的城市','探險隊發現了一個古老的文明。',7),(5,'穿越時空的信件','一封信改變了一個人的命運。',5),(6,'魔法學校的秘密','學生們發現了校長的秘密。',7),(7,'古老的咒語','一本書中記載了強大的咒語。',6),(8,'神奇的動物','一隻會說話的貓帶來了奇蹟。',4),(9,'森林裡的精靈','精靈們保護著一片神秘的森林。',2),(10,'飛行的夢想','一個孩子夢想成為飛行員。',2),(11,'海底探險','潛水員發現了沉船中的寶藏。',1),(12,'勇者的傳說','一位勇者拯救了被困的公主。',9),(13,'神秘的面具','戴上面具後，世界變得不同。',10),(14,'失落的世界','探險家們進入了一個未知的世界。',2),(15,'永恆的愛','一對戀人跨越生死的愛情故事。',3),(16,'魔法森林','森林中的植物擁有神奇的力量。',6),(17,'隱藏的秘密','一個古老家族的秘密被揭露。',7),(18,'時光機器','科學家發明了穿越時間的機器。',8),(19,'夢境之旅','主角在夢中進行了一次奇妙的旅行。',4),(20,'奇幻之旅','一個普通人進入了奇幻的世界。',4),(21,'神秘的預言','預言書中記載了未來的災難。',2),(22,'古代英雄','一位英雄的事跡流傳千古。',1),(23,'魔法戒指','戒指擁有強大的魔法力量。',3),(24,'神秘的花園','花園裡開滿了神秘的花朵。',6),(25,'失落的王國','探險隊找到了失落的王國。',5),(26,'奇異的水晶','水晶擁有預知未來的能力。',2),(27,'穿越未來','主角穿越到了未來世界。',9),(28,'神奇的旅程','一趟旅行改變了主角的一生。',10),(29,'遙遠的星球','科學家發現了一個宜居的星球。',9),(30,'不可思議的發現','考古學家發現了史前文明的遺跡。',8);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-13 13:24:45
