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
-- Table structure for table `pump_analysis_new`
--

DROP TABLE IF EXISTS `pump_analysis_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_analysis_new` (
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
-- Dumping data for table `pump_analysis_new`
--

LOCK TABLES `pump_analysis_new` WRITE;
/*!40000 ALTER TABLE `pump_analysis_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_analysis_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pump_analysis_old`
--

DROP TABLE IF EXISTS `pump_analysis_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_analysis_old` (
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
-- Dumping data for table `pump_analysis_old`
--

LOCK TABLES `pump_analysis_old` WRITE;
/*!40000 ALTER TABLE `pump_analysis_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_analysis_old` ENABLE KEYS */;
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
