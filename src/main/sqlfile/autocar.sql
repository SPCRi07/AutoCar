-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: autocar
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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `BookingID` int NOT NULL,
  `SubserviceName` varchar(50) DEFAULT '',
  `DateAndTIme` varchar(50) DEFAULT '',
  `CarType` varchar(20) DEFAULT NULL,
  `CarModel` varchar(30) DEFAULT NULL,
  `Paymentstatus` varchar(20) DEFAULT 'Booked',
  `ClientContact` varchar(11) DEFAULT '0',
  `employeeid` varchar(50) DEFAULT '0',
  `bookingresponse` varchar(200) DEFAULT 'Done',
  `bookingstatus` varchar(100) DEFAULT 'Booked',
  PRIMARY KEY (`BookingID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'Waterless Wash','10.00AM and 29/3/2020','Hatchback','Honda Amaze','Success','7405187718','1','Done','Booked'),(2,'Hand Wash','02.00PM and 29/3/2020','Hatchback','Honda Amaze','Success','7405187718','1','Done','Completed'),(3,'Hand Wash','06.00PM and 31/3/2020','Hatchback','Maruti Suzuki S-Presso','Success','7405187718','1','Done','Completed'),(4,'Brushless Wash','06.00PM and 30/3/2020','Coupe','Mercedes-Benz C-Coupe','Success','7405187718','1','Done','Cancelled'),(5,'Interior Clean up','09.00AM and 23/4/2020','SUV','Tata Harrier','Success','7405187718','1','Done','Arriving in 30 min.'),(18,'Basic Service','08.00AM and 24/4/2020','Sedan','Audi A6','Success','8140530012','1','Done','Booked'),(1199854692,NULL,'12/17/2021','sedan',NULL,NULL,'5777577','1',NULL,NULL),(-1242307327,NULL,'12/17/2021','sedan',NULL,NULL,'5777577','1',NULL,NULL),(-1101905463,'10H crystal shield','12/16/2021','sedan','verna','Payment by cash only','6767675767','1','Done','Booked'),(1135618769,'10H crystal shield','12/16/2021','sedan','verna','Payment by cash only','6767675767','1','Done','Booked'),(-1091193957,'Aegis film','12/16/2021','sedan','verna','Payment by cash only','8678868668','1','Done','Booked'),(1979358843,'Aegis film','12/16/2021','sedan','verna','Payment by cash only','8678868668','1','Done','Booked'),(-474344408,'Aegis film','12/16/2021','sedan','verna','Payment by cash only','8678868668','1','Done','Booked'),(226150620,'Hand Wash','12/16/2021','sedan','ertwee','Payment by cash only','655','1','Done','Booked'),(5475451,'Hand Wash','12/16/2021','sedan','asff','Success','242442144','1','Done','Booked'),(64164026,'Hand Wash','12/17/2021','sedan','ffasf','Success','4567657','1','Done','Booked');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id` int NOT NULL,
  `cartype` varchar(255) DEFAULT NULL,
  `carname` varchar(255) DEFAULT NULL,
  `carimage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'sedan','Verna','pics/sedan.jpeg'),(2,'suv','Fortuner','pics/suv.jpg'),(3,'coupe','Mercedes AMG','pics/coupe.jpg'),(4,'mpv','Kia Carnival','pics/mpv.jpg'),(5,'hatchback','Hyundai i20','pics/hatchback.jpg');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartype`
--

DROP TABLE IF EXISTS `cartype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartype` (
  `CarTypeID` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SubServiceID` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subservicename` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hatchback` int NOT NULL,
  `sedan` int NOT NULL,
  `suv` int NOT NULL,
  `coupe` int NOT NULL,
  `mpv` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartype`
--

LOCK TABLES `cartype` WRITE;
/*!40000 ALTER TABLE `cartype` DISABLE KEYS */;
INSERT INTO `cartype` VALUES ('p1','w1','Hand Wash',200,280,350,400,500),('p10','cc3','9H crystal shield',12000,12500,1300,14000,1500),('p11','cc4','10H crystal shield',18000,19000,20000,21000,22000),('p12','cc6','Aegis film',35000,38000,42000,45000,50000),('p13','cc5','Teflon coating',13500,14500,16500,17000,17500),('p14','sr1','Basic Service',1999,2999,4999,7999,5999),('p15','sr2','Standard Service',2399,3999,5999,10999,8999),('p16','sr3','Premium Service',2999,4999,6999,14999,10999),('p17','sr4','Replace Brake pad',700,900,1000,2500,2000),('p18','sr5','AC Check',350,500,799,1000,899),('p19','sr6','Clutch Check',500,700,900,2000,1500),('p2','w2','Waterless Wash',350,400,600,650,750),('p20','sr7','Battery Charging',300,400,500,900,700),('p21','sr8','Wheel Alignment',900,1000,1200,1800,2500),('p22','sr9','Tube-Less Tyre Replacement',1500,2000,6000,5500,3000),('p23','sr10','Engine Oil Change',1500,1900,5000,9000,7000),('p24','cc7','Rust-Oleum Painting',24999,26999,32999,33999,35999),('p3','w3','Rinseless Wash',250,300,350,400,450),('p4','w4','Brushless Wash',200,300,400,500,600),('p5','s1','Interior Clean up',1000,1200,1300,1400,1500),('p6','s2','Exterior Clean up',100,1200,1300,1400,1500),('p7','s3','In and out combo',3000,3500,4000,4500,5000),('p8','cc1','Normal Wrapping',5000,6000,7000,7000,8000),('p9','cc2','Vinyl Wrapping',6000,8000,9000,10000,12000);
/*!40000 ALTER TABLE `cartype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ClientID` int NOT NULL,
  `Contactnumber` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT ' ',
  `Emailaddress` varchar(50) DEFAULT ' ',
  `Address1` varchar(200) DEFAULT ' ',
  `Landmark` varchar(100) DEFAULT ' ',
  `State` varchar(100) DEFAULT ' ',
  `City` varchar(100) DEFAULT ' ',
  `password` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'7405187718','Thakkar Het','thakkarhet4@gmail.com','Adhyashakti','Pij road','Gujarat','Nadiad',NULL),(2,'8140530012','Jagad Disha','dishajagad1808@gmail.com','Vihar society','VKV Road','Gujarat','Ahmedabad',NULL),(3,'7990071489','Patel Ayush','payush281999@gmail.com','Dev prem','Vaniyavad','Gujarat','Nadiad',NULL),(4,'7778014791','Solanki Parth','solankiparth.cr7@gmail.com','Valvadu faliyu','Dakor road','Gujarat','Rajkot',NULL),(6,'9104435357','Thakkar Zeel','thakkarzeel05@gmail.com','Adhyashakti','Pij road','Gujarat','Nadiad',NULL),(7,'9998007401',' ',' ',' ',' ','Gujarat','Nadiad',NULL),(1,'7778014701','SOLANKI','ABC','ABC','ABC','ABC','ABC','ABC'),(-1762718317,'777969','abc','52234','acbcb','dgds','asf','asffasf','sdffd'),(-1266354038,'777969','abc','52234','acbcb','dgds','asf','asffasf','sdffd');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo`
--

DROP TABLE IF EXISTS `demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo` (
  `iddemo` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddemo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo`
--

LOCK TABLES `demo` WRITE;
/*!40000 ALTER TABLE `demo` DISABLE KEYS */;
INSERT INTO `demo` VALUES (12,'parth');
/*!40000 ALTER TABLE `demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedbackID` int NOT NULL,
  `ClientID` varchar(100) NOT NULL,
  `Contactnumber` varchar(13) NOT NULL,
  `Rate` varchar(50) NOT NULL,
  `FeedbackDetails` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (-1048609662,'1','aahg','Not Good','dfghhgr','asfsfa');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'autocar'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15 17:10:16
