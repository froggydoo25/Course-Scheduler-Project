-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: course_scheduler
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `building_id` int NOT NULL AUTO_INCREMENT,
  `building_name1` varchar(255) DEFAULT NULL,
  `building_name2` varchar(255) DEFAULT NULL,
  `travel_time` int DEFAULT NULL,
  PRIMARY KEY (`building_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'Robinson','Bunce',10),(2,'Robinson','Enterprise Center',20),(3,'James','Bunce',15),(4,'James','Enterprise Center',25),(5,'Bunce','Enterprise Center',15),(6,'Wilson','Bunce',10),(7,'Wilson','Enterprise Center',25);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_title` varchar(255) DEFAULT NULL,
  `course_credit_student` varchar(45) DEFAULT NULL,
  `course_subject_code` varchar(5) DEFAULT NULL,
  `course_number` varchar(5) DEFAULT NULL,
  `course_abbreviation` varchar(10) DEFAULT NULL,
  `course_level` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'COMP SCI LEARNING COMMUNITY','1','CS','00100','LiBBY','UG'),(2,'COMPUTER SCIENCE PRINCIPLES','3','CS','01101','CS_PR','UG'),(3,'INTRO TO PROGRAMMING','3','CS','01102','IP','UG'),(4,'INTRO SCIENTIFIC PROGRAMNG','3','CS','01104','ISP','UG'),(5,'WEB LITERACY','3','CS','01105','WebLit','UG'),(6,'COMPUTING ENVIRONMENTS','3','CS','01110','CE','UG'),(7,'INTRO COMPUTER GAME MODELING','3','CS','01190','InGameMod','UG'),(8,'COMPUTER LAB TECHNQ','3','CS','01205','CLT','UG'),(9,'INTRO COMP NTWRKS/DATA COMM','3','CS','01210','InNets','UG'),(10,'PRINC OF INFORMATION SECURITY','3','CS','01211','PrInfoSec','UG'),(11,'SPECIAL TOPICS: COMPUTER SCI','0.5','CS','01295','SP:','UG'),(12,'PRIN DIGIT COMP DES','3','CS','01301','PDC','UG'),(13,'TOPICS IN COMPUTER SCIENCE','1','CS','01395','TP:','UG'),(14,'ESSENTIALS OF COMPUTER SCIENCE','3','CS','01501','aEssCS','G'),(15,'BIOINFO - ADV COMP ASPECTS','3','CS','01541','aBioInf','G'),(16,'DATA MINING I','3','CS','02505','aDM-I','G'),(17,'DATA WAREHOUSING','3','CS','02520','aDataWare','G'),(18,'DES & IMP OPER SYS','3','CS','02560','aOS','G'),(19,'DATA MINING II','3','CS','02605','aDM-II','G'),(20,'DATA QUALITY & WEB TEXT MINING','3','CS','03505','aDataQual','G'),(21,'COMPUTER SCI & PROGM','4','CS','04103','CSnP','UG'),(22,'INTRO PROGRAM USING ROBOTS','3','CS','04110','IPwRobots','UG'),(23,'INTRO OBJ-ORIENT PRGRMMNG','4','CS','04113','IOOP','UG'),(24,'OBJ-ORIENT PRGRM/DATA ABSTR','3','CS','04114','OOPDA','UG'),(25,'CREATING ANDROID APPLICATIONS','3','CS','04171','crAndrApp','UG'),(26,'ADV PROGRAMMING WORKSHOP','3','CS','04210','APW','UG'),(27,'DATA STRUCT/ALGORIM','4','CS','04222','DSA','UG'),(28,'PRINCIPLES OF DATA STRUCTURES','3','CS','04225','PDS','UG'),(29,'BIOINFORMATICS - COMP ASPECTS','3','CS','04301','BioInf','UG'),(30,'WEB PROGRAMMING','3','CS','04305','WebProg','UG'),(31,'PROGRAMMING LANGUAGES','3','CS','04315','PL','UG'),(32,'BLOCKCHAIN PROGRAMMING','3','CS','04350','BlkChainPr','UG'),(33,'COMPUTER GRAPHICS','3','CS','04360','CompGraph','UG'),(34,'DIGITAL COMPUTER DES','0','CS','04370','DigCompDes','UG'),(35,'ADVANCED ANDROID PROGRAMMING','3','CS','04372','AdvAndrPr','UG'),(36,'ADV WINDOWS MOBILE APP PROGRAM','3','CS','04374','AdvWinPr','UG'),(37,'ADVANCED IOS APP PROGRAMMING','3','CS','04376','AdviOSPr','UG'),(38,'OBJECT ORIENTED DESIGN','3','CS','04380','OOD','UG'),(39,'OPERATING SYSTEMS','3','CS','04390','OS','UG'),(40,'CONCURRENT PROGRAMMING','3','CS','04391','ConcurPr','UG'),(41,'SYST PROG & OPERT SYST INTERNA','3','CS','04392','SysPrOS','UG'),(42,'DISTRIBUTED SYSTEMS','3','CS','04394','DistSys','UG'),(43,'COMP SCI-SENIOR PROJ','3','CS','04400','SP:','UG'),(44,'COMPILER DESIGN','3','CS','04401','CompilDes','UG'),(45,'TOPICS IN COMP ARCH','0','CS','04404','TopCompArc','UG'),(46,'COMPILER THEORY','3','CS','04410','CompilTheo','UG'),(47,'DATABASE SYS:THEORY & PROGM','3','CS','04430','DB','UG'),(48,'DATA WAREHOUSING','3','CS','04440','DataWare','UG'),(49,'TOPICS IN MOBILE PROGRAMMING','3','CS','04471','TopMobPr','UG'),(50,'ADVANCED WEB PROGRAMMING','3','CS','04505','aWebProg','G'),(51,'SOFTWARE ENGINEERING','3','CS','04510','aSE','G'),(52,'ADV DATABASE SYS:THEORY/PRO','3','CS','04530','aDB','G'),(53,'PROG LANG:THEORY/IMP','3','CS','04548','aPL','G'),(54,'DESGN/IMPLEMENT OPER SYSTEMS','3','CS','04560','aDesOS','G'),(55,'CONCURRENT PRGM THEORY&PRACTIC','3','CS','04563','aConcPr','G'),(56,'COMPILER DESIGN THEORY','3','CS','04564','aCompilThe','G'),(57,'SYSTEM PROGRAMMING','3','CS','04565','aSysPr','G'),(58,'ADVANCED OBJ ORIENTED DESGN','3','CS','04570','aOOD','G'),(59,'ADV TOPICS MOBILE PROGRAMMING','3','CS','04571','aTopMobPr','G'),(60,'COMPUTER ORGANIZATION','3','CS','06205','CompOrg','UG'),(61,'PRIN DIGITAL COMPUTR','3','CS','06310','PrinDigCom','UG'),(62,'DIGITAL COMPUTER LAB','1','CS','06311','DigCompLab','UG'),(63,'DIGIT DESIGN & LAB','4','CS','06370','DigDesLab','UG'),(64,'COMPUTER ARCH','3','CS','06380','CompArch','UG'),(65,'INTRO SYST SIMULATION/MODELING','3','CS','06390','InSimMod','UG'),(66,'DATA COMM/NETWORKING','3','CS','06410','DataComNet','UG'),(67,'ADV COMPUTR ARCHITEC','3','CS','06412','AdvCompArc','UG'),(68,'WIRELESS NETWORKS & APPLIC','3','CS','06415','WirelessNe','UG'),(69,'TCP/IP AND IP&TECHNOLOGIES','3','CS','06416','TCPIP','UG'),(70,'PRINCIPLES OF NETWORK SECURITY','3','CS','06417','PrinSecNet','UG'),(71,'EMBEDDED SYSTEMS PROGRAMMING','3','CS','06420','EmbedSysPr','UG'),(72,'CLOUD COMPUT & INTERNET THINGS','3','CS','06440','CloudCompI','UG'),(73,'CYBER OPERATIONS','3','CS','06470','CybOp','UG'),(74,'WIRELESS NETWORKS/SYSTEMS','3','CS','06505','aWireless','G'),(75,'COMPUTER NETWORKS','3','CS','06510','aCompNet','G'),(76,'NETWORK SECURITY','3','CS','06512','aNetSec','G'),(77,'EMBEDDED SYSTEMS PROG','3','CS','06515','aEmbedSys','G'),(78,'TOPICS IN COMP ARCHITECTURE','3','CS','06520','aTopCompAr','G'),(79,'FOUNDATIONS COMP SCI','3','CS','07210','FoundCS','UG'),(80,'FOUND OF COMPUTER FORENSICS','3','CS','07252','CompForen','UG'),(81,'ROBOTICS','3','CS','07310','Robot','UG'),(82,'SOFTWARE ENGINEERING I-WI','4','CS','07321','SE-I','UG'),(83,'SOFTWARE ENGINEERING II-WI','3','CS','07322','SE-II','UG'),(84,'DES-ANLYS ALGORITHMS','3','CS','07340','DAA','UG'),(85,'COMPUTER CRYPTOGRAPHY','3','CS','07350','CompCrypto','UG'),(86,'CYBER SEC: FUND, PRIN AND APPS','3','CS','07351','CyberSec','UG'),(87,'SECURITY OF MOBILE DEVICES','3','CS','07353','SecMobDev','UG'),(88,'INTRO COMPUTER GRAPHICS','3','CS','07360','InGraph','UG'),(89,'INTRO TO INFO VISUALIZATION','3','CS','07370','InVis','UG'),(90,'INTRO COMPUTER ANIMATION','3','CS','07380','InAnim','UG'),(91,'INTRO COMP GAME DSGN/DEVEL','3','CS','07390','InGameDes','UG'),(92,'THEORY OF COMPUTING','3','CS','07422','TheoryCom','UG'),(93,'INTRO AGILE SOFTWARE ENGINEERI','3','CS','07424','AgileSE','UG'),(94,'HUMAN-COMPUTER INTERACTION','3','CS','07430','HCI','UG'),(95,'ARTIFICIAL INTELLIGENCE (AI)','3','CS','07450','AI','UG'),(96,'MACHINE LEARNING','3','CS','07455','ML','UG'),(97,'COMPUTER VISION','3','CS','07460','CompVis','UG'),(98,'THEORY/APPS PATTERN RECOG','3','CS','07470','PattRecog','UG'),(99,'INTRODUCTION TO DATA MINING','3','CS','07480','InDM','UG'),(100,'WEB AND TEXT MINING','3','CS','07485','WebMining','UG'),(101,'MATHEMATICAL FOUND COMP SCI','3','CS','07510','aMathFound','G'),(102,'ADV THEORY OF COMPUTING','3','CS','07522','aTheoComp','G'),(103,'ADV SOFTWARE ENGINEERING','3','CS','07523','aSE','G'),(104,'AGILE SOFTWARE ENGINEERING','3','CS','07524','aAgileSE','G'),(105,'COMPUTER SCIENCE THESIS I','3','CS','07530','Thesis-I','G'),(106,'COMPUTER SCIENCE THESIS II','3','CS','07531','Thesis-II','G'),(107,'COMPUTER SCIENCE THESIS III','3','CS','07532','Thesis-III','G'),(108,'ADV DESIGN & ANALY OF ALGOR','3','CS','07540','aDAA','G'),(109,'ADVANCED ROBOTICS','3','CS','07545','aRobot','G'),(110,'CONCEPTS ARTIFICIAL INTELL','3','CS','07550','aAI','G'),(111,'ADV CYBER SEC: PRINC AND APPS','3','CS','07551','aCyberSec','G'),(112,'CRYPTOGRAPHIC ALGORITHMS','3','CS','07552','aCrypto','G'),(113,'NATURAL LANGUAGE PROCESSING','3','CS','07555','aNLP','G'),(114,'MACHINE LEARNING','3','CS','07556','aML','G'),(115,'COMPUTER GRAPHICS','3','CS','07560','aGraph','G'),(116,'COMPUTER VISION','3','CS','07565','aVision','G'),(117,'INFORMATION VISUALIZATION','3','CS','07570','aInVis','G'),(118,'ADV TCP/IP INTRNT PROT/TECH','3','CS','07575','aTCPIP','G'),(119,'COMPUTER ANIMATION','3','CS','07580','aAnim','G'),(120,'COMPUTER GAME DSGN/DEVEL','3','CS','07590','aGameDev','G'),(121,'ADV TOPICS COMPUTER SCI','1','CS','07595','aTP','G'),(122,'FUNDAMENTALS NETWORK SECURITY','3','CS','10200','FundNetSec','UG'),(123,'PENETRATION TEST FUNDAMENTALS','3','CS','10215','PenTest','UG'),(124,'ETHICAL HACKING FUNDAMENTALS','3','CS','10218','EthHackFun','UG'),(125,'CRYPT/BLOCKCHAIN ESSENTIALS','3','CS','10250','CryptBlock','UG'),(126,'INTRO TO ANDROID PROGRAMMING','3','CS','10271','InAndrPr','UG'),(127,'INTRO WINDO MOBILE APP PROGRAM','3','CS','10273','InWinPr','UG'),(128,'INTRO IOS APP PROGRAMMING','3','CS','10275','IniOSPr','UG'),(129,'INTRO TO WEB DEVELOPMENT','3','CS','10310','InWebDeb','UG'),(130,'APPLIED DATABASE TECHNOLOGIES','3','CS','10337','AppDBTech','UG'),(131,'SYSTEMS ADMINISTRATION','3','CS','10340','SysAdmin','UG'),(132,'WEB SERVER PLATFORMS','3','CS','10342','WebSerPl','UG'),(133,'CONCEPTS OF COMPUTING TECHNLGY','3','CS','10344','ConcCompTe','UG'),(134,'COMP INFORMATICS CAPSTONE EXP','3','CS','10430','C&Icap','UG'),(135,'INTRO LEARN ASST EXPERIENCE CS','1','CS','99210','InLA','UG'),(136,'COMPUTER FLD EXPER','3','CS','99300','CFE','UG'),(137,'ADV LEARN ASST SEMINAR COM SCI','3','CS','99310','AdvLA','UG'),(138,'COMPUTERS & SOCIETY','3','INTR','01265','CompSoc','UG'),(139,'COMPUT & SOCIETY-WI','3','INTR','01266','CompSoc','UG');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `instructor_id` int NOT NULL AUTO_INCREMENT,
  `instructor_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `banner_id` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`instructor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Adjunct','Ola','Ajaj',NULL),(2,'Adjunct','Stephen','Asbury',NULL),(3,'Full-Time','Ganesh','Baliga',NULL),(4,'Adjunct','Shubhasri','Basu',NULL),(5,'Full-Time','Seth','Bergmann',NULL),(6,'Adjunct','Russell','Binaco',NULL),(7,'Adjunct','Ronald','Boehm',NULL),(8,'Full-Time','Anthony','Breitzman',NULL),(9,'Adjunct','Kevin','Campbell',NULL),(10,'Adjunct','Frank','Caranci',NULL),(11,'Adjunct','Donald','Cesaretti',NULL),(12,'Adjunct','Ganesh','Chandrasekaran',NULL),(13,'Full-Time','Chia','Chien',NULL),(14,'Full-Time','Heng Yi','Chu',NULL),(15,'Adjunct','Matthew','Cintron',NULL),(16,'Adjunct','Thomas','Coakley',NULL),(17,'Adjunct','Melanie','Collins',NULL),(18,'Adjunct','Melissa','Dark',NULL),(19,'Adjunct','Michael','Davie',NULL),(20,'Adjunct','Len','Daws',NULL),(21,'Adjunct','Janice','DiGialleonardo',NULL),(22,'Adjunct','Michael','Dorris',NULL),(23,'Adjunct','William','Dougherty',NULL),(24,'Adjunct','Amal','EL Gehani',NULL),(25,'Adjunct','Jose','Escajadillo Munoa',NULL),(26,'Adjunct','Frank','Fiedler',NULL),(27,'Adjunct','Harold','Garron',NULL),(28,'Adjunct','Robert','Giannotti',NULL),(29,'Adjunct','Gilbert','Gonzalez',NULL),(30,'Adjunct','Joshua','Grochowski',NULL),(31,'Adjunct','Ben','Hample',NULL),(32,'Adjunct','Christopher','Heisler',NULL),(33,'Full-Time','Vahid','Heydari',NULL),(34,'Adjunct','Serhiy','Hnatyshyn',NULL),(35,'Full-Time','Shen Shyang','Ho',NULL),(36,'Adjunct','Ryan','Hoxworth',NULL),(37,'Full-Time','Gabriela','Hristescu',NULL),(38,'Adjunct','David ','Humphreys',NULL),(39,'Adjunct','Solomon','Jacobs',NULL),(40,'Adjunct','Brian','Jorgage',NULL),(41,'Adjunct','Takeshwari','Kamal',NULL),(42,'Full-Time','Jennifer','Kay',NULL),(43,'Adjunct','Christine','Larsen-Britt',NULL),(44,'Adjunct','Lauren','Leonard',NULL),(45,'Full-Time','Jacob','Levy',NULL),(46,'Full-Time','Andrea','Lobo',NULL),(47,'Adjunct','Nikkoli','Lueder',NULL),(48,'Adjunct','Kevin','Lux',NULL),(49,'Full-Time','Mohamed','Mansaray',NULL),(50,'Adjunct','John','Manz',NULL),(51,'Adjunct','Gabriella','Mayorga',NULL),(52,'Full-Time','Patrick','McKee',NULL),(53,'Adjunct','Quadii','McMillan',NULL),(54,'Adjunct','Ashish','Misra',NULL),(55,'Adjunct','Derik','Mitchell',NULL),(56,'Full-Time','Jack','Myers',NULL),(57,'Adjunct','Octavia','Nash',NULL),(58,'Adjunct','Rafael','Orta Cordova',NULL),(59,'Adjunct','Jeffrey','Pierantozzi',NULL),(60,'Full-Time','Kimberly','Poolos',NULL),(61,'Adjunct','Jeff','Posdamer',NULL),(62,'Adjunct','David ','Procino',NULL),(63,'Full-Time','Darren','Provine',NULL),(64,'Adjunct','Marquise','Pullen',NULL),(65,'Full-Time','Chenxi','Qiu',NULL),(66,'Adjunct','Richard','Rabbitz',NULL),(67,'Adjunct','Joseph','Radino',NULL),(68,'Adjunct','James','Rea',NULL),(69,'Adjunct','Suma','Reddy',NULL),(70,'Adjunct','Lauren','Reichenbacher',NULL),(71,'Adjunct','Richard','Riecken',NULL),(72,'Full-Time','John','Robinson',NULL),(73,'Adjunct','Fernando','Romero Ramirez',NULL),(74,'Adjunct','Gregory','Safko',NULL),(75,'Adjunct','Joseph','Scavetta',NULL),(76,'Full-Time','Michael','Schillo',NULL),(77,'Adjunct','Elberta','Scott',NULL),(78,'Adjunct','Robert','Seedorf',NULL),(79,'Adjunct','Jerry','Seltzer',NULL),(80,'Adjunct','Lisa','Shui',NULL),(81,'Adjunct','Marvin','Shumowitz',NULL),(82,'Adjunct','Tapan','Soni',NULL),(83,'Adjunct','John','Stranahan',NULL),(84,'Adjunct','James','Strate',NULL),(85,'Full-Time','Bo','Sun',NULL),(86,'Adjunct','Bernard','Sypniewski',NULL),(87,'Adjunct','Sally','Tarabah',NULL),(88,'Full-Time','Nancy','Tinkham',NULL),(89,'Adjunct','Kevin','Tinsley',NULL),(90,'Adjunct','Neil','Toporski',NULL),(91,'Full-Time','Ning','Wang',NULL),(92,'Adjunct','Dwayne','Watkins',NULL),(93,'Adjunct','George','Weeks',NULL),(94,'Adjunct','Stephen','Weissman',NULL),(95,'Adjunct','Curtis','White',NULL),(96,'Full-Time','Jianning','Xu',NULL),(97,'Adjunct','Mark','Zeits',NULL),(98,NULL,'STAFF','STAFF',NULL),(99,'Adjunct','Steven','Jiang','916244134');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `building` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `campus` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `room_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `room_capacity` int DEFAULT NULL,
  `room_number` int DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'Robinson','Main','Computer Lab',25,325),(2,'Robinson','Main','Lecture',58,121),(3,'Robinson','Main','Lecture',48,211),(4,'Robinson','Main','Computer Lab',25,312),(5,'Robinson','Main','Lecture',30,323),(6,'Robinson','Main','Lecture',24,305),(7,'Bunce','Main','Computer Lab',32,156),(8,'Enterprise Center','Main','Lecture',40,517),(9,'James','Main','Computer Lab',28,2113),(10,'James','Main','Computer Lab',20,2108),(11,'Wilson','Main','Lecture',24,206),(12,NULL,'Online','Online',NULL,NULL),(13,'Wilson','Main','Lecture',30,212);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `instructor_id` int DEFAULT NULL,
  `time_slot_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `room_in_sch_idx` (`room_id`),
  KEY `section_in_sch_idx` (`section_id`),
  KEY `ts_in_sch_idx` (`time_slot_id`),
  KEY `instructor_in_sch_idx` (`instructor_id`),
  CONSTRAINT `instructor_in_sch` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_in_sch` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `section_in_sch` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ts_in_sch` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slot` (`time_slot_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,13,1,2,1),(2,13,1,2,2),(3,85,2,2,3),(4,85,2,2,4),(5,13,4,2,5),(6,13,4,2,6),(7,96,5,2,7),(8,8,6,2,8),(9,8,7,2,9),(10,10,8,2,10),(11,10,9,2,10),(12,37,10,2,11),(13,37,10,2,12),(15,88,12,2,14),(16,88,13,2,15),(17,96,14,2,16),(18,88,15,2,17),(19,60,16,2,18),(22,13,19,2,1),(23,13,19,2,2),(24,85,20,2,3),(25,85,20,2,4),(26,13,22,2,5),(27,13,22,2,6),(28,96,23,2,7),(29,8,24,2,8),(30,8,25,2,9),(31,10,26,2,10),(32,10,27,2,10),(33,37,28,2,11),(34,37,28,2,12),(36,88,30,2,14),(37,88,31,2,15),(38,96,32,2,16),(39,88,33,2,17),(40,60,34,2,18),(41,58,35,2,21),(42,58,35,2,22),(43,58,36,2,21),(44,58,36,2,22),(45,60,37,2,23),(46,60,38,2,23),(49,14,42,2,25),(50,24,43,2,26),(51,13,22,4,1),(52,13,23,4,1),(53,13,31,4,2),(55,85,37,4,3),(56,85,38,4,3),(58,85,40,4,4),(59,13,26,4,5),(60,13,27,4,5),(61,13,35,4,6),(62,13,36,4,6),(63,37,11,4,11),(64,37,12,4,11),(65,37,38,4,12),(66,37,39,4,12),(73,13,43,4,1),(74,45,11,2,13),(76,45,29,5,13),(89,13,32,9,2),(95,13,30,9,2),(96,13,29,9,2),(97,13,38,2,2),(98,13,38,2,3),(99,13,38,2,4),(113,13,38,1,16),(119,13,38,4,4),(123,NULL,1,1,1),(125,NULL,7,1,9),(126,NULL,7,1,9),(127,NULL,7,1,9),(128,NULL,7,1,9),(129,NULL,7,1,9);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `section_id` int NOT NULL AUTO_INCREMENT,
  `waitlist_seats` int DEFAULT NULL,
  `modifier` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `section_number` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course_max` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  PRIMARY KEY (`section_id`),
  KEY `session_id_in_section_idx` (`session_id`),
  KEY `course_id_in_section_idx` (`course_id`),
  CONSTRAINT `course_id_in_section` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `session_id_in_section` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,NULL,NULL,'1',NULL,23,NULL,1),(2,NULL,NULL,'2',NULL,23,NULL,1),(3,NULL,NULL,'3',NULL,23,NULL,1),(4,NULL,NULL,'4',NULL,23,NULL,1),(5,NULL,NULL,'5',NULL,23,NULL,1),(6,NULL,NULL,'6',NULL,23,NULL,1),(7,NULL,NULL,'3',NULL,79,NULL,1),(8,NULL,NULL,'1',NULL,48,NULL,1),(9,NULL,NULL,'1',NULL,19,NULL,1),(10,NULL,NULL,'4',NULL,139,NULL,1),(11,NULL,NULL,'3',NULL,27,NULL,1),(12,NULL,NULL,'4',NULL,27,NULL,1),(13,NULL,NULL,'1',NULL,84,NULL,1),(14,NULL,NULL,'1',NULL,31,NULL,1),(15,NULL,NULL,'2',NULL,31,NULL,1),(16,NULL,NULL,'4',NULL,79,NULL,1),(17,NULL,NULL,'3',NULL,31,NULL,1),(18,NULL,NULL,'8',NULL,139,NULL,1),(19,NULL,NULL,'1',NULL,123,NULL,1),(20,NULL,NULL,'5',NULL,139,NULL,1),(21,NULL,NULL,'1',NULL,21,NULL,1),(22,NULL,NULL,'2',NULL,21,NULL,1),(23,NULL,NULL,'7',NULL,139,NULL,1),(25,NULL,NULL,'1',NULL,134,NULL,1),(26,NULL,NULL,'21',NULL,4,NULL,1);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `semester_id` int NOT NULL AUTO_INCREMENT,
  `semester_year` int DEFAULT NULL,
  `semester_term` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,2020,'Fall'),(2,2020,'Summer'),(3,2020,'Winter'),(4,2021,'Spring');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `session_name` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `semester_id` int DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `semester_in_ss_idx` (`semester_id`),
  CONSTRAINT `semester_in_ss` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,'1 - Full Term','2020-09-01','2020-12-18',1),(2,'F - First Session','2020-09-01','2020-10-16',1),(3,'LS - Late Start Session','2020-09-01','2020-12-18',1),(4,'M1O - Module One Online','2020-09-01','2020-10-26',1),(5,'M2O - Module Two Online','2020-10-27','2020-12-21',1),(6,'S - Second Session','2020-10-26','2020-12-11',1),(7,'U - GSBS-S Term','2020-09-01','2020-12-21',1),(8,'ROI - Rowan Online Immersion Session','2020-09-01','2020-12-18',1);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `show_schedules_info`
--

DROP TABLE IF EXISTS `show_schedules_info`;
/*!50001 DROP VIEW IF EXISTS `show_schedules_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `show_schedules_info` AS SELECT 
 1 AS `building`,
 1 AS `campus`,
 1 AS `room_type`,
 1 AS `room_capacity`,
 1 AS `room_number`,
 1 AS `course_id`,
 1 AS `course_title`,
 1 AS `course_credit_student`,
 1 AS `course_subject_code`,
 1 AS `course_number`,
 1 AS `course_abbreviation`,
 1 AS `course_level`,
 1 AS `section_number`,
 1 AS `modifier`,
 1 AS `day_of_week`,
 1 AS `start_time`,
 1 AS `end_time`,
 1 AS `section_id`,
 1 AS `time_slot_id`,
 1 AS `instructor_id`,
 1 AS `room_id`,
 1 AS `Instructor_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `time_slot`
--

DROP TABLE IF EXISTS `time_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_slot` (
  `time_slot_id` int NOT NULL AUTO_INCREMENT,
  `day_of_week` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`time_slot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_slot`
--

LOCK TABLES `time_slot` WRITE;
/*!40000 ALTER TABLE `time_slot` DISABLE KEYS */;
INSERT INTO `time_slot` VALUES (1,'M','08:00:00',NULL),(2,'M','09:30:00',NULL),(3,'M','11:00:00',NULL),(4,'M','12:30:00',NULL),(5,'M','14:00:00',NULL),(6,'M','15:30:00',NULL),(7,'M','17:00:00',NULL),(8,'M','18:30:00',NULL),(9,'M','20:00:00',NULL),(10,'T','08:00:00',NULL),(11,'T','09:30:00',NULL),(12,'T','11:00:00',NULL),(13,'T','12:30:00',NULL),(14,'T','14:00:00',NULL),(15,'T','15:30:00',NULL),(16,'T','17:00:00',NULL),(17,'T','18:30:00',NULL),(18,'T','20:00:00',NULL),(19,'W','08:00:00',NULL),(20,'W','09:30:00',NULL),(21,'W','11:00:00',NULL),(22,'W','12:30:00',NULL),(23,'W','14:00:00',NULL),(24,'W','15:30:00',NULL),(25,'W','17:00:00',NULL),(26,'W','18:30:00',NULL),(27,'W','20:00:00',NULL),(28,'R','08:00:00',NULL),(29,'R','09:30:00',NULL),(30,'R','11:00:00',NULL),(31,'R','12:30:00',NULL),(32,'R','14:00:00',NULL),(33,'R','15:30:00',NULL),(34,'R','17:00:00',NULL),(35,'R','18:30:00',NULL),(36,'R','20:00:00',NULL),(37,'F','08:00:00',NULL),(38,'F','09:30:00',NULL),(39,'F','11:00:00',NULL),(40,'F','12:30:00',NULL),(41,'F','14:00:00',NULL),(42,'F','15:30:00',NULL),(43,'F','17:00:00',NULL),(44,'F','18:30:00',NULL),(45,'F','20:00:00',NULL);
/*!40000 ALTER TABLE `time_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'course_scheduler'
--
/*!50003 DROP PROCEDURE IF EXISTS `clearAllSchedules` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `clearAllSchedules`()
BEGIN
	declare n int default 0;
    declare i int default 0;
    
	select max(schedule_id) into n from Schedules;
    set i = 1;
    while i <= n do
		delete from Schedules where schedule_id = i;
        set i = i+1;
	end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `clearAllSections` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `clearAllSections`()
BEGIN
	declare n int default 0;
    declare i int default 0;
    
	select max(section_id) into n from Section;
    set i = 1;
    while i <= n do
		delete from Section where section_id = i;
        set i = i+1;
	end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteAllSectionsinTimeSlot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `deleteAllSectionsinTimeSlot`(
	in timeSlotDay varchar(9),
    in timeSlotStartTime time,
    in roomBuilding varchar(45),
    in roomNumber int(11),
    out result varchar(10)
)
begin
	declare total int;
    declare room_id_as_var int;
    declare time_slot_id_as_var int;
    
    select room_id into room_id_as_var
    from Room r
    where r.building = roomBuilding and r.room_number = roomNumber;
    
    select time_slot_id into time_slot_id_as_var 
    from Time_Slot ts
    where ts.day_of_week = timeSlotDay and ts.start_time = timeSlotStartTime;
    
    select count(*) into total from Schedules;
    delete from Schedules where room_id = room_id_as_var and time_slot_id = time_slot_id_as_var;
    
    if total > (select count(*) from Schedules)
    then
		set result = 'success';
	else
		set result = 'fail';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteCourseFromDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `deleteCourseFromDatabase`(
	in courseName varchar(255),
    out result varchar(10)
)
BEGIN
	declare total int;
	select count(*) into total from Course;
    
	delete 
    from Course
    where course_title = courseName;
    
    if total > (select count(*) from Course)
    then
		set result = 'success';
	else 
		set result = 'fail';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteInstructorFromDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `deleteInstructorFromDatabase`(
	in bannerID char(9),
    out result varchar(10)
)
BEGIN
	declare total int;
	select count(*) into total from Instructor;
	
    delete from Instructor
    where banner_id = bannerID;
    
    
    if total > (select count(*) from Instructor)
    then
		set result = 'success';
	else 
		set result = 'fail';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteScheduledSlot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `deleteScheduledSlot`(
    in timeSlotDay varchar(9),
    in timeSlotStartTime time,
    in roomBuilding varchar(45),
    in roomNumber int(11),
    in sectionNumber varchar(5),
    in courseName varchar(255),
    out result varchar(10)
)
BEGIN
	declare schedule_id_var int default 10000;
	declare instructor_id_var int default 10000;
    declare time_slot_id_var int default 10000;
    declare room_id_var int default 10000;
    declare section_id_var int default 10000;
    
    declare total int;
	select count(*) into total from Schedules;
    
    
    
    select t.time_slot_id into time_slot_id_var
    from Time_Slot t
    where t.day_of_week = timeSlotDay and t.start_time = timeSlotStartTime;
    
    select r.room_id into room_id_var
    from Room r
    where r.building = roomBuilding and r.room_number = roomNumber;
    
    select s.section_id into section_id_var
    from Section s
    where s.section_number = sectionNumber and s.course_id in (select c.course_id
															   from Course c
															   where c.course_title = courseName);
    
    select sch.schedule_id into schedule_id_var
    from Schedules sch
    where sch.time_slot_id = time_slot_id_var and
          sch.room_id = room_id_var and
          sch.section_id = section_id_var;
    
    delete from Schedules where schedule_id = schedule_id_var; 
    
    
    if total > (select count(*) from Schedules)
    then
		set result = 'success';
	else 
		set result = 'fail';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteSectionBasedOnScheduleInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `deleteSectionBasedOnScheduleInfo`(
	in timeSlotDay varchar(9),
    in timeSlotStartTime time,
    in roomBuilding varchar(45),
    in roomNumber int(11),
    in sectionNumber varchar(5),
    in course_abbreviation varchar(255),
    out result varchar(10)
)
begin
    declare section_id_as_var int;
    select section_id into section_id_as_var
    from Schedules sch
    join Time_Slot ts using (time_slot_id)
    join Room r using (room_id)
    join Section s using (section_id)
    join Course c using (course_id)
    where ts.day_of_week = timeSlotDay and ts.start_time = timeSlotStartTime
    and r.building = roomBuilding and r.room_number = roomNumber
    and s.section_number = sectionNumber and c.course_abbreviation = course_abbreviation;
    
    if section_id_as_var is null or section_id_as_var = ''
    then
		set result = 'fail';
	else
		set result = 'success';
        delete from Section where  section_id = section_id_as_var;
	end if;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteSectionFromDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jiangs1`@`%` PROCEDURE `deleteSectionFromDatabase`(
	in course_title varchar(255),
	in section_number varchar(5),
    out result varchar(10)
)
begin
	declare section_id_as_var int default 10000;
    declare total int;
	select count(*) into total from Instructor;
    
    select s.section_id 
    into section_id_as_var 
    from Section s
    join Course c using (course_id)
    where s.section_number = section_number and 
		  c.course_title = course_title;
    
	delete from Section where section_id = section_id_as_var;
    
     if total > (select count(*) from Section)
    then
		set result = 'success';
	else 
		set result = 'fail';
	end if;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteSessionBasedOnSessionName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `deleteSessionBasedOnSessionName`(
	in sessionName varchar(255),
    out result varchar(10)
)
begin
	declare total int;
	select count(*) into total from Session;
	delete from Session where session_name = sessionName;
    
      if total > (select count(*) from Session)
    then
		set result = 'success';
	else 
		set result = 'fail';
	end if;
    
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FinalReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `FinalReport`()
Begin
	select c.course_subject_code, c.course_number, 
	s.section_number, c.course_title, i.banner_id,
	i.first_name, i.last_name, t.day_of_week,
	concat(cast(time_format(t.start_time, "%h:%i %p") as char(10)), ' - ',cast(time_format(addtime(t.start_time, '1:15'), "%h:%i %p") as char(10))) as Time_Slot, concat(r.building, ' ', r.room_number) as Room_Info,
	c.course_credit_student as course_credits,
	r.room_capacity, 50 as Waitlist_Seats,
    ' ' as Course_type, c.course_credit_student as Prof_credits,
    100 as percent_taught, 'Yes' as room_for_finals
	from Schedules sch
	join Time_Slot t using (time_slot_id)
	left join Instructor i using (instructor_id)
	join Room r using (room_id)
	join Section s using (section_id)
	join Course c using (course_id);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FinalReportSimplified` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `FinalReportSimplified`()
begin
	select c.course_subject_code, c.course_number, s.section_number, c.course_title, i.banner_id, 
    i.first_name,  i.last_name, 
    GROUP_CONCAT(ts.day_of_week order by field(ts.day_of_week, 'M', 'T', 'W', 'R', 'F') separator '') as "Day", 
    concat(cast(time_format(ts.start_time, "%h:%i %p") as char(10)), ' - ', cast(time_format(addtime(ts.start_time, '1:15'), "%h:%i %p") as char(10))) as Time_Slot,
    concat(r.building, ' ', r.room_number) as room_info, c.course_credit_student as course_credits, r.room_capacity, 
    50 as waitlist_seats, null as course_type, c.course_credit_student as prof_credits,
    100 as percent_taught, 'Yes' as room_for_finals
    from Schedules sch
    join Time_Slot ts using (time_slot_id)
    left join Instructor i using (instructor_id)
    join Room r using (room_id)
    join Section s using (section_id)
    join Course c using (course_id)
    group by c.course_number, c.course_title,  s.section_number, c.course_subject_code, i.banner_id, 
    i.first_name, i.last_name, r.building, r.room_number, s.modifier, ts.start_time, c.course_credit_student, room_capacity, course_id
    order by course_id, section_number, field(time_slot, '08:00', '09:30', '11:00', '12:30', '14:00', '15:30', '17:00', '18:30', '20:00');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseInfoByAbbr_Scheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getCourseInfoByAbbr_Scheduling`(
	in abbreviation varchar(45)
)
BEGIN 
	select 
    c.course_subject_code as subject_code,
	c.course_number,
    s.section_number, 
    c.course_title,
    concat(i.first_name, ' ', i.last_name) as full_name,
    i.instructor_type,
    ts.day_of_week,
    ts.start_time,
	s.duration,
	concat(r.building, ' ', r.room_number) as room_info,
    c.course_credit_student as course_credits,
    s.course_max,
    s.waitlist_seats as course_waitlist
	from Schedules sch
	join Time_Slot ts using (time_slot_id)
	join Instructor i using (instructor_id)
	join Room r using (room_id)
	join Section s using (section_id)
	join Course c using (course_id)
    where c.course_abbreviation = abbreviation;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseInfoByAbbr_WithoutScheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getCourseInfoByAbbr_WithoutScheduling`(
	in abbreviation varchar(45)
)
BEGIN
	select 
	c.course_subject_code as subject_code,
	c.course_number,
    c.course_title,
    c.course_credit_student as course_credits
    from Course c
    where c.course_abbreviation = abbreviation;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseInfoByBuilding_Scheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getCourseInfoByBuilding_Scheduling`(
	in building_name varchar(45)
)
begin
	select 
    c.course_subject_code as subject_code,
	c.course_number,
    s.section_number, 
    c.course_title,
    concat(i.first_name, ' ', i.last_name) as full_name,
    i.instructor_type,
    ts.day_of_week,
    ts.start_time,
	s.duration,
	concat(r.building, ' ', r.room_number) as room_info,
    c.course_credit_student as course_credits,
    s.course_max,
    s.waitlist_seats as course_waitlist
    from Schedules sch
    join Section s using (section_id)
    join Course c using (course_id)
    join Room r using (room_id)
    join Time_Slot ts using (time_slot_id)
    join Instructor i using (instructor_id)
    where r.building = building_name
    order by c.course_id asc, s.section_number;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseInfoByCourseNumber_Scheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getCourseInfoByCourseNumber_Scheduling`(
	in courseNum char(5)
)
BEGIN
	select
    c.course_subject_code as subject_code,
	c.course_number,
    s.section_number, 
    c.course_title,
    concat(i.first_name, ' ', i.last_name) as full_name,
    i.instructor_type,
    ts.day_of_week,
    ts.start_time,
	s.duration,
	concat(r.building, ' ', r.room_number) as room_info,
    c.course_credit_student as course_credits,
    s.course_max,
    s.waitlist_seats as course_waitlist
	from Schedules sch
	join Time_Slot ts using (time_slot_id)
	join Instructor i using (instructor_id)
	join Room r using (room_id)
	join Section s using (section_id)
	join Course c using (course_id)
    where c.course_number = courseNum
    order by s.section_number;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseInfoByCourseNumber_WithoutScheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getCourseInfoByCourseNumber_WithoutScheduling`(
	in courseNum char(5)
)
BEGIN
	select
    c.course_subject_code as subject_code,
	c.course_number,
    c.course_title,
    c.course_credit_student as course_credits
    from Course c
    where c.course_number = courseNum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseInfoByDay_Scheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getCourseInfoByDay_Scheduling`(
	in week_day varchar(9)
)
begin
	select 
    c.course_subject_code as subject_code,
	c.course_number,
    s.section_number, 
    c.course_title,
    concat(i.first_name, ' ', i.last_name) as full_name,
    i.instructor_type,
    ts.day_of_week,
    ts.start_time,
	s.duration,
	concat(r.building, ' ', r.room_number) as room_info,
    c.course_credit_student as course_credits,
    s.course_max,
    s.waitlist_seats as course_waitlist
    from Schedules sch
    join Section s using (section_id)
    join Course c using (course_id)
    join Room r using (room_id)
    join Time_Slot ts using (time_slot_id)
    join Instructor i using (instructor_id)
    where ts.day_of_week = week_day
    order by c.course_id, s.section_number;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseInfoByRoom_Scheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getCourseInfoByRoom_Scheduling`(
	in room_info varchar(255)
)
begin
	select 
    c.course_subject_code as subject_code,
	c.course_number,
    s.section_number, 
    c.course_title,
    concat(i.first_name, ' ', i.last_name) as full_name,
    i.instructor_type,
    ts.day_of_week,
    ts.start_time,
	s.duration,
	concat(r.building, ' ', r.room_number) as room_info,
    c.course_credit_student as course_credits,
    s.course_max,
    s.waitlist_seats as course_waitlist
	from Schedules sch
	join Time_Slot ts using (time_slot_id)
	join Instructor i using (instructor_id)
	join Room r using (room_id)
	join Section s using (section_id)
	join Course c using (course_id)
    where concat(r.building, r.room_number) = room_info;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInstructorInfo_General_Scheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getInstructorInfo_General_Scheduling`()
BEGIN
	select 
		distinct i.banner_id, concat(i.first_name, " ", i.last_name) as full_name, i.instructor_type
		from Instructor i join Schedules sch using (instructor_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInstructorInfo_General_WithoutScheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getInstructorInfo_General_WithoutScheduling`()
BEGIN
	select 
		i.banner_id, 
        concat(i.first_name, " ", i.last_name) as full_name, 
        i.instructor_type
    from Instructor i;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInstructorName_Scheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getInstructorName_Scheduling`(
	in instr_name varchar(255)
)
BEGIN
	select distinct concat(i.first_name, ' ', i.last_name) as full_name
	from Instructor i join Schedules sch using (instructor_id)
    where i.first_name like concat("%", instr_name, "%")
	or    i.last_name like concat("%" ,instr_name, "%");
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getInstructorName_WithoutScheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getInstructorName_WithoutScheduling`(
	in instr_name varchar(255)
)
BEGIN
	select concat(i.first_name, " ", i.last_name) as full_name
    from Instructor i
    where i.first_name like concat(instr_name, "%")
	or    i.last_name like concat(instr_name, "%");
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOldInstructorTeaching` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getOldInstructorTeaching`(
    in day_of_week varchar(5),
    in start_time varchar(255),
    in room_info varchar(255),
    in course_title varchar(45),
    in section_number varchar(5),
    out first_name varchar(255),
    out last_name varchar(255)
)
BEGIN
	declare time_slot_id_as_var int default 10000;
    declare section_id_as_var int default 10000;
    declare room_id_as_var int default 10000;
    declare instructor_id_as_var int default 10000;
        
    select ts.time_slot_id into time_slot_id_as_var
    from Time_Slot ts
    where ts.day_of_week = day_of_week and ts.start_time = convert(start_time, time);
    
    select r.room_id into room_id_as_var 
    from Room r
    where concat(r.building, ' ', r.room_number) = room_info;
    
    select s.section_id into section_id_as_var 
    from Section s
    join Course c using (course_id)
    where c.course_title = course_title and s.section_number = section_number;
    
    select instructor_id into instructor_id_as_var
    from Schedules sch 
    where sch.section_id = section_id_as_var and
		  sch.time_slot_id = time_slot_id_as_var and
          sch.room_id = room_id_as_var;
    
    select i.first_name into first_name
    from Instructor i
    where i.instructor_id = instructor_id_as_var;
    
    select i.last_name into last_name
    from Instructor i
    where i.instructor_id = instructor_id_as_var;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOldScheduledInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getOldScheduledInfo`(
    in day_of_week varchar(5),
    in start_time time,
    in room_info varchar(255),
    out oldCourseName varchar(255),
    out oldSectionNumberOne varchar(255),
    out oldSectionNumberTwo varchar(255),
    out oldInstructorFirstName varchar(255),
    out oldInstructorLastName varchar(255)
)
BEGIN
    declare time_slot_id_as_var int default 10000;
    declare room_id_as_var int default 10000;
    declare instructor_id_as_var int default 10000;
    declare section_id_as_var_one int default 10000;
    declare section_id_as_var_two int default 10000;
    declare tempCourseName varchar(255);
	declare tempInstructorFname varchar(255);
    declare tempInstructorLname varchar(255);

    
    select ts.time_slot_id into time_slot_id_as_var
    from Time_Slot ts
    where ts.day_of_week = day_of_week and 
		  ts.start_time = start_time;
    
    select r.room_id into room_id_as_var
    from Room r
    where concat(r.building, ' ', r.room_number) = room_info;

    select distinct instructor_id into instructor_id_as_var
    from Schedules sch 
    where sch.time_slot_id = time_slot_id_as_var and
          sch.room_id = room_id_as_var;
    
    select section_id into section_id_as_var_one
    from Schedules sch 
    where sch.time_slot_id = time_slot_id_as_var and
          sch.room_id = room_id_as_var
	limit 1;
    
    select s.section_number into oldSectionNumberOne
    from Section s
    where s.section_id = section_id_as_var_one;
    
    select section_id into section_id_as_var_two
    from Schedules sch 
    where sch.time_slot_id = time_slot_id_as_var and
          sch.room_id = room_id_as_var
	limit 1, 1;
    
    select s.section_number into oldSectionNumberTwo
    from Section s
    where s.section_id = section_id_as_var_two;
    
    select c.course_title into oldCourseName
    from Course c
	where c.course_id in (select s.course_id
						  from Section s
						  where s.section_id = section_id_as_var_one);
					
    select i.first_name into oldInstructorFirstName
    from Instructor i
    where i.instructor_id = instructor_id_as_var;
    
    select i.last_name into oldInstructorLastName
    from Instructor i
    where i.instructor_id = instructor_id_as_var;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTimeAndLocationofCourse_Scheduling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getTimeAndLocationofCourse_Scheduling`(
	in course_abbreviation varchar(255),
	in section_number varchar(5)
)
begin
	select 
    concat(r.building, ' ', r.room_number) as room_info,
    r.campus,
    ts.day_of_week,
    ts.start_time,
    s.duration
	from Schedules sch
    join Section s using (section_id)
    join Course c using (course_id)
    join Room r using (room_id)
    join Time_Slot ts using (time_slot_id)
    join Instructor i using (instructor_id)
    where c.course_abbreviation = course_abbreviation and s.section_number = section_number;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCourseIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `insertCourseIntoDatabase`(
	in course_title varchar(255),
    in course_credit_student varchar(5),
    in course_subject_code varchar(5),
    in course_number char(5),
    in course_abbreviation varchar(45),
    in course_level varchar(5),
    out result varchar(10)
)
begin
	declare total int;
    select count(*) into total from Course;

	insert into Course
    (course_title, course_credit_student, course_subject_code, course_number, course_abbreviation, course_level) 
    values
		(course_title, course_credit_student, course_subject_code, course_number, course_abbreviation, course_level);
        
	if total < (select count(*) from Course)
    then
		set result = 'success';
	else
		set result = 'fail';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertInstructorIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `insertInstructorIntoDatabase`(
	in firstName varchar(255),
	in lastName varchar(255),
    in bannerID char(9),
    in instructorType varchar(45),
	out result varchar(10)
)
BEGIN
	declare total int;
    select count(*) into total from Instructor;
    
	insert into Instructor(instructor_type, first_name, last_name, banner_id)
	values
		(instructorType, firstName, lastName, bannerID);
        
	if total < (select count(*) from Instructor)
    then
		set result = 'success';
	else
		set result = 'fail';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertRoomIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `insertRoomIntoDatabase`(
	in buildingName varchar(45),
    in campusLocation varchar(45),
    in roomType varchar(45),
    in roomCapacity int(11),
    in roomNumber int(11),
	out result varchar(10)
)
BEGIN
	declare total int;
    select count(*) into total from Room;
    
	insert into Room(building, campus, room_type, room_capacity, room_number)
    values 
		(buildingName, campusLocation, roomType, roomCapacity, roomNumber);
        
	if total < (select count(*) from Room)
    then
		set result = 'success';
	else
		set result = 'fail';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertScheduledSlot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `insertScheduledSlot`(
	in instructorName varchar(255),
    in timeSlotDay varchar(9),
	in timeSlotStartTime varchar(255),
	in roomBuilding varchar(45),
    in roomNumber int(11),
    in sectionNumber varchar(5),
    in course_abbreviation varchar(255),
    out result varchar(10)
)
BEGIN
	declare instructor_id_var int default 10000;
    declare time_slot_id_var int default 10000;
    declare room_id_var int default 10000;
    declare section_id_var int default 10000;
    declare total int;
    
    declare instructor_available boolean default true;
    declare n int default 0;
    declare i int default 0;
    declare instructor_id_temp int default 0;
    declare time_slot_id_temp int default 0;
    
    
    select t.time_slot_id into time_slot_id_var
    from Time_Slot t
    where t.day_of_week = timeSlotDay and t.start_time = convert(timeSlotStartTime, time);
    
    #If given intructor name is null, set instructor_id_var to null
    if instructorName is null
    then 
		set instructor_id_var = null;
	else
		select i.instructor_id into instructor_id_var
		from Instructor i
		where concat(i.first_name, " ", i.last_name) = instructorName;
        
        #Check Instructor is available or not
        select max(schedule_id) into n from Schedules;
		set i = 1;
		set instructor_available = true;
    
		while i <= n do
			select time_slot_id, instructor_id into time_slot_id_temp, instructor_id_temp
			from Schedules sch where sch.schedule_id = i;
        
			if (instructor_id_var = instructor_id_temp and time_slot_id_var = time_slot_id_temp)
			then
				set instructor_available = false;
			end if;
			set i = i+1;
		end while;
	end if;
		
        
    if instructor_available = true then
		select r.room_id into room_id_var
		from Room r
		where r.building = roomBuilding and r.room_number = roomNumber;
    
		select s.section_id into section_id_var
		from Section s
		join Course c using (course_id)
		where s.section_number = sectionNumber and c.course_abbreviation = course_abbreviation;
        
		select count(*) into total from Schedules;
    
		insert into Schedules(instructor_id, time_slot_id, room_id, section_id)
		values
			(instructor_id_var, time_slot_id_var, room_id_var, section_id_var);
            
		if total < (select count(*) from Schedules)
		then
			set result = 'success';
		else
			set result = 'fail';
		end if;
	else
			SIGNAL SQLSTATE '45000'   
			SET MESSAGE_TEXT = 'Instructor is teaching another class at this time';
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertSectionIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `insertSectionIntoDatabase`(
    in modifier varchar(45),
    in section_number varchar(5),
    in duration int(11),
    in sessionName varchar(255),
    in course_abbreviation varchar(255),
    out result varchar(10)
)
begin 
	 declare course_id_as_var int default 10000;
	 declare session_id_as_var int default 100000;
	 declare total int;
	 
	 select c.course_id into course_id_as_var
    	 from Course c 
	 where c.course_abbreviation = course_abbreviation;
	 
	 select s.session_id into session_id_as_var 
     	 from Session s 
	 where s.session_name = sessionName;

	 select count(*) into total from Section;
	 
	 insert into Section(waitlist_seats, modifier, section_number, course_id, duration, session_id)
	 values 
		(50, modifier, section_number, course_id_as_var, duration, session_id_as_var);
	 
	 if total < (select count(*) from Section)
	 then
		set result = 'success';
	 else
		set result = 'fail';
	 end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertSessionIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `insertSessionIntoDatabase`(
	in session_name varchar(255),
    in start_time date,
    in end_time date,
    in semester_info varchar(255),
	out result varchar(10)
)
begin
	declare semester_id_as_var int(11);
    declare total int;
    
    select s.semester_id into semester_id_as_var from Semester s
    where concat(s.semester_term, ' ', s.semester_year) = semester_info;
    
	select count(*) into total from Session;
    
    insert into Session(session_name, end_date, start_date, semester_id) 
    values(session_name, end_time, start_time, semester_id_as_var);
    
    if total < (select count(*) from Session)
	then
		set result = 'success';
	else
	    set result = 'fail';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listAllCourses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `listAllCourses`()
BEGIN
	select course_title, course_abbreviation
    from Course c;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCourseInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `updateCourseInfo`(
	in oldCourseName varchar(255),
	in newCourseName varchar(255),
    in newCourseAbb varchar(10),
    in newCourseCredit varchar(5),
    out result varchar(100)
)
BEGIN
	declare course_id_as_var int default 10000;
    declare course_subcode_as_var varchar(5);
    declare course_number_as_var varchar(5);
    declare course_abbreviation_as_var varchar(10);
    declare course_level_as_var varchar(2);
    declare total int;
    declare temp boolean;
    select count(*) into total from Course;
    
    select c.course_id into course_id_as_var
    from Course c
    where c.course_title = oldCourseName;
    
    select c.course_subject_code into course_subcode_as_var
    from Course c
    where c.course_title = oldCourseName;
    
    select c.course_number into course_number_as_var
    from Course c
    where c.course_title = oldCourseName;
    
    
    select c.course_level into course_level_as_var
    from Course c
    where c.course_title = oldCourseName;
    
    delete from Course where 
	course_title = oldCourseName;
    
    if total > (select count(*) from Course)
    then
		set temp =true;
	else
		set temp = false;
	end if;
    
	insert into Course(course_id, course_title ,course_subject_code, course_number, course_abbreviation, course_level, course_credit_student) 
    values (course_id_as_var, newCourseName, course_subcode_as_var, course_number_as_var, newCourseAbb,  course_level_as_var, newCourseCredit);
    
    if total = (select count(*) from Course)  and temp = true
	then
		set result = 'success';
	elseif total > (select count(*) from Course) and temp = false
    then
		set result = 'delete fail, insert success';
	elseif total < (select count(*) from Course) and temp = true
    then
		set result = 'delete success, insert fail';
	else
		set result = 'delete and insert both fail';
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateInstructorBannerID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jiangs1`@`%` PROCEDURE `updateInstructorBannerID`(
	in bannerID char(9),
    in instructorName varchar(255),
    out result varchar(100)
)
BEGIN
	declare banner_id_as_var char(9);
    
	update Instructor
    set banner_ID = bannerID
    where concat(first_name, " ", last_name) = instructorName;
    
    select banner_id into banner_id_as_var from Instructor
    where  concat(first_name, " ", last_name) = instructorName;
    
    if banner_id_as_var is null or banner_id_as_var = ''
    then
		set result = 'fail';
	else
		set result = 'success';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateInstructorOfScheduleIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `updateInstructorOfScheduleIntoDatabase`(
	in instructorName varchar(255),
    in oldInstructorName varchar(255),
    in day_of_week varchar(5),
    in start_time varchar(255),
    in room_info varchar(255),
    in course_title varchar(45),
    in section_number varchar(5),
    out result varchar(100)
 )
begin
	declare instructor_id_as_var int default 10000;
    declare old_instructor_id_as_var int default 10000;
    declare time_slot_id_as_var int default 10000;
    declare section_id_as_var int default 10000;
    declare room_id_as_var int default 10000;
    declare instructor_available boolean default false;
    declare schedule_exist boolean default true;
    declare tempCount int default 0;
    declare n int default 0;
    declare i int default 0;
    
	declare total int;
    declare temp boolean;
    select count(*) into total from Schedules;
    
    # check old instructor name is null or not.
    if oldInstructorName is null
    then
		set old_instructor_id_as_var = null;
	else
		(select instructor_id into  old_instructor_id_as_var from
		Schedules sch
		where room_id_as_var = sch.room_id and time_slot_id_as_var = sch.time_slot_id and sch.section_id = section_id_as_var); 
    end if;

    select i.instructor_id into instructor_id_as_var 
    from Instructor i
    where instructorName = concat(i.first_name, ' ', i.last_name);
    
    select ts.time_slot_id into time_slot_id_as_var
    from Time_Slot ts
    where ts.day_of_week = day_of_week and ts.start_time = convert(start_time, time);
    
    select r.room_id into room_id_as_var 
    from Room r
    where concat(r.building, ' ', r.room_number) = room_info;
    
    select s.section_id into section_id_as_var 
    from section s
    join course c using (course_id)
    where c.course_title = course_title and s.section_number = section_number;
    
    
    # check whether the schedule exists. 
    /*if (select * 
		from Schedules sch
		where sch.room_id = room_id_as_var and 
			  sch.time_slot_id = time_slot_id_as_var and 
              sch.section_id = section_id_as_var and 
              sch.instructor_id = old_instructor_id_as_var) = ''
    then
		set schedule_exist = false;
    end if;*/
    set tempCount = (select count(*) 
					 from Schedules sch
					 where sch.room_id = room_id_as_var and 
						   sch.time_slot_id = time_slot_id_as_var and 
						   sch.section_id = section_id_as_var and 
						   sch.instructor_id = old_instructor_id_as_var);
    
    if temp = 0
    then
		set schedule_exist = false;
    end if;
        
        
    # check whether instructor is available
    select max(schedule_id) into n from Schedules;
    set i = 1;
    set instructor_available = true;
    while i <= n do
		if instructor_id_as_var = 
        (select instructor_id from Schedules sch
			where sch.schedule_id = i
		)
        and 
        time_slot_id_as_var = 
        (select time_slot_id from Schedules sch
			where sch.schedule_id = i
		)
		then
			set instructor_available = false;
		end if;
        set i = i+1;
	end while;
    
    # Only when meet both conditions, update will work.
    if(instructor_available = false)
    then
        set result = 'The professor is teaching other class at that time';
	elseif(schedule_exist = false)
    then
        set result = 'The schedule does not exist, cannot be updated';
	elseif(instructor_available = true and schedule_exist = true)
    then
    
		delete from Schedules where 
		time_slot_id = time_slot_id_as_var and room_id = room_id_as_var;
        
        
        if total > (select count(*) from Schedules)
		then
			set temp = true;
		else
			set temp = false;
		end if;
    
		insert into Schedules(instructor_id, section_id, room_id, time_slot_id) 
		values 
			(instructor_id_as_var, section_id_as_var, room_id_as_var, time_slot_id_as_var);
        
        
		if total = (select count(*) from Schedules) and temp = true
		then
			set result = 'success';
		elseif total > (select count(*) from Schedules) and temp = false
		then
			set result = 'delete fail, insert success';
		elseif total < (select count(*) from Schedules) and temp = true
		then
			set result = 'delete success, insert fail';
		else
			set result = 'delete and insert both fail';
		end if;
        
	end if;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateRoomOfScheduleIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `updateRoomOfScheduleIntoDatabase`(
	in instructorName varchar(255),
    in day_of_week varchar(5),
    in start_time time,
    in room_info varchar(255),
    in course_title varchar(255),
    in section_number varchar(5),
    out result varchar(100)
 )
begin
 
	declare instructor_id_as_var int default 10000;
    declare time_slot_id_as_var int default 10000;
    declare section_id_as_var int default 10000;
    declare room_id_as_var int default 10000;
    
    declare beenAssigned boolean default false;
    declare n int default 0;
    declare i int default 0;
    
    # for result
    declare total int;
    declare temp boolean;
    select count(*) into total from Schedules;
    
    select r.room_id into room_id_as_var 
    from Room r
    where concat(r.building, ' ', r.room_number) = room_info;
    
    select ts.time_slot_id into time_slot_id_as_var
    from Time_Slot ts
    where ts.day_of_week = day_of_week and ts.start_time = start_time;
    
    select max(schedule_id) into n from Schedules;
    set i = 1;
    set beenAssigned = false;
    while i <= n do
		if room_id_as_var = 
        (select room_id from Schedules sch
			where sch.schedule_id = i
        )
        and 
        time_slot_id_as_var = 
        (select time_slot_id from Schedules sch
			where sch.schedule_id = i)
		then
			set beenAssigned = true;
		end if;
        set i = i+1;
	end while;
    
    
    
	if beenAssigned = false
    then
		select i.instructor_id into instructor_id_as_var 
		from Instructor i
		where concat(i.first_name, " ", i.last_name) = instructorName;
    
		select s.section_id into section_id_as_var 
		from Section s
		join Course c using (course_id)
		where c.course_title = course_title and s.section_number = section_number;
    
		delete from Schedules where 
		time_slot_id = time_slot_id_as_var and section_id = section_id_as_var and instructor_id = instructor_id_as_var;
        
        # check delete
         if total > (select count(*) from Schedules)
		 then
			set temp =true;
		 else
			set temp = false;
		 end if;
    
		insert into Schedules(instructor_id, section_id, room_id, time_slot_id) 
		values (instructor_id_as_var, section_id_as_var, room_id_as_var, time_slot_id_as_var);
        
        # check insert.
	    if total = (select count(*) from Schedules)  and temp = true
		then
			set result = 'success';
		elseif total > (select count(*) from Schedules) and temp = false
		then
			set result = 'delete fail, insert success';
		elseif total < (select count(*) from Schedules) and temp = true
		then
			set result = 'delete success, insert fail';
		else
			set result = 'delete and insert both fail';
		end if;
        
    
    else
		set result = 'This room cannot been assigned! because it is already been assigned ';
    end if;
 
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateSectionOfScheduleIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jiangs1`@`%` PROCEDURE `updateSectionOfScheduleIntoDatabase`(
	in instructorName varchar(255),
    in day_of_week varchar(5),
    in start_time time,
    in room_info varchar(255),
    in course_title varchar(255),
    in section_number varchar(5),
    out result varchar(100)
 )
begin
	declare instructor_id_as_var int default 10000;
    declare time_slot_id_as_var int default 10000;
    declare section_id_as_var int default 10000;
    declare room_id_as_var int default 10000;
    
    
    # for new section
    declare modifier varchar(45);
    declare duration int(11);
    declare start_date_in_session Date;
    declare end_date_in_session Date;
    declare course_abbreviation varchar(255);
    
    
    # for result;
    declare total int;
    declare temp boolean;
    select count(*) into total from Schedules;

    
    
	select i.instructor_id into instructor_id_as_var 
    from Instructor i
    where concat(i.first_name, " ", i.last_name) = instructorName;
    
    select ts.time_slot_id into time_slot_id_as_var
    from Time_Slot ts
    where ts.day_of_week = day_of_week and ts.start_time = start_time;
    
    # check section exist or not, if it doesn't exist, insert the new section into Section Table.
    if (select s.section_id 
		from Section s 
		join Course c using (course_id) 
		where c.course_title = course_title and s.section_number = section_number) = ''
	then
		select s.modifier, s.duration, s.start_date_in_session, s.end_date_in_session, s.course_abbreviation
		into modifier, duration, start_date_in_session, end_date_in_session, course_abbreviation
		from Schedules sch
		join Section s using (section_id)
		where sch.instructor_id = instructor_id_as_var and sch.time_slot_id = time_slot_id_as_var;
        
		call insertSectionIntoDatabase(modifier, section_number, duration, start_date_in_session, end_date_in_session, course_abbreviation);
	end if;
		
    
    select s.section_id into section_id_as_var 
    from Section s
    join Course c using (course_id)
    where c.course_title = course_title and s.section_number = section_number;
    
    select i.instructor_id into instructor_id_as_var 
    from Instructor i
    where concat(i.first_name, " ", i.last_name) = instructorName;
    
    select ts.time_slot_id into time_slot_id_as_var
    from Time_Slot ts
    where ts.day_of_week = day_of_week and ts.start_time = start_time;
    
    select r.room_id into room_id_as_var 
    from Room r
    where concat(r.building, ' ', r.room_number) = room_info;
    
    
    delete from Schedules where 
    time_slot_id = time_slot_id_as_var and room_id = room_id_as_var and instructor_id = instructor_id_as_var;
    
	# check delete
	if total > (select count(*) from Schedules)
	then
		set temp =true;
	else
		set temp = false;
	end if;    

    
    insert into Schedules(instructor_id, section_id, room_id, time_slot_id) 
    values (instructor_id_as_var, section_id_as_var, room_id_as_var, time_slot_id_as_var);
    
    
    
            
	# check insert.
	if total = (select count(*) from Schedules)  and temp = true
	then
		set result = 'success';
	elseif total > (select count(*) from Schedules) and temp = false
	then
		set result = 'delete fail, insert success';
	elseif total < (select count(*) from Schedules) and temp = true
	then
		set result = 'delete success, insert fail';
	else
		set result = 'delete and insert both fail';
	end if;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTimeSlotOfScheduleIntoDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `updateTimeSlotOfScheduleIntoDatabase`(
	in instructorName varchar(255),
    in day_of_week varchar(5),
    in start_time time,
    in room_info varchar(255),
    in course_title varchar(255),
    in section_number varchar(5),
    out result varchar(100)
 )
begin
	declare instructor_id_as_var int default 10000;
    declare time_slot_id_as_var int default 10000;
    declare section_id_as_var int default 10000;
    declare room_id_as_var int default 10000;
    
    # for result
    declare total int;
    declare temp boolean;
    select count(*) into total from Schedules;
    
	select ts.time_slot_id into time_slot_id_as_var
    from Time_Slot ts
    where ts.day_of_week = day_of_week and ts.start_time = start_time;
 
	select i.instructor_id into instructor_id_as_var 
    from Instructor i
    where concat(i.first_name, " ", i.last_name) = instructorName;
    
    select r.room_id into room_id_as_var 
    from Room r
    where concat(r.building, ' ', r.room_number) = room_info;
    
    select s.section_id into section_id_as_var 
    from Section s
    join Course c using (course_id)
    where c.course_title = course_title and s.section_number = section_number;
    
    #check delete
    if total > (select count(*) from Course)
    then
		set temp =true;
	else
		set temp = false;
	end if;
    
	delete from Schedules where 
    room_id = room_id_as_var and section_id = section_id_as_var and instructor_id = instructor_id_as_var;
    
	insert into Schedules(instructor_id, section_id, room_id, time_slot_id) 
    values (instructor_id_as_var, section_id_as_var, room_id_as_var, time_slot_id_as_var);
    
    # check insert and delete
    if total = (select count(*) from Time_Slot)  and temp = true
	then
		set result = 'success';
	elseif total > (select count(*) from Time_Slot) and temp = false
    then
		set result = 'delete fail, insert success';
	elseif total < (select count(*) from Time_Slot) and temp = true
    then
		set result = 'delete success, insert fail';
	else
		set result = 'delete and insert both fail';
	end if;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `show_schedules_info`
--

/*!50001 DROP VIEW IF EXISTS `show_schedules_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jiangs1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `show_schedules_info` AS select `r`.`building` AS `building`,`r`.`campus` AS `campus`,`r`.`room_type` AS `room_type`,`r`.`room_capacity` AS `room_capacity`,`r`.`room_number` AS `room_number`,`c`.`course_id` AS `course_id`,`c`.`course_title` AS `course_title`,`c`.`course_credit_student` AS `course_credit_student`,`c`.`course_subject_code` AS `course_subject_code`,`c`.`course_number` AS `course_number`,`c`.`course_abbreviation` AS `course_abbreviation`,`c`.`course_level` AS `course_level`,`s`.`section_number` AS `section_number`,`s`.`modifier` AS `modifier`,`ts`.`day_of_week` AS `day_of_week`,`ts`.`start_time` AS `start_time`,`ts`.`end_time` AS `end_time`,`s`.`section_id` AS `section_id`,`ts`.`time_slot_id` AS `time_slot_id`,`i`.`instructor_id` AS `instructor_id`,`r`.`room_id` AS `room_id`,concat(`i`.`first_name`,' ',`i`.`last_name`) AS `Instructor_Name` from (((((`schedules` `ss` join `section` `s` on((`ss`.`section_id` = `s`.`section_id`))) join `course` `c` on((`s`.`course_id` = `c`.`course_id`))) join `room` `r` on((`ss`.`room_id` = `r`.`room_id`))) join `instructor` `i` on((`ss`.`instructor_id` = `i`.`instructor_id`))) join `time_slot` `ts` on((`ss`.`time_slot_id` = `ts`.`time_slot_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-12 18:41:40
