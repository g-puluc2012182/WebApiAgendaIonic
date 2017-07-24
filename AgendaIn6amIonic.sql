-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: agendain6am
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCategoria` varchar(30) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Amigos'),(2,'Familia'),(3,'Trabajo'),(7,'Usuarios');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.categoriaPost BEFORE INSERT ON Categoria FOR EACH ROW
BEGIN
	INSERT INTO Historial(accion) VALUES('INSERT-CATEGORIA');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita` (
  `idCita` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(30) NOT NULL,
  `lugar` varchar(30) NOT NULL,
  `asunto` varchar(30) NOT NULL,
  `idContacto` int(11) NOT NULL,
  PRIMARY KEY (`idCita`),
  KEY `idContacto` (`idContacto`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (1,'11-02-2017','Ciudad de Guatemala','Cita de Negocios',4),(4,'22-07-2017','Parque de diversiones','Cita de juegos',42),(3,'21-08-2017','Villa Nueva ','Cita Negocios',30),(5,'2017-04-04','Ciudad de Guatemala','Cita de Negociaciones',46);
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER citaPost BEFORE INSERT ON Cita FOR EACH ROW
BEGIN
INSERT INTO Historial (accion) VALUES('INSERT-CITA');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER citaPut BEFORE UPDATE ON Cita FOR EACH ROW
BEGIN
INSERT INTO Historial (accion) VALUES ('UPDATE-CITA');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER citaDelete BEFORE DELETE ON Cita FOR EACH ROW
BEGIN
INSERT INTO Historial (accion) VALUES ('DELETE-CITA');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `idContacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  PRIMARY KEY (`idContacto`),
  KEY `idCategoria` (`idCategoria`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (1,'Geovanny ','Puluc','Guatemala','51417152','gpuluc@gmail.com',1),(2,'Jose ','Perez','Guatemala ','66554433','jperez@gmail.com',3),(3,'Rodrigo','Lemus','Guatemala','77665544','rlemus@gmail.com',5),(4,'Efrain ','Hernandez','31 calle 7-78 zona 3','58875705','ehernandez@gmail.com',2),(30,'Jorge ','Puluc','31 calle 7-54 zona 3 ','48530409','jpuluc@gmail.com',2),(37,'Juan ','Perez','Guatemala Zona 18','11229988','jperez@gmail.com',5),(32,'Roberto','Alvarez ','22 calle 0-00 zona 12 ','35669988','ralvarez@gmail.com',3),(33,'Juan ','Ramos','31 calle 5-55 zona 21 ','44558899','jramos@gmail.com',5),(36,'Hugo ','Perez','Guatemala Zona 12','55556677','hpuerez@gmail.com',3),(38,'Kennet','Beltran','Guatemala ','77889966','kbeltran@gmail.com',5),(40,'Kennet','Garcia','Guatemala','11223344','kgarcia@gmail.com',6),(42,'Lemus','Salvador','Guatemala zona 13','77665544','lsalvador@gmail.com',2),(44,'Roberto','Hernandez','Guatemala zona 3','99886655','rmartinez@gmail.com',1),(45,'Nancy','Hernandez','Guatemala Zona 3','24406576','nhernandez@gmail.com',2),(47,'Estuardo','Barrera','Guatemala zona 16','88776655','gmendez@gmail.com',7);
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.contactoPost BEFORE INSERT ON Contacto FOR EACH ROW
BEGIN
	INSERT INTO Historial (accion) VALUES('INSERT-CONTACTO');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.contactoPut BEFORE UPDATE ON Contacto FOR EACH ROW
BEGIN
	INSERT INTO Historial (accion) VALUES ('UPDATE-CONTACTO');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.contactoDelete BEFORE DELETE ON Contacto FOR EACH ROW
BEGIN
	INSERT INTO Historial (accion) VALUES ('DELETE-CONTACTO');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `contacto_usuario`
--

DROP TABLE IF EXISTS `contacto_usuario`;
/*!50001 DROP VIEW IF EXISTS `contacto_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `contacto_usuario` AS SELECT 
 1 AS `idContacto`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `direccion`,
 1 AS `telefono`,
 1 AS `correo`,
 1 AS `nombreCategoria`,
 1 AS `idUsuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial` (
  `idHistorial` int(11) NOT NULL AUTO_INCREMENT,
  `accion` varchar(30) NOT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idHistorial`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
INSERT INTO `historial` VALUES (1,'INSERT-CONTACTO','2017-06-30 02:14:55'),(2,'INSERT-CONTACTO','2017-06-30 02:16:02'),(3,'INSERT-CONTACTO','2017-06-30 02:18:30'),(4,'INSERT-CONTACTO','2017-06-30 02:18:31'),(5,'INSERT-CONTACTO','2017-06-30 02:18:31'),(6,'INSERT-CONTACTO','2017-06-30 02:18:31'),(7,'INSERT-CONTACTO','2017-06-30 02:18:31'),(8,'INSERT-CONTACTO','2017-06-30 02:18:31'),(9,'INSERT-CONTACTO','2017-06-30 02:18:32'),(10,'INSERT-CONTACTO','2017-06-30 02:18:32'),(11,'INSERT-CONTACTO','2017-06-30 02:18:45'),(12,'INSERT-CONTACTO','2017-06-30 02:18:45'),(13,'INSERT-CONTACTO','2017-06-30 02:18:45'),(14,'INSERT-CONTACTO','2017-06-30 02:18:46'),(15,'INSERT-CONTACTO','2017-06-30 02:18:46'),(16,'INSERT-CONTACTO','2017-06-30 02:18:46'),(17,'INSERT-CONTACTO','2017-06-30 02:18:46'),(18,'INSERT-CONTACTO','2017-06-30 02:18:46'),(19,'INSERT-CONTACTO','2017-06-30 02:18:46'),(20,'INSERT-CONTACTO','2017-06-30 02:18:47'),(21,'INSERT-CONTACTO','2017-06-30 02:18:47'),(22,'INSERT-CONTACTO','2017-06-30 02:18:47'),(23,'INSERT-CONTACTO','2017-06-30 02:18:47'),(24,'INSERT-CONTACTO','2017-06-30 02:23:38'),(25,'INSERT-CONTACTO','2017-06-30 03:25:23'),(26,'INSERT-CONTACTO','2017-06-30 03:25:32'),(27,'DELETE-CONTACTO','2017-06-30 03:34:01'),(28,'DELETE-CONTACTO','2017-06-30 03:34:01'),(29,'DELETE-CONTACTO','2017-06-30 03:34:01'),(30,'DELETE-CONTACTO','2017-06-30 03:34:01'),(31,'DELETE-CONTACTO','2017-06-30 03:34:01'),(32,'DELETE-CONTACTO','2017-06-30 03:34:01'),(33,'DELETE-CONTACTO','2017-06-30 03:34:01'),(34,'DELETE-CONTACTO','2017-06-30 03:34:01'),(35,'DELETE-CONTACTO','2017-06-30 03:34:01'),(36,'DELETE-CONTACTO','2017-06-30 03:34:01'),(37,'DELETE-CONTACTO','2017-06-30 03:34:01'),(38,'DELETE-CONTACTO','2017-06-30 03:34:01'),(39,'DELETE-CONTACTO','2017-06-30 03:34:01'),(40,'DELETE-CONTACTO','2017-06-30 03:34:01'),(41,'DELETE-CONTACTO','2017-06-30 03:34:01'),(42,'DELETE-CONTACTO','2017-06-30 03:34:01'),(43,'DELETE-CONTACTO','2017-06-30 03:34:01'),(44,'DELETE-CONTACTO','2017-06-30 03:34:01'),(45,'DELETE-CONTACTO','2017-06-30 03:34:01'),(46,'DELETE-CONTACTO','2017-06-30 03:34:01'),(47,'DELETE-CONTACTO','2017-06-30 03:34:01'),(48,'DELETE-CONTACTO','2017-06-30 03:34:01'),(49,'DELETE-CONTACTO','2017-06-30 03:34:01'),(50,'DELETE-CONTACTO','2017-06-30 03:34:01'),(51,'DELETE-CONTACTO','2017-06-30 03:34:01'),(52,'INSERT-CONTACTO','2017-06-30 03:35:32'),(53,'INSERT-USUARIODETALLE','2017-06-30 03:40:40'),(54,'INSERT-USUARIO','2017-06-30 03:42:17'),(55,'INSERT-CONTACTO','2017-06-30 03:53:41'),(56,'INSERT-CONTACTO','2017-06-30 04:07:28'),(57,'INSERT-CONTACTO','2017-06-30 04:08:46'),(58,'INSERT-CONTACTO','2017-06-30 04:10:36'),(59,'INSERT-CONTACTO','2017-06-30 04:25:00'),(60,'DELETE-CONTACTO','2017-06-30 05:16:04'),(61,'INSERT-USUARIO','2017-07-16 01:14:59'),(62,'INSERT-CONTACTO','2017-07-16 01:27:40'),(63,'DELETE-CONTACTO','2017-07-16 01:29:20'),(64,'INSERT-USUARIO','2017-07-19 00:42:52'),(65,'INSERT-USUARIO','2017-07-19 01:29:03'),(66,'INSERT-CATEGORIA','2017-07-20 00:08:36'),(67,'INSERT-CATEGORIA','2017-07-20 00:12:47'),(68,'INSERT-CATEGORIA','2017-07-20 00:13:45'),(69,'INSERT-CATEGORIA','2017-07-20 00:14:03'),(70,'INSERT-CATEGORIA','2017-07-20 00:17:08'),(71,'UPDATE-CONTACTO','2017-07-20 16:27:55'),(72,'UPDATE-CONTACTO','2017-07-20 16:30:36'),(73,'UPDATE-CONTACTO','2017-07-20 16:36:09'),(74,'UPDATE-CONTACTO','2017-07-20 16:36:22'),(75,'INSERT-CONTACTO','2017-07-20 17:23:33'),(76,'INSERT-CONTACTO','2017-07-20 17:24:50'),(77,'UPDATE-CONTACTO','2017-07-20 18:59:40'),(78,'UPDATE-CONTACTO','2017-07-20 19:01:32'),(79,'UPDATE-CONTACTO','2017-07-20 19:05:51'),(80,'INSERT-TAREA','2017-07-20 19:22:12'),(81,'UPDATE-TAREA','2017-07-20 19:27:38'),(82,'DELETE-CONTACTO','2017-07-20 22:40:21'),(83,'UPDATE-CONTACTO','2017-07-20 22:40:51'),(84,'UPDATE-CONTACTO','2017-07-21 00:19:23'),(85,'INSERT-USUARIO','2017-07-21 00:32:37'),(86,'INSERT-CATEGORIA','2017-07-21 00:47:23'),(87,'UPDATE-CONTACTO','2017-07-21 00:50:26'),(88,'UPDATE-CONTACTO','2017-07-21 00:52:39'),(89,'UPDATE-CONTACTO','2017-07-21 00:52:53'),(90,'UPDATE-TAREA','2017-07-21 00:56:34'),(91,'INSERT-CONTACTO','2017-07-21 01:04:24'),(92,'UPDATE-CONTACTO','2017-07-21 01:04:41'),(93,'UPDATE-CONTACTO','2017-07-21 02:06:07'),(94,'UPDATE-CONTACTO','2017-07-21 02:06:16'),(95,'INSERT-USUARIO','2017-07-21 13:35:19'),(96,'INSERT-CONTACTO','2017-07-21 13:36:00'),(97,'INSERT-CONTACTO','2017-07-21 13:38:32'),(98,'DELETE-CONTACTO','2017-07-21 13:38:46'),(99,'INSERT-CONTACTO','2017-07-21 13:44:42'),(100,'INSERT-TAREA','2017-07-21 13:46:27'),(101,'INSERT-USUARIO','2017-07-21 13:51:06'),(102,'INSERT-CONTACTO','2017-07-21 13:53:34'),(103,'DELETE-CONTACTO','2017-07-21 13:55:03'),(104,'INSERT-CONTACTO','2017-07-21 17:42:23'),(105,'INSERT-CONTACTO','2017-07-21 17:44:17'),(106,'DELETE-CONTACTO','2017-07-21 17:46:21'),(107,'INSERT-TAREA','2017-07-22 23:01:51'),(108,'INSERT-TAREA','2017-07-22 23:05:21'),(109,'INSERT-TAREA','2017-07-22 23:08:16'),(110,'INSERT-TAREA','2017-07-22 23:12:24'),(111,'DELETE-TAREA','2017-07-22 23:13:08'),(112,'INSERT-TAREA','2017-07-22 23:16:53'),(113,'DELETE-TAREA','2017-07-22 23:17:09'),(114,'INSERT-TAREA','2017-07-22 23:19:21'),(115,'INSERT-TAREA','2017-07-22 23:24:55'),(116,'INSERT-TAREA','2017-07-22 23:28:37'),(117,'INSERT-TAREA','2017-07-22 23:29:34'),(118,'DELETE-TAREA','2017-07-22 23:29:53'),(119,'INSERT-TAREA','2017-07-22 23:34:25'),(120,'UPDATE-TAREA','2017-07-22 23:35:26'),(121,'INSERT-CONTACTO','2017-07-23 00:02:00'),(122,'UPDATE-CONTACTO','2017-07-23 00:03:18'),(123,'INSERT-CONTACTO','2017-07-23 00:06:30'),(124,'INSERT-CONTACTO','2017-07-23 00:10:07'),(125,'UPDATE-CONTACTO','2017-07-23 00:10:37'),(126,'INSERT-CITA','2017-07-23 03:00:25'),(127,'INSERT-CITA','2017-07-23 03:02:45'),(128,'INSERT-CITA','2017-07-23 03:03:57'),(129,'INSERT-CITA','2017-07-23 03:39:51'),(130,'UPDATE-CITA','2017-07-23 03:42:17'),(131,'INSERT-CITA','2017-07-23 03:43:18'),(132,'UPDATE-CITA','2017-07-23 03:44:02'),(133,'DELETE-CITA','2017-07-23 03:44:35'),(134,'INSERT-CITA','2017-07-23 04:20:47'),(135,'INSERT-CITA','2017-07-23 04:33:36'),(136,'INSERT-TAREA','2017-07-23 04:45:45'),(137,'INSERT-TAREA','2017-07-23 04:48:31'),(138,'INSERT-CONTACTO','2017-07-24 00:58:15'),(139,'UPDATE-CONTACTO','2017-07-24 00:58:57'),(140,'DELETE-CONTACTO','2017-07-24 01:46:41'),(141,'DELETE-TAREA','2017-07-24 02:17:32'),(142,'UPDATE-CITA','2017-07-24 13:56:26');
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea`
--

DROP TABLE IF EXISTS `tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarea` (
  `idTarea` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(30) NOT NULL,
  `Descripcion` varchar(30) NOT NULL,
  `FechaInicio` varchar(30) NOT NULL,
  `FechaFinal` varchar(30) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  PRIMARY KEY (`idTarea`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea`
--

LOCK TABLES `tarea` WRITE;
/*!40000 ALTER TABLE `tarea` DISABLE KEYS */;
INSERT INTO `tarea` VALUES (1,'Reportes','Informatica','12-02-2017','12-02-2017','Finalizado'),(3,'Recreacion','Partido de Futbol','21-07-2017','21-07-2017','En Espera'),(4,'Lectura','Fairy Tail','11-02-2017','11-02-2017','En Ejecucion'),(5,'Recreacion','Partido de Futbol y Baseball','21-07-2017','21-07-2017','En espera'),(6,'Lectura','Leer Libro','11-09-2017','11-09-2017','En Ejecucion'),(10,'Trabajo','Trabajo','22-02-2018','22-02-2018','En Espera'),(12,'Estudiar','examen de biologia','2017-07-08','2017-07-09','En espera');
/*!40000 ALTER TABLE `tarea` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.tareaPost BEFORE INSERT ON Tarea FOR EACH ROW
BEGIN
INSERT INTO Historial(accion) VALUES('INSERT-TAREA');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tareaPut BEFORE UPDATE ON Tarea FOR EACH ROW
BEGIN
INSERT INTO Historial (accion) VALUES ('UPDATE-TAREA');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tareaDelete BEFORE DELETE ON Tarea FOR EACH ROW
BEGIN
INSERT INTO Historial (accion) VALUES ('DELETE-TAREA');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(30) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Gpuluc','1234'),(2,'Lperez','1234'),(3,'Jhernandez','1234'),(4,'jl','1234'),(5,'Luis','1234'),(6,'Lpuluc','@geovanny'),(7,'@Lpuluc','hola'),(8,'@Puluc','administrador'),(9,'@Administrador','1234'),(10,'@Lm','administrador'),(11,'Jhuertas','1234');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.usuarioPost BEFORE INSERT ON Usuario FOR EACH ROW
BEGIN
	INSERT INTO Historial (accion) VALUES ('INSERT-USUARIO');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.usuarioPut BEFORE UPDATE ON Usuario FOR EACH ROW
BEGIN
	INSERT INTO Historial (accion) VALUES ('UPDATE-USUARIO');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.usuarioDelete BEFORE DELETE ON Usuario FOR EACH ROW
BEGIN
	INSERT INTO Historial (accion) VALUES ('DELETE-USUARIO');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuariodetalle`
--

DROP TABLE IF EXISTS `usuariodetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuariodetalle` (
  `idUsuarioDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idContacto` int(11) NOT NULL,
  PRIMARY KEY (`idUsuarioDetalle`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idContacto` (`idContacto`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariodetalle`
--

LOCK TABLES `usuariodetalle` WRITE;
/*!40000 ALTER TABLE `usuariodetalle` DISABLE KEYS */;
INSERT INTO `usuariodetalle` VALUES (1,1,3),(2,2,1),(3,3,2),(4,4,1);
/*!40000 ALTER TABLE `usuariodetalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.usuariodetallePost BEFORE INSERT ON UsuarioDetalle FOR EACH ROW
BEGIN
	INSERT INTO Historial (accion) VALUES ('INSERT-USUARIODETALLE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agendain6am`.UsuariodetalleDelete BEFORE DELETE ON UsuarioDetalle FOR EACH ROW
BEGIN
	INSERT INTO Historial (accion) VALUES ('DELETE-USUARIODETALLE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'agendain6am'
--

--
-- Dumping routines for database 'agendain6am'
--
/*!50003 DROP PROCEDURE IF EXISTS `contactoGetAllU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contactoGetAllU`(_idUsuario INT)
BEGIN
	SELECT idContacto, nombre, apellido, correo, direccion, telefono, 
    Categoria.nombreCategoria, Usuario.nick FROM Contacto 
    INNER JOIN Categoria ON Contacto.idCategoria = Categoria.idCategoria 
    INNER JOIN  Usuario ON Contacto.idUsuario = Usuario.idUsuario 
    WHERE Contacto.idUsuario = _idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteContacto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteContacto`(IN _idContacto INT)
BEGIN
	DELETE FROM Contacto WHERE idContacto = _idContacto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUsuario`(IN _idUsuario INT)
BEGIN
	DELETE FROM Usuario WHERE idUsuario = _idUsuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteUsuarioDetalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUsuarioDetalle`(IN _idUsuarioDetalle INT)
BEGIN
	DELETE FROM UsuarioDetalle WHERE idUsuarioDetalle = _idUsuarioDetalle;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ELIMINAR_CONTACTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ELIMINAR_CONTACTO`(IN `nombre1` VARCHAR(30), IN `apellido1` VARCHAR(30), IN `direccion1` VARCHAR(30), IN `telefono1` VARCHAR(12), IN `correo1` VARCHAR(40), IN `idCategoria1` INT, IN `idUsuario1` INT)
BEGIN
	INSERT INTO contacto (nombre, apellido, direccion, telefono, correo, idCategoria) VALUES(nombre1, apellido1, direccion1, telefono1, correo1, idCategoria1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `INGRESAR_CITA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `INGRESAR_CITA`(IN fecha1 VARCHAR(30), IN lugar1 VARCHAR(30), IN asunto1 VARCHAR(30), IN idContacto1 INT)
BEGIN
	INSERT INTO Cita (fecha, lugar, asunto, idContacto) VALUES(fecha1, lugar1, asunto1, idContacto1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `INGRESAR_CONTACTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `INGRESAR_CONTACTO`(IN `nombre1` VARCHAR(30), IN `apellido1` VARCHAR(30), IN `direccion1` VARCHAR(30), IN `telefono1` VARCHAR(12), IN `correo1` VARCHAR(40), IN `idCategoria1` INT, IN `idUsuario1` INT)
BEGIN
	INSERT INTO contacto (nombre, apellido, direccion, telefono, correo, idCategoria) VALUES(nombre1, apellido1, direccion1, telefono1, correo1, idCategoria1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `postCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `postCategoria`(IN _nombreCategoria VARCHAR(30))
BEGIN
	INSERT INTO Categoria (nombreCategoria) VALUES (_nombreCategoria);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `postContacto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `postContacto`(IN _nombre VARCHAR(30), IN _apellido VARCHAR(30), IN _direccion VARCHAR(30), 
	IN _telefono VARCHAR(30), IN _correo VARCHAR(40), IN _idCategoria INT)
BEGIN
	INSERT INTO Contacto (nombre, apellido, direccion, telefono, correo, idCategoria) VALUES (_nombre, _apellido, _direccion, 
		_telefono, _correo, _idCategoria);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `postUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `postUsuario`(IN _nick VARCHAR(30), IN _contrasena VARCHAR(30))
BEGIN
	INSERT INTO Usuario(nick, contrasena) VALUES (_nick, _contrasena);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `postUsuarioDetalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `postUsuarioDetalle`(IN _idUsuario INT, IN _idContacto INT)
BEGIN
	INSERT INTO UsuarioDetalle (idUsuario, idContacto) VALUES (_idUsuario, _idContacto);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `putContacto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `putContacto`(IN _idContacto INT, IN _nombre VARCHAR(30), IN _apellido VARCHAR(30), IN _direccion VARCHAR(30), 
	IN _telefono VARCHAR(30), IN _correo VARCHAR(40), IN _idCategoria INT)
BEGIN
	UPDATE Contacto SET nombre = _nombre, apellido = _apellido, direccion = _direccion, telefono = _telefono, correo = _correo, idCategoria = _idCategoria WHERE idContacto = _idContacto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `putUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `putUsuario`(IN _idUsuario INT, IN _nick VARCHAR(30), IN _contrasena VARCHAR(30))
BEGIN	
	UPDATE Usuario SET nick = _nick , contrasena = _contrasena 
		WHERE idUsuario = _idUsuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SELECT_CONTACTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_CONTACTO`(_idUsuario INT)
BEGIN
	SELECT idContacto, nombre, apellido, direccion, telefono, correo, 
    Categoria.nombreCategoria FROM Contacto 
    INNER JOIN Categoria ON Contacto.idCategoria = Categoria.idCategoria 
    WHERE Contacto.idUsuario = _idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autenticarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autenticarUsuario`(
_nick VARCHAR(30),
_contrasena VARCHAR(30))
BEGIN
	SELECT * FROM Usuario WHERE nick = _nick AND contrasena = _contrasena LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertUsuario`(IN _nick VARCHAR(30), IN _contrasena VARCHAR(30))
BEGIN
	INSERT INTO Usuario (nick, contrasena) VALUES (_nick, _contrasena);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateCita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateCita`(
IN _idCita INT,
IN _fecha VARCHAR(30),
IN _lugar VARCHAR(30),
IN _asunto VARCHAR(30),
IN _idContacto INT)
BEGIN
	UPDATE Cita SET fecha = _fecha , lugar = _lugar , asunto = _asunto, idContacto = _idContacto WHERE idCita = _idCita;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateContacto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateContacto`(
IN _idContacto INT,
IN _nombre VARCHAR(30),
IN _apellido VARCHAR(30),
IN _direccion VARCHAR(30),
IN _telefono VARCHAR(30),
IN _correo VARCHAR(30),
IN _idCategoria INT)
BEGIN
	UPDATE Contacto SET nombre = _nombre , apellido = _apellido , direccion = _direccion,
    telefono = _telefono , correo = _correo, idCategoria = _idCategoria WHERE idContacto = _idContacto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `contacto_usuario`
--

/*!50001 DROP VIEW IF EXISTS `contacto_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contacto_usuario` AS select `c`.`idContacto` AS `idContacto`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,`c`.`direccion` AS `direccion`,`c`.`telefono` AS `telefono`,`c`.`correo` AS `correo`,`category`.`nombreCategoria` AS `nombreCategoria`,`u`.`idUsuario` AS `idUsuario` from (((`contacto` `c` join `categoria` `category` on((`c`.`idCategoria` = `category`.`idCategoria`))) join `usuariodetalle` `det` on((`det`.`idContacto` = `c`.`idContacto`))) join `usuario` `u` on((`det`.`idUsuario` = `u`.`idUsuario`))) */;
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

-- Dump completed on 2017-07-24 16:44:13
