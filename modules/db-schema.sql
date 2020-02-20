--
-- Table structure for table `botlog`
--

DROP TABLE IF EXISTS `botlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `botlog` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buglog`
--

DROP TABLE IF EXISTS `buglog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buglog` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(16) NOT NULL,
  `userId` varchar(24) NOT NULL,
  `permLevel` varchar(16) NOT NULL,
  `report` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmdlog`
--

DROP TABLE IF EXISTS `cmdlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmdlog` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `command` varchar(16) NOT NULL,
  `channelId` varchar(24) NOT NULL,
  `userId` varchar(24) NOT NULL,
  `permLevel` varchar(16) NOT NULL,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `errlog`
--

DROP TABLE IF EXISTS `errlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errlog` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `command` varchar(16) NOT NULL,
  `channelId` varchar(24) NOT NULL,
  `userId` varchar(24) NOT NULL,
  `permLevel` varchar(16) NOT NULL,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `discordId` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `discordName` text COLLATE utf8mb4_bin NOT NULL,
  `discordTag` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `allycode` int(9) DEFAULT NULL,
  `guildId` int(10) DEFAULT NULL,
  `guildRefId` varchar(20)  COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`discordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `guildId` varchar(64) NOT NULL,
  `prefix` varchar(1) NOT NULL DEFAULT '/',
  `modRole` varchar(64) NOT NULL DEFAULT 'Mod',
  `guildReset` int(4) NOT NULL DEFAULT '0',
  `points` tinyint(1) NOT NULL DEFAULT '0',
  `roleReward` tinyint(1) NOT NULL DEFAULT '0',
  `welcome` tinyint(1) NOT NULL DEFAULT '0',
  `welcomeChannel` varchar(64) NOT NULL DEFAULT 'general',
  `welcomeMessage` text,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
