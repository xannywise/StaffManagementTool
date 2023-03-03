-- MariaDB dump 10.19  Distrib 10.5.18-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: interne_schulverwaltung
-- ------------------------------------------------------
-- Server version	10.5.18-MariaDB-0+deb11u1

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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isv_bekenntnis`
--

DROP TABLE IF EXISTS `isv_bekenntnis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isv_bekenntnis` (
  `id` int(11) NOT NULL,
  `bezeichnung` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isv_bekenntnis`
--

LOCK TABLES `isv_bekenntnis` WRITE;
/*!40000 ALTER TABLE `isv_bekenntnis` DISABLE KEYS */;
/*!40000 ALTER TABLE `isv_bekenntnis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isv_betrieb`
--

DROP TABLE IF EXISTS `isv_betrieb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isv_betrieb` (
  `betriebnr` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `strasse` varchar(100) DEFAULT NULL,
  `hausnummer` varchar(10) DEFAULT NULL,
  `plz` varchar(10) DEFAULT NULL,
  `ort` varchar(50) DEFAULT NULL,
  `mobil` varchar(50) DEFAULT NULL,
  `telefon` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`betriebnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isv_betrieb`
--

LOCK TABLES `isv_betrieb` WRITE;
/*!40000 ALTER TABLE `isv_betrieb` DISABLE KEYS */;
/*!40000 ALTER TABLE `isv_betrieb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isv_geschlecht`
--

DROP TABLE IF EXISTS `isv_geschlecht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isv_geschlecht` (
  `bezeichnung` varchar(50) NOT NULL,
  `fontsymbo` varchar(50) DEFAULT NULL,
  `anrede_1` varchar(20) DEFAULT NULL,
  `anrede_2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bezeichnung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isv_geschlecht`
--

LOCK TABLES `isv_geschlecht` WRITE;
/*!40000 ALTER TABLE `isv_geschlecht` DISABLE KEYS */;
/*!40000 ALTER TABLE `isv_geschlecht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isv_kennzeichen`
--

DROP TABLE IF EXISTS `isv_kennzeichen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isv_kennzeichen` (
  `kfz_id` int(11) NOT NULL,
  `lokdiffmerkmal_id` varchar(100) DEFAULT NULL,
  `kfz_marke` varchar(20) DEFAULT NULL,
  `kfz_model` varchar(20) DEFAULT NULL,
  `kfz_ort` varchar(10) DEFAULT NULL,
  `kfz_erkennungsbuchstaben` varchar(10) DEFAULT NULL,
  `kfz_erkennungsnummer` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kfz_id`),
  KEY `fk_lokdiffmerkmal_kfz` (`lokdiffmerkmal_id`),
  CONSTRAINT `fk_lokdiffmerkmal_kfz` FOREIGN KEY (`lokdiffmerkmal_id`) REFERENCES `isv_schueler` (`lokdiffmerkmal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isv_kennzeichen`
--

LOCK TABLES `isv_kennzeichen` WRITE;
/*!40000 ALTER TABLE `isv_kennzeichen` DISABLE KEYS */;
/*!40000 ALTER TABLE `isv_kennzeichen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isv_klasse`
--

DROP TABLE IF EXISTS `isv_klasse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isv_klasse` (
  `name` varchar(50) NOT NULL,
  `klassenleitung_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `fk_klassenleitung` (`klassenleitung_id`),
  CONSTRAINT `fk_klassenleitung` FOREIGN KEY (`klassenleitung_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isv_klasse`
--

LOCK TABLES `isv_klasse` WRITE;
/*!40000 ALTER TABLE `isv_klasse` DISABLE KEYS */;
/*!40000 ALTER TABLE `isv_klasse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isv_logeintraege`
--

DROP TABLE IF EXISTS `isv_logeintraege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isv_logeintraege` (
  `log_id` int(11) NOT NULL,
  `lokdiffmerkmal_id` varchar(100) DEFAULT NULL,
  `eintrags_datum` date DEFAULT NULL,
  `beschreibung` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `fk_lokdiffmerkmalLog` (`lokdiffmerkmal_id`),
  CONSTRAINT `fk_lokdiffmerkmalLog` FOREIGN KEY (`lokdiffmerkmal_id`) REFERENCES `isv_schueler` (`lokdiffmerkmal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isv_logeintraege`
--

LOCK TABLES `isv_logeintraege` WRITE;
/*!40000 ALTER TABLE `isv_logeintraege` DISABLE KEYS */;
/*!40000 ALTER TABLE `isv_logeintraege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isv_logins`
--

DROP TABLE IF EXISTS `isv_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isv_logins` (
  `lokdiffmerkmal_id` varchar(100) NOT NULL,
  `login_server` varchar(50) DEFAULT NULL,
  `login_mebis` varchar(50) DEFAULT NULL,
  `login_untis` varchar(50) DEFAULT NULL,
  `pw_mebis` varchar(50) DEFAULT NULL,
  `pw_untis` varchar(50) DEFAULT NULL,
  `export_date` date DEFAULT NULL,
  PRIMARY KEY (`lokdiffmerkmal_id`),
  CONSTRAINT `fk_lokdiffmerkmal` FOREIGN KEY (`lokdiffmerkmal_id`) REFERENCES `isv_schueler` (`lokdiffmerkmal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isv_logins`
--

LOCK TABLES `isv_logins` WRITE;
/*!40000 ALTER TABLE `isv_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `isv_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isv_parkausweise`
--

DROP TABLE IF EXISTS `isv_parkausweise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isv_parkausweise` (
  `parkausweis_id` int(11) NOT NULL,
  `gedruckt` tinyint(4) DEFAULT NULL,
  `lokdiffmerkmal_id` varchar(100) DEFAULT NULL,
  `kfz_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`parkausweis_id`),
  KEY `fk_lokdiffmerkmalParkausweis` (`lokdiffmerkmal_id`),
  KEY `fk_kennzeichen` (`kfz_id`),
  CONSTRAINT `fk_kennzeichen` FOREIGN KEY (`kfz_id`) REFERENCES `isv_kennzeichen` (`kfz_id`),
  CONSTRAINT `fk_lokdiffmerkmalParkausweis` FOREIGN KEY (`lokdiffmerkmal_id`) REFERENCES `isv_schueler` (`lokdiffmerkmal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isv_parkausweise`
--

LOCK TABLES `isv_parkausweise` WRITE;
/*!40000 ALTER TABLE `isv_parkausweise` DISABLE KEYS */;
/*!40000 ALTER TABLE `isv_parkausweise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isv_schueler`
--

DROP TABLE IF EXISTS `isv_schueler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isv_schueler` (
  `lokdiffmerkmal` varchar(100) NOT NULL,
  `rufname` varchar(50) DEFAULT NULL,
  `familienname` varchar(50) DEFAULT NULL,
  `geburtsdatum` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `strasse` varchar(100) DEFAULT NULL,
  `hausnummer` varchar(20) DEFAULT NULL,
  `plz` varchar(20) DEFAULT NULL,
  `ort` varchar(50) DEFAULT NULL,
  `telefon` varchar(50) DEFAULT NULL,
  `aktiv` tinyint(4) DEFAULT NULL,
  `eintritt` date DEFAULT NULL,
  `austritt` date DEFAULT NULL,
  `bekenntnis_id` int(11) DEFAULT NULL,
  `betrieb_id` varchar(100) DEFAULT NULL,
  `geschlecht_id` varchar(50) DEFAULT NULL,
  `klasse_id` varchar(50) DEFAULT NULL,
  `parkausweis_gesperrt` tinyint(4) DEFAULT NULL,
  `parkausweis_verwarnungen` int(11) DEFAULT NULL,
  PRIMARY KEY (`lokdiffmerkmal`),
  KEY `fk_bekenntnis` (`bekenntnis_id`),
  KEY `fk_betrieb` (`betrieb_id`),
  KEY `fk_geschlecht` (`geschlecht_id`),
  KEY `fk_klasse` (`klasse_id`),
  CONSTRAINT `fk_bekenntnis` FOREIGN KEY (`bekenntnis_id`) REFERENCES `isv_bekenntnis` (`id`),
  CONSTRAINT `fk_betrieb` FOREIGN KEY (`betrieb_id`) REFERENCES `isv_betrieb` (`betriebnr`),
  CONSTRAINT `fk_geschlecht` FOREIGN KEY (`geschlecht_id`) REFERENCES `isv_geschlecht` (`bezeichnung`),
  CONSTRAINT `fk_klasse` FOREIGN KEY (`klasse_id`) REFERENCES `isv_klasse` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isv_schueler`
--

LOCK TABLES `isv_schueler` WRITE;
/*!40000 ALTER TABLE `isv_schueler` DISABLE KEYS */;
/*!40000 ALTER TABLE `isv_schueler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-23 12:27:39
