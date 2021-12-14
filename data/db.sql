-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-1~bionic

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `file_permissions` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
INSERT INTO `be_groups` VALUES (1,0,1639471337,'_cli_dlf','','','',NULL,'2','','','',1639471227,1,'','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',0,'','',0,'','',0,0,'');
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(100) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` text,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumtext,
  `file_mountpoints` text,
  `file_permissions` text,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1639499389,'admin','',0,'$P$Cz0NNrkBoDQyX1kz9LwCtj2vvOXZn9/',1,'',0,0,0,'de','',NULL,0,1639423290,0,'',NULL,'','',NULL,NULL,1,'',0,0,'options {\r\n    clearCache.system = 1\r\n}',0,0,NULL,0,1,''),(2,0,0,'_cli_lowlevel','',0,'c265d9d4d6c254dd7ec19f67b45b711777c35a96b97fbfb1',0,'',0,0,0,'','',NULL,0,0,0,'',NULL,'','',NULL,NULL,1,'',0,0,NULL,0,0,NULL,0,1,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `subgroup` tinytext,
  `TSconfig` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(100) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `is_online` (`is_online`),
  KEY `parent` (`pid`,`username`(191)),
  KEY `username` (`username`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(255) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1639423294,0,0,1,1,31,31,1,0,1639423294,1,0,'Home',1,NULL,1,0,0,'',0,0,0,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1639423294,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0),(2,1,0,0,0,'',0,0,0,0,0,0,1639498971,512,0,1,0,31,27,0,0,1639471245,1,0,'Data',254,'',0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0),(3,1,0,0,0,'',0,0,0,0,0,0,1639474838,256,0,1,0,31,27,0,0,1639471367,1,0,'Viewer',1,'',0,0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,'',0,'',0,'',0,1639474838,'','',0,'','','',0,0,0,0,'',0,0,'','','',0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `description` text,
  `abstract` text,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext NOT NULL,
  `description` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(255) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`(191),`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `identifier_hash` char(40) NOT NULL DEFAULT '',
  `folder_hash` char(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` char(40) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1639474474,0,0,0,'2',0,'/typo3conf/ext/ddb_frontend_viewer/Resources/Public/Images/loadingAnimation.svg','567d03f07f517b92fcc0d9bdb251f3f97940fec5','be922e28c3840fe2159f175ed8425d14baab8b8e','svg','image/svg+xml','loadingAnimation.svg','62d1ceb13724535442e85f86544b0333c2382a29',428,1639428432,1639428432);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text,
  `recursive` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `alternative` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1639474474,1639474473,1,0,0,'',0,0,0,'',0,0,0,0,0,0,1,NULL,40,40,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext,
  `configuration` text,
  `configurationsha1` char(40) NOT NULL DEFAULT '',
  `originalfilesha1` char(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` char(10) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(191),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext,
  `description` text,
  `alternative` text,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `downloadname` tinytext,
  `crop` varchar(4000) NOT NULL DEFAULT '',
  `autoplay` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `auto_extract_metadata` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1639471218,1639471218,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `path` varchar(120) NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `read_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext,
  `fieldlist` text,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `sys_log_uid` (`sys_log_uid`),
  KEY `recordident_1` (`tablename`(191),`recuid`),
  KEY `recordident_2` (`tablename`(191),`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `language_isocode` varchar(2) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1639499298,0,'English','en-us-gb','en',0);
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(191),`recuid`),
  KEY `lookup_uid` (`ref_table`(191),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'extensionDataImport','typo3/sysext/core/ext_tables_static+adt.sql','s:0:\"\";'),(2,'extensionDataImport','typo3/sysext/extbase/ext_tables_static+adt.sql','s:0:\"\";'),(3,'extensionDataImport','typo3/sysext/fluid/ext_tables_static+adt.sql','s:0:\"\";'),(4,'extensionDataImport','typo3/sysext/extensionmanager/ext_tables_static+adt.sql','s:32:\"94016e92ca205a1ce91bb24480d736f8\";'),(5,'extensionDataImport','typo3/sysext/lang/ext_tables_static+adt.sql','s:0:\"\";'),(6,'extensionDataImport','typo3/sysext/backend/ext_tables_static+adt.sql','s:0:\"\";'),(7,'extensionDataImport','typo3/sysext/filelist/ext_tables_static+adt.sql','s:0:\"\";'),(8,'extensionDataImport','typo3/sysext/frontend/ext_tables_static+adt.sql','s:0:\"\";'),(9,'extensionDataImport','typo3/sysext/install/ext_tables_static+adt.sql','s:0:\"\";'),(10,'extensionDataImport','typo3/sysext/recordlist/ext_tables_static+adt.sql','s:0:\"\";'),(11,'extensionDataImport','typo3/sysext/saltedpasswords/ext_tables_static+adt.sql','s:0:\"\";'),(12,'extensionDataImport','typo3/sysext/sv/ext_tables_static+adt.sql','s:0:\"\";'),(13,'extensionDataImport','typo3/sysext/t3skin/ext_tables_static+adt.sql','s:0:\"\";'),(14,'extensionDataImport','typo3/sysext/cshmanual/ext_tables_static+adt.sql','s:0:\"\";'),(15,'extensionDataImport','typo3/sysext/scheduler/ext_tables_static+adt.sql','s:0:\"\";'),(16,'extensionDataImport','typo3conf/ext/typo3_console/ext_tables_static+adt.sql','s:0:\"\";'),(17,'core','formProtectionSessionToken:1',NULL),(18,'extensionDataImport','typo3/sysext/tstemplate/ext_tables_static+adt.sql','s:0:\"\";'),(19,'TYPO3\\CMS\\Lang','de','i:1639499141;'),(20,'extensionDataImport','typo3/sysext/impexp/ext_tables_static+adt.sql','s:0:\"\";'),(21,'extensionDataImport','typo3/sysext/lowlevel/ext_tables_static+adt.sql','s:0:\"\";'),(22,'extensionDataImport','typo3/sysext/info/ext_tables_static+adt.sql','s:0:\"\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1639499019,0,1639423294,1,'Main TypoScript Rendering','DDB_Frontend_Viewer',0,0,0,1,1,'','','','','This is an Empty Site Package TypoScript template.\r\n\r\nFor each website you need a TypoScript template on the main page of your website (on the top level). For better maintenance all TypoScript should be extracted into external files via <INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:site_myproject/Configuration/TypoScript/setup.ts\">.',NULL,0,0,0,0),(2,3,0,0,0,'',0,0,0,0,0,0,1639499529,256,1639474446,1,'+ext','',0,0,0,0,2,'EXT:dlf/Configuration/TypoScript/,EXT:ddb_frontend_viewer/Configuration/TypoScript','config.storagePid = 2\r\nconfig.headNavPid = 0\r\nconfig.kitodoPageView = 3\nconfig.rootPid = 0',NULL,'',NULL,'',0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `rowDescription` text,
  `bodytext` mediumtext,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` text,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_header_position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,3,0,0,0,'',0,0,0,0,0,0,1639474950,1639474890,1,0,0,1000000000,'list','','',NULL,0,0,0,2,0,0,0,1,0,NULL,'',0,0,0,'','','',0,'0','0','dlf_metadata','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"pages\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"excludeOther\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"linkTitle\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"targetPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"getTitle\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"showFull\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"rootline\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"separator\">\n                    <value index=\"vDEF\">#</value>\n                </field>\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:14:\"rowDescription\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_actionlog`
--

DROP TABLE IF EXISTS `tx_dlf_actionlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_actionlog` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `count_pages` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_actionlog`
--

LOCK TABLES `tx_dlf_actionlog` WRITE;
/*!40000 ALTER TABLE `tx_dlf_actionlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_actionlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_basket`
--

DROP TABLE IF EXISTS `tx_dlf_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_basket` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `fe_user_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `doc_ids` varchar(255) NOT NULL DEFAULT '',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_basket`
--

LOCK TABLES `tx_dlf_basket` WRITE;
/*!40000 ALTER TABLE `tx_dlf_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_collections`
--

DROP TABLE IF EXISTS `tx_dlf_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_collections` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `fe_cruser_id` int(11) NOT NULL DEFAULT '0',
  `fe_admin_lock` smallint(6) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  `index_search` text NOT NULL,
  `oai_name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `thumbnail` text NOT NULL,
  `priority` smallint(6) NOT NULL DEFAULT '3',
  `documents` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  `status` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `pid_cruser` (`pid`,`fe_cruser_id`),
  KEY `index_name` (`index_name`(191)),
  KEY `oai_name` (`oai_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_collections`
--

LOCK TABLES `tx_dlf_collections` WRITE;
/*!40000 ALTER TABLE `tx_dlf_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_documents`
--

DROP TABLE IF EXISTS `tx_dlf_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_documents` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '',
  `prod_id` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `record_id` varchar(255) NOT NULL DEFAULT '',
  `opac_id` varchar(255) NOT NULL DEFAULT '',
  `union_id` varchar(255) NOT NULL DEFAULT '',
  `urn` varchar(255) NOT NULL DEFAULT '',
  `purl` varchar(255) NOT NULL DEFAULT '',
  `title` text NOT NULL,
  `title_sorting` text NOT NULL,
  `author` varchar(255) NOT NULL DEFAULT '',
  `year` varchar(255) NOT NULL DEFAULT '',
  `place` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `metadata` text NOT NULL,
  `metadata_sorting` text NOT NULL,
  `structure` int(11) NOT NULL DEFAULT '0',
  `partof` int(11) NOT NULL DEFAULT '0',
  `volume` varchar(255) NOT NULL DEFAULT '',
  `volume_sorting` varchar(255) NOT NULL DEFAULT '',
  `collections` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  `mets_label` varchar(255) NOT NULL DEFAULT '',
  `mets_orderlabel` varchar(255) NOT NULL DEFAULT '',
  `solrcore` int(11) NOT NULL DEFAULT '0',
  `status` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `partof` (`partof`),
  KEY `location` (`location`(191)),
  KEY `record_id` (`record_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_documents`
--

LOCK TABLES `tx_dlf_documents` WRITE;
/*!40000 ALTER TABLE `tx_dlf_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_formats`
--

DROP TABLE IF EXISTS `tx_dlf_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_formats` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  `root` varchar(255) NOT NULL DEFAULT '',
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_formats`
--

LOCK TABLES `tx_dlf_formats` WRITE;
/*!40000 ALTER TABLE `tx_dlf_formats` DISABLE KEYS */;
INSERT INTO `tx_dlf_formats` VALUES (1,0,1639499092,1639499092,1,0,'MODS','mods','http://www.loc.gov/mods/v3','tx_dlf_mods'),(2,0,1639499092,1639499092,1,0,'TEIHDR','teiHeader','http://www.tei-c.org/ns/1.0','tx_dlf_teihdr');
/*!40000 ALTER TABLE `tx_dlf_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_libraries`
--

DROP TABLE IF EXISTS `tx_dlf_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_libraries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `image` mediumblob NOT NULL,
  `oai_label` varchar(255) NOT NULL DEFAULT '',
  `oai_base` int(11) NOT NULL DEFAULT '0',
  `opac_label` varchar(255) NOT NULL DEFAULT '',
  `opac_base` varchar(255) NOT NULL DEFAULT '',
  `union_label` varchar(255) NOT NULL DEFAULT '',
  `union_base` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_libraries`
--

LOCK TABLES `tx_dlf_libraries` WRITE;
/*!40000 ALTER TABLE `tx_dlf_libraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_mail`
--

DROP TABLE IF EXISTS `tx_dlf_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_mail` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_mail`
--

LOCK TABLES `tx_dlf_mail` WRITE;
/*!40000 ALTER TABLE `tx_dlf_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadata`
--

DROP TABLE IF EXISTS `tx_dlf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  `format` int(11) NOT NULL DEFAULT '0',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `wrap` text NOT NULL,
  `index_tokenized` smallint(6) NOT NULL DEFAULT '0',
  `index_stored` smallint(6) NOT NULL DEFAULT '0',
  `index_indexed` smallint(6) NOT NULL DEFAULT '0',
  `index_boost` float(4,2) NOT NULL DEFAULT '1.00',
  `is_sortable` smallint(6) NOT NULL DEFAULT '0',
  `is_facet` smallint(6) NOT NULL DEFAULT '0',
  `is_listed` smallint(6) NOT NULL DEFAULT '0',
  `index_autocomplete` smallint(6) NOT NULL DEFAULT '0',
  `status` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_autocomplete` (`index_autocomplete`),
  KEY `is_sortable` (`is_sortable`),
  KEY `is_facet` (`is_facet`),
  KEY `is_listed` (`is_listed`),
  KEY `index_name` (`index_name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadata`
--

LOCK TABLES `tx_dlf_metadata` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadata` DISABLE KEYS */;
INSERT INTO `tx_dlf_metadata` VALUES (1,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Physical Form','format',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(2,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Owner','owner',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(3,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'licencer','licencer',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(4,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Copyright Owner','copyright',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(5,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Creator','creator',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(6,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Volume','volume',1,'','key.wrap = <dt>|</dt>\nvalue.if.value.field = type\nvalue.if.equals = volume\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(7,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Issue','issue',1,'','key.wrap = <dt>|</dt>\nvalue.if.value.field = type\nvalue.if.equals = issue\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(8,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,1000000000,'Place of Publication (Parent)','parentPlace',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1.00,0,0,0,0,0),(9,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,1000000000,'Publication Run','publicationRun',1,'','key.wrap = <dt>|</dt>\nvalue.replacement.1.search = /^-$/\nvalue.replacement.1.replace.field = year // parentYear\nvalue.replacement.1.useRegExp = 1\nvalue.replacement.2.search = /([0-9]{4})-([0-1]?[0-9])-([0-3]?[0-9])/\nvalue.replacement.2.replace = $3.$2.$1\nvalue.replacement.2.useRegExp = 1\nvalue.required = 1\nvalue.noTrimWrap = ||, |\nall.substring = 0,-2\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(10,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Year of Publication','year',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1.00,0,0,0,0,0),(11,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,1000000000,'Year of Publication (Parent)','parentYear',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1.00,0,0,0,0,0),(12,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'VD16','vd16',1,'','key.wrap = <dt>|</dt>\nvalue.setContentToCurrent = 1\nvalue.required = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.rawUrlEncode = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://gateway-bayern.bib-bvb.de/aleph-cgi/bvb_suche?sid=VD16&find_code_1=WVD&find_request_1=\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(13,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'VD17','vd17',1,'','key.wrap = <dt>|</dt>\nvalue.setContentToCurrent = 1\nvalue.required = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.rawUrlEncode = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://gso.gbv.de/xslt/DB=1.28/SET=1/TTL=1/CMD?ACT=SRCHA&IKT=8002&TRM=\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(14,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,1000000000,'Electronic Edition','electronic_ed',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(15,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,1000000000,'Series','series',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(16,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Note','note',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(17,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Place of Publication','place',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(18,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'URN','urn',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://nbn-resolving.de/\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(19,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Persistent URL','purl',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(20,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Author','author',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(21,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,1000000000,'Subtitle','subtitle',1,'','key.wrap = <dt>|</dt>\n\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(22,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Title','title',1,'','key.wrap = <dt class=\"tx-dlf-title\">|</dt>\nvalue.ifEmpty.field = parentTitle\n#value.ifEmpty.wrap = [|]\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-title\">|</dd>',0,1,1,1.00,0,0,1,0,0),(23,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,1000000000,'Parent Title','parentTitle',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1.00,0,0,0,0,0),(24,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,1000000000,'Document Type','genre',1,'','key.wrap = <dt class=\"tx-dlf-type\">|</dt>\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-type\">|</dd>',0,1,1,1.00,0,0,1,0,0),(25,2,1639499599,1639471283,1,1,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1000000000,'Document Type','type',0,'','key.wrap = <dt class=\"tx-dlf-type\">|</dt>\nvalue.required = 1\nvalue.override.field = genre\nvalue.override.insertData = 1\nvalue.override.fieldRequired = genre\nvalue.wrap = <dd class=\"tx-dlf-type\">|</dd>',0,1,1,1.00,0,0,1,0,0),(26,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,5376,'Format','format',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(27,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,5120,'Besitzer','owner',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(28,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,4864,'licencer','licencer',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(29,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,4608,'Copyrightinhaber','copyright',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(30,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,4352,'Urheber','creator',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(31,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,4096,'Band','volume',1,'','key.wrap = <dt>|</dt>\nvalue.if.value.field = type\nvalue.if.equals = volume\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(32,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,3840,'Ausgabe','issue',1,'','key.wrap = <dt>|</dt>\nvalue.if.value.field = type\nvalue.if.equals = issue\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(33,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,3584,'Erscheinungsort (Gesamtheit)','parentPlace',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1.00,0,0,0,0,0),(34,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,3328,'Erscheinungsverlauf','publicationRun',1,'','key.wrap = <dt>|</dt>\nvalue.replacement.1.search = /^-$/\nvalue.replacement.1.replace.field = year // parentYear\nvalue.replacement.1.useRegExp = 1\nvalue.replacement.2.search = /([0-9]{4})-([0-1]?[0-9])-([0-3]?[0-9])/\nvalue.replacement.2.replace = $3.$2.$1\nvalue.replacement.2.useRegExp = 1\nvalue.required = 1\nvalue.noTrimWrap = ||, |\nall.substring = 0,-2\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(35,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,3072,'Erscheinungsjahr','year',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1.00,0,0,0,0,0),(36,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,2816,'Erscheinungsjahr (Gesamtheit)','parentYear',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1.00,0,0,0,0,0),(37,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,2560,'VD16','vd16',1,'','key.wrap = <dt>|</dt>\nvalue.setContentToCurrent = 1\nvalue.required = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.rawUrlEncode = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://gateway-bayern.bib-bvb.de/aleph-cgi/bvb_suche?sid=VD16&find_code_1=WVD&find_request_1=\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(38,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,2304,'VD17','vd17',1,'','key.wrap = <dt>|</dt>\nvalue.setContentToCurrent = 1\nvalue.required = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.rawUrlEncode = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://gso.gbv.de/xslt/DB=1.28/SET=1/TTL=1/CMD?ACT=SRCHA&IKT=8002&TRM=\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(39,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,2048,'Elektronische Ausgabe','electronic_ed',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(40,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,1792,'Reihe','series',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(41,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1536,'Anmerkung','note',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(42,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1280,'Erscheinungsort','place',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(43,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,1024,'URN','urn',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://nbn-resolving.de/\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(44,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,768,'Persistente URL','purl',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(45,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,512,'Autor','author',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(46,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,256,'Untertitel','subtitle',1,'','key.wrap = <dt>|</dt>\n\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1.00,0,0,1,0,0),(47,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,128,'Titel','title',1,'','key.wrap = <dt class=\"tx-dlf-title\">|</dt>\nvalue.ifEmpty.field = parentTitle\n#value.ifEmpty.wrap = [|]\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-title\">|</dd>',0,1,1,1.00,0,0,1,0,0),(48,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,64,'Gesamttitel','parentTitle',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1.00,0,0,0,0,0),(49,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',1,32,'Dokumenttyp','genre',1,'','key.wrap = <dt class=\"tx-dlf-type\">|</dt>\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-type\">|</dd>',0,1,1,1.00,0,0,1,0,0),(50,2,1639499624,1639499624,1,0,0,0,'a:10:{s:6:\"hidden\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:16:\"sys_language_uid\";N;}',0,16,'Dokumenttyp','type',0,'','key.wrap = <dt class=\"tx-dlf-type\">|</dt>\nvalue.required = 1\nvalue.override.field = genre\nvalue.override.insertData = 1\nvalue.override.fieldRequired = genre\nvalue.wrap = <dd class=\"tx-dlf-type\">|</dd>',0,1,1,1.00,0,0,1,0,0);
/*!40000 ALTER TABLE `tx_dlf_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadataformat`
--

DROP TABLE IF EXISTS `tx_dlf_metadataformat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_metadataformat` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `encoded` int(11) NOT NULL DEFAULT '0',
  `xpath` varchar(1024) NOT NULL DEFAULT '',
  `xpath_sorting` varchar(255) NOT NULL DEFAULT '',
  `mandatory` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadataformat`
--

LOCK TABLES `tx_dlf_metadataformat` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadataformat` DISABLE KEYS */;
INSERT INTO `tx_dlf_metadataformat` VALUES (1,2,1639499599,1639471283,1,1,1,1,'./mods:physicalDescription/mods:extent','',0),(2,2,1639499599,1639471283,1,1,2,1,'./mods:name[./mods:role/mods:roleTerm=\"own\"]/mods:displayForm','',0),(3,2,1639499599,1639471283,1,1,3,1,'./mods:name[./mods:role/mods:roleTerm=\"lso\"]/mods:displayForm','',0),(4,2,1639499599,1639471283,1,1,4,1,'./mods:name[./mods:role/mods:roleTerm=\"cph\"]/mods:displayForm','',0),(5,2,1639499599,1639471283,1,1,5,1,'./mods:name[./mods:role/mods:roleTerm=\"cre\"]/mods:displayForm','',0),(6,2,1639499599,1639471283,1,1,6,1,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0),(7,2,1639499599,1639471283,1,1,7,1,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0),(8,2,1639499599,1639471283,1,1,8,1,'./mods:relatedItem[@type=\"host\"]/mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:place/mods:placeTerm','',0),(9,2,1639499599,1639471283,1,1,9,1,'concat(./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@point=\"start\"],\" - \",./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@point=\"end\"])','',0),(10,2,1639499599,1639471283,1,1,11,1,'./mods:relatedItem[@type=\"host\"]/mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@keyDate=\"yes\"]','',0),(11,2,1639499599,1639471283,1,1,12,1,'./mods:identifier[@type=\"vd16\"]','',0),(12,2,1639499599,1639471283,1,1,13,1,'./mods:identifier[@type=\"vd17\"]','',0),(13,2,1639499599,1639471283,1,1,14,1,'./mods:originInfo/mods:publisher[text() and ../mods:edition/text()=\"[Electronic ed.]\"]','',0),(14,2,1639499599,1639471283,1,1,15,1,'./mods:relatedItem[@type=\"series\"]/mods:titleInfo/mods:title[not(@lang=\"ger\")]','',0),(15,2,1639499599,1639471283,1,1,16,1,'concat(./mods:note[@type=\"creation/production credits\"],\" \",./mods:note[@type=\"publications\"],\" \",./mods:physicalDescription/mods:note[@type=\"condition\"])','',0),(16,2,1639499599,1639471283,1,1,18,1,'./mods:identifier[@type=\"urn\"]','',0),(17,2,1639499599,1639471283,1,1,19,1,'./mods:identifier[@type=\"purl\"]','',0),(18,2,1639499599,1639471283,1,1,20,1,'./mods:relatedItem[@type=\"host\"]/mods:name[./mods:role/mods:roleTerm[@authority=\"marcrelator\"][@type=\"code\"]=\"aut\"]/mods:displayForm','',0),(19,2,1639499599,1639471283,1,1,21,1,'./mods:titleInfo[not(@type=\"alternative\")]/mods:subTitle','',0),(20,2,1639499599,1639471283,1,1,22,1,'concat(./mods:titleInfo[not(@type=\"alternative\")]/mods:nonSort,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:title,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:subtitle,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:partNumber,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:partName)','',0),(21,2,1639499599,1639471283,1,1,23,1,'concat(./mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:nonSort,\" \",./mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:title)','',0),(22,2,1639499599,1639471283,1,1,24,1,'/mods:genre','',0),(23,2,1639499624,1639499624,1,0,26,1,'./mods:physicalDescription/mods:extent','',0),(24,2,1639499624,1639499624,1,0,27,1,'./mods:name[./mods:role/mods:roleTerm=\"own\"]/mods:displayForm','',0),(25,2,1639499624,1639499624,1,0,28,1,'./mods:name[./mods:role/mods:roleTerm=\"lso\"]/mods:displayForm','',0),(26,2,1639499624,1639499624,1,0,29,1,'./mods:name[./mods:role/mods:roleTerm=\"cph\"]/mods:displayForm','',0),(27,2,1639499624,1639499624,1,0,30,1,'./mods:name[./mods:role/mods:roleTerm=\"cre\"]/mods:displayForm','',0),(28,2,1639499624,1639499624,1,0,31,1,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0),(29,2,1639499624,1639499624,1,0,32,1,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0),(30,2,1639499624,1639499624,1,0,33,1,'./mods:relatedItem[@type=\"host\"]/mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:place/mods:placeTerm','',0),(31,2,1639499624,1639499624,1,0,34,1,'concat(./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@point=\"start\"],\" - \",./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@point=\"end\"])','',0),(32,2,1639499624,1639499624,1,0,36,1,'./mods:relatedItem[@type=\"host\"]/mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@keyDate=\"yes\"]','',0),(33,2,1639499624,1639499624,1,0,37,1,'./mods:identifier[@type=\"vd16\"]','',0),(34,2,1639499624,1639499624,1,0,38,1,'./mods:identifier[@type=\"vd17\"]','',0),(35,2,1639499624,1639499624,1,0,39,1,'./mods:originInfo/mods:publisher[text() and ../mods:edition/text()=\"[Electronic ed.]\"]','',0),(36,2,1639499624,1639499624,1,0,40,1,'./mods:relatedItem[@type=\"series\"]/mods:titleInfo/mods:title[not(@lang=\"ger\")]','',0),(37,2,1639499624,1639499624,1,0,41,1,'concat(./mods:note[@type=\"creation/production credits\"],\" \",./mods:note[@type=\"publications\"],\" \",./mods:physicalDescription/mods:note[@type=\"condition\"])','',0),(38,2,1639499624,1639499624,1,0,43,1,'./mods:identifier[@type=\"urn\"]','',0),(39,2,1639499624,1639499624,1,0,44,1,'./mods:identifier[@type=\"purl\"]','',0),(40,2,1639499624,1639499624,1,0,45,1,'./mods:relatedItem[@type=\"host\"]/mods:name[./mods:role/mods:roleTerm[@authority=\"marcrelator\"][@type=\"code\"]=\"aut\"]/mods:displayForm','',0),(41,2,1639499624,1639499624,1,0,46,1,'./mods:titleInfo[not(@type=\"alternative\")]/mods:subTitle','',0),(42,2,1639499624,1639499624,1,0,47,1,'concat(./mods:titleInfo[not(@type=\"alternative\")]/mods:nonSort,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:title,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:subtitle,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:partNumber,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:partName)','',0),(43,2,1639499624,1639499624,1,0,48,1,'concat(./mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:nonSort,\" \",./mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:title)','',0),(44,2,1639499624,1639499624,1,0,49,1,'/mods:genre','',0);
/*!40000 ALTER TABLE `tx_dlf_metadataformat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_printer`
--

DROP TABLE IF EXISTS `tx_dlf_printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_printer` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `print` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_printer`
--

LOCK TABLES `tx_dlf_printer` WRITE;
/*!40000 ALTER TABLE `tx_dlf_printer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_relations`
--

DROP TABLE IF EXISTS `tx_dlf_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_relations` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(30) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `ident` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `local_foreign` (`uid_local`,`uid_foreign`,`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_relations`
--

LOCK TABLES `tx_dlf_relations` WRITE;
/*!40000 ALTER TABLE `tx_dlf_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_solrcores`
--

DROP TABLE IF EXISTS `tx_dlf_solrcores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_solrcores` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `index_name` (`index_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_solrcores`
--

LOCK TABLES `tx_dlf_solrcores` WRITE;
/*!40000 ALTER TABLE `tx_dlf_solrcores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_solrcores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_structures`
--

DROP TABLE IF EXISTS `tx_dlf_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_structures` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `toplevel` smallint(6) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  `oai_name` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` int(11) NOT NULL DEFAULT '0',
  `status` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_structures`
--

LOCK TABLES `tx_dlf_structures` WRITE;
/*!40000 ALTER TABLE `tx_dlf_structures` DISABLE KEYS */;
INSERT INTO `tx_dlf_structures` VALUES (1,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Act','act','',0,0),(2,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Additional','additional','',0,0),(3,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Address','address','',0,0),(4,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Album','album','',0,0),(5,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Annotation','annotation','',0,0),(6,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Article','article','',0,0),(7,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Atlas','atlas','',0,0),(8,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Bachelor Thesis','bachelor_thesis','',0,0),(9,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Binding','binding','',0,0),(10,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Bookplate','bookplate','',0,0),(11,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Bundle','bundle','',0,0),(12,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Cartulary','cartulary','',0,0),(13,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Chapter','chapter','',0,0),(14,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'charter','charter','',0,0),(15,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Collation','collation','',0,0),(16,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Colophon','colophon','',0,0),(17,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Contained Work','contained_work','',0,0),(18,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Table of Contents','contents','',0,0),(19,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Corrigenda','corrigenda','',0,0),(20,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Cover','cover','',0,0),(21,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Front Cover','cover_front','',0,0),(22,2,1639499607,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Back Cover','cover_back','',0,0),(23,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Day','day','',0,0),(24,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Dedication','dedication','',0,0),(25,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Diploma Thesis','diploma_thesis','',0,0),(26,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Doctoral Thesis','doctoral_thesis','',0,0),(27,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Document','document','',0,0),(28,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Dossier','dossier','',0,0),(29,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Edge','edge','',0,0),(30,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Endsheet','endsheet','',0,0),(31,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Engraved Titlepage','engraved_titlepage','',0,0),(32,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Entry','entry','',0,0),(33,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Fascicle','fascicle','',0,0),(34,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'File','file','',0,0),(35,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Folder','folder','',0,0),(36,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Fragment','fragment','',0,0),(37,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Ground Plan','ground_plan','',0,0),(38,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Habilitation Thesis','habilitation_thesis','',0,0),(39,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Illustration','illustration','',0,0),(40,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Image','image','',0,0),(41,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Imprint','imprint','',0,0),(42,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Index','index','',0,0),(43,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Initial Decoration','initial_decoration','',0,0),(44,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Issue','issue','',0,0),(45,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Judgement','judgement','',0,0),(46,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Land Register','land_register','',0,0),(47,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Leaflet','leaflet','',0,0),(48,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Lecture','lecture','',0,0),(49,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Letter','letter','',0,0),(50,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Magister Thesis','magister_thesis','',0,0),(51,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Master Thesis','master_thesis','',0,0),(52,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Manuscript','manuscript','',0,0),(53,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Map','map','',0,0),(54,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Monograph','monograph','',0,0),(55,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Month','month','',0,0),(56,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Multivolume Work','multivolume_work','',0,0),(57,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Musical Notation','musical_notation','',0,0),(58,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Newspaper','newspaper','',0,0),(59,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Note','note','',0,0),(60,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Official Notification','official_notification','',0,0),(61,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Ornament','ornament','',0,0),(62,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Other','other','',0,0),(63,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Paper','paper','',0,0),(64,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Paste Down','paste_down','',0,0),(65,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Periodical','periodical','',0,0),(66,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Photograph','photograph','',0,0),(67,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Picture','picture','',0,0),(68,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Plan','plan','',0,0),(69,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Poster','poster','',0,0),(70,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Preface','preface','',0,0),(71,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Preprint','preprint','',0,0),(72,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Printed Archives','printed_archives','',0,0),(73,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Printers Mark','printers_mark','',0,0),(74,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Privileges','privileges','',0,0),(75,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Proceeding','proceeding','',0,0),(76,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Provenance','provenance','',0,0),(77,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Register','register','',0,0),(78,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Report','report','',0,0),(79,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Review','review','',0,0),(80,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Research Paper','research_paper','',0,0),(81,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Scheme','scheme','',0,0),(82,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Seal','seal','',0,0),(83,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Section','section','',0,0),(84,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Spine','spine','',0,0),(85,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Stamp','stamp','',0,0),(86,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Study','study','',0,0),(87,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Table','table','',0,0),(88,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Text','text','',0,0),(89,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Titlepage','title_page','',0,0),(90,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Verse','verse','',0,0),(91,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Volume','volume','',0,0),(92,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Year of Publication','year','',0,0),(93,2,1639499618,1639471281,1,1,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Periodical','Journal','',0,0),(94,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Urkunde','act','',0,0),(95,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Beilage','additional','',0,0),(96,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Anrede','address','',0,0),(97,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Album','album','',0,0),(98,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Annotation','annotation','',0,0),(99,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Aufsatz','article','',0,0),(100,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Atlas','atlas','',0,0),(101,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Bachelorarbeit','bachelor_thesis','',0,0),(102,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Einband','binding','',0,0),(103,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Exlibris','bookplate','',0,0),(104,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Konvolut','bundle','',0,0),(105,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Kartular','cartulary','',0,0),(106,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Kapitel','chapter','',0,0),(107,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Urkunde','charter','',0,0),(108,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Bogensignatur','collation','',0,0),(109,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Kolophon','colophon','',0,0),(110,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Enthaltenes Werk','contained_work','',0,0),(111,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Inhaltsverzeichnis','contents','',0,0),(112,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Errata','corrigenda','',0,0),(113,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Deckel','cover','',0,0),(114,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Vorderdeckel','cover_front','',0,0),(115,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Rückdeckel','cover_back','',0,0),(116,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Tag','day','',0,0),(117,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Widmung','dedication','',0,0),(118,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Diplomarbeit','diploma_thesis','',0,0),(119,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Dissertation','doctoral_thesis','',0,0),(120,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Dokument','document','',0,0),(121,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Vorgang','dossier','',0,0),(122,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Schnitt','edge','',0,0),(123,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Vorsatz','endsheet','',0,0),(124,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Illustration','engraved_titlepage','',0,0),(125,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Eingang','entry','',0,0),(126,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Faszikel','fascicle','',0,0),(127,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Akte','file','',0,0),(128,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Mappe','folder','',0,0),(129,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Fragment','fragment','',0,0),(130,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Grundriss','ground_plan','',0,0),(131,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Habilitation','habilitation_thesis','',0,0),(132,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Illustration','illustration','',0,0),(133,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Bild','image','',0,0),(134,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Impressum','imprint','',0,0),(135,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Register','index','',0,0),(136,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Initialschmuck','initial_decoration','',0,0),(137,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Ausgabe','issue','',0,0),(138,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Urteil','judgement','',0,0),(139,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Grundbuch','land_register','',0,0),(140,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Flugblatt','leaflet','',0,0),(141,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Vorlesung','lecture','',0,0),(142,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Brief','letter','',0,0),(143,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Magisterarbeit','magister_thesis','',0,0),(144,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Masterarbeit','master_thesis','',0,0),(145,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Handschrift','manuscript','',0,0),(146,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Karte','map','',0,0),(147,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Monografie','monograph','',0,0),(148,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Monat','month','',0,0),(149,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Mehrbändiges Werk','multivolume_work','',0,0),(150,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Noten','musical_notation','',0,0),(151,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Zeitung','newspaper','',0,0),(152,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Anmerkung','note','',0,0),(153,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Bescheid','official_notification','',0,0),(154,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Buchschmuck','ornament','',0,0),(155,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Sonstiges','other','',0,0),(156,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Vortrag','paper','',0,0),(157,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Spiegel','paste_down','',0,0),(158,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Fortlaufendes Sammelwerk','periodical','',0,0),(159,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Fotografie','photograph','',0,0),(160,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Foto','picture','',0,0),(161,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Plan','plan','',0,0),(162,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Plakat','poster','',0,0),(163,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Vorwort','preface','',0,0),(164,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Vorabdruck','preprint','',0,0),(165,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Druckerzeugnis','printed_archives','',0,0),(166,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Druckermarke','printers_mark','',0,0),(167,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Privilegien','privileges','',0,0),(168,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Tagungsband','proceeding','',0,0),(169,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Besitznachweis','provenance','',0,0),(170,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Amtsbuch','register','',0,0),(171,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Bericht','report','',0,0),(172,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Rezension','review','',0,0),(173,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Forschungsarbeit','research_paper','',0,0),(174,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Illustration','scheme','',0,0),(175,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Siegel','seal','',0,0),(176,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Abschnitt','section','',0,0),(177,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Rücken','spine','',0,0),(178,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Stempel','stamp','',0,0),(179,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Studie','study','',0,0),(180,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Tabelle','table','',0,0),(181,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Text','text','',0,0),(182,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Titelblatt','title_page','',0,0),(183,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Vers','verse','',0,0),(184,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Band','volume','',0,0),(185,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,1,'Erscheinungsjahr','year','',0,0),(186,2,1639499623,1639499623,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,0,'Fortlaufendes Sammelwerk','Journal','',0,0);
/*!40000 ALTER TABLE `tx_dlf_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_tokens`
--

DROP TABLE IF EXISTS `tx_dlf_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_tokens` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL DEFAULT '',
  `options` mediumtext NOT NULL,
  `ident` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `token` (`token`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_tokens`
--

LOCK TABLES `tx_dlf_tokens` WRITE;
/*!40000 ALTER TABLE `tx_dlf_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext,
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `nextexecution` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text,
  `lastexecution_context` char(3) NOT NULL DEFAULT '',
  `serialized_task_object` blob,
  `serialized_executions` blob,
  `task_group` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
