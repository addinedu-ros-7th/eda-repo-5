-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: msdb.cvyy46quatrs.ap-northeast-2.rds.amazonaws.com    Database: vector
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `comp_tech`
--

DROP TABLE IF EXISTS `comp_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comp_tech` (
  `comp_id` int NOT NULL,
  `tech_id` int NOT NULL,
  `tech_cnt` int DEFAULT NULL,
  PRIMARY KEY (`comp_id`,`tech_id`),
  KEY `tech_id` (`tech_id`),
  CONSTRAINT `comp_tech_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `company` (`comp_id`),
  CONSTRAINT `comp_tech_ibfk_2` FOREIGN KEY (`tech_id`) REFERENCES `tech` (`tech_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `comp_id` int NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(32) DEFAULT NULL,
  `comp_form` varchar(255) DEFAULT NULL,
  `sector` varchar(32) DEFAULT NULL,
  `employee_num` int DEFAULT NULL,
  `establish` date DEFAULT NULL,
  `revenue2021` varchar(16) DEFAULT NULL,
  `revenue2022` varchar(16) DEFAULT NULL,
  `revenue2023` varchar(16) DEFAULT NULL,
  `comp_url` varchar(256) DEFAULT NULL,
  `comp_sid` varchar(255) DEFAULT NULL,
  `benefits` text,
  `avg_salary` int DEFAULT NULL,
  `revenue2021int` bigint DEFAULT NULL,
  `revenue2022int` bigint DEFAULT NULL,
  `revenue2023int` bigint DEFAULT NULL,
  PRIMARY KEY (`comp_id`),
  UNIQUE KEY `comp_sid` (`comp_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=1731 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `national_pension_240924`
--

DROP TABLE IF EXISTS `national_pension_240924`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `national_pension_240924` (
  `자료생성년월` varchar(10) DEFAULT NULL,
  `사업장명` varchar(1000) DEFAULT NULL,
  `사업자등록번호` varchar(100) DEFAULT NULL,
  `사업장가입상태코드_1_등록_2_탈퇴` varchar(10) DEFAULT NULL,
  `우편번호` varchar(10) DEFAULT NULL,
  `사업장지번상세주소` varchar(1000) DEFAULT NULL,
  `사업장도로명상세주소` varchar(1000) DEFAULT NULL,
  `고객법정동주소코드` varchar(100) DEFAULT NULL,
  `고객행정동주소코드` varchar(100) DEFAULT NULL,
  `법정동주소광역시도코드` varchar(100) DEFAULT NULL,
  `법정동주소광역시시군구코드` varchar(100) DEFAULT NULL,
  `법정동주소광역시시군구읍면동코드` varchar(100) DEFAULT NULL,
  `사업장형태구분코드_1_법인_2_개인` varchar(100) DEFAULT NULL,
  `사업장업종코드` varchar(100) DEFAULT NULL,
  `사업장업종코드명` varchar(100) DEFAULT NULL,
  `적용일자` varchar(10) DEFAULT NULL,
  `재등록일자` varchar(10) DEFAULT NULL,
  `탈퇴일자` varchar(10) DEFAULT NULL,
  `가입자수` decimal(55,0) DEFAULT NULL,
  `당월고지금액` decimal(55,0) DEFAULT NULL,
  `신규취득자수` decimal(55,0) DEFAULT NULL,
  `상실가입자수` decimal(55,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recruit`
--

DROP TABLE IF EXISTS `recruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruit` (
  `recruit_id` int NOT NULL AUTO_INCREMENT,
  `post_url` varchar(255) DEFAULT NULL,
  `mainjob` text,
  `pref` text,
  `work_env` text,
  `posted_date` date DEFAULT NULL,
  `saramjob_id` int NOT NULL,
  `post_title` varchar(128) DEFAULT NULL,
  `comp_id` int DEFAULT NULL,
  `post_txt` text,
  PRIMARY KEY (`recruit_id`),
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `comp_id` FOREIGN KEY (`comp_id`) REFERENCES `company` (`comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recruit_tech`
--

DROP TABLE IF EXISTS `recruit_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruit_tech` (
  `recruit_id` int NOT NULL,
  `tech_id` int NOT NULL,
  PRIMARY KEY (`recruit_id`,`tech_id`),
  KEY `tech_id` (`tech_id`),
  CONSTRAINT `fk_recruit_id` FOREIGN KEY (`recruit_id`) REFERENCES `recruit` (`recruit_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `saramin`
--

DROP TABLE IF EXISTS `saramin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saramin` (
  `기업형태` varchar(16) DEFAULT NULL,
  `산업업종` varchar(16) DEFAULT NULL,
  `사원수` int DEFAULT NULL,
  `설립연도` date DEFAULT NULL,
  `매출액` varchar(16) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `id` varchar(16) NOT NULL,
  `기업명` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tech`
--

DROP TABLE IF EXISTS `tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tech` (
  `tech_id` int NOT NULL AUTO_INCREMENT,
  `tech_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`tech_id`),
  UNIQUE KEY `tech_name` (`tech_name`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tech_synonyms`
--

DROP TABLE IF EXISTS `tech_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tech_synonyms` (
  `syn_id` int NOT NULL AUTO_INCREMENT,
  `tech_id` int DEFAULT NULL,
  `syn_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`syn_id`),
  UNIQUE KEY `unique_syn_name` (`syn_name`),
  KEY `fk_tech_id` (`tech_id`),
  CONSTRAINT `fk_tech_id` FOREIGN KEY (`tech_id`) REFERENCES `tech` (`tech_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `comp_id` int NOT NULL,
  `comp_sid` varchar(255) DEFAULT NULL,
  `comp_name` varchar(32) DEFAULT NULL,
  `comp_form` varchar(16) DEFAULT NULL,
  `sector` varchar(32) DEFAULT NULL,
  `employee_num` int DEFAULT NULL,
  `establish` date DEFAULT NULL,
  `benefits` text,
  `revenue2021` varchar(16) DEFAULT NULL,
  `revenue2022` varchar(16) DEFAULT NULL,
  `revenue2023` varchar(16) DEFAULT NULL,
  `comp_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 17:12:57
