-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: data_for_monitoring_system
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `axis_status`
--

DROP TABLE IF EXISTS `axis_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `axis_status` (
  `id_Axis_status` int NOT NULL AUTO_INCREMENT,
  `axis_name` varchar(45) NOT NULL,
  `drive_ready` varchar(45) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id_Axis_status`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axis_status`
--

LOCK TABLES `axis_status` WRITE;
/*!40000 ALTER TABLE `axis_status` DISABLE KEYS */;
INSERT INTO `axis_status` VALUES (1,'X','Not Ready','2023-12-17 08:26:15'),(2,'Y','Not Ready','2023-12-16 17:45:39'),(3,'Z','Ready','2023-12-17 14:39:13'),(4,'A','Ready','2023-12-14 06:42:13'),(5,'X','Ready','2023-12-17 14:14:40'),(6,'Y','Ready','2023-12-16 14:31:24'),(7,'Z','Ready','2023-12-17 07:10:52'),(8,'A','Ready','2023-12-14 13:48:35'),(9,'X','Not Ready','2023-12-17 03:09:36'),(10,'Y','Ready','2023-12-16 00:23:08'),(11,'Z','Ready','2023-12-16 23:04:37'),(12,'A','Ready','2023-12-14 04:59:38'),(13,'X','Ready','2023-12-17 02:33:57'),(14,'Y','Ready','2023-12-16 00:56:03'),(15,'Z','Ready','2023-12-16 20:50:48'),(16,'A','Ready','2023-12-14 02:40:48'),(17,'X','Ready','2023-12-16 20:40:34'),(18,'Y','Ready','2023-12-15 23:51:12'),(19,'Z','Ready','2023-12-17 02:19:04'),(20,'A','Ready','2023-12-13 23:21:44'),(21,'C','Ready','2023-12-18 15:00:00'),(22,'C','Ready','2023-12-13 15:00:00'),(23,'C','Ready','2023-12-17 17:00:00'),(24,'C','Ready','2023-12-16 10:00:00'),(25,'C','Ready','2023-12-14 12:00:00');
/*!40000 ALTER TABLE `axis_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_temp`
--

DROP TABLE IF EXISTS `engine_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_temp` (
  `id_engine` int NOT NULL AUTO_INCREMENT,
  `engine_name` varchar(45) NOT NULL,
  `temperature` int NOT NULL,
  `date_and_time` datetime NOT NULL,
  PRIMARY KEY (`id_engine`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_temp`
--

LOCK TABLES `engine_temp` WRITE;
/*!40000 ALTER TABLE `engine_temp` DISABLE KEYS */;
INSERT INTO `engine_temp` VALUES (1,'Главный шпиндель',58,'2023-12-16 15:00:00'),(2,'Главный шпиндель',45,'2023-12-17 15:00:00'),(3,'Главный шпиндель',60,'2023-12-18 15:00:00'),(4,'Противошпиндель',58,'2023-12-16 15:00:00'),(5,'Противошпиндель',40,'2023-12-17 15:00:00'),(6,'Противошпиндель',34,'2023-12-18 15:00:00'),(7,'Приводной инструмент',60,'2023-12-16 15:00:00'),(8,'Приводной инструмент',49,'2023-12-17 15:00:00'),(9,'Приводной инструмент',33,'2023-12-18 15:00:00'),(10,'Двигатель оси X',31,'2023-12-16 15:00:00'),(11,'Двигатель оси X',64,'2023-12-17 15:00:00'),(12,'Двигатель оси X',36,'2023-12-18 15:00:00'),(13,'Двигатель оси A',37,'2023-12-16 15:00:00'),(14,'Двигатель оси A',50,'2023-12-17 15:00:00'),(15,'Двигатель оси A',68,'2023-12-18 15:00:00'),(16,'Двигатель оси Z',39,'2023-12-16 15:00:00'),(17,'Двигатель оси Z',40,'2023-12-17 15:00:00'),(18,'Двигатель оси Z',53,'2023-12-18 15:00:00'),(19,'Гидравлическая помпа',37,'2023-12-16 15:00:00'),(20,'Гидравлическая помпа',37,'2023-12-17 15:00:00'),(21,'Гидравлическая помпа',41,'2023-12-18 15:00:00'),(22,'Главный шпиндель',30,'2023-12-19 09:00:00'),(23,'Главный шпиндель',37,'2023-12-19 09:30:00'),(24,'Главный шпиндель',51,'2023-12-19 10:00:00'),(25,'Главный шпиндель',56,'2023-12-19 10:30:00'),(26,'Главный шпиндель',57,'2023-12-19 11:00:00'),(27,'Главный шпиндель',49,'2023-12-19 11:30:00'),(28,'Главный шпиндель',45,'2023-12-19 12:00:00'),(29,'Главный шпиндель',45,'2023-12-19 12:30:00'),(30,'Главный шпиндель',61,'2023-12-19 13:00:00'),(31,'Главный шпиндель',62,'2023-12-19 13:30:00'),(32,'Главный шпиндель',54,'2023-12-19 14:00:00'),(33,'Главный шпиндель',55,'2023-12-19 14:30:00'),(34,'Главный шпиндель',43,'2023-12-19 15:00:00'),(35,'Главный шпиндель',61,'2023-12-19 15:30:00'),(36,'Главный шпиндель',65,'2023-12-19 16:00:00'),(37,'Главный шпиндель',31,'2023-12-19 16:30:00'),(38,'Главный шпиндель',52,'2023-12-19 17:00:00'),(39,'Главный шпиндель',56,'2023-12-19 17:30:00'),(40,'Главный шпиндель',54,'2023-12-19 18:00:00');
/*!40000 ALTER TABLE `engine_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `message_type` varchar(45) NOT NULL,
  `severity` varchar(45) NOT NULL,
  `code` int NOT NULL,
  `description` text NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'Аварийный останов','high',2002,'Ошибка в системе управления. Требуется немедленное вмешательство','2023-12-16 07:27:02'),(2,'Аварийный останов','high',2003,'Инцидент в системе безопасности. Прекращение работы станка','2023-12-15 07:06:29'),(3,'Ошибка интерполятора','high',2002,'Неизвестная команда G-code. Проверьте программу на ошибки','2023-12-16 07:11:20'),(4,'Ошибка интерполятора','high',2003,'Недостаточно памяти для интерполяции. Оптимизируйте программу','2023-12-13 08:37:11'),(5,'Актуальный режим работы JOG','common',1005,'Вход в режим JOG. Переключение осей в ручном режиме','2023-12-14 06:31:56'),(6,'Актуальный режим работы JOG','common',1006,'Переключение в режим ручного управления. Изменение координат','2023-12-19 09:48:08'),(7,'Ошибка ПЛК','high',3002,'Ошибка в программе логического контроллера. Проверьте логику','2023-12-19 14:24:52'),(8,'Ошибка ПЛК','high',3003,'Неисправность в системе ПЛК. Требуется техническое обслуживание','2023-12-16 09:39:56'),(9,'Ошибка интерпретатора','high',2004,'Недопустимые параметры G01. Перепрограммируйте движение','2023-12-13 08:05:05'),(10,'Ошибка интерпретатора','high',2005,'Синтаксическая ошибка в строке программы. Проверьте синтаксис','2023-12-16 14:25:34'),(11,'Актуальный режим работы MDI','common',1007,'Вход в режим ручного программирования. Ввод команд вручную','2023-12-17 14:52:37'),(12,'Актуальный режим работы MDI','common',1008,'Редактирование программы в режиме MDI. Внесение изменений','2023-12-17 07:06:22'),(13,'Ошибка приводов','high',2007,'Неисправность в системе привода. Требуется диагностика','2023-12-15 11:54:01'),(14,'Ошибка приводов','high',2008,'Превышение температуры привода. Охладите систему','2023-12-19 14:10:56'),(15,'Нет связи с приводами','high',2009,'Отсутствует связь с приводами. Проверьте подключение','2023-12-15 11:12:39'),(16,'Нет связи с приводами','high',2010,'Прерывание связи с приводами. Проверьте кабели','2023-12-14 07:30:28'),(17,'Готовность к работе','common',1,'Система готова к работе. Запуск производства','2023-12-18 06:54:23'),(18,'Готовность к работе','common',2,'Приводы активированы. Возможность начать обработку','2023-12-15 06:00:31'),(19,'Аварийный останов','high',2000,'Останов приводов','2023-12-16 12:19:24'),(20,'Ошибка интерполятора','high',2001,'Строка G02 X12 Y15 R20 - траектория не может быть построена','2023-12-16 10:35:28'),(21,'Актуальный режим работы JOG','common',1004,'Переключение режима работы','2023-12-13 09:59:07'),(22,'Ошибка ПЛК','high',3001,'Сконфигурировать входы/выходы ПЛК','2023-12-17 12:09:12'),(23,'Ошибка интерпретатора','high',2003,'Команда G01 x10 Y10 R15 не может иметь такие параметры. Сконфигурировать команду','2023-12-13 06:48:38'),(24,'Актуальный режим работы MDI','common',1003,'Переключение режима работы','2023-12-14 09:35:33'),(25,'Ошибка приводов','high',2005,'Сконфигурировать приводы','2023-12-14 12:31:51'),(26,'Нет связи с приводами','high',2006,'Приводы не подключены. Проверить подключение, сконфигурировать приводы','2023-12-15 09:52:39'),(27,'Готовность к работе','common',0,'Приводы готовы к работе','2023-12-14 14:47:39');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine_name`
--

DROP TABLE IF EXISTS `machine_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machine_name` (
  `id_machine_name` int NOT NULL AUTO_INCREMENT,
  `model_name` varchar(70) NOT NULL,
  PRIMARY KEY (`id_machine_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine_name`
--

LOCK TABLES `machine_name` WRITE;
/*!40000 ALTER TABLE `machine_name` DISABLE KEYS */;
INSERT INTO `machine_name` VALUES (1,'Haas MasterMill-Turn 2000X'),(2,'DMG MORI FusionTurn MF500X'),(3,'Okuma HyperMach-T 3000i'),(4,'Mazak MultiTasker X7-2000'),(5,'Doosan ProTurn-Mill 4500'),(6,'Haas MegaFusion-T 1500X'),(7,'DMG MORI MillTurn Master 7000'),(8,'Okuma SuperLathe-FM 2500i');
/*!40000 ALTER TABLE `machine_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine_type`
--

DROP TABLE IF EXISTS `machine_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machine_type` (
  `id_machine` int NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id_machine`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine_type`
--

LOCK TABLES `machine_type` WRITE;
/*!40000 ALTER TABLE `machine_type` DISABLE KEYS */;
INSERT INTO `machine_type` VALUES (1,'3-координатный вертикально-фрезерный'),(2,'токарный расточной'),(3,'токарный с фрезерной головкой'),(4,'вертикально-фрезерный с поворотным столом и поворотной головой'),(5,'токарный с противошпинделем'),(6,'токарный с противошпинделем и фрезерной головкой'),(7,'вертикально-фрезерный с поворотным столом');
/*!40000 ALTER TABLE `machine_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-22 16:51:47
