-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: equipment_checkout
-- ------------------------------------------------------
-- Server version	8.0.46-0ubuntu0.24.04.4

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
-- Dumping data for table `CATEGORY`
--

LOCK TABLES `CATEGORY` WRITE;
/*!40000 ALTER TABLE `CATEGORY` DISABLE KEYS */;
INSERT INTO `CATEGORY` VALUES (1,'Laptop','Portable computers'),(2,'Projector','Presentation equipment'),(3,'Camera','Photography equipment'),(4,'Microphone','Audio recording equipment'),(5,'Networking','Networkingdevices');
/*!40000 ALTER TABLE `CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CHECKOUT`
--

LOCK TABLES `CHECKOUT` WRITE;
/*!40000 ALTER TABLE `CHECKOUT` DISABLE KEYS */;
INSERT INTO `CHECKOUT` VALUES (1,1,1,'2024-04-01','2024-04-08',NULL,NULL),(2,2,2,'2024-04-02','2024-04-09',NULL,NULL),(3,3,3,'2024-04-03','2024-04-10',NULL,NULL),(4,4,4,'2024-04-04','2024-04-11','2024-04-10','Good'),(5,5,5,'2024-04-05','2024-04-12','2024-04-15','Good'),(6,6,6,'2024-04-16','2024-04-23','2024-04-22','Good'),(7,7,7,'2024-04-17','2024-04-24','2024-04-26','Good'),(8,8,8,'2024-04-18','2024-04-25','2024-04-24','Good'),(9,9,9,'2024-04-19','2024-04-26','2024-04-28','Good'),(10,10,10,'2024-04-20','2024-04-27','2024-04-26','Good'),(11,1,11,'2024-05-01','2024-05-08','2024-05-07','Good'),(12,2,12,'2024-05-02','2024-05-09','2024-05-08','Good'),(13,3,13,'2024-05-03','2024-05-10','2024-05-09','Good'),(14,4,14,'2024-05-04','2024-05-11','2024-05-10','Good'),(15,5,15,'2024-05-05','2024-05-12','2024-05-11','Good'),(16,1,1,'2024-05-13','2024-05-20',NULL,NULL),(17,2,2,'2024-05-14','2024-05-21','2024-05-24','Good'),(18,3,3,'2024-05-15','2024-05-22',NULL,NULL),(19,4,4,'2024-05-16','2024-05-23','2024-05-26','Good'),(20,5,5,'2024-05-17','2024-05-24','2024-05-23','Good');
/*!40000 ALTER TABLE `CHECKOUT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EQUIPMENT`
--

LOCK TABLES `EQUIPMENT` WRITE;
/*!40000 ALTER TABLE `EQUIPMENT` DISABLE KEYS */;
INSERT INTO `EQUIPMENT` VALUES (1,1,'Dell Laptop','DL1001','2024-01-15','Available'),(2,2,'Epson Projector','EP2001','2024-02-10','Available'),(3,3,'Canon Camera','CC3001','2024-03-05','Available'),(4,1,'HP Laptop','HP1004','2024-01-20','Available'),(5,1,'Lenovo Laptop','LN1005','2024-02-15','Available'),(6,2,'Sony Projector','SP2006','2024-03-10','Available'),(7,2,'BenQ Projector','BP2007','2024-03-12','Available'),(8,3,'Nikon Cammera','NC3008','2024-04-05','Available'),(9,3,'Sony Camera','SC3009','2024-04-10','Available'),(10,4,'Shure Microphone','SM4010','2024-05-01','Available'),(11,4,'Blue Yeti Microphone','BY4011','2024-05-05','Available'),(12,5,'Cisco Router','CR5012','2024-06-01','Available'),(13,5,'NetgearSwitch','NS5013','2024-06-10','Available'),(14,1,'Acer Laptop','AL1014','2024-07-01','Available'),(15,3,'GoPro Camera','Gc3015','2024-07-15','Available'),(16,1,'Samsung Laptop','SL106','2024-08-01','Available');
/*!40000 ALTER TABLE `EQUIPMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
INSERT INTO `STUDENT` VALUES (1,'John','Smith','john@school.edu','2002-05-15'),(2,'Mary','Johnson','mary@school.edu','2003-08-20'),(3,'James','Brown','james@school.edu','2001-11-10'),(4,'Sarah','Davis','sarah@school.edu','2002-03-12'),(5,'Michael','Wilson','michael@school.edu','2001-07-22'),(6,'Ashley','Taylor','ashley@school.edu','2003-01-15'),(7,'David','Anderson','david@school.edu','2002-09-10'),(8,'Jessica','Thomas','jessica@school.edu','2001-12-05'),(9,'Daniel','Moore','daniel@school.edu','2003-04-18'),(10,'Emily','Martin','emily@school.edu','2002-06-25');
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `STUDENT_PHONE`
--

LOCK TABLES `STUDENT_PHONE` WRITE;
/*!40000 ALTER TABLE `STUDENT_PHONE` DISABLE KEYS */;
INSERT INTO `STUDENT_PHONE` VALUES (1,'2025550101'),(2,'2025550102'),(3,'2025550103');
/*!40000 ALTER TABLE `STUDENT_PHONE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-19  0:04:57
