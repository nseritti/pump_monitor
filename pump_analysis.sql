-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: pump_analysis
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

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
-- Crate database 
-- 
CREATE DATABASE IF NOT EXISTS pump_analysis;


--
-- Table structure for table `pump_analysis_6`
--

DROP TABLE IF EXISTS `pump_analysis_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_analysis_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin_id` varchar(48) DEFAULT NULL,
  `coin_name` varchar(48) DEFAULT NULL,
  `symbol` varchar(12) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `price_usd` float DEFAULT NULL,
  `price_btc` float DEFAULT NULL,
  `24h_volume_usd` bigint(20) DEFAULT NULL,
  `market_cap_usd` bigint(20) DEFAULT NULL,
  `available_supply` bigint(20) DEFAULT NULL,
  `total_supply` bigint(20) DEFAULT NULL,
  `max_supply` bigint(20) DEFAULT NULL,
  `percent_change_1h` int(11) DEFAULT NULL,
  `percent_change_24h` int(11) DEFAULT NULL,
  `percent_change_7d` int(11) DEFAULT NULL,
  `last_updated` int(11) DEFAULT NULL,
  `data_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_analysis_6`
--

LOCK TABLES `pump_analysis_6` WRITE;
/*!40000 ALTER TABLE `pump_analysis_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_analysis_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pump_analysis_5`
--

DROP TABLE IF EXISTS `pump_analysis_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_analysis_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin_id` varchar(48) DEFAULT NULL,
  `coin_name` varchar(48) DEFAULT NULL,
  `symbol` varchar(12) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `price_usd` float DEFAULT NULL,
  `price_btc` float DEFAULT NULL,
  `24h_volume_usd` bigint(20) DEFAULT NULL,
  `market_cap_usd` bigint(20) DEFAULT NULL,
  `available_supply` bigint(20) DEFAULT NULL,
  `total_supply` bigint(20) DEFAULT NULL,
  `max_supply` bigint(20) DEFAULT NULL,
  `percent_change_1h` int(11) DEFAULT NULL,
  `percent_change_24h` int(11) DEFAULT NULL,
  `percent_change_7d` int(11) DEFAULT NULL,
  `last_updated` int(11) DEFAULT NULL,
  `data_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_analysis_5`
--

LOCK TABLES `pump_analysis_5` WRITE;
/*!40000 ALTER TABLE `pump_analysis_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_analysis_5` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `pump_analysis_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_analysis_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin_id` varchar(48) DEFAULT NULL,
  `coin_name` varchar(48) DEFAULT NULL,
  `symbol` varchar(12) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `price_usd` float DEFAULT NULL,
  `price_btc` float DEFAULT NULL,
  `24h_volume_usd` bigint(20) DEFAULT NULL,
  `market_cap_usd` bigint(20) DEFAULT NULL,
  `available_supply` bigint(20) DEFAULT NULL,
  `total_supply` bigint(20) DEFAULT NULL,
  `max_supply` bigint(20) DEFAULT NULL,
  `percent_change_1h` int(11) DEFAULT NULL,
  `percent_change_24h` int(11) DEFAULT NULL,
  `percent_change_7d` int(11) DEFAULT NULL,
  `last_updated` int(11) DEFAULT NULL,
  `data_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_analysis_4`
--

LOCK TABLES `pump_analysis_4` WRITE;
/*!40000 ALTER TABLE `pump_analysis_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_analysis_4` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `pump_analysis_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_analysis_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin_id` varchar(48) DEFAULT NULL,
  `coin_name` varchar(48) DEFAULT NULL,
  `symbol` varchar(12) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `price_usd` float DEFAULT NULL,
  `price_btc` float DEFAULT NULL,
  `24h_volume_usd` bigint(20) DEFAULT NULL,
  `market_cap_usd` bigint(20) DEFAULT NULL,
  `available_supply` bigint(20) DEFAULT NULL,
  `total_supply` bigint(20) DEFAULT NULL,
  `max_supply` bigint(20) DEFAULT NULL,
  `percent_change_1h` int(11) DEFAULT NULL,
  `percent_change_24h` int(11) DEFAULT NULL,
  `percent_change_7d` int(11) DEFAULT NULL,
  `last_updated` int(11) DEFAULT NULL,
  `data_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_analysis_3`
--

LOCK TABLES `pump_analysis_3` WRITE;
/*!40000 ALTER TABLE `pump_analysis_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_analysis_3` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `pump_analysis_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_analysis_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin_id` varchar(48) DEFAULT NULL,
  `coin_name` varchar(48) DEFAULT NULL,
  `symbol` varchar(12) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `price_usd` float DEFAULT NULL,
  `price_btc` float DEFAULT NULL,
  `24h_volume_usd` bigint(20) DEFAULT NULL,
  `market_cap_usd` bigint(20) DEFAULT NULL,
  `available_supply` bigint(20) DEFAULT NULL,
  `total_supply` bigint(20) DEFAULT NULL,
  `max_supply` bigint(20) DEFAULT NULL,
  `percent_change_1h` int(11) DEFAULT NULL,
  `percent_change_24h` int(11) DEFAULT NULL,
  `percent_change_7d` int(11) DEFAULT NULL,
  `last_updated` int(11) DEFAULT NULL,
  `data_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_analysis_2`
--

LOCK TABLES `pump_analysis_2` WRITE;
/*!40000 ALTER TABLE `pump_analysis_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_analysis_2` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `pump_analysis_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_analysis_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin_id` varchar(48) DEFAULT NULL,
  `coin_name` varchar(48) DEFAULT NULL,
  `symbol` varchar(12) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `price_usd` float DEFAULT NULL,
  `price_btc` float DEFAULT NULL,
  `24h_volume_usd` bigint(20) DEFAULT NULL,
  `market_cap_usd` bigint(20) DEFAULT NULL,
  `available_supply` bigint(20) DEFAULT NULL,
  `total_supply` bigint(20) DEFAULT NULL,
  `max_supply` bigint(20) DEFAULT NULL,
  `percent_change_1h` int(11) DEFAULT NULL,
  `percent_change_24h` int(11) DEFAULT NULL,
  `percent_change_7d` int(11) DEFAULT NULL,
  `last_updated` int(11) DEFAULT NULL,
  `data_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_analysis_1`
--

LOCK TABLES `pump_analysis_1` WRITE;
/*!40000 ALTER TABLE `pump_analysis_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_analysis_1` ENABLE KEYS */;
UNLOCK TABLES;





/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-23  7:42:33
