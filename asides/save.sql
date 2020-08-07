-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for osx10.15 (x86_64)
--
-- Host: localhost    Database: alexandrie
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

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
-- Table structure for table `__diesel_schema_migrations`
--

DROP TABLE IF EXISTS `__diesel_schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__diesel_schema_migrations` (
  `version` varchar(50) NOT NULL,
  `run_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__diesel_schema_migrations`
--

LOCK TABLES `__diesel_schema_migrations` WRITE;
/*!40000 ALTER TABLE `__diesel_schema_migrations` DISABLE KEYS */;
INSERT INTO `__diesel_schema_migrations` VALUES ('20191012193526','2019-10-12 21:04:14'),('20191123180933','2019-11-23 18:21:27');
/*!40000 ALTER TABLE `__diesel_schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_tokens`
--

DROP TABLE IF EXISTS `author_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `author_tokens_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_tokens`
--

LOCK TABLES `author_tokens` WRITE;
/*!40000 ALTER TABLE `author_tokens` DISABLE KEYS */;
INSERT INTO `author_tokens` VALUES (1,'Main machine','368737d1ebdb573e375bece52e78c70150e59e2a4b89615fb12354c02e5563ecc3e3d886863e99b61e67c3025cb3641333118838e675730fec721abf847795f2',1);
/*!40000 ALTER TABLE `author_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'nicolas@polomack.eu','Nicolas Polomack','16e34af19d001113d7ef9ff6c1be88c787d5ff31415408c5135856440afa6fc318a5cd66bc22e7fc2f41d95ddf233e3b10d5587b518e252f571f5ecc4cb47b51'),(9,'test@test.com','this is a test','16e34af19d001113d7ef9ff6c1be88c787d5ff31415408c5135856440afa6fc318a5cd66bc22e7fc2f41d95ddf233e3b10d5587b518e252f571f5ecc4cb47b51');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'algorithms','Algorithms','Rust implementations of core algorithms such as hashing, sorting, searching, and more.'),(2,'api-bindings','API bindings','Idiomatic wrappers of specific APIs for convenient access from Rust. Includes HTTP API wrappers as well. Non-idiomatic or unsafe bindings can be found in External FFI bindings.'),(3,'asynchronous','Asynchronous','Crates to help you deal with events independently of the main program flow, using techniques like futures, promises, waiting, or eventing.'),(4,'authentication','Authentication','Crates to help with the process of confirming identities.'),(5,'caching','Caching','Crates to store the results of previous computations in order to reuse the results.'),(6,'command-line-interface','Command-line interface','Crates to help create command line interfaces, such as argument parsers, line-editing, or output coloring and formatting.'),(7,'command-line-utilities','Command line utilities','Applications to run at the command line.'),(8,'compression','Compression','Algorithms for making data smaller.'),(9,'concurrency','Concurrency','Crates for implementing concurrent and parallel computation.'),(10,'config','Configuration','Crates to facilitate configuration management for applications.'),(11,'cryptography','Cryptography','Algorithms intended for securing data.'),(12,'database-implementations','Database implementations','Databases allow clients to store and query large amounts of data in an efficient manner. This category is for database management systems implemented in Rust.'),(13,'database','Database interfaces','Crates to interface with database management systems.'),(14,'data-structures','Data structures','Rust implementations of particular ways of organizing data suited for specific purposes.'),(15,'date-and-time','Date and time','Crates to manage the inherent complexity of dealing with the fourth dimension.'),(16,'development-tools','Development tools','Crates that provide developer-facing features such as testing, debugging, linting, performance profiling, autocompletion, formatting, and more.'),(17,'email','Email','Crates to help with Sending, receiving, formatting, and parsing email.'),(18,'embedded','Embedded development','Crates that are primarily useful on embedded devices or without an operating system.'),(19,'emulators','Emulators','Emulators allow one computer to behave like another, often to allow running software that is not natively available on the host computer. Video game systems are commonly emulated.'),(20,'encoding','Encoding','Encoding and/or decoding data from one data format to another.'),(21,'external-ffi-bindings','External FFI bindings','Direct Rust FFI bindings to libraries written in other languages; often denoted by a -sys suffix. Safe and idiomatic wrappers are in the API bindings category.'),(22,'filesystem','Filesystem','Crates for dealing with files and filesystems.'),(23,'game-engines','Game engines','Crates for creating games.'),(24,'games','Games','Applications for fun and entertainment. If Rust the video game were implemented in Rust the programming language, it would belong in this category. Libraries to help create video games are in the Game engines category.'),(25,'graphics','Graphics','Crates for graphics libraries and applications, including raster and vector graphics primitives such as geometry, curves, and color.'),(26,'gui','GUI','Crates to help you create a graphical user interface.'),(27,'hardware-support','Hardware support','Crates to interface with specific CPU or other hardware features.'),(28,'internationalization','Internationalization (i18n)','Crates to help develop software capable of adapting to various languages and regions.'),(29,'localization','Localization (L10n)','Crates to help adapting internationalized software to specific languages and regions.'),(30,'memory-management','Memory management','Crates to help with allocation, memory mapping, garbage collection, reference counting, or interfaces to foreign memory managers.'),(31,'multimedia','Multimedia','Crates that provide audio, video, and image processing or rendering engines.'),(32,'network-programming','Network programming','Crates dealing with higher-level network protocols such as FTP, HTTP, or SSH, or lower-level network protocols such as TCP or UDP.'),(33,'no-std','No standard library','Crates that are able to function without the Rust standard library.'),(34,'os','Operating systems','Bindings to operating system-specific APIs.'),(35,'parser-implementations','Parser implementations','Parsers implemented for particular formats or languages.'),(36,'parsing','Parsing tools','Crates to help create parsers of binary and text formats. Format-specific parsers belong in other, more specific categories.'),(37,'rendering','Rendering','Real-time or offline rendering of 2D or 3D graphics, usually with the help of a graphics card.'),(38,'rust-patterns','Rust patterns','Shared solutions for particular situations specific to programming in Rust.'),(39,'science','Science','Crates related to solving problems involving math, physics, chemistry, biology, machine learning, geoscience, and other scientific fields.'),(40,'simulation','Simulation','Crates used to model or construct models for some activity, e.g. to.simulate a networking protocol.'),(41,'template-engine','Template engine','Crates designed to combine templates with data to produce result documents, usually with an emphasis on processing text.'),(42,'text-editors','Text editors','Applications for editing text.'),(43,'text-processing','Text processing','Crates to deal with the complexities of human language when expressed in textual form.'),(44,'value-formatting','Value formatting','Crates to allow an application to format values for display to a user, potentially adapting the display to various languages and regions.'),(45,'visualization','Visualization','Ways to view data, such as plotting or graphing.'),(46,'wasm','WebAssembly','Crates for use when targeting WebAssembly, or for manipulating WebAssembly.'),(47,'web-programming','Web programming','Crates to create applications for the web.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crate_authors`
--

DROP TABLE IF EXISTS `crate_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crate_authors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `crate_id` bigint(20) unsigned NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crate_id` (`crate_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `crate_authors_ibfk_1` FOREIGN KEY (`crate_id`) REFERENCES `crates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `crate_authors_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crate_authors`
--

LOCK TABLES `crate_authors` WRITE;
/*!40000 ALTER TABLE `crate_authors` DISABLE KEYS */;
INSERT INTO `crate_authors` VALUES (1,5,1),(2,6,1),(3,7,1);
/*!40000 ALTER TABLE `crate_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crate_categories`
--

DROP TABLE IF EXISTS `crate_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crate_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `crate_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crate_id` (`crate_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `crate_categories_ibfk_1` FOREIGN KEY (`crate_id`) REFERENCES `crates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `crate_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crate_categories`
--

LOCK TABLES `crate_categories` WRITE;
/*!40000 ALTER TABLE `crate_categories` DISABLE KEYS */;
INSERT INTO `crate_categories` VALUES (1,5,47),(2,5,16);
/*!40000 ALTER TABLE `crate_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crate_keywords`
--

DROP TABLE IF EXISTS `crate_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crate_keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `crate_id` bigint(20) unsigned NOT NULL,
  `keyword_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crate_id` (`crate_id`),
  KEY `keyword_id` (`keyword_id`),
  CONSTRAINT `crate_keywords_ibfk_1` FOREIGN KEY (`crate_id`) REFERENCES `crates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `crate_keywords_ibfk_2` FOREIGN KEY (`keyword_id`) REFERENCES `keywords` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crate_keywords`
--

LOCK TABLES `crate_keywords` WRITE;
/*!40000 ALTER TABLE `crate_keywords` DISABLE KEYS */;
INSERT INTO `crate_keywords` VALUES (1,5,1),(2,5,2),(3,5,3),(4,5,4);
/*!40000 ALTER TABLE `crate_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crates`
--

DROP TABLE IF EXISTS `crates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `downloads` bigint(20) unsigned NOT NULL DEFAULT 0,
  `documentation` varchar(1024) DEFAULT NULL,
  `repository` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crates`
--

LOCK TABLES `crates` WRITE;
/*!40000 ALTER TABLE `crates` DISABLE KEYS */;
INSERT INTO `crates` VALUES (5,'alexandrie','An alternative crate registry, implemented in Rust.','2019-07-19 12:34:30','2019-09-03 17:17:11',4,'https://crates.polomack.eu/docs/alexandrie','https://github.com/Hirevo/alexandrie'),(6,'epitech_api','A library for interacting with the EPITECH intranet API built on top of reqwest','2019-07-18 18:19:34','2019-07-18 18:19:34',0,NULL,'https://github.com/Hirevo/epitech-api-rs'),(7,'apple-music-jwt',NULL,'2019-07-19 07:40:25','2019-07-19 07:40:25',0,NULL,NULL);
/*!40000 ALTER TABLE `crates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
INSERT INTO `keywords` VALUES (2,'cargo'),(1,'crates'),(4,'registry'),(3,'web');
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salts`
--

DROP TABLE IF EXISTS `salts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `salt` varchar(255) NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `author_id` (`author_id`),
  CONSTRAINT `salts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salts`
--

LOCK TABLES `salts` WRITE;
/*!40000 ALTER TABLE `salts` DISABLE KEYS */;
INSERT INTO `salts` VALUES (6,'0513043f370adf330bf9032323b834c9da30e1a354d1eaa41ad895151ad42e8437d1a57cf413f61137f8e617668866cac3b1a9ca82c88f6655f428587afb4c03',9);
/*!40000 ALTER TABLE `salts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `expires` datetime NOT NULL,
  `state` enum('waiting-for-2FA','complete') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (27,'80344bf5d312f1cc780ddf52c0737a7569cc9220c52580107c0d77cfb2672cc5182116928002ecf19fbf09e8771986f85b962ed6cdcc9143df5b084ebd8f45f1',9,'2019-11-08 02:43:33','complete'),(28,'0292522524249916da81b9defc613321551b4d109c90eacc11771d70499c47cb0403ebd53310eeca2891e139b52d1c8baa86e55ac9c34e834b34a8a6f657397d',9,'2019-11-10 10:18:58','complete'),(30,'489875f926fa2112b281a6d34a78f013611c03ef8a4f149a1986774b6b2ba0507aca33e6a203a46ec5e526d069c1cfcac4987c6f9f7ec04b8f029aba00dec40d',9,'2019-11-14 02:26:51','complete'),(31,'5b2cc2703582437df23ff41bbca5a1441df02bce6e5dd60bae457618254ba921d45afc91c12706e8c1c3fd907ee7202a1cd47955dd628c08c44756d9ab71023c',9,'2019-11-14 03:31:31','complete'),(37,'cdd0e98fa172b68d67ccb7bb7d46c606603f633a26ea00e9275769cdc892e7575ad610fe72b5e1e0e1e0d751f773b8adefe43d3e27e88b62d974bd767219840b',9,'2020-01-15 00:25:18','waiting-for-2FA');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-28  8:31:51
