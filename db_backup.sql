-- MariaDB dump 10.17  Distrib 10.5.5-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: artUniverse
-- ------------------------------------------------------
-- Server version	10.5.5-MariaDB-1:10.5.5+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'digital'),(2,'minimalism'),(3,'technology'),(4,'background'),(5,'landscape'),(6,'vehicles'),(7,'nature'),(8,'food'),(10,'art'),(11,'design'),(12,'entertainment'),(13,'2d'),(14,'3d'),(15,'abstract'),(16,'concept'),(17,'architectural'),(18,'visualization'),(19,'data'),(20,'props'),(21,'technical'),(22,'anatomy'),(23,'wildlife'),(24,'illustration'),(25,'fantasy');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 1,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(4) DEFAULT 1,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (3,11,'Donec',5,'Lorem ipsum dolor',0,'path/to/image.png','2020-09-13 17:39:02'),(4,8,'ante.',5,'Lorem',0,'path/to/image.png','2020-09-13 17:39:02'),(5,10,'primis',9,'Lorem',0,'path/to/image.png','2020-09-13 17:39:02'),(6,22,'non',5,'Lorem ipsum dolor',0,'path/to/image.png','2020-09-13 17:39:02'),(7,21,'arcu',6,'Lorem ipsum',0,'path/to/image.png','2020-09-13 17:39:02'),(9,23,'orci.',10,'Lorem',0,'path/to/image.png','2020-09-13 17:39:02'),(11,5,'Cum',5,'Lorem',0,'path/to/image.png','2020-09-13 17:39:02'),(12,21,'elementum,',9,'Lorem ipsum',0,'path/to/image.png','2020-09-13 17:39:02'),(13,5,'odio',5,'Lorem ipsum',0,'path/to/image.png','2020-09-13 17:39:02'),(14,10,'nunc',5,'Lorem ipsum dolor',0,'path/to/image.png','2020-09-13 17:39:02'),(15,16,'et',5,'Lorem ipsum dolor',0,'path/to/image.png','2020-09-13 17:39:02'),(16,22,'vitae,',10,'Lorem ipsum dolor',0,'path/to/image.png','2020-09-13 17:39:02'),(19,17,'tortor',5,'Lorem ipsum dolor',0,'path/to/image.png','2020-09-13 17:39:03'),(20,22,'Aenean',5,'Lorem ipsum dolor',0,'path/to/image.png','2020-09-13 17:39:03'),(21,21,'Nulla',6,'Lorem ipsum dolor',0,'path/to/image.png','2020-09-13 17:39:03'),(22,9,'facilisis',8,'Lorem',0,'path/to/image.png','2020-09-13 17:39:03'),(23,12,'luctus',5,'Lorem ipsum',0,'path/to/image.png','2020-09-13 17:39:03'),(24,9,'Lorem',5,'Lorem ipsum dolor',0,'path/to/image.png','2020-09-13 17:39:03'),(26,6,'sem,',8,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:03'),(27,12,'Vivamus',7,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:03'),(28,12,'lobortis',7,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:03'),(30,21,'rhoncus.',2,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:03'),(31,9,'eu',6,'Lorem',1,'path/to/image.png','2020-09-13 17:39:03'),(32,16,'taciti',2,'Lorem',1,'path/to/image.png','2020-09-13 17:39:03'),(33,19,'Suspendisse',10,'Lorem',1,'path/to/image.png','2020-09-13 17:39:03'),(34,8,'augue.',7,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:03'),(35,25,'urna.',10,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:03'),(36,13,'et',8,'Lorem',1,'path/to/image.png','2020-09-13 17:39:03'),(37,16,'laoreet',5,'Lorem',1,'path/to/image.png','2020-09-13 17:39:03'),(38,20,'interdum',6,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:03'),(39,24,'interdum',3,'Lorem',1,'path/to/image.png','2020-09-13 17:39:03'),(40,25,'libero.',6,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:03'),(41,22,'aliquet',4,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:03'),(42,11,'molestie',1,'Lorem',1,'path/to/image.png','2020-09-13 17:39:03'),(44,5,'tellus',7,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:03'),(45,20,'neque',10,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:03'),(46,6,'Nulla',1,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:03'),(47,8,'vehicula',7,'Lorem',1,'path/to/image.png','2020-09-13 17:39:03'),(48,10,'dignissim',8,'Lorem',1,'path/to/image.png','2020-09-13 17:39:04'),(49,22,'placerat,',3,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:04'),(50,10,'Morbi',7,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(51,16,'elit',4,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(52,22,'et',2,'Lorem',1,'path/to/image.png','2020-09-13 17:39:04'),(53,22,'Morbi',1,'Lorem',1,'path/to/image.png','2020-09-13 17:39:04'),(55,17,'dictum',4,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(56,15,'accumsan',9,'Lorem',1,'path/to/image.png','2020-09-13 17:39:04'),(57,23,'a',3,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(58,19,'porttitor',3,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(59,14,'orci.',3,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:04'),(60,7,'Proin',2,'Lorem',1,'path/to/image.png','2020-09-13 17:39:04'),(62,7,'Lorem',9,'Lorem',1,'path/to/image.png','2020-09-13 17:39:04'),(63,20,'placerat.',4,'Lorem',1,'path/to/image.png','2020-09-13 17:39:04'),(64,6,'eu,',1,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(65,25,'a,',8,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:04'),(66,19,'Proin',8,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(67,18,'nec',10,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(68,25,'sit',5,'Lorem',1,'path/to/image.png','2020-09-13 17:39:04'),(69,14,'aliquet',4,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(70,20,'libero',6,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(72,20,'Cras',7,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(73,8,'vel',10,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(74,13,'Aenean',8,'Lorem',1,'path/to/image.png','2020-09-13 17:39:04'),(75,24,'Morbi',4,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:04'),(76,10,'sem',10,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:04'),(77,24,'suscipit',10,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:04'),(79,23,'Phasellus',7,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(80,13,'Mauris',6,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:04'),(81,12,'augue',1,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:05'),(82,19,'enim.',9,'Lorem',1,'path/to/image.png','2020-09-13 17:39:05'),(83,23,'semper.',1,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:05'),(84,18,'et,',8,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:05'),(85,6,'Maecenas',3,'Lorem',1,'path/to/image.png','2020-09-13 17:39:05'),(86,11,'in',4,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:05'),(87,11,'massa.',5,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:05'),(88,9,'ipsum',1,'Lorem',1,'path/to/image.png','2020-09-13 17:39:05'),(89,16,'Vivamus',6,'Lorem',1,'path/to/image.png','2020-09-13 17:39:05'),(90,12,'metus.',7,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:05'),(91,19,'nunc',6,'Lorem',1,'path/to/image.png','2020-09-13 17:39:05'),(92,6,'enim.',7,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:05'),(93,19,'purus,',6,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:05'),(94,19,'massa.',7,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:05'),(95,22,'Morbi',2,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:05'),(96,11,'adipiscing',6,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:05'),(97,7,'orci',7,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:05'),(99,9,'arcu',9,'Lorem ipsum',1,'path/to/image.png','2020-09-13 17:39:05'),(100,17,'dignissim',8,'Lorem ipsum dolor',1,'path/to/image.png','2020-09-13 17:39:05');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_category`
--

DROP TABLE IF EXISTS `image_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `image_id` (`image_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `image_category_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE,
  CONSTRAINT `image_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_category`
--

LOCK TABLES `image_category` WRITE;
/*!40000 ALTER TABLE `image_category` DISABLE KEYS */;
INSERT INTO `image_category` VALUES (1,56,22),(4,75,17),(5,47,21),(6,85,11),(7,36,3),(8,97,3),(10,12,11),(11,70,19),(12,35,10),(13,64,5),(14,79,10),(15,11,11),(16,73,3),(19,52,6),(20,96,1),(21,56,3),(22,16,4),(23,33,4),(26,27,16),(27,82,7),(29,31,19),(30,37,17),(32,53,20),(33,44,5),(34,96,2),(36,87,19),(37,7,18),(38,66,5),(40,51,6),(42,93,8),(43,94,11),(44,95,20),(45,93,16),(46,37,18),(47,95,13),(48,69,24),(49,85,4),(54,64,19),(56,90,16),(58,93,17),(59,73,24),(60,33,1),(61,13,12),(62,53,2),(63,74,10),(64,20,15),(65,85,25),(66,65,19),(67,34,2),(68,95,22),(70,11,24),(71,70,15),(72,52,8),(73,44,3),(74,19,17),(75,37,20),(76,83,15),(77,15,8),(78,37,15),(80,22,17),(81,20,15),(82,34,12),(83,21,16),(84,36,24),(85,47,13),(86,83,6),(87,80,12),(89,45,8),(92,39,13),(93,94,8),(96,67,12),(97,86,1),(98,87,4),(100,44,18);
/*!40000 ALTER TABLE `image_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (2,5,'2020-09-13 17:39:10'),(3,15,'2020-09-13 17:39:10'),(4,12,'2020-09-13 17:39:10'),(5,7,'2020-09-13 17:39:10'),(6,13,'2020-09-13 17:39:10'),(7,17,'2020-09-13 17:39:10'),(8,25,'2020-09-13 17:39:10'),(9,22,'2020-09-13 17:39:10'),(10,16,'2020-09-13 17:39:10');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_image`
--

DROP TABLE IF EXISTS `order_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `image_id` (`image_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_image_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_image_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_image`
--

LOCK TABLES `order_image` WRITE;
/*!40000 ALTER TABLE `order_image` DISABLE KEYS */;
INSERT INTO `order_image` VALUES (2,2,4),(3,3,3),(6,6,5),(7,7,4),(8,8,3);
/*!40000 ALTER TABLE `order_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bynd`@`localhost`*/ /*!50003 TRIGGER price_increase
AFTER INSERT ON order_image
FOR EACH ROW
UPDATE image
SET price = price +1
WHERE price < 10 */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `preference`
--

DROP TABLE IF EXISTS `preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preference` (
  `user_id` int(11) NOT NULL,
  `dark_mode` tinyint(4) DEFAULT 0,
  `grid_view` tinyint(4) DEFAULT 0,
  KEY `user_id` (`user_id`),
  CONSTRAINT `preference_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preference`
--

LOCK TABLES `preference` WRITE;
/*!40000 ALTER TABLE `preference` DISABLE KEYS */;
INSERT INTO `preference` VALUES (5,0,1),(6,1,1),(7,1,0),(8,1,0),(9,0,0),(10,0,0),(11,0,0),(12,1,0),(13,1,1),(14,0,1),(15,1,0),(16,0,1),(17,1,0),(18,0,0),(19,0,1),(20,0,1),(21,0,1),(22,1,0),(23,1,1),(24,0,1),(25,1,0);
/*!40000 ALTER TABLE `preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvv` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'Nicole','faucibus@utaliquam.edu','QBO91YWT5AW','4916653557317','569'),(6,'Palmer','Proin@Proin.org','FPB99XTY5AV','4342 9476 0916 9009','174'),(7,'Tashya','nascetur.ridiculus@ipsum.co.uk','CGJ58QMB3OL','4716116907376','198'),(8,'Ronan','Aliquam@dapibus.net','FLI33IGF4GO','4916 2910 1459 2075','979'),(9,'Dustin','risus@arcuCurabiturut.edu','SIH08LYN8VE','4916176469149','798'),(10,'Orli','quam.vel@adipiscinglacusUt.com','RNK42CTG2CO','4556168112321','370'),(11,'Kareem','Cum.sociis@Praesentinterdumligula.org','LQF01ZEF6IH','4929789121205','899'),(12,'Cassidy','velit.Cras.lorem@ultricesposuerecubilia.ca','KHN24WBK8ZE','4556 2626 7287 3995','277'),(13,'Emerson','eros.Proin@Aenean.net','FCD16OPZ5GA','4485 3825 5794 8765','128'),(14,'Kaden','vestibulum@pede.net','BBE42OAC7PJ','4532895521373','802'),(15,'Quamar','vestibulum.Mauris.magna@Suspendissenonleo.co.uk','HBR80SXS5LH','4944863263203','773'),(16,'Mara','vel@eratEtiam.co.uk','YYG17HCZ2UM','4539 4156 3417 9149','175'),(17,'Uma','Etiam@interdumCurabitur.com','TKW55DJS6OP','4532086875455','343'),(18,'Aphrodite','vulputate.lacus.Cras@ametconsectetuer.net','FQX88JWP7ZZ','4843194925755','964'),(19,'Octavia','Proin.velit.Sed@elementumdui.com','XUY72HVQ8TA','4929847804024','444'),(20,'Macon','Curabitur.egestas@interdumCurabitur.ca','PTB15RGC4QL','4716 3810 1275 5584','545'),(21,'Maris','vitae.diam@tinciduntpedeac.net','RII72QPA4DD','4929455678587','665'),(22,'Avye','sagittis.lobortis.mauris@lectus.com','WBL54HKV9EI','4916229243426','638'),(23,'Dylan','risus.Nunc@semegestas.org','ZPX83ESI3AF','4929506238324','740'),(24,'Brendan','non.massa.non@egestas.co.uk','GZH66WYL7EL','4916 2788 9209 8507','285'),(25,'Reese','enim.nec@metusInnec.org','NGO46ZBN9NH','4024 0071 4760 9514','505');
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

-- Dump completed on 2020-09-13 17:53:52
