-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: galeb_api
-- ------------------------------------------------------
-- Server version	5.6.41

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `apitoken` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `resettoken` bit(1) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_account_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_details`
--

DROP TABLE IF EXISTS `account_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_details` (
  `account_id` bigint(20) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `details_key` varchar(255) NOT NULL,
  PRIMARY KEY (`account_id`,`details_key`),
  CONSTRAINT `FKjlchm9h4od1gxeqrfsngfkj5b` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_details`
--

LOCK TABLES `account_details` WRITE;
/*!40000 ALTER TABLE `account_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balancepolicy`
--

DROP TABLE IF EXISTS `balancepolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balancepolicy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_balancepolicy_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balancepolicy`
--

LOCK TABLES `balancepolicy` WRITE;
/*!40000 ALTER TABLE `balancepolicy` DISABLE KEYS */;
INSERT INTO `balancepolicy` VALUES (1,'2018-10-07 21:37:09','anonymousUser',NULL,'2018-10-07 21:37:09','anonymousUser','\0',NULL,'default'),(2,'2018-10-07 21:40:54','anonymousUser',NULL,'2018-10-07 21:40:54','anonymousUser','\0',NULL,'other1'),(3,'2018-10-07 21:41:00','anonymousUser',NULL,'2018-10-07 21:41:00','anonymousUser','\0',NULL,'other2'),(4,'2018-10-07 21:41:05','anonymousUser',NULL,'2018-10-07 21:41:05','anonymousUser','\0',NULL,'other3'),(5,'2018-10-07 21:41:10','anonymousUser',NULL,'2018-10-07 21:41:10','anonymousUser','\0',NULL,'other4'),(6,'2018-10-07 21:41:16','anonymousUser',NULL,'2018-10-07 21:41:16','anonymousUser','\0',NULL,'other5'),(7,'2018-10-07 21:41:21','anonymousUser',NULL,'2018-10-07 21:41:21','anonymousUser','\0',NULL,'other6'),(8,'2018-10-07 21:41:26','anonymousUser',NULL,'2018-10-07 21:41:26','anonymousUser','\0',NULL,'other7'),(9,'2018-10-07 21:41:31','anonymousUser',NULL,'2018-10-07 21:41:31','anonymousUser','\0',NULL,'other8'),(10,'2018-10-07 21:41:35','anonymousUser',NULL,'2018-10-07 21:41:35','anonymousUser','\0',NULL,'other9');
/*!40000 ALTER TABLE `balancepolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `environment`
--

DROP TABLE IF EXISTS `environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `environment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_environment_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environment`
--

LOCK TABLES `environment` WRITE;
/*!40000 ALTER TABLE `environment` DISABLE KEYS */;
INSERT INTO `environment` VALUES (1,'2018-10-07 21:42:33','anonymousUser',NULL,'2018-10-07 21:42:33','anonymousUser','\0',NULL,'default'),(2,'2018-10-07 21:42:50','anonymousUser',NULL,'2018-10-07 21:42:50','anonymousUser','\0',NULL,'other1'),(3,'2018-10-07 21:42:55','anonymousUser',NULL,'2018-10-07 21:42:55','anonymousUser','\0',NULL,'other2'),(4,'2018-10-07 21:43:01','anonymousUser',NULL,'2018-10-07 21:43:01','anonymousUser','\0',NULL,'other3'),(5,'2018-10-07 21:43:06','anonymousUser',NULL,'2018-10-07 21:43:06','anonymousUser','\0',NULL,'other4'),(6,'2018-10-07 21:43:13','anonymousUser',NULL,'2018-10-07 21:43:13','anonymousUser','\0',NULL,'other5'),(7,'2018-10-07 21:43:19','anonymousUser',NULL,'2018-10-07 21:43:19','anonymousUser','\0',NULL,'other6'),(8,'2018-10-07 21:43:24','anonymousUser',NULL,'2018-10-07 21:43:24','anonymousUser','\0',NULL,'other7'),(9,'2018-10-07 21:43:29','anonymousUser',NULL,'2018-10-07 21:43:29','anonymousUser','\0',NULL,'other8'),(10,'2018-10-07 21:43:40','anonymousUser',NULL,'2018-10-07 21:43:40','anonymousUser','\0',NULL,'other9');
/*!40000 ALTER TABLE `environment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'1','initial','SQL','V1__initial.sql',1123028523,'root','2018-10-07 19:55:18',2291,1),(2,'2','rolegroup roles on delete','SQL','V2__rolegroup_roles_on_delete.sql',-1474278223,'root','2018-10-07 19:55:18',162,1),(3,'3','initial rolegroups','SQL','V3__initial_rolegroups.sql',-1079615393,'root','2018-10-07 19:55:19',145,1),(4,'4','account team on delete','SQL','V4__account_team_on_delete.sql',1742144830,'root','2018-10-07 19:55:19',157,1),(5,'5','project rolegroup on delete','SQL','V5__project_rolegroup_on_delete.sql',510654577,'root','2018-10-07 19:55:19',161,1),(6,'6','account rolegroup on delete','SQL','V6__account_rolegroup_on_delete.sql',-2117524255,'root','2018-10-07 19:55:19',162,1),(7,'7','virtualhostaliases migraton','SQL','V7__virtualhostaliases_migraton.sql',594936482,'root','2018-10-07 19:55:19',67,1),(8,'8','team rolegroup on delete','SQL','V8__team_rolegroup_on_delete.sql',1211000119,'root','2018-10-07 19:55:19',161,1),(9,'9','pool add allow','SQL','V9__pool_add_allow.sql',391563279,'root','2018-10-07 19:55:20',130,1),(10,'10','ruleordered fix unique key','SQL','V10__ruleordered_fix_unique_key.sql',816140458,'root','2018-10-07 19:55:20',79,1),(11,'11','healthstatus target on delete','SQL','V11__healthstatus_target_on_delete.sql',-600580967,'root','2018-10-07 19:55:20',171,1),(12,'12','virtualhost environments on delete','SQL','V12__virtualhost_environments_on_delete.sql',-913532972,'root','2018-10-07 19:55:20',164,1),(13,'13','rule pools restrict','SQL','V13__rule_pools_restrict.sql',-1210018725,'root','2018-10-07 19:55:20',161,1),(14,'14','remove role all from project default rolegroup','SQL','V14__remove_role_all_from_project_default_rolegroup.sql',-1146904960,'root','2018-10-07 19:55:20',33,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_status`
--

DROP TABLE IF EXISTS `health_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_detailed` varchar(255) DEFAULT NULL,
  `target_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_health_status_source_target_id` (`source`,`target_id`),
  KEY `FK_healthstatus_target` (`target_id`),
  CONSTRAINT `FK_healthstatus_target` FOREIGN KEY (`target_id`) REFERENCES `target` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_status`
--

LOCK TABLES `health_status` WRITE;
/*!40000 ALTER TABLE `health_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `health_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthcheck`
--

DROP TABLE IF EXISTS `healthcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `healthcheck` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `http_method` int(11) DEFAULT NULL,
  `http_status_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `tcp_only` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_healthcheck_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthcheck`
--

LOCK TABLES `healthcheck` WRITE;
/*!40000 ALTER TABLE `healthcheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `healthcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthcheck_headers`
--

DROP TABLE IF EXISTS `healthcheck_headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `healthcheck_headers` (
  `healthcheck_id` bigint(20) NOT NULL,
  `headers` varchar(255) DEFAULT NULL,
  `headers_key` varchar(255) NOT NULL,
  PRIMARY KEY (`healthcheck_id`,`headers_key`),
  CONSTRAINT `FK_headers_healthcheck_id` FOREIGN KEY (`healthcheck_id`) REFERENCES `healthcheck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthcheck_headers`
--

LOCK TABLES `healthcheck_headers` WRITE;
/*!40000 ALTER TABLE `healthcheck_headers` DISABLE KEYS */;
/*!40000 ALTER TABLE `healthcheck_headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool`
--

DROP TABLE IF EXISTS `pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `global` bit(1) DEFAULT b'0',
  `hc_body` varchar(255) DEFAULT NULL,
  `hc_host` varchar(255) DEFAULT NULL,
  `hc_http_method` int(11) DEFAULT NULL,
  `hc_http_status_code` varchar(255) DEFAULT NULL,
  `hc_path` varchar(255) DEFAULT NULL,
  `hc_tcp_only` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `pool_size` bigint(20) DEFAULT NULL,
  `balancepolicy_id` bigint(20) NOT NULL,
  `environment_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `farm_id` bigint(20) DEFAULT NULL,
  `allow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pool_name_project_id` (`name`,`project_id`),
  KEY `FK_pool_balancepolicy` (`balancepolicy_id`),
  KEY `FK_pool_environment` (`environment_id`),
  KEY `FK_pool_project` (`project_id`),
  CONSTRAINT `FK_pool_balancepolicy` FOREIGN KEY (`balancepolicy_id`) REFERENCES `balancepolicy` (`id`),
  CONSTRAINT `FK_pool_environment` FOREIGN KEY (`environment_id`) REFERENCES `environment` (`id`),
  CONSTRAINT `FK_pool_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool`
--

LOCK TABLES `pool` WRITE;
/*!40000 ALTER TABLE `pool` DISABLE KEYS */;
INSERT INTO `pool` VALUES (1,'2018-10-07 21:52:27','anonymousUser',NULL,'2018-10-07 21:52:27','anonymousUser','\0',NULL,'\0',NULL,NULL,0,NULL,'/','','default',-1,1,1,1,NULL,'/'),(2,'2018-10-07 21:52:38','anonymousUser',NULL,'2018-10-07 21:52:38','anonymousUser','\0',NULL,'\0',NULL,NULL,0,NULL,'/','','other1',-1,1,1,1,NULL,'/'),(3,'2018-10-07 21:52:43','anonymousUser',NULL,'2018-10-07 21:52:43','anonymousUser','\0',NULL,'\0',NULL,NULL,0,NULL,'/','','other2',-1,1,1,1,NULL,'/'),(4,'2018-10-07 21:52:58','anonymousUser',NULL,'2018-10-07 21:52:58','anonymousUser','\0',NULL,'\0',NULL,NULL,0,NULL,'/','','other3',-1,2,2,1,NULL,'/'),(5,'2018-10-07 21:53:04','anonymousUser',NULL,'2018-10-07 21:53:04','anonymousUser','\0',NULL,'\0',NULL,NULL,0,NULL,'/','','other4',-1,2,2,1,NULL,'/'),(6,'2018-10-07 21:53:08','anonymousUser',NULL,'2018-10-07 21:53:08','anonymousUser','\0',NULL,'\0',NULL,NULL,0,NULL,'/','','other5',-1,2,2,1,NULL,'/');
/*!40000 ALTER TABLE `pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool_hc_headers`
--

DROP TABLE IF EXISTS `pool_hc_headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_hc_headers` (
  `pool_id` bigint(20) NOT NULL,
  `hc_headers` varchar(255) DEFAULT NULL,
  `hc_headers_key` varchar(255) NOT NULL,
  PRIMARY KEY (`pool_id`,`hc_headers_key`),
  CONSTRAINT `FKhl6i1wp155x5ovgxgp3kb17fr` FOREIGN KEY (`pool_id`) REFERENCES `pool` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_hc_headers`
--

LOCK TABLES `pool_hc_headers` WRITE;
/*!40000 ALTER TABLE `pool_hc_headers` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_hc_headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_project_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'2018-10-07 21:48:47','anonymousUser',NULL,'2018-10-07 21:48:47','anonymousUser','\0',NULL,'default');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_teams`
--

DROP TABLE IF EXISTS `project_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_teams` (
  `project_id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  PRIMARY KEY (`project_id`,`team_id`),
  KEY `FK_project_team_id` (`team_id`),
  CONSTRAINT `FK_project_team_id` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  CONSTRAINT `FK_team_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_teams`
--

LOCK TABLES `project_teams` WRITE;
/*!40000 ALTER TABLE `project_teams` DISABLE KEYS */;
INSERT INTO `project_teams` VALUES (1,1);
/*!40000 ALTER TABLE `project_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolegroup`
--

DROP TABLE IF EXISTS `rolegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolegroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rolegroup_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolegroup`
--

LOCK TABLES `rolegroup` WRITE;
/*!40000 ALTER TABLE `rolegroup` DISABLE KEYS */;
INSERT INTO `rolegroup` VALUES (1,'2018-10-07 19:55:18','system',NULL,'2018-10-07 19:55:18','system','\0',0,'SUPER_ADMIN'),(2,'2018-10-07 19:55:19','system',NULL,'2018-10-07 19:55:19','system','\0',0,'TEAM_DEFAULT'),(3,'2018-10-07 19:55:19','system',NULL,'2018-10-07 19:55:19','system','\0',0,'PROJECT_DEFAULT'),(4,'2018-10-07 19:55:19','system',NULL,'2018-10-07 19:55:19','system','\0',0,'USER_DEFAULT');
/*!40000 ALTER TABLE `rolegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolegroup_accounts`
--

DROP TABLE IF EXISTS `rolegroup_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolegroup_accounts` (
  `rolegroup_id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  PRIMARY KEY (`rolegroup_id`,`account_id`),
  KEY `FK_account_rolegroup_id` (`account_id`),
  CONSTRAINT `FK_account_rolegroup_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_rolegroup_account_id` FOREIGN KEY (`rolegroup_id`) REFERENCES `rolegroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolegroup_accounts`
--

LOCK TABLES `rolegroup_accounts` WRITE;
/*!40000 ALTER TABLE `rolegroup_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolegroup_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolegroup_projects`
--

DROP TABLE IF EXISTS `rolegroup_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolegroup_projects` (
  `rolegroup_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  PRIMARY KEY (`rolegroup_id`,`project_id`),
  KEY `FK_project_rolegroup_id` (`project_id`),
  CONSTRAINT `FK_project_rolegroup_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_rolegroup_project_id` FOREIGN KEY (`rolegroup_id`) REFERENCES `rolegroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolegroup_projects`
--

LOCK TABLES `rolegroup_projects` WRITE;
/*!40000 ALTER TABLE `rolegroup_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolegroup_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolegroup_roles`
--

DROP TABLE IF EXISTS `rolegroup_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolegroup_roles` (
  `rolegroup_id` bigint(20) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`rolegroup_id`,`role`),
  CONSTRAINT `FK_rolegroup_role_id` FOREIGN KEY (`rolegroup_id`) REFERENCES `rolegroup` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolegroup_roles`
--

LOCK TABLES `rolegroup_roles` WRITE;
/*!40000 ALTER TABLE `rolegroup_roles` DISABLE KEYS */;
INSERT INTO `rolegroup_roles` VALUES (1,'ACCOUNT_CREATE'),(1,'ACCOUNT_CREATE_ALL'),(1,'ACCOUNT_DELETE'),(1,'ACCOUNT_DELETE_ALL'),(1,'ACCOUNT_UPDATE'),(1,'ACCOUNT_UPDATE_ALL'),(1,'ACCOUNT_VIEW'),(1,'ACCOUNT_VIEW_ALL'),(1,'BALANCEPOLICY_CREATE'),(1,'BALANCEPOLICY_CREATE_ALL'),(1,'BALANCEPOLICY_DELETE'),(1,'BALANCEPOLICY_DELETE_ALL'),(1,'BALANCEPOLICY_UPDATE'),(1,'BALANCEPOLICY_UPDATE_ALL'),(1,'BALANCEPOLICY_VIEW'),(1,'BALANCEPOLICY_VIEW_ALL'),(1,'ENVIRONMENT_CREATE'),(1,'ENVIRONMENT_CREATE_ALL'),(1,'ENVIRONMENT_DELETE'),(1,'ENVIRONMENT_DELETE_ALL'),(1,'ENVIRONMENT_UPDATE'),(1,'ENVIRONMENT_UPDATE_ALL'),(1,'ENVIRONMENT_VIEW'),(1,'ENVIRONMENT_VIEW_ALL'),(1,'HEALTHCHECK_CREATE'),(1,'HEALTHCHECK_CREATE_ALL'),(1,'HEALTHCHECK_DELETE'),(1,'HEALTHCHECK_DELETE_ALL'),(1,'HEALTHCHECK_UPDATE'),(1,'HEALTHCHECK_UPDATE_ALL'),(1,'HEALTHCHECK_VIEW'),(1,'HEALTHCHECK_VIEW_ALL'),(1,'HEALTHSTATUS_CREATE'),(1,'HEALTHSTATUS_CREATE_ALL'),(1,'HEALTHSTATUS_DELETE'),(1,'HEALTHSTATUS_DELETE_ALL'),(1,'HEALTHSTATUS_UPDATE'),(1,'HEALTHSTATUS_UPDATE_ALL'),(1,'HEALTHSTATUS_VIEW'),(1,'HEALTHSTATUS_VIEW_ALL'),(1,'POOL_CREATE'),(1,'POOL_CREATE_ALL'),(1,'POOL_DELETE'),(1,'POOL_DELETE_ALL'),(1,'POOL_UPDATE'),(1,'POOL_UPDATE_ALL'),(1,'POOL_VIEW'),(1,'POOL_VIEW_ALL'),(1,'PROJECT_CREATE'),(1,'PROJECT_CREATE_ALL'),(1,'PROJECT_DELETE'),(1,'PROJECT_DELETE_ALL'),(1,'PROJECT_UPDATE'),(1,'PROJECT_UPDATE_ALL'),(1,'PROJECT_VIEW'),(1,'PROJECT_VIEW_ALL'),(1,'ROLEGROUP_CREATE'),(1,'ROLEGROUP_CREATE_ALL'),(1,'ROLEGROUP_DELETE'),(1,'ROLEGROUP_DELETE_ALL'),(1,'ROLEGROUP_UPDATE'),(1,'ROLEGROUP_UPDATE_ALL'),(1,'ROLEGROUP_VIEW'),(1,'ROLEGROUP_VIEW_ALL'),(1,'RULEORDERED_CREATE'),(1,'RULEORDERED_CREATE_ALL'),(1,'RULEORDERED_DELETE'),(1,'RULEORDERED_DELETE_ALL'),(1,'RULEORDERED_UPDATE'),(1,'RULEORDERED_UPDATE_ALL'),(1,'RULEORDERED_VIEW'),(1,'RULEORDERED_VIEW_ALL'),(1,'RULE_CREATE'),(1,'RULE_CREATE_ALL'),(1,'RULE_DELETE'),(1,'RULE_DELETE_ALL'),(1,'RULE_UPDATE'),(1,'RULE_UPDATE_ALL'),(1,'RULE_VIEW'),(1,'RULE_VIEW_ALL'),(1,'TARGET_CREATE'),(1,'TARGET_CREATE_ALL'),(1,'TARGET_DELETE'),(1,'TARGET_DELETE_ALL'),(1,'TARGET_UPDATE'),(1,'TARGET_UPDATE_ALL'),(1,'TARGET_VIEW'),(1,'TARGET_VIEW_ALL'),(1,'TEAM_CREATE'),(1,'TEAM_CREATE_ALL'),(1,'TEAM_DELETE'),(1,'TEAM_DELETE_ALL'),(1,'TEAM_UPDATE'),(1,'TEAM_UPDATE_ALL'),(1,'TEAM_VIEW'),(1,'TEAM_VIEW_ALL'),(1,'VIRTUALHOSTGROUP_CREATE'),(1,'VIRTUALHOSTGROUP_CREATE_ALL'),(1,'VIRTUALHOSTGROUP_DELETE'),(1,'VIRTUALHOSTGROUP_DELETE_ALL'),(1,'VIRTUALHOSTGROUP_UPDATE'),(1,'VIRTUALHOSTGROUP_UPDATE_ALL'),(1,'VIRTUALHOSTGROUP_VIEW'),(1,'VIRTUALHOSTGROUP_VIEW_ALL'),(1,'VIRTUALHOST_CREATE'),(1,'VIRTUALHOST_CREATE_ALL'),(1,'VIRTUALHOST_DELETE'),(1,'VIRTUALHOST_DELETE_ALL'),(1,'VIRTUALHOST_UPDATE'),(1,'VIRTUALHOST_UPDATE_ALL'),(1,'VIRTUALHOST_VIEW'),(1,'VIRTUALHOST_VIEW_ALL'),(2,'PROJECT_CREATE'),(2,'PROJECT_DELETE'),(2,'PROJECT_UPDATE'),(2,'PROJECT_VIEW'),(2,'TEAM_VIEW_ALL'),(3,'BALANCEPOLICY_VIEW'),(3,'ENVIRONMENT_VIEW'),(3,'HEALTHCHECK_VIEW'),(3,'HEALTHSTATUS_VIEW'),(3,'POOL_CREATE'),(3,'POOL_DELETE'),(3,'POOL_UPDATE'),(3,'POOL_VIEW'),(3,'RULEORDERED_CREATE'),(3,'RULEORDERED_DELETE'),(3,'RULEORDERED_UPDATE'),(3,'RULEORDERED_VIEW'),(3,'RULE_CREATE'),(3,'RULE_DELETE'),(3,'RULE_UPDATE'),(3,'RULE_VIEW'),(3,'TARGET_CREATE'),(3,'TARGET_DELETE'),(3,'TARGET_UPDATE'),(3,'TARGET_VIEW'),(3,'VIRTUALHOSTGROUP_CREATE'),(3,'VIRTUALHOSTGROUP_UPDATE'),(3,'VIRTUALHOSTGROUP_VIEW'),(3,'VIRTUALHOST_CREATE'),(3,'VIRTUALHOST_DELETE'),(3,'VIRTUALHOST_UPDATE'),(3,'VIRTUALHOST_VIEW'),(4,'ACCOUNT_CREATE'),(4,'ACCOUNT_UPDATE'),(4,'ACCOUNT_VIEW'),(4,'ACCOUNT_VIEW_ALL'),(4,'TEAM_CREATE'),(4,'TEAM_DELETE'),(4,'TEAM_UPDATE'),(4,'TEAM_VIEW');
/*!40000 ALTER TABLE `rolegroup_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolegroup_teams`
--

DROP TABLE IF EXISTS `rolegroup_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolegroup_teams` (
  `rolegroup_id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  PRIMARY KEY (`rolegroup_id`,`team_id`),
  KEY `FK_team_rolegroup_id` (`team_id`),
  CONSTRAINT `FK_rolegroup_team_id` FOREIGN KEY (`rolegroup_id`) REFERENCES `rolegroup` (`id`),
  CONSTRAINT `FK_team_rolegroup_id` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolegroup_teams`
--

LOCK TABLES `rolegroup_teams` WRITE;
/*!40000 ALTER TABLE `rolegroup_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolegroup_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `global` bit(1) DEFAULT NULL,
  `matching` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `farm_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rule_name` (`name`),
  KEY `FK_rule_project` (`project_id`),
  CONSTRAINT `FK_rule_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule_pools`
--

DROP TABLE IF EXISTS `rule_pools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_pools` (
  `rule_id` bigint(20) NOT NULL,
  `pool_id` bigint(20) NOT NULL,
  PRIMARY KEY (`rule_id`,`pool_id`),
  KEY `FK_rule_pool_id` (`pool_id`),
  CONSTRAINT `FK_pool_rule_id` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`id`),
  CONSTRAINT `FK_rule_pool_id` FOREIGN KEY (`pool_id`) REFERENCES `pool` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule_pools`
--

LOCK TABLES `rule_pools` WRITE;
/*!40000 ALTER TABLE `rule_pools` DISABLE KEYS */;
/*!40000 ALTER TABLE `rule_pools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruleordered`
--

DROP TABLE IF EXISTS `ruleordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruleordered` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `rule_order` int(11) NOT NULL,
  `environment_id` bigint(20) NOT NULL,
  `rule_ruleordered_id` bigint(20) NOT NULL,
  `virtualhostgroup_ruleordered_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_order__rule_id__virtualhostgroup_id__environment_id` (`rule_order`,`rule_ruleordered_id`,`virtualhostgroup_ruleordered_id`,`environment_id`),
  KEY `FK_ruleordered_environment` (`environment_id`),
  KEY `FK_rule_ruleordered` (`rule_ruleordered_id`),
  KEY `FK_virtualhostgroup_ruleordered` (`virtualhostgroup_ruleordered_id`),
  CONSTRAINT `FK_rule_ruleordered` FOREIGN KEY (`rule_ruleordered_id`) REFERENCES `rule` (`id`),
  CONSTRAINT `FK_ruleordered_environment` FOREIGN KEY (`environment_id`) REFERENCES `environment` (`id`),
  CONSTRAINT `FK_virtualhostgroup_ruleordered` FOREIGN KEY (`virtualhostgroup_ruleordered_id`) REFERENCES `virtualhostgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruleordered`
--

LOCK TABLES `ruleordered` WRITE;
/*!40000 ALTER TABLE `ruleordered` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruleordered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target`
--

DROP TABLE IF EXISTS `target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `pool_id` bigint(20) NOT NULL,
  `farm_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_target_name_pool_id` (`name`,`pool_id`),
  KEY `FK_target_pool` (`pool_id`),
  CONSTRAINT `FK_target_pool` FOREIGN KEY (`pool_id`) REFERENCES `pool` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target`
--

LOCK TABLES `target` WRITE;
/*!40000 ALTER TABLE `target` DISABLE KEYS */;
INSERT INTO `target` VALUES (1,'2018-10-07 21:59:59','anonymousUser',NULL,'2018-10-07 21:59:59','anonymousUser','\0',NULL,'http://127.0.0.1',1,NULL),(2,'2018-10-07 22:00:06','anonymousUser',NULL,'2018-10-07 22:00:06','anonymousUser','\0',NULL,'http://127.0.0.2',1,NULL),(3,'2018-10-07 22:00:11','anonymousUser',NULL,'2018-10-07 22:00:11','anonymousUser','\0',NULL,'http://127.0.0.3',1,NULL),(4,'2018-10-07 22:00:15','anonymousUser',NULL,'2018-10-07 22:00:15','anonymousUser','\0',NULL,'http://127.0.0.4',1,NULL),(5,'2018-10-07 22:00:19','anonymousUser',NULL,'2018-10-07 22:00:19','anonymousUser','\0',NULL,'http://127.0.0.5',1,NULL),(6,'2018-10-07 22:00:25','anonymousUser',NULL,'2018-10-07 22:00:25','anonymousUser','\0',NULL,'http://127.0.0.6',1,NULL),(7,'2018-10-07 22:00:31','anonymousUser',NULL,'2018-10-07 22:00:31','anonymousUser','\0',NULL,'http://127.0.0.7',1,NULL),(8,'2018-10-07 22:00:37','anonymousUser',NULL,'2018-10-07 22:00:37','anonymousUser','\0',NULL,'http://127.0.0.8',1,NULL),(9,'2018-10-07 22:00:50','anonymousUser',NULL,'2018-10-07 22:00:50','anonymousUser','\0',NULL,'http://127.0.0.9',1,NULL),(10,'2018-10-07 22:01:11','anonymousUser',NULL,'2018-10-07 22:01:11','anonymousUser','\0',NULL,'http://127.0.0.10',1,NULL);
/*!40000 ALTER TABLE `target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_team_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'2018-10-07 21:46:46','anonymousUser',NULL,'2018-10-07 21:46:46','anonymousUser','\0',NULL,'default'),(2,'2018-10-07 21:47:01','anonymousUser',NULL,'2018-10-07 21:47:01','anonymousUser','\0',NULL,'other1'),(3,'2018-10-07 21:47:07','anonymousUser',NULL,'2018-10-07 21:47:07','anonymousUser','\0',NULL,'other2'),(4,'2018-10-07 21:47:11','anonymousUser',NULL,'2018-10-07 21:47:11','anonymousUser','\0',NULL,'other3'),(5,'2018-10-07 21:47:16','anonymousUser',NULL,'2018-10-07 21:47:16','anonymousUser','\0',NULL,'other4'),(6,'2018-10-07 21:47:20','anonymousUser',NULL,'2018-10-07 21:47:20','anonymousUser','\0',NULL,'other5'),(7,'2018-10-07 21:47:24','anonymousUser',NULL,'2018-10-07 21:47:24','anonymousUser','\0',NULL,'other6'),(8,'2018-10-07 21:47:29','anonymousUser',NULL,'2018-10-07 21:47:29','anonymousUser','\0',NULL,'other7'),(9,'2018-10-07 21:47:34','anonymousUser',NULL,'2018-10-07 21:47:34','anonymousUser','\0',NULL,'other8'),(10,'2018-10-07 21:47:38','anonymousUser',NULL,'2018-10-07 21:47:38','anonymousUser','\0',NULL,'other9');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_accounts`
--

DROP TABLE IF EXISTS `team_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_accounts` (
  `team_id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  PRIMARY KEY (`team_id`,`account_id`),
  KEY `FK_account_id` (`account_id`),
  CONSTRAINT `FK_account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_team_id` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_accounts`
--

LOCK TABLES `team_accounts` WRITE;
/*!40000 ALTER TABLE `team_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtual_host_aliases`
--

DROP TABLE IF EXISTS `virtual_host_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtual_host_aliases` (
  `virtual_host` bigint(20) NOT NULL,
  `aliases` varchar(255) DEFAULT NULL,
  KEY `FK_virtual_host_aliases_virtualhost_id` (`virtual_host`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtual_host_aliases`
--

LOCK TABLES `virtual_host_aliases` WRITE;
/*!40000 ALTER TABLE `virtual_host_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtual_host_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualhost`
--

DROP TABLE IF EXISTS `virtualhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualhost` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `virtualhostgroup_id` bigint(20) NOT NULL,
  `virtualhost_id_aliases` bigint(20) DEFAULT NULL,
  `rule_default_id` bigint(20) DEFAULT NULL,
  `farm_id` bigint(20) DEFAULT NULL,
  `migrated` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_virtualhost_name` (`name`),
  KEY `FK_virtualhost_project` (`project_id`),
  KEY `FK_virtualhost_virtualhostgroup` (`virtualhostgroup_id`),
  CONSTRAINT `FK_virtualhost_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `FK_virtualhost_virtualhostgroup` FOREIGN KEY (`virtualhostgroup_id`) REFERENCES `virtualhostgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualhost`
--

LOCK TABLES `virtualhost` WRITE;
/*!40000 ALTER TABLE `virtualhost` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtualhost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualhost_environments`
--

DROP TABLE IF EXISTS `virtualhost_environments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualhost_environments` (
  `virtualhost_id` bigint(20) NOT NULL,
  `environment_id` bigint(20) NOT NULL,
  PRIMARY KEY (`virtualhost_id`,`environment_id`),
  KEY `FK_virtualhost_environment_id` (`environment_id`),
  CONSTRAINT `FK_environment_virtualhost_id` FOREIGN KEY (`virtualhost_id`) REFERENCES `virtualhost` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_virtualhost_environment_id` FOREIGN KEY (`environment_id`) REFERENCES `environment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualhost_environments`
--

LOCK TABLES `virtualhost_environments` WRITE;
/*!40000 ALTER TABLE `virtualhost_environments` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtualhost_environments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualhostgroup`
--

DROP TABLE IF EXISTS `virtualhostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualhostgroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_modified_at` datetime NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `quarantine` bit(1) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualhostgroup`
--

LOCK TABLES `virtualhostgroup` WRITE;
/*!40000 ALTER TABLE `virtualhostgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtualhostgroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-08  9:51:07
