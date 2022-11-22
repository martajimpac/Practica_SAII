CREATE DATABASE  IF NOT EXISTS `appstore` ;
USE `appstore`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: appstore
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps` (
  `N` varchar(50) NOT NULL,
  `SO` varchar(10) DEFAULT NULL,
  `A` varchar(20) DEFAULT NULL,
  `T` double DEFAULT NULL,
  `RE` int DEFAULT NULL,
  PRIMARY KEY (`N`)
) ;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
INSERT INTO `apps` VALUES ('DISCORD','iOS 11.0','MENSAJERIA',124.6,17),('FACEBOOK','iOS 12.4','SOCIAL',208.5,12),('GMAIL','iOS 12.0','MENSAJERIA',402.8,4),('INSTAGRAM','iOS 12.4','SOCIAL',189.5,12),('LINKEDIN','iOS 13.0','SOCIAL',320.3,12),('OUTLOOK','iOS 14.0','MENSAJERIA',329.4,4),('SNAPCHAT','iOS 11.0','SOCIAL',249.5,12),('TELEGRAM','iOS 9.0','MENSAJERIA',205.3,17),('TIKTOK','iOS 10.0','SOCIAL',316.5,12),('WHATSAPP','iOS 10.0','MENSAJERIA',210.7,12);
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_recopilados`
--

DROP TABLE IF EXISTS `datos_recopilados`;
CREATE TABLE `datos_recopilados` (
  `NA` varchar(50) NOT NULL,
  `VA` varchar(10) NOT NULL,
  `T` varchar(20) NOT NULL,
  `DC` varchar(10) DEFAULT NULL,
  `SF` varchar(10) DEFAULT NULL,
  `IFI` varchar(10) DEFAULT NULL,
  `U` varchar(10) DEFAULT NULL,
  `ISE` varchar(10) DEFAULT NULL,
  `C` varchar(10) DEFAULT NULL,
  `CU` varchar(10) DEFAULT NULL,
  `HB` varchar(10) DEFAULT NULL,
  `HN` varchar(10) DEFAULT NULL,
  `I` varchar(10) DEFAULT NULL,
  `CM` varchar(10) DEFAULT NULL,
  `DU` varchar(10) DEFAULT NULL,
  `D` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NA`,`VA`,`T`)
) ;

--
-- Dumping data for table `datos_recopilados`
--

LOCK TABLES `datos_recopilados` WRITE;
/*!40000 ALTER TABLE `datos_recopilados` DISABLE KEYS */;
INSERT INTO `datos_recopilados` VALUES ('DISCORD','118.1','datos vinculados','TRUE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','TRUE','FALSE','TRUE','TRUE','TRUE','TRUE'),('FACEBOOK','358.0','datos seguimiento','TRUE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','FALSE','FALSE','FALSE'),('FACEBOOK','358.0','datos vinculados','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE'),('GMAIL','6.0.220220','datos vinculados','TRUE','FALSE','FALSE','TRUE','FALSE','TRUE','TRUE','TRUE','FALSE','TRUE','TRUE','TRUE','TRUE'),('INSTAGRAM','227.0','datos seguimiento','TRUE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','FALSE','FALSE','FALSE'),('INSTAGRAM','227.0','datos vinculados','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE'),('LINKEDIN','9.1.261','datos vinculados','TRUE','FALSE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','FALSE','TRUE','TRUE','TRUE','TRUE'),('OUTLOOK','4.2210.3','datos no vinculados','FALSE','FALSE','FALSE','TRUE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE'),('OUTLOOK','4.2210.3','datos segumiento','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','FALSE'),('OUTLOOK','4.2210.3','datos vinculados','TRUE','FALSE','FALSE','FALSE','FALSE','TRUE','TRUE','TRUE','FALSE','TRUE','FALSE','TRUE','TRUE'),('SNAPCHAT','11.71.0.35','datos seguimiento','TRUE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','FALSE','FALSE','FALSE'),('SNAPCHAT','11.71.0.35','datos vinculados','TRUE','FALSE','FALSE','TRUE','FALSE','TRUE','TRUE','TRUE','FALSE','TRUE','TRUE','TRUE','TRUE'),('TELEGRAM','8.6','datos vinculados','TRUE','FALSE','TRUE','TRUE','FALSE','TRUE','TRUE','FALSE','FALSE','TRUE','TRUE','FALSE','FALSE'),('TIKTOK','23.7.0','datos no vinculados','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','FALSE'),('TIKTOK','23.7.0','datos seguimiento','TRUE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','FALSE','TRUE','FALSE','FALSE','FALSE'),('TIKTOK','23.7.0','datos vinculados','TRUE','FALSE','TRUE','TRUE','FALSE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE','TRUE'),('WHATSAPP','22.6.74','datos vinculados','TRUE','FALSE','TRUE','TRUE','FALSE','TRUE','TRUE','FALSE','FALSE','TRUE','TRUE','TRUE','TRUE');
/*!40000 ALTER TABLE `datos_recopilados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacidad`
--

DROP TABLE IF EXISTS `privacidad`;
CREATE TABLE `privacidad` (
  `NA` varchar(50) NOT NULL,
  `V` varchar(10) NOT NULL,
  `FA` date DEFAULT NULL,
  `UPP` varchar(500) DEFAULT NULL,
  `SO` varchar(45) NOT NULL,
  PRIMARY KEY (`NA`,`V`,`SO`)
) ;

--
-- Dumping data for table `privacidad`
--

LOCK TABLES `privacidad` WRITE;
/*!40000 ALTER TABLE `privacidad` DISABLE KEYS */;
INSERT INTO `privacidad` VALUES ('DISCORD','118.1','2022-03-22','https://discord.com/privacy','iOS 11.0'),('FACEBOOK','358.0','2022-03-17','https://www.facebook.com/about/privacy/','iOS 12.4'),('GMAIL','6.0.220220','2022-03-09','https://policies.google.com/privacy','iOS 12.0'),('INSTAGRAM','227.0','2022-03-21','https://help.instagram.com/519522125107875/?maybe_redirect_pol=0','iOS 12.4'),('LINKEDIN','9.1.261','2022-03-22','https://www.linkedin.com/legal/privacy-policy','iOS 13.0'),('OUTLOOK','4.2210.3','2022-03-21','https://privacy.microsoft.com/en-us/privacystatement','iOS 14.0'),('SNAPCHAT','11.71.0.35','2022-03-21','https://snap.com/it-IT/privacy/privacy-policy','iOS 11.0'),('TELEGRAM','8.6','2022-03-11','https://telegram.org/privacy','iOS 9.0'),('TIKTOK','23.7.0','2022-03-19','https://www.tiktok.com/legal/privacy-policy-eea?lang=es','iOS 10.0'),('WHATSAPP','22.6.74','2022-03-18','https://www.whatsapp.com/legal/#Privacy','iOS 10.0');
/*!40000 ALTER TABLE `privacidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'appstore'
--

--
-- Dumping routines for database 'appstore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-22 17:16:24
CREATE DATABASE  IF NOT EXISTS `mediador` ;
USE `mediador`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mediador
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps` (
  `N` varchar(50) NOT NULL,
  `SO` varchar(20) NOT NULL,
  `A` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`N`,`SO`)
) ;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datosdeusuario`
--

DROP TABLE IF EXISTS `datosdeusuario`;
CREATE TABLE `datosdeusuario` (
  `NA` varchar(50) NOT NULL,
  `VA` varchar(45) NOT NULL,
  `CON` varchar(45) DEFAULT NULL,
  `CRE` varchar(10) DEFAULT NULL,
  `D` varchar(10) DEFAULT NULL,
  `PA` varchar(10) DEFAULT NULL,
  `HB` varchar(10) DEFAULT NULL,
  `IE` varchar(10) DEFAULT NULL,
  `M` varchar(10) DEFAULT NULL,
  `A` varchar(10) DEFAULT NULL,
  `IDU` varchar(10) DEFAULT NULL,
  `I` varchar(10) DEFAULT NULL,
  `ISD` varchar(10) DEFAULT NULL,
  `SF` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NA`,`VA`)
) ;

--
-- Dumping data for table `datosdeusuario`
--

LOCK TABLES `datosdeusuario` WRITE;
/*!40000 ALTER TABLE `datosdeusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `datosdeusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `N` varchar(50) NOT NULL,
  `NA` varchar(20) NOT NULL,
  `UE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`N`,`NA`)
) ;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacidad`
--

DROP TABLE IF EXISTS `privacidad`;
CREATE TABLE `privacidad` (
  `NA` varchar(50) NOT NULL,
  `VA` varchar(45) NOT NULL,
  `IT` varchar(45) DEFAULT NULL,
  `P` varchar(45) DEFAULT NULL,
  `SO` varchar(45) NOT NULL,
  PRIMARY KEY (`NA`,`VA`,`SO`)
) ;

--
-- Dumping data for table `privacidad`
--

LOCK TABLES `privacidad` WRITE;
/*!40000 ALTER TABLE `privacidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `privacidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mediador'
--

--
-- Dumping routines for database 'mediador'
--
/*!50003 DROP PROCEDURE IF EXISTS `wrapperapp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `wrapperapp`()
BEGIN
DELETE FROM  mediador.apps;
DELETE FROM  mediador.privacidad;
DELETE FROM  mediador.datosdeusuario;
DELETE FROM  mediador.empresa;
INSERT INTO mediador.apps
SELECT N,SO,A FROM appstore.apps;
INSERT INTO mediador.privacidad
SELECT NA,V,null,null,SO FROM appstore.privacidad;
INSERT INTO mediador.datosdeusuario
SELECT NA,VA,DC,I,U,IFI,HB,D,CU,C,DU,null,null,SF FROM appstore.datos_recopilados WHERE T="datos vinculados";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `wrapperplay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `wrapperplay`()
BEGIN
INSERT INTO mediador.apps
SELECT N,SO,A FROM playstore.apps;
INSERT INTO mediador.privacidad
SELECT NA,VA,IT,P,SO FROM playstore.privacidad;
INSERT INTO mediador.datosdeusuario
SELECT NA,VA,CON,CRE,D,P,HB,IE,M,A,IDU,I,ISD,NULL FROM playstore.datosdeusuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `wrapperwikidata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `wrapperwikidata`()
BEGIN
INSERT INTO mediador.empresa
SELECT N,NA,UE FROM wikidata.empresa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-22 17:16:24
CREATE DATABASE  IF NOT EXISTS `wikidata` ;
USE `wikidata`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wikidata
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `N` varchar(50) NOT NULL,
  `NA` varchar(20) NOT NULL,
  `F` varchar(20) DEFAULT NULL,
  `P` varchar(20) DEFAULT NULL,
  `UE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`N`,`NA`)
) ;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('BYTEDANCE','TIKTOK','ZHANG YIMING','CHINA','https://www.bytedance.com/'),('META','FACEBOOK','MARK ZUCKERBERG','E.E.U.U','https://about.facebook.com/'),('META','INSTAGRAM','MARK ZUCKERBERG','E.E.U.U','https://about.facebook.com/'),('META','WHATSAPP','MARK ZUCKERBERG','E.E.U.U','https://about.facebook.com/'),('MICROSOFT','GMAIL','BILL GATES','E.E.U.U','https://www.microsoft.com/'),('MICROSOFT','LINKEDIN','BILL GATES','E.E.U.U','https://www.microsoft.com/'),('MICROSOFT','OUTLOOK','BILL GATES','E.E.U.U','https://www.microsoft.com/'),('SNAP INC','SNAPCHAT','EVAN SPIEGLE','E.E.U.U','https://www.snap.com/'),('TELEGRAM FZ-LLC','TELEGRAM','PAVEL DUROV','DUBAI','https://telegram.org/');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'wikidata'
--

--
-- Dumping routines for database 'wikidata'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-22 17:16:25
CREATE DATABASE  IF NOT EXISTS `playstore` ;
USE `playstore`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: playstore
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps` (
  `N` varchar(50) NOT NULL,
  `SO` varchar(20) DEFAULT NULL,
  `A` varchar(50) DEFAULT NULL,
  `RE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`N`)
) ;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
INSERT INTO `apps` VALUES ('FACEBOOK','ANDROID','SOCIAL','CONTROL_PARENTAL'),('GMAIL','ANDROID','MENSAJERIA',NULL),('INSTAGRAM','ANDROID','SOCIAL','CONTROL_PARENTAL'),('LINKEDIN','ANDROID 6.0','SOCIAL','CONTROL_PARENTAL'),('OUTLOOK','ANDROID 7.0','MENSAJERIA',NULL),('SNAPCHAT','ANDROID 4.4','SOCIAL','CONTROL_PARENTAL'),('TELEGRAM','ANDROID','MENSAJERIA',NULL),('TIKTOK','ANDROID 4.4','SOCIAL','CONTROL_PARENTAL'),('WHATSAPP','ANDROID 4.1','MENSAJERIA',NULL);
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datosdeusuario`
--

DROP TABLE IF EXISTS `datosdeusuario`;
CREATE TABLE `datosdeusuario` (
  `NA` varchar(50) NOT NULL,
  `VA` varchar(20) NOT NULL,
  `CON` varchar(50) DEFAULT NULL,
  `CRE` varchar(20) DEFAULT NULL,
  `D` varchar(10) DEFAULT NULL,
  `P` varchar(10) DEFAULT NULL,
  `HB` varchar(10) DEFAULT NULL,
  `IE` varchar(10) DEFAULT NULL,
  `M` varchar(10) DEFAULT NULL,
  `A` varchar(10) DEFAULT NULL,
  `IDU` varchar(10) DEFAULT NULL,
  `I` varchar(10) DEFAULT NULL,
  `ISD` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NA`,`VA`)
) ;

--
-- Dumping data for table `datosdeusuario`
--

LOCK TABLES `datosdeusuario` WRITE;
/*!40000 ALTER TABLE `datosdeusuario` DISABLE KEYS */;
INSERT INTO `datosdeusuario` VALUES ('FACEBOOK','Segun_dispositivo','TRUE','TRUE','TRUE','TRUE','FALSE','FALSE','FALSE','TRUE','TRUE','TRUE','TRUE'),('GMAIL','Segun_dispositivo','TRUE','TRUE','TRUE','FALSE','TRUE','FALSE','TRUE','TRUE','FALSE','FALSE','TRUE'),('INSTAGRAM','Segun_dispositivo','TRUE','TRUE','TRUE','TRUE','FALSE','FALSE','TRUE','TRUE','TRUE','FALSE','TRUE'),('LINKEDIN','4.1.679','TRUE','TRUE','TRUE','FALSE','FALSE','FALSE','TRUE','TRUE','FALSE','FALSE','TRUE'),('OUTLOOK','4.2208.2','TRUE','TRUE','FALSE','TRUE','FALSE','FALSE','TRUE','TRUE','TRUE','TRUE','TRUE'),('SNAPCHAT','11.70.0.36','TRUE','TRUE','TRUE','FALSE','FALSE','FALSE','TRUE','TRUE','TRUE','TRUE','TRUE'),('TELEGRAM','8.6.2','TRUE','TRUE','TRUE','FALSE','FALSE','FALSE','FALSE','TRUE','TRUE','FALSE','TRUE'),('TIKTOK','23.7.3','TRUE','TRUE','TRUE','TRUE','FALSE','FALSE','TRUE','TRUE','TRUE','TRUE','TRUE'),('WHATSAPP','2.22.6.72','TRUE','TRUE','TRUE','FALSE','TRUE','TRUE','TRUE','TRUE','TRUE','FALSE','TRUE');
/*!40000 ALTER TABLE `datosdeusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacidad`
--

DROP TABLE IF EXISTS `privacidad`;
CREATE TABLE `privacidad` (
  `NA` varchar(50) NOT NULL,
  `VA` varchar(50) NOT NULL,
  `FUA` date DEFAULT NULL,
  `IT` varchar(10) DEFAULT NULL,
  `P` varchar(10) DEFAULT NULL,
  `UPP` varchar(500) DEFAULT NULL,
  `SO` varchar(45) NOT NULL,
  PRIMARY KEY (`NA`,`VA`,`SO`)
) ;

--
-- Dumping data for table `privacidad`
--

LOCK TABLES `privacidad` WRITE;
/*!40000 ALTER TABLE `privacidad` DISABLE KEYS */;
INSERT INTO `privacidad` VALUES ('FACEBOOK','Segun_dispositivo','2022-03-15','TRUE','TRUE',' https://www.facebook.com/about/privacy/','ANDROID'),('GMAIL','Segun_dispositivo','2022-03-21','TRUE','TRUE','https://policies.google.com/privacy','ANDROID'),('INSTAGRAM','Segun_dispositivo','2022-03-17','TRUE','TRUE','https://help.instagram.com/519522125107875/?maybe_redirect_pol=0','ANDROID'),('LINKEDIN','4.1.679','2022-03-16','TRUE','TRUE','https://www.linkedin.com/legal/privacy-policy','ANDROID 6.0'),('OUTLOOK','4.2208.2','2022-03-19','TRUE','TRUE','https://privacy.microsoft.com/en-us/privacystatement','ANDROID 7.0'),('SNAPCHAT','11.70.0.36','2022-03-19','TRUE','FALSE','https://snap.com/it-IT/privacy/privacy-policy','ANDROID 4.4'),('TELEGRAM','8.6.2','2022-03-20','TRUE','FALSE','https://telegram.org/privacy','ANDROID'),('TIKTOK','23.7.3','2022-03-17','TRUE','FALSE','https://www.tiktok.com/legal/privacy-policy-eea?lang=es','ANDROID 4.4'),('WHATSAPP','2.22.6.72','2022-03-15','TRUE','FALSE','https://www.whatsapp.com/legal/#Privacy','ANDROID 4.1');
/*!40000 ALTER TABLE `privacidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'playstore'
--

--
-- Dumping routines for database 'playstore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-22 17:16:25
