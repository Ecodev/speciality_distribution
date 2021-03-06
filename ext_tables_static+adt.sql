-- MySQL dump 10.13  Distrib 5.7.21, for osx10.12 (x86_64)
--
-- Host: localhost    Database: specialitydistribution
-- ------------------------------------------------------
-- Server version	5.7.21

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
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` smallint(6) NOT NULL DEFAULT '0',
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `file_permissions` text,
  `category_perms` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
INSERT INTO `be_groups` VALUES (1,0,1445583967,'User','sys_file_metadata:categories,pages:nav_hide,pages:hidden,tt_content:hidden','tt_content:CType:text:ALLOW,tt_content:CType:fluidcontent_content:ALLOW','','','74,1,77','1,4,3,254','pages,sys_category,sys_file,sys_file_metadata,sys_file_reference,tt_content','pages,sys_category,sys_file,sys_file_metadata,sys_file_reference,tt_content',1327317387,2,'web,web_layout,web_list,file,file_VidiSysFileM1,content,content_VidiFeUsersM1,content_VidiFeGroupsM1,user,user_setup,user_MediaM1','6,7,8,9',0,'','',0,'options {\r\n  showHistory = 0\r\n  contextMenu {\r\n    pageTree.disableItems = info,history,perms,edit_access,db_list,versioning,moreoptions\r\n    pageList.disableItems = info,history,perms,edit_access,db_list,versioning,moreoptions\r\n    table {\r\n      pages_root.items.400 >\r\n      pages.items.1000 >\r\n    }\r\n  }\r\n}\r\n','4,7',0,1,'readFolder,writeFolder,addFolder,renameFolder,moveFolder,copyFolder,deleteFolder,recursivedeleteFolder,readFile,writeFile,addFile,renameFile,moveFile,copyFile,unzipFile,deleteFile',''),(7,0,1343641616,'_Plugin: SEO basics','pages_language_overlay:tx_seo_titletag,pages_language_overlay:tx_seo_canonicaltag,pages:tx_seo_titletag,pages:tx_seo_canonicaltag',NULL,'',NULL,'','',NULL,NULL,1343641448,5,NULL,'',0,'','',0,'','',0,0,NULL,''),(3,0,1426178942,'Power user',NULL,NULL,'',NULL,'','','fe_groups,fe_users','fe_groups,fe_users',1342797659,5,'user_VidiFeUsersM1,user_VidiFeGroupsM1','',0,'','',0,'','',0,0,'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,moveFile,deleteFile',''),(4,0,1366046382,'_Plugin: news',NULL,NULL,'',NULL,'','','tx_news_domain_model_news,tx_news_domain_model_category,tx_news_domain_model_media,tx_news_domain_model_file,tx_news_domain_model_link,tx_news_domain_model_tag','tx_news_domain_model_news,tx_news_domain_model_category,tx_news_domain_model_media,tx_news_domain_model_file,tx_news_domain_model_link,tx_news_domain_model_tag',1342797685,5,'web,web_NewsTxNewsM2','',0,'','',0,'','',0,0,NULL,'');
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
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
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(255) NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tx_fed_page_flexform` text,
  `tx_fed_page_controller_action` varchar(255) NOT NULL DEFAULT '',
  `tx_fed_page_controller_action_sub` varchar(255) NOT NULL DEFAULT '',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(1) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(1) NOT NULL DEFAULT '0',
  `tx_fed_page_flexform_sub` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_seo_titletag` tinytext,
  `tx_seo_canonicaltag` tinytext,
  `tx_fluidpages_templatefile` varchar(255) DEFAULT NULL,
  `tx_fluidpages_layout` varchar(64) DEFAULT NULL,
  `tsconfig_includes` text,
  `tx_seo_robots` tinytext,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1502446528,208,0,1,1,31,31,0,0,1257766279,1,0,'Welcome to TYPO3',1,'<INCLUDE_TYPOSCRIPT: source=\"DIR:EXT:speciality/Configuration/PageTS\" extension=\"tsconfig\">',1,0,1,'',0,0,1,6,0,0,'','',0,'',0,0,'typo3, introduction package, install, example setup',0,'',0,'This website is a default website setup for TYPO3. You can use it to demonstrate the basic features of the TYPO3 Content Management System, but you are also welcome to use it as a basis for your own website projects. Please have a look at how it works and how it is structured. In building this package, we have tried to combine a lot of best practices. Feel free to use these structures and use elements of it for your own way of working.',0,1502446528,'Homepage for the Introduction Package of TYPO3','',0,'','','',0,0,0,0,'',0,0,'fluidpages__fluidpages','fluidpages__fluidpages','','Ecodev.speciality->homePage','Ecodev.speciality->standard','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(2,69,0,0,0,'',0,0,0,0,0,0,1431963258,64,0,1,1,31,31,0,0,1257766279,1,0,'Contact',1,'',0,0,67,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1431963258,'','',0,'','','',1,0,0,0,'',0,0,'','','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(3,51,0,0,0,'',0,0,0,0,0,0,1426244919,256,0,1,1,31,31,0,0,1257766279,1,0,'Customizing TYPO3',1,'',0,0,63,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1426244919,'','',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,0,0,0,'',0,0,0,0,0,33,1460106888,2048,0,1,1,31,31,0,0,1257766279,1,0,'Content elements',4,'',0,0,48,'',0,0,1,43,0,0,'','',0,'',0,0,'',0,'',0,'',0,1426359831,'Available content elements.','',0,'','','',0,0,0,0,'',0,0,'','','','Ecodev.speciality->withSidebar','Ecodev.speciality->withSidebar','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(83,80,0,0,0,'',0,0,0,0,0,0,1360229090,256,0,1,1,31,31,0,0,1360229009,1,0,'Rdfa Lite',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1379360427,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(15,69,0,0,0,'',0,0,0,0,0,0,1277207824,224,0,1,1,31,31,0,0,1258384670,2,0,'--------------',199,'',0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(16,69,0,0,0,'',0,0,0,0,0,0,1277207764,256,0,1,1,31,31,0,0,1258384807,2,0,'404',1,'',0,0,0,'',0,0,1,0,0,0,'','',2,'',0,0,NULL,0,'',0,NULL,1,1361279282,NULL,'',0,'','','',1,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(17,82,0,0,0,'',0,0,0,0,0,0,1426265656,2688,0,1,1,31,31,0,0,1258384853,2,1,'Search',1,'',0,0,0,'',0,0,1,0,0,0,'','',3,'',0,0,'',0,'',0,'',1,1374770750,'','',0,'','','',0,0,0,0,'',0,0,'0','0','','Ecodev.speciality->withSidebar','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(18,74,0,0,0,'',0,0,0,0,0,0,1455812748,256,0,1,1,31,31,0,0,1258384881,2,0,'News',254,'mod.web_list {\r\n	# limit the creation of new records in this sysFolder to these types\r\n	allowedNewTables = tx_news_domain_model_news, tx_news_domain_model_category, sys_note\r\n}\r\n\r\n# This will open the news singleView page (id 23) when clicking \'preview\' for a news record\r\ntx_ttnews.singlePid = 23\r\n\r\nTCEMAIN {\r\n	# Clear cache of the News page after content of the News folder has changed\r\n	clearCacheCmd = 23\r\n	clearCache_pageSiblingChildren = 1\r\n}\r\n',0,0,0,'',0,0,1,0,0,0,'','',3,'',0,0,'',0,'',0,'',0,0,'','news',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(82,1,0,0,0,'',0,0,0,0,0,0,1460109376,896,0,1,1,31,31,0,0,1360227333,1,0,'Guides',4,NULL,0,0,0,'',0,0,1,132,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1366277921,'Collection of mini tutorial for going the next step','',0,'','','',0,0,0,0,'',0,0,'','','','','Ecodev.speciality->standard','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(67,2,0,0,0,'',0,0,0,0,0,0,1277154544,256,0,1,1,31,31,0,0,1277149038,23,0,'Thank you for your feedback',1,'',0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1277154544,'','',0,'','','Thank You',1,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(70,1,0,0,0,'',0,0,0,0,0,15,1360091114,2304,0,1,1,31,31,0,0,1277207837,24,0,'--------------',199,'',0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(28,69,0,0,0,'',0,0,0,0,0,0,1360235716,176,0,1,1,31,31,0,0,1258478965,4,0,'Login',1,'',0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1431961329,'','',0,'','','',1,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(29,74,0,0,0,'',0,0,0,0,0,0,1455812751,512,0,1,1,31,31,0,0,1258479224,4,0,'Users and groups',254,'mod.web_list {\r\n	# limit the creation of new records in this sysFolder to these types\r\n	allowedNewTables = fe_groups,fe_users,sys_note\r\n}\r\n',0,0,0,'',0,0,1,0,0,0,'0','',3,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'fe_users',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(30,28,0,0,0,'',0,0,0,0,0,0,1431963564,128,0,1,1,31,31,0,0,1258479801,4,0,'Protected customer page',1,'',0,0,0,'',0,0,1,0,0,0,'1','',0,'',0,0,'',0,'',0,'',0,1431963564,'','',0,'','','',0,0,0,0,'',0,0,'','','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(31,28,0,0,0,'',0,0,0,0,0,0,1431963747,384,0,1,1,31,31,0,0,1258479835,4,0,'Any login page',1,'',0,0,0,'',0,0,1,0,0,0,'-2','',0,'',0,0,'',0,'',0,'',0,1431963900,'','',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(34,4,0,0,0,'',0,0,0,0,0,0,1360091114,2048,0,1,1,31,31,0,0,1258542915,4,0,'Site map',1,'',0,0,52,'',0,0,1,0,0,0,'','',0,'',0,0,'Content elements',0,'',0,'',0,1426360323,'','',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(35,4,0,0,0,'',0,0,0,0,0,0,1360091114,256,0,1,1,31,31,0,0,1258542915,4,0,'File downloads',1,'',0,0,48,'',0,0,1,0,0,0,'','',0,'',0,0,'Content elements',0,'',0,'',0,1459530622,'','',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(43,4,0,0,0,'',0,0,0,0,0,0,1459532118,96,0,1,1,31,31,0,0,1258542915,4,0,'Text',1,'',0,0,34,'',0,0,1,0,0,0,'','',0,'',0,0,'Content elements',0,'',0,'',0,1459532118,'','',0,'','','',0,0,0,0,'',0,0,'','','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(51,1,0,0,0,'',0,0,0,0,0,6,1410724468,512,0,1,1,31,31,0,0,1258560852,12,0,'About TYPO3 CMS',1,'',0,0,9,'',0,0,1,0,0,0,'','',2,'',0,0,'typo3, introduction package, install, example setup',0,'',0,'This website is a default website setup for TYPO3. You can use it to demonstrate the basic features of the TYPO3 Content Management System, but you are also welcome to use it as a basis for your own website projects. Please have a look at how it works and how it is structured. In building this package, we have tried to combine a lot of best practices. Feel free to use these structures and use elements of it for your own way of working.',0,1410724468,'','',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(57,1,0,0,0,'',0,0,0,0,0,0,1426245027,768,0,1,1,31,31,0,0,1258639563,12,0,'For Editors',1,'',0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,1426245027,'Some tips for your editor users.','',0,'','','',0,0,0,0,'',0,0,'','','','Ecodev.speciality->homePage','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(69,1,0,0,0,'',0,0,0,0,0,0,1455813358,2560,0,1,1,31,31,0,0,1277207757,24,0,'Special pages',254,'',0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,1,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(64,51,0,0,0,'',0,0,0,0,0,0,1426244923,512,0,1,1,31,31,0,0,1276894949,22,0,'Documentation',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1426283856,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(71,1,0,0,1,'INITIAL PLACEHOLDER',1,0,0,0,0,0,1290048956,1536,0,1,5,31,27,0,0,1290048956,1,1,'Page added in Workspace',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1290049001,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(72,-1,71,1,1,'First draft version',-1,0,0,0,0,0,1290048956,61,0,1,5,31,27,0,0,1290048956,1,0,'Page added in Workspace',1,'',0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(74,1,0,0,0,'',0,0,0,0,0,0,1461939059,2688,0,1,1,31,31,0,0,1359486967,1,0,'Data',254,'',0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'storage',0,'','','',0,0,0,0,'',0,0,'','','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(75,74,0,0,0,'',0,0,0,0,0,0,1455813322,768,0,1,1,31,31,0,0,1359487584,1,0,'Contents',254,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(76,74,0,0,0,'',0,0,0,0,0,0,1455812757,1024,0,1,1,31,31,0,0,1360089615,1,0,'Categories',254,'mod.web_list {\r\n	# limit the creation of new records in this folder to these types\r\n	allowedNewTables = sys_category\r\n}\r\n',0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'category',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(80,82,0,0,0,'',0,0,0,0,0,0,1426260135,3552,0,1,1,31,31,0,0,1360093194,1,0,'Semantic Web',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1426405956,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(81,82,0,0,0,'',0,0,0,0,0,0,1360231898,1024,0,1,1,31,31,0,0,1360093227,1,0,'SEO',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1426867371,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(84,80,0,0,0,'',0,0,0,0,0,0,1360229115,128,0,1,1,31,31,0,0,1360229097,1,0,'Microdata',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1361279282,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(90,109,0,0,0,'',0,0,0,0,0,0,1426244666,768,0,1,1,31,31,0,0,1360232513,1,0,'Newsletter',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1455568012,NULL,'',0,'','','',0,0,0,0,'',0,0,'','','','Ecodev.speciality->newsletter','Ecodev.speciality->newsletter','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(92,82,0,0,0,'',0,0,0,0,0,0,1374055769,1280,0,1,1,31,31,0,0,1360335109,1,0,'Multi language',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1374240486,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(96,82,0,0,0,'',0,0,0,0,0,0,1371230918,3072,0,1,1,31,31,0,0,1360746814,1,0,'Performance tuning',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1426265594,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(97,80,0,0,0,'',0,0,0,0,0,0,1431423461,512,0,1,1,31,31,0,0,1360746894,1,0,'ARIA',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1431420311,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(102,4,0,0,0,'',0,0,0,0,0,0,1366216483,114,0,1,1,31,31,0,0,1366216456,1,0,'Text expandable',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1426405584,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(108,82,0,0,0,'',0,0,0,0,0,0,1426261920,3536,0,1,1,31,31,0,0,1367403650,1,0,'Checklist going live',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1426261920,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(109,1,0,0,0,'',0,0,0,0,0,0,1426243968,2176,0,1,1,31,31,0,0,1370676968,1,0,'Layouts',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1426285217,NULL,'',0,'','','',0,0,0,0,'',0,0,'0','0','','Ecodev.speciality->standard','','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL),(116,109,0,0,0,'',0,0,0,0,0,0,1426244063,128,0,1,1,31,31,0,0,1426244049,1,0,'Standard',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1426285262,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(117,109,0,0,0,'',0,0,0,0,0,116,1426244685,512,0,1,1,31,31,0,0,1426244077,1,0,'With side bar',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1426245985,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'Ecodev.speciality->withSidebar','Ecodev.speciality->withSidebar','',0,0,NULL,0,'','','','',NULL,NULL),(118,109,0,0,0,'',0,0,0,0,0,0,1426246284,640,0,1,1,31,31,0,0,1426244754,1,0,'Home page',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1426246284,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'Ecodev.speciality->homePage','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(119,4,0,0,0,'',0,0,0,0,0,0,1426359840,185,0,1,1,31,31,0,0,1426258111,1,0,'Bootstrap carousel',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1456246925,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(120,4,0,0,0,'',0,0,0,0,0,0,1426359845,220,0,1,1,31,31,0,0,1426258271,1,0,'Bootstrap alert',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1456246940,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(121,4,0,0,0,'',0,0,0,0,0,0,1426359847,238,0,1,1,31,31,0,0,1426258299,1,0,'Bootstrap gallery',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1456246952,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(122,4,0,0,0,'',0,0,0,0,0,0,1426359850,247,0,1,1,31,31,0,0,1426258670,1,0,'Bootstrap accordion',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1456246970,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(123,82,0,0,0,'',0,0,0,0,0,0,1426327294,512,0,1,1,31,31,0,0,1426259225,1,0,'Change CSS / JS',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1426404555,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(125,4,0,0,0,'',0,0,0,0,0,0,1426359853,251,0,1,1,31,31,0,0,1426266683,1,0,'Grid system',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1455553483,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'Ecodev.speciality->standard','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(127,69,0,0,0,'',0,0,0,0,0,0,1431965708,512,0,1,1,31,31,0,0,1431965452,1,0,'503',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',1,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(128,4,0,0,0,'',0,0,0,0,0,0,1459527740,2304,0,1,1,31,31,0,0,1456840789,1,0,'Dynamic list - users',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1459528922,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'Ecodev.speciality->standard','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(129,4,0,0,0,'',0,0,0,0,0,0,1459528976,2560,0,1,1,31,31,0,0,1459528938,1,0,'Dynamic list - files',1,NULL,0,0,0,'',0,0,1,0,0,0,'','',0,'',0,0,NULL,0,'',0,NULL,0,1459530427,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'Ecodev.speciality->standard','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(130,4,0,0,0,'',0,0,0,0,0,0,1459530690,2816,0,1,1,31,31,0,0,1459530663,1,0,'Natural Gallery',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1459534517,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(131,4,0,0,0,'',0,0,0,0,0,0,1459531576,105,0,1,1,31,31,0,0,1459531546,1,0,'Text and images',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1459532055,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(132,82,0,0,0,'',0,0,0,0,0,0,1459533315,256,0,1,1,31,31,0,0,1459532230,1,0,'Your custom Content Elements...',1,NULL,0,0,0,'',0,0,1,0,0,0,'0','',0,'',0,0,NULL,0,'',0,NULL,0,1459533617,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,'','','',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
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
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `title` tinytext NOT NULL,
  `description` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
INSERT INTO `sys_category` VALUES (4,76,1459529881,1366377483,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'','Carousel','',5,7,0,NULL),(5,76,1374067739,1366377514,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'','Image gallery','',0,0,0,NULL),(7,76,1374067810,1374067810,1,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'','Slideshow','',5,8,0,NULL);
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
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
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  `l10n_state` text,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
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
  `type` varchar(10) NOT NULL DEFAULT '',
  `storage` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` varchar(40) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` smallint(6) NOT NULL DEFAULT '0',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `sha1` (`sha1`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1411313458,'5',2,'/documents/typo3_logo_guide.pdf','pdf','application/pdf','typo3_logo_guide.pdf','197919fe88902e9a6209b30a3d5b99003dc6295b',210627,1410734235,1410734235,1411313473,0,0,'f7775517a619f8093c8eff318ba0c8e710f62842','5d6a1e443f8729a78897e1aa19ab65c674636c50'),(2,0,1411313458,'2',2,'/images/a1.jpg','jpg','image/jpeg','a1.jpg','ca63c4b48ac1e9b9519e9ec12ebc5afb208ad046',6644,1410734235,1410734235,1411313473,0,0,'3f1a39bcca2bc8e58ffceebd6a8d3a77124b98e9','c1a406ab82b5588738d1587da2761746ec584a6c'),(3,0,1411313458,'2',2,'/images/a4.jpg','jpg','image/jpeg','a4.jpg','8891f428857a1aec2e77e35a5719d650c4e292a3',13025,1410734235,1410734235,1411313473,0,0,'4e7c843a905c54a8c7eb0a6ae2f7801ceb38b51a','c1a406ab82b5588738d1587da2761746ec584a6c'),(4,0,1411313458,'2',2,'/images/b2.jpg','jpg','image/jpeg','b2.jpg','bae9a0a433ca2fece4f2cfdca5f32b394dd020c2',15220,1410734235,1410734235,1411313473,0,0,'5014b3f23158bbe145e8ba3636f06daf6ed7a783','c1a406ab82b5588738d1587da2761746ec584a6c'),(5,0,1411313458,'2',2,'/images/b4.jpg','jpg','image/jpeg','b4.jpg','cbe769bc59b5d6df0b61bc3a65d009c72e4d0f12',14360,1410734235,1410734235,1411313473,0,0,'ef49cb91434c47b040fa155f357c416845e55e94','c1a406ab82b5588738d1587da2761746ec584a6c'),(6,0,1411313458,'2',2,'/images/c3.jpg','jpg','image/jpeg','c3.jpg','3d674c044fec1563b12ca3667e856d37ec4cd326',7685,1410734235,1410734235,1411313473,0,0,'d47c263ea79ed00da286551a26419f6c6bcb1aa0','c1a406ab82b5588738d1587da2761746ec584a6c'),(7,0,1411313458,'2',2,'/images/c4.jpg','jpg','image/jpeg','c4.jpg','9d5a0ed2d7c969f517288a9b117275801b872123',9975,1410734235,1410734235,1411313473,0,0,'acd0be356eaf94fe30672adf2465027c4028132b','c1a406ab82b5588738d1587da2761746ec584a6c'),(8,0,1411313458,'2',2,'/images/carousel-01.jpg','jpg','image/jpeg','carousel-01.jpg','e5600f8243d28b9bf175d88c05c4a661e9b52737',65814,1410734235,1410734235,1411313473,0,0,'4504f6020eeeebd992f7f32c16159c3adca3b249','c1a406ab82b5588738d1587da2761746ec584a6c'),(9,0,1411313458,'2',2,'/images/carousel-02.jpg','jpg','image/jpeg','carousel-02.jpg','14d581672809c0f2152f6af7f62acbb989126837',63604,1410734235,1410734235,1411313473,0,0,'4c557bfa327deebd3bb8f1c3b5483e187e867d99','c1a406ab82b5588738d1587da2761746ec584a6c'),(10,0,1411313458,'2',2,'/images/carousel-03.jpg','jpg','image/jpeg','carousel-03.jpg','4f81aa57a19772007a5f4804ae5440582cb133b4',54582,1410734235,1410734235,1411313473,0,0,'1ab2e6bbf1d2b0f9d3287691efe070c7b374ff89','c1a406ab82b5588738d1587da2761746ec584a6c'),(11,0,1411313458,'2',2,'/images/carousel-04.jpg','jpg','image/jpeg','carousel-04.jpg','41e530ac6077e0b451fcdc4ab1ee4ff2f6175e6a',74992,1410734235,1410734235,1411313473,0,0,'e1c915bc7082093f011006a54e665203c65a5a9a','c1a406ab82b5588738d1587da2761746ec584a6c'),(12,0,1411313458,'2',2,'/images/d4.jpg','jpg','image/jpeg','d4.jpg','1e7aa1360015cb5fd7e9bd53ee741c9bac171b9d',7916,1410734235,1410734235,1411313473,0,0,'418b6ebe01f2fd908957821b25ed0358810dc3fd','c1a406ab82b5588738d1587da2761746ec584a6c'),(13,0,1411313458,'2',2,'/images/e5.jpg','jpg','image/jpeg','e5.jpg','86e5796e70c63faa5af471b44643bc759a89f9df',22107,1410734235,1410734235,1411313473,0,0,'2d34ff2255b9235de254136a93792a735064368d','c1a406ab82b5588738d1587da2761746ec584a6c'),(14,0,1411313458,'2',2,'/images/f6.jpg','jpg','image/jpeg','f6.jpg','421be7ecec1b262bfb18a94e4f169a28e460e445',4936,1410734235,1410734235,1411313473,0,0,'fdab6371b4c860587f3fe6c187789eef8633f19e','c1a406ab82b5588738d1587da2761746ec584a6c'),(15,0,1411313458,'2',2,'/images/kasper-skarhoj.jpeg','jpeg','image/jpeg','kasper-skarhoj.jpeg','b841902021bbe23bd71e4a5b5b97626da7734b90',39056,1410734235,1410734235,1411313473,0,0,'856dbb30f23f8de3db4d9a528b801d7ed909b66a','c1a406ab82b5588738d1587da2761746ec584a6c'),(16,0,1411313458,'2',2,'/images/team-t3board10.jpg','jpg','image/jpeg','team-t3board10.jpg','b14b91e0fc9cb79c365699ce2fa2bfb1c646a3a2',172797,1410734235,1410734235,1411313473,0,0,'5e026103908bc869711074fdb32c9ce9c6c08365','c1a406ab82b5588738d1587da2761746ec584a6c'),(17,0,1411313458,'2',2,'/images/typo3-logo-8bit.png','png','image/png','typo3-logo-8bit.png','d59df0702c421d139843153db3946db3ea77112b',35946,1410734235,1410734235,1411313473,0,0,'afb33aa1768c36cf1076762e1e29cc0de971f288','c1a406ab82b5588738d1587da2761746ec584a6c'),(18,0,1411313458,'2',2,'/images/typo3_image1.jpg','jpg','image/jpeg','typo3_image1.jpg','bdce02f7f5fb53517d0b83b0ad7a6a0316a1ed88',573703,1410734235,1410734235,1411313473,0,0,'6b45049b2065574586d018bdd1d78b98c2956d62','c1a406ab82b5588738d1587da2761746ec584a6c'),(19,0,1411313458,'2',2,'/images/typo3_image2.jpg','jpg','image/jpeg','typo3_image2.jpg','5c8abb1110c2eada6793444492c3524614354e32',453106,1410734235,1410734235,1411313473,0,0,'3137772466b5eec7b0c09d804cd87535ea32ba7e','c1a406ab82b5588738d1587da2761746ec584a6c'),(20,0,1411313458,'2',2,'/images/typo3_image3.jpg','jpg','image/jpeg','typo3_image3.jpg','2b26790039084c08e4293101f3892761e5f9c353',173020,1410734235,1410734235,1411313473,0,0,'39fd8205932159d5d0a042aefbfacd0b57dcb722','c1a406ab82b5588738d1587da2761746ec584a6c'),(21,0,1411313458,'2',2,'/images/typo3_image4.jpg','jpg','image/jpeg','typo3_image4.jpg','80ba7c12c83ddaa1ae9092477e64f9769704633f',102591,1410734235,1410734235,1411313473,0,0,'b761d440d2cf5a610e7e702d7bcd41177dfc464e','c1a406ab82b5588738d1587da2761746ec584a6c'),(22,0,1411313458,'2',2,'/images/typo3_image5.jpg','jpg','image/jpeg','typo3_image5.jpg','ce136877a22606a6e44ce9b1f8ed3be70c74e6ee',126872,1410734235,1410734235,1411313473,0,0,'93f7d80723ae1235b3003c5de00bf2770f07abdd','c1a406ab82b5588738d1587da2761746ec584a6c'),(23,0,1411313458,'2',2,'/images/typo3_image6.jpg','jpg','image/jpeg','typo3_image6.jpg','57f7a50234b27401ad21ff526bedee755944771c',144311,1410734235,1410734235,1411313473,0,0,'5ecb842e2b2f061c8d64b98da6d0c1c2e6939fd4','c1a406ab82b5588738d1587da2761746ec584a6c'),(24,0,1411313458,'2',2,'/images/typo3_image7.jpg','jpg','image/jpeg','typo3_image7.jpg','37973e3d35077feab1c5706fd5767eddb6f8a4cf',134729,1410734235,1410734235,1411313473,0,0,'7f493f77c1706471c0ed688a5151dbdd78ac746f','c1a406ab82b5588738d1587da2761746ec584a6c'),(25,0,1411313459,'2',2,'/images/typo3_image8.jpg','jpg','image/jpeg','typo3_image8.jpg','b385b00697b1abedbaae001108a396ba922569c8',383813,1410734235,1410734235,1411313473,0,0,'2470286f716cb3a89c5bb9c3622e1097b4af4cc8','c1a406ab82b5588738d1587da2761746ec584a6c'),(26,0,1411313459,'2',2,'/images/typo3_image9.jpeg','jpeg','image/jpeg','typo3_image9.jpeg','4f834918d6b2ebce29c51edb7f5766eaf2f3e066',204580,1410734235,1410734235,1411313473,0,0,'3bedc1cf0cb4efd8629ee78a9f7e40268aea4972','c1a406ab82b5588738d1587da2761746ec584a6c'),(27,0,1411313459,'2',2,'/images/typo3_image10.jpg','jpg','image/jpeg','typo3_image10.jpg','03f86cb8b6d6d24316cba1760db796e5b0f89505',116301,1410734235,1410734235,1411313473,0,0,'71f722fb4317720ec4e3164be335ef893756b2bc','c1a406ab82b5588738d1587da2761746ec584a6c'),(28,0,1411313509,'2',0,'/typo3conf/ext/vidi/Resources/Public/Images/loading.gif','gif','image/gif','loading.gif','9c9656749892b623d70b9cfca46fc3fbbe67bf22',34411,1410733021,1410733021,0,0,0,'d02a88fefd77f667e7c48838311d7096c1cd1443','49efba1e64420ceb536f9313a45e285243e0786d'),(29,0,1411313575,'2',0,'/typo3/sysext/t3skin/images/flags/gb.png','png','image/png','gb.png','6a5b18982e17ffa1ac499ce729c38bccc1fd8209',582,1410732706,1410732706,0,0,0,'13ae44391366052977319cd914247bd4e52e282a','0eeed5eb9610d9b1971bd199611564fddec245ff'),(30,0,1411313575,'2',0,'/typo3/sysext/t3skin/images/flags/fr.png','png','image/png','fr.png','8486cbc71a82f5d2afbcd1ebf54c0ab2328959c8',406,1410732706,1410732706,0,0,0,'816a77caed573be29819c6e5f1ef0b66cdbe00e0','0eeed5eb9610d9b1971bd199611564fddec245ff'),(31,0,1411313575,'2',0,'/typo3/sysext/t3skin/images/flags/de.png','png','image/png','de.png','9d08e6170b5a7120f719957052c896a57e8e8943',401,1410732706,1410732706,0,0,0,'2afe55c9afec63c5db512ac1659a15d3c4d0a2b7','0eeed5eb9610d9b1971bd199611564fddec245ff'),(32,0,1411313575,'2',0,'/typo3conf/ext/speciality/Resources/Public/Build/Images/logo.png','png','image/png','logo.png','16d98f5aaba830f951c0e721dd2aa5a6b46196ca',3663,1410733010,1410733010,0,0,0,'fa9e0b2a001138e96842570c4991746e38079285','fa8f8c8d364c188206ca316e53e63f3a716b5d1c'),(33,0,1426086534,'2',0,'/typo3/sysext/extensionmanager/Resources/Public/Images/Distribution.png','png','image/png','Distribution.png','a3003d8253494909b65e392b6bfc7934199515f0',5147,1425984025,1425984025,0,0,0,'6d7c569f2ce5ad88601014309737018222d0a03a','1cf85ef1d73acd511c8fa41549b4b86abf0f0e08'),(35,0,1455555165,'2',0,'/typo3conf/ext/speciality/Resources/Public/Images/logo.png','png','image/png','logo.png','16d98f5aaba830f951c0e721dd2aa5a6b46196ca',3663,1449154014,1449154014,0,0,0,'e6598be4f7c1f37adfb3334fbac9221ee18ba4a7','3945ccd29a117d42d9e22bd90de6728fb66c88bb'),(36,0,1459526919,'5',2,'/documents/TYPO3_Logo_Guide.pdf','pdf','application/pdf','TYPO3_Logo_Guide.pdf','197919fe88902e9a6209b30a3d5b99003dc6295b',210627,1449162646,1449162646,0,0,0,'980c9443c67110b59fdd083daccbe0b108394516','5d6a1e443f8729a78897e1aa19ab65c674636c50'),(37,0,1459531804,'2',2,'/images/TYPO3-Logo-8bit.png','png','image/png','TYPO3-Logo-8bit.png','d59df0702c421d139843153db3946db3ea77112b',35946,1449162646,1449162646,0,0,0,'45fedf88dc42f2c1bbea6bc0c13f6b267e33c68a','c1a406ab82b5588738d1587da2761746ec584a6c'),(42,0,1502446595,'2',0,'/typo3/sysext/core/Resources/Public/Icons/Flags/SVG/GB.svg','svg','image/svg+xml','GB.svg','97e73611692a832d04321350cf269490c1287e47',473,1502444498,1501001628,0,0,0,'5ae7cf3c8e3e584400d98cf833a9a5bfbb14b495','3e825de455c565727430a41758ff88c16f4249b6'),(41,0,1460111600,'2',2,'/images/bootstrap_content_elements.png','png','image/png','bootstrap_content_elements.png','8c28fd9509b8273f614cf7edbb8f2fb2b74f5fdf',288113,1460111558,1459532881,0,0,0,'81cb8608b39073fce608130368520779fd5419d9','c1a406ab82b5588738d1587da2761746ec584a6c'),(43,0,1502446596,'2',0,'/typo3/sysext/core/Resources/Public/Icons/Flags/SVG/FR.svg','svg','image/svg+xml','FR.svg','039a73055773ac3aa70bbfddb2505a2fb45aae1a',194,1502444498,1501001628,0,0,0,'636721d8c98a4ba592ab0a8b561d10923632e6e7','3e825de455c565727430a41758ff88c16f4249b6'),(44,0,1502446596,'2',0,'/typo3/sysext/core/Resources/Public/Icons/Flags/SVG/DE.svg','svg','image/svg+xml','DE.svg','aec41592917284ddb826cff304523728403d93f9',214,1502444498,1501001628,0,0,0,'73cd7eab897851219576a2c13dad370584ca50ee','3e825de455c565727430a41758ff88c16f4249b6');
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
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text,
  `category` int(11) NOT NULL DEFAULT '0',
  `recursive` smallint(6) NOT NULL DEFAULT '0',
  `l10n_state` text,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
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
  `l10n_state` text,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,2,'A1',400,150,NULL,NULL,0,NULL),(2,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,3,'A4',260,260,NULL,NULL,0,NULL),(3,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,4,'B2',400,200,NULL,NULL,0,NULL),(4,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,5,'B4',260,260,NULL,NULL,3,NULL),(5,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,6,'C3',400,260,NULL,NULL,3,NULL),(6,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,7,'C4',260,260,NULL,NULL,3,NULL),(7,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,8,'Carousel 01',1170,332,NULL,NULL,2,NULL),(8,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,9,'Carousel 02',1170,332,NULL,NULL,2,NULL),(9,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,10,'Carousel 03',1170,332,NULL,NULL,2,NULL),(10,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,11,'Carousel 04',1170,332,NULL,NULL,2,NULL),(11,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,12,'D4',260,260,NULL,NULL,0,NULL),(12,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,13,'E5',260,400,NULL,NULL,0,NULL),(13,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,14,'F6',200,400,NULL,NULL,0,NULL),(14,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,15,'Kasper skarhoj',401,600,NULL,NULL,0,NULL),(15,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,16,'Team t3board10',1024,683,NULL,NULL,0,NULL),(16,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,17,'TYPO3 logo 8bit',3444,943,NULL,NULL,0,NULL),(17,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,18,'TYPO3 image1',768,1024,NULL,NULL,0,NULL),(18,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,19,'TYPO3 image2',1024,768,NULL,NULL,0,NULL),(19,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,20,'TYPO3 image3',1024,683,NULL,NULL,0,NULL),(20,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,21,'TYPO3 image4',1024,474,NULL,NULL,0,NULL),(21,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,22,'TYPO3 image5',1024,683,NULL,NULL,2,NULL),(22,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,23,'TYPO3 image6',1024,683,NULL,NULL,2,NULL),(23,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,24,'TYPO3 image7',1024,683,NULL,NULL,2,NULL),(24,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,25,'TYPO3 image8',1024,683,NULL,NULL,2,NULL),(25,0,1459530147,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,26,'TYPO3 image9',1024,768,NULL,NULL,2,NULL),(26,0,1413533836,1411313458,1,0,0,'',0,0,0,'',0,0,0,0,0,0,27,'TYPO3 image10',683,1024,NULL,NULL,0,NULL),(27,0,1413533836,1411313472,1,0,0,'',0,0,0,'',0,0,0,0,0,0,1,'TYPO3 logo guide',0,0,NULL,NULL,0,NULL),(28,0,1411313509,1411313508,1,0,0,'',0,0,0,'',0,0,0,0,0,0,28,NULL,128,128,NULL,NULL,0,NULL),(29,0,1411313575,1411313572,1,0,0,'',0,0,0,'',0,0,0,0,0,0,29,NULL,16,11,NULL,NULL,0,NULL),(30,0,1411313575,1411313572,1,0,0,'',0,0,0,'',0,0,0,0,0,0,30,NULL,16,11,NULL,NULL,0,NULL),(31,0,1411313575,1411313572,1,0,0,'',0,0,0,'',0,0,0,0,0,0,31,NULL,16,11,NULL,NULL,0,NULL),(32,0,1411313575,1411313572,1,0,0,'',0,0,0,'',0,0,0,0,0,0,32,NULL,114,114,NULL,NULL,0,NULL),(33,0,1426086534,1426086515,1,0,0,'',0,0,0,'',0,0,0,0,0,0,33,NULL,300,225,NULL,NULL,0,NULL),(35,0,1455555165,1455555164,1,0,0,'',0,0,0,'',0,0,0,0,0,0,35,NULL,114,114,NULL,NULL,0,NULL),(36,0,1459526921,1459526921,1,0,0,'',0,0,0,'',0,0,0,0,0,0,36,NULL,0,0,NULL,NULL,0,NULL),(37,0,1459531804,1459531804,1,0,0,'',0,0,0,'',0,0,0,0,0,0,37,NULL,3444,943,NULL,NULL,0,NULL),(41,0,1460111600,1460111599,1,0,0,'',0,0,0,'',0,0,0,0,0,0,41,'Bootstrap content elements',991,934,NULL,NULL,0,NULL),(42,0,1502446596,1502446595,1,0,0,'',0,0,0,'',0,0,0,0,0,0,42,NULL,1200,600,NULL,NULL,0,NULL),(43,0,1502446596,1502446595,1,0,0,'',0,0,0,'',0,0,0,0,0,0,43,NULL,900,600,NULL,NULL,0,NULL),(44,0,1502446596,1502446595,1,0,0,'',0,0,0,'',0,0,0,0,0,0,44,NULL,1000,600,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
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
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
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
  `crop` varchar(4000) NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT '0',
  `l10n_state` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,51,1410723955,1337721280,0,8,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',1,246,'tt_content','image',0,'sys_file','','','','','',0,NULL),(82,51,1410723433,1337721281,0,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',82,214,'tt_content','image',0,'sys_file','','Group photo at T3BOARD10<br />Photo by (c) <a href=\"http://www.flickr.com/photos/jocrau/4408947675/in/set-72157623535402924/\" target=\"_blank\">Jochen Rau</a>','','','',0,NULL),(150,51,1410723659,1374067469,1,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',83,135,'tt_content','image',1,'sys_file','','','','','',0,NULL),(151,121,1426266508,1426266472,1,256,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',20,424,'tt_content','settings.imgGalleryFalImageItems',1,'sys_file',NULL,NULL,NULL,'','',0,NULL),(152,121,1426266508,1426266472,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',22,424,'tt_content','settings.imgGalleryFalImageItems',2,'sys_file',NULL,NULL,NULL,'','',0,NULL),(153,121,1426266508,1426266472,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',23,424,'tt_content','settings.imgGalleryFalImageItems',4,'sys_file',NULL,NULL,NULL,'','',0,NULL),(154,121,1426266550,1426266508,1,32,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',24,424,'tt_content','settings.imgGalleryFalImageItems',3,'sys_file',NULL,NULL,NULL,'','',0,NULL),(157,35,1426326507,1426326507,1,128,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',27,0,'','',0,'sys_file',NULL,NULL,NULL,'','',0,NULL),(158,35,1426326791,1426326650,1,64,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',26,114,'tt_content','media',1,'sys_file',NULL,NULL,NULL,'','',0,NULL),(160,35,1426326841,1426326791,1,16,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',27,114,'tt_content','media',2,'sys_file',NULL,NULL,NULL,'','',0,NULL),(162,35,1426326841,1426326805,1,4,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',23,114,'tt_content','media',3,'sys_file',NULL,NULL,NULL,'','',0,NULL),(164,35,1459527149,1459527149,1,2,0,0,0,0,0,'',0,0,0,0,0,0,0,0,'',36,114,'tt_content','media',4,'sys_file',NULL,NULL,NULL,'','',0,NULL);
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
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (2,0,1426180252,1337721279,0,0,'speciality/public','','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/speciality_distribution/public/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,NULL,1,1),(3,0,1402977387,1385220653,1,0,'speciality/restricted','','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/speciality_distribution/restricted/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,0,1,1,'',0,1),(1,0,1426085148,1337721279,0,0,'public','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/user_upload/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,NULL,0,1);
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
  `title` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
INSERT INTO `sys_filemounts` VALUES (6,0,1385220486,'public:/','/',1,0,0,64,'',0);
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
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  `language_isocode` varchar(2) NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1449163054,0,'French','fr',0,'fr',0),(2,0,1449163102,0,'German','de',0,'de',0);
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
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
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details` text,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details_nr` smallint(6) NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
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
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
INSERT INTO `tx_scheduler_task_group` VALUES (1,0,1456237260,1456237254,1,0,256,0,'System maintenance',''),(2,0,1456237321,1456237321,1,0,512,0,'Notifications',''),(3,0,1456237408,1456237353,1,0,768,0,'Files',''),(4,0,1456237438,1456237438,1,0,1024,0,'Automatic update','');
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;

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
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `subgroup` tinytext,
  `TSconfig` text,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
INSERT INTO `fe_groups` VALUES (1,29,1258481005,1258479481,4,'Customers',0,'',0,'Visitors who are members of this group can login on page \'Customer login\' to get access to the protected pages below that page','','','','30'),(2,29,1258481134,1258481134,4,'Others',0,'',0,'This is a dummy group for visitors who have an account but are not member of any specific group','','','','');
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  `description` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
INSERT INTO `fe_users` VALUES (1,29,1277033438,'customer1','$P$C6hakL1AcWGupkftzFCB1o9d71Jn4w1','1',0,0,0,'John Doe','','','','','1258479637','4','john@doe.com',0,0,'',0,'','','','','','','0','','',1461939417,1461939417,'','','',NULL),(2,29,1431963762,'someone','$P$CSK6F6/UQvuoVOx5GrvgPhcE5dWqdo/','2',0,0,0,'Jane Doe','','','','','1258479661','4','jane@doe.com',0,0,'',0,'','','','','','','0','','',1431966511,1431966511,'0','','',NULL);
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
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
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
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
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) NOT NULL DEFAULT '',
  `tx_seo_titletag` tinytext,
  `tx_seo_canonicaltag` tinytext,
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `tx_fed_page_flexform` text,
  `tx_fed_page_flexform_sub` text,
  `tx_seo_robots` tinytext,
  `l10n_state` text,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
INSERT INTO `pages_language_overlay` VALUES (3,57,1,0,0,0,'',0,0,0,0,0,1360228671,1359996522,1,1,'Ecrire pour le web',0,0,0,0,'','',0,'','','','','',0,'','',1,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL),(4,1,1,0,0,0,'',0,0,0,0,0,1360092536,1360092536,1,1,'Bienvenue',0,0,0,0,'','',0,'','','','','',0,'','',1,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL),(7,57,1,0,0,0,'',0,0,0,0,0,1372412085,1372412085,1,2,'Webseiten schreiben',0,0,0,0,'','',0,'','','','','',0,'','',1,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL),(8,1,1,0,0,0,'',0,0,0,0,0,1372928248,1372927997,1,2,'Welcome to TYPO3',0,0,0,0,'','',0,'','','','','',0,'','',1,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL),(12,17,1,0,0,0,'',0,0,0,0,0,1374765873,1374765873,1,1,'Recherche',0,0,0,0,'','',0,'','','','','',0,'','',1,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
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
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(255) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
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
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clear` smallint(5) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,1536944669,256,1257766279,1,'Speciality Distribution','Speciality Distribution',0,0,0,1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:seo_basics/Configuration/TypoScript','','# Recursively include TypoScript\r\n<INCLUDE_TYPOSCRIPT: source=\"DIR:EXT:speciality/Configuration/TypoScript\" extension=\"typoscript\">\r\n','','','',0,0,0,1,0),(3,74,0,0,0,'',0,0,0,0,1,1455812741,1000000000,1360090783,1,'General storage','',0,0,0,1,3,'','\r\n','','','','',1,0,0,1,0),(7,90,0,0,0,'',0,0,0,0,0,1455566557,256,1455566557,1,'Newsletter configuration','',0,0,0,0,0,'','','plugin.tx_vhs.settings.asset >\r\n\r\n#plugin.tx_vhs.settings.asset {\r\n#  mainCss {\r\n#    path = EXT:speciality/Resources/Public/Build/StyleSheets/newsletter.css\r\n#    group = css\r\n#    type = css\r\n#  }\r\n#}\r\n\r\n','','','',0,0,0,0,0);
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
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` mediumtext,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` text,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rowDescription` text,
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(11) unsigned NOT NULL DEFAULT '0',
  `header_position` varchar(6) NOT NULL DEFAULT '',
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `tx_flux_migrated_version` varchar(11) DEFAULT NULL,
  `l10n_state` text,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=471 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (246,51,0,0,0,'',0,0,0,0,0,0,1410723955,1277199637,24,0,1792,'textmedia','From an Individual to a Vibrant Community','In 1997, Kasper Skårhøj began developing TYPO3 from scratch. At the time, the term Content Management was still widely unheard of. Today there are many open source and proprietary CMS solutions on the market, but none come close to TYPO3 in terms of sheer functionality and maturity. After more than ten years of active, incremental development, TYPO3 is effectively feature-complete, making it an extremely compelling solution for web content management.',0,0,25,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,260,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(247,51,0,0,0,'',0,0,0,0,0,0,1410723808,1277199681,24,0,1280,'textmedia','Commitment to Open Source','TYPO3 was founded on the belief that true open source, community-oriented development can make tools that surpass proprietary solutions. It is free and open to everyone, yet powerful enough for mission-critical commercial use. TYPO3 is an ever-expanding open source project that draws its strength from the imagination and ingenuity of those who use it. You do not have to pay a licensing fee for TYPO3 and you never will—leading to significantly reduced total cost of ownership (TCO) in both the short and long-term.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(239,67,0,0,0,'',0,0,0,0,0,0,1277149308,1277149308,23,0,256,'textmedia','Thank you for your feedback','An email has been sent, we appreciate your feedback.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(243,28,0,0,0,'',0,0,0,0,0,33,1277154432,1277152779,23,0,440,'textmedia','','<b>Username</b>: someone<br /><b>Password</b>: someone<br />This user only has access to the \'Any login page\'.',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','-1','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(305,102,0,0,0,'',0,0,0,0,0,0,1426359979,1366216639,1,0,1024,'textmedia','','<h1>Expand paragraph</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat <span class=\"read-more\">read-more</span>.\r\n<p class=\"read-more-content\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.&nbsp;</p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.&nbsp;\r\n<h1>Expand text within paragraph</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue <span class=\"read-more\">read more</span>...&nbsp;<span class=\"read-more-content\">Donec condimentum tellus at metus placerat feugiat.</span>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(207,16,0,0,0,'',0,0,0,0,0,0,1274455483,1274454999,19,0,256,'textmedia','Page not found','<span id=\"result_box\">The page you were looking for cannot be found. </span>You may have followed a bad link or mis-typed an URL<span id=\"result_box\">. </span>Possibly the page has been moved, discarded or is from the past. Our apologies.<br /><br />',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(28,17,0,0,0,'',0,0,0,0,0,0,1374765915,1258456907,4,0,384,'list','Plugin: search',NULL,0,0,0,1,0,0,0,0,0,NULL,'',0,0,0,'','','',0,'100','indexed_search',1,0,NULL,0,'','',0,0,0,-1,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(31,75,0,0,0,'',0,0,0,0,0,0,1360089722,1258479179,4,0,256,'login','Login box',NULL,0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"showForgotPassword\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\">29</value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_redirect\">\n            <language index=\"lDEF\">\n                <field index=\"redirectMode\">\n                    <value index=\"vDEF\">logout</value>\n                </field>\n                <field index=\"redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"redirectPageLogin\">\n                    <value index=\"vDEF\">31</value>\n                </field>\n                <field index=\"redirectPageLoginError\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLogout\">\n                    <value index=\"vDEF\">28</value>\n                </field>\n                <field index=\"redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_messages\">\n            <language index=\"lDEF\">\n                <field index=\"welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(32,28,0,0,0,'',0,0,0,0,0,0,1258481622,1258481622,4,0,512,'textmedia','You can now view the protected pages!','You are logged in, so you can now view the protected pages which you can find in the navigation menu on the left.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','-2','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(33,28,0,0,0,'',0,0,0,0,0,0,1371328947,1258482129,4,0,416,'textmedia','Login to this website','You are currently not logged in. Visitors who have an account can login to the website to get access to protected pages and content on this website.\r\nBy default this website has 2 user accounts installed which you can use to test this feature:\r\n<strong>Username</strong>: customer1<br /><strong>Password:</strong> customer1<br />This user has access to all protected content on the default site.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','-1','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(135,51,0,0,0,'',0,0,0,0,0,3,1410723659,1258560852,12,0,768,'textmedia','TYPO3 - The Enterprise CMS','TYPO3 is a free, open source content management framework designed to simplify the creation of feature-rich websites that can be updated by nontechnical editors. It is written in PHP and is compatible with a number of popular databases, including MySQL. \r\n<h2>Feature-rich and Extensible Core</h2>\r\nTYPO3 stands out among other content management systems because of the impressive array of functionality that is incorporated into its core. This extensive core functionality allows users to quickly develop sophisticated sites with out-of-the-box TYPO3 installations. Moreover, TYPO3\'s well-documented extension-based architecture makes it possible for the system to grow to meet the unique needs of each individual or organization. During the course of the last ten years, tens of thousands of TYPO3 service providers and enthusiasts have created over 500,000 sites, including\r\n<ul><li>global, multi-language enterprise solutions</li><li>corporate web portals</li><li>community and government web portals </li><li>enterprise web applications</li><li>full-featured eCommerce sites</li><li>online brochure and catalog sites</li><li>small business sites</li><li>nonprofit web sites</li><li>personal and corporate weblogs</li></ul>\r\n<h2>Dedicated to Open Source</h2>\r\nTYPO3 is maintained by a nonprofit core development team and an active worldwide community of users. TYPO3 operates under the <link http://www.gnu.org/licenses/gpl.html - external-link-new-window>GPL license</link>.',1,125,18,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,1,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(63,43,0,0,0,'',0,0,0,0,0,0,1277082949,1258542915,4,0,256,'textmedia','','You can insert <link 43 - internal-link>internal links</link> (links to pages within the website), <link http://typo3.org - external-link-new-window>external links</link> (links to external sites) or <link mailto:test@test.net - mail>e-mail links</link> (links that open the user\'s email client when clicked).',0,0,0,0,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,140,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(64,43,0,0,0,'',0,0,0,0,0,0,1438538389,1258542915,4,0,128,'textmedia','Examples of Rich Text Content Elements ','<strong>Continuous text:</strong> text, optional in <strong>bold</strong> or <em>italic</em> or in a combination of<em><strong> bold and italic</strong></em>. \r\n<strong>Special characters can be used</strong>: @ © ® ¢ ¼ ½ ¾ § ± a² m³ Ω π µ γ β α H<sub>2</sub>O\r\n<strong>Text in foreign languages can be mixed on one page. </strong><br />The font has to be installed on the device though:\r\ncyrillic: Русская версия <br />chinese: 中文版<br />arabic: <span lang=\"ar\" xml:lang=\"ar\">الْعَرَبيّة</span> \r\n<h3>Paragraph with image left</h3>\r\n<div class=\"indent\"><img class=\"image-left img-responsive\" src=\"fileadmin/speciality_distribution/public/_processed_/csm_typo3_image9_a3b7e5296b.jpg\" title=\"TYPO3 image9\" data-htmlarea-file-uid=\"26\" data-htmlarea-file-table=\"sys_file\" width=\"240\" height=\"180\" alt=\"\" style=\"\" />Aenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum.</div>\r\n\r\n<h3>Paragraph with image right </h3>\r\n<div class=\"indent\"><img class=\"image-right\" src=\"fileadmin/speciality_distribution/public/_processed_/csm_typo3_image9_a3b7e5296b.jpg\" title=\"TYPO3 image9\" data-htmlarea-file-uid=\"26\" data-htmlarea-file-table=\"sys_file\" width=\"240\" height=\"180\" alt=\"\" style=\"\" />Donec dui mauris, vestibulum id, venenatis at, rhoncus ut, dui. Donec elit felis, rhoncus congue, posuere vel, aliquet at, massa. Donec justo est, bibendum non, volutpat sed, eleifend quis, risus.</div>\r\n<div class=\"indent\"></div>\r\n<div class=\"indent\"><div class=\"indent\">Donec dui mauris, vestibulum id, venenatis at, rhoncus ut, dui. Donec elit felis, rhoncus congue, posuere vel, aliquet at, massa. Donec justo est, bibendum non, volutpat sed, eleifend quis, risus.</div></div>\r\n\r\n<h3>Tables </h3>\r\n<table class=\"table table-bordered\"><thead><tr><th scope=\"col\">Head 1</th><th scope=\"col\">Head 2</th><th scope=\"col\">Head 3</th><th scope=\"col\">Head 4</th></tr></thead><tbody><tr><td>Lorem</td><td>Ipsum</td><td>Dolor</td><td>Sit</td></tr><tr><td rowspan=\"1\">Amet</td><td rowspan=\"1\">Consectetur</td><td rowspan=\"1\">Lorem</td><td rowspan=\"1\">Ipsum</td></tr><tr><td rowspan=\"1\">Sit</td><td rowspan=\"1\">Dolor</td><td rowspan=\"1\">Amet</td><td rowspan=\"1\">Elit</td></tr></tbody></table>\r\n\r\n<table class=\"table tables-lines table-striped\"><thead><tr><th scope=\"col\">Head 1</th><th scope=\"col\">Head 2</th><th scope=\"col\">Head 3</th><th scope=\"col\">Head 4</th></tr></thead><tbody><tr><td>Lorem</td><td>Ipsum</td><td>Dolor</td><td>Sit</td></tr><tr><td rowspan=\"1\">Consectetur</td><td rowspan=\"1\">Amet</td><td rowspan=\"1\">Amet</td><td rowspan=\"1\">Elit</td></tr><tr><td rowspan=\"1\">Dolor</td><td rowspan=\"1\">Consectetur</td><td rowspan=\"1\">Ipsum</td><td rowspan=\"1\">Consectetur</td></tr></tbody></table>\r\n\r\n<h3> Alert boxes </h3>\r\n<p class=\"alert-success\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n<p class=\"alert-info\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n<p class=\"alert-warning\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n<p class=\"alert-error\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n<p class=\"code\"><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></p>\r\n<h3> Bulleted list </h3>\r\n<ul><li>first level</li><li>first level<ul><li>second level</li><li>second level<ul><li>third level</li><li>third level</li></ul></li></ul></li></ul>\r\n<h3> Ordered list </h3>\r\n<ol><li>first level</li><li>first level<ol><li>second level</li><li>second level<ol><li>third level</li><li>third level</li></ol></li></ol></li></ol>',0,0,8,0,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,64,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(233,4,0,0,0,'',0,0,0,0,0,0,1276897695,1276897695,22,0,128,'textmedia','Content Management Made Easy','To help get you started with TYPO3, we’ve included usage examples of the core content elements that have made TYPO3 so popular. ',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(306,102,0,0,0,'',0,0,0,0,0,0,1426405584,1366216837,1,0,256,'textmedia','','<p class=\"alert-info\">By applying the right class in the Rich Text Editor (RTE) you can make the content expandable.</p>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,3,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(114,35,0,0,0,'',0,0,0,0,0,0,1459527149,1258542915,4,0,16,'uploads','File downloads','',0,0,0,0,0,4,0,0,0,'','',0,0,0,'','','',0,'2','',1,0,'',1,'','',0,0,0,0,109,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(245,28,0,0,0,'',0,0,0,0,0,243,1277154413,1277154390,23,0,494,'textmedia','','Finally, this particular piece of text will disappear as soon as a visitor logs in. This is done by choosing \'Hide at login\' in the Access tab of the content record.',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','-1','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(118,34,0,0,0,'',0,0,0,0,0,0,1258588087,1258542915,4,0,32,'menu','Sitemap','',0,0,0,0,0,0,0,0,0,'','',0,0,0,'','','',0,'2','',1,0,NULL,0,'','',0,0,0,0,115,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(120,34,0,0,0,'',0,0,0,0,0,0,1258588139,1258542915,4,0,8,'menu','Related pages (based on keywords)','',0,0,0,0,0,0,0,0,0,'','',0,0,2,'','','',0,'2','',1,0,NULL,0,'','',0,0,0,0,126,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(211,51,0,0,0,'',0,0,0,0,0,0,1410723624,1276892076,22,0,1024,'textmedia','A Mature, Reliable CMS','TYPO3 is a mature, stable, and secure platform that has been actively developed and improved for over ten years. Unlike many newer, less sophisticated CMS solutions, TYPO3 is a full-grown, enterprise CMS that has been widely adopted by companies of all sizes across the world, and is an established standard throughout many universities, governments and organizations. ',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(216,57,0,0,0,'',0,0,0,0,0,0,1360228387,1276893579,22,0,128,'textmedia','Writing for the web…','<div class=\"maincontent\"><div><div>Writing for the web is a somewhat unusual exercise, particularly because one must have in mind two types of &quot;readers&quot;:</div>\r\n<div><ul><li>Web visitors: always in a hurry, they have the habit of scanning through information without reading all of the content in detail. The quality of the content and its structure are critical to catch their attention;</li><li>Search engines: systematic, they read everything from A to Z, but they are just machines. They do not understand poetry or humour. It is therefore necessary to help them understand your texts.</li></ul></div>\r\n<div>Basically, these two audiences are not so different to satisfy. The first is volatile (the visitor), the second is an idiot (the engine). To satisfy them, it is recommended to consider the following editorial techniques.</div>\r\n<h3> 1. Treat one theme per page</h3>\r\n<div>On average we read 25% slower on the web than on paper. The shorter and the more dense the content (ie a maximum of interesting information with a minimum of words), the more likely it will be read… and, essentially, retained.</div>\r\n<div>If it is rare that a visitor will read an entire page, the content situated under the waterline (the content that one can only see if one scrolls down the page) is looked at by only one quarter of Internet users.</div>\r\n<h3> 2. Polish your titles</h3>\r\n<div>They should be short, catchy and explicit. Use the style &quot;Heading 1&quot; (H1 tag).</div>\r\n<h3> 3. Put the conclusion first</h3>\r\n<div>Ideally, the first paragraph should summarize the content of the page (principle of the inverted pyramid). It should catch people\'s attention and stimulate them the read on further.</div>\r\n<div>The visitor wants to find rapidly what he is looking for and know what he will find when he lands on a page. Summarize in the first paragraph what he\'s going to learn in the article by using the main keywords of your topic.</div>\r\n<h3> 4. Structuring the content</h3>\r\n<div>Use subtitles (header styles 2 and 3) to facilitate reading and revive the reader\'s interest. Develop one idea per paragraph and do not write huge blocks.</div>\r\n<div>The user does not necessarily read from top to bottom in a linear fashion: he tends to scroll through the content in diagonal (&quot;<strong>F</strong>&quot; shape). He will stop on a subtitle that catches his attention, will then read the corresponding paragraph before returning to the beginning if the content is of interest to him. The reader chooses the order he wants, not the one that you have decided: the eyes scan through a page before actually reading the content in detail.</div>\r\n<h3> 5. Layout</h3>\r\n<div>Large clumsy blocks are visually indigestible: put your text in music :-)</div>\r\n<div>For the visitor, words in bold, referrals lines, visual withdrawals of paragraphs will make reading more enjoyable. Align your text to the left. Bulleted lists are another way to make reading easier and emphasize important points. Avoid whole sentences in capitals.</div>\r\n<h3> 6. Illustrate the pages</h3>\r\n<div>A page that contains one or more illustrations will be read more frequently, and as a picture is worth a thousand words ... use this opportunity to enrich the meaning of your message.</div>\r\n<h3> 7. Create links</h3>\r\n<div>Hyperlinks are the essence of the web: use this potential without abuse (too much information kills information ;-)</div>\r\n<div>For a Internet user, a link is usually a sign that one will provide further information about the topic on another page. This subject may be precisely what is of interests to him. Write explicit, semantic links (links on words that provide a good idea of what one will find) and make sure they work!</div></div></div>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(219,3,0,0,0,'',0,0,0,0,0,0,1374239370,1276894433,22,0,128,'textmedia','6,000 Extensions and Counting','TYPO3 is an extremely modular system that can be easily enhanced with custom extensions. All TYPO3 sites are built on top of the TYPO3 core, which contains the system\'s fundamental functionality. Custom extensions interact with the core through the stable, clearly documented extension API. While the TYPO3 core does change in each new release, the interfaces between extensions and the core do not, ensuring easy updates and future-proof development.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(236,2,0,0,0,'',0,0,0,0,0,0,1426280985,1276897933,22,0,64,'textmedia','You Make TYPO3 Better!','TYPO3 has always been about its users and about inspiring people to share. Share your experiences with us. Send us a note. Let us know how we can improve TYPO3 or, even better, let us know how you think you can improve TYPO3. We’re all ears!\r\n<p class=\"alert-error\">TODO: fix the contact form which is not available with EXT:fluidcontent_core.</p>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(205,2,0,0,0,'',0,0,0,0,0,0,1277150817,1258755114,2,0,128,'textmedia','About the Introduction Package','This TYPO3 Introduction Package&nbsp;is maintained at <link http://forge.typo3.org/projects/extension-introduction - external-link-new-window>forge.typo3.org</link>, which is a repository and collaborative tool used by core and community TYPO3 developers.\r\nIf you have any issues with the&nbsp;Introduction Package&nbsp;or suggestions for improvements please don’t hesitate to get in touch with us.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(212,51,0,0,0,'',0,0,0,0,0,0,1410723433,1276892231,22,0,2560,'textmedia','Why \"TYPO3?\"','In the late 1990s, after an evening of tireless development, Kasper Skårhøj—the creator of TYPO3—inadvertently entered a typo into the command line, instantly deleting over a week’s worth of work.\r\nAfter the initial shock at his mistake subsided, Kasper went back to work and eventually realized that the new code was significantly better than what he had lost.\r\nA typo, it seemed, had led him to build an even better product. Struck by this reminder that we can benefit from our mistakes, TYPO3 was born.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(214,51,0,0,0,'',0,0,0,0,0,0,1410723433,1276892701,22,0,2048,'textmedia','Community Events','There are a number of recurring TYPO3 events and conferences. Each year, the TYPO3 Community organizes a snowboard tour &quot;T3Board&quot;&nbsp;in the mountains of central Europe, giving TYPO3 developers an opportunity to meet face-to-face. Furthermore, there is an annual &quot;Developer Days&quot; event that aims to give PHP developers a chance to collaborate and focus on the TYPO3 core.\r\nThere are annual conferences held in the US and in Europe with talks aimed at web marketers, site integrators and developers. Many regions also host active TYPO3 usergroups, which are invaluable sources of shared knowledge.',0,190,17,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',1,'2','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(213,51,0,0,0,'',0,0,0,0,0,0,1410723868,1276892651,22,0,1536,'textmedia','TYPO3: Inspiring People to Share','The real driving force behind TYPO3’s development is its expanding, vibrant community of nearly 100,000 members. Over the past decade, TYPO3 has been installed more than 500,000 times, and these numbers are growing daily. This truly international&nbsp;community is composed of&nbsp;individuals and consultancies working with TYPO3 in countries across the world.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(174,35,0,0,0,'',0,0,0,0,0,172,1277151860,1258722570,2,0,8,'shortcut','About these pages','',0,0,0,1,0,0,0,0,0,'tt_content_169','',0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(180,34,0,0,0,'',0,0,0,0,0,172,1258722752,1258722752,2,0,4,'shortcut','About these pages','',0,0,0,1,0,0,0,0,0,'tt_content_169','',0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(183,43,0,0,0,'',0,0,0,0,0,172,1258722779,1258722779,2,0,64,'shortcut','About these pages','',0,0,0,1,0,0,0,0,0,'tt_content_169','',0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(215,51,0,0,0,'',0,0,0,0,0,0,1410724082,1276892870,22,0,2304,'textmedia','Join the Association','TYPO3 Association membership is open to anyone who is willing to endorse the goals and&nbsp; objectives of the TYPO3 Association.\r\nIndividuals and companies who use TYPO3 on a regular basis are encouraged to contribute by becoming a supporting member. Your support will help to ensure that TYPO3 continues to be the leading open source CMS solution.\r\n<link http://shop.typo3.org/association/membership/apply-for-membership/ref/assoc/ - external-link-new-window>Join the TYPO3 Association Today</link>.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(199,34,0,0,0,'',0,0,0,0,0,0,1277150054,1258744692,2,0,2,'textmedia','Dynamic Site Maps','<p class=\"csc-frame-frame1\">In addition to generating basic site maps based on the structure of the page tree, TYPO3 is able to build advanced site maps such as a key-word based site map of related pages.</p>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(201,43,0,0,0,'',0,0,0,0,0,0,1426405599,1258745770,2,0,1,'textmedia','','<p class=\"csc-frame-frame1 alert-info\">TYPO3 contains a sophisticated, built-in rich text editor (RTE). This editor contains all of the features one would expect from an enterprise CMS, and is highly configurable.</p>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,3,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(204,2,0,0,0,'',0,0,0,0,0,0,1426280865,1258754609,2,1,512,'mailform','','prefix = tx_form\r\nconfirmation = 1\r\npostProcessor {\r\n	1 = mail\r\n	1 {\r\n		recipientEmail = \r\n		senderEmail = \r\n	}\r\n}\r\n10 = FIELDSET\r\n10 {\r\n	legend {\r\n		value = Contact us\r\n	}\r\n	10 = TEXTLINE\r\n	10 {\r\n		name = name\r\n		value = Enter your name here\r\n		label {\r\n			value = Name\r\n		}\r\n	}\r\n	20 = TEXTLINE\r\n	20 {\r\n		name = email\r\n		label {\r\n			value = E-Mail\r\n		}\r\n	}\r\n	30 = TEXTAREA\r\n	30 {\r\n		cols = 40\r\n		rows = 5\r\n		name = enquiry\r\n		label {\r\n			value = Your enquiry\r\n		}\r\n	}\r\n	40 = SUBMIT\r\n	40 {\r\n		name = submit\r\n		value = Send Feedback\r\n	}\r\n}\r\nrules {\r\n	1 = required\r\n	1 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = name\r\n	}\r\n	2 = required\r\n	2 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = email\r\n	}\r\n	3 = email\r\n	3 {\r\n		breakOnError = 0\r\n		showMessage = \r\n		message = (john.doe@domain.com)\r\n		error = This is not a valid email address\r\n		element = email\r\n	}\r\n	4 = required\r\n	4 {\r\n		breakOnError = 0\r\n		showMessage = 1\r\n		message = *\r\n		error = This field is required\r\n		element = enquiry\r\n	}\r\n}\r\n',0,0,0,1,0,0,0,0,0,NULL,'67',0,0,0,'introduction-feedback@typo3.org','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(208,16,0,0,0,'',0,0,0,0,0,0,1274455323,1274455323,19,0,512,'menu','Sitemap',NULL,0,0,0,1,0,0,0,0,0,NULL,'1',0,0,0,'','','',0,'2','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(209,16,0,0,0,'',0,0,0,0,0,0,1277207913,1274455516,19,0,128,'textmedia','What to do','<p class=\"csc-frame-frame1\">The information might still be available.<br />You can try to look for  the information in the sitemap at this page. <br /><br />Also you can  try the <link 17 - internal-link \"Opens internal link in current window\">search</link>.</p>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,2,'','','',0,'2','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(210,51,0,0,0,'',0,0,0,0,0,0,1374238534,1276891563,22,0,3072,'textmedia','TYPO3 History','TYPO3 was conceived by Danish developer Kasper Skårhøj in 1997. The idea was to solve what had emerged as a problem for the young Internet—as websites grew, the need to separate the management of design and content became apparent.<br /><br />By August 2000, the core components were distributed to a development community that extended the concept and functionality of TYPO3 into the robust, and richly featured CMS that it is today.<br /><br />TYPO3 now runs more than 500,000 websites worldwide and powers sites for many esteemed institutions, including Cisco Systems, General Electric, Mercedes-Benz, and Harvard University.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(273,83,0,0,0,'',0,0,0,0,0,0,1379360427,1360230552,1,0,256,'html','','    <h1>Rdfa 1.1 Lite</h1>\r\n\r\n    <p>\r\n      <a href=\"http://en.wikipedia.org/wiki/RDFa\">Wikipedia</a>: RDFa is a W3C Recommendation that adds a set of attribute-level\r\n      extensions to HTML, XHTML and various XML-based document types for embedding rich metadata within Web documents.\r\n    </p>\r\n\r\n    <p>\r\n      RDFa 1.1 Lite is a simple subset of RDFa consisting of the following attributes: <strong>vocab, typeof, property, rel,\r\n      about and prefix</strong>.\r\n    </p>\r\n    <p>\r\n      Reading:\r\n    <ul>\r\n      <li>\r\n        <a href=\"http://manu.sporny.org/2011/uber-comparison-rdfa-md-uf/\">An Uber-comparison of RDFa, Microdata and\r\n          Microformats</a>\r\n      </li>\r\n      <li>\r\n        <a href=\"http://manu.sporny.org/2012/mythical-differences/\">Mythical Differences: RDFa Lite vs. Microdata</a>\r\n      </li>\r\n    </ul>\r\n    </p>\r\n\r\n\r\n    <article class=\"well\">\r\n      <h2>Person</h2>\r\n      <p vocab=\"http://schema.org/\" about=\"#manu\" typeof=\"Person\">\r\n        My name is\r\n        <span property=\"name\">Manu Sporny</span>\r\n        and you can give me a ring via\r\n        <span property=\"telephone\">1-800-555-0155</span>.\r\n      </p>\r\n\r\n      <a href=\"http://manu.sporny.org/2011/rdfa-lite/\">Whole example</a>\r\n    </article>\r\n\r\n    <article class=\"well\">\r\n\r\n      <h2>Product</h2>\r\n\r\n      <div vocab=\"http://schema.org/\" typeof=\"Product\">\r\n        <span property=\"name\">Dell UltraSharp 30\" LCD Monitor</span>\r\n\r\n        <div property=\"aggregateRating\" typeof=\"AggregateRating\">\r\n          <span property=\"ratingValue\">87</span>\r\n          out of <span property=\"bestRating\">100</span>\r\n          based on <span property=\"ratingCount\">24</span> user ratings\r\n        </div>\r\n\r\n        <div property=\"offers\" typeof=\"AggregateOffer\">\r\n          <span property=\"lowPrice\">$1250</span>\r\n          to <span property=\"highPrice\">$1495</span>\r\n          from <span property=\"offerCount\">8</span> sellers\r\n        </div>\r\n\r\n        Sellers:\r\n        <div property=\"offers\" typeof=\"Offer\">\r\n          <a property=\"url\" href=\"save-a-lot-monitors.com/dell-30.html\">\r\n            Save A Lot Monitors - $1250</a>\r\n        </div>\r\n\r\n        <div property=\"offers\" typeof=\"http://schema.org/Offer\">\r\n          <a property=\"url\" href=\"jondoe-gadgets.com/dell-30.html\">\r\n            Jon Doe\'s Gadgets - $1350</a>\r\n        </div>\r\n\r\n\r\n        <a href=\"http://www.w3.org/QA/2011/11/schemaorg_and_rdfa_11_lite_how.html\">Whole example</a>\r\n      </div>\r\n    </article>\r\n\r\n\r\n    <article class=\"well\" vocab=\"http://schema.org/\">\r\n\r\n      <h2>Article</h2>\r\n\r\n      <div property=\"breadcrumb\">\r\n        <a href=\"http://www.ibm.com/developerworks/\">IBM developerWorks</a> >\r\n        <a href=\"http://www.ibm.com/developerworks/web/\">Web development</a> >\r\n        <a href=\"http://www.ibm.com/developerworks/views/web/library.jsp\"\r\n            >Technical library</a>\r\n      </div>\r\n\r\n      <div typeof=\"Article\">\r\n\r\n        <div property=\"name\">An introduction to RDF</div>\r\n\r\n        <p property=\"author\" resource=\"#uche.ogbuji\" typeof=\"Person\">\r\n          by <span property=\"name\">Uche Ogbuji</span>, <span property=\"jobTitle\">Partner</span>,\r\n          <span property=\"worksFor\">Zepheira</span>.\r\n        </p>\r\n\r\n        <div>Published: <span property=\"datePublished\">01 Dec 2000</span></div>\r\n\r\n        <div property=\"description\">\r\n          <b>Summary</b>: This article introduces Resource Description Framework (RDF),\r\n          developed by the W3C for Web-based metadata, using XML as an interchange syntax.\r\n          RDF\'s essential aim is to make work easier for autonomous agents,\r\n          which would refine the Web by improving search engines and service directories.\r\n          Author Uche Ogbuji gives an overview of RDF aspects from schemas to usage scenarios.\r\n          The article assumes that you are already familiar with XML.\r\n        </div>\r\n\r\n        <div>Tags for this article:\r\n          <span property=\"keywords\">introduction</span>,\r\n          <span property=\"keywords\">rdf</span>,\r\n          <span property=\"keywords\">tutorial</span>\r\n          .\r\n        </div>\r\n\r\n        <div prefix=\"fben: http://www.freebase.com/ns/\">\r\n          This article\'s texts is suitable for a wide audience, with a Fog index of\r\n          <span property=\"fben:gunning_fog_index\">10.2</span>.\r\n        </div>\r\n\r\n        <a href=\"http://www.ibm.com/developerworks/xml/library/wa-rdfalite/index.html\">Whole example</a>\r\n      </div>\r\n\r\n    </article>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(220,3,0,0,0,'',0,0,0,0,0,0,1374239841,1276894540,22,0,192,'textmedia','','<h3>The TYPO3 Extension Manager</h3>\r\nTYPO3 relies on the TYPO3 extension manager— included in the TYPO3 core—for installing, activating, and deactivating extensions on a given TYPO3 installation. Extensions can be quickly imported and installed with just a couple clicks in the TYPO3 backend.\r\n<h3>Kickstarter Simplifies Extension Development</h3>\r\nThe <link http://typo3.org/extensions/repository/view/extension_builder - external-link-new-window \"Opens external link in new window\">Extension Builder</link> significantly reduces the time required to create a new TYPO3 extension, and automates the creation of interfaces for custom database records in the TYPO3 backend.&nbsp;\r\n<h3>ExtBase: TYPO3\'s Built-in MVC Framework</h3>\r\nRecent versions of TYPO3 include a built-in Model-View-Controller (MVC) framework called ExtBase, which allows developers to take advantage of this popular PHP design pattern. For more information, refer to the book <link http://docs.typo3.org/typo3cms/ExtbaseFluidBook/ - external-link-new-window \"Opens external link in new window\">Developing TYPO3 Extensions with Extbase and Fluid</link>.\r\n<h3>FLUID: Next Generation Templating</h3>\r\nFluid—TYPO3\'s next generation templating system—is used for creating custom extension templates. Fluid was created for TYPO3 6.0, now available, and was back-ported to the TYPO3 4.x branch. Fluid\'s approach to creating templates emphasizes simplicity, flexibility, extensibility, and easy of use.\r\n<h3>Extensive Configuration Options</h3>\r\nNearly every aspect of the TYPO3 backend is configurable and customizable. Backend interfaces can often be configured using TSConfig. Nearly all rendered HTML content can be configured using Typoscript, a declarative configuration language used throughout TYPO3 for controlling front-end output.<br /><br />',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(286,92,0,0,0,'',0,0,0,0,0,0,1374240486,1360335178,1,0,256,'textmedia','Add new language in the Frontend','One of the strengths of TYPO3 is the ability to support multi-language websites.&nbsp;There are a couple of things to do o add&nbsp;a new language. Very roughly, for this website: \r\n<h2>Configuration for the Frontend</h2>\r\n<ul><li>Add a record sys_language in the Backend by clicking:<br /><span style=\"font-style: italic;\">Menu web &gt; List &gt; New TYPO3 site &gt; look for section &quot;Website Language&quot; &gt; click the &quot;green&quot; button<br /><br /></span></li><li>Adjust the TypoScript configuration to your needs. Configuration is to be changed in both files:<br /><span class=\"code\">/htdocs/typo3conf/ext/speciality/Configuration/TypoScript/Config/language.ts</span><br /><span class=\"code\" style=\"font-style: italic;\">/htdocs/typo3conf/ext/speciality/Configuration/TypoScript/constants.txt</span><br /><br /></li><li>It is likely necessary to configure the language menu (to display the new language). The configuration is in the file:<br /><span class=\"code\">/htdocs/typo3conf/ext/speciality/Resources/Private/Partials/LanguageMenu.html</span><br /><br /></li><li>Real URL - the extension generating the speaking URL - must be updated as well. Open&nbsp;<span class=\"code\">htdocs/typo3conf/RealURL.php</span>&nbsp;and look for &quot;Language configuration&quot; within the file.</li></ul>\r\n<h2>Configuration for the Backend</h2>\r\n<ul><li>In the Backend, the default language is configured as English. This can be changed in<br /><span class=\"code\">/htdocs/typo3conf/ext/speciality/Configuration/TsConfig/Page/config.ts</span></li></ul>\r\nThere are also some&nbsp;<link http://docs.typo3.org/typo3cms/EditorsTutorial/Languages/Index.html - external-link-new-window>resources</link>&nbsp;for the editor that can be useful.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'1','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(225,51,0,0,0,'',0,0,0,0,0,0,1410723634,1276896100,22,0,2816,'textmedia','Need Help? Tap into the TYPO3 Consultancy Network','Many of TYPO3\'s most knowledgeable contributors are the web developers and consultants around the world who use it everyday. These <link http://typo3.org/support/professional-services/ - external-link-new-window>certified consultants</link> are among the most active members of the TYPO3 community and offer proven professional services—whether you simply need help with hosting or a complete development strategy for building a new website.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(227,64,0,0,0,'',0,0,0,0,0,0,1371217430,1276896294,22,0,64,'textmedia','Extensive Documentation','\r\n<div>As a global, user-supported project, documentation for TYPO3&nbsp;exists in many locations (and, thankfully, in many different languages). For the answer to most questions look first to the central <link http://typo3.org/documentation/document-library/ - external-link-new-window \"Opens external link in new window\">TYPO3 Document Library</link> where you will find several useful tutorials, and guides to installation, configuration, and getting started with TYPO3.</div>\r\nThe Getting Started tutorial is based on the Introduction Package and is the number one resource to get you on your way with TYPO3. The Getting Started tutorial\'s permanent URL is: <link http://typo3.org/documentation/document-library/tutorials/doc_tut_quickstart/current/ - external>http://typo3.org/documentation/document-library/tutorials/doc_tut_quickstart/current/</link>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(228,64,0,0,0,'',0,0,0,0,0,0,1426283856,1276896723,22,0,128,'textmedia','','<h3>Fluid documentation</h3>\r\nFluid is the new templating system which is extensively used in the Bootstrap Package. All the code for the view logic is moved to the template. Find out how it works:\r\n<ul><li><link http://wiki.typo3.org/Fluid - external-link-new-window \"Opens external link in new window\">Basic documentation</link> about Fluid.</li><li><link https://fluidtypo3.org/ - external-link-new-window \"Opens external link in new window\">Main features</link> of the FluidTYPO3 extension family, focused on integrating Fluid with TYPO3.</li><li><link https://fluidtypo3.org/viewhelpers/ - external-link-new-window \"Opens external link in new window\">API page</link> of the main View Helpers shipped by the Bootstrap Package.</li></ul>\r\n<h3>TYPO3 Wiki</h3>\r\nFind additional documentation in the <link http://wiki.typo3.org/index.php/Main_Page - external-link-new-window>TYPO3 Wiki</link>, which provides how-to guides conveniently classified for different types of TYPO3 users.\r\n<ul><li><link http://wiki.typo3.org/index.php/Overview_User_Manuals - external-link-new-window>Editors</link> can find documents on how to handle and manage their content.</li><li><link http://wiki.typo3.org/index.php/Overview_Administrator_Manuals - external-link-new-window>Administrators</link> can find documents on how to manage security, users, and fine-tune performance.</li><li><link http://wiki.typo3.org/index.php/Overview_Developer_Manuals - external-link-new-window>Developers</link> can find how-to guides to get started in creating their own TYPO3 extensions.</li></ul>\r\n<h3>TYPO3 API Documentation</h3>\r\nThe TYPO3 source code contains abundant internal documentation, which will allow developers to understand many functions and features just by browsing through the various classes and methods. Because TYPO3 uses JavaDoc style documentation, it is possible to automatically create a complete documentation of the TYPO3 core.<br /><br />Additionally, the <link http://typo3.org/documentation/api/ - external-link-new-window>TYPO3 Core APIs</link> manual from the Documentation Library describes important components of the API, and gives many examples how to use it.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(234,4,0,0,0,'',0,0,0,0,0,0,1374243750,1276897754,22,0,192,'textmedia','','These examples illustrate how, straight out-of-the-box, TYPO3 delivers a vast amount of freedom to content editors. Unlike more static content management systems, TYPO3 content management is highly object-oriented and granular. Click on any of the links in the secondary navigation, to the left, to see examples of each core content element.\r\nFeel free to log into the TYPO3 backend to see how easily these content elements (and pages) can be created, deleted, and modified!',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(235,4,0,0,0,'',0,0,0,0,0,0,1374243978,1276897820,22,0,64,'textmedia','Limitless Possibilities','The content elements that appear on these subpages are just the core content elements. TYPO3 can be easily extended to include custom content elements. It is also possible to create dynamic, database-driven content elements (plug-ins) using the TYPO3 extension API. <link http://typo3.org/extensions/repository/ - external-link-new-window \"Opens external link in new window\">Visit the TER</link> to see some of the thousands of readily available TYPO3 plugins.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(250,71,0,0,1,'INITIAL PLACEHOLDER',1,0,0,0,0,0,1290049001,1290049001,1,0,256,'textmedia','This content is new',NULL,0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','0','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(251,-1,250,1,1,'First draft version',-1,0,0,0,0,0,1290049001,1290049001,1,0,256,'textmedia','This content is new','This is some content that is in a Draft Workspace.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(252,-1,219,1,1,'Auto-created for WS #1',0,0,0,0,0,219,1290049034,1290049034,1,0,128,'textmedia','4,500 Extensions and Counting','TYPO3 is an extremely modular system that can be easily enhanced with custom extensions. All TYPO3 sites are built on top of the TYPO3 core, which contains the system\'s fundamental functionality. Custom extensions interact with the core through the stable, clearly documented extension API. While the TYPO3 core does change in each new release, the interfaces between extensions and the core do not, ensuring easy updates and future-proof development.\r\nAnd TYPO3 4.5 comes with long time support!',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(259,57,0,0,0,'',0,0,0,0,0,216,1360228660,1359996535,1,0,384,'textmedia','Ecrire pour le web','<div class=\"maincontent\"><div>Ecrire pour le web est un exercice un peu particulier, notamment parce qu\'il faut avoir en tête deux types de «lecteurs»:\r\n<ul><li>Les internautes: toujours pressés, ils ont pris l’habitude de gloutonner l’information sans la lire. La qualité du contenu et sa structuration sont primordiales pour les intéresser;</li><li>Les moteurs de recherche: systématiques, ils lisent tout de A à Z, mais ce ne sont que des machines. Ils ne comprennent rien à la poésie ou au second degré. Il faut donc les aider à comprendre vos textes.</li></ul>\r\nSur le fond, ces deux publics ne sont pas si différents à satisfaire. Le premier est volatile (le visiteur), le deuxième est idiot (le moteur). Pour les satisfaire, il est recommandé de tenir compte des techniques de rédactions suivantes.\r\n<h3>1. Traiter une seule thématique par page</h3>\r\nEn moyenne on lit 25% moins vite sur le web que sur le papier. Plus le contenu sera <strong>court</strong> et surtout <strong>dense</strong> (dire un maximum de choses intéressantes avec un minimum de mots), plus il a de chances d\'être lu… et surtout retenu.\r\nS\'il est rare qu’un visiteur lise une page dans son intégralité, le contenu qui se trouve sous la ligne de flottaison (le contenu que l\'on ne voit qu\'en scrollant la page vers le bas) n\'est regardé que par 1/4 des internautes.\r\n<h3>2. Soigner les titres</h3>\r\nIls doivent être <strong>courts</strong>, <strong>accrocheurs</strong> et <strong>explicites</strong>. Utilisez le style «Titre 1» (balise H1).\r\n<h3>3. Mettre la conclusion en premier</h3>\r\nDans l’idéal, le premier paragraphe résume le contenu de la page (principe de la pyramide inversée). Il doit retenir l’attention et donner envie d’aller plus loin…\r\nLe visiteur veut trouver rapidement ce qu\'il cherche et savoir ce qu\'il va trouver. Résumez-lui dans ce premier paragraphe ce qu’il a à gagner à lire la suite en utilisant les <strong>mots-clés</strong> principaux de votre sujet.\r\n<h3>4. Structurer le contenu</h3>\r\nUtilisez des <strong>intertitres</strong> (styles Titre 2 et 3) pour faciliter la lecture et relancer l\'intérêt du lecteur. Développez une seule idée par paragraphe et ne rédigez pas d’énormes pavés.\r\nL’internaute ne lit pas forcément de haut en bas de façon linéaire: il scroll, il lit en diagonale (en &quot;<strong>F</strong>&quot;), il s’arrête sur un intertitre qui l’interpelle, lit le paragraphe correspondant, revient ensuite au début si le contenu lui plait. En fait, il lit dans l’ordre qu\'il choisit, pas dans celui que vous aurez décidé: l’oeil scanne une page avant de lire réellement les contenus détaillés.\r\n<h3>5. Mise en page</h3>\r\nLe gros pâté lourdaud est visuellement indigeste: mettez votre texte en musique :-)\r\nPour le visiteur, des <strong>mots en gras</strong>, des renvois de lignes, des retraits visuels de paragraphe vont rendre la lecture bien plus agréable. Alignez votre texte à gauche. Les <strong>listes à puces</strong> sont un autre moyen de rendre la lecture plus facile et de mettre l’accent sur des points importants. Evitez les phrases entières en majuscules.\r\n<h3>6. Illustrer les pages</h3>\r\nUne page qui contient une ou plusieurs images sera plus lue, et comme une image vaut mille mots… profitez d\'enrichir le sens de votre message par ce biais.\r\n<h3>7. Créer des liens</h3>\r\nLe lien hypertexte est l’essence même du web, profitez-en… sans en abuser (trop d\'infos tuent l\'info ;-)\r\nPour l’internaute, un lien est généralement le signe que l’on va préciser, afficher plus d’information sur ce sujet dans une autre page. Ce sujet est peut-être précisément celui qui l’intéresse, profitez-en. Rédigez des <strong>hyperliens explicites</strong> (lien sur des mots qui disent ce vers quoi on va) et assurez-vous qu\'ils fonctionnent !</div></div>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,1,0,'','',0,'',216,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(271,80,0,0,0,'',0,0,0,0,0,0,1426405956,1360228985,1,0,256,'textmedia','Semantic Web','<p class=\"alert-info\">This page gives a few hints about Semantic techniques which can be picked while developing custom code, in an extension for instance.</p>\r\nThe <strong>Semantic Web</strong> enables people to share <em>content</em> beyond the boundaries of applications and websites.&nbsp; [<link http://semanticweb.org/wiki/Main_Page - external-link-new-window>source</link>]. All are recommendations of <link http://www.w3.org/TR/rdfa-lite/ - external-link-new-window>W3C</link>. \r\n<ul><li><link 84 - internal-link>Microdata</link> which seems to be recommended by search engines (e.g <link http://support.google.com/webmasters/bin/answer.py?hl=en&answer=99170 - external-link-new-window>Google</link>)</li><li><link 83 - internal-link>Rdfa Lite 1.1</link></li><li><link 97 - internal-link \"Opens internal link in current window\">ARIA</link> the <strong>Accessible Rich Internet Applications</strong> specification from the W3C\'s <link http://www.w3.org/WAI/ - \"external external-icon\" http://www.w3.org/WAI/>Web Accessibility Initiative</link></li></ul>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(272,84,0,0,0,'',0,0,0,0,0,0,1360229869,1360229869,1,0,256,'html','','\r\n\r\n      <h1>Microdata</h1>\r\n\r\n      <p>\r\n        Wikipedia: <a href=\"http://en.wikipedia.org/wiki/Microdata_%28HTML%29\">Microdata</a> is a WHATWG HTML\r\n        specification used to nest semantics within existing content on web pages. Search\r\n        engines, web crawlers, and browsers can extract and process Microdata from a web page and use it to provide a\r\n        richer\r\n        browsing experience for users.\r\n\r\n      </p>\r\n\r\n      <p>\r\n        Microdata is explicitly <a href=\"http://support.google.com/webmasters/bin/answer.py?hl=en&answer=99170\">supported</a> by Google for\r\n\r\n      <ul>\r\n        <li><a href=\"http://support.google.com/webmasters/bin/answer.py?answer=146645\">Reviews</a></li>\r\n        <li><a href=\"http://support.google.com/webmasters/bin/answer.py?answer=146646\">People</a></li>\r\n        <li><a href=\"http://support.google.com/webmasters/bin/answer.py?answer=146750\">Products</a></li>\r\n        <li><a href=\"http://support.google.com/webmasters/bin/answer.py?answer=146861\">Businesses and organizations</a></li>\r\n        <li><a href=\"http://support.google.com/webmasters/bin/answer.py?answer=173379\">Recipes</a></li>\r\n        <li><a href=\"http://support.google.com/webmasters/bin/answer.py?answer=164506\">Events</a></li>\r\n        <li><a href=\"http://support.google.com/webmasters/bin/answer.py?answer=1623047\">Music</a></li>\r\n      </ul>\r\n\r\n      </p>\r\n\r\n      <p>\r\n        Check the source code of the page to see the microdata markers in action. <a\r\n          href=\"http://diveintohtml5.info/extensibility.html\">Sources</a> of the examples.\r\n      </p>\r\n\r\n\r\n      <article itemscope=\"\" itemtype=\"http://data-vocabulary.org/Event\" class=\"well\">\r\n        <h1 itemprop=\"summary\">Event</h1>\r\n        <img itemprop=\"photo\" class=\"me\" src=\"http://diveintohtml5.info/examples/gdd-2009-prague-pilgrim.jpg\" alt=\"[Mark Pilgrim at podium]\" height=\"200\"\r\n             width=\"300\">\r\n\r\n        <p itemprop=\"description\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc\r\n          non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed\r\n          nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at\r\n          metus placerat feugiat. </p>\r\n\r\n        <p>2009 November 6,\r\n          <time itemprop=\"startDate\" datetime=\"2009-11-06T08:30+01:00\">8:30</time>\r\n          –\r\n          <time itemprop=\"endDate\" datetime=\"2009-11-06T20:30+01:00\">20:30</time>\r\n        </p>\r\n        <p itemprop=\"location\" itemscope=\"\" itemtype=\"http://data-vocabulary.org/Organization\">\r\n          <span itemprop=\"name\">Congress Center</span><br>\r\n      <span itemprop=\"address\" itemscope=\"\" itemtype=\"http://data-vocabulary.org/Address\">\r\n        <span itemprop=\"street-address\">5th května 65</span><br>\r\n        <span itemprop=\"postal-code\">140 21</span>\r\n        <span itemprop=\"locality\">Praha 4</span><br>\r\n        <span itemprop=\"country-name\">Czech Republic</span>\r\n      </span>\r\n        </p>\r\n    <span itemprop=\"geo\" itemscope=\"\" itemtype=\"http://data-vocabulary.org/Geo\">\r\n      <meta itemprop=\"latitude\" content=\"50.047893\">\r\n      <meta itemprop=\"longitude\" content=\"14.4491\">\r\n    </span>\r\n\r\n        <p style=\"margin-top:1.75em\">\r\n          <a itemprop=\"url\" href=\"http://diveintohtml5.info/examples/event-plus-microdata.html\">\r\n            Check out the whole example.\r\n          </a>\r\n        </p>\r\n      </article>\r\n      <!-- /article event -->\r\n\r\n\r\n      <article itemscope=\"\" itemtype=\"http://data-vocabulary.org/Review\" class=\"well\">\r\n        <h1 itemprop=\"itemreviewed\">Ratings</h1>\r\n\r\n        <p><span class=\"a\">★★★★☆</span> (<span itemprop=\"rating\">4</span> stars out of 5)</p>\r\n\r\n        <p itemprop=\"summary\">New York-style pizza right in historic downtown Apex</p>\r\n\r\n        <p itemprop=\"description\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc\r\n          non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed\r\n          nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at\r\n          metus placerat feugiat. </p>\r\n        <a class=\"simple\" title=\"Find Anna\'s Pizzeria on Google Maps\"\r\n           href=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;gl=us&amp;g=100+North+Salem+Street,+Apex,+NC+27502&amp;q=anna\'s+pizzeria+apex+nc&amp;ie=UTF8&amp;hq=anna\'s+pizzeria&amp;hnear=Apex,+NC&amp;ll=35.73136,-78.849349&amp;spn=0.020624,0.038581&amp;z=15&amp;iwloc=A\"><img\r\n            src=\"http://diveintohtml5.info/examples/freedo_Glossy_Globe.png\" alt=\"[globe]\" height=\"100\" width=\"100\"></a>\r\n\r\n        <p itemprop=\"location\" itemscope=\"\" itemtype=\"http://data-vocabulary.org/Address\">\r\n          <span itemprop=\"street-address\">100 North Salem Street</span><br>\r\n          <span itemprop=\"locality\">Apex</span>,\r\n          <span itemprop=\"region\">NC</span>\r\n          <span itemprop=\"postal-code\">27502</span><br>\r\n          <span itemprop=\"country-name\">USA</span>\r\n        </p>\r\n    <span itemprop=\"geo\" itemscope=\"\" itemtype=\"http://data-vocabulary.org/Geo\">\r\n      <meta itemprop=\"latitude\" content=\"35.730796\">\r\n      <meta itemprop=\"longitude\" content=\"-78.851426\">\r\n    </span>\r\n\r\n        <p class=\"r\">— reviewed by <span itemprop=\"reviewer\">Mark Pilgrim</span>, last updated\r\n          <time itemprop=\"dtreviewed\" datetime=\"2010-03-31\">March 31, 2010</time>\r\n        </p>\r\n\r\n        <p style=\"margin-top:1.75em\">\r\n          <a itemprop=\"url\" href=\"http://diveintohtml5.info/examples/review-plus-microdata.html\">\r\n            Check out the whole example.\r\n          </a>\r\n        </p>\r\n      </article>\r\n      <!-- /article rating -->\r\n\r\n      <section itemscope=\"\" itemtype=\"http://data-vocabulary.org/Person\" class=\"well\">\r\n        <img itemprop=\"photo\" class=\"me\" src=\"http://diveintohtml5.info/examples/2000_05_mark.jpg\"\r\n             alt=\"[Mark Pilgrim, circa 2000]\" height=\"250\" width=\"204\">\r\n\r\n        <h1>Contact Information</h1>\r\n        <dl>\r\n          <dt>Name</dt>\r\n          <dd itemprop=\"name\">Mark Pilgrim</dd>\r\n\r\n          <dt>Position</dt>\r\n          <dd><span itemprop=\"title\">Developer advocate</span> for\r\n            <span itemprop=\"affiliation\">Google, Inc.</span></dd>\r\n\r\n          <dt>Mailing address</dt>\r\n          <dd itemprop=\"address\" itemscope=\"\" itemtype=\"http://data-vocabulary.org/Address\">\r\n            <span itemprop=\"street-address\">100 Main Street</span><br>\r\n            <span itemprop=\"locality\">Anytown</span>,\r\n            <span itemprop=\"region\">PA</span>\r\n            <span itemprop=\"postal-code\">19999</span><br>\r\n            <span itemprop=\"country-name\">USA</span>\r\n          </dd>\r\n        </dl>\r\n        <h1>My Digital Footprints</h1>\r\n        <ul>\r\n          <li><a href=\"http://diveintomark.org/\" itemprop=\"url\">weblog</a></li>\r\n          <li><a href=\"http://www.google.com/profiles/pilgrim\" itemprop=\"url\">Google profile</a></li>\r\n          <li><a href=\"http://www.reddit.com/user/MarkPilgrim\" itemprop=\"url\">Reddit.com profile</a></li>\r\n          <li><a href=\"http://www.twitter.com/diveintomark\" itemprop=\"url\">Twitter</a></li>\r\n        </ul>\r\n\r\n        <p style=\"margin-top:1.75em\">\r\n          <a itemprop=\"url\" href=\"http://diveintohtml5.info/examples/person-plus-microdata.html\">\r\n            Check out the whole example.\r\n          </a>\r\n        </p>\r\n      </section>\r\n      <!-- /section person -->\r\n\r\n      <article itemscope=\"\" itemtype=\"http://data-vocabulary.org/Organization\" class=\"well\">\r\n        <h1 itemprop=\"name\">Organization.</h1>\r\n        <a class=\"simple\" title=\"Find Google, Inc. on Google Maps\"\r\n           href=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=1600+amphitheatre+parkway+mountain+view+ca&amp;sll=37.0625,-95.677068&amp;sspn=47.569986,93.076172&amp;ie=UTF8&amp;hq=&amp;hnear=1600+Amphitheatre+Pkwy,+Mountain+View,+Santa+Clara,+California+94043&amp;z=16&amp;iwloc=r0\">\r\n          <img src=\"http://diveintohtml5.info/examples/freedo_Glossy_Globe.png\" alt=\"[globe]\" height=\"100\" width=\"100\">\r\n        </a>\r\n\r\n        <p itemprop=\"address\" itemscope=\"\" itemtype=\"http://data-vocabulary.org/Address\">\r\n          <span itemprop=\"street-address\">1600 Amphitheatre Parkway</span><br>\r\n          <span itemprop=\"locality\">Mountain View</span>,\r\n          <span itemprop=\"region\">CA</span>\r\n          <span itemprop=\"postal-code\">94043</span>\r\n          <span itemprop=\"country-name\">USA</span>\r\n        </p>\r\n\r\n        <p itemprop=\"tel\">650-253-0000</p>\r\n\r\n        <p><a itemprop=\"url\" href=\"http://www.google.com/\">Google.com</a></p>\r\n    <span itemprop=\"geo\" itemscope=\"\" itemtype=\"http://data-vocabulary.org/Geo\">\r\n      <meta itemprop=\"latitude\" content=\"37.4149\">\r\n      <meta itemprop=\"longitude\" content=\"-122.078\">\r\n    </span>\r\n\r\n        <p style=\"margin-top:1.75em\">\r\n          <a itemprop=\"url\" href=\"http://diveintohtml5.info/examples/organization-plus-microdata.html\">\r\n            Check out the whole example.\r\n          </a>\r\n        </p>\r\n      </article>\r\n      <!-- /article organization -->\r\n\r\n\r\n\r\n\r\n      <article itemscope itemtype=\"http://schema.org/BlogPosting\" class=\"well\">\r\n        <header>\r\n          <h2>Blog Article</h2>\r\n\r\n          <p>\r\n            <time itemprop=\"datePublished\" datetime=\"2009-10-09\">3 days ago</time>\r\n          </p>\r\n          <link itemprop=\"url\" href=\"?comments=0\">\r\n        </header>\r\n\r\n        <p>If there\'s a microphone anywhere near you, assume it\'s hot and\r\n          sending whatever you\'re saying to the world. Seriously.</p>\r\n\r\n        <section>\r\n          <h1>Comments</h1>\r\n          <article itemprop=\"comment\" itemscope itemtype=\"http://schema.org/UserComments\" id=\"c1\">\r\n            <link itemprop=\"url\" href=\"#c1\">\r\n            <footer>\r\n              <p>Posted by: <span itemprop=\"creator\" itemscope itemtype=\"http://schema.org/Person\">\r\n     <span itemprop=\"name\">George Washington</span>\r\n    </span></p>\r\n\r\n              <p>\r\n                <time itemprop=\"commentTime\" datetime=\"2009-10-10\">15 minutes ago</time>\r\n              </p>\r\n            </footer>\r\n            <p>Yeah! Especially when talking about your lobbyist friends!</p>\r\n          </article>\r\n          <article itemprop=\"comment\" itemscope itemtype=\"http://schema.org/UserComments\" id=\"c2\">\r\n            <link itemprop=\"url\" href=\"#c2\">\r\n            <footer>\r\n              <p>Posted by: <span itemprop=\"creator\" itemscope itemtype=\"http://schema.org/Person\">\r\n     <span itemprop=\"name\">George Hammond</span>\r\n    </span></p>\r\n\r\n              <p>\r\n                <time itemprop=\"commentTime\" datetime=\"2009-10-10\">5 minutes ago</time>\r\n              </p>\r\n            </footer>\r\n            <p>Hey, you have the same first name as me.</p>\r\n          </article>\r\n        </section>\r\n      </article>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(287,97,0,0,0,'',0,0,0,0,0,0,1426262393,1360746915,1,0,256,'textmedia','ARIA','The ARIA specification is split up into three different types of attributes: roles, states, and properties. Roles describe widgets that aren\'t otherwise available in HTML 4, such as sliders, menu bars, tabs, and dialogs. [<link https://developer.mozilla.org/en-US/docs/Web/Accessibility/An_overview_of_accessible_web_applications_and_widgets - external-link-new-window \"Opens external link in new window\">source</link>]',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(289,17,0,0,0,'',0,0,0,0,0,0,1374770750,1360747020,1,0,128,'textmedia','','<p class=\"alert-info\">Search is powered by a Core extension &quot;Indexed Search&quot;. Configuration can be found in EXT:speciality file TypoScript/constants.txt and TypoScript/Plugin/tx_indexedsearch.ts. If you don\'t use the search feature it is advisable to deactivate the extension since it will consume resources by indexing the content while browsing the website.</p>\r\n<p class=\"alert-info\">As tools, once logged in the BE, the indexed content can be checked out in module &quot;Web&quot; &gt; &quot;Info&quot; &gt; &quot;Indexed Search&quot; (in the drop down menu on the top). There also is a BE module for stats in &quot;Admin Tools&quot; &gt; &quot;Indexing&quot;.</p>\r\n<p class=\"alert-info\">If you are looking for third party extensions, following suggestion can be made. For bigger website, <link http://lucene.apache.org/solr/ - external-link-new-window \"Opens external link in new window\">Solr</link> or equivalent can be considered. A bunch of extensions are available on the <link http://typo3.org/extensions/repository/?id=23&L=0&q=solr - external-link-new-window \"Opens external link in new window\">TER</link>. Besides, Google Search plugins can be <link http://typo3.org/extensions/repository/?id=23&L=0&q=google+search - external-link-new-window \"Opens external link in new window\">downloaded</link> and installed.</p>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,2,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,-1,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(290,90,0,0,0,'',0,0,0,0,0,0,1455568012,1360747083,1,0,256,'textmedia','Subscribe to Lorem','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(276,81,0,0,0,'',0,0,0,0,0,0,1426867371,1360231798,1,0,256,'textmedia','Search Engine Optimization','Search engine optimization (<strong>SEO</strong>) is the process of affecting the visibility of a web page to&nbsp;<link http://en.wikipedia.org/wiki/Search_engine - - \"Search engine\">search engines</link>. For that purpose, the extension <link http://forge.typo3.org/projects/extension-seo_basics>SEO basics</link>&nbsp;is used and integrated into this Distribution. It delivers:\r\n<ul><li>Configurable metadata for each page along with the author info. The last modification time of the page is also displayed in the meta.&nbsp;The metadata can be edited in the properties of the page in:<br /><span style=\"font-style: italic;\">&quot;Web&quot; &gt; &quot;List&quot; &gt; Right click on whatever page to start editing page property.</span></li><li>A Backend Module &nbsp;showing different colors according to the quality of the meta data in:<br /><span style=\"font-style: italic;\">&quot;Web&quot; &gt; &quot;Info&quot; &gt; &quot;SEO Management&quot;</span></li><li>Handling of the canonical tag which is useful when a news article (for example) appears on multiple pages.</li><li> An XML Sitemap available <link http://speciality.distribution/sitemap.xml _blank - \"Opens external link in new window\">here</link> for the current website.</li></ul>\r\nFor more info, read the&nbsp;<link http://docs.typo3.org/typo3cms/extensions/seo_basics/ - external-link-new-window>documentation of the extension</link>.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(282,28,0,0,0,'',0,0,0,0,0,0,1426265904,1360234133,1,0,467,'login','Login box',NULL,0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'100','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"showForgotPassword\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"showLogoutFormAfterLogin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\">29</value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"templateFile\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_redirect\">\n            <language index=\"lDEF\">\n                <field index=\"redirectMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"redirectPageLogin\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLoginError\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLogout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_messages\">\n            <language index=\"lDEF\">\n                <field index=\"welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_reset_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(311,108,0,0,0,'',0,0,0,0,0,0,1425996457,1367405264,1,0,256,'textmedia','Check list before going live','<div></div>\r\n<div>Before going live with your website, consider the following checklist:\r\n<h2>Frontend</h2>\r\n<ol><li>Change favicon, apple touch icons?</li><li>Canonical URL configuration is OK?&nbsp;</li></ol>\r\n<h2>Backend</h2>\r\n<ol><li>Remove or disable BE User &quot;simple_user&quot;, &quot;advanced_editor&quot;?</li><li>Rename default BE User &quot;admin&quot; for security?</li><li>Select the language pack&nbsp;for your BE Editors?</li><li>Remove extension&nbsp;<span class=\"code\">EXT:speciality_distribution</span>? Extension has become useless once the website is running.</li><li>Deactivate extension&nbsp;<span class=\"code\">EXT:indexed_search</span>&nbsp;if not used? It will consume unnecessary resources by indexing the content while browsing the website.</li></ol>\r\n<h2>Stats</h2></div>\r\n<div><ol><li>Configure robots.txt, humans.txt?</li><li>Add <link http://bootstrap.fab/sitemap.xml _blank - \"Opens external link in new window\">XML sitemp</link>&nbsp;to Webmaster Tools?</li><li>Change / remove the Google Analytics code in&nbsp;<span class=\"code\">EXT:speciality/Resources/Private/Partials/Stats.html</span>?</li></ol>\r\n<h2>Cron jobs</h2>\r\n<ol><li>Change reporting email address in Scheduler Tasks?</li><li>Configure a Cron job for the Scheduler:<br /><span class=\"code\">MAILTO=change@me.com<br />00,15,30,45 * * * * /usr/bin/php /sites/htdocs/typo3/cli_dispatch.phpsh scheduler</span></li><li>Configure a Cron job for&nbsp;updating the Index Reference:<span class=\"code\"><br style=\"font-family: Verdana, sans-serif; background-color: rgb(255, 255, 255);\" /><span class=\"code\">MAILTO=change@me.com</span><br />00 01 * * * /usr/bin/php /sites/htdocs&nbsp;typo3/cli_dispatch.phpsh lowlevel_refindex -c</span></li></ol></div>\r\n<div></div>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(291,96,0,0,0,'',0,0,0,0,0,0,1426265594,1360747204,1,0,256,'textmedia','Performance tuning','Speed as a feature! To increase the &quot;reactivity&quot; of a website there isn\'t a magic solution but rather a combination of tuning options with different levels of impact. A good place to start reading would be this <link http://wiki.typo3.org/Performance_tuning - - \"Opens external link in new window\">wiki page</link>.\r\nFor the needs of this distribution, the extension &quot;<link http://typo3.org/extensions/repository/view/nc_staticfilecache - - \"Opens external link in new window\">static file cache</link>&quot;&nbsp;has been installed. It transparently caches pages as static HTML unless a page contains non cachable content such as a <link http://docs.typo3.org/typo3cms/TyposcriptReference/ContentObjects/UserAndUserInt/Index.html - external-link-new-window \"Opens external link in new window\">USER_INT plugin</link>. You must however add some instructions in the htaccess to take advantage of it. Cache pages get automatically reset when content is updated in the Backend by a User.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(294,75,0,0,0,'',0,0,0,0,0,0,1361279282,1361278051,1,0,128,'textmedia','Footer content','Company name, Rue de la Serre 11, CH-2000 Neuchâtel, Tel: +41 (0)32 342 02 45, <link info@company.com - mail>info@company.com</link>',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'100','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(315,109,0,0,0,'',0,0,0,0,0,0,1426285217,1370678084,1,0,256,'textmedia','Available layouts','There currently are 4 layouts available in this distribution: &quot;Standard&quot;, &quot;WithSideBar, &quot;HomePage&quot; and&quot;Newsletter&quot;. Obviously you are not limited to this number and it is fairly easy to add new ones.\r\n<strong>Where to change the layout of a page?</strong>\r\nThis can be done in the page property of a page (right click on a page). You can change the layout for one page or for all the sub-pages.\r\n<strong>How to modify an existing layout?</strong>\r\nPage templates are located in extension &quot;speciality&quot; where we keep our resources for the website.\r\n<p class=\"code\">EXT:speciality/Resources/Private/Templates/Page/Standard.html </p>\r\nA Template is wrapped within a Layout which shares common elements among templates such as top menu, banner, etc...\r\n<p class=\"code\">EXT:speciality/Resources/Private/Layouts/Page.html </p>\r\nNotice the special Layout for the Newsletter which skips certain sections, typically the standard banner \r\n<strong>How to add a new layout?</strong>\r\nAdd a new file within the template directory. Best is to copy an existing file, e.g. &quot;Standard.html&quot; and take inspiration from it.',0,0,0,1,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(408,116,0,0,0,'',0,0,0,0,0,0,1426285262,1426245914,1,0,256,'textmedia','My dear Lorem','This is the template by default.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(409,117,0,0,0,'',0,0,0,0,0,0,1426245969,1426245969,1,0,256,'textmedia','Are you still here Lorem?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(381,1,0,0,0,'',0,0,0,0,0,202,1426280324,1372929381,1,0,1024,'textmedia','Congratulations, you have successfully installed TYPO3 CMS','<p class=\"align-left\">The Speciality Distribution is an ideal package to get started with TYPO3 CMS. It includes <link http://twitter.github.io/bootstrap/ - external-link-new-window \"Opens external link in new window\">Bootstrap</link>&nbsp;as the HTML / CSS Framework, relies on the <link https://fluidtypo3.org/ - external-link-new-window \"Opens external link in new window\">Fluid TYPO3</link> for page templating and rendering and ships a lot of boilerplate configuration. By design, <link https://fluidtypo3.org/ - external-link-new-window \"Opens external link in new window\"><strong>Fluid Powered TYPO3</strong></link> is a family of TYPO3 extensions designed to boost productivity and flexibility when creating CMS templates.&nbsp; So—what\'s next ? Start browsing through this site. Check out the sample pages in the <link 4 - internal-link>example pages</link> of this website, <a href=\"typo3/\" title=\"You can login as any of the backend users listed to the right.\" class=\"themeColorBackground startButton\">log into TYPO3</a> and <a href=\"http://typo3.org/community/\">get involved!</a> As soon as you are logged in in the Backend, some more inline help will appear guiding you through the structure of the website.</p>\r\n<h2>Motivation</h2>\r\nAll started with the modernisation of our Dummy package we were using in <link http://www.ecodev.ch - external-link>our company</link>. To give a bit of background, we were aiming to:\r\n<ul><li>Have <link http://getbootstrap.com/ - external-link-new-window \"Opens external link in new window\">Bootstrap</link> as the HTML / CSS Framework</li><li>Use Fluid as much as possible for the rendering and the templating. Actually, it turned out we have reached 100% thanks to the work of <link https://namelesscoder.net/ _top external-link>Claus Due</link></li><li>Keep folder /fileadmin clean from TS / JS / CSS files which should be for storing media only (images, documents etc…)</li></ul>\r\nWe wanted not only a website to demonstrate the capability of TYPO3, but also something useful so that it should <span style=\"font-weight: bold;\">save us from tedious and repeating work</span> when starting a new project. We also have decided to<span style=\"font-weight: bold;\"> make everything available publicly</span> so that you can see and use this distribution',0,0,0,1,0,0,0,0,0,'','',0,0,43700,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(439,1,0,0,0,'',0,0,0,0,0,381,1426280342,1426279331,1,0,512,'textmedia','Félicitations, vous avez installé TYPO3 CMS','<p class=\"bodytext\">Consultez les <link 4 - internal-link>pages d\'exemples</link> de ce site web, <link http://bootstrap.fab/typo3/ - \"themeColorBackground startButton\" \"Vous pouvez vous connecter en tant que l\'un des utilisateurs backend figurant à droite.\">connectez-vous à TYPO3</link> <span style=\"color: rgb(0, 0, 238);\"><span style=\"text-decoration: underline;\"></span></span> et <link http://typo3.org/community/ - external-link-new-window>engagez-vous!</link></p>',0,0,0,1,0,0,0,0,0,'','',0,0,43700,'','','',0,'0','',1,0,'',0,'','',0,0,0,1,0,'','',0,'',381,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(376,28,0,0,0,'',0,0,0,0,0,33,1431961329,1371328879,1,0,208,'textmedia','','<p class=\"alert-info\">More users can be added&nbsp;by clicking in the Backend &quot;List &gt; General storage &gt; Users and groups&quot;</p>',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','-1','',0,'0','',1,0,'',0,'','',0,0,0,0,0,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(377,57,0,0,0,'',0,0,0,0,0,216,1372413571,1372412113,1,0,256,'textmedia','Webseiten schreiben...','Webseiten schreiben ist eine etwas ungewöhnliche Aufgabe, vor allem, weil man nicht vergessen darf, dass man für zwei unterschiedliche Arten von „Lesern“ schreibt:\r\n<ul><li>Web-Besucher: immer in Eile, haben sie die Angewohnheit, die Informationen nur zu überfliegen, ohne auf die Details zu achten. Die Qualität und die Struktur des Inhalts sind die entscheidenden Faktoren, um ihre Aufmerksamkeit zu erregen.</li><li>Suchmaschinen: Unbeirrt lesen sie alles von A bis Z, sind aber trotzdem nur Maschinen. Sie haben keinen Sinn für Poesie oder Humor. Daher ist es unumgänglich, sie beim Erfassen der Texte zu unterstützen.</li></ul>\r\nGrundsätzlich können diese zwei Zielgruppen auf sehr ähnliche Art und Weise zufrieden gestellt werden. Die Mitglieder der ersten Gruppe sind launisch, die der zweiten sind Idioten. Um beide zufrieden zu stellen, sollten folgende Grundregeln beachtet werden:&nbsp;\r\n<h3>1. Nur ein Thema pro Seite behandeln</h3>\r\nIm Durchschnitt lesen wir Webseiten 25% langsamer, als gedruckte Seiten. Je kürzer und aussagekräftiger der Seiteninhalt ist (also ein Maximum an Information, ausgedrückt durch ein Minimum an Worten), desto eher wird er gelesen...und, natürlich, behalten.\r\nSelten wird ein Besucher die ganze Seite lesen und nur ein Viertel aller Internet-Benutzer schauen sich den Inhalt an, der nicht auf Anhieb sichtbar ist ( sondern erst zu sehen ist, wenn man die Seite bis zum Ende scrollt). &nbsp;\r\n<h3>2. An den Überschriften feilen</h3>\r\nSie sollten kurz, einprägsam und deutlich sein. Benutzen Sie die H1-Überschrift (den h1-Tag).\r\n<h3>3. Zuerst das Ergebnis präsentieren</h3>\r\nIm Idealfall sollte der erste Absatz den kompletten Seiteninhalt zusammenfassen (Prinzip der umgedrehten Pyramide). Dadurch wird die Aufmerksamkeit der Leute auf die Seite gelenkt und sie werden angeregt, weiter zu lesen.\r\nDer Besucher möchte schnell die gesuchten Inhalte finden und wissen, was ihn beim Besuch der Seite erwartet. Fassen Sie gleich im ersten Absatz zusammen, was er durch den Artikel erfahren wird, indem Sie die Hauptschlagwörter Ihres Themas verwenden.\r\n<h3>4. Inhalte strukturieren</h3>\r\nDie Verwendung von Untertiteln (Überschriften zweiter und dritter Ordnung) erleichtern das Lesen und beleben die Aufmerksamkeit. Führen Sie nur einen Gedanken pro Absatz aus und schreiben Sie keine zu langen Textblöcke.&nbsp;\r\nDer User liest nicht unbedingt kontinuierlich von links oben nach rechts unten: Er wird den Inhalt eher auszugsweise, diagonal erfassen („F“-Form). Er bleibt bei den Untertiteln hängen, &nbsp;die seine Aufmerksamkeit erregt haben, liest den dazugehörigen Absatz und kehrt dann wieder zum Anfang zurück, wenn der Inhalt für ihn von Interesse war. Der Leser bestimmt die Reihenfolge, nicht Sie: Die Auge überfliegt die Seite, bevor der Inhalt tatsächlich gelesen wird.\r\n<h3>5. Layout</h3>\r\nGrosse, plumpe Textblöcke sind optisch nicht ansprechend: Spielen Sie mit Ihren Texten :-)\r\nWorte in Fettbuchstaben, Gedankenstriche und voneinander abgesetzte Texte werden das Lesevergnügen des Besuchers erhöhen. Formatieren Sie Ihren Text linksbündig. Die Verwendung von Aufzählungslisten ist ein weiteres Mittel das Lesen zu erleichtern und um wichtige Stichpunkte hervorzuheben. Vermeiden Sie es, komplette Sätze in Grossbuchstaben zu schreiben. &nbsp;\r\n<h3>6. Seiten illustrieren</h3>\r\nEine Seite mit einer oder mehreren Illustrationen wird häufiger gelesen, und ein Bild sagt mehr als tausend Worte... benutzen Sie diese Möglichkeit, um die Bedeutung Ihrer Aussagen zu untermauern.&nbsp;\r\n<h3>7. Inhalte verlinken</h3>\r\nVerlinkungen sind der Dreh- und Angelpunkt des Internets: Benutzen Sie diese Möglichkeit ohne es zu übertreiben ( zuviel Information ist der Tod jeder Information ;-)&nbsp;\r\nFür einen Internet-Benutzer ist ein Link üblicherweise ein Zeichen, dass man weiterführende Informationen über das Thema auf einer zusätzlichen Seite bereitgestellt hat. Dies könnte genau das sein, was ihn interessiert. Erstellen Sie eindeutige, semantische Verlinkungen (verlinken Sie Wörter, die eine gute Vorstellung davon vermitteln, was man finden wird) und vergewissern Sie sich, das sie auch funktionieren!',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,2,0,'','',0,'',216,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(375,92,0,0,0,'',0,0,0,0,0,286,1371211320,1371211269,1,0,257,'textmedia','Translating the Backend','<div>The backend can be fully translated into more than 30 languages. Let see how it can be achieved for your own language.</div>\r\n<ul><li>Open the Language module and download the languages of your choice by clicking:<br /><span style=\"font-style: italic;\">Admin Tools &gt; Language<br /><br /></span></li><li>Apply language for the Backend by clicking:<br /><span style=\"font-style: italic;\">User Tools &gt; User settings &gt; Menu &quot;Language&quot;</span></li></ul>\r\nDefault Backend language can also be pre-configured for a user by clicking:\r\n<ul><li><span style=\"font-style: italic;\">Admin Tools &gt; Backend users &gt; edit a user</span></li></ul>\r\n\r\n\r\n',0,0,0,1,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(394,102,0,0,0,'',0,0,0,0,0,169,1374477694,1374477688,1,0,512,'shortcut','About these pages','The pages in this section of the introduction package demonstrate the various content elements available to editors in the TYPO3 back-end interface, and their appearance in the front-end.\r\nThe layout and behavior of these examples are configurable via Typoscript and, of course, CSS.',0,0,0,1,0,0,0,0,0,'169','',0,0,2,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,'','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(410,117,0,0,0,'',0,0,0,0,0,0,1426245985,1426245985,1,0,128,'textmedia','Or rather here?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et  justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed  tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor.  Morbi consectetur ante et lorem congue et ultrices augue vehicula.  Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,3,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(411,118,0,0,0,'',0,0,0,0,0,0,1426246019,1426246019,1,0,256,'textmedia','What sort of Lorem are you?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et  justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed  tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor.  Morbi consectetur ante et lorem congue et ultrices augue vehicula.  Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(445,119,0,0,0,'',0,0,0,0,0,0,1456246925,1426325446,1,0,128,'textmedia','','<p class=\"alert-info\">The Fluid template corresponding of this content element is located at<br />EXT:speciality/Resources/Private/Templates/Content/Carousel.html<br /><br />Credit goes to&nbsp;<link https://github.com/bootstraptheme-for-typo3/fluidbootstraptheme - - \"Opens internal link in current window\">Fluid Bootstrap</link> theme.</p>',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,3,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(412,119,0,0,0,'',0,0,0,0,0,0,1426258212,1426258212,1,0,256,'speciality_carousel','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"settings.carousel.quickselect\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.carousel.quickselectType\">\n                    <value index=\"vDEF\">images</value>\n                </field>\n                <field index=\"settings.carousel.interval\">\n                    <value index=\"vDEF\">5000</value>\n                </field>\n                <field index=\"settings.carousel.id\">\n                    <value index=\"vDEF\">218e0efe</value>\n                </field>\n                <field index=\"settings.carousel.labelNext\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.carousel.labelPrev\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.carousel.width\">\n                    <value index=\"vDEF\">1170c</value>\n                </field>\n                <field index=\"settings.carousel.autostart\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"elements\">\n            <language index=\"lDEF\">\n                <field index=\"elements\">\n                    <el index=\"el\">\n                        <section index=\"1\">\n                            <itemType index=\"text\">\n                                <el>\n                                    <field index=\"title\">\n                                        <value index=\"vDEF\">Text slide 1</value>\n                                    </field>\n                                    <field index=\"size\">\n                                        <value index=\"vDEF\">h1</value>\n                                    </field>\n                                    <field index=\"text\">\n                                        <value index=\"vDEF\">Content...</value>\n                                        <value index=\"_TRANSFORM_vDEF.vDEFbase\">Content...</value>\n                                    </field>\n                                    <field index=\"header\">\n                                        <value index=\"vDEF\"></value>\n                                    </field>\n                                    <field index=\"caption\">\n                                        <value index=\"vDEF\"></value>\n                                        <value index=\"_TRANSFORM_vDEF.vDEFbase\"></value>\n                                    </field>\n                                    <field index=\"iconImage\">\n                                        <value index=\"vDEF\"></value>\n                                    </field>\n                                </el>\n                            </itemType>\n                            <itemType index=\"_TOGGLE\">0</itemType>\n                        </section>\n                        <section index=\"2\">\n                            <itemType index=\"text\">\n                                <el>\n                                    <field index=\"title\">\n                                        <value index=\"vDEF\">Text 2</value>\n                                    </field>\n                                    <field index=\"size\">\n                                        <value index=\"vDEF\">h1</value>\n                                    </field>\n                                    <field index=\"text\">\n                                        <value index=\"vDEF\">Content...</value>\n                                        <value index=\"_TRANSFORM_vDEF.vDEFbase\">Content...</value>\n                                    </field>\n                                    <field index=\"header\">\n                                        <value index=\"vDEF\"></value>\n                                    </field>\n                                    <field index=\"caption\">\n                                        <value index=\"vDEF\"></value>\n                                        <value index=\"_TRANSFORM_vDEF.vDEFbase\"></value>\n                                    </field>\n                                    <field index=\"iconImage\">\n                                        <value index=\"vDEF\"></value>\n                                    </field>\n                                </el>\n                            </itemType>\n                            <itemType index=\"_TOGGLE\">0</itemType>\n                        </section>\n                    </el>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"styles\">\n            <language index=\"lDEF\">\n                <field index=\"settings.carousel.quickselectStyles\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.carousel.quickselectDotStyles\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.carousel.navigationStyles\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.carousel.innerStyles\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(413,120,0,0,0,'',0,0,0,0,0,0,1426258456,1426258351,1,0,1792,'speciality_alert','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"header\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"closeLinkText\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"class\">\n                    <value index=\"vDEF\">info</value>\n                </field>\n                <field index=\"isBlock\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>\n','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(414,120,0,0,0,'',0,0,0,0,0,0,1426266317,1426258382,1,0,1536,'textmedia','Info!','Content...',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,41300,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(415,120,0,0,0,'',0,0,0,0,0,0,1426258637,1426258473,1,0,768,'speciality_alert','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"closeLinkText\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"class\">\n                    <value index=\"vDEF\">success</value>\n                </field>\n                <field index=\"isBlock\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(416,120,0,0,0,'',0,0,0,0,0,414,1426266294,1426258489,1,0,1024,'textmedia','Success!','Content...',0,0,0,2,0,0,0,0,0,'','',0,0,41500,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(417,120,0,0,0,'',0,0,0,0,0,416,1426266337,1426258522,1,0,1280,'textmedia','Warning!','Content...',0,0,0,2,0,0,0,0,0,'','',0,0,41800,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(418,120,0,0,0,'',0,0,0,0,0,415,1426258554,1426258522,1,0,2048,'speciality_alert','',NULL,0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"header\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"closeLinkText\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"class\">\n                    <value index=\"vDEF\">warning</value>\n                </field>\n                <field index=\"isBlock\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>\n','',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(419,120,0,0,0,'',0,0,0,0,0,417,1426266367,1426258581,1,0,1,'textmedia','Danger!','Content...',0,0,0,2,0,0,0,0,0,'','',0,0,42000,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(420,120,0,0,0,'',0,0,0,0,0,418,1426258652,1426258581,1,0,2304,'speciality_alert','',NULL,0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"header\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"closeLinkText\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"class\">\n                    <value index=\"vDEF\">danger</value>\n                </field>\n                <field index=\"isBlock\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>\n','',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(421,97,0,0,0,'',0,0,0,0,0,0,1426262522,1426262059,1,0,512,'textmedia','','<p class=\"code\"><span class=\"xml-comment\">&lt;!-- We\'ve added role attributes to describe the tab list and each tab. --&gt;</span><br /><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">ol </span><strong><span class=\"xml-attname\">role</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;tablist&quot;</span></strong><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">li </span><strong><span class=\"xml-attribute\"></span><span class=\"xml-attname\">role</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;tab&quot;</span></strong><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp; &nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">a </span><span class=\"xml-attname\">href</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;#ch1Panel&quot;</span><span class=\"xml-punctuation\">&gt;</span><span class=\"xml-text\">Chapter 1</span><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">a</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">li</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">li </span><strong><span class=\"xml-attribute\"></span><span class=\"xml-attname\">role</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;tab&quot;</span></strong><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp; &nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">a </span><span class=\"xml-attname\">href</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;#ch2Panel&quot;</span><span class=\"xml-punctuation\">&gt;</span><span class=\"xml-text\">Chapter 2</span><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">a</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">li</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">li </span><strong><span class=\"xml-attribute\"></span><span class=\"xml-attname\">role</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;tab&quot;</span></strong><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp; &nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">a </span><span class=\"xml-attname\">href</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;#quizPanel&quot;</span><span class=\"xml-punctuation\">&gt;</span><span class=\"xml-text\">Quiz</span><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">a</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">li</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">ol</span><span class=\"xml-punctuation\">&gt;</span><br /><br /><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">div</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-comment\">&lt;!-- Notice the role and aria-labelledby attributes we\'ve added to describe these panels. --&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">div </span><span class=\"xml-attname\">id</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;ch1Panel&quot; </span><strong><span class=\"xml-attname\">role</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;tabpanel&quot; </span><span class=\"xml-attname\">aria-labelledby</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;ch1Tab&quot;</span></strong><span class=\"xml-punctuation\">&gt;</span><span class=\"xml-text\">Chapter 1 content goes here</span><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">div</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">div </span><span class=\"xml-attname\">id</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;ch2Panel&quot; </span><strong><span class=\"xml-attname\">role</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;tabpanel&quot; </span><span class=\"xml-attname\">aria-labelledby</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;ch2Tab&quot;</span></strong><span class=\"xml-punctuation\">&gt;</span><span class=\"xml-text\">Chapter 2 content goes here</span><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">div</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"whitespace\">&nbsp;&nbsp;</span><span class=\"xml-punctuation\">&lt;</span><span class=\"xml-tagname\">div </span><span class=\"xml-attname\">id</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;quizPanel&quot; </span><strong><span class=\"xml-attname\">role</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;tabpanel&quot; </span><span class=\"xml-attname\">aria-labelledby</span><span class=\"xml-punctuation\">=</span><span class=\"xml-attribute\">&quot;quizTab&quot;</span></strong><span class=\"xml-punctuation\">&gt;</span><span class=\"xml-text\">Quiz content goes here</span><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">div</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"xml-punctuation\">&lt;/</span><span class=\"xml-tagname\">div</span><span class=\"xml-punctuation\">&gt;</span><br /><span class=\"xml-punctuation\"></span></p>',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(422,123,0,0,0,'',0,0,0,0,0,0,1426404226,1426263424,1,0,256,'textmedia','Build your assets manually ','<p class=\"alert-info\">This is an extract of the README of <link https://github.com/Ecodev/speciality - external-link-new-window \"Opens external link in new window\">Speciality on github</link>. </p>\r\nRecently, I have experimenting some workflow based on <link http://gruntjs.com/ - external-link-new-window \"Opens external link in new window\">Grunt</link> and <link http://bower.io/ - external-link-new-window \"Opens external link in new window\">Bower</link>. I found it nice:<br /><br />- <link http://gruntjs.com/ - external-link-new-window \"Opens external link in new window\">Grunt</link>: describes itself as the &quot;JavaScript Task Runner&quot;. It is basically an automation tool enabling to quickly build advanced workflow. Coming alongside with a rich ecosystem for all sort of needs. One of the handy feature, is the &quot;watch&quot; functionality which observes any changes made on the file system and triggers a build. This make the delivery process quite efficient and transparent. Additionally, the building process includes different optimisations such as minifying, compressing the files. Images are also optimized by reducing their size for the web.<br /><br />- <link http://bower.io/ - external-link-new-window \"Opens external link in new window\">Bower</link>: Package Manager for the web where package can be Web Components such a jQuery, Twitter Bootstrap, ... &nbsp; It makes pretty straightforward to cope with versions and dependencies. Bower will scan though your installed packages and let you know which one needs an upgrade and update it for you. Awesome!<br /><br />Notice also the new file structure of the Public directory:\r\n<p class=\"code\">&nbsp;&nbsp;&nbsp; cd typo3conf/ext/speciality<br />&nbsp;&nbsp;&nbsp; ls -l Resources/Public<br /><br />&nbsp;&nbsp; &nbsp;├── Build (1)<br />&nbsp;&nbsp;&nbsp; ├── Source (2)<br />&nbsp;&nbsp; &nbsp;├── BowerComponents (3)</p>\r\n<br />1. Build: the generated output optimized for production. Never edit files as they will be overridden.<br />2. Source: everything that we produce as code that includes the raw Sass, JavaScript, images comes here.<br />3. Components: components managed by Bower. The directory is not under Git though, since it is replicable.<br /><br />Alright, time to get hands dirty! ',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(423,123,0,0,0,'',0,0,0,0,0,0,1426264807,1426264791,1,0,512,'textmedia','','<p class=\"code\"><br />&nbsp;&nbsp; &nbsp;# Head to EXT:speciality<br />&nbsp;&nbsp; &nbsp;cd typo3conf/ext/speciality<br /><br />&nbsp;&nbsp; &nbsp;# Make sure to have bower installed<br />&nbsp;&nbsp; &nbsp;# If bower is not installed<br />&nbsp;&nbsp; &nbsp;# (sudo) npm install -g bower<br />&nbsp;&nbsp; &nbsp;bower --version<br /><br />&nbsp;&nbsp; &nbsp;# Make sure to have grunt installed<br />&nbsp;&nbsp; &nbsp;# If Grunt ist not installed<br />&nbsp;&nbsp; &nbsp;# (sudo) npm install -g grunt-cli<br />&nbsp;&nbsp; &nbsp;grunt --version<br /><br />&nbsp;&nbsp; &nbsp;# Install local grunt modules<br />&nbsp;&nbsp; &nbsp;npm install<br /><br />&nbsp;&nbsp; &nbsp;# Install Web Components (jQuery, ...)<br />&nbsp;&nbsp; &nbsp;bower install<br /><br />&nbsp;&nbsp; &nbsp;# Check whether Web Components need to be updated.<br />&nbsp;&nbsp; &nbsp;# The command will display the current version and the latest version available besides.<br />&nbsp;&nbsp; &nbsp;bower list<br /><br />&nbsp;&nbsp; &nbsp;# If needed update Web Components versions.<br />&nbsp;&nbsp; &nbsp;edit bower.json<br />&nbsp;&nbsp; &nbsp;bower update<br /><br />&nbsp;&nbsp; &nbsp;# Call grunt help<br />&nbsp;&nbsp; &nbsp;grunt help<br /><br />&nbsp;&nbsp; &nbsp;# Generate a new build including JavaScript, CSS, optimized images, ...<br />&nbsp;&nbsp; &nbsp;grunt build<br /><br />&nbsp;&nbsp; &nbsp;# Watch your asset and compile them as you edit them.<br />&nbsp;&nbsp; &nbsp;grunt watch</p>',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(424,121,0,0,0,'',0,0,0,0,0,0,1426266550,1426266472,1,0,256,'speciality_imagegallery','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"imgGallerySheetImages\">\n            <language index=\"lDEF\">\n                <field index=\"settings.imgGalleryFalImageItems\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"imgGallerySheetAdvanced\">\n            <language index=\"lDEF\">\n                <field index=\"settings.imgGalleryFalClassesModal\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.imgGalleryFalShowPreviewTitle\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.imgGalleryFalRenderHrefToOriginal\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.imgGalleryFalPrevNextPosition\">\n                    <value index=\"vDEF\">footer</value>\n                </field>\n                <field index=\"settings.imgGalleryFalImageWidth\">\n                    <value index=\"vDEF\">320</value>\n                </field>\n                <field index=\"settings.imgGalleryFalRowLg\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"settings.imgGalleryFalRowMd\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"settings.imgGalleryFalRowSm\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n                <field index=\"settings.imgGalleryFalRowXs\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(425,122,0,0,0,'',0,0,0,0,0,0,1426266592,1426266592,1,0,256,'speciality_accordion','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"panels\">\n            <language index=\"lDEF\">\n                <field index=\"panels\">\n                    <el index=\"el\">\n                        <section index=\"1\">\n                            <itemType index=\"panel\">\n                                <el>\n                                    <field index=\"title\">\n                                        <value index=\"vDEF\">Tab 1</value>\n                                    </field>\n                                    <field index=\"active\">\n                                        <value index=\"vDEF\">1</value>\n                                    </field>\n                                </el>\n                            </itemType>\n                            <itemType index=\"_TOGGLE\">0</itemType>\n                        </section>\n                        <section index=\"2\">\n                            <itemType index=\"panel\">\n                                <el>\n                                    <field index=\"title\">\n                                        <value index=\"vDEF\">Tab 2</value>\n                                    </field>\n                                    <field index=\"active\">\n                                        <value index=\"vDEF\">0</value>\n                                    </field>\n                                </el>\n                            </itemType>\n                            <itemType index=\"_TOGGLE\">0</itemType>\n                        </section>\n                    </el>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(426,122,0,0,0,'',0,0,0,0,0,0,1426266627,1426266627,1,0,128,'textmedia','My first title ','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,18181,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(427,122,0,0,0,'',0,0,0,0,0,426,1426266668,1426266651,1,0,64,'textmedia','My second title ','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,'','',0,0,18181,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(428,125,0,0,0,'',0,0,0,0,0,0,1426266778,1426266715,1,0,1792,'speciality_twocolumn','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"colSettings\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.split\">\n                    <value index=\"vDEF\">50-50</value>\n                </field>\n                <field index=\"settings.grid2.eqh\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additionalCSS\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.wrapclass\">\n                    <value index=\"vDEF\">none</value>\n                </field>\n                <field index=\"settings.grid2.rowCSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col1CSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col1hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.grid2.col2CSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col2hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(429,125,0,0,0,'',0,0,0,0,0,0,1426266800,1426266738,1,0,1536,'textmedia','50%','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,42800,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(430,125,0,0,0,'',0,0,0,0,0,0,1426266833,1426266833,1,0,1280,'textmedia','Container 2 columns','',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(431,125,0,0,0,'',0,0,0,0,0,429,1426266902,1426266896,1,0,1024,'textmedia','50%','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,'','',0,0,42801,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(432,125,0,0,0,'',0,0,0,0,0,431,1426267095,1426266944,1,0,512,'textmedia','30%','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,'','',0,0,18181,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(433,125,0,0,0,'',0,0,0,0,0,429,1426267109,1426266944,1,0,768,'textmedia','30%','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,'','',0,0,18181,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(434,125,0,0,0,'',0,0,0,0,0,428,1426266987,1426266944,1,0,2560,'speciality_threecolumn','',NULL,0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"colSettings\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.split\">\n                    <value index=\"vDEF\">50-50</value>\n                </field>\n                <field index=\"settings.grid2.eqh\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.grid3.split\">\n                    <value index=\"vDEF\">30-30-30</value>\n                </field>\n                <field index=\"settings.grid3.eqh\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additionalCSS\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.wrapclass\">\n                    <value index=\"vDEF\">none</value>\n                </field>\n                <field index=\"settings.grid2.rowCSS\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"settings.grid2.col1CSS\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"settings.grid2.col1hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.grid2.col2CSS\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"settings.grid2.col2hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.grid3.wrapclass\">\n                    <value index=\"vDEF\">none</value>\n                </field>\n                <field index=\"settings.grid3.rowCSS\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"settings.grid3.col1CSS\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"settings.grid3.col1hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.grid3.col2CSS\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"settings.grid3.col2hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.grid3.col3CSS\">\n                    <value index=\"vDEF\"/>\n                </field>\n                <field index=\"settings.grid3.col3hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>\n','',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(435,125,0,0,0,'',0,0,0,0,0,430,1426267064,1426267026,1,0,2048,'textmedia','Container 3 columns','',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(436,125,0,0,0,'',0,0,0,0,0,433,1426267132,1426267078,1,0,256,'textmedia','30%','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,'','',0,0,18181,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(437,1,0,0,0,'',0,0,0,0,0,0,1426267885,1426267880,1,0,2048,'speciality_twocolumn','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"colSettings\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.split\">\n                    <value index=\"vDEF\">70-30</value>\n                </field>\n                <field index=\"settings.grid2.eqh\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additionalCSS\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.wrapclass\">\n                    <value index=\"vDEF\">none</value>\n                </field>\n                <field index=\"settings.grid2.rowCSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col1CSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col1hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.grid2.col2CSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col2hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(438,1,0,0,0,'',0,0,0,0,0,0,1426406020,1426278107,1,0,1536,'textmedia','Project info','Project home<br /><link http://speciality.distribution/http:// https//github.com/Ecodev/typo3-cms-speciality-distribution - external-link-new-window> https://github.com/Ecodev/typo3-cms-speciality-distribution</link>\r\nPull Request and issues can be reported to<br /><link https://github.com/Ecodev/speciality/issues - external-link-new-window \"Opens external link in new window\">https://github.com/Ecodev/speciality/issues</link>\r\nView Helper reference for Fluid TYPO3.<br /><link https://fluidtypo3.org/viewhelpers/ - external-link-new-window \"Opens external link in new window\">https://fluidtypo3.org/viewhelpers/</link><br /><br />',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,43701,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(440,1,0,0,0,'',0,0,0,0,0,438,1426280258,1426279331,1,0,768,'textmedia','Info projet','Projet <br /><link http://speciality.distribution/http:// https//github.com/Ecodev/typo3-cms-speciality-distribution - external-link-new-window> https://github.com/Ecodev/typo3-cms-speciality-distribution</link>\r\nPull Request et bugs peuvent être rapportés<br /><link https://github.com/Ecodev/speciality/issues - external-link-new-window \"Opens external link in new window\">https://github.com/Ecodev/speciality/issues</link>\r\nView Helper référence pour Fluid TYPO3.<br /><link https://fluidtypo3.org/viewhelpers/ - external-link-new-window \"Opens external link in new window\">https://fluidtypo3.org/viewhelpers/</link><br /><br />',0,0,0,2,0,0,0,0,0,'','',0,0,43701,'','','',0,'0','',1,0,'',0,'','',0,0,0,1,0,NULL,'',0,'',438,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(441,1,0,0,0,'',0,0,0,0,0,437,1426279470,1426279331,1,0,2816,'speciality_twocolumn','',NULL,0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"colSettings\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.split\">\n                    <value index=\"vDEF\">70-30</value>\n                </field>\n                <field index=\"settings.grid2.eqh\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additionalCSS\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.wrapclass\">\n                    <value index=\"vDEF\">none</value>\n                </field>\n                <field index=\"settings.grid2.rowCSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col1CSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col1hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.grid2.col2CSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col2hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',437,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(442,1,0,0,0,'',0,0,0,0,0,381,1426280442,1426279389,1,0,1,'textmedia','Glückwunsch, Sie haben TYPO3 CMS erfolgreich installiert','Sehen Sie sich die Beispiele der Muster-Seiten dieser Website an, melden Sie sich an TYPO3 an legen Sie los! Sobald Sie sich angemeldet haben, werden Ihnen zusätzliche Kontext-Hilfen den Aufbau dieses Pakets verständlich machen.Sehen Sie sich die <link 4 - internal-link \"Opens internal link in current window\">Beispiele der Muster-Seiten</link> dieser Website an, <link http://bootstrap.fab/typo3/ - external-link-new-window \"Opens external link in new window\">melden Sie sich</link> an TYPO3 an <link http://typo3.org/community/ - external-link-new-window \"Opens external link in new window\">legen Sie los</link>! Sobald Sie sich angemeldet haben, werden Ihnen zusätzliche Kontext-Hilfen den Aufbau dieses Pakets verständlich machen.',0,0,0,1,0,0,0,0,0,'','',0,0,43700,'','','',0,'0','',1,0,'',0,'','',0,0,0,2,0,'','',0,'',381,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(443,1,0,0,0,'',0,0,0,0,0,438,1426280493,1426279389,1,0,2,'textmedia','Project info','Project home is at<br /><link http://speciality.distribution/http:// https//github.com/Ecodev/typo3-cms-speciality-distribution - external-link-new-window> https://github.com/Ecodev/typo3-cms-speciality-distribution</link>\r\nPull Request and issues can be reported at <br /><link https://github.com/Ecodev/speciality/issues - external-link-new-window \"Opens external link in new window\">https://github.com/Ecodev/speciality/issues</link>\r\nView Helper reference for Fluid TYPO3.<br /><link https://fluidtypo3.org/viewhelpers/ - external-link-new-window \"Opens external link in new window\">https://fluidtypo3.org/viewhelpers/</link><br /><br />',0,0,0,2,0,0,0,0,0,'','',0,0,43701,'','','',0,'0','',1,0,'',0,'','',0,0,0,2,0,NULL,'',0,'',438,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(444,1,0,0,0,'',0,0,0,0,0,437,1426279508,1426279389,1,0,2304,'speciality_twocolumn','',NULL,0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,2,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"colSettings\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.split\">\n                    <value index=\"vDEF\">70-30</value>\n                </field>\n                <field index=\"settings.grid2.eqh\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additionalCSS\">\n            <language index=\"lDEF\">\n                <field index=\"settings.grid2.wrapclass\">\n                    <value index=\"vDEF\">none</value>\n                </field>\n                <field index=\"settings.grid2.rowCSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col1CSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col1hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.grid2.col2CSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.grid2.col2hide\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',437,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(454,30,0,0,0,'',0,0,0,0,0,0,1431961409,1431961409,1,0,256,'textmedia','See me if you can','Content is protected through page permission',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(455,31,0,0,0,'',0,0,0,0,0,0,1431963900,1431963882,1,0,256,'textmedia','Hey Hey!','Protected area here.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(456,127,0,0,0,'',0,0,0,0,0,0,1431965694,1431965694,1,0,256,'textmedia','Service Temporarily Unavailable','The service you are trying to reach is temporarily unavailable.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(446,120,0,0,0,'',0,0,0,0,0,445,1456246940,1426325512,1,0,0,'textmedia','','<p class=\"alert-info\">The Fluid template corresponding of this content element is located at<br />EXT:speciality/Resources/Private/Templates/Content/Alert.html<br /><br />Credit goes to&nbsp;<link https://github.com/bootstraptheme-for-typo3/fluidbootstraptheme - - \"Opens internal link in current window\">Fluid Bootstrap</link> theme.</p>',0,0,0,2,0,0,0,0,0,'','',0,0,3,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(447,121,0,0,0,'',0,0,0,0,0,445,1456246952,1426325582,1,0,128,'textmedia','','<p class=\"alert-info\">The Fluid template corresponding of this content element is located at<br />EXT:speciality/Resources/Private/Templates/Content/ImageGallery.html<br /><br />Credit goes to&nbsp;<link https://github.com/bootstraptheme-for-typo3/fluidbootstraptheme - - \"Opens internal link in current window\">Fluid Bootstrap</link> theme.</p>',0,0,0,2,0,0,0,0,0,'','',0,0,3,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(448,122,0,0,0,'',0,0,0,0,0,445,1456246970,1426325635,1,0,32,'textmedia','','<p class=\"alert-info\">The Fluid template corresponding of this content element is located at<br />EXT:speciality/Resources/Private/Templates/Content/Accordion.html<br /><br />Credit goes to&nbsp;<link https://github.com/bootstraptheme-for-typo3/fluidbootstraptheme - - \"Opens internal link in current window\">Fluid Bootstrap</link> theme.</p>',0,0,0,2,0,0,0,0,0,'','',0,0,3,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(449,125,0,0,0,'',0,0,0,0,0,445,1455553483,1426325680,1,0,128,'textmedia','','<p class=\"alert-info\">The Fluid template corresponding of those content elements are located at<br />EXT:speciality/Resources/Private/Templates/Content/TwoColumn.html and ThreeColumn.html respectively.</p>',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(452,123,0,0,0,'',0,0,0,0,0,0,1426404555,1426327341,1,0,128,'textmedia','Load your own CSS / JS','The most easiest way to add a new asset (JS or CSS) is to open the file mentioned below and add a new section. To know more about managing your assets, refer to this blog article which addresses <link https://worksonmymachine.org/blog/asset-handling-with-fluidtypo3 - external-link-new-window \"Opens external link in new window\">Asset handling with FluidTYPO3</link>. <strong>While developing you can switch to the decompressed version</strong> and vise versa, simply change &quot;site.min.js&quot; by &quot;site.js&quot;.\r\n<p class=\"code\">EXT:speciality/Configuration/TypoScript/Plugin/tx_vhs.ts</p>',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(453,35,0,0,0,'',0,0,0,0,0,0,1459530622,1426360169,1,0,2,'textmedia','','<p class=\"alert-info\">Fix list of files to be downloaded. File types could be mixed together.<br />To customize this view, this template should be overridden <span class=\"code\">typo3conf/ext/fluidcontent_core/Resources/Private/Templates/CoreContent/Uploads.html</span></p>',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,0,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(457,122,0,0,0,'',0,0,0,0,0,0,1455526307,1455526307,1,0,16,'textmedia','Lorem Ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,42500,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(459,128,0,0,0,'',0,0,0,0,0,0,1459527517,1459527316,1,0,768,'list','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','vidifrontend_pi1',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"settings.dataType\">\n                    <value index=\"vDEF\">fe_users</value>\n                </field>\n                <field index=\"settings.columns\">\n                    <value index=\"vDEF\">__checkbox,username,name,email,usergroup,__buttons</value>\n                </field>\n                <field index=\"settings.selection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.additionalEquals\">\n                    <value index=\"vDEF\"># Example for Files (sys_file):\n# storage = 1,\n# identifier like /images/%,\n# metadata.categories = 1\n\n# Example for Frontend Users (fe_users):\n# usergroup.uid = 1,2\n# lastname like customer%\n</value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.sorting\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.direction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"grid\">\n            <language index=\"lDEF\">\n                <field index=\"settings.loadContentByAjax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.defaultNumberOfItems\">\n                    <value index=\"vDEF\">10, 20, 50, 100, -1</value>\n                </field>\n                <field index=\"settings.gridClassName\">\n                    <value index=\"vDEF\">table table-striped table-hover</value>\n                </field>\n                <field index=\"settings.hasColumnHeaders\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.gridConfiguration\">\n                    <value index=\"vDEF\">&lt;\'row\'&lt;\'col-xs-10\'f&gt;&lt;\'col-xs-2 hidden-xs\'l&gt;r&gt;&lt;\'row\'&lt;\'col-xs-12\'t&gt;&gt;&lt;\'row\'&lt;\'col-xs-6\'i&gt;&lt;\'col-xs-6\'p&gt;&gt;</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"facet\">\n            <language index=\"lDEF\">\n                <field index=\"settings.isVisualSearchBar\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.facets\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logicalSeparator\">\n                    <value index=\"vDEF\">logicalAnd</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"detailView\">\n            <language index=\"lDEF\">\n                <field index=\"settings.templateDetail\">\n                    <value index=\"vDEF\">EXT:vidi_frontend/Resources/Private/Templates/Content/Show.html</value>\n                </field>\n                <field index=\"settings.hasClickOnRow\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.targetPageDetail\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.parameterPrefix\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"massActions\">\n            <language index=\"lDEF\">\n                <field index=\"settings.actions\">\n                    <value index=\"vDEF\">export_xls,export_xml,export_csv</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(460,128,0,0,0,'',0,0,0,0,0,0,1459528865,1459527758,1,0,1536,'list','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','vidifrontend_pi1',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"settings.dataType\">\n                    <value index=\"vDEF\">fe_groups</value>\n                </field>\n                <field index=\"settings.columns\">\n                    <value index=\"vDEF\">title</value>\n                </field>\n                <field index=\"settings.selection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.additionalEquals\">\n                    <value index=\"vDEF\"># Example for Files (sys_file):\n# storage = 1,\n# identifier like /images/%,\n# metadata.categories = 1\n\n# Example for Frontend Users (fe_users):\n# usergroup.uid = 1,2\n# lastname like customer%\n</value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.sorting\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.direction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"grid\">\n            <language index=\"lDEF\">\n                <field index=\"settings.loadContentByAjax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.defaultNumberOfItems\">\n                    <value index=\"vDEF\">10, 20, 50, 100, -1</value>\n                </field>\n                <field index=\"settings.gridClassName\">\n                    <value index=\"vDEF\">table table-striped table-hover</value>\n                </field>\n                <field index=\"settings.hasColumnHeaders\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.gridConfiguration\">\n                    <value index=\"vDEF\">t</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"facet\">\n            <language index=\"lDEF\">\n                <field index=\"settings.isVisualSearchBar\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.facets\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logicalSeparator\">\n                    <value index=\"vDEF\">logicalAnd</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"detailView\">\n            <language index=\"lDEF\">\n                <field index=\"settings.templateDetail\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hasClickOnRow\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.targetPageDetail\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.parameterPrefix\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"massActions\">\n            <language index=\"lDEF\">\n                <field index=\"settings.actions\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(461,128,0,0,0,'',0,0,0,0,0,0,1459528895,1459528447,1,0,512,'textmedia','Dynamic list of FE Users','This content is generated by a plugin &quot;vidi_frontend&quot; which renders in a flexible way dynamic list of content. Check out the settings in the BE where you can define the columns, pre-selections, facets and much more. In this example you can filter, sort, display a detail view, export data to various format. <link https://github.com/fabarea/vidi_frontend/ - external-link-new-window \"Opens internal link in current window\">More information on Github</link>.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(462,128,0,0,0,'',0,0,0,0,0,461,1459528922,1459528708,1,0,1024,'textmedia','Dynamic list of FE User Groups','The same as above except the Grid was stripped to a bare minimum to display Frontend User Group',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(463,129,0,0,0,'',0,0,0,0,0,0,1459530427,1459529006,1,0,512,'list','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','vidifrontend_pi1',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"settings.dataType\">\n                    <value index=\"vDEF\">sys_file</value>\n                </field>\n                <field index=\"settings.columns\">\n                    <value index=\"vDEF\">__checkbox,fileinfo,metadata.title,metadata.categories,name,__buttons</value>\n                </field>\n                <field index=\"settings.selection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.additionalEquals\">\n                    <value index=\"vDEF\"># Example for Files (sys_file):\nstorage = 2\nmetadata.categories = 5\n</value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.sorting\">\n                    <value index=\"vDEF\">metadata.title</value>\n                </field>\n                <field index=\"settings.direction\">\n                    <value index=\"vDEF\">ASC</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"grid\">\n            <language index=\"lDEF\">\n                <field index=\"settings.loadContentByAjax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.defaultNumberOfItems\">\n                    <value index=\"vDEF\">10, 20, 50, 100, -1</value>\n                </field>\n                <field index=\"settings.gridClassName\">\n                    <value index=\"vDEF\">table table-striped table-hover</value>\n                </field>\n                <field index=\"settings.hasColumnHeaders\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.gridConfiguration\">\n                    <value index=\"vDEF\">&lt;\'row\'&lt;\'col-sm-10 visual-search-container\'&gt;&lt;\'col-xs-2 hidden-xs\'l&gt;r&gt;&lt;\'row\'&lt;\'col-xs-12\'t&gt;&gt;&lt;\'row\'&lt;\'col-sm-4\'i&gt;&lt;\'col-sm-4\'f&gt;&lt;\'col-sm-4\'p&gt;&gt;</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"facet\">\n            <language index=\"lDEF\">\n                <field index=\"settings.isVisualSearchBar\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.facets\">\n                    <value index=\"vDEF\">extension,metadata.categories</value>\n                </field>\n                <field index=\"settings.logicalSeparator\">\n                    <value index=\"vDEF\">logicalAnd</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"detailView\">\n            <language index=\"lDEF\">\n                <field index=\"settings.templateDetail\">\n                    <value index=\"vDEF\">EXT:vidi_frontend/Resources/Private/Templates/Content/Show.html</value>\n                </field>\n                <field index=\"settings.hasClickOnRow\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.targetPageDetail\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.parameterPrefix\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"massActions\">\n            <language index=\"lDEF\">\n                <field index=\"settings.actions\">\n                    <value index=\"vDEF\">export_xls,export_xml,export_csv</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(464,129,0,0,0,'',0,0,0,0,0,461,1459530335,1459529248,1,0,128,'textmedia','Dynamic list of Files','This content is generated by a plugin &quot;vidi_frontend&quot; which renders in a flexible way dynamic list of content. In this example the content is fetched, filtered and sorted by ajax for the storage &quot;speciality&quot; (#2) and category &quot;image gallery&quot; (#5). The User can filter files by facets thanks to the <link http://documentcloud.github.io/visualsearch/ - - \"Opens internal link in current window\">VisualSearch</link> bar. <link https://github.com/fabarea/vidi_frontend/ - external-link-new-window \"Opens internal link in current window\">More information on Github</link>.',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(465,131,0,0,0,'',0,0,0,0,0,0,1459532055,1459531836,1,0,256,'speciality_textimage','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"settings.image\">\n                    <value index=\"vDEF\">fileadmin/speciality_distribution/public/images/a1.jpg</value>\n                </field>\n                <field index=\"settings.imageTitle\">\n                    <value index=\"vDEF\">Donec condimentum tellus at metus placerat feugiat.</value>\n                </field>\n                <field index=\"settings.maxWidth\">\n                    <value index=\"vDEF\">400</value>\n                </field>\n                <field index=\"settings.imageAlign\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"settings.link\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.more\">\n                    <value index=\"vDEF\">Enlarged</value>\n                </field>\n                <field index=\"settings.responsiveViewImage\">\n                    <value index=\"vDEF\">visible</value>\n                </field>\n                <field index=\"settings.responsiveViewText\">\n                    <value index=\"vDEF\">visible</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(466,131,0,0,0,'',0,0,0,0,0,0,1459531934,1459531862,1,0,1,'textmedia','Lorem Ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et justo turpis. Nunc non felis ante. Vestibulum quis blandit augue. Sed tempor purus sit amet lorem suscipit elementum. Vivamus sed nunc tortor. Morbi consectetur ante et lorem congue et ultrices augue vehicula. Donec condimentum tellus at metus placerat feugiat. ',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,46500,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'','9.0',NULL),(467,132,0,0,0,'',0,0,0,0,0,0,1459533405,1459532501,1,0,256,'textmedia','Add your custom Content Element','Adding your new custom Content Element is an easy task thanks to <link https://fluidtypo3.org/ - - \"Opens internal link in current window\">fluidtypo3</link> framework.\r\n<ol><li>Copy &amp; paste a file from <span class=\"code\">EXT:speciality/Resources/Private/Templates/Content</span></li><li>Add some localizable labels into <span class=\"code\">EXT:speciality/Resources/Private/Language/locallang.xlf</span> - clear the cache in the BE afterwards or with the CLI <span class=\"code\">./typo3cms cache:flush</span></li><li>Add a possible icon to this new created Content Element for the BE</li></ol>\r\nThe BE rendering is mainly powered by Flux, its documentation can be found <link https://fluidtypo3.org/viewhelpers/flux/master.html - - \"Opens internal link in current window\">online</link>. See below a partial list of custom Content Elements as seen by the admin BE User.',0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,NULL,'',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(468,132,0,0,0,'',0,0,0,0,0,0,1459533617,1459533066,1,0,512,'speciality_simpleresponsiveimage','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"SimpleResponsiveImage\">\n            <language index=\"lDEF\">\n                <field index=\"settings.SimpleContentImage\">\n                    <value index=\"vDEF\">fileadmin/speciality_distribution/public/images/bootstrap_content_elements.png</value>\n                </field>\n                <field index=\"settings.SimpleContentImageClass\">\n                    <value index=\"vDEF\">none</value>\n                </field>\n                <field index=\"settings.SimpleContentImageAlt\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.SimpleContentImageCaption\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.SimpleContentImageTitle\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.SimpleContentImageWidth\">\n                    <value index=\"vDEF\">1140</value>\n                </field>\n                <field index=\"settings.SimpleContentImageLink\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additionalCSS\">\n            <language index=\"lDEF\">\n                <field index=\"settings.SimpleContentImageCustomCSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.SimpleContentImageCaptionCustomCSS\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(469,130,0,0,0,'',0,0,0,0,0,0,1459534001,1459534001,1,0,256,'list','',NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','','',0,'0','naturalgallery_pi1',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"selection\">\n            <language index=\"lDEF\">\n                <field index=\"settings.folders\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.selection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.additionalEquals\">\n                    <value index=\"vDEF\">metadata.categories = 5</value>\n                </field>\n                <field index=\"settings.sorting\">\n                    <value index=\"vDEF\">metadata.title</value>\n                </field>\n                <field index=\"settings.direction\">\n                    <value index=\"vDEF\">ASC</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"imageSettings\">\n            <language index=\"lDEF\">\n                <field index=\"settings.thumbnailFormat\">\n                    <value index=\"vDEF\">natural</value>\n                </field>\n                <field index=\"settings.lightbox\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.showLabels\">\n                    <value index=\"vDEF\">hover</value>\n                </field>\n                <field index=\"settings.imagesPerRow\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.margin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.round\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.thumbnailMaximumHeight\">\n                    <value index=\"vDEF\">300</value>\n                </field>\n                <field index=\"settings.enlargedImageMaximumWidth\">\n                    <value index=\"vDEF\">1600</value>\n                </field>\n                <field index=\"settings.enlargedImageMaximumHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"filterBar\">\n            <language index=\"lDEF\">\n                <field index=\"settings.showHeader\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.showFilters\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL),(470,130,0,0,0,'',0,0,0,0,0,461,1459534517,1459534087,1,0,128,'textmedia','Natural Gallery','This content is generated by a plugin &quot;natural_gallery&quot; which renders images as you scroll and enlarged them in a slideshow. The layout is particularly well adapted for mobile version where you can swipe images. Check out the settings in the BE where you can configure the source of images as well as various display options. In this example images are filtered by a category &quot;image gallery&quot; (#5). <link https://github.com/Ecodev/natural-gallery-typo3/ - external-link-new-window \"Opens internal link in current window\">More information on Github</link>.',0,0,0,2,0,0,0,0,0,'','',0,0,0,'','','',0,'0','',1,0,'',0,'','',0,0,0,0,0,NULL,'',0,'',0,'','','',0,0,NULL,NULL,124,0,0,0,0,0,0,0,'','default',0,0,'','',0,'',NULL,NULL);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
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
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','http://typo3.org/wsdl/tx_ter_wsdl.php','http://repositories.typo3.org/mirrors.xml.gz',1426086534,6604);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `personal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathdata`
--

DROP TABLE IF EXISTS `tx_realurl_pathdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathdata` (
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext,
  `pagepath` text,
  `expire` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uid`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathdata`
--

LOCK TABLES `tx_realurl_pathdata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_pathdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `field_alias` varchar(255) NOT NULL DEFAULT '',
  `field_id` varchar(60) NOT NULL DEFAULT '',
  `value_alias` varchar(255) NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldata`
--

DROP TABLE IF EXISTS `tx_realurl_urldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `original_url` text,
  `speaking_url` text,
  `request_variables` text,
  `expire` int(11) NOT NULL DEFAULT '0',
  `original_url_hash` int(10) unsigned NOT NULL DEFAULT '0',
  `speaking_url_hash` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq2` (`rootpage_id`,`speaking_url`(32)),
  KEY `page_id` (`page_id`),
  KEY `pathq1` (`rootpage_id`,`original_url`(32),`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldata`
--

LOCK TABLES `tx_realurl_urldata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_urldata` ENABLE KEYS */;
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
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `nextexecution` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(11) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text,
  `lastexecution_context` varchar(3) NOT NULL DEFAULT '',
  `serialized_task_object` blob,
  `serialized_executions` blob,
  `task_group` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
INSERT INTO `tx_scheduler_task` VALUES (1,1455819676,0,'',1456275600,0,NULL,'','O:48:\"TYPO3\\CMS\\Scheduler\\Task\\FileStorageIndexingTask\":7:{s:10:\"storageUid\";i:1;s:10:\"\0*\0taskUid\";i:1;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1455819658;s:6:\"\0*\0end\";s:1:\"0\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:9:\"0 2 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1456275600;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:3;}',NULL,3),(2,1455819732,0,'',1456279200,0,NULL,'','O:50:\"TYPO3\\CMS\\Scheduler\\Task\\FileStorageExtractionTask\":8:{s:10:\"storageUid\";i:1;s:12:\"maxFileCount\";i:1000;s:10:\"\0*\0taskUid\";i:2;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1455819712;s:6:\"\0*\0end\";s:1:\"0\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:9:\"0 3 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1456279200;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:3;}',NULL,3),(3,1456243958,0,'',1456284300,0,NULL,'','O:51:\"TYPO3\\CMS\\Scheduler\\Task\\TableGarbageCollectionTask\":9:{s:9:\"allTables\";b:0;s:12:\"numberOfDays\";i:180;s:5:\"table\";s:7:\"sys_log\";s:10:\"\0*\0taskUid\";i:3;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1456243915;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:10:\"25 4 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1456284300;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:1;}',NULL,1),(4,1456243997,0,'',1456284300,0,NULL,'','O:51:\"TYPO3\\CMS\\Scheduler\\Task\\TableGarbageCollectionTask\":9:{s:9:\"allTables\";b:0;s:12:\"numberOfDays\";i:30;s:5:\"table\";s:11:\"sys_history\";s:10:\"\0*\0taskUid\";i:4;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1456243971;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:10:\"25 4 * * *\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1456284300;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:1;}',NULL,1),(5,1456244024,0,'',1456786800,0,NULL,'','O:54:\"TYPO3\\CMS\\Scheduler\\Task\\RecyclerGarbageCollectionTask\":8:{s:12:\"numberOfDays\";i:30;s:20:\"\0*\0recyclerDirectory\";s:10:\"_recycler_\";s:10:\"\0*\0taskUid\";i:5;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1456244002;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:8:\"@monthly\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1456786800;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:3;}',NULL,3),(6,1456244120,0,'',1456633560,0,NULL,'','O:50:\"TYPO3\\CMS\\Scheduler\\Task\\OptimizeDatabaseTableTask\":7:{s:14:\"selectedTables\";a:83:{i:0;s:14:\"backend_layout\";i:1;s:9:\"be_groups\";i:2;s:11:\"be_sessions\";i:3;s:8:\"be_users\";i:4;s:15:\"cache_md5params\";i:5;s:14:\"cache_treelist\";i:6;s:13:\"cf_cache_hash\";i:7;s:18:\"cf_cache_hash_tags\";i:8;s:19:\"cf_cache_imagesizes\";i:9;s:24:\"cf_cache_imagesizes_tags\";i:10;s:14:\"cf_cache_pages\";i:11;s:19:\"cf_cache_pages_tags\";i:12;s:20:\"cf_cache_pagesection\";i:13;s:25:\"cf_cache_pagesection_tags\";i:14;s:17:\"cf_cache_rootline\";i:15;s:22:\"cf_cache_rootline_tags\";i:16;s:33:\"cf_extbase_datamapfactory_datamap\";i:17;s:38:\"cf_extbase_datamapfactory_datamap_tags\";i:18;s:17:\"cf_extbase_object\";i:19;s:22:\"cf_extbase_object_tags\";i:20;s:21:\"cf_extbase_reflection\";i:21;s:26:\"cf_extbase_reflection_tags\";i:22;s:33:\"cf_extbase_typo3dbbackend_queries\";i:23;s:38:\"cf_extbase_typo3dbbackend_queries_tags\";i:24;s:38:\"cf_extbase_typo3dbbackend_tablecolumns\";i:25;s:43:\"cf_extbase_typo3dbbackend_tablecolumns_tags\";i:26;s:15:\"cf_fluidcontent\";i:27;s:20:\"cf_fluidcontent_tags\";i:28;s:7:\"cf_flux\";i:29;s:12:\"cf_flux_tags\";i:30;s:20:\"cf_static_file_cache\";i:31;s:25:\"cf_static_file_cache_tags\";i:32;s:11:\"cf_vhs_main\";i:33;s:16:\"cf_vhs_main_tags\";i:34;s:15:\"cf_vhs_markdown\";i:35;s:20:\"cf_vhs_markdown_tags\";i:36;s:7:\"cf_vidi\";i:37;s:12:\"cf_vidi_tags\";i:38;s:9:\"fe_groups\";i:39;s:15:\"fe_session_data\";i:40;s:11:\"fe_sessions\";i:41;s:8:\"fe_users\";i:42;s:5:\"pages\";i:43;s:22:\"pages_language_overlay\";i:44;s:16:\"sys_be_shortcuts\";i:45;s:12:\"sys_category\";i:46;s:22:\"sys_category_record_mm\";i:47;s:14:\"sys_collection\";i:48;s:22:\"sys_collection_entries\";i:49;s:10:\"sys_domain\";i:50;s:8:\"sys_file\";i:51;s:19:\"sys_file_collection\";i:52;s:17:\"sys_file_metadata\";i:53;s:22:\"sys_file_processedfile\";i:54;s:18:\"sys_file_reference\";i:55;s:16:\"sys_file_storage\";i:56;s:14:\"sys_filemounts\";i:57;s:11:\"sys_history\";i:58;s:12:\"sys_language\";i:59;s:17:\"sys_lockedrecords\";i:60;s:7:\"sys_log\";i:61;s:8:\"sys_news\";i:62;s:8:\"sys_note\";i:63;s:12:\"sys_refindex\";i:64;s:12:\"sys_registry\";i:65;s:12:\"sys_template\";i:66;s:10:\"tt_content\";i:67;s:42:\"tx_extensionmanager_domain_model_extension\";i:68;s:43:\"tx_extensionmanager_domain_model_repository\";i:69;s:17:\"tx_impexp_presets\";i:70;s:21:\"tx_realurl_chashcache\";i:71;s:19:\"tx_realurl_errorlog\";i:72;s:20:\"tx_realurl_pathcache\";i:73;s:20:\"tx_realurl_redirects\";i:74;s:20:\"tx_realurl_uniqalias\";i:75;s:25:\"tx_realurl_urldecodecache\";i:76;s:25:\"tx_realurl_urlencodecache\";i:77;s:15:\"tx_rsaauth_keys\";i:78;s:22:\"tx_rtehtmlarea_acronym\";i:79;s:17:\"tx_scheduler_task\";i:80;s:23:\"tx_scheduler_task_group\";i:81;s:18:\"tx_vidi_preference\";i:82;s:17:\"tx_vidi_selection\";}s:10:\"\0*\0taskUid\";i:6;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1456244067;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:10:\"26 5 * * 0\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1456633560;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:1;}',NULL,1),(7,1456244188,1,'',1456633500,0,NULL,'','O:32:\"TYPO3\\CMS\\Extbase\\Scheduler\\Task\":9:{s:20:\"\0*\0commandIdentifier\";s:20:\"lang:language:update\";s:12:\"\0*\0arguments\";a:0:{}s:11:\"\0*\0defaults\";a:1:{s:15:\"localesToUpdate\";s:0:\"\";}s:10:\"\0*\0taskUid\";i:7;s:11:\"\0*\0disabled\";b:1;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1456244136;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:10:\"25 5 * * 0\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1456633500;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:4;}',NULL,4),(8,1456244258,1,'',1456723500,0,NULL,'','O:45:\"TYPO3\\CMS\\Reports\\Task\\SystemStatusUpdateTask\":7:{s:20:\"\0*\0notificationEmail\";s:17:\"support@email.com\";s:10:\"\0*\0taskUid\";i:8;s:11:\"\0*\0disabled\";b:1;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1456244203;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:10:\"25 6 * * 1\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1456723500;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:2;}',NULL,2),(9,1456244313,0,'',1456246800,0,NULL,'','O:45:\"TYPO3\\CMS\\Saltedpasswords\\Task\\BulkUpdateTask\":9:{s:20:\"\0*\0canDeactivateSelf\";b:1;s:18:\"\0*\0numberOfRecords\";i:250;s:20:\"\0*\0userRecordPointer\";a:2:{s:2:\"FE\";i:0;s:2:\"BE\";i:0;}s:10:\"\0*\0taskUid\";i:9;s:11:\"\0*\0disabled\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1456244295;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:0;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:7:\"@hourly\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1456246800;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:4;}',NULL,4);
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
INSERT INTO `sys_category_record_mm` VALUES (4,10,'sys_file_metadata','categories',1,1),(4,9,'sys_file_metadata','categories',2,1),(4,8,'sys_file_metadata','categories',3,1),(4,7,'sys_file_metadata','categories',4,1),(7,25,'sys_file_metadata','categories',0,1),(7,24,'sys_file_metadata','categories',0,1),(7,23,'sys_file_metadata','categories',0,1),(7,22,'sys_file_metadata','categories',0,1),(7,21,'sys_file_metadata','categories',0,1),(4,6,'sys_file_metadata','categories',5,1),(7,6,'sys_file_metadata','categories',0,2),(4,5,'sys_file_metadata','categories',6,1),(7,5,'sys_file_metadata','categories',0,2),(4,4,'sys_file_metadata','categories',7,1),(7,4,'sys_file_metadata','categories',0,2),(5,25,'sys_file_metadata','categories',0,2),(5,24,'sys_file_metadata','categories',0,2),(5,23,'sys_file_metadata','categories',0,2),(5,22,'sys_file_metadata','categories',0,2),(5,21,'sys_file_metadata','categories',0,2),(5,10,'sys_file_metadata','categories',0,2),(5,9,'sys_file_metadata','categories',0,2),(5,8,'sys_file_metadata','categories',0,2),(5,7,'sys_file_metadata','categories',0,2),(5,6,'sys_file_metadata','categories',0,3),(5,5,'sys_file_metadata','categories',0,3),(5,4,'sys_file_metadata','categories',0,3);
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-18  9:02:43
