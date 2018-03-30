-- MySQL dump 10.13  Distrib 5.7.17, for Win32 (AMD64)
--
-- Host: localhost    Database: egovernance
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `final_results`
--

DROP TABLE IF EXISTS `final_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_results` (
  `idea_subject` varchar(30) DEFAULT NULL,
  `vote_yes` varchar(10) DEFAULT NULL,
  `total_votes` varchar(10) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_results`
--

LOCK TABLES `final_results` WRITE;
/*!40000 ALTER TABLE `final_results` DISABLE KEYS */;
INSERT INTO `final_results` VALUES ('abce  ','3','4.0','PASSED','abc'),('Engineering','4','4.0','PASSED','gurpreet1dec'),('Hargun Ko Maaro','1','1.0','PASSED','abc');
/*!40000 ALTER TABLE `final_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gov_record`
--

DROP TABLE IF EXISTS `gov_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gov_record` (
  `adhaar_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gov_record`
--

LOCK TABLES `gov_record` WRITE;
/*!40000 ALTER TABLE `gov_record` DISABLE KEYS */;
INSERT INTO `gov_record` VALUES ('1400150016001700'),('1400150016001701'),('1400150016001702'),('1400150016001703');
/*!40000 ALTER TABLE `gov_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `division` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin_manjot','corei3inside','admin'),('abc','password','citizen'),('gurpreet1dec','gurpreet1dec','citizen'),('citizen1','password','citizen'),('gsp','123456','citizen'),('gsp','123456','citizen'),('gsp_1','123456','citizen'),('gsp_1','123456','citizen');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_idea`
--

DROP TABLE IF EXISTS `user_idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_idea` (
  `idea_no` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `idea_subject` varchar(60) DEFAULT NULL,
  `idea_description` varchar(200) DEFAULT NULL,
  `pass` varchar(10) DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  PRIMARY KEY (`idea_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_idea`
--

LOCK TABLES `user_idea` WRITE;
/*!40000 ALTER TABLE `user_idea` DISABLE KEYS */;
INSERT INTO `user_idea` VALUES (4,'csdccsdc','sdcsdcd','ds dcf dfdfc dfdfvdfvdfvdv',NULL,NULL),(6,'abc','Building green belt','Building green belt would increase air quality and many more benefits','yes','2017-01-30');
/*!40000 ALTER TABLE `user_idea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdetails` (
  `username` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` varchar(30) DEFAULT NULL,
  `address` varchar(70) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `adhaarid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES ('citizen1','citizen1','20','#1111,abc,xyz','male','1400150016001703'),('gsp','Gurpreet Singh','20','H. NO. 5903 Gali No. 13 Nawankot Asr 143001','male','1400150016001700'),('gsp_1','Gurpreet Singh','20','H. NO. 5903 Gali No. 13 Nawankot Asr 143001','male','1400150016001700'),('gurpreet1dec','Gurpreet Singh','20','#5985,abc area,xyz city','male','1400150016001700');
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote_details`
--

DROP TABLE IF EXISTS `vote_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote_details` (
  `vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `idea_subject` varchar(30) DEFAULT NULL,
  `vote_value` varchar(15) DEFAULT NULL,
  `vote_date` date DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote_details`
--

LOCK TABLES `vote_details` WRITE;
/*!40000 ALTER TABLE `vote_details` DISABLE KEYS */;
INSERT INTO `vote_details` VALUES (12,'abc','Engineering','yes','2017-01-28'),(13,'gurpreet1dec','abce  ','yes','2017-01-28'),(14,'citizen1','abce  ','No','2017-01-28'),(15,'gsp_1','Engineering','yes','2017-01-28'),(16,'gsp_1','abce  ','yes','2017-01-28'),(17,'gsp','abce  ','yes','2017-01-29'),(18,NULL,'Engineering','yes','2017-01-29'),(19,NULL,'Engineering','yes','2017-01-29'),(20,'abc','Hargun Ko Maaro','yes','2017-01-30'),(21,'abc','Building green belt','yes','2017-01-30');
/*!40000 ALTER TABLE `vote_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-31 18:15:17
