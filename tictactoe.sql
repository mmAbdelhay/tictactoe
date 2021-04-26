CREATE DATABASE  IF NOT EXISTS `tictactoe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `tictactoe`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: tictactoe
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `player1_name` varchar(45) DEFAULT NULL,
  `player2_name` varchar(45) DEFAULT NULL,
  `winner` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE KEY `game_id_UNIQUE` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'islam','abdelhay','O'),(3,'shrook','marwa','X'),(4,'suzan','ali','O'),(5,'soha',NULL,NULL),(6,'soha',NULL,NULL),(7,'soha',NULL,NULL),(8,'soha',NULL,NULL),(9,'soha',NULL,NULL),(10,'soha',NULL,NULL),(11,'suzy',NULL,NULL),(12,'suzy',NULL,NULL),(13,'suzy',NULL,NULL),(14,'suzy',NULL,NULL),(15,'suzy',NULL,NULL),(16,NULL,'marwaaaa',NULL),(17,'suzy',NULL,NULL),(18,'suzy',NULL,NULL),(19,'suzy','marwaaaa',NULL),(20,'suzy','marwaaaa',NULL),(21,'suzy','marwaaaa',NULL),(22,'suzy','marwaaaa',NULL),(23,'suzy','marwaaaa',NULL),(24,'suzy','marwaaaa',NULL),(25,'suzy','marwaaaa',NULL),(26,'suzy','marwaaaa',NULL),(27,'suzy','marwaaaa',NULL),(28,'suzy','marwaaaa',NULL),(29,'suzy','marwaaaa',NULL),(30,'suzy','marwaaaa',NULL),(31,'suzy','marwaaaa',NULL),(32,'suzy','marwaaaa',NULL),(33,'suzy','marwaaaa',NULL),(34,'suzy','marwaaaa',NULL),(35,'suzy','marwaaaa',NULL),(36,'suzy','marwaaaa',NULL),(37,'suzy','marwaaaa',NULL),(38,'suzy','marwaaaa',NULL),(39,'suzy','marwaaaa',NULL),(40,'suzy','marwaaaa',NULL),(41,'suzy','marwaaaa',NULL),(42,'suzy','marwaaaa',NULL),(43,'abdelhay','Computer',NULL),(44,'abdelhay','Computer',NULL),(45,'abdelhay','islam',NULL),(46,'abdelhay','islam',NULL),(47,'abdelhay','Computer',NULL),(48,'abdelhay','marwa',NULL),(49,'abdelhay','marwa',NULL),(50,'abdelhay','shrook',NULL),(51,'abdelhay','shrook',NULL),(52,'shrook','marwa',NULL),(53,'null','Computer',NULL),(54,'null','Computer',NULL),(55,'samirsamir','Computer',NULL),(56,'null','Computer',NULL),(57,'samirsamir','Computer',NULL),(58,'islam','abdelhay',NULL),(59,'abdelhay','Computer',NULL),(60,'abdelhay','Computer',NULL),(61,'abdelhay','Computer',NULL),(62,'abdelhay','Computer',NULL),(63,'abdelhay','Computer',NULL),(64,'islam','abdelhay',NULL),(65,'abdelhay','islam',NULL),(66,'shrook','marwa',NULL),(67,'karemarafa','youssefshaban',NULL),(68,'marwa','shrook',NULL),(69,'muhammad abdelhay','Computer',NULL),(70,'muhammad abdelhay','islam',NULL);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steps`
--

DROP TABLE IF EXISTS `steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `steps` (
  `steps_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `player_name` varchar(45) DEFAULT NULL,
  `player_ch` varchar(45) DEFAULT NULL,
  `player_steps` varchar(5) DEFAULT NULL,
  `first_player` tinyint(4) NOT NULL,
  PRIMARY KEY (`steps_id`),
  UNIQUE KEY `steps_id_UNIQUE` (`steps_id`),
  KEY `game_id_idx` (`game_id`),
  CONSTRAINT `game_id` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steps`
--

LOCK TABLES `steps` WRITE;
/*!40000 ALTER TABLE `steps` DISABLE KEYS */;
INSERT INTO `steps` VALUES (1,1,'shrook','x','1357',1),(2,1,'sara','o','2468',2),(3,NULL,'shrook','x','13579',1),(4,NULL,'shrook','x','13579',1),(6,20,'suzy','x','486',1),(7,20,'marwaaaa','o','123',1),(8,21,'suzy','x','486',1),(9,21,'marwaaaa','o','123',2),(10,22,'suzy','x','486',1),(11,22,'marwaaaa','o','123',2),(12,23,'suzy','x','486',1),(13,23,'marwaaaa','o','123',2),(14,24,'suzy','x','486',1),(15,24,'marwaaaa','o','123',2),(16,25,'suzy','x','486',1),(17,25,'marwaaaa','o','123',2),(18,26,'suzy','x','486',1),(19,26,'marwaaaa','o','123',2),(20,27,'suzy','x','486',1),(21,27,'marwaaaa','o','123',2),(22,28,'suzy','x','486',1),(23,28,'marwaaaa','o','123',2),(24,29,'suzy','x','486',1),(25,29,'marwaaaa','o','123',2),(26,30,'suzy','x','486',1),(27,30,'marwaaaa','o','123',2),(28,31,'suzy','x','486',1),(29,31,'marwaaaa','o','123',2),(30,32,'suzy','x','486',1),(31,32,'marwaaaa','o','123',2),(32,33,'suzy','x','486',1),(33,33,'marwaaaa','o','123',2),(34,34,'suzy','x','486',1),(35,34,'marwaaaa','o','123',2),(36,35,'suzy','x','486',1),(37,35,'marwaaaa','o','123',2),(38,36,'suzy','x','486',1),(39,36,'marwaaaa','o','123',2),(40,37,'suzy','x','486',1),(41,37,'marwaaaa','o','123',2),(42,38,'suzy','o','945',1),(43,38,'marwaaaa','x','1732',2),(44,39,'Rana','o','945',2),(45,39,'marwaaaa','x','1732',1),(46,40,'Rana','o','945',2),(47,40,'marwaaaa','x','1732',1),(48,41,'Rana','o','1267',2),(49,41,'marwaaaa','x','34589',1),(50,42,'Rana','o','936',2),(51,42,'marwaaaa','x','187',1),(52,43,'abdelhay','X','456',1),(53,43,'Computer','O','38',2),(54,44,'abdelhay','X','753',1),(55,44,'Computer','O','42',2),(56,45,'abdelhay','X','7 8 9',1),(57,45,'islam','O','4 5',2),(58,46,'abdelhay','X','7 8 9',1),(59,46,'islam','O','4 5',2),(60,47,'abdelhay','X','258',1),(61,47,'Computer','O','93',2),(62,48,'abdelhay','O','7 4 1',1),(63,48,'marwa','X','9 6',2),(64,49,'abdelhay','O','7 4 1',1),(65,49,'marwa','X','9 6',2),(66,50,'abdelhay','X','456',1),(67,50,'shrook','O','21',2),(68,51,'abdelhay','X','456',1),(69,51,'shrook','O','21',2),(70,52,'shrook','X','753',1),(71,52,'marwa','O','89',2),(72,53,'abdelhay','X','45839',1),(73,53,'Computer','O','1627',2),(74,54,'aliali','X','54279',1),(75,54,'Computer','O','1683',2),(76,55,'samirsamir','X','4217',1),(77,55,'Computer','O','593',2),(78,56,'samirsamir','O','532',1),(79,56,'Computer','X','174',2),(80,57,'samirsamir','X','742',1),(81,57,'Computer','O','519',2),(82,58,'islam','O','712',1),(83,58,'abdelhay','X','546',2),(84,59,'abdelhay','X','4738',1),(85,59,'Computer','O','1259',2),(86,60,'abdelhay','X','4238',1),(87,60,'Computer','O','6951',2),(88,61,'abdelhay','X','456',1),(89,61,'Computer','O','12',2),(90,62,'abdelhay','X','75862',1),(91,62,'Computer','O','1439',2),(92,63,'abdelhay','X','78163',1),(93,63,'Computer','O','5942',2),(94,65,'abdelhay','O','4 1 7',1),(95,65,'islam','X','5 2',2),(96,66,'shrook','X','546',1),(97,66,'marwa','O','78',2),(98,67,'karemarafa','O','753',1),(99,67,'youssefshaban','X','89',2),(100,68,'marwa','X','589',1),(101,68,'shrook','O','321',2),(102,69,'muhammad abdelhay','X','78163',1),(103,69,'Computer','O','5942',2),(104,70,'muhammad abdelhay','X','7541',1),(105,70,'islam','O','692',2);
/*!40000 ALTER TABLE `steps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-24 13:34:28
