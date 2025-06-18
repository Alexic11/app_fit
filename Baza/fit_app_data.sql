-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: fitapp
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `aktivnost`
--

DROP TABLE IF EXISTS `aktivnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aktivnost` (
  `id_aktivnost` int NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) NOT NULL,
  `id_tipa_aktivnosti` int NOT NULL,
  `id_korisnika` int NOT NULL,
  `trajanje_u_minutama` int NOT NULL DEFAULT '0',
  `datum_vrijeme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_aktivnost`),
  KEY `fk_aktivnost_tip_aktivnosti_idx` (`id_tipa_aktivnosti`),
  KEY `fk_aktivnost_korisnik_idx` (`id_korisnika`),
  CONSTRAINT `fk_aktivnost_korisnik` FOREIGN KEY (`id_korisnika`) REFERENCES `korisnik` (`id_korisnik`),
  CONSTRAINT `fk_aktivnost_tip_aktivnosti` FOREIGN KEY (`id_tipa_aktivnosti`) REFERENCES `tip_aktivnosti` (`id_tip_aktivnosti`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aktivnost`
--

LOCK TABLES `aktivnost` WRITE;
/*!40000 ALTER TABLE `aktivnost` DISABLE KEYS */;
INSERT INTO `aktivnost` VALUES (5,'swim',3,2,30,'2025-06-16 23:08:00'),(7,'recovery run',1,2,30,'2025-06-17 10:21:00');
/*!40000 ALTER TABLE `aktivnost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cilj`
--

DROP TABLE IF EXISTS `cilj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cilj` (
  `id_cilj` int NOT NULL AUTO_INCREMENT,
  `dnevni_limit_kalorija` int NOT NULL,
  `id_korisnik` int NOT NULL,
  PRIMARY KEY (`id_cilj`),
  KEY `fk_cilj_korisnik_idx` (`id_korisnik`),
  CONSTRAINT `fk_cilj_korisnik` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnik` (`id_korisnik`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cilj`
--

LOCK TABLES `cilj` WRITE;
/*!40000 ALTER TABLE `cilj` DISABLE KEYS */;
INSERT INTO `cilj` VALUES (1,2000,2);
/*!40000 ALTER TABLE `cilj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korisnik`
--

DROP TABLE IF EXISTS `korisnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korisnik` (
  `id_korisnik` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL,
  `prezime` varchar(100) NOT NULL,
  `korisnicko_ime` varchar(255) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `id_role` int NOT NULL,
  PRIMARY KEY (`id_korisnik`),
  KEY `fk_korisnik_rola_idx` (`id_role`),
  CONSTRAINT `fk_korisnik_rola` FOREIGN KEY (`id_role`) REFERENCES `rola` (`id_rola`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnik`
--

LOCK TABLES `korisnik` WRITE;
/*!40000 ALTER TABLE `korisnik` DISABLE KEYS */;
INSERT INTO `korisnik` VALUES (1,'admin','admin','admin','jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=',1),(2,'milan','aleksic','m','a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=',2);
/*!40000 ALTER TABLE `korisnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obrok`
--

DROP TABLE IF EXISTS `obrok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obrok` (
  `id_obrok` int NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) NOT NULL,
  `proteini` int NOT NULL,
  `ugljenihidrati` int NOT NULL,
  `masti` int NOT NULL,
  `masa` int NOT NULL,
  `kalorije` int NOT NULL,
  `id_tip_obroka` int NOT NULL,
  `id_korisnik` int NOT NULL,
  `datum_vrijeme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_obrok`),
  KEY `id_tip_obroka_idx` (`id_tip_obroka`),
  KEY `fk_obrok_korisnik_idx` (`id_korisnik`),
  CONSTRAINT `fk_obrok_korisnik` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnik` (`id_korisnik`),
  CONSTRAINT `fk_obrok_tip_obroka` FOREIGN KEY (`id_tip_obroka`) REFERENCES `tip_obroka` (`id_tip_obroka`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obrok`
--

LOCK TABLES `obrok` WRITE;
/*!40000 ALTER TABLE `obrok` DISABLE KEYS */;
INSERT INTO `obrok` VALUES (7,'bolonjeze',30,40,20,300,700,2,2,'2025-06-17 10:20:00'),(8,'losos',40,20,30,300,500,3,2,'2025-06-17 10:22:00');
/*!40000 ALTER TABLE `obrok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rola`
--

DROP TABLE IF EXISTS `rola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rola` (
  `id_rola` int NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rola`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rola`
--

LOCK TABLES `rola` WRITE;
/*!40000 ALTER TABLE `rola` DISABLE KEYS */;
INSERT INTO `rola` VALUES (1,'ADMIN'),(2,'USER');
/*!40000 ALTER TABLE `rola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_aktivnosti`
--

DROP TABLE IF EXISTS `tip_aktivnosti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tip_aktivnosti` (
  `id_tip_aktivnosti` int NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) NOT NULL,
  `kalorije_po_minuti` int NOT NULL DEFAULT '5',
  PRIMARY KEY (`id_tip_aktivnosti`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_aktivnosti`
--

LOCK TABLES `tip_aktivnosti` WRITE;
/*!40000 ALTER TABLE `tip_aktivnosti` DISABLE KEYS */;
INSERT INTO `tip_aktivnosti` VALUES (1,'trcanje',5),(2,'hodanje',5),(3,'plivanje',5);
/*!40000 ALTER TABLE `tip_aktivnosti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_obroka`
--

DROP TABLE IF EXISTS `tip_obroka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tip_obroka` (
  `id_tip_obroka` int NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tip_obroka`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_obroka`
--

LOCK TABLES `tip_obroka` WRITE;
/*!40000 ALTER TABLE `tip_obroka` DISABLE KEYS */;
INSERT INTO `tip_obroka` VALUES (1,'dorucak'),(2,'rucak'),(3,'vecera'),(4,'uzina');
/*!40000 ALTER TABLE `tip_obroka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fitapp'
--

--
-- Dumping routines for database 'fitapp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-18 10:44:09
