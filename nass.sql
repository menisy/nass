-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nass
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.10.1

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
-- Table structure for table `dynamicfields`
--

DROP TABLE IF EXISTS `dynamicfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamicfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'page_layout',
  `page_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamicfields`
--

LOCK TABLES `dynamicfields` WRITE;
/*!40000 ALTER TABLE `dynamicfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `dynamicfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamicform_associations`
--

DROP TABLE IF EXISTS `dynamicform_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamicform_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamicfield_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamicform_associations`
--

LOCK TABLES `dynamicform_associations` WRITE;
/*!40000 ALTER TABLE `dynamicform_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `dynamicform_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamicform_fields`
--

DROP TABLE IF EXISTS `dynamicform_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamicform_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamicfield_id` int(11) DEFAULT NULL,
  `field_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamicform_fields`
--

LOCK TABLES `dynamicform_fields` WRITE;
/*!40000 ALTER TABLE `dynamicform_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `dynamicform_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamicform_values`
--

DROP TABLE IF EXISTS `dynamicform_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamicform_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamicform_field_id` int(11) DEFAULT NULL,
  `dynamicform_association_id` int(11) DEFAULT NULL,
  `text_value` text COLLATE utf8_unicode_ci,
  `resource_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `string_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamicform_values`
--

LOCK TABLES `dynamicform_values` WRITE;
/*!40000 ALTER TABLE `dynamicform_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `dynamicform_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employers`
--

DROP TABLE IF EXISTS `employers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_employers_on_email` (`email`),
  UNIQUE KEY `index_employers_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employers`
--

LOCK TABLES `employers` WRITE;
/*!40000 ALTER TABLE `employers` DISABLE KEYS */;
INSERT INTO `employers` VALUES (1,'companyc2@company.com','$2a$10$4RK2yNrIoAGwP8baD3YPm.oheUrgvrxXBRT4g2Klnm9g6nxuMIuz6',NULL,NULL,NULL,2,'2015-03-20 23:19:26','2015-03-20 22:48:04','196.221.138.32','196.221.138.32','2015-03-20 22:46:58','2015-03-20 23:19:26'),(2,'areegsamy@gmail.com','$2a$10$MBkPYcMq/CeMNPUqrW1uOeNPuka8xzTbBqTmqZhIg2R5DHirwfBLS',NULL,NULL,NULL,1,'2015-03-21 11:27:40','2015-03-21 11:27:40','41.237.239.69','41.237.239.69','2015-03-21 11:27:21','2015-03-21 11:27:40'),(3,'baggins@yahoo.com','$2a$10$j0vwGuE24tT.sNc8VKadaOC6pPqy3TKYOOsVu4urtGhVE2pZrxrzu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2015-03-22 00:46:46','2015-03-22 00:46:46'),(4,'trial@email.com','$2a$10$bhrzcudMUhz0qy9ORjQtx.6804sH7CXzCYMDlnfYd1Ic6DTWXegYO',NULL,NULL,NULL,1,'2015-03-22 01:32:08','2015-03-22 01:32:08','41.237.162.22','41.237.162.22','2015-03-22 01:31:58','2015-03-22 01:32:08'),(5,'sparrow@gmail.com','$2a$10$jFK/fwvmJ36d2mbf4oC5DenOnhOHmy0DAwzn/JfB/3rcz5wV/XZP6',NULL,NULL,NULL,1,'2015-03-23 07:51:14','2015-03-23 07:51:14','41.237.251.165','41.237.251.165','2015-03-23 07:51:00','2015-03-23 07:51:14');
/*!40000 ALTER TABLE `employers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_addresses`
--

DROP TABLE IF EXISTS `refinery_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apart_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `personal_info_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_addresses`
--

LOCK TABLES `refinery_addresses` WRITE;
/*!40000 ALTER TABLE `refinery_addresses` DISABLE KEYS */;
INSERT INTO `refinery_addresses` VALUES (1,NULL,'Saudi Company Buildings, Nozha street, Heliopolis','77','77',NULL,'2015-02-28 13:57:12','2015-02-28 13:57:12',2,1,NULL,NULL),(2,NULL,'Constance Carlson','Petersen Koch Associates','Cole and Mcmillan Inc',NULL,'2015-03-20 22:46:58','2015-03-20 22:46:58',NULL,1,1,NULL);
/*!40000 ALTER TABLE `refinery_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies`
--

DROP TABLE IF EXISTS `refinery_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nob_egypt` text COLLATE utf8_unicode_ci,
  `nob_abroad` text COLLATE utf8_unicode_ci,
  `logo_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `employer_id` int(11) DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies`
--

LOCK TABLES `refinery_companies` WRITE;
/*!40000 ALTER TABLE `refinery_companies` DISABLE KEYS */;
INSERT INTO `refinery_companies` VALUES (1,'Vincent Garner',NULL,'2','2',29,NULL,'2015-03-20 22:46:58','2015-03-20 22:46:58',1,1),(2,'Rhimal',NULL,'1','0',30,NULL,'2015-03-21 11:27:21','2015-03-21 11:27:21',2,1),(3,'Lucy Flowers',NULL,'Hurley Shepherd Plc','.',31,NULL,'2015-03-22 00:46:46','2015-03-22 00:46:46',3,1),(4,'Koli',NULL,'Justice Dawson Trading','.',33,NULL,'2015-03-22 01:31:58','2015-03-22 01:31:58',4,1),(5,'Iona Cunningham',NULL,'Bolton and Collier Traders','.',34,NULL,'2015-03-23 07:51:00','2015-03-23 07:51:00',5,1);
/*!40000 ALTER TABLE `refinery_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_area_translations`
--

DROP TABLE IF EXISTS `refinery_companies_area_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_area_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_companies_area_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_1ddb58ba54c7f64725e1fd413695de52fad14383` (`refinery_companies_area_id`),
  KEY `index_refinery_companies_area_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_area_translations`
--

LOCK TABLES `refinery_companies_area_translations` WRITE;
/*!40000 ALTER TABLE `refinery_companies_area_translations` DISABLE KEYS */;
INSERT INTO `refinery_companies_area_translations` VALUES (1,1,'en','2015-02-28 13:55:33','2015-02-28 13:55:33','Nasr City');
/*!40000 ALTER TABLE `refinery_companies_area_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_areas`
--

DROP TABLE IF EXISTS `refinery_companies_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_areas`
--

LOCK TABLES `refinery_companies_areas` WRITE;
/*!40000 ALTER TABLE `refinery_companies_areas` DISABLE KEYS */;
INSERT INTO `refinery_companies_areas` VALUES (1,'Nasr City',0,'2015-02-28 13:55:33','2015-02-28 13:55:33');
/*!40000 ALTER TABLE `refinery_companies_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_career_level_translations`
--

DROP TABLE IF EXISTS `refinery_companies_career_level_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_career_level_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_companies_career_level_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_a89af0d829f7d50fe63244f29da3d4f1c08388e4` (`refinery_companies_career_level_id`),
  KEY `index_refinery_companies_career_level_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_career_level_translations`
--

LOCK TABLES `refinery_companies_career_level_translations` WRITE;
/*!40000 ALTER TABLE `refinery_companies_career_level_translations` DISABLE KEYS */;
INSERT INTO `refinery_companies_career_level_translations` VALUES (1,1,'en','2015-02-28 13:54:58','2015-02-28 13:54:58','Entry Level');
/*!40000 ALTER TABLE `refinery_companies_career_level_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_career_levels`
--

DROP TABLE IF EXISTS `refinery_companies_career_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_career_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_career_levels`
--

LOCK TABLES `refinery_companies_career_levels` WRITE;
/*!40000 ALTER TABLE `refinery_companies_career_levels` DISABLE KEYS */;
INSERT INTO `refinery_companies_career_levels` VALUES (1,'Entry Level',0,'2015-02-28 13:54:58','2015-02-28 13:54:58');
/*!40000 ALTER TABLE `refinery_companies_career_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_cities`
--

DROP TABLE IF EXISTS `refinery_companies_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_cities`
--

LOCK TABLES `refinery_companies_cities` WRITE;
/*!40000 ALTER TABLE `refinery_companies_cities` DISABLE KEYS */;
INSERT INTO `refinery_companies_cities` VALUES (1,'Cairo',0,'2015-02-28 13:55:15','2015-02-28 13:55:15');
/*!40000 ALTER TABLE `refinery_companies_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_city_translations`
--

DROP TABLE IF EXISTS `refinery_companies_city_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_city_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_companies_city_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_93fb1d82499ab3060b95ae99d7b5d9ed9fa2ed04` (`refinery_companies_city_id`),
  KEY `index_refinery_companies_city_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_city_translations`
--

LOCK TABLES `refinery_companies_city_translations` WRITE;
/*!40000 ALTER TABLE `refinery_companies_city_translations` DISABLE KEYS */;
INSERT INTO `refinery_companies_city_translations` VALUES (1,1,'en','2015-02-28 13:55:15','2015-02-28 13:55:15','Cairo');
/*!40000 ALTER TABLE `refinery_companies_city_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_contact_people`
--

DROP TABLE IF EXISTS `refinery_companies_contact_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_contact_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `land_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_contact_people`
--

LOCK TABLES `refinery_companies_contact_people` WRITE;
/*!40000 ALTER TABLE `refinery_companies_contact_people` DISABLE KEYS */;
INSERT INTO `refinery_companies_contact_people` VALUES (1,'baggins@gmail.com','Stevens and Meyers Associates','Newton and Moreno Plc','Mars','2015-03-20 22:46:58','2015-03-20 22:46:58',1,'Yvette','Mcbride'),(2,'frodo@yahoo.com','Sears Church LLC','Tillman and Sears Traders','Wood','2015-03-20 22:46:58','2015-03-20 22:46:58',1,'Francesca','Best'),(3,'areegsamy@gmail.com','01001775490','0238381475','Prod','2015-03-21 11:27:21','2015-03-21 11:27:21',2,'Areeg','Samy'),(4,'jomana.gamal.com','01148242429','0238382475','Prod','2015-03-21 11:27:21','2015-03-21 11:27:21',2,'Jomana ','Gamal'),(5,'frodo@gmail.com','Bridges and Head Traders','Gonzales Ramirez Traders','Keit','2015-03-22 00:46:46','2015-03-22 00:46:46',3,'Illiana','Clemons'),(6,'frodo@gmail.com','Ramos Newman Co','May and Roman LLC','Higg','2015-03-22 00:46:46','2015-03-22 00:46:46',3,'Eliana','Sexton'),(7,'jack@hotmail.com','Holman Riddle LLC','Ballard and Stone Co','Brit','2015-03-22 01:31:58','2015-03-22 01:31:58',4,'Germane','Willis'),(8,'baggins@hotmail.com','Rogers Harmon Co','House Perkins Plc','Dunl','2015-03-22 01:31:58','2015-03-22 01:31:58',4,'Frances','Ray'),(9,'baggins@gmail.com','Blanchard and Wyatt Co','Alford Hardin Traders','Roma','2015-03-23 07:51:00','2015-03-23 07:51:00',5,'Dara','Morse'),(10,'jack@gmail.com','Mack and Lester Inc','Mason Kane Co','Cope','2015-03-23 07:51:00','2015-03-23 07:51:00',5,'Grace','Solis');
/*!40000 ALTER TABLE `refinery_companies_contact_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_education_level_translations`
--

DROP TABLE IF EXISTS `refinery_companies_education_level_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_education_level_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_companies_education_level_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_a8821ccf07b40d05c293d085c1dc1c4bc2b86543` (`refinery_companies_education_level_id`),
  KEY `index_refinery_companies_education_level_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_education_level_translations`
--

LOCK TABLES `refinery_companies_education_level_translations` WRITE;
/*!40000 ALTER TABLE `refinery_companies_education_level_translations` DISABLE KEYS */;
INSERT INTO `refinery_companies_education_level_translations` VALUES (1,1,'en','2015-02-28 13:54:38','2015-02-28 13:54:38','Bachelor');
/*!40000 ALTER TABLE `refinery_companies_education_level_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_education_levels`
--

DROP TABLE IF EXISTS `refinery_companies_education_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_education_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_education_levels`
--

LOCK TABLES `refinery_companies_education_levels` WRITE;
/*!40000 ALTER TABLE `refinery_companies_education_levels` DISABLE KEYS */;
INSERT INTO `refinery_companies_education_levels` VALUES (1,'Bachelor',0,'2015-02-28 13:54:38','2015-02-28 13:54:38');
/*!40000 ALTER TABLE `refinery_companies_education_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_industries`
--

DROP TABLE IF EXISTS `refinery_companies_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_industries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_industries`
--

LOCK TABLES `refinery_companies_industries` WRITE;
/*!40000 ALTER TABLE `refinery_companies_industries` DISABLE KEYS */;
INSERT INTO `refinery_companies_industries` VALUES (1,'IT',0,'2015-02-28 13:52:02','2015-02-28 13:52:02');
/*!40000 ALTER TABLE `refinery_companies_industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_industry_translations`
--

DROP TABLE IF EXISTS `refinery_companies_industry_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_industry_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_companies_industry_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_32c84dd0b1986beb8f02bd338ac74376636fab07` (`refinery_companies_industry_id`),
  KEY `index_refinery_companies_industry_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_industry_translations`
--

LOCK TABLES `refinery_companies_industry_translations` WRITE;
/*!40000 ALTER TABLE `refinery_companies_industry_translations` DISABLE KEYS */;
INSERT INTO `refinery_companies_industry_translations` VALUES (1,1,'en','2015-02-28 13:52:02','2015-02-28 13:52:02','IT');
/*!40000 ALTER TABLE `refinery_companies_industry_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_job_applications`
--

DROP TABLE IF EXISTS `refinery_companies_job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_job_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_job_applications`
--

LOCK TABLES `refinery_companies_job_applications` WRITE;
/*!40000 ALTER TABLE `refinery_companies_job_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_companies_job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_job_role_translations`
--

DROP TABLE IF EXISTS `refinery_companies_job_role_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_job_role_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_companies_job_role_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_e5bc025265bf2c363d5fe682f2f78d1af09cb84f` (`refinery_companies_job_role_id`),
  KEY `index_refinery_companies_job_role_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_job_role_translations`
--

LOCK TABLES `refinery_companies_job_role_translations` WRITE;
/*!40000 ALTER TABLE `refinery_companies_job_role_translations` DISABLE KEYS */;
INSERT INTO `refinery_companies_job_role_translations` VALUES (1,1,'en','2015-02-28 13:52:27','2015-02-28 13:52:27','Technician');
/*!40000 ALTER TABLE `refinery_companies_job_role_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_job_roles`
--

DROP TABLE IF EXISTS `refinery_companies_job_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_job_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_job_roles`
--

LOCK TABLES `refinery_companies_job_roles` WRITE;
/*!40000 ALTER TABLE `refinery_companies_job_roles` DISABLE KEYS */;
INSERT INTO `refinery_companies_job_roles` VALUES (1,'Technician',0,'2015-02-28 13:52:27','2015-02-28 13:52:27');
/*!40000 ALTER TABLE `refinery_companies_job_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_job_type_translations`
--

DROP TABLE IF EXISTS `refinery_companies_job_type_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_job_type_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_companies_job_type_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_0a23e6bc22e5f4efcda570c83e3c03268fee795c` (`refinery_companies_job_type_id`),
  KEY `index_refinery_companies_job_type_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_job_type_translations`
--

LOCK TABLES `refinery_companies_job_type_translations` WRITE;
/*!40000 ALTER TABLE `refinery_companies_job_type_translations` DISABLE KEYS */;
INSERT INTO `refinery_companies_job_type_translations` VALUES (1,1,'en','2015-02-28 13:52:42','2015-02-28 13:52:42','Full Time');
/*!40000 ALTER TABLE `refinery_companies_job_type_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_job_types`
--

DROP TABLE IF EXISTS `refinery_companies_job_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_job_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_job_types`
--

LOCK TABLES `refinery_companies_job_types` WRITE;
/*!40000 ALTER TABLE `refinery_companies_job_types` DISABLE KEYS */;
INSERT INTO `refinery_companies_job_types` VALUES (1,'Full Time',0,'2015-02-28 13:52:42','2015-02-28 13:52:42');
/*!40000 ALTER TABLE `refinery_companies_job_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_companies_jobs`
--

DROP TABLE IF EXISTS `refinery_companies_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_companies_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `salary_from` int(11) DEFAULT NULL,
  `salary_to` int(11) DEFAULT NULL,
  `incentive` text COLLATE utf8_unicode_ci,
  `days_off` text COLLATE utf8_unicode_ci,
  `social_insurance` tinyint(1) DEFAULT NULL,
  `medical_insurance` tinyint(1) DEFAULT NULL,
  `transportation` tinyint(1) DEFAULT NULL,
  `job_description` text COLLATE utf8_unicode_ci,
  `qualifications` text COLLATE utf8_unicode_ci,
  `work_conditions` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `job_role_id` int(11) DEFAULT NULL,
  `job_type_id` int(11) DEFAULT NULL,
  `education_level_id` int(11) DEFAULT NULL,
  `career_level_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_companies_jobs`
--

LOCK TABLES `refinery_companies_jobs` WRITE;
/*!40000 ALTER TABLE `refinery_companies_jobs` DISABLE KEYS */;
INSERT INTO `refinery_companies_jobs` VALUES (1,'Areeg Samy',2,'2015-03-21',2000,3000,'500','2',1,0,1,'Product Designer - Concept development ','Design background','bla bla bla','2015-03-21 11:39:02','2015-03-21 11:39:02',2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,'Product Designer',NULL),(2,'Beck Montoya',306,'2017-05-05',0,0,'Laboriosam, aute tenetur voluptas aliquam qui voluptates ducimus, a non sequi voluptas veritatis quibusdam praesentium omnis.','Repudiandae repellendus. Autem quis enim et architecto sed omnis.',1,0,0,'Quaerat ducimus, excepteur eum enim dicta molestiae eos sint ullamco ut magna modi ratione iusto facere dignissimos eaque consequuntur.','Enim qui iste Nam nesciunt, similique quia velit praesentium asperiores a consectetur.','Modi odit aut ut dolor eius non quisquam exercitationem ad minima ea perferendis.','2015-03-23 07:51:44','2015-03-23 07:51:44',5,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Ullamco molestias consectetur non eu aliquam est animi irure amet neque','Dolor recusandae Libero suscipit enim tempora quis');
/*!40000 ALTER TABLE `refinery_companies_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_event_translations`
--

DROP TABLE IF EXISTS `refinery_event_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_event_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_event_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_event_translations_on_refinery_event_id` (`refinery_event_id`),
  KEY `index_refinery_event_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_event_translations`
--

LOCK TABLES `refinery_event_translations` WRITE;
/*!40000 ALTER TABLE `refinery_event_translations` DISABLE KEYS */;
INSERT INTO `refinery_event_translations` VALUES (1,1,'ar','2015-03-23 23:40:46','2015-03-23 23:41:46','بالعربي احسن','<p><span style=\"background-color: transparent;\">بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن</span>\r\n</p>','سجل الآن'),(2,1,'en','2015-03-23 23:40:56','2015-03-23 23:40:56','Heidi Mcmahon','<p>Nullam sagittis. Aenean imperdiet. Aliquam lobortis. Duis lobortis massa imperdiet quam.</p>\r\n<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Curabitur a felis in nunc fringilla tristique. Nullam vel sem. Quisque malesuada placerat nisl.</p>\r\n<p>Donec posuere vulputate arcu. Vestibulum volutpat pretium libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed fringilla mauris sit amet nibh.</p>','Apply Now');
/*!40000 ALTER TABLE `refinery_event_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_events`
--

DROP TABLE IF EXISTS `refinery_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_events`
--

LOCK TABLES `refinery_events` WRITE;
/*!40000 ALTER TABLE `refinery_events` DISABLE KEYS */;
INSERT INTO `refinery_events` VALUES (1,'بالعربي احسن','2015-04-20','2015-04-22','<p><span style=\"background-color: transparent;\">بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن بالعربي احسن</span>\r\n</p>','http://google.com','سجل الآن',20,0,'2015-03-23 23:40:45','2015-03-23 23:41:46');
/*!40000 ALTER TABLE `refinery_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_home_photo_translations`
--

DROP TABLE IF EXISTS `refinery_home_photo_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_home_photo_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_home_photo_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_36240bec5000cde81225b387c53b646ddb43c7a7` (`refinery_home_photo_id`),
  KEY `index_refinery_home_photo_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_home_photo_translations`
--

LOCK TABLES `refinery_home_photo_translations` WRITE;
/*!40000 ALTER TABLE `refinery_home_photo_translations` DISABLE KEYS */;
INSERT INTO `refinery_home_photo_translations` VALUES (1,1,'en','2014-11-02 01:42:57','2014-11-02 01:54:51','<p>some description</p>','http://wiki.com'),(2,2,'en','2014-11-02 01:43:35','2014-11-02 01:53:57','<p>hello</p>','http://google.com');
/*!40000 ALTER TABLE `refinery_home_photo_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_home_photos`
--

DROP TABLE IF EXISTS `refinery_home_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_home_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `photo_id` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_home_photos`
--

LOCK TABLES `refinery_home_photos` WRITE;
/*!40000 ALTER TABLE `refinery_home_photos` DISABLE KEYS */;
INSERT INTO `refinery_home_photos` VALUES (1,'<p>some description</p>',21,'http://wiki.com',0,'2014-11-02 01:42:57','2014-11-29 14:48:46',NULL),(2,'<p>hello</p>',9,'http://google.com',1,'2014-11-02 01:43:35','2014-11-02 01:53:57',NULL);
/*!40000 ALTER TABLE `refinery_home_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_image_page_translations`
--

DROP TABLE IF EXISTS `refinery_image_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_image_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_image_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_186c9a170a0ab319c675aa80880ce155d8f47244` (`refinery_image_page_id`),
  KEY `index_refinery_image_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_image_page_translations`
--

LOCK TABLES `refinery_image_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_image_page_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_image_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_image_pages`
--

DROP TABLE IF EXISTS `refinery_image_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_image_pages` (
  `image_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'page',
  PRIMARY KEY (`id`),
  KEY `index_refinery_image_pages_on_image_id` (`image_id`),
  KEY `index_refinery_image_pages_on_page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_image_pages`
--

LOCK TABLES `refinery_image_pages` WRITE;
/*!40000 ALTER TABLE `refinery_image_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_image_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_images`
--

DROP TABLE IF EXISTS `refinery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `image_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_images`
--

LOCK TABLES `refinery_images` WRITE;
/*!40000 ALTER TABLE `refinery_images` DISABLE KEYS */;
INSERT INTO `refinery_images` VALUES (1,'image/jpeg','building.jpeg',347844,670,447,'2014/09/13/00_32_40_688_building.jpeg','2014-09-13 00:32:40','2014-09-13 00:32:40'),(2,'image/png','auto.png',29268,83,98,'2014/09/13/00_37_19_107_auto.png','2014-09-13 00:37:19','2014-09-13 00:37:19'),(3,'image/png','build.png',24931,79,105,'2014/09/13/00_37_37_873_build.png','2014-09-13 00:37:37','2014-09-13 00:37:37'),(4,'image/jpeg','guy.jpg',96394,674,449,'2014/09/13/00_39_26_773_guy.jpg','2014-09-13 00:39:26','2014-09-13 00:39:26'),(5,'image/jpeg','IMG_1413 copy.JPG',75702,567,378,'2014/09/30/15_49_03_837_IMG_1413_copy.JPG','2014-09-30 15:49:03','2014-09-30 15:49:03'),(6,'image/jpeg','BL_hor_EldZ_GIZ_Arabic.jpg',13271,506,158,'2014/11/02/01_36_58_120_BL_hor_EldZ_GIZ_Arabic.jpg','2014-11-02 01:36:58','2014-11-02 01:36:58'),(7,'image/jpeg','English logo.jpg',120564,403,376,'2014/11/02/01_36_58_174_English_logo.jpg','2014-11-02 01:36:58','2014-11-02 01:36:58'),(8,'image/jpeg','building copy.jpeg',237992,670,303,'2014/11/02/01_42_40_37_building_copy.jpeg','2014-11-02 01:42:40','2014-11-02 01:42:40'),(9,'image/jpeg','guy copy.jpg',62868,674,303,'2014/11/02/01_43_28_271_guy_copy.jpg','2014-11-02 01:43:28','2014-11-02 01:43:28'),(11,'image/jpeg','11.jpg',730516,920,650,'2014/11/13/12_39_47_42_11.jpg','2014-11-13 12:39:47','2014-11-13 12:39:47'),(12,'image/jpeg','Mechatronics 2.jpg',73715,320,213,'2014/11/29/00_27_56_365_Mechatronics_2.jpg','2014-11-29 00:27:56','2014-11-29 00:27:56'),(14,'image/jpeg','future.jpg',24166,660,350,'2014/11/29/00_46_22_623_future.jpg','2014-11-29 00:46:22','2014-11-29 00:46:22'),(15,'image/jpeg','7.jpg',13578,320,180,'2014/11/29/00_46_45_348_7.jpg','2014-11-29 00:46:45','2014-11-29 00:46:45'),(16,'image/jpeg','FACTORY DEVELOPMENT.jpg',99026,660,371,'2014/11/29/00_50_39_642_FACTORY_DEVELOPMENT.jpg','2014-11-29 00:50:39','2014-11-29 00:50:39'),(17,'image/jpeg','continous development.jpg',31440,320,180,'2014/11/29/00_51_59_86_continous_development.jpg','2014-11-29 00:51:59','2014-11-29 00:51:59'),(18,'image/jpeg','guyimage.JPG',177412,660,440,'2014/11/29/00_55_10_960_guyimage.JPG','2014-11-29 00:55:10','2014-11-29 00:55:10'),(20,'image/jpeg','rspect2.jpg',21551,320,226,'2014/11/29/00_58_34_341_rspect2.jpg','2014-11-29 00:58:34','2014-11-29 00:58:34'),(21,'image/jpeg','Last Gen View 3.jpg',256221,660,266,'2014/11/29/01_02_15_281_Last_Gen_View_3.jpg','2014-11-29 01:02:15','2014-11-29 01:02:15'),(22,'image/jpeg','PARTNERS.jpg',70655,660,371,'2014/11/29/01_07_57_637_PARTNERS.jpg','2014-11-29 01:07:57','2014-11-29 01:07:57'),(23,'image/jpeg','logo_steep_process.jpg',36723,400,77,'2014/11/29/01_13_27_406_logo_steep_process.jpg','2014-11-29 01:13:27','2014-11-29 01:13:27'),(24,'image/jpeg','NASS-Map.jpg',114305,1123,605,'2015/02/21/10_01_49_909_NASS_Map.jpg','2015-02-21 10:01:49','2015-02-21 10:01:49'),(25,'image/jpeg','robusta.jpg',24036,138,138,'2015/02/23/03_45_59_130_robusta.jpg','2015-02-23 03:45:59','2015-02-23 03:45:59'),(26,'image/png','rhimal_logo_2010_email.png',10223,198,41,'2015/02/23/14_09_50_634_rhimal_logo_2010_email.png','2015-02-23 14:09:50','2015-02-23 14:09:50'),(27,'image/png','rhimal_logo_2010_email.png',10223,198,41,'2015/02/23/14_10_26_405_rhimal_logo_2010_email.png','2015-02-23 14:10:26','2015-02-23 14:10:26'),(28,'image/png','graph1.png',38830,1032,732,'2015/03/20/17_56_00_824_graph1.png','2015-03-20 17:56:00','2015-03-20 17:56:00'),(29,'image/png','graph1.png',38830,1032,732,'2015/03/20/22_46_58_192_graph1.png','2015-03-20 22:46:58','2015-03-20 22:46:58'),(30,'image/png','Furnex 2015 logo Small.png',13571,300,106,'2015/03/21/11_27_21_390_Furnex_2015_logo_Small.png','2015-03-21 11:27:21','2015-03-21 11:27:21'),(31,'image/png','Screen Shot 2015-03-08 at 12.53.19 AM.png',1088991,2560,1600,'2015/03/22/00_46_46_474_Screen_Shot_2015_03_08_at_12.53.19_AM.png','2015-03-22 00:46:46','2015-03-22 00:46:46'),(32,'image/png','graph1.png',38830,1032,732,'2015/03/22/01_31_28_228_graph1.png','2015-03-22 01:31:28','2015-03-22 01:31:28'),(33,'image/png','graph1.png',38830,1032,732,'2015/03/22/01_31_58_353_graph1.png','2015-03-22 01:31:58','2015-03-22 01:31:58'),(34,'image/png','graph1.png',38830,1032,732,'2015/03/23/07_51_00_323_graph1.png','2015-03-23 07:51:00','2015-03-23 07:51:00');
/*!40000 ALTER TABLE `refinery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_news_item_translations`
--

DROP TABLE IF EXISTS `refinery_news_item_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_news_item_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_news_item_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_news_item_translations_on_locale` (`locale`),
  KEY `index_refinery_news_item_translations_fk` (`refinery_news_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_news_item_translations`
--

LOCK TABLES `refinery_news_item_translations` WRITE;
/*!40000 ALTER TABLE `refinery_news_item_translations` DISABLE KEYS */;
INSERT INTO `refinery_news_item_translations` VALUES (1,1,'en','2014-10-21 16:31:31','2014-11-02 01:39:49','Automotive technology gone International','<p class=\"text-align-left\"></p>\r\n<p>Etiam vitae tortor. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. In auctor lobortis lacus. Vivamus quis mi.</p>\r\n<p>Vivamus in erat ut urna cursus vestibulum. Praesent nonummy mi in odio. Vivamus quis mi. Aenean massa. In hac habitasse platea dictumst.</p>\r\n<p>Proin magna. Praesent venenatis metus at tortor pulvinar varius. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Integer tincidunt. Praesent venenatis metus at tortor pulvinar varius.</p>\r\n<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Maecenas malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Suspendisse eu ligula. Pellentesque commodo eros a enim.</p>\r\n<p>Proin magna. Praesent nonummy mi in odio. Vivamus aliquet elit ac nisl. Nullam cursus lacinia erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n<p>Etiam vitae tortor. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. In auctor lobortis lacus. Vivamus quis mi.</p>\r\n<p>Vivamus in erat ut urna cursus vestibulum. Praesent nonummy mi in odio. Vivamus quis mi. Aenean massa. In hac habitasse platea dictumst.</p>\r\n<p>Proin magna. Praesent venenatis metus at tortor pulvinar varius. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Integer tincidunt. Praesent venenatis metus at tortor pulvinar varius.</p>\r\n<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Maecenas malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Suspendisse eu ligula. Pellentesque commodo eros a enim.</p>\r\n<p>Proin magna. Praesent nonummy mi in odio. Vivamus aliquet elit ac nisl. Nullam cursus lacinia erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n<p><br />Etiam vitae tortor. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. In auctor lobortis lacus. Vivamus quis mi.</p>\r\n<p>Vivamus in erat ut urna cursus vestibulum. Praesent nonummy mi in odio. Vivamus quis mi. Aenean massa. In hac habitasse platea dictumst.</p>\r\n<p>Proin magna. Praesent venenatis metus at tortor pulvinar varius. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Integer tincidunt. Praesent venenatis metus at tortor pulvinar varius.</p>\r\n<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Maecenas malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Suspendisse eu ligula. Pellentesque commodo eros a enim.</p>\r\n<p>Proin magna. Praesent nonummy mi in odio. Vivamus aliquet elit ac nisl. Nullam cursus lacinia erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>',NULL,'automotive-technology-gone-international'),(2,2,'en','2014-11-02 01:40:38','2014-11-02 01:40:38','Very important news','<p>Nullam accumsan lorem in dui. Donec sodales sagittis magna. Vestibulum ullamcorper mauris at ligula. Nam commodo suscipit quam.</p>\r\n<p>Phasellus blandit leo ut odio. Donec sodales sagittis magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce commodo aliquam arcu.</p>\r\n<p>Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Fusce pharetra convallis urna. In dui magna, posuere eget, vestibulum et, tempor auctor, justo..</p>\r\n<p>Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed a libero. Donec sodales sagittis magna.</p>\r\n<p>Nullam accumsan lorem in dui. Donec sodales sagittis magna. Vestibulum ullamcorper mauris at ligula. Nam commodo suscipit quam.</p>\r\n<p>Phasellus blandit leo ut odio. Donec sodales sagittis magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce commodo aliquam arcu.</p>\r\n<p>Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Fusce pharetra convallis urna. In dui magna, posuere eget, vestibulum et, tempor auctor, justo..</p>\r\n<p>Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed a libero. Donec sodales sagittis magna.</p>',NULL,'very-important-news');
/*!40000 ALTER TABLE `refinery_news_item_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_news_items`
--

DROP TABLE IF EXISTS `refinery_news_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_news_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `publish_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_news_items_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_news_items`
--

LOCK TABLES `refinery_news_items` WRITE;
/*!40000 ALTER TABLE `refinery_news_items` DISABLE KEYS */;
INSERT INTO `refinery_news_items` VALUES (1,'Automotive technology gone International','<p class=\"text-align-left\"></p>\r\n<p>Etiam vitae tortor. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. In auctor lobortis lacus. Vivamus quis mi.</p>\r\n<p>Vivamus in erat ut urna cursus vestibulum. Praesent nonummy mi in odio. Vivamus quis mi. Aenean massa. In hac habitasse platea dictumst.</p>\r\n<p>Proin magna. Praesent venenatis metus at tortor pulvinar varius. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Integer tincidunt. Praesent venenatis metus at tortor pulvinar varius.</p>\r\n<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Maecenas malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Suspendisse eu ligula. Pellentesque commodo eros a enim.</p>\r\n<p>Proin magna. Praesent nonummy mi in odio. Vivamus aliquet elit ac nisl. Nullam cursus lacinia erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n<p>Etiam vitae tortor. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. In auctor lobortis lacus. Vivamus quis mi.</p>\r\n<p>Vivamus in erat ut urna cursus vestibulum. Praesent nonummy mi in odio. Vivamus quis mi. Aenean massa. In hac habitasse platea dictumst.</p>\r\n<p>Proin magna. Praesent venenatis metus at tortor pulvinar varius. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Integer tincidunt. Praesent venenatis metus at tortor pulvinar varius.</p>\r\n<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Maecenas malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Suspendisse eu ligula. Pellentesque commodo eros a enim.</p>\r\n<p>Proin magna. Praesent nonummy mi in odio. Vivamus aliquet elit ac nisl. Nullam cursus lacinia erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n<p><br />Etiam vitae tortor. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. In auctor lobortis lacus. Vivamus quis mi.</p>\r\n<p>Vivamus in erat ut urna cursus vestibulum. Praesent nonummy mi in odio. Vivamus quis mi. Aenean massa. In hac habitasse platea dictumst.</p>\r\n<p>Proin magna. Praesent venenatis metus at tortor pulvinar varius. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Integer tincidunt. Praesent venenatis metus at tortor pulvinar varius.</p>\r\n<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Maecenas malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Suspendisse eu ligula. Pellentesque commodo eros a enim.</p>\r\n<p>Proin magna. Praesent nonummy mi in odio. Vivamus aliquet elit ac nisl. Nullam cursus lacinia erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>','2014-10-21 16:29:00','2014-10-21 16:31:31','2014-11-02 01:39:49',5,NULL,'','automotive-technology-gone-international'),(2,'Very important news','<p>Nullam accumsan lorem in dui. Donec sodales sagittis magna. Vestibulum ullamcorper mauris at ligula. Nam commodo suscipit quam.</p>\r\n<p>Phasellus blandit leo ut odio. Donec sodales sagittis magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce commodo aliquam arcu.</p>\r\n<p>Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Fusce pharetra convallis urna. In dui magna, posuere eget, vestibulum et, tempor auctor, justo..</p>\r\n<p>Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed a libero. Donec sodales sagittis magna.</p>\r\n<p>Nullam accumsan lorem in dui. Donec sodales sagittis magna. Vestibulum ullamcorper mauris at ligula. Nam commodo suscipit quam.</p>\r\n<p>Phasellus blandit leo ut odio. Donec sodales sagittis magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce commodo aliquam arcu.</p>\r\n<p>Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Fusce pharetra convallis urna. In dui magna, posuere eget, vestibulum et, tempor auctor, justo..</p>\r\n<p>Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed a libero. Donec sodales sagittis magna.</p>','2014-11-02 01:40:00','2014-11-02 01:40:38','2014-11-02 01:40:38',4,NULL,'http://google.com','very-important-news');
/*!40000 ALTER TABLE `refinery_news_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_part_translations`
--

DROP TABLE IF EXISTS `refinery_page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_part_translations_on_refinery_page_part_id` (`refinery_page_part_id`),
  KEY `index_refinery_page_part_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_part_translations`
--

LOCK TABLES `refinery_page_part_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_part_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_part_translations` VALUES (1,1,'en','2014-09-12 22:15:52','2014-11-02 01:34:39','<p class=\"text-align-center\"></p>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p>Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Fusce egestas elit eget lorem. Duis leo. Etiam imperdiet imperdiet orci. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.&#160;Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Fusce egestas elit eget lorem. Duis leo. Etiam imperdiet imperdiet orci. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.</p>\r\n<p>Etiam feugiat lorem non metus. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Sed fringilla mauris sit amet nibh. Nam at tortor in tellus interdum sagittis. Nunc nec neque.</p>\r\n<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Sed lectus. Morbi nec metus. Phasellus dolor. Proin magna.</p>\r\n<p>Nullam dictum felis eu pede mollis pretium. Fusce fermentum odio nec arcu. In consectetuer turpis ut velit. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui.</p>\r\n<p>Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Fusce egestas elit eget lorem. Duis leo. Etiam imperdiet imperdiet orci. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.</p>\r\n<p>Etiam feugiat lorem non metus. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Sed fringilla mauris sit amet nibh. Nam at tortor in tellus interdum sagittis. Nunc nec neque.</p>\r\n<p>In dui magna, posuere eget, hhhh et, tempor auctor, justo. Sed lectus. Morbi nec metus. Phasellus dolor. Proin magna.</p>\r\n<p>Nullam dictum felis eu pede mollis pretium. Fusce fermentum odio nec arcu. In consectetuer turpis ut velit. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui.</p>\r\n</div>'),(2,2,'en','2014-09-12 22:15:52','2014-09-13 01:09:46',''),(3,3,'en','2014-09-12 22:15:52','2014-09-12 22:15:52','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>'),(6,2,'ar','2014-09-13 00:34:26','2014-09-13 00:34:26',''),(8,7,'en','2014-09-13 00:36:30','2014-11-15 07:29:26','<p class=\"text-align-center\"></p>\r\n<div class=\"mid-content\">\r\n</div>'),(9,8,'en','2014-09-13 00:36:30','2014-09-13 00:36:30',''),(11,9,'en','2014-10-21 16:22:59','2014-11-29 00:47:51',''),(12,10,'en','2014-10-21 16:22:59','2014-11-29 00:47:51',''),(13,11,'en','2014-10-21 16:27:07','2014-10-21 16:27:07',''),(14,12,'en','2014-10-21 16:27:07','2014-10-21 16:27:07',''),(17,15,'en','2014-11-02 01:34:39','2014-11-02 01:34:39','<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed mollis, eros et ultrices tempus, mauris ipsum aliquam libero, non adipiscing dolor urna a orci. Nulla sit amet est. Donec vitae orci sed dolor rutrum auctor. Nunc interdum lacus sit amet orci.</p>\r\n<p>Pellentesque dapibus hendrerit tortor. Quisque ut nisi. Donec venenatis vulputate lorem. Suspendisse feugiat. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>\r\n<p>Vestibulum fringilla pede sit amet augue. Donec id justo. Phasellus nec sem in justo pellentesque facilisis. Phasellus viverra nulla ut metus varius laoreet. In turpis.</p>\r\n<p>Phasellus accumsan cursus velit. Duis leo. Curabitur blandit mollis lacus. Fusce a quam. Cras id dui.</p>'),(19,17,'en','2014-11-02 01:38:52','2014-11-02 01:38:52','<ul><li><br /><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"506\" height=\"158\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"225x255\" width=\"403\" height=\"376\" /></li>\r\n</ul>'),(20,18,'en','2014-11-02 01:41:38','2014-11-02 01:41:38','<p>Mailing Address: P.O. Box 12, Sixth of October City, 12573, Giza, Egypt</p>\r\n<p>Address: Engineering Square Industrial Park, North Extension of Industrial Zones, Sixth of October City, Giza, Egypt</p>\r\n<p>Tel/Fax: +(20) 1211961162, +(20) 1211961162 / 1</p>'),(21,19,'en','2014-11-15 07:27:21','2014-11-29 15:06:50','<h2 class=\"text-align-left\">Academic Programs</h2>\r\n<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzlfMjZfNzczX2d1eS5qcGciXV0/guy.jpg\" title=\"Guy\" alt=\"Guy\" data-rel=\"225x255\" width=\"674\" height=\"449\" /></p>\r\n<img src=\"http://146.185.151.250:1112/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNDZfNDVfMzQ4XzcuanBnIl1d/7.jpg\" title=\"7\" alt=\"7\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"179.77777767181396\" class=\"image-align-right selected_by_wym\" />\r\n<div class=\"mid-content\"><p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam&#160;<span style=\"background-color: transparent;\">, ipsum</span>\r\n<span style=\"background-color: transparent;\">sollicitudin</span>\r\n<span style=\"background-color: transparent;\">eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</span>\r\n</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat ma<span style=\"background-color: transparent;\">ssa quis enim. Praesent congue erat at massa.</span>\r\n</p>\r\n<p class=\"image-align-right text-align-left\">Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<ul><li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"225\" height=\"70\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"110x110\" width=\"110\" height=\"103\" /></li>\r\n</ul>\r\n</div>\r\n\r\n<a name=\"auto\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n<div class=\"mid-content\"><ul><li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"225\" height=\"70\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"110x110\" width=\"110\" height=\"103\" /></li>\r\n</ul>\r\n</div>\r\n\r\n\r\n<a name=\"build\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n<a name=\"indust\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n\r\n<a name=\"fac\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n<a name=\"renew\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n\r\n<a name=\"inov\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>'),(22,20,'en','2014-11-15 07:40:26','2014-11-15 07:42:28','<ul>\r\n<li><a href=\"#auto\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMzdfODczX2J1aWxkLnBuZyJdXQ/build.png\" title=\"Build\" alt=\"Build\" data-rel=\"225x255\" width=\"79\" height=\"105\" /></a>\r\n</li>\r\n\r\n<li><a href=\"#build\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMTlfMTA3X2F1dG8ucG5nIl1d/auto.png\" title=\"Auto\" alt=\"Auto\" data-rel=\"225x255\" width=\"83\" height=\"98\" /></a>\r\n</li>\r\n\r\n<li><a href=\"#auto\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMzdfODczX2J1aWxkLnBuZyJdXQ/build.png\" title=\"Build\" alt=\"Build\" data-rel=\"225x255\" width=\"79\" height=\"105\" /></a>\r\n</li>\r\n\r\n</ul>'),(26,24,'en','2014-11-29 00:28:32','2015-03-24 06:47:34','<div class=\"left\">\r\n<p>Mechatronics Level 1</p>\r\n<p>Mechatronics Level 2</p>\r\n</div>\r\n<div class=\"right\">\r\n\r\n\r\n</div>'),(27,25,'en','2014-11-29 00:41:21','2014-11-29 00:46:31','<h2>Financial Aid</h2>\r\n<div><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNDZfMjJfNjIzX2Z1dHVyZS5qcGciXV0/future.jpg\" title=\"Future\" alt=\"Future\" data-rel=\"225x255\" width=\"659.777777671814\" height=\"349.77777767181396\" /></div>'),(28,26,'en','2014-11-29 00:41:21','2015-02-21 11:04:34','<p>NASS has partnered with several organisations to facilitate various forms of financial support packages or services to trainees or enterprises that engage in NASS programs. These include:<br />-	Industrial Training Council (ITC) Programs – The ITC provides several programs targeting job seekers as well as registered industrial enterprises including:<br />o	Training new labour for employment <br />o	Training subsidies to upgrade existing labour capacities<br />-	Misr El Kheir Programs – Misr El Kheir offers in collaboration with NASS several programs including:<br />o	Scholarships program for qualifying trainees <br />o	Student loans program with reasonable payback periods<br />o	Small Business Entrepreneurs program to encourage emerging entrepreneurs start new businesses<br />-	Sami Saad Scholarship Program – <br />o	Training scholarships available for qualifying students in the construction and automotive fields <br />-	FAW Scholarship Program – <br />o	Training scholarships available for qualifying students in the automotive fields, specifically in the brakes and chassis specializations</p>'),(29,27,'en','2014-11-29 00:41:21','2015-02-21 11:04:34',''),(30,28,'en','2014-11-29 00:41:21','2014-11-29 00:41:21',''),(31,29,'en','2014-11-29 00:51:17','2014-11-29 00:51:17','<h2>Services to Companies</h2>\r\n<div><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTBfMzlfNjQyX0ZBQ1RPUllfREVWRUxPUE1FTlQuanBnIl1d/FACTORY%20DEVELOPMENT.jpg\" title=\"Factory Development\" alt=\"Factory Development\" data-rel=\"225x255\" width=\"659.777777671814\" height=\"370.77777767181396\" /></div>'),(32,30,'en','2014-11-29 00:51:17','2014-11-29 14:55:54','<div class=\"section-header\"><p>NASS partners with Enterprises&#160;</p>\r\n</div>\r\n<p>to develop innovative, production-focused, human resource solutions that assist them in their growth and development.  The common objective is continuous growth and competitiveness through a more productive, efficient, and innovative workforce. NASS offers a variety of services to prospective enterprises: </p>\r\n<p>•	Tailored Company Training Program	<br />NASS works with company Human Resources Department to developc a comprehensive program that addresses all the development needs of the company’ staff over the short and long terms addressing the company’s performance goals, available resources, staff training needs, and the company’s brand value.</p>\r\n<p>•	Qualified New Labour Program<br />NASS works with company to define future labour needs and develops and implements the appropriate sourcing and qualifications programs that integrates both technical and non-technical dimensions that are needed to qualify the new workers to become effective contributors to the company’s productivity as soon as they join.</p>\r\n<p>•	Innovation Culture Program <br />NASS provides a new multi-dimensional program to assist companies of various sizes and in their respective fields to introduce innovation as a culture into their business environment. We employ several tools that cross disciplinary boundaries besides reaching all organizational levels. Such tools include short-term interactive courses, cross-sectorial workshops, and on-site interactive workshops</p>'),(33,31,'en','2014-11-29 00:51:17','2014-11-29 00:52:04','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTFfNTlfODZfY29udGlub3VzX2RldmVsb3BtZW50LmpwZyJdXQ/continous%20development.jpg\" title=\"Continous Development\" alt=\"Continous Development\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"179.77777767181396\" /></p>'),(34,32,'en','2014-11-29 00:51:17','2014-11-29 00:51:17',''),(35,33,'en','2014-11-29 00:56:22','2014-11-29 00:56:22','<h2>NASS Graduates</h2>\r\n<div><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTVfMTBfOTYwX2d1eWltYWdlLkpQRyJdXQ/guyimage.JPG\" title=\"Guyimage\" alt=\"Guyimage\" data-rel=\"225x255\" width=\"659.777777671814\" height=\"439.77777767181396\" /></div>'),(36,34,'en','2014-11-29 00:56:22','2014-11-29 00:56:22','<p>NASS is focused on culture change as a means towards empowering the youth to shape for themselves a prosperous future. NASS graduates are thus differentiated through their training, which is designed to qualify them to become: <br />•	professionals with high work ethics <br />•	highly competent with their technical skills <br />•	proficient in modern technological tools <br />•	have developed organizational skills  <br />•	understand the importance of teamwork in the work environment</p>\r\n<p>The core foundations and values instilled in all NASS graduates are: <br />•	I am reliable because I am a professional<br />•	I am effective because I am competent<br />•	I am respected because I am honest<br />•	I am the best because I am innovative</p>'),(37,35,'en','2014-11-29 00:56:22','2014-11-29 00:58:38','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNThfMzRfMzQxX3JzcGVjdDIuanBnIl1d/rspect2.jpg\" title=\"Rspect2\" alt=\"Rspect2\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"226.77777767181396\" /></p>'),(38,36,'en','2014-11-29 00:56:22','2014-11-29 00:56:22',''),(39,37,'en','2014-11-29 00:59:42','2014-11-29 01:03:24','<h2>NASS Facilities</h2>\r\n<p><img src=\"http://146.185.151.250:1112/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDFfMDJfMTVfMjgxX0xhc3RfR2VuX1ZpZXdfMy5qcGciXV0/Last%20Gen%20View%203.jpg\" title=\"Last Gen View 3\" alt=\"Last Gen View 3\" data-rel=\"225x255\" /></p>'),(40,38,'en','2014-11-29 00:59:42','2014-11-29 01:03:24','<p><strong>State of the Art Facilities</strong>\r\n</p>\r\n<p>NASS is located in the heart of Engineering Square Industrial Park in the Sixth of October City. NASS has invested in building an extensive campus composed of several schools and support buildings totaling over 12,000 square meters on a 32,000 square meter site. The workshops and labs of the schools are furnished with state of the arts training equipment and resources. The first phase of this complex has been inaugurated in December 2012. The third and final phase is due for completion by 2014.</p>\r\n<p><strong>Innovation Environment</strong>\r\n</p>\r\n<p>Innovation is an integral component of development. Both need to be part of a continuous process that requires more than one level of interaction. Hence, NASS is designed to provide a total environment conducive to innovation by integrating academia and industry in a collaborative formula. Thus the three complimentary arms to NASS:<br />•	Training Academy to qualify and educate<br />•	Small Business Incubator to support continued growth of individuals with entrepreneurial potentials<br />•	Innovation Centre to support research, development, and testing within enterprises as well as higher level innovation qualifications for the students</p>'),(41,39,'en','2014-11-29 00:59:42','2014-11-29 01:03:24','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTFfNTlfODZfY29udGlub3VzX2RldmVsb3BtZW50LmpwZyJdXQ/continous%20development.jpg\" title=\"Continous Development\" alt=\"Continous Development\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"179.77777767181396\" /></p>'),(42,40,'en','2014-11-29 00:59:42','2014-11-29 00:59:42',''),(45,43,'en','2014-11-29 01:07:06','2014-11-29 01:08:05','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDFfMDdfNTdfNjM3X1BBUlRORVJTLmpwZyJdXQ/PARTNERS.jpg\" title=\"Partners\" alt=\"Partners\" data-rel=\"225x255\" width=\"659.777777671814\" height=\"370.77777767181396\" /></p>'),(46,44,'en','2014-11-29 01:07:06','2015-01-14 16:23:26','<p>Partnership is one of the core values of NASS and hence several partnership programs have come to compose the structure of the institution.<br />•	Academic Partnerships with both international and local vocational and educational institutions to ensure benchmarking the academy against the latest and highest levels of technical knowledge.<br />•	Industrial and Business Partnerships to promote a culture of innovation and development in industry. It also ensures the routes to the best placement and utilization of the academy graduates.<br />•	Community Partnerships are developed with community development organizations to create alternate sources of funding for the scholarships program that makes the academy programs more accessible to individuals with limited resources.</p>\r\n<p>NASS Partners Profiles<br />NASS has reached agreements to partner with a group of esteemed international institutions to ttizations included in the NASS profile.</p>\r\n<p><strong style=\"background-color: transparent;\">STEEP GmbH</strong>\r\n</p>\r\n<p><span style=\"background-color: transparent;\">– partner for the School of Automotive and the School of Facility Management</span>\r\n</p>\r\n<p><span style=\"background-color: transparent;\">Based in Bonn, Steep is a multi-dimensional organization with extensive experience i</span>\r\n<span style=\"background-color: transparent;\">n</span>\r\n<span style=\"background-color: transparent;\">training</span>\r\n<span style=\"background-color: transparent;\">, engin</span>\r\n<span style=\"background-color: transparent;\">eerin</span>\r\n<span style=\"background-color: transparent;\">g,</span>\r\n<span style=\"background-color: transparent;\">IT services, integrated services,  and product development. It develops and manages training services worldwide for leading automotive brands like Audi, BMW,</span>\r\n<span style=\"background-color: transparent;\">Seat, VW,</span>\r\n<span style=\"background-color: transparent;\">MAN,John Deere and others.</span>\r\n</p>\r\n<p><strong>Siemens&#160;</strong>\r\n</p>\r\n<p>– Technology partner in the School&#160;of Industrial Technology</p>\r\n<p>Siemens is one of the leading international players in the fields of mechatronics and automation. The Siemens Technik Akademie is an elite international technical college wholly owned and operated by Siemens AG, which has developed international certification programs in Mechatronic Systems.</p>\r\n<p><strong>Vocational Training Institute for the Construction Industry (ABZ) </strong>- Essen&#160;</p>\r\n<p>- partner for School of Building Construction Technologies</p>\r\n<p>ABZ-Essen provides a full spectrum of educational services for the German construction industry including the heavy machinery sector since 1927. In addition to practical and theoretical training <br />capacities in the main construction professions, the modern training center offers opportunities for special professions with special technical skills nationwide. Training activities are national and international.</p>\r\n<p><strong>Industrial Training Council (ITC)</strong>\r\n</p>\r\n<p><strong>MISR EL KHEIR</strong>\r\n</p>'),(49,47,'en','2015-01-14 14:58:55','2015-01-14 14:58:55',''),(50,48,'en','2015-01-14 14:58:55','2015-01-14 14:58:55',''),(51,49,'en','2015-01-14 15:00:30','2015-01-14 15:00:30','<h2 class=\"text-align-left\">Academic Programs</h2>\r\n<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzlfMjZfNzczX2d1eS5qcGciXV0/guy.jpg\" title=\"Guy\" alt=\"Guy\" data-rel=\"225x255\" width=\"674\" height=\"449\" /></p>\r\n<img src=\"http://146.185.151.250:1112/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNDZfNDVfMzQ4XzcuanBnIl1d/7.jpg\" title=\"7\" alt=\"7\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"179.77777767181396\" class=\"image-align-right selected_by_wym\" />\r\n<div class=\"mid-content\"><p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam&#160;<span style=\"background-color: transparent;\">, ipsum</span>\r\n<span style=\"background-color: transparent;\">sollicitudin</span>\r\n<span style=\"background-color: transparent;\">eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</span>\r\n</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat ma<span style=\"background-color: transparent;\">ssa quis enim. Praesent congue erat at massa.</span>\r\n</p>\r\n<p class=\"image-align-right text-align-left\">Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<ul><li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"225\" height=\"70\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"110x110\" width=\"110\" height=\"103\" /></li>\r\n</ul>\r\n</div>\r\n\r\n<a name=\"auto\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n<div class=\"mid-content\"><ul><li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"225\" height=\"70\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"110x110\" width=\"110\" height=\"103\" /></li>\r\n</ul>\r\n</div>\r\n\r\n\r\n<a name=\"build\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n<a name=\"indust\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n\r\n<a name=\"fac\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n<a name=\"renew\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n\r\n<a name=\"inov\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>'),(52,50,'en','2015-01-14 15:00:56','2015-01-14 15:00:56','<ul>\r\n<li><a href=\"#auto\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMzdfODczX2J1aWxkLnBuZyJdXQ/build.png\" title=\"Build\" alt=\"Build\" data-rel=\"225x255\" width=\"79\" height=\"105\" /></a>\r\n</li>\r\n\r\n<li><a href=\"#build\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMTlfMTA3X2F1dG8ucG5nIl1d/auto.png\" title=\"Auto\" alt=\"Auto\" data-rel=\"225x255\" width=\"83\" height=\"98\" /></a>\r\n</li>\r\n\r\n<li><a href=\"#auto\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMzdfODczX2J1aWxkLnBuZyJdXQ/build.png\" title=\"Build\" alt=\"Build\" data-rel=\"225x255\" width=\"79\" height=\"105\" /></a>\r\n</li>\r\n\r\n</ul>'),(53,51,'en','2015-01-14 15:03:43','2015-01-14 15:03:43',''),(54,52,'en','2015-01-14 15:03:43','2015-01-14 15:04:25','<h2>NASS Courses</h2>\r\n\r\n<p>to develop innovative, production-focused, human resource solutions that assist them in their growth and development.  The common objective is continuous growth and competitiveness through a more productive, efficient, and innovative workforce. NASS offers a variety of services to prospective enterprises: </p>\r\n<p>•	Tailored Company Training Program	<br />NASS works with company Human Resources Department to developc a comprehensive program that addresses all the development needs of the company’ staff over the short and long terms addressing the company’s performance goals, available resources, staff training needs, and the company’s brand value.</p>\r\n<p>•	Qualified New Labour Program<br />NASS works with company to define future labour needs and develops and implements the appropriate sourcing and qualifications programs that integrates both technical and non-technical dimensions that are needed to qualify the new workers to become effective contributors to the company’s productivity as soon as they join.</p>\r\n<p>•	Innovation Culture Program <br />NASS provides a new multi-dimensional program to assist companies of various sizes and in their respective fields to introduce innovation as a culture into their business environment. We employ several tools that cross disciplinary boundaries besides reaching all organizational levels. Such tools include short-term interactive courses, cross-sectorial workshops, and on-site interactive workshops</p>'),(55,53,'en','2015-01-14 15:03:43','2015-01-14 15:03:43',''),(56,54,'en','2015-01-14 15:03:43','2015-01-14 15:03:43',''),(57,55,'en','2015-01-14 16:11:16','2015-02-17 12:03:18',''),(58,56,'en','2015-01-14 16:11:16','2015-01-14 16:11:16',''),(59,57,'en','2015-01-14 16:11:29','2015-01-14 16:11:29',''),(60,58,'en','2015-01-14 16:11:29','2015-01-14 16:11:29',''),(61,59,'en','2015-01-14 16:11:47','2015-01-29 16:57:46','<p>hello</p>'),(62,60,'en','2015-01-14 16:11:47','2015-01-14 16:11:47',''),(63,61,'en','2015-01-14 16:23:40','2015-01-14 16:23:40',''),(64,62,'en','2015-01-14 16:23:40','2015-01-14 16:23:40',''),(65,63,'en','2015-01-14 16:24:08','2015-01-14 16:24:08',''),(66,64,'en','2015-01-14 16:24:08','2015-01-14 16:24:08',''),(69,67,'en','2015-01-14 16:24:38','2015-01-14 16:24:38',''),(70,68,'en','2015-01-14 16:24:38','2015-01-14 16:24:38',''),(71,69,'en','2015-01-14 16:24:49','2015-01-14 16:24:49',''),(72,70,'en','2015-01-14 16:24:49','2015-01-14 16:24:49',''),(73,71,'en','2015-01-14 16:25:02','2015-01-14 16:25:02',''),(74,72,'en','2015-01-14 16:25:02','2015-01-14 16:25:02',''),(78,76,'en','2015-01-14 16:26:12','2015-01-14 16:26:12',''),(79,77,'en','2015-01-14 16:37:26','2015-02-21 10:05:06','<h2>Contact Us</h2>\r\n<div>\r\n<h4> Map </h4>\r\n<img src=\"/system/images/W1siZiIsIjIwMTUvMDIvMjEvMTBfMDFfNDlfOTA5X05BU1NfTWFwLmpwZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MD4iXSxbInAiLCJzdHJpcCJdXQ/NASS-Map.jpg\" title=\"Nass Map\" alt=\"Nass Map\" data-rel=\"450x450\" width=\"450\" height=\"242\" /></div>'),(80,78,'en','2015-01-14 16:37:26','2015-02-21 10:02:04','<p>Mailing Address: P.O. Box 12, Sixth of October City, 12573, Giza, Egypt</p>\r\n<p>Address: Engineering Square Industrial Park, North Extension of Industrial Zones, Sixth of October City, Giza, Egypt</p>\r\n<p>Tel/Fax: +(20) 1211961162, +(20) 1211961162 / 1</p>'),(81,79,'en','2015-01-14 16:37:26','2015-01-14 16:37:26',''),(82,80,'en','2015-01-14 16:37:26','2015-01-14 16:37:26',''),(86,84,'en','2015-02-17 12:09:05','2015-02-28 16:07:12','<p><strong>State of the Arts Facilities&#160;</strong>\r\n</p>\r\n<p>NASS is located in the heart of Engineering Square Industrial Park in the Sixth of October City. NASS has invested in building an extensive campus composed of several schools and support buildings totalling over 12,000 square meters on a 32,000 square meter site. The workshops and labs of the schools are furnished with state of the arts training equipment and resources. The first phase of this complex has been inaugurated in December 2012. The third and final phase is due for completion by 2014.<br />Innovation Environment<br />Innovation is an integral component of development. Both need to be part of a continuous process that requires more than one level of interaction. Hence, NASS is designed to provide a total environment conducive to innovation by integrating academia and industry in a collaborative formula.&#160;</p>\r\n<p>Thus the three complimentary arms to NASS:<br />•	Training Academy to qualify and educate<br />•	Small Business Incubator to support continued growth of individuals with entrepreneurial potentials<br />•	Innovation Centre to support research, development, and testing within enterprises as well as higher level innovation qualifications for the students</p>'),(87,85,'en','2015-02-17 12:16:18','2015-02-17 12:27:04','<p><strong>NASS Facilities</strong>\r\n</p>\r\n<h2><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDFfMDJfMTVfMjgxX0xhc3RfR2VuX1ZpZXdfMy5qcGciXV0/Last%20Gen%20View%203.jpg\" title=\"Last Gen View 3\" alt=\"Last Gen View 3\" data-rel=\"450x450\" width=\"660\" height=\"266\" /></h2>'),(88,86,'en','2015-02-17 13:32:36','2015-02-17 13:36:54','<p><strong>Graduates</strong>\r\n</p>\r\n<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTVfMTBfOTYwX2d1eWltYWdlLkpQRyJdXQ/guyimage.JPG\" title=\"Guyimage\" alt=\"Guyimage\" data-rel=\"225x255\" /></p>'),(89,87,'en','2015-02-17 13:32:36','2015-02-17 13:34:28','<p>NASS is focused on culture change as a means towards empowering the youth to shape for themselves a prosperous future. NASS graduates are thus differentiated through their training, which is designed to qualify them to become: <br />•	professionals with high work ethics <br />•	highly competent with their technical skills <br />•	proficient in modern technological tools <br />•	have developed organizational skills  <br />•	understand the importance of teamwork in the work environment</p>\r\n<p>The core foundations and values instilled in all NASS graduates are: <br />•	I am reliable because I am a professional<br />•	I am effective because I am competent<br />•	I am respected because I am honest<br />•	I am the best because I am innovative</p>'),(90,88,'en','2015-02-17 13:32:36','2015-02-17 13:32:36',''),(91,89,'en','2015-02-21 11:07:50','2015-02-21 11:07:50','<p>Partnership Structure<br />Partnership is one of the core values of NASS and hence several partnership programs have come to compose the structure of the institution.<br />•	International Partnerships with both international and local vocational and educational institutions to ensure benchmarking the technical programs against the highest international standards.<br />•	Industrial and Business Partnerships to promote a culture of innovation and development in industry. It also ensures the routes to the best placement and utilization of the academy graduates.<br />•	Community Partnerships are developed with community development organizations to create alternate funding sources for trainees with limited resources.</p>\r\n<p>NASS Partners Profiles<br />NASS is a partner with a group of esteemed international institutions to develop and manage the various fields of specializations included in the NASS programs profile.</p>\r\n<p>•	Siemens – Technology partner in the School of Industrial Technology<br />Siemens is one of the leading international players in the fields of mechatronics and automation. The Siemens Technik Akademie is an elite international technical college wholly owned and operated by Siemens AG, which has developed international certification programs in Mechatronic Systems. </p>\r\n<p>•	STEEP GmbH – partner for the School of Automotive and the School of Facility Management<br />Based in Bonn, Steep is a multi-dimensional organization with extensive experience in training, engineering, IT services, integrated services, and product development. It develops and manages training services worldwide for leading automotive brands like Audi, BMW, Seat, VW, MAN, John Deere and others.</p>\r\n<p>•	Vocational Training Institute for the Construction Industry (ABZ) - Essen - partner for School of Building Construction Technologies<br />ABZ-Essen provides a full spectrum of educational services for the German construction industry including the heavy machinery sector since 1927. In addition to practical and theoretical training capacities in the main construction professions, the modern training center offers opportunities for special professions with special technical skills nationwide. Training activities are national and international.</p>\r\n<p>•	Schneider Electric</p>\r\n<p>•	AlweillerFarid</p>\r\n<p>•	Industrial Development Group (IDG)<br />IDG is the owner and developer of Engineering Square, one of Egypt’s largest industrial parks located in the city of the Sixth of October. It is one of the subsidiaries of one of Egypt’s large industrial conglomerates Sami Saad Holding (SONID) </p>\r\n<p><br />•	NATCO</p>\r\n<p>•	Nissan AlSabaa</p>\r\n<p>•	MCV</p>\r\n<p>•	Ezz El Arab</p>\r\n<p>•	Industrial Training Council (ITC)<br />ITC </p>\r\n<p>•	Misr El Kheir</p>\r\n<p>•	Egycopt</p>\r\n<p>•	CEOS</p>'),(92,90,'en','2015-02-21 11:07:50','2015-02-21 11:08:16','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDFfMDdfNTdfNjM3X1BBUlRORVJTLmpwZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MD4iXSxbInAiLCJzdHJpcCJdXQ/PARTNERS.jpg\" title=\"Partners\" alt=\"Partners\" data-rel=\"450x450\" width=\"450\" height=\"253\" /></p>'),(99,97,'en','2015-02-28 12:35:50','2015-02-28 12:39:23',''),(100,98,'en','2015-02-28 12:35:50','2015-02-28 12:39:23',''),(101,99,'en','2015-02-28 12:35:51','2015-02-28 12:39:32',''),(102,100,'en','2015-02-28 12:35:51','2015-02-28 12:39:32',''),(103,101,'en','2015-02-28 12:35:51','2015-02-28 12:39:41',''),(104,102,'en','2015-02-28 12:35:51','2015-02-28 12:39:41',''),(105,103,'en','2015-02-28 12:35:51','2015-02-28 12:39:49',''),(106,104,'en','2015-02-28 12:35:51','2015-02-28 12:39:49',''),(107,105,'en','2015-02-28 12:35:52','2015-02-28 12:39:57',''),(108,106,'en','2015-02-28 12:35:52','2015-02-28 12:39:57',''),(109,107,'en','2015-02-28 12:35:52','2015-02-28 12:40:05',''),(110,108,'en','2015-02-28 12:35:52','2015-02-28 12:40:05',''),(111,109,'en','2015-02-28 12:35:52','2015-02-28 12:40:13',''),(112,110,'en','2015-02-28 12:35:52','2015-02-28 12:40:13',''),(113,111,'en','2015-02-28 12:35:52','2015-02-28 12:40:20',''),(114,112,'en','2015-02-28 12:35:52','2015-02-28 12:40:20',''),(115,113,'en','2015-02-28 12:35:53','2015-02-28 12:40:28',''),(116,114,'en','2015-02-28 12:35:53','2015-02-28 12:40:28',''),(117,115,'en','2015-02-28 12:35:53','2015-02-28 12:40:35',''),(118,116,'en','2015-02-28 12:35:53','2015-02-28 12:40:35',''),(119,117,'en','2015-02-28 12:35:53','2015-02-28 12:40:42',''),(120,118,'en','2015-02-28 12:35:53','2015-02-28 12:40:42',''),(121,119,'en','2015-02-28 12:35:53','2015-02-28 12:40:50',''),(122,120,'en','2015-02-28 12:35:53','2015-02-28 12:40:50',''),(123,121,'en','2015-02-28 16:07:12','2015-02-28 16:12:27',''),(124,122,'en','2015-02-28 16:07:12','2015-02-28 16:07:12','');
/*!40000 ALTER TABLE `refinery_page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_parts`
--

DROP TABLE IF EXISTS `refinery_page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_parts_on_id` (`id`),
  KEY `index_refinery_page_parts_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_parts`
--

LOCK TABLES `refinery_page_parts` WRITE;
/*!40000 ALTER TABLE `refinery_page_parts` DISABLE KEYS */;
INSERT INTO `refinery_page_parts` VALUES (1,1,'Body','<p class=\"text-align-center\"></p>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p>Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Fusce egestas elit eget lorem. Duis leo. Etiam imperdiet imperdiet orci. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.&#160;Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Fusce egestas elit eget lorem. Duis leo. Etiam imperdiet imperdiet orci. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.</p>\r\n<p>Etiam feugiat lorem non metus. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Sed fringilla mauris sit amet nibh. Nam at tortor in tellus interdum sagittis. Nunc nec neque.</p>\r\n<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Sed lectus. Morbi nec metus. Phasellus dolor. Proin magna.</p>\r\n<p>Nullam dictum felis eu pede mollis pretium. Fusce fermentum odio nec arcu. In consectetuer turpis ut velit. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui.</p>\r\n<p>Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Fusce egestas elit eget lorem. Duis leo. Etiam imperdiet imperdiet orci. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.</p>\r\n<p>Etiam feugiat lorem non metus. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Sed fringilla mauris sit amet nibh. Nam at tortor in tellus interdum sagittis. Nunc nec neque.</p>\r\n<p>In dui magna, posuere eget, hhhh et, tempor auctor, justo. Sed lectus. Morbi nec metus. Phasellus dolor. Proin magna.</p>\r\n<p>Nullam dictum felis eu pede mollis pretium. Fusce fermentum odio nec arcu. In consectetuer turpis ut velit. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui.</p>\r\n</div>',0,'2014-09-12 22:15:52','2014-11-02 01:34:39'),(2,1,'Side Body','',1,'2014-09-12 22:15:52','2014-09-13 01:09:46'),(3,2,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2014-09-12 22:15:52','2014-09-12 22:15:52'),(7,4,'Body','<p class=\"text-align-center\"></p>\r\n<div class=\"mid-content\">\r\n</div>',0,'2014-09-13 00:36:30','2014-11-15 07:29:26'),(8,4,'Right Side Body','',1,'2014-09-13 00:36:30','2014-10-21 16:28:44'),(9,5,'Body','',0,'2014-10-21 16:22:59','2014-11-29 00:47:51'),(10,5,'Right Side Body','',1,'2014-10-21 16:22:59','2014-11-29 00:47:51'),(11,6,'Body','',0,'2014-10-21 16:27:07','2014-10-21 16:27:07'),(12,6,'Right Side Body','',1,'2014-10-21 16:27:07','2014-10-21 16:27:07'),(15,1,'about','<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed mollis, eros et ultrices tempus, mauris ipsum aliquam libero, non adipiscing dolor urna a orci. Nulla sit amet est. Donec vitae orci sed dolor rutrum auctor. Nunc interdum lacus sit amet orci.</p>\r\n<p>Pellentesque dapibus hendrerit tortor. Quisque ut nisi. Donec venenatis vulputate lorem. Suspendisse feugiat. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>\r\n<p>Vestibulum fringilla pede sit amet augue. Donec id justo. Phasellus nec sem in justo pellentesque facilisis. Phasellus viverra nulla ut metus varius laoreet. In turpis.</p>\r\n<p>Phasellus accumsan cursus velit. Duis leo. Curabitur blandit mollis lacus. Fusce a quam. Cras id dui.</p>',2,'2014-11-02 01:34:39','2014-11-02 01:34:39'),(17,1,'partners','<ul><li><br /><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"506\" height=\"158\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"225x255\" width=\"403\" height=\"376\" /></li>\r\n</ul>',3,'2014-11-02 01:38:52','2014-11-02 01:41:45'),(18,1,'contact','<p>Mailing Address: P.O. Box 12, Sixth of October City, 12573, Giza, Egypt</p>\r\n<p>Address: Engineering Square Industrial Park, North Extension of Industrial Zones, Sixth of October City, Giza, Egypt</p>\r\n<p>Tel/Fax: +(20) 1211961162, +(20) 1211961162 / 1</p>',4,'2014-11-02 01:41:38','2014-11-02 01:41:45'),(19,4,'courses','<h2 class=\"text-align-left\">Academic Programs</h2>\r\n<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzlfMjZfNzczX2d1eS5qcGciXV0/guy.jpg\" title=\"Guy\" alt=\"Guy\" data-rel=\"225x255\" width=\"674\" height=\"449\" /></p>\r\n<img src=\"http://146.185.151.250:1112/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNDZfNDVfMzQ4XzcuanBnIl1d/7.jpg\" title=\"7\" alt=\"7\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"179.77777767181396\" class=\"image-align-right selected_by_wym\" />\r\n<div class=\"mid-content\"><p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam&#160;<span style=\"background-color: transparent;\">, ipsum</span>\r\n<span style=\"background-color: transparent;\">sollicitudin</span>\r\n<span style=\"background-color: transparent;\">eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</span>\r\n</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat ma<span style=\"background-color: transparent;\">ssa quis enim. Praesent congue erat at massa.</span>\r\n</p>\r\n<p class=\"image-align-right text-align-left\">Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<ul><li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"225\" height=\"70\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"110x110\" width=\"110\" height=\"103\" /></li>\r\n</ul>\r\n</div>\r\n\r\n<a name=\"auto\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n<div class=\"mid-content\"><ul><li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"225\" height=\"70\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"110x110\" width=\"110\" height=\"103\" /></li>\r\n</ul>\r\n</div>\r\n\r\n\r\n<a name=\"build\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n<a name=\"indust\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n\r\n<a name=\"fac\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n<a name=\"renew\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n\r\n<a name=\"inov\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>',2,'2014-11-15 07:27:21','2014-11-29 15:06:50'),(20,4,'schools','<ul>\r\n<li><a href=\"#auto\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMzdfODczX2J1aWxkLnBuZyJdXQ/build.png\" title=\"Build\" alt=\"Build\" data-rel=\"225x255\" width=\"79\" height=\"105\" /></a>\r\n</li>\r\n\r\n<li><a href=\"#build\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMTlfMTA3X2F1dG8ucG5nIl1d/auto.png\" title=\"Auto\" alt=\"Auto\" data-rel=\"225x255\" width=\"83\" height=\"98\" /></a>\r\n</li>\r\n\r\n<li><a href=\"#auto\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMzdfODczX2J1aWxkLnBuZyJdXQ/build.png\" title=\"Build\" alt=\"Build\" data-rel=\"225x255\" width=\"79\" height=\"105\" /></a>\r\n</li>\r\n\r\n</ul>',3,'2014-11-15 07:40:26','2014-11-15 07:42:28'),(24,8,'events','<div class=\"left\">\r\n<p>Mechatronics Level 1</p>\r\n<p>Mechatronics Level 2</p>\r\n</div>\r\n<div class=\"right\">\r\n\r\n\r\n</div>',0,'2014-11-29 00:28:32','2015-03-24 06:47:34'),(25,9,'top','<h2>Financial Aid</h2>\r\n<div><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNDZfMjJfNjIzX2Z1dHVyZS5qcGciXV0/future.jpg\" title=\"Future\" alt=\"Future\" data-rel=\"225x255\" width=\"659.777777671814\" height=\"349.77777767181396\" /></div>',0,'2014-11-29 00:41:21','2014-11-29 00:46:31'),(26,9,'midleft','<p>NASS has partnered with several organisations to facilitate various forms of financial support packages or services to trainees or enterprises that engage in NASS programs. These include:<br />-	Industrial Training Council (ITC) Programs – The ITC provides several programs targeting job seekers as well as registered industrial enterprises including:<br />o	Training new labour for employment <br />o	Training subsidies to upgrade existing labour capacities<br />-	Misr El Kheir Programs – Misr El Kheir offers in collaboration with NASS several programs including:<br />o	Scholarships program for qualifying trainees <br />o	Student loans program with reasonable payback periods<br />o	Small Business Entrepreneurs program to encourage emerging entrepreneurs start new businesses<br />-	Sami Saad Scholarship Program – <br />o	Training scholarships available for qualifying students in the construction and automotive fields <br />-	FAW Scholarship Program – <br />o	Training scholarships available for qualifying students in the automotive fields, specifically in the brakes and chassis specializations</p>',1,'2014-11-29 00:41:21','2015-02-21 11:04:34'),(27,9,'midright','',2,'2014-11-29 00:41:21','2015-02-21 11:04:34'),(28,9,'bottom','',3,'2014-11-29 00:41:21','2014-11-29 00:41:21'),(29,3,'top','<h2>Services to Companies</h2>\r\n<div><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTBfMzlfNjQyX0ZBQ1RPUllfREVWRUxPUE1FTlQuanBnIl1d/FACTORY%20DEVELOPMENT.jpg\" title=\"Factory Development\" alt=\"Factory Development\" data-rel=\"225x255\" width=\"659.777777671814\" height=\"370.77777767181396\" /></div>',0,'2014-11-29 00:51:17','2014-11-29 00:51:17'),(30,3,'midleft','<div class=\"section-header\"><p>NASS partners with Enterprises&#160;</p>\r\n</div>\r\n<p>to develop innovative, production-focused, human resource solutions that assist them in their growth and development.  The common objective is continuous growth and competitiveness through a more productive, efficient, and innovative workforce. NASS offers a variety of services to prospective enterprises: </p>\r\n<p>•	Tailored Company Training Program	<br />NASS works with company Human Resources Department to developc a comprehensive program that addresses all the development needs of the company’ staff over the short and long terms addressing the company’s performance goals, available resources, staff training needs, and the company’s brand value.</p>\r\n<p>•	Qualified New Labour Program<br />NASS works with company to define future labour needs and develops and implements the appropriate sourcing and qualifications programs that integrates both technical and non-technical dimensions that are needed to qualify the new workers to become effective contributors to the company’s productivity as soon as they join.</p>\r\n<p>•	Innovation Culture Program <br />NASS provides a new multi-dimensional program to assist companies of various sizes and in their respective fields to introduce innovation as a culture into their business environment. We employ several tools that cross disciplinary boundaries besides reaching all organizational levels. Such tools include short-term interactive courses, cross-sectorial workshops, and on-site interactive workshops</p>',1,'2014-11-29 00:51:17','2014-11-29 14:55:54'),(31,3,'midright','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTFfNTlfODZfY29udGlub3VzX2RldmVsb3BtZW50LmpwZyJdXQ/continous%20development.jpg\" title=\"Continous Development\" alt=\"Continous Development\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"179.77777767181396\" /></p>',2,'2014-11-29 00:51:17','2014-11-29 00:52:04'),(32,3,'bottom','',3,'2014-11-29 00:51:17','2014-11-29 00:51:17'),(33,10,'top','<h2>NASS Graduates</h2>\r\n<div><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTVfMTBfOTYwX2d1eWltYWdlLkpQRyJdXQ/guyimage.JPG\" title=\"Guyimage\" alt=\"Guyimage\" data-rel=\"225x255\" width=\"659.777777671814\" height=\"439.77777767181396\" /></div>',0,'2014-11-29 00:56:22','2014-11-29 00:56:22'),(34,10,'midleft','<p>NASS is focused on culture change as a means towards empowering the youth to shape for themselves a prosperous future. NASS graduates are thus differentiated through their training, which is designed to qualify them to become: <br />•	professionals with high work ethics <br />•	highly competent with their technical skills <br />•	proficient in modern technological tools <br />•	have developed organizational skills  <br />•	understand the importance of teamwork in the work environment</p>\r\n<p>The core foundations and values instilled in all NASS graduates are: <br />•	I am reliable because I am a professional<br />•	I am effective because I am competent<br />•	I am respected because I am honest<br />•	I am the best because I am innovative</p>',1,'2014-11-29 00:56:22','2014-11-29 00:56:22'),(35,10,'midright','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNThfMzRfMzQxX3JzcGVjdDIuanBnIl1d/rspect2.jpg\" title=\"Rspect2\" alt=\"Rspect2\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"226.77777767181396\" /></p>',2,'2014-11-29 00:56:22','2014-11-29 00:58:38'),(36,10,'bottom','',3,'2014-11-29 00:56:22','2014-11-29 00:56:22'),(37,11,'top','<h2>NASS Facilities</h2>\r\n<p><img src=\"http://146.185.151.250:1112/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDFfMDJfMTVfMjgxX0xhc3RfR2VuX1ZpZXdfMy5qcGciXV0/Last%20Gen%20View%203.jpg\" title=\"Last Gen View 3\" alt=\"Last Gen View 3\" data-rel=\"225x255\" /></p>',0,'2014-11-29 00:59:42','2014-11-29 01:03:24'),(38,11,'midleft','<p><strong>State of the Art Facilities</strong>\r\n</p>\r\n<p>NASS is located in the heart of Engineering Square Industrial Park in the Sixth of October City. NASS has invested in building an extensive campus composed of several schools and support buildings totaling over 12,000 square meters on a 32,000 square meter site. The workshops and labs of the schools are furnished with state of the arts training equipment and resources. The first phase of this complex has been inaugurated in December 2012. The third and final phase is due for completion by 2014.</p>\r\n<p><strong>Innovation Environment</strong>\r\n</p>\r\n<p>Innovation is an integral component of development. Both need to be part of a continuous process that requires more than one level of interaction. Hence, NASS is designed to provide a total environment conducive to innovation by integrating academia and industry in a collaborative formula. Thus the three complimentary arms to NASS:<br />•	Training Academy to qualify and educate<br />•	Small Business Incubator to support continued growth of individuals with entrepreneurial potentials<br />•	Innovation Centre to support research, development, and testing within enterprises as well as higher level innovation qualifications for the students</p>',1,'2014-11-29 00:59:42','2014-11-29 01:03:24'),(39,11,'midright','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTFfNTlfODZfY29udGlub3VzX2RldmVsb3BtZW50LmpwZyJdXQ/continous%20development.jpg\" title=\"Continous Development\" alt=\"Continous Development\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"179.77777767181396\" /></p>',2,'2014-11-29 00:59:42','2014-11-29 01:03:24'),(40,11,'bottom','',3,'2014-11-29 00:59:42','2014-11-29 00:59:43'),(43,12,'top','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDFfMDdfNTdfNjM3X1BBUlRORVJTLmpwZyJdXQ/PARTNERS.jpg\" title=\"Partners\" alt=\"Partners\" data-rel=\"225x255\" width=\"659.777777671814\" height=\"370.77777767181396\" /></p>',0,'2014-11-29 01:07:06','2014-11-29 01:08:05'),(44,12,'bottom','<p>Partnership is one of the core values of NASS and hence several partnership programs have come to compose the structure of the institution.<br />•	Academic Partnerships with both international and local vocational and educational institutions to ensure benchmarking the academy against the latest and highest levels of technical knowledge.<br />•	Industrial and Business Partnerships to promote a culture of innovation and development in industry. It also ensures the routes to the best placement and utilization of the academy graduates.<br />•	Community Partnerships are developed with community development organizations to create alternate sources of funding for the scholarships program that makes the academy programs more accessible to individuals with limited resources.</p>\r\n<p>NASS Partners Profiles<br />NASS has reached agreements to partner with a group of esteemed international institutions to ttizations included in the NASS profile.</p>\r\n<p><strong style=\"background-color: transparent;\">STEEP GmbH</strong>\r\n</p>\r\n<p><span style=\"background-color: transparent;\">– partner for the School of Automotive and the School of Facility Management</span>\r\n</p>\r\n<p><span style=\"background-color: transparent;\">Based in Bonn, Steep is a multi-dimensional organization with extensive experience i</span>\r\n<span style=\"background-color: transparent;\">n</span>\r\n<span style=\"background-color: transparent;\">training</span>\r\n<span style=\"background-color: transparent;\">, engin</span>\r\n<span style=\"background-color: transparent;\">eerin</span>\r\n<span style=\"background-color: transparent;\">g,</span>\r\n<span style=\"background-color: transparent;\">IT services, integrated services,  and product development. It develops and manages training services worldwide for leading automotive brands like Audi, BMW,</span>\r\n<span style=\"background-color: transparent;\">Seat, VW,</span>\r\n<span style=\"background-color: transparent;\">MAN,John Deere and others.</span>\r\n</p>\r\n<p><strong>Siemens&#160;</strong>\r\n</p>\r\n<p>– Technology partner in the School&#160;of Industrial Technology</p>\r\n<p>Siemens is one of the leading international players in the fields of mechatronics and automation. The Siemens Technik Akademie is an elite international technical college wholly owned and operated by Siemens AG, which has developed international certification programs in Mechatronic Systems.</p>\r\n<p><strong>Vocational Training Institute for the Construction Industry (ABZ) </strong>- Essen&#160;</p>\r\n<p>- partner for School of Building Construction Technologies</p>\r\n<p>ABZ-Essen provides a full spectrum of educational services for the German construction industry including the heavy machinery sector since 1927. In addition to practical and theoretical training <br />capacities in the main construction professions, the modern training center offers opportunities for special professions with special technical skills nationwide. Training activities are national and international.</p>\r\n<p><strong>Industrial Training Council (ITC)</strong>\r\n</p>\r\n<p><strong>MISR EL KHEIR</strong>\r\n</p>',1,'2014-11-29 01:07:06','2015-01-14 16:23:26'),(47,14,'Body','',0,'2015-01-14 14:58:55','2015-01-14 14:58:55'),(48,14,'Right Side Body','',1,'2015-01-14 14:58:55','2015-01-14 14:58:55'),(49,14,'courses','<h2 class=\"text-align-left\">Academic Programs</h2>\r\n<p><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzlfMjZfNzczX2d1eS5qcGciXV0/guy.jpg\" title=\"Guy\" alt=\"Guy\" data-rel=\"225x255\" width=\"674\" height=\"449\" /></p>\r\n<img src=\"http://146.185.151.250:1112/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNDZfNDVfMzQ4XzcuanBnIl1d/7.jpg\" title=\"7\" alt=\"7\" data-rel=\"225x255\" width=\"319.77777767181396\" height=\"179.77777767181396\" class=\"image-align-right selected_by_wym\" />\r\n<div class=\"mid-content\"><p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam&#160;<span style=\"background-color: transparent;\">, ipsum</span>\r\n<span style=\"background-color: transparent;\">sollicitudin</span>\r\n<span style=\"background-color: transparent;\">eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</span>\r\n</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat ma<span style=\"background-color: transparent;\">ssa quis enim. Praesent congue erat at massa.</span>\r\n</p>\r\n<p class=\"image-align-right text-align-left\">Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<ul><li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"225\" height=\"70\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"110x110\" width=\"110\" height=\"103\" /></li>\r\n</ul>\r\n</div>\r\n\r\n<a name=\"auto\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n<div class=\"mid-content\"><ul><li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTIwX0JMX2hvcl9FbGRaX0dJWl9BcmFiaWMuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdLFsicCIsInN0cmlwIl1d/BL_hor_EldZ_GIZ_Arabic.jpg\" title=\"Bl Hor Eld Z Giz Arabic\" alt=\"Bl Hor Eld Z Giz Arabic\" data-rel=\"225x255\" width=\"225\" height=\"70\" /></li>\r\n<li><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMDIvMDFfMzZfNThfMTc0X0VuZ2xpc2hfbG9nby5qcGciXSxbInAiLCJ0aHVtYiIsIjExMHgxMTA%2BIl0sWyJwIiwic3RyaXAiXV0/English%20logo.jpg\" title=\"English Logo\" alt=\"English Logo\" data-rel=\"110x110\" width=\"110\" height=\"103\" /></li>\r\n</ul>\r\n</div>\r\n\r\n\r\n<a name=\"build\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n<a name=\"indust\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n\r\n<a name=\"fac\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n<a name=\"renew\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>\r\n\r\n\r\n\r\n<a name=\"inov\"></a>\r\n<h2 class=\"text-align-center\">Automotive Technology has gone International</h2>\r\n<div class=\"mid-content\">\r\n<p class=\"text-align-left\">Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Curabitur at lacus ac velit ornare lobortis.</p>\r\n<p>Praesent turpis. Suspendisse eu ligula. Proin faucibus arcu quis ante. Praesent adipiscing. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros.</p>\r\n<p>Nullam vel sem. Phasellus viverra nulla ut metus varius laoreet. Vestibulum suscipit nulla quis orci. Nulla consequat massa quis enim. Praesent congue erat at massa.</p>\r\n<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Morbi nec metus. Cras varius. Quisque malesuada placerat nisl.</p>\r\n<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec id justo. Duis lobortis massa imperdiet quam. Vestibulum volutpat pretium libero. Vivamus quis mi.</p>\r\n</div>',2,'2015-01-14 15:00:30','2015-01-14 15:00:30'),(50,14,'schools','<ul>\r\n<li><a href=\"#auto\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMzdfODczX2J1aWxkLnBuZyJdXQ/build.png\" title=\"Build\" alt=\"Build\" data-rel=\"225x255\" width=\"79\" height=\"105\" /></a>\r\n</li>\r\n\r\n<li><a href=\"#build\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMTlfMTA3X2F1dG8ucG5nIl1d/auto.png\" title=\"Auto\" alt=\"Auto\" data-rel=\"225x255\" width=\"83\" height=\"98\" /></a>\r\n</li>\r\n\r\n<li><a href=\"#auto\"><img src=\"/system/images/W1siZiIsIjIwMTQvMDkvMTMvMDBfMzdfMzdfODczX2J1aWxkLnBuZyJdXQ/build.png\" title=\"Build\" alt=\"Build\" data-rel=\"225x255\" width=\"79\" height=\"105\" /></a>\r\n</li>\r\n\r\n</ul>',3,'2015-01-14 15:00:56','2015-01-14 15:00:56'),(51,13,'top','',0,'2015-01-14 15:03:43','2015-01-14 15:03:43'),(52,13,'midleft','<h2>NASS Courses</h2>\r\n\r\n<p>to develop innovative, production-focused, human resource solutions that assist them in their growth and development.  The common objective is continuous growth and competitiveness through a more productive, efficient, and innovative workforce. NASS offers a variety of services to prospective enterprises: </p>\r\n<p>•	Tailored Company Training Program	<br />NASS works with company Human Resources Department to developc a comprehensive program that addresses all the development needs of the company’ staff over the short and long terms addressing the company’s performance goals, available resources, staff training needs, and the company’s brand value.</p>\r\n<p>•	Qualified New Labour Program<br />NASS works with company to define future labour needs and develops and implements the appropriate sourcing and qualifications programs that integrates both technical and non-technical dimensions that are needed to qualify the new workers to become effective contributors to the company’s productivity as soon as they join.</p>\r\n<p>•	Innovation Culture Program <br />NASS provides a new multi-dimensional program to assist companies of various sizes and in their respective fields to introduce innovation as a culture into their business environment. We employ several tools that cross disciplinary boundaries besides reaching all organizational levels. Such tools include short-term interactive courses, cross-sectorial workshops, and on-site interactive workshops</p>',1,'2015-01-14 15:03:43','2015-01-14 15:04:25'),(53,13,'midright','',2,'2015-01-14 15:03:43','2015-01-14 15:03:43'),(54,13,'bottom','',3,'2015-01-14 15:03:43','2015-01-14 15:03:43'),(55,15,'Body','',0,'2015-01-14 16:11:16','2015-02-17 12:03:18'),(56,15,'Right Side Body','',1,'2015-01-14 16:11:16','2015-01-14 16:11:16'),(57,16,'Body','',0,'2015-01-14 16:11:29','2015-01-14 16:11:29'),(58,16,'Right Side Body','',1,'2015-01-14 16:11:29','2015-01-14 16:11:29'),(59,17,'Body','<p>hello</p>',0,'2015-01-14 16:11:47','2015-01-29 16:57:46'),(60,17,'Right Side Body','',1,'2015-01-14 16:11:47','2015-01-14 16:11:47'),(61,18,'Body','',0,'2015-01-14 16:23:40','2015-01-14 16:23:40'),(62,18,'Right Side Body','',1,'2015-01-14 16:23:40','2015-01-14 16:23:40'),(63,19,'Body','',0,'2015-01-14 16:24:08','2015-01-14 16:24:08'),(64,19,'Right Side Body','',1,'2015-01-14 16:24:08','2015-01-14 16:24:08'),(67,21,'Body','',0,'2015-01-14 16:24:38','2015-01-14 16:24:38'),(68,21,'Right Side Body','',1,'2015-01-14 16:24:38','2015-01-14 16:24:38'),(69,22,'Body','',0,'2015-01-14 16:24:49','2015-01-14 16:24:49'),(70,22,'Right Side Body','',1,'2015-01-14 16:24:49','2015-01-14 16:24:49'),(71,23,'Body','',0,'2015-01-14 16:25:02','2015-01-14 16:25:02'),(72,23,'Right Side Body','',1,'2015-01-14 16:25:02','2015-01-14 16:25:02'),(76,25,'Right Side Body','',0,'2015-01-14 16:26:12','2015-01-14 16:37:26'),(77,25,'top','<h2>Contact Us</h2>\r\n<div>\r\n<h4> Map </h4>\r\n<img src=\"/system/images/W1siZiIsIjIwMTUvMDIvMjEvMTBfMDFfNDlfOTA5X05BU1NfTWFwLmpwZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MD4iXSxbInAiLCJzdHJpcCJdXQ/NASS-Map.jpg\" title=\"Nass Map\" alt=\"Nass Map\" data-rel=\"450x450\" width=\"450\" height=\"242\" /></div>',1,'2015-01-14 16:37:26','2015-02-21 10:05:06'),(78,25,'midleft','<p>Mailing Address: P.O. Box 12, Sixth of October City, 12573, Giza, Egypt</p>\r\n<p>Address: Engineering Square Industrial Park, North Extension of Industrial Zones, Sixth of October City, Giza, Egypt</p>\r\n<p>Tel/Fax: +(20) 1211961162, +(20) 1211961162 / 1</p>',2,'2015-01-14 16:37:26','2015-02-21 10:02:04'),(79,25,'midright','',3,'2015-01-14 16:37:26','2015-01-14 16:37:26'),(80,25,'bottom','',4,'2015-01-14 16:37:26','2015-01-14 16:37:26'),(84,15,'midleft','<p><strong>State of the Arts Facilities&#160;</strong>\r\n</p>\r\n<p>NASS is located in the heart of Engineering Square Industrial Park in the Sixth of October City. NASS has invested in building an extensive campus composed of several schools and support buildings totalling over 12,000 square meters on a 32,000 square meter site. The workshops and labs of the schools are furnished with state of the arts training equipment and resources. The first phase of this complex has been inaugurated in December 2012. The third and final phase is due for completion by 2014.<br />Innovation Environment<br />Innovation is an integral component of development. Both need to be part of a continuous process that requires more than one level of interaction. Hence, NASS is designed to provide a total environment conducive to innovation by integrating academia and industry in a collaborative formula.&#160;</p>\r\n<p>Thus the three complimentary arms to NASS:<br />•	Training Academy to qualify and educate<br />•	Small Business Incubator to support continued growth of individuals with entrepreneurial potentials<br />•	Innovation Centre to support research, development, and testing within enterprises as well as higher level innovation qualifications for the students</p>',2,'2015-02-17 12:09:05','2015-02-28 16:07:12'),(85,15,'top','<p><strong>NASS Facilities</strong>\r\n</p>\r\n<h2><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDFfMDJfMTVfMjgxX0xhc3RfR2VuX1ZpZXdfMy5qcGciXV0/Last%20Gen%20View%203.jpg\" title=\"Last Gen View 3\" alt=\"Last Gen View 3\" data-rel=\"450x450\" width=\"660\" height=\"266\" /></h2>',3,'2015-02-17 12:16:18','2015-02-17 12:27:04'),(86,16,'top','<p><strong>Graduates</strong>\r\n</p>\r\n<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDBfNTVfMTBfOTYwX2d1eWltYWdlLkpQRyJdXQ/guyimage.JPG\" title=\"Guyimage\" alt=\"Guyimage\" data-rel=\"225x255\" /></p>',2,'2015-02-17 13:32:36','2015-02-17 13:36:54'),(87,16,'midleft','<p>NASS is focused on culture change as a means towards empowering the youth to shape for themselves a prosperous future. NASS graduates are thus differentiated through their training, which is designed to qualify them to become: <br />•	professionals with high work ethics <br />•	highly competent with their technical skills <br />•	proficient in modern technological tools <br />•	have developed organizational skills  <br />•	understand the importance of teamwork in the work environment</p>\r\n<p>The core foundations and values instilled in all NASS graduates are: <br />•	I am reliable because I am a professional<br />•	I am effective because I am competent<br />•	I am respected because I am honest<br />•	I am the best because I am innovative</p>',3,'2015-02-17 13:32:36','2015-02-17 13:34:28'),(88,16,'midright','',4,'2015-02-17 13:32:36','2015-02-17 13:32:36'),(89,18,'midleft','<p>Partnership Structure<br />Partnership is one of the core values of NASS and hence several partnership programs have come to compose the structure of the institution.<br />•	International Partnerships with both international and local vocational and educational institutions to ensure benchmarking the technical programs against the highest international standards.<br />•	Industrial and Business Partnerships to promote a culture of innovation and development in industry. It also ensures the routes to the best placement and utilization of the academy graduates.<br />•	Community Partnerships are developed with community development organizations to create alternate funding sources for trainees with limited resources.</p>\r\n<p>NASS Partners Profiles<br />NASS is a partner with a group of esteemed international institutions to develop and manage the various fields of specializations included in the NASS programs profile.</p>\r\n<p>•	Siemens – Technology partner in the School of Industrial Technology<br />Siemens is one of the leading international players in the fields of mechatronics and automation. The Siemens Technik Akademie is an elite international technical college wholly owned and operated by Siemens AG, which has developed international certification programs in Mechatronic Systems. </p>\r\n<p>•	STEEP GmbH – partner for the School of Automotive and the School of Facility Management<br />Based in Bonn, Steep is a multi-dimensional organization with extensive experience in training, engineering, IT services, integrated services, and product development. It develops and manages training services worldwide for leading automotive brands like Audi, BMW, Seat, VW, MAN, John Deere and others.</p>\r\n<p>•	Vocational Training Institute for the Construction Industry (ABZ) - Essen - partner for School of Building Construction Technologies<br />ABZ-Essen provides a full spectrum of educational services for the German construction industry including the heavy machinery sector since 1927. In addition to practical and theoretical training capacities in the main construction professions, the modern training center offers opportunities for special professions with special technical skills nationwide. Training activities are national and international.</p>\r\n<p>•	Schneider Electric</p>\r\n<p>•	AlweillerFarid</p>\r\n<p>•	Industrial Development Group (IDG)<br />IDG is the owner and developer of Engineering Square, one of Egypt’s largest industrial parks located in the city of the Sixth of October. It is one of the subsidiaries of one of Egypt’s large industrial conglomerates Sami Saad Holding (SONID) </p>\r\n<p><br />•	NATCO</p>\r\n<p>•	Nissan AlSabaa</p>\r\n<p>•	MCV</p>\r\n<p>•	Ezz El Arab</p>\r\n<p>•	Industrial Training Council (ITC)<br />ITC </p>\r\n<p>•	Misr El Kheir</p>\r\n<p>•	Egycopt</p>\r\n<p>•	CEOS</p>',2,'2015-02-21 11:07:50','2015-02-21 11:07:50'),(90,18,'top','<p><img src=\"/system/images/W1siZiIsIjIwMTQvMTEvMjkvMDFfMDdfNTdfNjM3X1BBUlRORVJTLmpwZyJdLFsicCIsInRodW1iIiwiNDUweDQ1MD4iXSxbInAiLCJzdHJpcCJdXQ/PARTNERS.jpg\" title=\"Partners\" alt=\"Partners\" data-rel=\"450x450\" width=\"450\" height=\"253\" /></p>',3,'2015-02-21 11:07:50','2015-02-21 11:08:16'),(97,29,'Body','',0,'2015-02-28 12:35:50','2015-02-28 12:39:23'),(98,29,'Right Side Body','',1,'2015-02-28 12:35:50','2015-02-28 12:39:23'),(99,30,'Body','',0,'2015-02-28 12:35:51','2015-02-28 12:39:32'),(100,30,'Right Side Body','',1,'2015-02-28 12:35:51','2015-02-28 12:39:32'),(101,31,'Body','',0,'2015-02-28 12:35:51','2015-02-28 12:39:41'),(102,31,'Right Side Body','',1,'2015-02-28 12:35:51','2015-02-28 12:39:41'),(103,32,'Body','',0,'2015-02-28 12:35:51','2015-02-28 12:39:49'),(104,32,'Right Side Body','',1,'2015-02-28 12:35:51','2015-02-28 12:39:49'),(105,33,'Body','',0,'2015-02-28 12:35:52','2015-02-28 12:39:57'),(106,33,'Right Side Body','',1,'2015-02-28 12:35:52','2015-02-28 12:39:57'),(107,34,'Body','',0,'2015-02-28 12:35:52','2015-02-28 12:40:05'),(108,34,'Right Side Body','',1,'2015-02-28 12:35:52','2015-02-28 12:40:05'),(109,35,'Body','',0,'2015-02-28 12:35:52','2015-02-28 12:40:13'),(110,35,'Right Side Body','',1,'2015-02-28 12:35:52','2015-02-28 12:40:13'),(111,36,'Body','',0,'2015-02-28 12:35:52','2015-02-28 12:40:20'),(112,36,'Right Side Body','',1,'2015-02-28 12:35:52','2015-02-28 12:40:20'),(113,37,'Body','',0,'2015-02-28 12:35:53','2015-02-28 12:40:28'),(114,37,'Right Side Body','',1,'2015-02-28 12:35:53','2015-02-28 12:40:28'),(115,38,'Body','',0,'2015-02-28 12:35:53','2015-02-28 12:40:35'),(116,38,'Right Side Body','',1,'2015-02-28 12:35:53','2015-02-28 12:40:35'),(117,39,'Body','',0,'2015-02-28 12:35:53','2015-02-28 12:40:42'),(118,39,'Right Side Body','',1,'2015-02-28 12:35:53','2015-02-28 12:40:42'),(119,40,'Body','',0,'2015-02-28 12:35:53','2015-02-28 12:40:50'),(120,40,'Right Side Body','',1,'2015-02-28 12:35:53','2015-02-28 12:40:50'),(121,15,'midright','',4,'2015-02-28 16:07:12','2015-02-28 16:12:27'),(122,15,'bottom','',5,'2015-02-28 16:07:12','2015-02-28 16:07:12');
/*!40000 ALTER TABLE `refinery_page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_translations`
--

DROP TABLE IF EXISTS `refinery_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_translations_on_refinery_page_id` (`refinery_page_id`),
  KEY `index_refinery_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_translations`
--

LOCK TABLES `refinery_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_translations` VALUES (1,1,'en','2014-09-12 22:15:52','2015-02-28 12:35:49','About',NULL,'','about'),(2,2,'en','2014-09-12 22:15:52','2014-09-12 22:15:52','Page not found',NULL,NULL,'page-not-found'),(3,3,'en','2014-09-12 22:15:52','2015-01-14 13:58:44','Services',NULL,'','services'),(4,1,'ar','2014-09-13 00:15:47','2015-03-07 14:43:58','عن ناس',NULL,'','عن-ناس'),(5,4,'en','2014-09-13 00:36:30','2015-01-14 13:58:28','Academics',NULL,'','academics'),(6,4,'ar','2014-09-13 00:38:31','2014-09-13 00:56:47','برامجنا التعليمية',NULL,'','برامجنا-التعليمية'),(7,5,'en','2014-10-21 16:22:59','2014-11-29 00:47:51','News',NULL,'','news'),(8,6,'en','2014-10-21 16:27:07','2014-10-21 16:27:07','Admission',NULL,'','admission'),(10,8,'en','2014-11-29 00:26:30','2014-11-29 00:26:30','Calendar',NULL,'','calendar'),(11,9,'en','2014-11-29 00:41:21','2014-11-29 00:41:21','Financial Aid',NULL,'','financial-aid'),(12,10,'en','2014-11-29 00:56:22','2014-11-29 00:56:22','Graduates',NULL,'','graduates'),(13,11,'en','2014-11-29 00:59:42','2014-11-29 00:59:42','Facilities',NULL,'','facilities'),(14,12,'en','2014-11-29 01:04:22','2014-11-29 01:04:22','Partners',NULL,'','partners'),(15,13,'en','2015-01-14 14:49:03','2015-01-14 14:49:03','Courses',NULL,'','courses'),(16,14,'en','2015-01-14 14:58:55','2015-01-14 14:58:55','Schools',NULL,'','schools'),(17,15,'en','2015-01-14 16:11:16','2015-01-14 16:11:16','Facilities',NULL,'','facilities'),(18,16,'en','2015-01-14 16:11:29','2015-01-14 16:11:29','Graduates',NULL,'','graduates'),(19,17,'en','2015-01-14 16:11:47','2015-01-14 16:11:47','News',NULL,'','news'),(20,18,'en','2015-01-14 16:23:40','2015-01-14 16:23:40','Partners',NULL,'','partners'),(21,19,'en','2015-01-14 16:24:08','2015-01-14 16:24:08','Employment',NULL,'','employment'),(23,21,'en','2015-01-14 16:24:38','2015-01-14 16:24:38','Job Oppurtunities',NULL,'','job-oppurtunities'),(24,22,'en','2015-01-14 16:24:49','2015-01-14 16:24:49','PEP',NULL,'','pep'),(25,23,'en','2015-01-14 16:25:02','2015-01-14 16:25:02','Graduates Profile',NULL,'','graduates-profile'),(27,25,'en','2015-01-14 16:26:12','2015-01-14 16:26:12','Contact',NULL,'','contact'),(28,19,'ar','2015-01-29 17:02:20','2015-01-29 17:02:21','التوظيف',NULL,'','التوظيف'),(32,29,'en','2015-02-28 12:35:50','2015-02-28 12:39:23','Dynamicfields',NULL,'','dynamicfields'),(33,30,'en','2015-02-28 12:35:50','2015-02-28 12:39:32','Companies',NULL,'','companies'),(34,31,'en','2015-02-28 12:35:51','2015-02-28 12:39:41','Contact People',NULL,'','contact-people'),(35,32,'en','2015-02-28 12:35:51','2015-02-28 12:39:49','Jobs',NULL,'','jobs-page'),(36,33,'en','2015-02-28 12:35:51','2015-02-28 12:39:57','Industries',NULL,'','industries'),(37,34,'en','2015-02-28 12:35:52','2015-02-28 12:40:05','Job Roles',NULL,'','job-roles'),(38,35,'en','2015-02-28 12:35:52','2015-02-28 12:40:13','Job Types',NULL,'','job-types'),(39,36,'en','2015-02-28 12:35:52','2015-02-28 12:40:20','Education Levels',NULL,'','education-levels'),(40,37,'en','2015-02-28 12:35:52','2015-02-28 12:40:28','Career Levels',NULL,'','career-levels'),(41,38,'en','2015-02-28 12:35:53','2015-02-28 12:40:35','Cities',NULL,'','cities'),(42,39,'en','2015-02-28 12:35:53','2015-02-28 12:40:42','Areas',NULL,'','areas'),(43,40,'en','2015-02-28 12:35:53','2015-02-28 12:40:50','Addresses',NULL,'','addresses');
/*!40000 ALTER TABLE `refinery_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_pages`
--

DROP TABLE IF EXISTS `refinery_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `view_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_pages_on_depth` (`depth`),
  KEY `index_refinery_pages_on_id` (`id`),
  KEY `index_refinery_pages_on_lft` (`lft`),
  KEY `index_refinery_pages_on_parent_id` (`parent_id`),
  KEY `index_refinery_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_pages`
--

LOCK TABLES `refinery_pages` WRITE;
/*!40000 ALTER TABLE `refinery_pages` DISABLE KEYS */;
INSERT INTO `refinery_pages` VALUES (1,NULL,NULL,'عن-ناس',1,'/','^/$',0,0,0,1,12,0,'home',NULL,'2014-09-12 22:15:52','2015-03-07 14:43:58'),(2,1,NULL,'page-not-found',0,NULL,'^/404$',0,0,0,2,3,1,NULL,NULL,'2014-09-12 22:15:52','2014-09-12 22:15:52'),(3,NULL,NULL,'services',1,'',NULL,1,0,0,19,20,0,'mid-two',NULL,'2014-09-12 22:15:52','2015-01-14 13:58:44'),(4,NULL,NULL,'academics',1,'',NULL,1,0,0,13,18,0,'courses',NULL,'2014-09-13 00:36:30','2015-01-14 13:58:28'),(5,NULL,NULL,'news',0,'/news','^/news.*$',0,0,0,37,38,0,'show',NULL,'2014-10-21 16:22:59','2014-11-29 00:47:51'),(6,NULL,NULL,'admission',0,'',NULL,1,0,0,39,40,0,'show',NULL,'2014-10-21 16:27:07','2014-11-29 01:04:14'),(8,NULL,NULL,'calendar',1,'',NULL,1,0,0,21,22,0,'calendar',NULL,'2014-11-29 00:26:30','2014-11-29 00:26:46'),(9,NULL,NULL,'financial-aid',1,'',NULL,1,0,0,31,32,0,'mid-two',NULL,'2014-11-29 00:41:21','2015-01-14 16:42:40'),(10,NULL,NULL,'graduates',0,'',NULL,1,0,0,41,42,0,'mid-two',NULL,'2014-11-29 00:56:22','2015-01-14 16:22:54'),(11,NULL,NULL,'facilities',0,'',NULL,1,0,0,35,36,0,'mid-two',NULL,'2014-11-29 00:59:42','2015-01-14 13:58:05'),(12,NULL,NULL,'partners',0,'',NULL,1,0,0,43,44,0,'mid-two',NULL,'2014-11-29 01:04:22','2015-01-14 16:23:26'),(13,4,NULL,'courses',1,'',NULL,1,0,0,14,15,1,'mid-two',NULL,'2015-01-14 14:49:03','2015-01-14 14:49:03'),(14,4,NULL,'schools',1,'',NULL,1,0,0,16,17,1,'courses',NULL,'2015-01-14 14:58:55','2015-01-14 14:58:55'),(15,1,NULL,'facilities',1,'',NULL,1,0,0,4,5,1,'mid-two',NULL,'2015-01-14 16:11:16','2015-01-29 16:59:00'),(16,1,NULL,'graduates',1,'',NULL,1,0,0,6,7,1,'mid-two',NULL,'2015-01-14 16:11:29','2015-01-29 16:59:17'),(17,1,NULL,'news',1,'',NULL,1,0,0,8,9,1,'home',NULL,'2015-01-14 16:11:47','2015-01-14 16:11:47'),(18,1,NULL,'partners',1,'',NULL,1,0,0,10,11,1,'home',NULL,'2015-01-14 16:23:40','2015-01-14 16:23:40'),(19,NULL,NULL,'التوظيف',1,'',NULL,1,0,0,23,30,0,'show',NULL,'2015-01-14 16:24:08','2015-01-29 17:02:20'),(21,19,NULL,'job-oppurtunities',1,'',NULL,1,0,0,24,25,1,'jobs',NULL,'2015-01-14 16:24:38','2015-02-23 14:16:47'),(22,19,NULL,'pep',1,'',NULL,1,0,0,26,27,1,'show',NULL,'2015-01-14 16:24:49','2015-01-14 16:24:49'),(23,19,NULL,'graduates-profile',1,'',NULL,1,0,0,28,29,1,'show',NULL,'2015-01-14 16:25:02','2015-01-14 16:25:02'),(25,NULL,NULL,'contact',1,'',NULL,1,0,0,33,34,0,'mid-two',NULL,'2015-01-14 16:26:12','2015-01-14 16:36:31'),(29,NULL,NULL,'dynamicfields',0,'/dynamicfields','^/dynamicfields(/|/.+?|)$',0,0,0,45,46,0,'show',NULL,'2015-02-28 12:35:50','2015-02-28 12:39:23'),(30,NULL,NULL,'companies',0,'/companies','^/companies(/|/.+?|)$',0,0,0,47,48,0,'show',NULL,'2015-02-28 12:35:50','2015-02-28 12:39:32'),(31,NULL,NULL,'contact-people',0,'/companies/contact_people','^/companies/contact_people(/|/.+?|)$',0,0,0,49,50,0,'show',NULL,'2015-02-28 12:35:51','2015-02-28 12:39:41'),(32,NULL,NULL,'jobs-page',0,'/companies/jobs','^/companies/jobs(/|/.+?|)$',0,0,0,51,52,0,'show',NULL,'2015-02-28 12:35:51','2015-02-28 12:39:49'),(33,NULL,NULL,'industries',0,'/companies/industries','^/companies/industries(/|/.+?|)$',0,0,0,53,54,0,'show',NULL,'2015-02-28 12:35:51','2015-02-28 12:39:57'),(34,NULL,NULL,'job-roles',0,'/companies/job_roles','^/companies/job_roles(/|/.+?|)$',0,0,0,55,56,0,'show',NULL,'2015-02-28 12:35:52','2015-02-28 12:40:05'),(35,NULL,NULL,'job-types',0,'/companies/job_types','^/companies/job_types(/|/.+?|)$',0,0,0,57,58,0,'show',NULL,'2015-02-28 12:35:52','2015-02-28 12:40:13'),(36,NULL,NULL,'education-levels',0,'/companies/education_levels','^/companies/education_levels(/|/.+?|)$',0,0,0,59,60,0,'show',NULL,'2015-02-28 12:35:52','2015-02-28 12:40:20'),(37,NULL,NULL,'career-levels',0,'/companies/career_levels','^/companies/career_levels(/|/.+?|)$',0,0,0,61,62,0,'show',NULL,'2015-02-28 12:35:52','2015-02-28 16:05:32'),(38,NULL,NULL,'cities',0,'/companies/cities','^/companies/cities(/|/.+?|)$',0,0,0,63,64,0,'show',NULL,'2015-02-28 12:35:53','2015-02-28 12:40:35'),(39,NULL,NULL,'areas',0,'/companies/areas','^/companies/areas(/|/.+?|)$',0,0,0,65,66,0,'show',NULL,'2015-02-28 12:35:53','2015-02-28 12:40:42'),(40,NULL,NULL,'addresses',0,'/addresses','^/addresses(/|/.+?|)$',0,0,0,67,68,0,'show',NULL,'2015-02-28 12:35:53','2015-02-28 12:40:50');
/*!40000 ALTER TABLE `refinery_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_personal_infos`
--

DROP TABLE IF EXISTS `refinery_personal_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_personal_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `maritual_status` int(11) DEFAULT NULL,
  `languages` text COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degrees` text COLLATE utf8_unicode_ci,
  `skills` text COLLATE utf8_unicode_ci,
  `skilled_jobs` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `employer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_personal_infos`
--

LOCK TABLES `refinery_personal_infos` WRITE;
/*!40000 ALTER TABLE `refinery_personal_infos` DISABLE KEYS */;
INSERT INTO `refinery_personal_infos` VALUES (2,'Egyptian','1991-12-12','Cairo',1,1,'English','elmenisy@gmail.com','bachelor','none','none',NULL,NULL,'2015-02-28 13:57:12','2015-02-28 13:57:12',2,NULL,'Mohamed','El-Menisy');
/*!40000 ALTER TABLE `refinery_personal_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_resources`
--

DROP TABLE IF EXISTS `refinery_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_resources`
--

LOCK TABLES `refinery_resources` WRITE;
/*!40000 ALTER TABLE `refinery_resources` DISABLE KEYS */;
INSERT INTO `refinery_resources` VALUES (1,'application/pdf','project-networks_16467 (1).pdf',76816,'2014/11/29/00_32_12_413_project_networks_16467_1_.pdf',NULL,'2014-11-29 00:32:12','2014-11-29 00:32:12');
/*!40000 ALTER TABLE `refinery_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_settings`
--

DROP TABLE IF EXISTS `refinery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `destroyable` tinyint(1) DEFAULT '1',
  `scoping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `form_value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_settings_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_settings`
--

LOCK TABLES `refinery_settings` WRITE;
/*!40000 ALTER TABLE `refinery_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Superuser'),(2,'Refinery');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120521235544'),('20120521235545'),('20120521235546'),('20120521235547'),('20120522000041'),('20120522002154'),('20131005155410'),('20131005155411'),('20140909110849'),('20140909110853'),('20141021142108'),('20141021142109'),('20141021142110'),('20141021142111'),('20141021142112'),('20141021142113'),('20141021142114'),('20141021142115'),('20141021142116'),('20141021142117'),('20141021142118'),('20141021142119'),('20141027131202'),('20141102002104'),('20141102002105'),('20141102002106'),('20141102002107'),('20141102015703'),('20150214143138'),('20150214152212'),('20150221211840'),('20150223001148'),('20150223001616'),('20150223001854'),('20150223011206'),('20150223123216'),('20150223123248'),('20150225121523'),('20150225121524'),('20150225121525'),('20150225121526'),('20150225121527'),('20150225122951'),('20150225122962'),('20150225122963'),('20150225125604'),('20150225130139'),('20150225130356'),('20150228094718'),('20150228095147'),('20150228100848'),('20150228101254'),('20150228104004'),('20150228104620'),('20150323055708'),('20150323071122'),('20150323073528'),('20150323230730'),('20150323232240'),('20150323232410');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Refinery::Page::Translation','','','2014-09-12 22:15:52','2014-09-13 00:31:56'),(2,2,'Refinery::Page::Translation',NULL,NULL,'2014-09-12 22:15:52','2014-09-12 22:15:52'),(3,3,'Refinery::Page::Translation','','','2014-09-12 22:15:52','2014-10-21 16:26:44'),(4,4,'Refinery::Page::Translation','','','2014-09-13 00:15:47','2014-09-13 00:15:47'),(5,5,'Refinery::Page::Translation','','','2014-09-13 00:36:30','2014-09-13 00:36:30'),(6,6,'Refinery::Page::Translation','','','2014-09-13 00:38:31','2014-09-13 00:38:31'),(7,7,'Refinery::Page::Translation','','','2014-10-21 16:22:59','2014-11-29 00:47:51'),(8,8,'Refinery::Page::Translation','','','2014-10-21 16:27:07','2014-10-21 16:27:07'),(10,10,'Refinery::Page::Translation','','','2014-11-29 00:26:30','2014-11-29 00:26:30'),(11,11,'Refinery::Page::Translation','','','2014-11-29 00:41:21','2014-11-29 00:41:21'),(12,12,'Refinery::Page::Translation','','','2014-11-29 00:56:22','2014-11-29 00:56:22'),(13,13,'Refinery::Page::Translation','','','2014-11-29 00:59:42','2014-11-29 00:59:42'),(14,14,'Refinery::Page::Translation','','','2014-11-29 01:04:22','2014-11-29 01:04:22'),(15,15,'Refinery::Page::Translation','','','2015-01-14 14:49:03','2015-01-14 14:49:03'),(16,16,'Refinery::Page::Translation','','','2015-01-14 14:58:55','2015-01-14 14:58:55'),(17,17,'Refinery::Page::Translation','','','2015-01-14 16:11:16','2015-01-14 16:11:16'),(18,18,'Refinery::Page::Translation','','','2015-01-14 16:11:29','2015-01-14 16:11:29'),(19,19,'Refinery::Page::Translation','','','2015-01-14 16:11:47','2015-01-14 16:11:47'),(20,20,'Refinery::Page::Translation','','','2015-01-14 16:23:40','2015-01-14 16:23:40'),(21,21,'Refinery::Page::Translation','','','2015-01-14 16:24:08','2015-01-14 16:24:08'),(23,23,'Refinery::Page::Translation','','','2015-01-14 16:24:38','2015-01-14 16:24:38'),(24,24,'Refinery::Page::Translation','','','2015-01-14 16:24:49','2015-01-14 16:24:49'),(25,25,'Refinery::Page::Translation','','','2015-01-14 16:25:02','2015-01-14 16:25:02'),(27,27,'Refinery::Page::Translation','','','2015-01-14 16:26:12','2015-01-14 16:26:12'),(28,28,'Refinery::Page::Translation','','','2015-01-29 17:02:20','2015-01-29 17:02:20'),(32,32,'Refinery::Page::Translation','','','2015-02-28 12:35:50','2015-02-28 12:39:23'),(33,33,'Refinery::Page::Translation','','','2015-02-28 12:35:50','2015-02-28 12:39:32'),(34,34,'Refinery::Page::Translation','','','2015-02-28 12:35:51','2015-02-28 12:39:41'),(35,35,'Refinery::Page::Translation','','','2015-02-28 12:35:51','2015-02-28 12:39:49'),(36,36,'Refinery::Page::Translation','','','2015-02-28 12:35:51','2015-02-28 12:39:57'),(37,37,'Refinery::Page::Translation','','','2015-02-28 12:35:52','2015-02-28 12:40:05'),(38,38,'Refinery::Page::Translation','','','2015-02-28 12:35:52','2015-02-28 12:40:13'),(39,39,'Refinery::Page::Translation','','','2015-02-28 12:35:52','2015-02-28 12:40:20'),(40,40,'Refinery::Page::Translation','','','2015-02-28 12:35:52','2015-02-28 12:40:28'),(41,41,'Refinery::Page::Translation','','','2015-02-28 12:35:53','2015-02-28 12:40:35'),(42,42,'Refinery::Page::Translation','','','2015-02-28 12:35:53','2015-02-28 12:40:42'),(43,43,'Refinery::Page::Translation','','','2015-02-28 12:35:53','2015-02-28 12:40:50');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_students_on_email` (`email`),
  UNIQUE KEY `index_students_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2,'elmenisy@gmail.com','$2a$10$4zyvmwMXuq95EZzWmEceS.fkEjJwOWvh.KYWvFJwmjaUo07h/6rjW',NULL,NULL,NULL,2,'2015-03-23 07:58:06','2015-02-28 16:03:10','41.237.251.165','41.237.210.47','2015-02-28 13:57:12','2015-03-23 07:58:06');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plugins`
--

DROP TABLE IF EXISTS `user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_plugins_on_user_id_and_name` (`user_id`,`name`),
  KEY `index_user_plugins_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plugins`
--

LOCK TABLES `user_plugins` WRITE;
/*!40000 ALTER TABLE `user_plugins` DISABLE KEYS */;
INSERT INTO `user_plugins` VALUES (96,1,'refinery_i18n',0),(97,1,'refinery_core',1),(98,1,'refinery_dialogs',2),(99,1,'refinery_dashboard',3),(100,1,'refinery_images',4),(101,1,'refinery_pages',5),(102,1,'refinery_files',6),(103,1,'refinery_settings',7),(104,1,'refinerycms_news',8),(105,1,'home_photos',9),(106,1,'page_images',10),(107,1,'personal_infos',11),(108,1,'dynamicfields',12),(109,1,'companies',13),(110,1,'contact_people',14),(111,1,'jobs',15),(112,1,'industries',16),(113,1,'job_roles',17),(114,1,'job_types',18),(115,1,'education_levels',19),(116,1,'career_levels',20),(117,1,'cities',21),(118,1,'areas',22),(119,1,'addresses',23),(120,1,'job_applications',24),(121,1,'events',25);
/*!40000 ALTER TABLE `user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@nassacademy.org','$2a$10$hGdt.7ICKt9KtGzdba44jeXT0O9R0NDg3iKbzMFJH/H./RTbWyiF.',NULL,NULL,NULL,25,'2015-03-23 23:38:58','2015-03-22 01:34:00','41.237.251.165','41.237.162.22','2014-09-12 22:16:53','2015-03-23 23:38:58'),(2,'mo@mo.com','$2a$10$zQBEAwZtRnNt1H6n/Ma4J.yEPKGPQkDaIEdv/drnpIwZM99PHJ30G',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2015-02-28 12:35:49','2015-02-28 12:35:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-30  0:48:48
