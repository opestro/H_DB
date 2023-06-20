-- MariaDB dump 10.19  Distrib 10.7.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: appwrite
-- ------------------------------------------------------
-- Server version	10.7.8-MariaDB-1:10.7.8+maria~ubu2004

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
-- Table structure for table `_console__metadata`
--

DROP TABLE IF EXISTS `_console__metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console__metadata` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(512) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console__metadata`
--

LOCK TABLES `_console__metadata` WRITE;
/*!40000 ALTER TABLE `_console__metadata` DISABLE KEYS */;
INSERT INTO `_console__metadata` VALUES
(1,'audit','2023-06-19 22:31:16.359','2023-06-19 22:31:16.359','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','audit','[{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"event\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":65534,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"location\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"data\",\"type\":\"string\",\"size\":16777216,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"]}]','[{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index4\",\"type\":\"key\",\"attributes\":[\"userId\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index5\",\"type\":\"key\",\"attributes\":[\"resource\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index-time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(2,'abuse','2023-06-19 22:31:16.384','2023-06-19 22:31:16.384','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','abuse','[{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"count\",\"type\":\"integer\",\"size\":11,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[]}]','[{\"$id\":\"unique1\",\"type\":\"unique\",\"attributes\":[\"key\",\"time\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[]}]'),
(3,'databases','2023-06-19 22:31:16.414','2023-06-19 22:31:16.414','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','databases','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]}]'),
(4,'attributes','2023-06-19 22:31:16.438','2023-06-19 22:31:16.438','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','attributes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"required\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"default\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"casting\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signed\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"array\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"format\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"formatOptions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"range\",\"enum\"],\"default\":{},\"format\":\"\"},{\"$id\":\"filters\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(5,'indexes','2023-06-19 22:31:16.457','2023-06-19 22:31:16.457','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','indexes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"collectionId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"attributes\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"lengths\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"orders\",\"type\":\"string\",\"size\":4,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]'),
(6,'projects','2023-06-19 22:31:16.486','2023-06-19 22:31:16.486','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','projects','[{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"region\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"description\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"logo\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"version\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCountry\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalState\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCity\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalAddress\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalTaxId\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"services\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"auths\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"authProviders\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":[],\"format\":\"\"},{\"$id\":\"platforms\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryPlatforms\"],\"default\":null,\"format\":\"\"},{\"$id\":\"webhooks\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryWebhooks\"],\"default\":null,\"format\":\"\"},{\"$id\":\"keys\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryKeys\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domains\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryDomains\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(7,'platforms','2023-06-19 22:31:16.505','2023-06-19 22:31:16.505','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','platforms','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"store\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"hostname\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(8,'domains','2023-06-19 22:31:16.527','2023-06-19 22:31:16.527','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','domains','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"tld\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"registerable\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"verification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"certificateId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(9,'keys','2023-06-19 22:31:16.551','2023-06-19 22:31:16.551','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','keys','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scopes\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sdks\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]}]'),
(10,'webhooks','2023-06-19 22:31:16.574','2023-06-19 22:31:16.574','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','webhooks','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpUser\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpPass\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"security\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signatureKey\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(11,'users','2023-06-19 22:31:16.603','2023-06-19 22:31:16.603','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','users','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"email\",\"type\":\"string\",\"size\":320,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phone\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"password\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"hash\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"argon2\",\"format\":\"\"},{\"$id\":\"hashOptions\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"format\":\"\"},{\"$id\":\"passwordUpdate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"prefs\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{},\"format\":\"\"},{\"$id\":\"registration\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"emailVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phoneVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"reset\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sessions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQuerySessions\"],\"default\":null,\"format\":\"\"},{\"$id\":\"tokens\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryTokens\"],\"default\":null,\"format\":\"\"},{\"$id\":\"memberships\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryMemberships\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_email\",\"type\":\"unique\",\"attributes\":[\"email\"],\"lengths\":[320],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phone\",\"type\":\"unique\",\"attributes\":[\"phone\"],\"lengths\":[16],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_passwordUpdate\",\"type\":\"key\",\"attributes\":[\"passwordUpdate\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_registration\",\"type\":\"key\",\"attributes\":[\"registration\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_emailVerification\",\"type\":\"key\",\"attributes\":[\"emailVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phoneVerification\",\"type\":\"key\",\"attributes\":[\"phoneVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(12,'tokens','2023-06-19 22:31:16.622','2023-06-19 22:31:16.622','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','tokens','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(13,'sessions','2023-06-19 22:31:16.641','2023-06-19 22:31:16.641','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','sessions','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"provider\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerUid\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessTokenExpiry\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerRefreshToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"countryCode\",\"type\":\"string\",\"size\":2,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientType\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngine\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngineVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceBrand\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceModel\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_provider_providerUid\",\"type\":\"key\",\"attributes\":[\"provider\",\"providerUid\"],\"lengths\":[100,100],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(14,'teams','2023-06-19 22:31:16.669','2023-06-19 22:31:16.669','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','teams','[{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"total\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_total\",\"type\":\"key\",\"attributes\":[\"total\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(15,'memberships','2023-06-19 22:31:16.697','2023-06-19 22:31:16.697','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','memberships','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"roles\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"invited\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"joined\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"confirm\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_unique\",\"type\":\"unique\",\"attributes\":[\"teamInternalId\",\"userInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_teamId\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_invited\",\"type\":\"key\",\"attributes\":[\"invited\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_joined\",\"type\":\"key\",\"attributes\":[\"joined\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_confirm\",\"type\":\"key\",\"attributes\":[\"confirm\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(16,'functions','2023-06-19 22:31:16.727','2023-06-19 22:31:16.727','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','functions','[{\"$id\":\"execute\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deployment\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"vars\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryVariables\"],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"schedule\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleUpdatedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"schedulePrevious\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleNext\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"timeout\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_runtime\",\"type\":\"key\",\"attributes\":[\"runtime\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deployment\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedule\",\"type\":\"key\",\"attributes\":[\"schedule\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_scheduleNext\",\"type\":\"key\",\"attributes\":[\"scheduleNext\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_schedulePrevious\",\"type\":\"key\",\"attributes\":[\"schedulePrevious\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_timeout\",\"type\":\"key\",\"attributes\":[\"timeout\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(17,'deployments','2023-06-19 22:31:16.763','2023-06-19 22:31:16.763','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','deployments','[{\"$id\":\"resourceId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"buildId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"entrypoint\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"size\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"activate\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":false,\"format\":\"\"}]','[{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resourceId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resource_type\",\"type\":\"key\",\"attributes\":[\"resourceType\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_entrypoint\",\"type\":\"key\",\"attributes\":[\"entrypoint\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_size\",\"type\":\"key\",\"attributes\":[\"size\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_buildId\",\"type\":\"key\",\"attributes\":[\"buildId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_activate\",\"type\":\"key\",\"attributes\":[\"activate\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(18,'builds','2023-06-19 22:31:16.780','2023-06-19 22:31:16.780','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','builds','[{\"$id\":\"startTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"endTime\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"runtime\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"processing\",\"format\":\"\"},{\"$id\":\"outputPath\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"sourceType\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"local\",\"format\":\"\"},{\"$id\":\"source\",\"type\":\"string\",\"size\":2048,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"}]','[{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deploymentId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(19,'executions','2023-06-19 22:31:16.806','2023-06-19 22:31:16.806','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','executions','[{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deploymentId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"trigger\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"response\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stderr\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"stdout\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"statusCode\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"duration\",\"type\":\"double\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_trigger\",\"type\":\"key\",\"attributes\":[\"trigger\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_statusCode\",\"type\":\"key\",\"attributes\":[\"statusCode\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_duration\",\"type\":\"key\",\"attributes\":[\"duration\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(20,'certificates','2023-06-19 22:31:16.825','2023-06-19 22:31:16.825','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','certificates','[{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"issueDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"renewDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"attempts\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"log\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_domain\",\"type\":\"key\",\"attributes\":[\"domain\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]'),
(21,'buckets','2023-06-19 22:31:16.875','2023-06-19 22:31:16.875','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','buckets','[{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"fileSecurity\",\"type\":\"boolean\",\"size\":1,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"maximumFileSize\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"allowedFileExtensions\",\"type\":\"string\",\"size\":64,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"compression\",\"type\":\"string\",\"size\":10,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"encryption\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"antivirus\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_fileSecurity\",\"type\":\"key\",\"attributes\":[\"fileSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_maximumFileSize\",\"type\":\"key\",\"attributes\":[\"maximumFileSize\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_encryption\",\"type\":\"key\",\"attributes\":[\"encryption\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_antivirus\",\"type\":\"key\",\"attributes\":[\"antivirus\"],\"lengths\":[],\"orders\":[\"ASC\"]}]'),
(22,'stats','2023-06-19 22:31:16.895','2023-06-19 22:31:16.895','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','stats','[{\"$id\":\"metric\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"region\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"period\",\"type\":\"string\",\"size\":4,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":1,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"}]','[{\"$id\":\"_key_time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]},{\"$id\":\"_key_period_time\",\"type\":\"key\",\"attributes\":[\"period\",\"time\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_metric_period_time\",\"type\":\"key\",\"attributes\":[\"metric\",\"period\",\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(23,'realtime','2023-06-19 22:31:16.921','2023-06-19 22:31:16.921','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','realtime','[{\"$id\":\"container\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"timestamp\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":16384,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_timestamp\",\"type\":\"key\",\"attributes\":[\"timestamp\"],\"lengths\":[],\"orders\":[\"DESC\"]}]'),
(24,'cache','2023-06-19 22:31:16.939','2023-06-19 22:31:16.939','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','cache','[{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resource\"],\"lengths\":[],\"orders\":[]}]'),
(25,'variables','2023-06-19 22:31:16.964','2023-06-19 22:31:16.964','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','variables','[{\"$id\":\"functionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"functionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":8192,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_uniqueKey\",\"type\":\"unique\",\"attributes\":[\"functionInternalId\",\"key\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_key\",\"type\":\"key\",\"attributes\":[\"key\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]'),
(26,'bucket_1','2023-06-19 22:31:17.005','2023-06-19 22:31:17.005','[\"read(\\\"any\\\")\",\"create(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','bucket_1','[{\"$id\":\"bucketId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"mimeType\",\"type\":\"string\",\"size\":127,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeOriginal\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeActual\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"algorithm\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"comment\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLVersion\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLCipher\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLTag\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLIV\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_bucket\",\"type\":\"key\",\"attributes\":[\"bucketId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_signature\",\"type\":\"key\",\"attributes\":[\"signature\"],\"lengths\":[768],\"orders\":[\"ASC\"]},{\"$id\":\"_key_mimeType\",\"type\":\"key\",\"attributes\":[\"mimeType\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_sizeOriginal\",\"type\":\"key\",\"attributes\":[\"sizeOriginal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksTotal\",\"type\":\"key\",\"attributes\":[\"chunksTotal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksUploaded\",\"type\":\"key\",\"attributes\":[\"chunksUploaded\"],\"lengths\":[],\"orders\":[\"ASC\"]}]');
/*!40000 ALTER TABLE `_console__metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console__metadata_perms`
--

DROP TABLE IF EXISTS `_console__metadata_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console__metadata_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console__metadata_perms`
--

LOCK TABLES `_console__metadata_perms` WRITE;
/*!40000 ALTER TABLE `_console__metadata_perms` DISABLE KEYS */;
INSERT INTO `_console__metadata_perms` VALUES
(5,'create','any','abuse'),
(8,'delete','any','abuse'),
(6,'read','any','abuse'),
(7,'update','any','abuse'),
(13,'create','any','attributes'),
(16,'delete','any','attributes'),
(14,'read','any','attributes'),
(15,'update','any','attributes'),
(1,'create','any','audit'),
(4,'delete','any','audit'),
(2,'read','any','audit'),
(3,'update','any','audit'),
(81,'create','any','buckets'),
(84,'delete','any','buckets'),
(82,'read','any','buckets'),
(83,'update','any','buckets'),
(101,'create','any','bucket_1'),
(104,'delete','any','bucket_1'),
(102,'read','any','bucket_1'),
(103,'update','any','bucket_1'),
(69,'create','any','builds'),
(72,'delete','any','builds'),
(70,'read','any','builds'),
(71,'update','any','builds'),
(93,'create','any','cache'),
(96,'delete','any','cache'),
(94,'read','any','cache'),
(95,'update','any','cache'),
(77,'create','any','certificates'),
(80,'delete','any','certificates'),
(78,'read','any','certificates'),
(79,'update','any','certificates'),
(9,'create','any','databases'),
(12,'delete','any','databases'),
(10,'read','any','databases'),
(11,'update','any','databases'),
(65,'create','any','deployments'),
(68,'delete','any','deployments'),
(66,'read','any','deployments'),
(67,'update','any','deployments'),
(29,'create','any','domains'),
(32,'delete','any','domains'),
(30,'read','any','domains'),
(31,'update','any','domains'),
(73,'create','any','executions'),
(76,'delete','any','executions'),
(74,'read','any','executions'),
(75,'update','any','executions'),
(61,'create','any','functions'),
(64,'delete','any','functions'),
(62,'read','any','functions'),
(63,'update','any','functions'),
(17,'create','any','indexes'),
(20,'delete','any','indexes'),
(18,'read','any','indexes'),
(19,'update','any','indexes'),
(33,'create','any','keys'),
(36,'delete','any','keys'),
(34,'read','any','keys'),
(35,'update','any','keys'),
(57,'create','any','memberships'),
(60,'delete','any','memberships'),
(58,'read','any','memberships'),
(59,'update','any','memberships'),
(25,'create','any','platforms'),
(28,'delete','any','platforms'),
(26,'read','any','platforms'),
(27,'update','any','platforms'),
(21,'create','any','projects'),
(24,'delete','any','projects'),
(22,'read','any','projects'),
(23,'update','any','projects'),
(89,'create','any','realtime'),
(92,'delete','any','realtime'),
(90,'read','any','realtime'),
(91,'update','any','realtime'),
(49,'create','any','sessions'),
(52,'delete','any','sessions'),
(50,'read','any','sessions'),
(51,'update','any','sessions'),
(85,'create','any','stats'),
(88,'delete','any','stats'),
(86,'read','any','stats'),
(87,'update','any','stats'),
(53,'create','any','teams'),
(56,'delete','any','teams'),
(54,'read','any','teams'),
(55,'update','any','teams'),
(45,'create','any','tokens'),
(48,'delete','any','tokens'),
(46,'read','any','tokens'),
(47,'update','any','tokens'),
(41,'create','any','users'),
(44,'delete','any','users'),
(42,'read','any','users'),
(43,'update','any','users'),
(97,'create','any','variables'),
(100,'delete','any','variables'),
(98,'read','any','variables'),
(99,'update','any','variables'),
(37,'create','any','webhooks'),
(40,'delete','any','webhooks'),
(38,'read','any','webhooks'),
(39,'update','any','webhooks');
/*!40000 ALTER TABLE `_console__metadata_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_abuse`
--

DROP TABLE IF EXISTS `_console_abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_abuse` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `unique1` (`key`,`time`),
  KEY `index2` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_abuse`
--

LOCK TABLES `_console_abuse` WRITE;
/*!40000 ALTER TABLE `_console_abuse` DISABLE KEYS */;
INSERT INTO `_console_abuse` VALUES
(1,'6490d7f04f0a27011e59','2023-06-19 22:34:24.323','2023-06-19 22:34:24.323','[]','url:51.91.97.19/v1/account,ip:197.202.176.137','2023-06-19 22:00:00.000',1),
(2,'6490d7f160afbc7e5f83','2023-06-19 22:34:25.396','2023-06-19 22:34:25.396','[]','url:51.91.97.19/v1/account/sessions/email,email:ramzi@swellty.ovh','2023-06-19 22:00:00.000',1);
/*!40000 ALTER TABLE `_console_abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_abuse_perms`
--

DROP TABLE IF EXISTS `_console_abuse_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_abuse_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_abuse_perms`
--

LOCK TABLES `_console_abuse_perms` WRITE;
/*!40000 ALTER TABLE `_console_abuse_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_abuse_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_attributes`
--

DROP TABLE IF EXISTS `_console_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_attributes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `signed` tinyint(1) DEFAULT NULL,
  `array` tinyint(1) DEFAULT NULL,
  `format` varchar(64) DEFAULT NULL,
  `formatOptions` text DEFAULT NULL,
  `filters` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_attributes`
--

LOCK TABLES `_console_attributes` WRITE;
/*!40000 ALTER TABLE `_console_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_attributes_perms`
--

DROP TABLE IF EXISTS `_console_attributes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_attributes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_attributes_perms`
--

LOCK TABLES `_console_attributes_perms` WRITE;
/*!40000 ALTER TABLE `_console_attributes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_attributes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_audit`
--

DROP TABLE IF EXISTS `_console_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_audit` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `index2` (`event`),
  KEY `index4` (`userId`,`event`),
  KEY `index5` (`resource`,`event`),
  KEY `index-time` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_audit`
--


LOCK TABLES `_console_audit` WRITE;
/*!40000 ALTER TABLE `_console_audit` DISABLE KEYS */;
INSERT INTO `_console_audit` VALUES
(1,'6490d7f213c5db616c3f','2023-06-19 22:34:26.080','2023-06-19 22:34:26.080','[]','6490d7f0524d1d26ae23','user.create','user/6490d7f0524d1d26ae23','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','197.202.176.137','','2023-06-19 22:34:26.076','{\"userName\":\"ramzi\",\"userEmail\":\"ramzi@swellty.ovh\",\"mode\":\"default\",\"data\":{\"$id\":\"6490d7f0524d1d26ae23\",\"$createdAt\":\"2023-06-19T22:34:25.160+00:00\",\"$updatedAt\":\"2023-06-19T22:34:25.160+00:00\",\"name\":\"ramzi\",\"registration\":\"2023-06-19T22:34:25.160+00:00\",\"status\":true,\"passwordUpdate\":\"2023-06-19T22:34:25.160+00:00\",\"email\":\"ramzi@swellty.ovh\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"prefs\":[]}}'),
(2,'6490d7f417522ff9b17e','2023-06-19 22:34:28.095','2023-06-19 22:34:28.095','[]','6490d7f0524d1d26ae23','session.create','user/6490d7f0524d1d26ae23','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','197.202.176.137','','2023-06-19 22:34:28.095','{\"userName\":\"ramzi\",\"userEmail\":\"ramzi@swellty.ovh\",\"mode\":\"default\",\"data\":{\"$id\":\"6490d7f2341a81a894ae\",\"$createdAt\":\"2023-06-19T22:34:27.246+00:00\",\"userId\":\"6490d7f0524d1d26ae23\",\"expire\":\"2024-06-18 22:34:26.213\",\"provider\":\"email\",\"providerUid\":\"ramzi@swellty.ovh\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"197.202.176.137\",\"osCode\":\"WIN\",\"osName\":\"Windows\",\"osVersion\":\"10\",\"clientType\":\"browser\",\"clientCode\":\"CH\",\"clientName\":\"Chrome\",\"clientVersion\":\"114.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"114.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"\",\"deviceModel\":\"\",\"countryCode\":\"dz\",\"countryName\":\"Algeria\",\"current\":true}}');
/*!40000 ALTER TABLE `_console_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_audit_perms`
--

DROP TABLE IF EXISTS `_console_audit_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_audit_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_audit_perms`
--

LOCK TABLES `_console_audit_perms` WRITE;
/*!40000 ALTER TABLE `_console_audit_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_audit_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_bucket_1`
--

DROP TABLE IF EXISTS `_console_bucket_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_bucket_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `bucketId` varchar(255) DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `signature` varchar(2048) DEFAULT NULL,
  `mimeType` varchar(127) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `sizeOriginal` bigint(20) unsigned DEFAULT NULL,
  `sizeActual` bigint(20) unsigned DEFAULT NULL,
  `algorithm` varchar(255) DEFAULT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `openSSLVersion` varchar(64) DEFAULT NULL,
  `openSSLCipher` varchar(64) DEFAULT NULL,
  `openSSLTag` varchar(2048) DEFAULT NULL,
  `openSSLIV` varchar(2048) DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_bucket` (`bucketId`),
  KEY `_key_name` (`name`(768)),
  KEY `_key_signature` (`signature`(768)),
  KEY `_key_mimeType` (`mimeType`),
  KEY `_key_sizeOriginal` (`sizeOriginal`),
  KEY `_key_chunksTotal` (`chunksTotal`),
  KEY `_key_chunksUploaded` (`chunksUploaded`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_bucket_1`
--

LOCK TABLES `_console_bucket_1` WRITE;
/*!40000 ALTER TABLE `_console_bucket_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_bucket_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_bucket_1_perms`
--

DROP TABLE IF EXISTS `_console_bucket_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_bucket_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_bucket_1_perms`
--

LOCK TABLES `_console_bucket_1_perms` WRITE;
/*!40000 ALTER TABLE `_console_bucket_1_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_bucket_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_buckets`
--

DROP TABLE IF EXISTS `_console_buckets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_buckets` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `fileSecurity` tinyint(1) DEFAULT NULL,
  `maximumFileSize` bigint(20) unsigned DEFAULT NULL,
  `allowedFileExtensions` longtext DEFAULT NULL,
  `compression` varchar(10) DEFAULT NULL,
  `encryption` tinyint(1) DEFAULT NULL,
  `antivirus` tinyint(1) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_name` (`name`),
  KEY `_key_fileSecurity` (`fileSecurity`),
  KEY `_key_maximumFileSize` (`maximumFileSize`),
  KEY `_key_encryption` (`encryption`),
  KEY `_key_antivirus` (`antivirus`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_buckets`
--

LOCK TABLES `_console_buckets` WRITE;
/*!40000 ALTER TABLE `_console_buckets` DISABLE KEYS */;
INSERT INTO `_console_buckets` VALUES
(1,'default','2023-06-19 22:31:16.967','2023-06-19 22:31:16.967','[\"create(\\\"any\\\")\",\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]',1,'Default',1,30000000,'[]','gzip',1,1,'buckets Default');
/*!40000 ALTER TABLE `_console_buckets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_buckets_perms`
--

DROP TABLE IF EXISTS `_console_buckets_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_buckets_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_buckets_perms`
--

LOCK TABLES `_console_buckets_perms` WRITE;
/*!40000 ALTER TABLE `_console_buckets_perms` DISABLE KEYS */;
INSERT INTO `_console_buckets_perms` VALUES
(1,'create','any','default'),
(4,'delete','any','default'),
(2,'read','any','default'),
(3,'update','any','default');
/*!40000 ALTER TABLE `_console_buckets_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_builds`
--

DROP TABLE IF EXISTS `_console_builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_builds` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `startTime` datetime(3) DEFAULT NULL,
  `endTime` datetime(3) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `outputPath` varchar(2048) DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `sourceType` varchar(2048) DEFAULT NULL,
  `source` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_deployment` (`deploymentId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_builds`
--

LOCK TABLES `_console_builds` WRITE;
/*!40000 ALTER TABLE `_console_builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_builds_perms`
--

DROP TABLE IF EXISTS `_console_builds_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_builds_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_builds_perms`
--

LOCK TABLES `_console_builds_perms` WRITE;
/*!40000 ALTER TABLE `_console_builds_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_builds_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_cache`
--

DROP TABLE IF EXISTS `_console_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_cache` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_key_resource` (`resource`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_cache`
--

LOCK TABLES `_console_cache` WRITE;
/*!40000 ALTER TABLE `_console_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_cache_perms`
--

DROP TABLE IF EXISTS `_console_cache_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_cache_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_cache_perms`
--

LOCK TABLES `_console_cache_perms` WRITE;
/*!40000 ALTER TABLE `_console_cache_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_cache_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_certificates`
--

DROP TABLE IF EXISTS `_console_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_certificates` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `issueDate` datetime(3) DEFAULT NULL,
  `renewDate` datetime(3) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `log` text DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_domain` (`domain`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_certificates`
--

LOCK TABLES `_console_certificates` WRITE;
/*!40000 ALTER TABLE `_console_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_certificates_perms`
--

DROP TABLE IF EXISTS `_console_certificates_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_certificates_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_certificates_perms`
--

LOCK TABLES `_console_certificates_perms` WRITE;
/*!40000 ALTER TABLE `_console_certificates_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_certificates_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_databases`
--

DROP TABLE IF EXISTS `_console_databases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_databases` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_databases`
--

LOCK TABLES `_console_databases` WRITE;
/*!40000 ALTER TABLE `_console_databases` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_databases_perms`
--

DROP TABLE IF EXISTS `_console_databases_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_databases_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_databases_perms`
--

LOCK TABLES `_console_databases_perms` WRITE;
/*!40000 ALTER TABLE `_console_databases_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_databases_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_deployments`
--

DROP TABLE IF EXISTS `_console_deployments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_deployments` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `buildId` varchar(255) DEFAULT NULL,
  `entrypoint` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_resource` (`resourceId`),
  KEY `_key_resource_type` (`resourceType`),
  KEY `_key_entrypoint` (`entrypoint`(768)),
  KEY `_key_size` (`size`),
  KEY `_key_buildId` (`buildId`),
  KEY `_key_activate` (`activate`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_deployments`
--

LOCK TABLES `_console_deployments` WRITE;
/*!40000 ALTER TABLE `_console_deployments` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_deployments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_deployments_perms`
--

DROP TABLE IF EXISTS `_console_deployments_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_deployments_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_deployments_perms`
--

LOCK TABLES `_console_deployments_perms` WRITE;
/*!40000 ALTER TABLE `_console_deployments_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_deployments_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_domains`
--

DROP TABLE IF EXISTS `_console_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_domains` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `registerable` varchar(255) DEFAULT NULL,
  `verification` tinyint(1) DEFAULT NULL,
  `certificateId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_domains`
--

LOCK TABLES `_console_domains` WRITE;
/*!40000 ALTER TABLE `_console_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_domains_perms`
--

DROP TABLE IF EXISTS `_console_domains_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_domains_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_domains_perms`
--

LOCK TABLES `_console_domains_perms` WRITE;
/*!40000 ALTER TABLE `_console_domains_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_domains_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_executions`
--

DROP TABLE IF EXISTS `_console_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_executions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `trigger` varchar(128) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `response` mediumtext DEFAULT NULL,
  `stderr` mediumtext DEFAULT NULL,
  `stdout` mediumtext DEFAULT NULL,
  `statusCode` int(11) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_function` (`functionId`),
  KEY `_key_trigger` (`trigger`),
  KEY `_key_status` (`status`),
  KEY `_key_statusCode` (`statusCode`),
  KEY `_key_duration` (`duration`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_executions`
--

LOCK TABLES `_console_executions` WRITE;
/*!40000 ALTER TABLE `_console_executions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_executions_perms`
--

DROP TABLE IF EXISTS `_console_executions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_executions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_executions_perms`
--

LOCK TABLES `_console_executions_perms` WRITE;
/*!40000 ALTER TABLE `_console_executions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_executions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_functions`
--

DROP TABLE IF EXISTS `_console_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_functions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `execute` longtext DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `deployment` varchar(255) DEFAULT NULL,
  `vars` text DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `schedule` varchar(128) DEFAULT NULL,
  `scheduleUpdatedAt` datetime(3) DEFAULT NULL,
  `schedulePrevious` datetime(3) DEFAULT NULL,
  `scheduleNext` datetime(3) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`(768)),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_runtime` (`runtime`(768)),
  KEY `_key_deployment` (`deployment`),
  KEY `_key_schedule` (`schedule`),
  KEY `_key_scheduleNext` (`scheduleNext`),
  KEY `_key_schedulePrevious` (`schedulePrevious`),
  KEY `_key_timeout` (`timeout`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_functions`
--

LOCK TABLES `_console_functions` WRITE;
/*!40000 ALTER TABLE `_console_functions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_functions_perms`
--

DROP TABLE IF EXISTS `_console_functions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_functions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_functions_perms`
--

LOCK TABLES `_console_functions_perms` WRITE;
/*!40000 ALTER TABLE `_console_functions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_functions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_indexes`
--

DROP TABLE IF EXISTS `_console_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_indexes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `attributes` longtext DEFAULT NULL,
  `lengths` longtext DEFAULT NULL,
  `orders` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_indexes`
--

LOCK TABLES `_console_indexes` WRITE;
/*!40000 ALTER TABLE `_console_indexes` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_indexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_indexes_perms`
--

DROP TABLE IF EXISTS `_console_indexes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_indexes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_indexes_perms`
--

LOCK TABLES `_console_indexes_perms` WRITE;
/*!40000 ALTER TABLE `_console_indexes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_indexes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_keys`
--

DROP TABLE IF EXISTS `_console_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_keys` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` longtext DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `sdks` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_keys`
--

LOCK TABLES `_console_keys` WRITE;
/*!40000 ALTER TABLE `_console_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_keys_perms`
--

DROP TABLE IF EXISTS `_console_keys_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_keys_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_keys_perms`
--

LOCK TABLES `_console_keys_perms` WRITE;
/*!40000 ALTER TABLE `_console_keys_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_keys_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_memberships`
--

DROP TABLE IF EXISTS `_console_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_memberships` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `roles` longtext DEFAULT NULL,
  `invited` datetime(3) DEFAULT NULL,
  `joined` datetime(3) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `secret` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_unique` (`teamInternalId`,`userInternalId`),
  KEY `_key_user` (`userInternalId`),
  KEY `_key_team` (`teamInternalId`),
  KEY `_key_userId` (`userId`),
  KEY `_key_teamId` (`teamId`),
  KEY `_key_invited` (`invited`),
  KEY `_key_joined` (`joined`),
  KEY `_key_confirm` (`confirm`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_memberships`
--

LOCK TABLES `_console_memberships` WRITE;
/*!40000 ALTER TABLE `_console_memberships` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_memberships_perms`
--

DROP TABLE IF EXISTS `_console_memberships_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_memberships_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_memberships_perms`
--

LOCK TABLES `_console_memberships_perms` WRITE;
/*!40000 ALTER TABLE `_console_memberships_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_memberships_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_platforms`
--

DROP TABLE IF EXISTS `_console_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_platforms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `store` varchar(256) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_platforms`
--

LOCK TABLES `_console_platforms` WRITE;
/*!40000 ALTER TABLE `_console_platforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_platforms_perms`
--

DROP TABLE IF EXISTS `_console_platforms_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_platforms_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_platforms_perms`
--

LOCK TABLES `_console_platforms_perms` WRITE;
/*!40000 ALTER TABLE `_console_platforms_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_platforms_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_projects`
--

DROP TABLE IF EXISTS `_console_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_projects` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `region` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `version` varchar(16) DEFAULT NULL,
  `legalName` varchar(256) DEFAULT NULL,
  `legalCountry` varchar(256) DEFAULT NULL,
  `legalState` varchar(256) DEFAULT NULL,
  `legalCity` varchar(256) DEFAULT NULL,
  `legalAddress` varchar(256) DEFAULT NULL,
  `legalTaxId` varchar(256) DEFAULT NULL,
  `services` text DEFAULT NULL,
  `auths` text DEFAULT NULL,
  `authProviders` text DEFAULT NULL,
  `platforms` text DEFAULT NULL,
  `webhooks` text DEFAULT NULL,
  `keys` text DEFAULT NULL,
  `domains` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_team` (`teamId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_projects`
--

LOCK TABLES `_console_projects` WRITE;
/*!40000 ALTER TABLE `_console_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_projects_perms`
--

DROP TABLE IF EXISTS `_console_projects_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_projects_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_projects_perms`
--

LOCK TABLES `_console_projects_perms` WRITE;
/*!40000 ALTER TABLE `_console_projects_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_projects_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_realtime`
--

DROP TABLE IF EXISTS `_console_realtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_realtime` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `timestamp` datetime(3) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_timestamp` (`timestamp`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_realtime`
--

LOCK TABLES `_console_realtime` WRITE;
/*!40000 ALTER TABLE `_console_realtime` DISABLE KEYS */;
INSERT INTO `_console_realtime` VALUES
(1,'6490d7359e9125b5819a','2023-06-19 22:31:17.659','2023-06-19 22:31:17.659','[]','6490d72e58545','2023-06-19 22:31:17.649','{}');
/*!40000 ALTER TABLE `_console_realtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_realtime_perms`
--

DROP TABLE IF EXISTS `_console_realtime_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_realtime_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_realtime_perms`
--

LOCK TABLES `_console_realtime_perms` WRITE;
/*!40000 ALTER TABLE `_console_realtime_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_realtime_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_sessions`
--

DROP TABLE IF EXISTS `_console_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_sessions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `provider` varchar(128) DEFAULT NULL,
  `providerUid` varchar(2048) DEFAULT NULL,
  `providerAccessToken` text DEFAULT NULL,
  `providerAccessTokenExpiry` datetime(3) DEFAULT NULL,
  `providerRefreshToken` text DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `countryCode` varchar(2) DEFAULT NULL,
  `osCode` varchar(256) DEFAULT NULL,
  `osName` varchar(256) DEFAULT NULL,
  `osVersion` varchar(256) DEFAULT NULL,
  `clientType` varchar(256) DEFAULT NULL,
  `clientCode` varchar(256) DEFAULT NULL,
  `clientName` varchar(256) DEFAULT NULL,
  `clientVersion` varchar(256) DEFAULT NULL,
  `clientEngine` varchar(256) DEFAULT NULL,
  `clientEngineVersion` varchar(256) DEFAULT NULL,
  `deviceName` varchar(256) DEFAULT NULL,
  `deviceBrand` varchar(256) DEFAULT NULL,
  `deviceModel` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_provider_providerUid` (`provider`(100),`providerUid`(100)),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_sessions`
--

LOCK TABLES `_console_sessions` WRITE;
/*!40000 ALTER TABLE `_console_sessions` DISABLE KEYS */;
INSERT INTO `_console_sessions` VALUES
(1,'6490d7f2341a81a894ae','2023-06-19 22:34:27.246','2023-06-19 22:34:27.246','[\"read(\\\"user:6490d7f0524d1d26ae23\\\")\",\"update(\\\"user:6490d7f0524d1d26ae23\\\")\",\"delete(\\\"user:6490d7f0524d1d26ae23\\\")\"]','1','6490d7f0524d1d26ae23','email','ramzi@swellty.ovh',NULL,NULL,NULL,'{\"data\":\"ohQDRThxhY94zCBvuijye5n9XUZ7QO+vD59TtiPIwjL7fI8CslbBlDlsL8GExyhhmeecHEl2DdFdEflgOsPVsg==\",\"method\":\"aes-128-gcm\",\"iv\":\"493c3d754b6ac9552088be18\",\"tag\":\"ba34c3a8844660e57dd52aa1456d9c88\",\"version\":\"1\"}','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','197.202.176.137','dz','WIN','Windows','10','browser','CH','Chrome','114.0','Blink','114.0.0.0','desktop','','');
/*!40000 ALTER TABLE `_console_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_sessions_perms`
--

DROP TABLE IF EXISTS `_console_sessions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_sessions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_sessions_perms`
--

LOCK TABLES `_console_sessions_perms` WRITE;
/*!40000 ALTER TABLE `_console_sessions_perms` DISABLE KEYS */;
INSERT INTO `_console_sessions_perms` VALUES
(3,'delete','user:6490d7f0524d1d26ae23','6490d7f2341a81a894ae'),
(1,'read','user:6490d7f0524d1d26ae23','6490d7f2341a81a894ae'),
(2,'update','user:6490d7f0524d1d26ae23','6490d7f2341a81a894ae');
/*!40000 ALTER TABLE `_console_sessions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_stats`
--

DROP TABLE IF EXISTS `_console_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_stats` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `metric` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `value` bigint(20) unsigned DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `period` varchar(4) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_time` (`time`),
  KEY `_key_period_time` (`period`,`time`),
  KEY `_key_metric_period_time` (`metric`,`period`,`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_stats`
--

LOCK TABLES `_console_stats` WRITE;
/*!40000 ALTER TABLE `_console_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_stats_perms`
--

DROP TABLE IF EXISTS `_console_stats_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_stats_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_stats_perms`
--

LOCK TABLES `_console_stats_perms` WRITE;
/*!40000 ALTER TABLE `_console_stats_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_stats_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_teams`
--

DROP TABLE IF EXISTS `_console_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_teams` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_total` (`total`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_teams`
--

LOCK TABLES `_console_teams` WRITE;
/*!40000 ALTER TABLE `_console_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_teams_perms`
--

DROP TABLE IF EXISTS `_console_teams_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_teams_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_teams_perms`
--

LOCK TABLES `_console_teams_perms` WRITE;
/*!40000 ALTER TABLE `_console_teams_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_teams_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_tokens`
--

DROP TABLE IF EXISTS `_console_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_tokens` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_tokens`
--

LOCK TABLES `_console_tokens` WRITE;
/*!40000 ALTER TABLE `_console_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_tokens_perms`
--

DROP TABLE IF EXISTS `_console_tokens_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_tokens_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_tokens_perms`
--

LOCK TABLES `_console_tokens_perms` WRITE;
/*!40000 ALTER TABLE `_console_tokens_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_tokens_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_users`
--

DROP TABLE IF EXISTS `_console_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_users` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `hashOptions` text DEFAULT NULL,
  `passwordUpdate` datetime(3) DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  `registration` datetime(3) DEFAULT NULL,
  `emailVerification` tinyint(1) DEFAULT NULL,
  `phoneVerification` tinyint(1) DEFAULT NULL,
  `reset` tinyint(1) DEFAULT NULL,
  `sessions` text DEFAULT NULL,
  `tokens` text DEFAULT NULL,
  `memberships` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_email` (`email`),
  UNIQUE KEY `_key_phone` (`phone`),
  KEY `_key_name` (`name`),
  KEY `_key_status` (`status`),
  KEY `_key_passwordUpdate` (`passwordUpdate`),
  KEY `_key_registration` (`registration`),
  KEY `_key_emailVerification` (`emailVerification`),
  KEY `_key_phoneVerification` (`phoneVerification`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_users`
--

LOCK TABLES `_console_users` WRITE;
/*!40000 ALTER TABLE `_console_users` DISABLE KEYS */;
INSERT INTO `_console_users` VALUES
(1,'6490d7f0524d1d26ae23','2023-06-19 22:34:25.160','2023-06-19 22:34:25.160','[\"read(\\\"any\\\")\",\"update(\\\"user:6490d7f0524d1d26ae23\\\")\",\"delete(\\\"user:6490d7f0524d1d26ae23\\\")\"]','ramzi','ramzi@swellty.ovh',NULL,1,'{\"data\":\"i+\\/xPXJ57SmMW38iYZ4wrGi9SPhjbxaougi2cRxoHCa6la93YXBXYJWuAOL8N3ysFgg9MhBWv61AcOn7mf1iJDYHVtEz6d9LN3anSzCp3SevFmXx8Z9PV+2Udd5cpVGVRQ==\",\"method\":\"aes-128-gcm\",\"iv\":\"192ea50c0d5be0441c99bfb7\",\"tag\":\"5f5f9eabea5095c038024a259b14df08\",\"version\":\"1\"}','argon2','{\"memoryCost\":2048,\"timeCost\":4,\"threads\":3}','2023-06-19 22:34:25.160','{}','2023-06-19 22:34:25.160',0,NULL,0,NULL,NULL,NULL,'6490d7f0524d1d26ae23 ramzi@swellty.ovh ramzi');
/*!40000 ALTER TABLE `_console_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_users_perms`
--

DROP TABLE IF EXISTS `_console_users_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_users_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_users_perms`
--

LOCK TABLES `_console_users_perms` WRITE;
/*!40000 ALTER TABLE `_console_users_perms` DISABLE KEYS */;
INSERT INTO `_console_users_perms` VALUES
(3,'delete','user:6490d7f0524d1d26ae23','6490d7f0524d1d26ae23'),
(1,'read','any','6490d7f0524d1d26ae23'),
(2,'update','user:6490d7f0524d1d26ae23','6490d7f0524d1d26ae23');
/*!40000 ALTER TABLE `_console_users_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_variables`
--

DROP TABLE IF EXISTS `_console_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_variables` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionInternalId` varchar(255) DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(8192) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_uniqueKey` (`functionInternalId`,`key`),
  KEY `_key_function` (`functionInternalId`),
  KEY `_key_key` (`key`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_variables`
--

LOCK TABLES `_console_variables` WRITE;
/*!40000 ALTER TABLE `_console_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_variables_perms`
--

DROP TABLE IF EXISTS `_console_variables_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_variables_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_variables_perms`
--

LOCK TABLES `_console_variables_perms` WRITE;
/*!40000 ALTER TABLE `_console_variables_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_variables_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_webhooks`
--

DROP TABLE IF EXISTS `_console_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_webhooks` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `httpUser` varchar(255) DEFAULT NULL,
  `httpPass` varchar(255) DEFAULT NULL,
  `security` tinyint(1) DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `signatureKey` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_webhooks`
--

LOCK TABLES `_console_webhooks` WRITE;
/*!40000 ALTER TABLE `_console_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_webhooks_perms`
--

DROP TABLE IF EXISTS `_console_webhooks_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_webhooks_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_webhooks_perms`
--

LOCK TABLES `_console_webhooks_perms` WRITE;
/*!40000 ALTER TABLE `_console_webhooks_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_webhooks_perms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-20  0:16:36
