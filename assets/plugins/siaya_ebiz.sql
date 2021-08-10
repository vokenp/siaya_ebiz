-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: siaya_ebiz
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TestTbl`
--

DROP TABLE IF EXISTS `TestTbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TestTbl` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TestTbl`
--

LOCK TABLES `TestTbl` WRITE;
/*!40000 ALTER TABLE `TestTbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `TestTbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adodb_logsql`
--

DROP TABLE IF EXISTS `adodb_logsql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adodb_logsql` (
  `created` datetime NOT NULL,
  `sql0` varchar(250) NOT NULL,
  `sql1` text NOT NULL,
  `params` text NOT NULL,
  `tracer` text NOT NULL,
  `timer` decimal(16,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adodb_logsql`
--

LOCK TABLES `adodb_logsql` WRITE;
/*!40000 ALTER TABLE `adodb_logsql` DISABLE KEYS */;
INSERT INTO `adodb_logsql` VALUES ('2019-05-16 07:41:39','183.3137146373','INSERT INTO dh_applications ( CREATEDBY, DATECREATED, APPLICATIONNAME, ICONREF, DISPLAYORDER, APPCODE ) VALUES ( \'admin\', \'2019-05-16 07:41:39\', \'Police\', \'fa fa-users\', 5, \'Police\' )','','<br>localhost/myspzadmin/admin/bin/ManageRecords.php',0.093266),('2019-05-16 07:46:34','181.903442449','INSERT INTO dh_applications ( CREATEDBY, DATECREATED, APPLICATIONNAME, ICONREF, DISPLAYORDER, APPCODE ) VALUES ( \'admin\', \'2019-05-16 07:46:34\', \'sfdasdf\', \'fsasfd\', 22, \'sfdasdf\' )','','<br>localhost/myspzadmin/admin/bin/ManageRecords.php',0.074231),('2019-05-16 07:48:10','33.2187596038','SELECT * FROM audit_trail LIMIT 1','','<br>localhost/myspzadmin/admin/bin/ManageRecords.php',0.078794);
/*!40000 ALTER TABLE `adodb_logsql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allowancesrate`
--

DROP TABLE IF EXISTS `allowancesrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allowancesrate` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `AllowanceRank` varchar(255) DEFAULT NULL,
  `AllowanceAmount` int DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allowancesrate`
--

LOCK TABLES `allowancesrate` WRITE;
/*!40000 ALTER TABLE `allowancesrate` DISABLE KEYS */;
INSERT INTO `allowancesrate` VALUES (2,'admin','2019-07-02 15:42:23',NULL,'2019-07-02 12:42:23','ChairPerson',6500),(3,'admin','2019-07-02 15:43:20',NULL,'2019-07-02 12:43:20','Vice ChairPerson',5200),(4,'admin','2019-07-02 15:43:58',NULL,'2019-07-02 12:43:58','Member',3900);
/*!40000 ALTER TABLE `allowancesrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appconfigs`
--

DROP TABLE IF EXISTS `appconfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appconfigs` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `confName` varchar(255) DEFAULT NULL,
  `confValue` varchar(255) DEFAULT NULL,
  `confType` varchar(255) DEFAULT NULL,
  `AttribLabel` varchar(255) DEFAULT NULL,
  `AttribType` varchar(255) DEFAULT NULL,
  `AttribRequired` varchar(255) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appconfigs`
--

LOCK TABLES `appconfigs` WRITE;
/*!40000 ALTER TABLE `appconfigs` DISABLE KEYS */;
INSERT INTO `appconfigs` VALUES (1,'admin','2018-02-16 10:16:24','admin','2019-09-05 17:45:36','YearRange','9','GeneralConfiguration','YearRange','number','true'),(2,'admin','2016-02-18 03:25:52','admin','2018-02-16 13:03:49','ApiUserName','vokenp','SMSAPI','ApiUserName','text','True'),(3,'admin','2016-02-18 03:26:30','admin','2018-02-16 13:03:49','ApiKey','bd53aeb5c980c1cdebb072651aedf7b9549661d36ae8e4a4afbf80cb2a452bba','SMSAPI','ApiKey','text','True'),(4,'admin','2016-02-18 03:44:15','','1900-01-01 00:00:00','AssetPath','/var/www/html/siaya_ebiz/assets/StoragePool/','AssetPath','Asset Storage Path','text','True'),(5,'admin','2016-02-18 04:09:55','admin','2021-08-10 11:56:04','smtpauth','true','Mail','SMTP Authutication','text','True'),(6,'admin','2016-02-18 04:10:14','admin','2021-08-10 11:56:04','smtpuser','vphptest@gmail.com','Mail','SMTP UserName','text','True'),(7,'admin','2016-02-18 04:10:36','admin','2021-08-10 11:56:04','smtppass','mainguru@home','Mail','SMTP Password','password','True'),(8,'admin','2016-02-18 04:10:52','admin','2021-08-10 11:56:04','smtphost','smtp.gmail.com','Mail','SMTP Host','text','True'),(9,'admin','2016-02-18 04:11:10','admin','2021-08-10 11:56:04','smtpsecure','ssl','Mail','SMTP Security','text','True'),(10,'admin','2016-02-18 04:11:37','admin','2021-08-10 11:56:04','smtpport','465','Mail','SMTP Port','number','True'),(11,'admin','2017-11-01 07:26:41','admin','2021-08-10 11:57:28','CompanyName','The County Assembly of Siaya','CompanyInfo','Company Name','text','True'),(12,'admin','2017-11-01 07:29:00','admin','2021-08-10 11:57:28','CompanyAddress','P.O. Box 7, SIAYA. ','CompanyInfo','Company Address','text','True'),(13,'admin','2017-11-01 07:29:00','admin','2021-08-10 11:57:28','CompanyTel','Clerk: 057-5321021  Speaker: 057-5321020 Mobile:0708745148','CompanyInfo','Company Telephone','text','True'),(14,'admin','2017-11-01 07:29:00','admin','2021-08-10 11:57:28','CompanyEmail','clerk@siayaassembly.go.ke','CompanyInfo','Company Email','text','True'),(17,'admin','2017-11-01 07:29:00','admin','2021-08-10 11:57:28','CompanyLogo','http://logo.png','CompanyInfo','CompanyLogo','text','False'),(19,'admin','2018-02-16 10:24:14','admin','2018-02-16 13:24:22','QueryLimit','20','QuerySetting','Querylimit','number','true'),(20,'admin','2018-03-22 06:22:03','admin','2021-08-10 11:57:41','DefaultPassword','siaya041','UserSetting','Default Password','text','True'),(21,'admin','2018-03-28 12:03:48','admin','2021-08-10 11:56:04','SendName','County Assembly of Siaya','Mail','Sending Name','text','True');
/*!40000 ALTER TABLE `appconfigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assemblybizdocs`
--

DROP TABLE IF EXISTS `assemblybizdocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assemblybizdocs` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DocID` int DEFAULT NULL,
  `DocumentDate` date DEFAULT NULL,
  `DocumentTitle` varchar(255) DEFAULT NULL,
  `DocumentCategory` varchar(255) DEFAULT NULL,
  `CommitteeDocType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assemblybizdocs`
--

LOCK TABLES `assemblybizdocs` WRITE;
/*!40000 ALTER TABLE `assemblybizdocs` DISABLE KEYS */;
/*!40000 ALTER TABLE `assemblybizdocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assemblybusiness`
--

DROP TABLE IF EXISTS `assemblybusiness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assemblybusiness` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DocumentCategory` varchar(255) DEFAULT NULL,
  `DocumentDescription` text,
  `DisplayOrder` int DEFAULT NULL,
  `EnableEmpty` varchar(255) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assemblybusiness`
--

LOCK TABLES `assemblybusiness` WRITE;
/*!40000 ALTER TABLE `assemblybusiness` DISABLE KEYS */;
/*!40000 ALTER TABLE `assemblybusiness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assemblycommittees`
--

DROP TABLE IF EXISTS `assemblycommittees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assemblycommittees` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CommitteeName` varchar(255) DEFAULT NULL,
  `CommitteeDescription` text,
  `ClerkResponsible` varchar(255) DEFAULT NULL,
  `CommitteeType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assemblycommittees`
--

LOCK TABLES `assemblycommittees` WRITE;
/*!40000 ALTER TABLE `assemblycommittees` DISABLE KEYS */;
INSERT INTO `assemblycommittees` VALUES (1,'admin','2021-08-10 10:58:28','admin','2021-08-10 07:59:11','Budget and Appropriations','Matters relating to coordination, control and monitoring of the County budget, discuss and review the estimates and make recommendations to the County Assembly; examine the County Fiscal Strategy Paper presented to the County Assembly; examine Bills related to the national budget, including Appropriations Bills; and evaluate tax estimates, economic and budgetary policies and programs with direct budget outlays.','kevin','SECTORAL COMMITTEE'),(2,'admin','2021-08-10 10:59:54',NULL,'2021-08-10 07:59:54','Tourism, wildlife conservation and Information','Matters related to local tourism, county parks, beaches and recreation facilities including hotels, implementation of specific national government policies on natural resources and environmental conservation, including soil and water conservation, forestry and wildlife,  control of air pollution, noise pollution and other public nuisances, and, information services.','kevin','SELECT COMMITTEE'),(3,'admin','2021-08-10 11:06:45',NULL,'2021-08-10 08:06:45','Lands, Physical Planning, Surveying and Housing','Matters relating to spatial planning, land administration, adjudication within the confines of the relevant legislation, urban development, markets, land survey and mapping; boundaries and fencing; housing and electricity and gas reticulation and energy regulation including working with national institutions on land and physical planning.','kevin','SELECT COMMITTEE'),(4,'admin','2021-08-10 11:08:05',NULL,'2021-08-10 08:08:05','Agriculture, Livestock and Fisheries','Matters related to agriculture, including crop and animal husbandry, livestock sale yards, County abattoirs, plant and animal disease control and fisheries; implementation of specific national government policies on natural resources and environmental conservation, including soil and water conservation and forestry, control of air pollution, noise pollution, other public nuisances and outdoor advertising.','kevin','SELECT COMMITTEE'),(5,'admin','2021-08-10 11:08:34',NULL,'2021-08-10 08:08:34','Public Works, Roads, Transport and Communication','Matters related to County transport, including County roads, street lighting, traffic and parking, public transport, ferries and harbors, excluding the regulation of international and national shipping and matters related thereto; County public works and services including storm water management systems in built up areas and water.','kevin','SELECT COMMITTEE'),(6,'admin','2021-08-10 11:09:08',NULL,'2021-08-10 08:09:08','County Assembly Procedure and Rules Committee','The Committee;\r\n\r\n    Shall consider and report on all matters relating to the Assembly Standing Orders.\r\n    May propose amendments to the Standing Orders and any such amendments shall upon approval by the County Assembly; take effect at the time appointed by the County Assembly.\r\n    May propose rules for the orderly and effective conduct of committee business and any such rules, shall upon approval by the County Assembly, continue in force until amended or repealed by the County Assembly.\r\n    Shall regulate its own meetings and its own procedure.\r\n    Shall, either on its own motion or as a result of a complaint made by any person, enquire into any alleged breach of the Assembly code of conduct or any conduct of any member within the Precincts of the Assembly (Other than the Chamber) which is likely to reflect adversely on the dignity or integrity of the assembly or any member thereof.\r\n    Shall inquire into any breach of privileges of the assembly and its members as provided for under the Kenyan National Assembly (Powers and privileges) Act, Cap 6 Laws of Kenya.\r\n    Shall, after inquiry as referred to above, report its findings to the Assembly together with its recommendations.\r\n','kevin','SELECT COMMITTEE'),(7,'admin','2021-08-10 11:09:50',NULL,'2021-08-10 08:09:50','County Assembly Public Accounts Committee','The Committee shall;\r\n\r\n    Consider Matters relating to County finance, planning and development including:\r\n\r\n    The examination of the accounts showing the appropriations of the sum voted by the County Assembly to meet the public expenditure and of such other accounts laid before the County Assembly as the Committee may think fit.\r\n    The examination of the reports, accounts and workings of the county public investments.\r\n    The examination, in the context of the autonomy and efficiency of the county public investments, whether the affairs of the county public investments, are being managed in accordance with sound financial or business principles and prudent commercial practices.\r\n','kevin','SELECT COMMITTEE'),(8,'admin','2021-08-10 11:10:15',NULL,'2021-08-10 08:10:15','County Assembly Public Investments','\r\n    The examination of the reports, accounts and workings of the County public investments;\r\n    examine the reports, if any, of the Auditor General on the public investments;\r\n    The examination, in the context of the autonomy and efficiency of the County public investments, whether the affairs of the County public investments, are being managed in accordance with sound financial or business principles and prudent commercial practices.\r\n','kevin','SELECT COMMITTEE'),(9,'admin','2021-08-10 11:10:48',NULL,'2021-08-10 08:10:48','County Committee on Delegated Legislation','The Committee shall –Consider all matters related to statutory instruments and if they are in accord with the provisions of the Constitution, the Act pursuant to which it is made or other relevant written law, including the following:\r\n\r\n    Contains imposition of taxation;\r\n    Directly or indirectly bars the jurisdiction of the Courts;\r\n    Involves expenditure from the County Revenue Fund or other public revenues;\r\n    Defective in its drafting;\r\n    Has administrative powers;\r\n    Delegates legislative powers;\r\n    Is an enabling legislation;\r\n','kevin','SELECT COMMITTEE'),(10,'admin','2021-08-10 11:11:15',NULL,'2021-08-10 08:11:15','County Committee on Justice and Legal Affairs','The Committee shall;\r\n\r\nConsider all matters related to statutory instruments and if they are in accord with the provisions of the Constitution, the Act pursuant to which it is made or other relevant written law, including the following:','kevin','SELECT COMMITTEE'),(11,'admin','2021-08-10 11:16:24',NULL,'2021-08-10 08:16:24','Health Services','Matters related to County health services in particular County health facilities and pharmacies, ambulance services, promotion of primary health care, licensing and control of undertakings that sell food to the public, veterinary services (excluding regulation of the profession), cemeteries, funeral parlours and crematoria and refuse removal, refuse dumps and solid waste disposal.','kevin','SELECT COMMITTEE'),(12,'admin','2021-08-10 11:16:57',NULL,'2021-08-10 08:16:57','Education, Youth Affairs Gender and Social Services','Matters related to pre-primary education, village polytechnics, home craft centres, childcare youth and children welfare.','kevin','SELECT COMMITTEE'),(13,'admin','2021-08-10 11:17:29',NULL,'2021-08-10 08:17:29','Finance, Trade, Industry, Labour and Cooperative Development','All matters related to Public Finance, Economic planning and social development, trade development and regulation including markets, trade licenses (excluding regulation of professions), fair trading practices, and cooperative societies and control of outdoor advertising.','kevin','SELECT COMMITTEE'),(14,'admin','2021-08-10 11:17:54',NULL,'2021-08-10 08:17:54','Water, Environment and Natural Resources','All matters related to water provision for domestic, commercial and industrial use and irrigation of farm land','kevin','SELECT COMMITTEE'),(15,'admin','2021-08-10 11:18:36',NULL,'2021-08-10 08:18:36','Speakers Panel','The Committee Shall;\r\n\r\n    Plan on presiding of Assembly sittings.\r\n    Review Rulings made by the Speaker or presiding member\r\n','kevin','SELECT COMMITTEE'),(16,'admin','2021-08-10 11:19:11',NULL,'2021-08-10 08:19:11','County Assembly Committee on Implementation','he Committee shall scrutinize the resolutions of the County Assembly(including Implementation of adopted committee reports), petitions and the undertakings given by the County Executive Committee and examine –','kevin','SELECT COMMITTEE'),(17,'admin','2021-08-10 11:19:59',NULL,'2021-08-10 08:19:59','General oversight committee','his is committee of the whole house membership that deals with matters that in the opinion of the speaker are better handled outside the other house committees.\r\nThe Committee shall pursuant to section 39(2)(b) of the County Governments Act 2012, invite members of the County Executive Committee to answer questions relating to the members responsibilities as raised by members of the County Assembly under Standing Order No.42 and in accordance with Standing Order No. 22\r\nThe committee may invites to its meeting;','kevin','SELECT COMMITTEE'),(18,'admin','2021-08-10 11:21:13',NULL,'2021-08-10 08:21:13','County Assembly Liaison Committee','The Liaison Committee shall consider reports of Committee that have not been deliberated by the County Assembly and shall report to the County Assembly on the consideration of such reports.','kevin','HOUSE KEEPING COMMITTEE'),(19,'admin','2021-08-10 11:21:55',NULL,'2021-08-10 08:21:55','Committee of Selection','The Committee shall –Nominate members to serve in Committees, save for the membership of the County Assembly Business Committee and Committee on Appointments','kevin','SELECT COMMITTEE'),(20,'admin','2021-08-10 11:22:56',NULL,'2021-08-10 08:22:56','County Assembly Privileges Committee','County Assembly Privileges Committee','kevin','SELECT COMMITTEE'),(21,'admin','2021-08-10 11:23:20',NULL,'2021-08-10 08:23:21','County Assembly House Business Committee','County Assembly House Business Committee','kevin','SELECT COMMITTEE');
/*!40000 ALTER TABLE `assemblycommittees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_trail`
--

DROP TABLE IF EXISTS `audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_trail` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `OpUser` varchar(255) DEFAULT NULL,
  `OpDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OpAction` varchar(255) DEFAULT NULL,
  `OpTable` varchar(255) DEFAULT NULL,
  `OpItemID` int DEFAULT NULL,
  `OpHost` varchar(255) DEFAULT NULL,
  `OpData` longtext,
  `ModCode` int DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=674 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_trail`
--

LOCK TABLES `audit_trail` WRITE;
/*!40000 ALTER TABLE `audit_trail` DISABLE KEYS */;
INSERT INTO `audit_trail` VALUES (1,'admin','2019-07-16 12:54:19','INSERT','dh_columns',95,'41.76.168.124','{\"TblName\":\"assemblycommittees\",\"DisplayName\":\"Committee Type\",\"FieldName\":\"CommitteeType\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(2,'admin','2019-07-16 12:55:03','INSERT','listitems',1406,'41.76.168.124','{\"ItemType\":\"CommitteeType\",\"ItemCode\":\"SECTORAL COMMITTEE\",\"ItemDescription\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-16 15:55:02\"}',0),(3,'admin','2019-07-16 12:55:21','INSERT','listitems',1407,'41.76.168.124','{\"ItemType\":\"CommitteeType\",\"ItemCode\":\"SELECT COMMITTEE\",\"ItemDescription\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-16 15:55:21\"}',0),(4,'admin','2019-07-16 12:55:44','INSERT','listitems',1408,'41.76.168.124','{\"ItemType\":\"CommitteeType\",\"ItemCode\":\"HOUSE KEEPING COMMITTEE\",\"ItemDescription\":\"HOUSE KEEPING COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-16 15:55:44\"}',0),(5,'admin','2019-07-16 13:08:24','INSERT','dh_users',173,'41.76.168.124','{\"loginid\":\"njuguna\",\"Fullname\":\"Njuguna Chege\",\"Phone\":\"22\",\"Email\":\"njuguna.chege@intellihub.co.ke\",\"Position\":\"Manager\",\"PhoneExt\":\"22\",\"user_type\":\"Admin\",\"pswd\":\"ce1845e0f2c0dd9503799f94199d28c2\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-16 16:08:24\"}',2),(6,'kevin','2019-07-16 13:14:06','INSERT','assemblycommittees',1,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMITTEE ON AGRICULTURE LIVESTOCK AND FISHERIES\",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON AGRICULTURE LIVESTOCK AND FISHERIES\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2019-07-16 16:14:06\"}',9),(7,'kevin','2019-07-16 13:17:37','INSERT','assemblycommittees',2,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMMITTEE ON COUNTY PLANNING AND URBANIZATION\",\"CommitteeDescription\":\"SECTORAL COMMMITTEE ON COUNTY PLANNING AND URBANIZATION\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2019-07-16 16:17:37\"}',9),(8,'kevin','2019-07-16 13:28:00','INSERT','assemblycommittees',3,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMITTEE ON COUNTY PUBLIC SERVICE AND ADMINISTRATION\",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON COUNTY PUBLIC SERVICE AND ADMINISTRATION\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2019-07-16 16:28:00\"}',9),(9,'kevin','2019-07-16 13:33:11','INSERT','assemblycommittees',4,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMITTEE ON EDUCATION, SCIENCE AND RESEARCH \",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON EDUCATION, SCIENCE AND RESEARCH \",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2019-07-16 16:33:11\"}',9),(10,'kevin','2019-07-16 13:45:42','INSERT','assemblycommittees',5,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMITTEE ON FINANCE &amp; ECONOMIC PLANNING\",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON FINANCE &amp; ECONOMIC PLANNING\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2019-07-16 16:45:42\"}',9),(11,'kevin','2019-07-16 13:54:55','INSERT','assemblycommittees',6,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMITTEE ON HEALTH SERVICES \\r\\n\\r\\n\",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON HEALTH SERVICES \\r\\n\\r\\n\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2019-07-16 16:54:55\"}',9),(12,'admin','2019-07-17 07:22:27','INSERT','assemblycommittees',7,'102.167.190.153','{\"CommitteeName\":\"SECTORAL COMMITTEE ON FINANCE &amp; ECONOMIC PLANNING\",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON FINANCE &amp; ECONOMIC PLANNING\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 10:22:27\"}',9),(13,'admin','2019-07-17 07:34:36','INSERT','assemblycommittees',8,'102.167.190.153','{\"CommitteeName\":\"SECTORAL COMMITTEE ON HEALTH SERVICES\",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON HEALTH SERVICES\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 10:34:36\"}',9),(14,'admin','2019-07-17 08:11:19','INSERT','assemblycommittees',9,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMITTEE ON TRADE, TOURISM AND COOPERATIVES\",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON TRADE, TOURISM AND COOPERATIVES\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 11:11:19\"}',9),(15,'admin','2019-07-17 08:17:13','INSERT','assemblycommittees',10,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMITTEE ON TRANSPORT,PUBLIC WORKS AND INFRASTRUCTURE\",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON TRANSPORT,PUBLIC WORKS AND INFRASTRUCTURE\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 11:17:13\"}',9),(16,'admin','2019-07-17 08:25:49','INSERT','assemblycommittees',11,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMITTEE ON WATER,ENVINROMENT AND NATURAL RESOURCES\",\"CommitteeDescription\":\"SECTORAL COMMITTEE ON WATER,ENVINROMENT AND NATURAL RESOURCES\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 11:25:49\"}',9),(17,'admin','2019-07-17 08:31:14','INSERT','assemblycommittees',12,'41.76.168.124','{\"CommitteeName\":\"SECTORAL COMMITTEE YOUTH, SPORTS AND SOCIAL SERVICES\",\"CommitteeDescription\":\"SECTORAL COMMITTEE YOUTH, SPORTS AND SOCIAL SERVICES\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 11:31:14\"}',9),(18,'admin','2019-07-17 08:38:49','INSERT','assemblycommittees',13,'41.76.168.124','{\"CommitteeName\":\"SELECT COMMITTEE ON BUDGET AND APPROPRIATIONS\",\"CommitteeDescription\":\"SELECT COMMITTEE ON BUDGET AND APPROPRIATIONS\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 11:38:49\"}',9),(19,'admin','2019-07-17 08:43:54','INSERT','assemblycommittees',14,'41.76.168.124','{\"CommitteeName\":\"COMMITTEE ON COUNTY INNOVATION, COMMUNICATION AND\\r\\nTECHNOLOGY\",\"CommitteeDescription\":\"COMMITTEE ON COUNTY INNOVATION, COMMUNICATION AND\\r\\nTECHNOLOGY\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 11:43:54\"}',9),(20,'admin','2019-07-17 08:52:26','INSERT','assemblycommittees',15,'41.76.168.124','{\"CommitteeName\":\"COMMITTTEE ON COUNTY PUBLIC INVESTMENTS AND ACCOUNTS\",\"CommitteeDescription\":\"COMMITTTEE ON COUNTY PUBLIC INVESTMENTS AND ACCOUNTS\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 11:52:26\"}',9),(21,'admin','2019-07-17 08:56:53','INSERT','assemblycommittees',16,'41.76.168.124','{\"CommitteeName\":\"COMMITTTEE ON DELEGATED LEGISLATION\",\"CommitteeDescription\":\"COMMITTTEE ON DELEGATED LEGISLATION\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 11:56:53\"}',9),(22,'admin','2019-07-17 09:02:04','INSERT','assemblycommittees',17,'41.76.168.124','{\"CommitteeName\":\"COMMITTEE ON IMPLEMENTATION AND LAW AFFAIRS\",\"CommitteeDescription\":\"COMMITTEE ON IMPLEMENTATION AND LAW AFFAIRS\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:02:04\"}',9),(23,'admin','2019-07-17 09:07:52','INSERT','assemblycommittees',18,'41.76.168.124','{\"CommitteeName\":\"COMMITTTEE ON MEMBER\\u2019S SERVICES, FACILITIES AND WELFARE\",\"CommitteeDescription\":\"COMMITTTEE ON MEMBER\\u2019S SERVICES, FACILITIES AND WELFARE\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:07:52\"}',9),(24,'admin','2019-07-17 09:12:15','INSERT','assemblycommittees',19,'41.76.168.124','{\"CommitteeName\":\"ASSEMBLY BUSINESS COMMITTEE (ABC)\",\"CommitteeDescription\":\"ASSEMBLY BUSINESS COMMITTEE (ABC)\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"HOUSE KEEPING COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:12:15\"}',9),(25,'admin','2019-07-17 09:22:18','INSERT','assemblycommittees',20,'41.76.168.124','{\"CommitteeName\":\"COMMITTEE ON APPOINTMENTS\",\"CommitteeDescription\":\"COMMITTEE ON APPOINTMENTS\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"HOUSE KEEPING COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:22:18\"}',9),(26,'admin','2019-07-17 09:26:48','INSERT','assemblycommittees',21,'41.76.168.124','{\"CommitteeName\":\"COMMITTEE ON APPOINTMENTS\",\"CommitteeDescription\":\"COMMITTEE ON APPOINTMENTS\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"HOUSE KEEPING COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:26:48\"}',9),(27,'admin','2019-07-17 09:28:46','INSERT','assemblycommittees',22,'41.76.168.124','{\"CommitteeName\":\"COMMITTTEE ON POWERS AND PRIVILEGES\",\"CommitteeDescription\":\"COMMITTTEE ON POWERS AND PRIVILEGES\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"HOUSE KEEPING COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:28:46\"}',9),(28,'admin','2019-07-17 09:35:58','INSERT','assemblycommittees',23,'41.76.168.124','{\"CommitteeName\":\"PROCEDURE AND RULES COMMITTEE\",\"CommitteeDescription\":\"PROCEDURE AND RULES COMMITTEE\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"HOUSE KEEPING COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:35:58\"}',9),(29,'admin','2019-07-17 09:43:18','INSERT','assemblycommittees',24,'41.76.168.124','{\"CommitteeName\":\"SELECTION COMMITTEE\",\"CommitteeDescription\":\"SELECTION COMMITTEE\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:43:18\"}',9),(30,'admin','2019-07-17 09:47:23','INSERT','assemblycommittees',25,'41.76.168.124','{\"CommitteeName\":\"SPEAKER\\u2019S COMMITTEE\",\"CommitteeDescription\":\"SPEAKER\\u2019S COMMITTEE\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:47:23\"}',9),(31,'admin','2019-07-17 09:58:09','INSERT','assemblycommittees',26,'41.76.168.124','{\"CommitteeName\":\"LIAISON COMMITTEE\",\"CommitteeDescription\":\"LIAISON COMMITTEE\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:58:09\"}',9),(32,'admin','2019-07-17 10:51:47','UPDATE','committemembers',35,'41.76.168.124','[{\"Field\":\"FullName\",\"Ovalue\":\"Hon. On. Mbugua Joseph Mwai\",\"Nvalue\":\"Hon. Mbugua Joseph Mwai\"}]',11),(33,'admin','2019-07-17 11:13:51','UPDATE','committemembers',16,'41.76.168.124','[{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Kagi Lucy Njeri\",\"Nvalue\":\"Hon. Koigi Lucy Njeri\"}]',11),(34,'admin','2019-07-17 11:41:33','UPDATE','committemembers',44,'41.76.168.124','[{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Muongo Josephine Nduta\",\"Nvalue\":\"Hon. Muongi Josephine Nduta\"}]',11),(35,'admin','2019-07-18 07:18:18','INSERT','committemembers',93,'105.50.67.210','{\"PersonnelNo\":\"712000001\",\"FullName\":\"Hon. Margaret Wahu Njoroge\",\"PhoneNo\":\"712000001\",\"Email\":\"wahu@kiambuassembly.go.ke\",\"Designation\":\"SPECIALLY ELECTED\",\"Ward\":\"SPECIALLY ELECTED\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-18 10:18:18\"}',11),(36,'njuguna','2019-07-18 10:23:19','UPDATE','scheduleofmeetings',12,'41.76.168.124','[{\"Field\":\"Venue\",\"Ovalue\":\"Room 4\",\"Nvalue\":\"Room 1\"},{\"Field\":\"FromTime\",\"Ovalue\":\"16:00:00\",\"Nvalue\":\"8:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"17:30:00\",\"Nvalue\":\"10:00 AM\"},{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"mwaura@kiambuassembly.go.ke\"}]',26),(37,'njuguna','2019-07-18 10:25:09','UPDATE','scheduleofmeetings',12,'41.76.168.124','[{\"Field\":\"FromTime\",\"Ovalue\":\"08:30:00\",\"Nvalue\":\"8:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"10:00:00\",\"Nvalue\":\"10:00 AM\"}]',26),(38,'njuguna','2019-07-18 10:27:30','UPDATE','scheduleofmeetings',55,'41.76.168.124','[{\"Field\":\"Venue\",\"Ovalue\":\"Room 3\",\"Nvalue\":\"Room 1\"},{\"Field\":\"FromTime\",\"Ovalue\":\"11:30:00\",\"Nvalue\":\"1:00 PM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"13:00:00\",\"Nvalue\":\"2:30 PM\"},{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"cwakarindi@kiambuassembly.go.ke\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',26),(39,'njuguna','2019-07-18 10:28:39','UPDATE','scheduleofmeetings',21,'41.76.168.124','[{\"Field\":\"MeetingDay\",\"Ovalue\":\"Wednesday\",\"Nvalue\":\"Tuesday\"},{\"Field\":\"FromTime\",\"Ovalue\":\"08:00:00\",\"Nvalue\":\"8:00 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"09:30:00\",\"Nvalue\":\"9:30 AM\"},{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"njogu@kiambuassembly.go.ke\"}]',26),(40,'njuguna','2019-07-18 10:30:57','UPDATE','scheduleofmeetings',22,'41.76.168.124','[{\"Field\":\"FromTime\",\"Ovalue\":\"08:00:00\",\"Nvalue\":\"8:00 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"09:30:00\",\"Nvalue\":\"9:30 AM\"},{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"anita@kiambuassembly.go.ke\"}]',26),(41,'njuguna','2019-07-18 10:33:44','UPDATE','scheduleofmeetings',23,'41.76.168.124','[{\"Field\":\"Venue\",\"Ovalue\":\"Room 4\",\"Nvalue\":\"Room 1\"},{\"Field\":\"FromTime\",\"Ovalue\":\"13:00:00\",\"Nvalue\":\"5:00 PM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"14:30:00\",\"Nvalue\":\"6:30 PM\"},{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',26),(42,'njuguna','2019-07-18 10:43:16','INSERT','scheduleofmeetings',1,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 1\",\"FromTime\":\"08:30:00\",\"ToTime\":\"10:00:00\",\"CommitteeID\":\"10\",\"ClerkResponsible\":\"mwaura@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 13:43:16\"}',26),(43,'njuguna','2019-07-18 10:44:17','INSERT','scheduleofmeetings',2,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 2\",\"FromTime\":\"08:30:00\",\"ToTime\":\"11:00:00\",\"CommitteeID\":\"1\",\"ClerkResponsible\":\"gachie@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 13:44:17\"}',26),(44,'njuguna','2019-07-18 10:45:10','UPDATE','scheduleofmeetings',2,'41.76.168.124','[{\"Field\":\"FromTime\",\"Ovalue\":\"08:30:00\",\"Nvalue\":\"8:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"11:00:00\",\"Nvalue\":\"10:00 AM\"}]',26),(45,'njuguna','2019-07-18 10:46:34','INSERT','scheduleofmeetings',3,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 3\",\"FromTime\":\"10:00:00\",\"ToTime\":\"11:30:00\",\"CommitteeID\":\"14\",\"ClerkResponsible\":\"hellenmwangi@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 13:46:34\"}',26),(46,'njuguna','2019-07-18 10:49:01','INSERT','scheduleofmeetings',4,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 4\",\"FromTime\":\"10:00:00\",\"ToTime\":\"11:30:00\",\"CommitteeID\":\"2\",\"ClerkResponsible\":\"karumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 13:49:01\"}',26),(47,'njuguna','2019-07-18 10:51:09','INSERT','scheduleofmeetings',5,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 1\",\"FromTime\":\"11:30:00\",\"ToTime\":\"13:00:00\",\"CommitteeID\":\"19\",\"ClerkResponsible\":\"liliannuthu@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 13:51:09\"}',26),(48,'njuguna','2019-07-18 10:52:36','INSERT','scheduleofmeetings',6,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 2\",\"FromTime\":\"11:30:00\",\"ToTime\":\"13:00:00\",\"CommitteeID\":\"17\",\"ClerkResponsible\":\"muriuki@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 13:52:36\"}',26),(49,'njuguna','2019-07-18 10:54:40','INSERT','scheduleofmeetings',7,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 3\",\"FromTime\":\"11:30:00\",\"ToTime\":\"13:00:00\",\"CommitteeID\":\"15\",\"ClerkResponsible\":\"stella@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 13:54:40\"}',26),(50,'njuguna','2019-07-18 10:55:37','INSERT','scheduleofmeetings',8,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 4\",\"FromTime\":\"13:00:00\",\"ToTime\":\"14:30:00\",\"CommitteeID\":\"6\",\"ClerkResponsible\":\"mercyikenye@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 13:55:37\"}',26),(51,'njuguna','2019-07-18 10:58:31','INSERT','scheduleofmeetings',9,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 1\",\"FromTime\":\"14:30:00\",\"ToTime\":\"16:00:00\",\"CommitteeID\":\"3\",\"ClerkResponsible\":\"sngatia@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 13:58:31\"}',26),(52,'njuguna','2019-07-18 11:54:19','INSERT','scheduleofmeetings',10,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 2\",\"FromTime\":\"14:30:00\",\"ToTime\":\"16:00:00\",\"CommitteeID\":\"11\",\"ClerkResponsible\":\"nuli@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 14:54:19\"}',26),(53,'njuguna','2019-07-18 11:55:09','INSERT','scheduleofmeetings',11,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 3\",\"FromTime\":\"16:00:00\",\"ToTime\":\"17:30:00\",\"CommitteeID\":\"5\",\"ClerkResponsible\":\"gachie@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 14:55:09\"}',26),(54,'njuguna','2019-07-18 11:56:27','INSERT','scheduleofmeetings',12,'41.76.168.124','{\"MeetingDay\":\"Monday\",\"Venue\":\"Room 4\",\"FromTime\":\"16:00:00\",\"ToTime\":\"17:30:00\",\"CommitteeID\":\"12\",\"ClerkResponsible\":\"njogu@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 14:56:27\"}',26),(55,'njuguna','2019-07-18 11:57:51','INSERT','scheduleofmeetings',13,'41.76.168.124','{\"MeetingDay\":\"Tuesday\",\"Venue\":\"Room 1\",\"FromTime\":\"08:00:00\",\"ToTime\":\"09:30:00\",\"CommitteeID\":\"6\",\"ClerkResponsible\":\"njogu@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 14:57:51\"}',26),(56,'njuguna','2019-07-18 11:59:57','INSERT','scheduleofmeetings',14,'41.76.168.124','{\"MeetingDay\":\"Tuesday\",\"Venue\":\"Room 2\",\"FromTime\":\"09:30:00\",\"ToTime\":\"11:00:00\",\"CommitteeID\":\"13\",\"ClerkResponsible\":\"cwakarindi@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 14:59:57\"}',26),(57,'njuguna','2019-07-18 12:02:12','INSERT','scheduleofmeetings',15,'41.76.168.124','{\"MeetingDay\":\"Tuesday\",\"Venue\":\"Room 3\",\"FromTime\":\"11:00:00\",\"ToTime\":\"12:30:00\",\"CommitteeID\":\"13\",\"ClerkResponsible\":\"jgitahi@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:02:12\"}',26),(58,'njuguna','2019-07-18 12:02:54','UPDATE','scheduleofmeetings',14,'41.76.168.124','[{\"Field\":\"FromTime\",\"Ovalue\":\"09:30:00\",\"Nvalue\":\"9:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"11:00:00\",\"Nvalue\":\"11:00 AM\"},{\"Field\":\"CommitteeID\",\"Ovalue\":\"13\",\"Nvalue\":\"9\"}]',26),(59,'njuguna','2019-07-18 12:04:16','INSERT','scheduleofmeetings',16,'41.76.168.124','{\"MeetingDay\":\"Tuesday\",\"Venue\":\"Room 4\",\"FromTime\":\"11:00:00\",\"ToTime\":\"12:30:00\",\"CommitteeID\":\"16\",\"ClerkResponsible\":\"muriuki@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:04:16\"}',26),(60,'njuguna','2019-07-18 12:05:46','INSERT','scheduleofmeetings',17,'41.76.168.124','{\"MeetingDay\":\"Tuesday\",\"Venue\":\"Room 1\",\"FromTime\":\"12:30:00\",\"ToTime\":\"14:00:00\",\"CommitteeID\":\"14\",\"ClerkResponsible\":\"muriuki@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:05:46\"}',26),(61,'njuguna','2019-07-18 12:06:51','INSERT','scheduleofmeetings',18,'41.76.168.124','{\"MeetingDay\":\"Tuesday\",\"Venue\":\"\",\"FromTime\":\"12:30:00\",\"ToTime\":\"14:00:00\",\"CommitteeID\":\"2\",\"ClerkResponsible\":\"muriuki@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:06:51\"}',26),(62,'njuguna','2019-07-18 12:09:01','INSERT','scheduleofmeetings',19,'41.76.168.124','{\"MeetingDay\":\"Tuesday\",\"Venue\":\"Room 3\",\"FromTime\":\"17:00:00\",\"ToTime\":\"18:30:00\",\"CommitteeID\":\"4\",\"ClerkResponsible\":\"anita@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:09:01\"}',26),(63,'njuguna','2019-07-18 12:14:07','INSERT','scheduleofmeetings',20,'41.76.168.124','{\"MeetingDay\":\"Wednesday\",\"Venue\":\"Room 2\",\"FromTime\":\"08:00:00\",\"ToTime\":\"09:30:00\",\"CommitteeID\":\"1\",\"ClerkResponsible\":\"anita@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:14:07\"}',26),(64,'njuguna','2019-07-18 12:15:21','INSERT','scheduleofmeetings',21,'41.76.168.124','{\"MeetingDay\":\"Wednesday\",\"Venue\":\"Room 3\",\"FromTime\":\"11:30:00\",\"ToTime\":\"13:00:00\",\"CommitteeID\":\"26\",\"ClerkResponsible\":\"cwakarindi@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:15:21\"}',26),(65,'njuguna','2019-07-18 12:18:00','INSERT','scheduleofmeetings',22,'41.76.168.124','{\"MeetingDay\":\"Wednesday\",\"Venue\":\"Room 4\",\"FromTime\":\"13:00:00\",\"ToTime\":\"14:30:00\",\"CommitteeID\":\"4\",\"ClerkResponsible\":\"cwakarindi@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:18:00\"}',26),(66,'njuguna','2019-07-18 12:19:02','INSERT','scheduleofmeetings',23,'41.76.168.124','{\"MeetingDay\":\"Wednesday\",\"Venue\":\"Room 1\",\"FromTime\":\"13:00:00\",\"ToTime\":\"14:30:00\",\"CommitteeID\":\"18\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:19:02\"}',26),(67,'njuguna','2019-07-18 12:20:43','INSERT','scheduleofmeetings',24,'41.76.168.124','{\"MeetingDay\":\"Thursday\",\"Venue\":\"Room 1\",\"FromTime\":\"08:00:00\",\"ToTime\":\"09:30:00\",\"CommitteeID\":\"17\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:20:43\"}',26),(68,'njuguna','2019-07-18 12:22:36','INSERT','scheduleofmeetings',25,'41.76.168.124','{\"MeetingDay\":\"Thursday\",\"Venue\":\"Room 2\",\"FromTime\":\"08:00:00\",\"ToTime\":\"09:30:00\",\"CommitteeID\":\"15\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:22:36\"}',26),(69,'njuguna','2019-07-18 12:28:23','INSERT','scheduleofmeetings',26,'41.76.168.124','{\"MeetingDay\":\"Thursday\",\"Venue\":\"Room 3\",\"FromTime\":\"09:30:00\",\"ToTime\":\"11:00:00\",\"CommitteeID\":\"9\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:28:23\"}',26),(70,'njuguna','2019-07-18 12:29:40','INSERT','scheduleofmeetings',27,'41.76.168.124','{\"MeetingDay\":\"Thursday\",\"Venue\":\"Room 4\",\"FromTime\":\"11:00:00\",\"ToTime\":\"12:30:00\",\"CommitteeID\":\"13\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:29:40\"}',26),(71,'njuguna','2019-07-18 12:30:06','UPDATE','scheduleofmeetings',27,'41.76.168.124','[{\"Field\":\"FromTime\",\"Ovalue\":\"11:00:00\",\"Nvalue\":\"11:00 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"12:30:00\",\"Nvalue\":\"12:30 PM\"}]',26),(72,'njuguna','2019-07-18 12:31:55','INSERT','scheduleofmeetings',28,'41.76.168.124','{\"MeetingDay\":\"Thursday\",\"Venue\":\"Room 1\",\"FromTime\":\"11:00:00\",\"ToTime\":\"12:30:00\",\"CommitteeID\":\"16\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:31:55\"}',26),(73,'njuguna','2019-07-18 12:35:29','INSERT','scheduleofmeetings',29,'41.76.168.124','{\"MeetingDay\":\"Thursday\",\"Venue\":\"Room 3\",\"FromTime\":\"12:30:00\",\"ToTime\":\"14:00:00\",\"CommitteeID\":\"5\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:35:29\"}',26),(74,'njuguna','2019-07-18 12:39:04','INSERT','scheduleofmeetings',30,'41.76.168.124','{\"MeetingDay\":\"Thursday\",\"Venue\":\"Room 4\",\"FromTime\":\"17:00:00\",\"ToTime\":\"18:30:00\",\"CommitteeID\":\"11\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:39:04\"}',26),(75,'njuguna','2019-07-18 12:40:38','INSERT','scheduleofmeetings',31,'41.76.168.124','{\"MeetingDay\":\"Thursday\",\"Venue\":\"Room 1\",\"FromTime\":\"17:00:00\",\"ToTime\":\"18:15:00\",\"CommitteeID\":\"15\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 15:40:38\"}',26),(76,'njuguna','2019-07-18 12:53:56','UPDATE','scheduleofmeetings',31,'41.76.168.124','[{\"Field\":\"FromTime\",\"Ovalue\":\"17:00:00\",\"Nvalue\":\"5:00 PM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"18:15:00\",\"Nvalue\":\"6:15 PM\"},{\"Field\":\"CommitteeID\",\"Ovalue\":\"15\",\"Nvalue\":\"3\"}]',26),(77,'njuguna','2019-07-18 12:54:19','UPDATE','scheduleofmeetings',31,'41.76.168.124','[{\"Field\":\"FromTime\",\"Ovalue\":\"17:00:00\",\"Nvalue\":\"5:00 PM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"18:15:00\",\"Nvalue\":\"6:30 PM\"}]',26),(78,'njuguna','2019-07-18 13:07:59','UPDATE','scheduleofmeetings',18,'41.76.168.124','[{\"Field\":\"Venue\",\"Ovalue\":\"\",\"Nvalue\":\"Room 2\"},{\"Field\":\"FromTime\",\"Ovalue\":\"12:30:00\",\"Nvalue\":\"12:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"14:00:00\",\"Nvalue\":\"2:00 PM\"}]',26),(79,'njuguna','2019-07-18 13:19:43','INSERT','scheduleofmeetings',32,'41.76.168.124','{\"MeetingDay\":\"Wednesday\",\"Venue\":\"Room 1\",\"FromTime\":\"08:00:00\",\"ToTime\":\"09:30:00\",\"CommitteeID\":\"10\",\"ClerkResponsible\":\"anita@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 16:19:43\"}',26),(80,'njuguna','2019-07-18 13:24:45','INSERT','scheduleofmeetings',33,'41.76.168.124','{\"MeetingDay\":\"Thursday\",\"Venue\":\"Room 2\",\"FromTime\":\"12:30:00\",\"ToTime\":\"14:00:00\",\"CommitteeID\":\"12\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-18 16:24:45\"}',26),(81,'njuguna','2019-07-18 13:42:57','UPDATE','assemblycommittees',25,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',9),(82,'njuguna','2019-07-18 13:44:01','UPDATE','assemblycommittees',24,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"cwakarindi@kiambuassembly.go.ke\"}]',9),(83,'njuguna','2019-07-18 13:45:05','UPDATE','assemblycommittees',13,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',9),(84,'njuguna','2019-07-18 13:46:01','UPDATE','assemblycommittees',2,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"muriuki@kiambuassembly.go.ke\"}]',9),(85,'njuguna','2019-07-18 13:49:28','UPDATE','assemblycommittees',12,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"njogu@kiambuassembly.go.ke\"}]',9),(86,'njuguna','2019-07-18 13:51:09','UPDATE','assemblycommittees',11,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"nuli@kiambuassembly.go.ke\"}]',9),(87,'njuguna','2019-07-18 13:51:49','UPDATE','assemblycommittees',10,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"anita@kiambuassembly.go.ke\"}]',9),(88,'njuguna','2019-07-18 13:52:25','UPDATE','assemblycommittees',9,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"cwakarindi@kiambuassembly.go.ke\"}]',9),(89,'njuguna','2019-07-18 13:54:54','UPDATE','assemblycommittees',6,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"njogu@kiambuassembly.go.ke\"}]',9),(90,'njuguna','2019-07-18 13:55:31','UPDATE','assemblycommittees',5,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"gachie@kiambuassembly.go.ke\"}]',9),(91,'njuguna','2019-07-18 13:55:58','UPDATE','assemblycommittees',4,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"anita@kiambuassembly.go.ke\"}]',9),(92,'njuguna','2019-07-18 13:56:58','UPDATE','assemblycommittees',3,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',9),(93,'njuguna','2019-07-18 13:57:30','UPDATE','assemblycommittees',1,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"anita@kiambuassembly.go.ke\"}]',9),(94,'njuguna','2019-07-18 13:58:08','UPDATE','assemblycommittees',23,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"mwaura@kiambuassembly.go.ke\"}]',9),(95,'njuguna','2019-07-18 14:00:25','UPDATE','assemblycommittees',26,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"cwakarindi@kiambuassembly.go.ke\"}]',9),(96,'njuguna','2019-07-18 14:02:31','UPDATE','assemblycommittees',22,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"mwaura@kiambuassembly.go.ke\"}]',9),(97,'njuguna','2019-07-18 14:04:45','UPDATE','assemblycommittees',18,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',9),(98,'njuguna','2019-07-18 14:05:40','UPDATE','assemblycommittees',16,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',9),(99,'njuguna','2019-07-18 14:06:30','UPDATE','assemblycommittees',15,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"stella@kiambuassembly.go.ke\"}]',9),(100,'njuguna','2019-07-18 14:59:51','UPDATE','assemblycommittees',17,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',9),(101,'njuguna','2019-07-18 15:01:43','UPDATE','assemblycommittees',14,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"muriuki@kiambuassembly.go.ke\"}]',9),(102,'njuguna','2019-07-18 15:03:57','UPDATE','assemblycommittees',20,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',9),(103,'njuguna','2019-07-18 15:04:45','UPDATE','assemblycommittees',21,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"fmkarumba@kiambuassembly.go.ke\"}]',9),(104,'njuguna','2019-07-18 15:05:46','UPDATE','assemblycommittees',19,'154.152.79.49','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"liliannuthu@kiambuassembly.go.ke\"}]',9),(105,'admin','2019-07-18 15:42:47','INSERT','dh_columns',96,'105.50.67.210','{\"TblName\":\"committeemeetings\",\"DisplayName\":\"MeetingDate\",\"FieldName\":\"MeetingDate\",\"DataType\":\"D\",\"CreatedBy\":\"admin\"}',999),(106,'admin','2019-07-18 15:43:04','INSERT','dh_columns',97,'105.50.67.210','{\"TblName\":\"committeemeetings\",\"DisplayName\":\"FromTime\",\"FieldName\":\"FromTime\",\"DataType\":\"T\",\"CreatedBy\":\"admin\"}',999),(107,'admin','2019-07-18 15:43:36','INSERT','dh_columns',98,'105.50.67.210','{\"TblName\":\"committeemeetings\",\"DisplayName\":\"ToTime\",\"FieldName\":\"ToTime\",\"DataType\":\"T\",\"CreatedBy\":\"admin\"}',999),(108,'admin','2019-07-18 15:44:20','INSERT','dh_columns',99,'105.50.67.210','{\"TblName\":\"committeemeetings\",\"DisplayName\":\"ClerkResponsible\",\"FieldName\":\"ClerkResponsible\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(109,'njuguna','2019-07-21 19:38:25','UPDATE','assemblybizdocs',84,'41.212.114.3','[{\"Field\":\"DocumentTitle\",\"Ovalue\":\"Memorandum Form\",\"Nvalue\":\"ADVERT - Submission of Memoranda on the Kiambu County Health Services Bill 2019\"},{\"Field\":\"DocumentDate\",\"Ovalue\":\"1970-01-01\",\"Nvalue\":\"2019-05-09\"}]',22),(110,'njuguna','2019-07-21 20:44:13','UPDATE','assemblybizdocs',97,'41.212.114.3','[{\"Field\":\"DocumentDate\",\"Ovalue\":\"2018-06-18\",\"Nvalue\":\"2019-06-18\"}]',22),(111,'admin','2019-07-22 08:39:15','UPDATE','assemblybusiness',2,'154.78.158.199','[{\"Field\":\"DisplayOrder\",\"Ovalue\":\"1\",\"Nvalue\":\"16\"}]',21),(112,'admin','2019-07-22 08:39:44','UPDATE','assemblybusiness',2,'154.78.158.199','[{\"Field\":\"DisplayOrder\",\"Ovalue\":\"16\",\"Nvalue\":\"1\"}]',21),(113,'admin','2019-07-22 08:50:45','UPDATE','dh_users',171,'154.78.158.199','[{\"Field\":\"user_type\",\"Ovalue\":\"Normal\",\"Nvalue\":\"Admin\"}]',2),(114,'admin','2019-07-22 08:56:09','INSERT','listitems',1410,'154.78.158.199','{\"ItemType\":\"MeetingVenue\",\"ItemCode\":\"Assembly \",\"ItemDescription\":\"Assembly Chmaber\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-22 11:56:09\"}',0),(115,'admin','2019-07-22 08:56:17','Delete','listitems',1410,'154.78.158.199','{\"S_ROWID\":\"1410\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-22 11:56:09\",\"ModifiedBy\":null,\"DateModified\":null,\"ItemCode\":\"Assembly \",\"ItemDescription\":\"Assembly Chmaber\",\"ItemType\":\"MeetingVenue\",\"ParentID\":null}',0),(116,'admin','2019-07-22 08:56:53','INSERT','listitems',1411,'154.78.158.199','{\"ItemType\":\"MeetingVenue\",\"ItemCode\":\"Assembly  Chamber\",\"ItemDescription\":\"Assembly Chamber\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-22 11:56:53\"}',0),(117,'admin','2019-07-25 07:03:40','INSERT','dh_columns',100,'197.254.54.42','{\"TblName\":\"committeeMembersList\",\"DisplayName\":\"MemID\",\"FieldName\":\"MemID\",\"DataType\":\"I\",\"CreatedBy\":\"admin\"}',999),(118,'admin','2019-07-25 07:17:11','INSERT','dh_columns',101,'197.254.54.42','{\"TblName\":\"committemembers\",\"DisplayName\":\"IDNo\",\"FieldName\":\"IDNo\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(119,'admin','2019-07-25 07:17:44','INSERT','dh_columns',102,'197.254.54.42','{\"TblName\":\"committemembers\",\"DisplayName\":\"Pwsd2\",\"FieldName\":\"Pwsd2\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(120,'admin','2019-07-25 10:40:08','UPDATE','committemembers',16,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"3434923\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722493233\",\"Nvalue\":\"20170076507\"}]',11),(121,'admin','2019-07-25 10:42:27','UPDATE','committemembers',16,'41.76.168.124','[{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Koigi Lucy Njeri\",\"Nvalue\":\"Hon. Koigi Lucie Njeri\"}]',11),(122,'admin','2019-07-25 10:44:03','UPDATE','committemembers',65,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"1019520\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721365033\",\"Nvalue\":\"20170076516\"}]',11),(123,'admin','2019-07-25 10:46:06','UPDATE','committemembers',9,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10045927\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721325989\",\"Nvalue\":\"20170076525\"}]',11),(124,'admin','2019-07-25 10:49:55','UPDATE','committemembers',13,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"7984796\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"733785683\",\"Nvalue\":\"20170076543\"}]',11),(125,'admin','2019-07-25 10:52:20','UPDATE','committemembers',22,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"9197587\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"720360299\",\"Nvalue\":\"20170076561\"}]',11),(126,'admin','2019-07-25 10:53:22','UPDATE','committemembers',17,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"3096495\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722670759\",\"Nvalue\":\"20170076570\"}]',11),(127,'admin','2019-07-25 10:55:28','UPDATE','committemembers',31,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"1900579\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721406957\",\"Nvalue\":\"20170076589\"}]',11),(128,'admin','2019-07-25 10:57:03','UPDATE','committemembers',69,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"6721568\"}]',11),(129,'admin','2019-07-25 10:57:28','UPDATE','committemembers',69,'41.76.168.124','[{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721952766\",\"Nvalue\":\"20170076614\"}]',11),(130,'admin','2019-07-25 10:58:36','UPDATE','committemembers',55,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10875732\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722423478\",\"Nvalue\":\"20170076641\"}]',11),(131,'admin','2019-07-25 11:00:02','UPDATE','committemembers',66,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"8023953\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722650007\",\"Nvalue\":\"20170076696\"}]',11),(132,'admin','2019-07-25 11:01:22','UPDATE','committemembers',36,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10974740\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"703500729\",\"Nvalue\":\"20170076703\"}]',11),(133,'admin','2019-07-25 11:02:33','UPDATE','committemembers',26,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10905779\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"720889767\",\"Nvalue\":\"20170076712\"}]',11),(134,'admin','2019-07-25 11:04:05','UPDATE','committemembers',80,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"12779470\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722253163\",\"Nvalue\":\"20170076749\"}]',11),(135,'admin','2019-07-25 11:05:20','UPDATE','committemembers',84,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"12425993\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"723560326\",\"Nvalue\":\"20170076758\"}]',11),(136,'admin','2019-07-25 11:08:12','UPDATE','committemembers',39,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"20265296\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722979300\",\"Nvalue\":\"20170076767\"}]',11),(137,'admin','2019-07-25 11:09:15','UPDATE','committemembers',5,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10572046\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722923313\",\"Nvalue\":\"20170076785\"}]',11),(138,'admin','2019-07-25 11:10:40','UPDATE','committemembers',56,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22397539\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722782215\",\"Nvalue\":\"20170076801\"},{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Ndungu Erick Warugu\",\"Nvalue\":\"Hon. Ndungu Erick Waruguru\"}]',11),(139,'admin','2019-07-25 11:11:33','UPDATE','committemembers',8,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"8615918\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"727836505\",\"Nvalue\":\"20170076829\"}]',11),(140,'admin','2019-07-25 11:14:52','UPDATE','committemembers',71,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"20171339\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"724877055\",\"Nvalue\":\"20170076856\"}]',11),(141,'admin','2019-07-25 11:16:36','UPDATE','committemembers',83,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"6573677\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"701773955\",\"Nvalue\":\"20170076865\"}]',11),(142,'admin','2019-07-25 11:18:37','UPDATE','committemembers',34,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22451986\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"719610787\",\"Nvalue\":\"20170076909\"}]',11),(143,'admin','2019-07-25 11:20:16','UPDATE','committemembers',25,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"13409206\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722322285\",\"Nvalue\":\"20170076927\"}]',11),(144,'admin','2019-07-25 11:22:43','UPDATE','committemembers',4,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"12530445\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721464324\",\"Nvalue\":\"20170076945\"},{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Chege David Ithibu\",\"Nvalue\":\"Hon. Chege David Ithubi\"}]',11),(145,'admin','2019-07-25 11:24:22','UPDATE','committemembers',82,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"9291867\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722702469\",\"Nvalue\":\"20170076963\"}]',11),(146,'admin','2019-07-25 11:26:17','UPDATE','committemembers',63,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"20280704\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722237085\",\"Nvalue\":\"20170076990\"}]',11),(147,'admin','2019-07-25 11:27:03','UPDATE','committemembers',54,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10750591\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721994416\",\"Nvalue\":\"20170077013\"}]',11),(148,'admin','2019-07-25 11:28:11','UPDATE','committemembers',42,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22571822\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"725284914\",\"Nvalue\":\"20170077031\"}]',11),(149,'admin','2019-07-25 11:31:29','UPDATE','committemembers',68,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"21036930\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"720830122\",\"Nvalue\":\"20170077068\"}]',11),(150,'admin','2019-07-25 11:32:32','UPDATE','committemembers',7,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"12523785\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722939099\",\"Nvalue\":\"20170077077\"}]',11),(151,'admin','2019-07-25 11:33:48','UPDATE','committemembers',24,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"9056807\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721449012\",\"Nvalue\":\"20170077086\"}]',11),(152,'admin','2019-07-25 11:35:30','UPDATE','committemembers',89,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24922263\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"727237748\",\"Nvalue\":\"20170077095\"}]',11),(153,'admin','2019-07-25 11:39:30','UPDATE','committemembers',27,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24222837\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"720446903\",\"Nvalue\":\"20170077139\"}]',11),(154,'admin','2019-07-25 11:40:53','UPDATE','committemembers',12,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"21843405\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"725015242\",\"Nvalue\":\"20170077157\"}]',11),(155,'admin','2019-07-25 11:42:02','UPDATE','committemembers',43,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22490128\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722401489\",\"Nvalue\":\"20170077175\"}]',11),(156,'admin','2019-07-25 11:44:37','UPDATE','committemembers',88,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22225150\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"720735325\",\"Nvalue\":\"20170077184\"}]',11),(157,'admin','2019-07-25 11:51:11','UPDATE','committemembers',40,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24188668\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"724294137\",\"Nvalue\":\"20170077219\"}]',11),(158,'admin','2019-07-25 12:07:56','UPDATE','committemembers',76,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"9924288\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"723585769\",\"Nvalue\":\"20170077246\"}]',11),(159,'admin','2019-07-25 12:14:04','UPDATE','committemembers',11,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22930843\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"726290645\",\"Nvalue\":\"20170077255\"}]',11),(160,'admin','2019-07-25 12:17:59','UPDATE','committemembers',62,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"14571307\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"720748632\",\"Nvalue\":\"20170077264\"}]',11),(161,'admin','2019-07-25 12:19:17','UPDATE','committemembers',44,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"23608837\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"709175000\",\"Nvalue\":\"20170077282\"}]',11),(162,'admin','2019-07-25 12:28:41','UPDATE','committemembers',74,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"4356581\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722935693\",\"Nvalue\":\"20170077308\"}]',11),(163,'admin','2019-07-25 12:30:17','UPDATE','committemembers',19,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"12485033\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"720800353\",\"Nvalue\":\"20170077317\"}]',11),(164,'admin','2019-07-25 12:31:41','UPDATE','committemembers',18,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10182273\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721699804\",\"Nvalue\":\"20170077326\"}]',11),(165,'admin','2019-07-25 12:34:45','UPDATE','committemembers',45,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10484089\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721212229\",\"Nvalue\":\"20170077353\"}]',11),(166,'admin','2019-07-25 12:36:07','UPDATE','committemembers',60,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"13216106\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"723151339\",\"Nvalue\":\"20170077362\"}]',11),(167,'admin','2019-07-25 12:38:54','UPDATE','committemembers',91,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"23439334\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"714510179\",\"Nvalue\":\"20170077371\"}]',11),(168,'admin','2019-07-25 12:40:04','UPDATE','committemembers',86,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24152165\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722153259\",\"Nvalue\":\"20170077399\"}]',11),(169,'admin','2019-07-25 12:42:29','UPDATE','committemembers',46,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"13535135\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722454172\",\"Nvalue\":\"20170077406\"}]',11),(170,'admin','2019-07-25 12:46:22','UPDATE','committemembers',81,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"23972004\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"724566313\",\"Nvalue\":\"20170077433\"}]',11),(171,'admin','2019-07-25 12:50:33','UPDATE','committemembers',57,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10086854\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722598338\",\"Nvalue\":\"20170077497\"}]',11),(172,'admin','2019-07-25 12:51:27','UPDATE','committemembers',35,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22192235\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"724487258\",\"Nvalue\":\"20170077513\"}]',11),(173,'admin','2019-07-25 12:52:20','UPDATE','committemembers',90,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"23324852\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"724354626\",\"Nvalue\":\"20170077531\"}]',11),(174,'admin','2019-07-25 12:53:28','UPDATE','committemembers',32,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"13535341\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"725402072\",\"Nvalue\":\"20170077568\"}]',11),(175,'admin','2019-07-25 12:55:10','UPDATE','committemembers',47,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"11046094\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"701712036\",\"Nvalue\":\"20170077602\"},{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Mutugi Sophia Muthoni\",\"Nvalue\":\"Hon. Mutuguti Sophia Muthoni\"}]',11),(176,'admin','2019-07-25 12:56:01','UPDATE','committemembers',61,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24355653\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"724033086\",\"Nvalue\":\"20170077611\"}]',11),(177,'admin','2019-07-25 12:56:44','UPDATE','committemembers',78,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"26720057\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"704592176\",\"Nvalue\":\"20170077620\"}]',11),(178,'admin','2019-07-25 12:57:36','UPDATE','committemembers',10,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24172814\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"724661039\",\"Nvalue\":\"20170077657\"}]',11),(179,'admin','2019-07-25 12:58:47','UPDATE','committemembers',64,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22355550\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"726518011\",\"Nvalue\":\"20170077666\"}]',11),(180,'admin','2019-07-25 12:59:42','UPDATE','committemembers',67,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"27789555\"}]',11),(181,'admin','2019-07-25 13:00:40','UPDATE','committemembers',30,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24814970\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"713514884\",\"Nvalue\":\"20170077700\"},{\"Field\":\"FullName\",\"Ovalue\":\"Hon.Kingara Benson Kamau\",\"Nvalue\":\"Hon.King&apos;ara Benson Kamau\"}]',11),(182,'admin','2019-07-25 13:01:43','UPDATE','committemembers',53,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"11481465\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"710800604\",\"Nvalue\":\"20170077719\"}]',11),(183,'admin','2019-07-25 13:02:25','UPDATE','committemembers',48,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22475880\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722387494\",\"Nvalue\":\"20170077737\"}]',11),(184,'admin','2019-07-25 13:03:27','UPDATE','committemembers',87,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"27631297\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"712762635\",\"Nvalue\":\"20170077755\"},{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Wamwere Stephen Nyutu\",\"Nvalue\":\"Hon. Wamwere Stephen Nyatu\"}]',11),(185,'admin','2019-07-25 13:04:20','UPDATE','committemembers',50,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22199365\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721112323\",\"Nvalue\":\"20170077791\"}]',11),(186,'admin','2019-07-25 13:06:24','UPDATE','committemembers',75,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"23266809\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"723978380\",\"Nvalue\":\"20170077817\"},{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Nyatu Catherine Wanjiru\",\"Nvalue\":\"Hon. Ngiabi Catherine Wanjiru\"}]',11),(187,'admin','2019-07-25 13:07:11','UPDATE','committemembers',77,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22324665\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721950119\",\"Nvalue\":\"20170077826\"}]',11),(188,'admin','2019-07-25 13:08:21','UPDATE','committemembers',72,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"28538014\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"702926373\",\"Nvalue\":\"20170077835\"}]',11),(189,'admin','2019-07-25 13:09:27','UPDATE','committemembers',70,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10998552\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"710170931\",\"Nvalue\":\"20170077844\"}]',11),(190,'admin','2019-07-25 13:10:23','UPDATE','committemembers',14,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"27182277\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"712347476\",\"Nvalue\":\"20170077915\"}]',11),(191,'admin','2019-07-25 13:12:36','UPDATE','committemembers',59,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"25182593\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"723681765\",\"Nvalue\":\"20170077942\"}]',11),(192,'admin','2019-07-25 13:13:48','UPDATE','committemembers',29,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"11066214\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"716154794\",\"Nvalue\":\"20170077951\"},{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Kimunyi Sarah\",\"Nvalue\":\"Hon. Kimunyi Sarah wambui\"}]',11),(193,'admin','2019-07-25 13:15:26','UPDATE','committemembers',21,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"28541225\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"729810383\",\"Nvalue\":\"20170077960\"}]',11),(194,'admin','2019-07-25 13:16:29','UPDATE','committemembers',15,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"29613861\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"708038733\",\"Nvalue\":\"20170078083\"}]',11),(195,'admin','2019-07-25 13:19:19','UPDATE','committemembers',38,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"30094765\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"719126100\",\"Nvalue\":\"20170078109\"}]',11),(196,'admin','2019-07-25 13:20:36','UPDATE','committemembers',73,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"30043565\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"716406740\",\"Nvalue\":\"20170078136\"}]',11),(197,'admin','2019-07-25 13:21:51','UPDATE','committemembers',85,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"31889145\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\" 0715893013\",\"Nvalue\":\"20170078145\"}]',11),(198,'admin','2019-07-25 13:22:33','UPDATE','committemembers',93,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24371447\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"712000001\",\"Nvalue\":\"20170078190\"}]',11),(199,'admin','2019-07-25 13:23:57','UPDATE','committemembers',92,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"0264198\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722284999\",\"Nvalue\":\"20170082309\"},{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Ndicho Stephen R. Ndabi\",\"Nvalue\":\"Hon. Ndichu Stephen R. Ndabi\"},{\"Field\":\"Email\",\"Ovalue\":\"ndicho@kiambuassembly.go.ke\",\"Nvalue\":\"ndichu@kiambuassembly.go.ke\"}]',11),(200,'admin','2019-07-25 13:26:28','UPDATE','committemembers',52,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10999363\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"723533526\",\"Nvalue\":\"20170082998\"}]',11),(201,'admin','2019-07-25 13:27:04','UPDATE','committemembers',6,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24558862\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722689440\",\"Nvalue\":\"20170083002\"}]',11),(202,'admin','2019-07-25 13:27:36','UPDATE','committemembers',23,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"13409957\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722378884\",\"Nvalue\":\"20170083011\"}]',11),(203,'admin','2019-07-25 13:28:24','UPDATE','committemembers',2,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"10767482\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722244611\",\"Nvalue\":\"20130004885\"}]',11),(204,'admin','2019-07-25 13:29:18','UPDATE','committemembers',3,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"24063692\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"724662419\",\"Nvalue\":\"20130043855\"}]',11),(205,'admin','2019-07-25 13:30:00','UPDATE','committemembers',1,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"11032048\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"733882162\",\"Nvalue\":\"20130005131\"}]',11),(206,'admin','2019-07-25 13:30:48','UPDATE','committemembers',58,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"0950192\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721686653\",\"Nvalue\":\"1979009306\"}]',11),(207,'admin','2019-07-25 13:31:43','UPDATE','committemembers',37,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"21994248\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722777160\",\"Nvalue\":\"19990004361\"}]',11),(208,'admin','2019-07-25 13:32:25','UPDATE','committemembers',49,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"13753981\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"722756519\",\"Nvalue\":\"20130021322\"}]',11),(209,'admin','2019-07-25 13:33:12','UPDATE','committemembers',33,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"0961625\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"728855057\",\"Nvalue\":\"20170105343\"}]',11),(210,'admin','2019-07-25 13:34:38','UPDATE','committemembers',51,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"21971775\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"729156452\",\"Nvalue\":\"20170111529\"}]',11),(211,'admin','2019-07-25 13:36:35','UPDATE','committemembers',20,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"21737648\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721290148\",\"Nvalue\":\"20170077228\"}]',11),(212,'admin','2019-07-25 13:37:18','UPDATE','committemembers',41,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"22735281\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"728008793\",\"Nvalue\":\"20170111538\"}]',11),(213,'admin','2019-07-25 13:38:14','UPDATE','committemembers',28,'41.76.168.124','[{\"Field\":\"IDNo\",\"Ovalue\":null,\"Nvalue\":\"23975137\"},{\"Field\":\"PersonnelNo\",\"Ovalue\":\"721439443\",\"Nvalue\":\"20170077040\"}]',11),(214,'njuguna','2019-07-26 05:59:44','UPDATE','committemembers',67,'105.230.49.172','[{\"Field\":\"PersonnelNo\",\"Ovalue\":\" 0722992195\",\"Nvalue\":\"20170077675\"}]',11),(215,'njuguna','2019-07-26 06:01:03','UPDATE','assemblycommittees',2,'105.230.49.172','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Commmittee On County Planning And Urbanization\",\"Nvalue\":\"Commmittee On County Planning And Urbanization\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Commmittee On County Planning And Urbanization\",\"Nvalue\":\"Commmittee On County Planning And Urbanization\"}]',9),(216,'njuguna','2019-07-26 06:01:49','UPDATE','assemblycommittees',1,'105.230.49.172','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On Agriculture Livestock And Fisheries\",\"Nvalue\":\"Committee On Agriculture Livestock And Fisheries\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On Agriculture Livestock And Fisheries\",\"Nvalue\":\"Committee On Agriculture Livestock And Fisheries\"}]',9),(217,'njuguna','2019-07-26 06:15:09','INSERT','committemembers',94,'105.230.49.172','{\"IDNo\":\"23435486\",\"PersonnelNo\":\"20170077344\",\"FullName\":\"Yvonne Wanjiku Waweru\",\"PhoneNo\":\"0700000000\",\"Email\":\"mca@kiambuassembley.go.ke\",\"Designation\":\"Nominated MCA\",\"Ward\":\"SPECIALLY ELECTED\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-26 09:15:09\"}',11),(218,'njuguna','2019-07-26 06:17:27','UPDATE','committemembers',94,'105.230.49.172','[{\"Field\":\"Email\",\"Ovalue\":\"mca@kiambuassembley.go.ke\",\"Nvalue\":\"mcaspeciallyelected@kiambuassembly.go.ke\"},{\"Field\":\"Designation\",\"Ovalue\":\"Nominated MCA\",\"Nvalue\":\"SPECIALLY ELECTED MCA\"}]',11),(219,'njuguna','2019-07-26 06:19:00','UPDATE','committemembers',94,'105.230.49.172','[{\"Field\":\"FullName\",\"Ovalue\":\"Yvonne Wanjiku Waweru\",\"Nvalue\":\"Hon. Yvonne Wanjiku Waweru\"}]',11),(220,'admin','2019-07-26 06:57:53','UPDATE','assemblycommittees',12,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee Youth, Sports And Social Services\",\"Nvalue\":\"Committee Youth, Sports And Social Services\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee Youth, Sports And Social Services\",\"Nvalue\":\"Committee Youth, Sports And Social Services\"}]',9),(221,'admin','2019-07-26 07:01:04','UPDATE','assemblycommittees',11,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On Water,Envinroment And Natural Resources\",\"Nvalue\":\"Committee On Water,Envinroment And Natural Resources\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On Water,Envinroment And Natural Resources\",\"Nvalue\":\"Committee On Water,Envinroment And Natural Resources\"}]',9),(222,'admin','2019-07-26 07:20:54','UPDATE','assemblycommittees',10,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On Transport,Public Works And Infrastructure\",\"Nvalue\":\"Committee On Transport,Public Works And Infrastructure\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On Transport,Public Works And Infrastructure\",\"Nvalue\":\"Committee On Transport,Public Works And Infrastructure\"}]',9),(223,'admin','2019-07-26 07:29:12','UPDATE','assemblycommittees',4,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On Education, Science And Research \",\"Nvalue\":\"Committee On Education, Science And Research \"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On Education, Science And Research \",\"Nvalue\":\"Committee On Education, Science And Research \"}]',9),(224,'admin','2019-07-26 09:07:40','UPDATE','assemblycommittees',8,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On Health Services\",\"Nvalue\":\"Committee On Health Services\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On Health Services\",\"Nvalue\":\"Committee On Health Services\"}]',9),(225,'admin','2019-07-26 09:46:21','UPDATE','assemblycommittees',3,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On County Public Service And Administration\",\"Nvalue\":\"Committee On County Public Service And Administration\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On County Public Service And Administration\",\"Nvalue\":\"Committee On County Public Service And Administration\"}]',9),(226,'admin','2019-07-26 09:50:44','UPDATE','assemblycommittees',9,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On Trade, Tourism And Cooperatives\",\"Nvalue\":\" Committee On Trade, Tourism And Cooperatives\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On Trade, Tourism And Cooperatives\",\"Nvalue\":\"Committee On Trade, Tourism And Cooperatives\"}]',9),(227,'admin','2019-07-26 10:01:07','UPDATE','assemblycommittees',6,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On Health Services \\r\\n\\r\\n\",\"Nvalue\":\"Committee On Health Services \\r\\n\\r\\n\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On Health Services \\r\\n\\r\\n\",\"Nvalue\":\"Committee On Health Services \\r\\n\\r\\n\"}]',9),(228,'admin','2019-07-26 10:06:22','UPDATE','assemblycommittees',7,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On Finance &Amp; Economic Planning\",\"Nvalue\":\"Committee On Finance &amp;Amp; Economic Planning\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On Finance &Amp; Economic Planning\",\"Nvalue\":\"Committee On Finance &amp;Amp; Economic Planning\"},{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"gachie@kiambuassembly.go.ke\"}]',9),(229,'admin','2019-07-26 10:10:00','UPDATE','assemblycommittees',8,'41.76.168.124','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"kevin\",\"Nvalue\":\"mercyikenye@kiambuassembly.go.ke\"}]',9),(230,'admin','2019-07-26 10:14:24','UPDATE','assemblycommittees',5,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Sectoral Committee On Finance &Amp; Economic Planning\",\"Nvalue\":\"Committee On Finance &amp;Amp; Economic Planning\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Sectoral Committee On Finance &Amp; Economic Planning\",\"Nvalue\":\"Committee On Finance &amp;Amp; Economic Planning\"}]',9),(231,'admin','2019-07-26 10:49:48','Delete','vw_assemblycommittees',21,'197.254.54.42','{\"S_ROWID\":\"21\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-17 12:26:48\",\"ModifiedBy\":\"njuguna\",\"DateModified\":\"2019-07-25 10:48:50\",\"CommitteeName\":\"Committee On Appointments\",\"CommitteeDescription\":\"Committee On Appointments\",\"ClerkResponsible\":\"fmkarumba@kiambuassembly.go.ke\",\"ClerkName\":\"Frank Karumba\",\"ClerkEmail\":\"fmkarumba@kiambuassembly.go.ke\",\"MembersCounts\":\"6\"}',9),(232,'admin','2019-07-26 11:22:00','INSERT','dh_users',174,'105.230.49.172','{\"loginid\":\"mwaura@kiambuassembly.go.ke\",\"Fullname\":\"Paul Mwaura\",\"Phone\":\"11\",\"Email\":\"mwaura@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"2\",\"user_type\":\"NormalUser\",\"pswd\":\"829cd83a0ccd6864e55cb8b9f26bc5dd\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 14:22:00\"}',2),(233,'admin','2019-07-26 11:45:55','INSERT','dh_users',175,'41.76.168.124','{\"loginid\":\"mwaura@kiambuassembly.go.ke\",\"Fullname\":\"Paul Mwaura\",\"Phone\":\"33\",\"Email\":\"mwaura@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"33\",\"user_type\":\"NormalUser\",\"pswd\":\"829cd83a0ccd6864e55cb8b9f26bc5dd\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 14:45:55\"}',2),(234,'admin','2019-07-26 11:48:11','INSERT','dh_users',176,'41.76.168.124','{\"loginid\":\"gachie@kiambuassembly.go.ke\",\"Fullname\":\"Benjamin Gachie\",\"Phone\":\"44\",\"Email\":\"gachie@kiambuassembly.go.ke\",\"Position\":\"c\",\"PhoneExt\":\"44\",\"user_type\":\"NormalUser\",\"pswd\":\"63dc9a01ab40a2f9a3833407a42ff0a3\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 14:48:11\"}',2),(235,'admin','2019-07-26 11:56:31','INSERT','dh_users',177,'41.76.168.124','{\"loginid\":\"hellenmwangi@kiambuassembly.go.ke\",\"Fullname\":\"Hellen Mwangi\",\"Phone\":\"55\",\"Email\":\"hellenmwangi@kiambuassembly.go.ke\",\"Position\":\"c\",\"PhoneExt\":\"55\",\"user_type\":\"NormalUser\",\"pswd\":\"4b794f38c1fa2dbaed22365bb7ed0fc0\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 14:56:31\"}',2),(236,'admin','2019-07-26 11:58:39','INSERT','dh_users',178,'41.76.168.124','{\"loginid\":\"karumba@kiambuassembly.go.ke\",\"Fullname\":\"Vincent Karumba\",\"Phone\":\"66\",\"Email\":\"karumba@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"66\",\"user_type\":\"NormalUser\",\"pswd\":\"772e29e01d54bd355de00fbed5b81406\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 14:58:39\"}',2),(237,'admin','2019-07-26 12:00:58','INSERT','dh_users',179,'41.76.168.124','{\"loginid\":\"liliannuthu@kiambuassembly.go.ke\",\"Fullname\":\"Lilian Nuthu\",\"Phone\":\"77\",\"Email\":\"liliannuthu@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"77\",\"user_type\":\"NormalUser\",\"pswd\":\"c933de483861a91af8e25eeab9cc87a4\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:00:58\"}',2),(238,'admin','2019-07-26 12:03:41','INSERT','dh_users',180,'41.76.168.124','{\"loginid\":\"muriuki@kiambuassembly.go.ke\",\"Fullname\":\"Godfrey Muriuki\",\"Phone\":\"88\",\"Email\":\"muriuki@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"88\",\"user_type\":\"NormalUser\",\"pswd\":\"737a04099ff5a11e2642909ceef49809\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:03:41\"}',2),(239,'admin','2019-07-26 12:05:57','INSERT','dh_users',181,'41.76.168.124','{\"loginid\":\"stella@kiambuassembly.go.ke\",\"Fullname\":\"Stella  Njeru\",\"Phone\":\"99\",\"Email\":\"stella@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"88\",\"user_type\":\"NormalUser\",\"pswd\":\"b4e8eb984637e20e7835b4f9739f522e\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:05:57\"}',2),(240,'admin','2019-07-26 12:12:32','INSERT','dh_users',182,'41.76.168.124','{\"loginid\":\"mercyikenye@kiambuassembly.go.ke\",\"Fullname\":\"Mercy Ikenye\",\"Phone\":\"99\",\"Email\":\"mercyikenye@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"99\",\"user_type\":\"NormalUser\",\"pswd\":\"4476bb09911353b9bc648c37514c00bd\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:12:32\"}',2),(241,'admin','2019-07-26 12:15:02','INSERT','dh_users',183,'41.76.168.124','{\"loginid\":\"sngatia@kiambuassembly.go.ke\",\"Fullname\":\"Susan Ngatia\",\"Phone\":\"10\",\"Email\":\"sngatia@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"10\",\"user_type\":\"NormalUser\",\"pswd\":\"3623b082fc880873dff0a63edc4c84de\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:15:02\"}',2),(242,'admin','2019-07-26 12:19:26','INSERT','dh_users',184,'41.76.168.124','{\"loginid\":\"nuli@kiambuassembly.go.ke\",\"Fullname\":\"Benjamin Gachie\",\"Phone\":\"11\",\"Email\":\"nuli@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"12\",\"user_type\":\"NormalUser\",\"pswd\":\"c70de5daefbbae53117db3e091daefc9\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:19:26\"}',2),(243,'admin','2019-07-26 12:21:30','INSERT','dh_users',185,'41.76.168.124','{\"loginid\":\"njogu@kiambuassembly.go.ke\",\"Fullname\":\"Alex Njogu\",\"Phone\":\"13\",\"Email\":\"njogu@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"13\",\"user_type\":\"NormalUser\",\"pswd\":\"c4b23c4e011e7a624dbad9cf429f3b08\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:21:30\"}',2),(244,'admin','2019-07-26 12:52:26','INSERT','dh_users',186,'41.76.168.124','{\"loginid\":\"cwakarindi@kiambuassembly.go.ke\",\"Fullname\":\"Caroline Wakarindi\",\"Phone\":\"12\",\"Email\":\"cwakarindi@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"12\",\"user_type\":\"NormalUser\",\"pswd\":\"6d1d568eaff0d3d36e972abe78d1dc4e\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:52:26\"}',2),(245,'admin','2019-07-26 12:56:52','INSERT','dh_users',187,'41.76.168.124','{\"loginid\":\"jgitahi@kiambuassembly.go.ke\",\"Fullname\":\"Janet Gitahi\",\"Phone\":\"14\",\"Email\":\"jgitahi@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"14\",\"user_type\":\"NormalUser\",\"pswd\":\"483ea0afba675bc85adcbaf8ce3297bb\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:56:52\"}',2),(246,'admin','2019-07-26 12:58:50','INSERT','dh_users',188,'41.76.168.124','{\"loginid\":\"muriuki@kiambuassembly.go.ke\",\"Fullname\":\"Godfrey Muriuki\",\"Phone\":\"15\",\"Email\":\"muriuki@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"15\",\"user_type\":\"NormalUser\",\"pswd\":\"737a04099ff5a11e2642909ceef49809\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:58:50\"}',2),(247,'admin','2019-07-26 13:01:48','INSERT','dh_users',189,'41.76.168.124','{\"loginid\":\"anita@kiambuassembly.go.ke\",\"Fullname\":\"Anita Kapten\",\"Phone\":\"16\",\"Email\":\"anita@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"16\",\"user_type\":\"NormalUser\",\"pswd\":\"70c22c48d4a3bf7d6220834c85cb767f\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 16:01:48\"}',2),(248,'admin','2019-07-26 13:05:00','INSERT','dh_users',190,'41.76.168.124','{\"loginid\":\"fmkarumba@kiambuassembly.go.ke\",\"Fullname\":\"Krank Karumba\",\"Phone\":\"17\",\"Email\":\"fmkarumba@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"17\",\"user_type\":\"NormalUser\",\"pswd\":\"71a9ef572c1bc303bc5145872943bb74\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 16:05:00\"}',2),(249,'admin','2019-07-26 13:07:47','INSERT','dh_users',191,'41.76.168.124','{\"loginid\":\"faithd@kiambuassembly.go.ke\",\"Fullname\":\"Faith Wanjiku\",\"Phone\":\"18\",\"Email\":\"faithd@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"18\",\"user_type\":\"NormalUser\",\"pswd\":\"2cc80eef2014584a7a988e828c674ddc\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 16:07:47\"}',2),(250,'admin','2019-07-26 13:10:44','INSERT','dh_users',192,'41.76.168.124','{\"loginid\":\"gmwangi@kiambuassembly.go.ke\",\"Fullname\":\"Michael Mwangi\",\"Phone\":\"19\",\"Email\":\"gmwangi@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"19\",\"user_type\":\"NormalUser\",\"pswd\":\"cc9eed0cf632de84940d72f7840d035e\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 16:10:44\"}',2),(251,'admin','2019-07-26 13:13:13','INSERT','dh_users',193,'41.76.168.124','{\"loginid\":\"isaac@kiambuassembly.go.ke\",\"Fullname\":\"Isaac Chege\",\"Phone\":\"20\",\"Email\":\"isaac@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"20\",\"user_type\":\"NormalUser\",\"pswd\":\"e74d961a63300d5eb2150bca08ef8de6\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 16:13:13\"}',2),(252,'admin','2019-07-26 13:20:11','UPDATE','dh_users',177,'41.76.168.124','[{\"Field\":\"Position\",\"Ovalue\":\"c\",\"Nvalue\":\"Committee Clerk\"}]',2),(253,'admin','2019-07-26 13:27:25','UPDATE','dh_users',176,'41.76.168.124','[{\"Field\":\"Position\",\"Ovalue\":\"c\",\"Nvalue\":\"Committee Clerk\"}]',2),(254,'njuguna','2019-07-26 18:26:41','Delete','vw_userslist',175,'41.212.114.3','{\"S_ROWID\":\"175\",\"loginid\":\"mwaura@kiambuassembly.go.ke\",\"Fullname\":\"Paul Mwaura\",\"Phone\":\"33\",\"Email\":\"mwaura@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"33\",\"pswd\":\"829cd83a0ccd6864e55cb8b9f26bc5dd\",\"user_type\":\"NormalUser\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 14:45:55\",\"shift\":\"Day\",\"Department\":null,\"Division\":null,\"ProfileImage\":null,\"userstatus\":\"Active\",\"DeActivatedBy\":null,\"DateDeActivated\":null,\"DeActivateReason\":null,\"ModifiedBy\":null,\"DateModified\":null}',2),(255,'njuguna','2019-07-26 18:27:03','Delete','vw_userslist',175,'41.212.114.3','{\"S_ROWID\":\"\",\"loginid\":\"\",\"Fullname\":\"\",\"Phone\":\"\",\"Email\":\"\",\"Position\":\"\",\"PhoneExt\":\"\",\"pswd\":\"\",\"user_type\":\"\",\"CreatedBy\":\"\",\"DateCreated\":\"\",\"shift\":\"\",\"Department\":\"\",\"Division\":\"\",\"ProfileImage\":\"\",\"userstatus\":\"\",\"DeActivatedBy\":\"\",\"DateDeActivated\":\"\",\"DeActivateReason\":\"\",\"ModifiedBy\":\"\",\"DateModified\":\"\"}',2),(256,'njuguna','2019-07-26 18:27:03','Delete','vw_userslist',176,'41.212.114.3','{\"S_ROWID\":\"176\",\"loginid\":\"gachie@kiambuassembly.go.ke\",\"Fullname\":\"Benjamin Gachie\",\"Phone\":\"44\",\"Email\":\"gachie@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"44\",\"pswd\":\"63dc9a01ab40a2f9a3833407a42ff0a3\",\"user_type\":\"NormalUser\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 14:48:11\",\"shift\":\"Day\",\"Department\":null,\"Division\":null,\"ProfileImage\":null,\"userstatus\":\"Active\",\"DeActivatedBy\":null,\"DateDeActivated\":null,\"DeActivateReason\":null,\"ModifiedBy\":\"admin\",\"DateModified\":\"2019-07-26 16:27:25\"}',2),(257,'njuguna','2019-07-26 18:27:40','UPDATE','dh_users',193,'41.212.114.3','[{\"Field\":\"user_type\",\"Ovalue\":\"NormalUser\",\"Nvalue\":\"Admin\"}]',2),(258,'njuguna','2019-07-26 18:28:20','UPDATE','dh_users',192,'41.212.114.3','[{\"Field\":\"Position\",\"Ovalue\":\"Committee Clerk\",\"Nvalue\":\"Administrator\"},{\"Field\":\"user_type\",\"Ovalue\":\"NormalUser\",\"Nvalue\":\"Admin\"}]',2),(259,'njuguna','2019-07-26 18:28:56','UPDATE','dh_users',193,'41.212.114.3','[{\"Field\":\"Position\",\"Ovalue\":\"Committee Clerk\",\"Nvalue\":\"Administrator\"}]',2),(260,'njuguna','2019-07-26 18:48:13','Delete','vw_userslist',180,'41.212.114.3','{\"S_ROWID\":\"180\",\"loginid\":\"muriuki@kiambuassembly.go.ke\",\"Fullname\":\"Godfrey Muriuki\",\"Phone\":\"88\",\"Email\":\"muriuki@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"88\",\"pswd\":\"737a04099ff5a11e2642909ceef49809\",\"user_type\":\"NormalUser\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:03:41\",\"shift\":\"Day\",\"Department\":null,\"Division\":null,\"ProfileImage\":null,\"userstatus\":\"Active\",\"DeActivatedBy\":null,\"DateDeActivated\":null,\"DeActivateReason\":null,\"ModifiedBy\":null,\"DateModified\":null}',2),(261,'njuguna','2019-07-26 19:09:34','Delete','vw_userslist',184,'41.212.114.3','{\"S_ROWID\":\"184\",\"loginid\":\"nuli@kiambuassembly.go.ke\",\"Fullname\":\"Benjamin Gachie\",\"Phone\":\"11\",\"Email\":\"nuli@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"12\",\"pswd\":\"c70de5daefbbae53117db3e091daefc9\",\"user_type\":\"NormalUser\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-26 15:19:26\",\"shift\":\"Day\",\"Department\":null,\"Division\":null,\"ProfileImage\":null,\"userstatus\":\"Active\",\"DeActivatedBy\":null,\"DateDeActivated\":null,\"DeActivateReason\":null,\"ModifiedBy\":null,\"DateModified\":null}',2),(262,'njuguna','2019-07-26 19:11:05','INSERT','dh_users',194,'41.212.114.3','{\"loginid\":\"gachie@kiambuassembly.go.ke\",\"Fullname\":\"Benjamin Gachie\",\"Phone\":\"23\",\"Email\":\"gachie@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"1\",\"user_type\":\"NormalUser\",\"pswd\":\"63dc9a01ab40a2f9a3833407a42ff0a3\",\"UserStatus\":\"Active\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-26 22:11:05\"}',2),(263,'njuguna','2019-07-26 19:16:46','UPDATE','dh_users',190,'41.212.114.3','[{\"Field\":\"Fullname\",\"Ovalue\":\"Krank Karumba\",\"Nvalue\":\"Francis Karumba\"}]',2),(264,'njuguna','2019-07-26 19:18:46','INSERT','dh_users',195,'41.212.114.3','{\"loginid\":\"nuli@kiambuassembly.go.ke\",\"Fullname\":\"Lydia Nuli\",\"Phone\":\"22\",\"Email\":\"nuli@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"4\",\"user_type\":\"NormalUser\",\"pswd\":\"c70de5daefbbae53117db3e091daefc9\",\"UserStatus\":\"Active\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-26 22:18:46\"}',2),(265,'admin','2019-07-29 09:25:28','UPDATE','assemblycommittees',13,'41.76.168.124','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"fmkarumba@kiambuassembly.go.ke\",\"Nvalue\":\"jgitahi@kiambuassembly.go.ke\"}]',9),(266,'admin','2019-07-29 09:28:09','UPDATE','assemblycommittees',2,'41.76.168.124','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"muriuki@kiambuassembly.go.ke\",\"Nvalue\":\"karumba@kiambuassembly.go.ke\"}]',9),(267,'admin','2019-07-29 09:32:09','UPDATE','assemblycommittees',16,'41.76.168.124','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"fmkarumba@kiambuassembly.go.ke\",\"Nvalue\":\"muriuki@kiambuassembly.go.ke\"}]',9),(268,'admin','2019-07-29 09:40:17','UPDATE','assemblycommittees',10,'41.76.168.124','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"anita@kiambuassembly.go.ke\",\"Nvalue\":\"mwaura@kiambuassembly.go.ke\"}]',9),(269,'admin','2019-07-29 09:43:18','UPDATE','assemblycommittees',17,'41.76.168.124','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"fmkarumba@kiambuassembly.go.ke\",\"Nvalue\":\"muriuki@kiambuassembly.go.ke\"}]',9),(270,'admin','2019-07-29 09:47:21','UPDATE','assemblycommittees',3,'41.76.168.124','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"fmkarumba@kiambuassembly.go.ke\",\"Nvalue\":\"sngatia@kiambuassembly.go.ke\"}]',9),(271,'admin','2019-07-29 09:51:23','UPDATE','assemblycommittees',14,'41.76.168.124','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"muriuki@kiambuassembly.go.ke\",\"Nvalue\":\"hellenmwangi@kiambuassembly.go.ke\"}]',9),(272,'admin','2019-07-29 09:54:00','UPDATE','assemblycommittees',1,'41.76.168.124','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"anita@kiambuassembly.go.ke\",\"Nvalue\":\"gachie@kiambuassembly.go.ke\"}]',9),(273,'admin','2019-07-29 10:39:18','INSERT','assemblycommittees',27,'41.76.168.124','{\"CommitteeName\":\"Chairpersons of Committees\",\"CommitteeDescription\":\"Chairpersons of Committees\",\"ClerkResponsible\":\"faithd@kiambuassembly.go.ke\",\"CommitteeType\":\"HOUSE KEEPING COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-29 13:39:18\"}',9),(274,'admin','2019-07-29 11:18:14','UPDATE','assemblycommittees',12,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Committee Youth, Sports And Social Services\",\"Nvalue\":\"Committee On Youth, Sports And Social Services\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Committee Youth, Sports And Social Services\",\"Nvalue\":\"Committee On Youth, Sports And Social Services\"}]',9),(275,'admin','2019-07-29 11:35:15','UPDATE','assemblycommittees',11,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Committee On Water,Envinroment And Natural Resources\",\"Nvalue\":\"Committee On Water,Environment And Natural Resources\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Committee On Water,Envinroment And Natural Resources\",\"Nvalue\":\"Committee On Water,Environment And Natural Resources\"}]',9),(276,'admin','2019-07-29 11:42:54','UPDATE','assemblycommittees',7,'41.76.168.124','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Committee On Finance &amp;Amp; Economic Planning\",\"Nvalue\":\"Committee On Finance and Economic Planning\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Committee On Finance &amp;Amp; Economic Planning\",\"Nvalue\":\"Committee On Finance and Economic Planning\"}]',9),(277,'njuguna','2019-07-31 06:10:24','Delete','listitems',1278,'105.230.186.95','{\"S_ROWID\":\"1278\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"MANG&amp;apos;U\",\"ItemDescription\":\"MANG&amp;apos;U\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',0),(278,'njuguna','2019-07-31 06:11:25','Delete','listitems',1302,'105.230.186.95','{\"S_ROWID\":\"1302\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"TING&amp;apos;ANG&amp;apos;A\",\"ItemDescription\":\"TING&amp;apos;ANG&amp;apos;A\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',0),(279,'njuguna','2019-07-31 06:13:41','INSERT','listitems',1428,'105.230.186.95','{\"ItemType\":\"Wards022\",\"ItemCode\":\"TINGANGA\",\"ItemDescription\":\"TINGANGA\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 09:13:41\"}',0),(280,'njuguna','2019-07-31 06:13:52','INSERT','listitems',1429,'105.230.186.95','{\"ItemType\":\"Wards022\",\"ItemCode\":\"MANGU\",\"ItemDescription\":\"MANGU\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 09:13:52\"}',0),(281,'njuguna','2019-07-31 06:14:44','INSERT','listitems',1430,'105.230.186.95','{\"ItemType\":\"Wards022\",\"ItemCode\":\"COMMITTEE CLERK\",\"ItemDescription\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 09:14:44\"}',0),(282,'njuguna','2019-07-31 06:18:04','Delete','listitems',1350,'105.230.186.95','{\"S_ROWID\":\"1350\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-21 12:27:04\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"THIKA TOWNSHIP\",\"ItemDescription\":\"TKIKA TOWNSHIP\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',0),(283,'njuguna','2019-07-31 06:18:46','INSERT','listitems',1431,'105.230.186.95','{\"ItemType\":\"Wards022\",\"ItemCode\":\"THIKA TOWNSHIP\",\"ItemDescription\":\"THIKA TOWNSHIP\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 09:18:46\"}',0),(284,'njuguna','2019-07-31 06:21:25','Delete','listitems',1313,'105.230.186.95','{\"S_ROWID\":\"1313\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NYADHUNA\",\"ItemDescription\":\"NYADHUNA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',0),(285,'njuguna','2019-07-31 06:21:52','INSERT','listitems',1432,'105.230.186.95','{\"ItemType\":\"Wards022\",\"ItemCode\":\"NYATHUNA\",\"ItemDescription\":\"NYATHUNA\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 09:21:52\"}',0),(286,'njuguna','2019-07-31 07:02:47','INSERT','committemembers',95,'105.230.186.95','{\"IDNo\":\"24773694\",\"PersonnelNo\":\"20090000687\",\"FullName\":\"Vincent Karumba Mwangi\",\"PhoneNo\":\"0700000000\",\"Email\":\"karumba@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:02:47\"}',11),(287,'njuguna','2019-07-31 07:30:31','INSERT','committemembers',96,'105.230.186.95','{\"IDNo\":\"20687310\",\"PersonnelNo\":\"2007002647\",\"FullName\":\"Susan Njeri Ngatia\",\"PhoneNo\":\"0700000000\",\"Email\":\"sngatia@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:30:31\"}',11),(288,'njuguna','2019-07-31 07:32:36','INSERT','committemembers',97,'105.230.186.95','{\"IDNo\":\"24669342\",\"PersonnelNo\":\"20130035111\",\"FullName\":\"Benjamin Gachie\",\"PhoneNo\":\"0700000000\",\"Email\":\"gachie@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:32:36\"}',11),(289,'njuguna','2019-07-31 07:34:39','INSERT','committemembers',98,'105.230.186.95','{\"IDNo\":\"24560308\",\"PersonnelNo\":\"20130035148\",\"FullName\":\"Paul Mwaura Mucheru\",\"PhoneNo\":\"0700000000\",\"Email\":\"mwaura@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:34:39\"}',11),(290,'njuguna','2019-07-31 07:39:19','INSERT','committemembers',99,'105.230.186.95','{\"IDNo\":\"25991011\",\"PersonnelNo\":\"20130035157\",\"FullName\":\"Janet Wanjiru Gitahi\",\"PhoneNo\":\"0700000000\",\"Email\":\"jgitahi@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:39:19\"}',11),(291,'njuguna','2019-07-31 07:42:41','INSERT','committemembers',100,'105.230.186.95','{\"IDNo\":\"26248866\",\"PersonnelNo\":\"20130035166\",\"FullName\":\"Lillian Wangui Nuthu\",\"PhoneNo\":\"0700000000\",\"Email\":\"liliannuthu@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:42:41\"}',11),(292,'njuguna','2019-07-31 07:45:25','INSERT','committemembers',101,'105.230.186.95','{\"IDNo\":\"25013338\",\"PersonnelNo\":\"20140004468\",\"FullName\":\"Anita Nabutilu Kapten\",\"PhoneNo\":\"0700000000\",\"Email\":\"anita@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:45:25\"}',11),(293,'njuguna','2019-07-31 07:47:15','INSERT','committemembers',102,'105.230.186.95','{\"IDNo\":\"23995345\",\"PersonnelNo\":\"20140005358\",\"FullName\":\"Caroline Wakarindi Rotich\",\"PhoneNo\":\"0700000000\",\"Email\":\"cwakarindi@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:47:15\"}',11),(294,'njuguna','2019-07-31 07:49:29','INSERT','committemembers',103,'105.230.186.95','{\"IDNo\":\"25755901\",\"PersonnelNo\":\"20140005438\",\"FullName\":\"Hellen Wanjiru Mwangi\",\"PhoneNo\":\"0700000000\",\"Email\":\"hellenmwangi@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:49:29\"}',11),(295,'njuguna','2019-07-31 07:51:25','INSERT','committemembers',104,'105.230.186.95','{\"IDNo\":\"25330805\",\"PersonnelNo\":\"20140005483\",\"FullName\":\"Stella Wawira Njeru\",\"PhoneNo\":\"0700000000\",\"Email\":\"stella@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:51:25\"}',11),(296,'njuguna','2019-07-31 07:53:16','INSERT','committemembers',105,'105.230.186.95','{\"IDNo\":\"27808771\",\"PersonnelNo\":\"20150081128\",\"FullName\":\"Faith Wanjiku David\",\"PhoneNo\":\"0700000000\",\"Email\":\"faithd@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:53:16\"}',11),(297,'njuguna','2019-07-31 07:54:58','INSERT','committemembers',106,'105.230.186.95','{\"IDNo\":\"24739240\",\"PersonnelNo\":\"20150081137\",\"FullName\":\"Lydiah Nuli Anguche\",\"PhoneNo\":\"0700000000\",\"Email\":\"nuli@kiambuassembly.go.ke\",\"Designation\":\"COMMITTEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 10:54:58\"}',11),(298,'admin','2019-08-01 10:49:16','UPDATE','committemembers',75,'154.77.216.239','[{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Ngiabi Catherine Wanjiru\",\"Nvalue\":\"Hon. Nyatu Catherine Wanjiru\"}]',11),(299,'admin','2019-08-01 10:55:14','UPDATE','committemembers',87,'154.77.216.239','[{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Wamwere Stephen Nyatu\",\"Nvalue\":\"Hon. Wamwere Stephen Nyutu\"}]',11),(300,'admin','2019-08-01 13:22:50','UPDATE','committemembers',56,'105.50.102.83','[{\"Field\":\"FullName\",\"Ovalue\":\"Hon. Ndungu Erick Waruguru\",\"Nvalue\":\"Hon. Ndungu Erick Warugu\"}]',11),(301,'admin','2019-08-07 14:04:01','INSERT','committemembers',107,'154.76.22.196','{\"IDNo\":\"25038539\",\"PersonnelNo\":\"20160079130\",\"FullName\":\"MERCY IKENYE\",\"PhoneNo\":\"0700000000\",\"Email\":\"mercyikenye@kiambuassembly.go.ke\",\"Designation\":\"COMMITEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-08-07 17:04:01\"}',11),(302,'admin','2019-08-07 14:29:12','INSERT','committemembers',108,'154.76.22.196','{\"IDNo\":\"27850948\",\"PersonnelNo\":\"201580514\",\"FullName\":\"GODFREY  MURIUKI\",\"PhoneNo\":\"0700000000\",\"Email\":\"muriuki@kiambuassembly.go.ke\",\"Designation\":\"COMMITEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-08-07 17:29:12\"}',11),(303,'admin','2019-08-07 14:40:47','INSERT','committemembers',109,'154.76.22.196','{\"IDNo\":\"26286535\",\"PersonnelNo\":\"20170050414\",\"FullName\":\"FRANCIS KARUMBA\",\"PhoneNo\":\"0700000000\",\"Email\":\"fmkarumba@kiambuassembly.go.ke\",\"Designation\":\"COMMITEE CLERK\",\"Ward\":\"COMMITTEE CLERK\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-08-07 17:40:47\"}',11),(304,'admin','2019-08-09 12:37:47','UPDATE','listitems',1372,'197.232.61.193','[{\"Field\":\"ItemCode\",\"Ovalue\":\"Room 4\",\"Nvalue\":\"Committe Room 4\"},{\"Field\":\"ItemDescription\",\"Ovalue\":\"Room 4\",\"Nvalue\":\"Committe Room 4\"}]',0),(305,'admin','2019-08-09 12:38:03','UPDATE','listitems',1371,'197.232.61.193','[{\"Field\":\"ItemCode\",\"Ovalue\":\"Room 3\",\"Nvalue\":\"Committe Room 3\"},{\"Field\":\"ItemDescription\",\"Ovalue\":\"Room 3\",\"Nvalue\":\"Committe Room 3\"}]',0),(306,'admin','2019-08-09 12:38:21','UPDATE','listitems',1370,'197.232.61.193','[{\"Field\":\"ItemCode\",\"Ovalue\":\"Room 2\",\"Nvalue\":\"Committe Room 2\"},{\"Field\":\"ItemDescription\",\"Ovalue\":\"Room 2\",\"Nvalue\":\"Committe Room 2\"}]',0),(307,'admin','2019-08-09 12:38:37','UPDATE','listitems',1369,'197.232.61.193','[{\"Field\":\"ItemCode\",\"Ovalue\":\"Room 1\",\"Nvalue\":\"Committe Room 1\"},{\"Field\":\"ItemDescription\",\"Ovalue\":\"Room 1\",\"Nvalue\":\"Committe Room 1\"}]',0),(308,'41','2019-08-09 13:54:32','PasswordReset','users',41,'41.76.168.124','{\"PasswordReset\":\"bd7c0bd32b4f6325520436d3e2357c26\"}',6),(309,'41','2019-08-09 14:16:52','ChangedPassword','users',41,'41.76.168.124','{\"UserchangedPassword\":\"d407d51c8611b29549aeae3579d1ff20\"}',6),(310,'admin','2019-08-09 14:51:55','INSERT','listitems',1433,'197.232.61.193','{\"ItemType\":\"MeetingVenue\",\"ItemCode\":\"Other\",\"ItemDescription\":\"Other\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-08-09 17:51:55\"}',0),(311,'admin','2019-08-12 09:47:29','INSERT','dh_columns',103,'41.80.111.169','{\"TblName\":\"committeeattendance\",\"DisplayName\":\"MemID\",\"FieldName\":\"MemID\",\"DataType\":\"I\",\"CreatedBy\":\"admin\"}',999),(312,'admin','2019-08-13 15:14:54','INSERT','dh_columns',104,'197.232.61.233','{\"TblName\":\"committeemeetings\",\"DisplayName\":\"OtherVenue\",\"FieldName\":\"OtherVenue\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(313,'admin','2019-08-14 02:31:21','INSERT','dh_applications',10,'41.90.66.65','{\"AppCode\":\"Reports\",\"ApplicationName\":\"Reports\",\"IconRef\":\"Reports\",\"DisplayOrder\":\"5\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-08-14 05:31:21\"}',0),(314,'admin','2019-08-14 02:38:58','INSERT','dh_modules',27,'41.90.66.65','{\"ModuleCode\":\"AttendanceList-Committee_27\",\"ModuleName\":\"Attendance List - Committee\",\"AppName\":\"Reports\",\"TableName\":\"vw_committeeattendance\",\"IconRef\":\"fa fa-balance-scale\",\"DisplayOrder\":\"1\",\"CreatedBy\":\"admin\"}',999),(315,'admin','2019-08-14 02:39:25','UPDATE','dh_modules',27,'41.90.66.65','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"},{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"},{\"Field\":\"EnablePreview\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"}]',0),(316,'admin','2019-08-14 02:42:07','UPDATE','dh_modules',27,'41.90.66.65','[{\"Field\":\"DeleteItems\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"}]',0),(317,'admin','2019-08-14 02:42:15','UPDATE','dh_modules',27,'41.90.66.65','[{\"Field\":\"EnableCreation\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"}]',0),(318,'admin','2019-08-14 07:40:45','INSERT','dh_modules',28,'197.232.61.230','{\"ModuleCode\":\"CommitteeMembers-Allowances_28\",\"ModuleName\":\"Committee Members-Allowances\",\"AppName\":\"Reports\",\"TableName\":\"vw_committeeattendance\",\"IconRef\":\"fa fa-balance-scale\",\"DisplayOrder\":\"2\",\"CreatedBy\":\"admin\"}',999),(319,'admin','2019-08-14 07:41:01','UPDATE','dh_modules',28,'197.232.61.230','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"},{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"},{\"Field\":\"EnableCreation\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"},{\"Field\":\"DeleteItems\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"},{\"Field\":\"EnablePreview\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"}]',0),(320,'admin','2019-08-14 07:48:57','UPDATE','committeemeetings',69,'197.232.61.230','[{\"Field\":\"Agenda\",\"Ovalue\":null,\"Nvalue\":\"Water\"},{\"Field\":\"FromTime\",\"Ovalue\":\"11:30:00\",\"Nvalue\":\"11:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"13:00:00\",\"Nvalue\":\"1:00 PM\"}]',16),(321,'admin','2019-08-14 09:38:00','INSERT','dh_users',196,'41.76.168.172','{\"loginid\":\"njambi@kiambuassembly.go.ke\",\"Fullname\":\"Maureen Njambi\",\"Phone\":\"0729266435\",\"Email\":\"njambi@kiambuassembly.go.ke\",\"Position\":\"Accounts\",\"PhoneExt\":\"0000\",\"user_type\":\"NormalUser\",\"pswd\":\"8729a30670ef0b984a0eae3632f2eba1\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-08-14 12:38:00\"}',2),(322,'admin','2019-08-14 09:40:12','INSERT','dh_usergroups',5,'41.76.168.172','{\"GroupCode\":\"Accounts\",\"GroupName\":\"Accounts\",\"GroupDescription\":\"Accounts \",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-08-14 12:40:12\"}',6),(323,'admin','2019-08-14 09:41:42','INSERT','dh_userprofiles',3,'41.76.168.172','{\"ProfileName\":\"Accounts\",\"ProfileDescription\":\"Accounts\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-08-14 12:41:42\"}',5),(324,'8','2019-09-01 19:53:36','Delete','notifications',36,'41.90.200.139','{\"S_ROWID\":\"36\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-08-12 18:58:46\",\"ModifiedBy\":null,\"DateModified\":null,\"NType\":\"Committeee Sitting\",\"NBody\":\"Hi Hon. Gacuma Joseph Ngicu, Committee On County Public Service And Administration shall have a sitting on Sun 13th Jun 2004 14:31:39 at Committe Room 2\",\"NReturnURL\":null,\"NStatus\":\"Pending\",\"NTargetedTo\":\"8\"}',999),(325,'admin','2019-09-05 10:32:01','INSERT','dh_columns',105,'::1','{\"TblName\":\"plenarymeetings\",\"DisplayName\":\"Venue\",\"FieldName\":\"Venue\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(326,'admin','2019-09-05 10:32:21','INSERT','dh_columns',106,'::1','{\"TblName\":\"plenarymeetings\",\"DisplayName\":\"Posted\",\"FieldName\":\"Posted\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(327,'admin','2019-09-05 10:32:43','INSERT','dh_columns',107,'::1','{\"TblName\":\"plenarymeetings\",\"DisplayName\":\"DatePosted\",\"FieldName\":\"DatePosted\",\"DataType\":\"T\",\"CreatedBy\":\"admin\"}',999),(328,'admin','2019-09-05 10:32:56','INSERT','dh_columns',108,'::1','{\"TblName\":\"plenarymeetings\",\"DisplayName\":\"Agenda\",\"FieldName\":\"Agenda\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(329,'admin','2019-09-05 10:33:12','INSERT','dh_columns',109,'::1','{\"TblName\":\"plenarymeetings\",\"DisplayName\":\"MeetingDate\",\"FieldName\":\"MeetingDate\",\"DataType\":\"D\",\"CreatedBy\":\"admin\"}',999),(330,'admin','2019-09-05 10:33:23','INSERT','dh_columns',110,'::1','{\"TblName\":\"plenarymeetings\",\"DisplayName\":\"FromTime\",\"FieldName\":\"FromTime\",\"DataType\":\"T\",\"CreatedBy\":\"admin\"}',999),(331,'admin','2019-09-05 10:33:34','INSERT','dh_columns',111,'::1','{\"TblName\":\"plenarymeetings\",\"DisplayName\":\"ToTime\",\"FieldName\":\"ToTime\",\"DataType\":\"T\",\"CreatedBy\":\"admin\"}',999),(332,'admin','2019-09-05 10:33:51','INSERT','dh_columns',112,'::1','{\"TblName\":\"plenarymeetings\",\"DisplayName\":\"ClerkResponsible\",\"FieldName\":\"ClerkResponsible\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(333,'admin','2019-09-05 10:34:51','INSERT','dh_columns',113,'::1','{\"TblName\":\"committeeattendance\",\"DisplayName\":\"MeetingType\",\"FieldName\":\"MeetingType\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(334,'admin','2019-09-05 11:05:30','INSERT','dh_modules',29,'::1','{\"ModuleCode\":\"PlenarySessions_29\",\"ModuleName\":\"Plenary Sessions\",\"AppName\":\"Assembly\",\"TableName\":\"vw_plenarymeetings\",\"IconRef\":\"fa fa-compress\",\"DisplayOrder\":\"5\",\"CreatedBy\":\"admin\"}',999),(335,'admin','2019-09-05 11:42:59','UPDATE','dh_modules',29,'::1','[{\"Field\":\"AppName\",\"Ovalue\":\"Assembly\",\"Nvalue\":\"SystemApps\"},{\"Field\":\"EnableCreation\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"},{\"Field\":\"DeleteItems\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"},{\"Field\":\"EnablePreview\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"}]',0),(336,'admin','2019-09-05 11:43:14','UPDATE','dh_modules',29,'::1','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"},{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"}]',0),(337,'admin','2019-09-05 14:44:53','INSERT','listitems',1440,'::1','{\"ItemType\":\"CommitteRanks\",\"ItemCode\":\"awa\",\"ItemDescription\":\"aaa\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-09-05 17:44:53\"}',0),(338,'admin','2019-09-05 14:45:01','UPDATE','listitems',1440,'::1','[{\"Field\":\"ItemCode\",\"Ovalue\":\"awa\",\"Nvalue\":\"awa  rdes\"}]',0),(339,'admin','2019-09-05 14:45:07','Delete','listitems',1440,'::1','{\"S_ROWID\":\"1440\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-09-05 17:44:53\",\"ModifiedBy\":\"admin\",\"DateModified\":\"2019-09-05 17:45:01\",\"ItemCode\":\"awa  rdes\",\"ItemDescription\":\"aaa\",\"ItemType\":\"CommitteRanks\",\"ParentID\":null}',29),(340,'admin','2019-09-05 14:52:23','INSERT','dh_modules',30,'::1','{\"ModuleCode\":\"PlenarySessions_30\",\"ModuleName\":\"Plenary Sessions\",\"AppName\":\"Assembly\",\"TableName\":\"vw_plenarymeetings\",\"IconRef\":\"fa fa-clipboard-check\",\"DisplayOrder\":\"5\",\"CreatedBy\":\"admin\"}',999),(341,'admin','2019-09-05 14:58:54','INSERT','plenarymeetings',1,'::1','{\"Agenda\":\"Test Session\",\"ClerkResponsible\":\"mwaura@kiambuassembly.go.ke\",\"MeetingDate\":\"2019-09-06\",\"Venue\":\"Committe Room 1\",\"FromTime\":\"09:00:00\",\"ToTime\":\"11:00:00\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-09-05 17:58:54\"}',30),(342,'admin','2019-09-05 20:42:40','INSERT','dh_columns',114,'::1','{\"TblName\":\"assemblybusiness\",\"DisplayName\":\"EnableEmpty\",\"FieldName\":\"EnableEmpty\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(343,'admin','2019-09-05 20:52:11','UPDATE','assemblybusiness',2,'::1','[{\"Field\":\"EnableEmpty\",\"Ovalue\":\"N\",\"Nvalue\":\"Y\"}]',21),(344,'admin','2019-10-18 15:07:10','INSERT','dh_columns',115,'::1','{\"TblName\":\"Wandie\",\"DisplayName\":\"First Name\",\"FieldName\":\"FirstName\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(345,'admin','2019-10-18 15:08:28','INSERT','dh_applications',11,'::1','{\"AppCode\":\"Gachie\",\"ApplicationName\":\"Gachie\",\"IconRef\":\"fa fa-wrench\",\"DisplayOrder\":\"6\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-10-18 18:08:27\"}',0),(346,'admin','2019-10-18 15:08:55','INSERT','dh_modules',31,'::1','{\"ModuleCode\":\"KiambuMassive_31\",\"ModuleName\":\"Kiambu Massive\",\"AppName\":\"Gachie\",\"TableName\":\"Wandie\",\"IconRef\":\"fa fa-bookmark\",\"DisplayOrder\":\"1\",\"CreatedBy\":\"admin\"}',999),(347,'admin','2019-10-18 15:09:48','INSERT','wandie',0,'::1','{\"CreatedBy\":\"admin\",\"ModifiedBy\":\"ff\",\"DateCreated\":\"2019-10-18 18:09:48\"}',31),(348,'admin','2019-10-18 15:12:44','INSERT','dh_columns',116,'::1','{\"TblName\":\"wandie\",\"DisplayName\":\"FirstName\",\"FieldName\":\"FirstName\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(349,'admin','2019-10-18 15:13:03','INSERT','dh_columns',117,'::1','{\"TblName\":\"wandie\",\"DisplayName\":\"SecondName\",\"FieldName\":\"SecondName\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(350,'admin','2019-10-18 15:13:40','Delete','dh_modules',31,'::1','{\"S_ROWID\":\"31\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-10-18 18:08:55\",\"ModifiedBy\":null,\"DateModified\":null,\"ModuleName\":\"Kiambu Massive\",\"ModuleCode\":\"KiambuMassive_31\",\"TableName\":\"Wandie\",\"AppName\":\"Gachie\",\"ACL\":null,\"DisplayOrder\":\"1\",\"IconRef\":\"fa fa-bookmark\",\"DeleteItems\":\"Y\",\"CheckExist\":null,\"EnableCreation\":\"Y\",\"DisplayButton\":null,\"ModuleType\":\"CRUD\",\"ModuleListView\":\"Default\",\"ExcludePermsList\":\"N\",\"ParentTable\":null,\"ExemptRole\":\"N\",\"ButtonType\":\"OpenLink\",\"ButtonAttributes\":null,\"EnablePreview\":\"Y\"}',0),(351,'admin','2019-10-18 15:13:58','INSERT','dh_modules',32,'::1','{\"ModuleCode\":\"Major_32\",\"ModuleName\":\"Major\",\"AppName\":\"Gachie\",\"TableName\":\"wandie\",\"IconRef\":\"fa fa-adjust\",\"DisplayOrder\":\"1\",\"CreatedBy\":\"admin\"}',999),(352,'admin','2019-10-18 15:14:41','INSERT','wandie',1,'::1','{\"CreatedBy\":\"admin\",\"ModifiedBy\":\"ddd\",\"DateCreated\":\"2019-10-18 18:14:41\"}',32),(353,'admin','2019-10-18 15:16:46','INSERT','wandie',2,'::1','{\"FirstName\":\"Stephen\",\"SecondName\":\"Wandie\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-10-18 18:16:46\"}',32),(354,'admin','2019-10-18 15:16:57','INSERT','wandie',3,'::1','{\"FirstName\":\"Sheila\",\"SecondName\":\"Wambui\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-10-18 18:16:57\"}',32),(355,'admin','2019-10-18 15:17:13','INSERT','wandie',4,'::1','{\"FirstName\":\"Kevin\",\"SecondName\":\"Mungai\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-10-18 18:17:13\"}',32),(356,'admin','2019-10-18 15:17:44','UPDATE','wandie',1,'::1','[{\"Field\":\"FirstName\",\"Ovalue\":null,\"Nvalue\":\"Joyce\"},{\"Field\":\"SecondName\",\"Ovalue\":null,\"Nvalue\":\"Wamama\"}]',32),(357,'admin','2019-10-18 15:18:28','UPDATE','dh_modules',32,'::1','[{\"Field\":\"IconRef\",\"Ovalue\":\"fa fa-adjust\",\"Nvalue\":\"fa fa-align-justify\"}]',0),(358,'admin','2019-10-18 15:19:02','UPDATE','dh_applications',10,'::1','[{\"Field\":\"IconRef\",\"Ovalue\":\"Reports\",\"Nvalue\":\"fa fa-bar-chart\"}]',0),(359,'admin','2019-10-18 15:19:14','UPDATE','dh_applications',10,'::1','[{\"Field\":\"DisplayOrder\",\"Ovalue\":\"5\",\"Nvalue\":\"2\"}]',0),(360,'admin','2019-10-18 15:19:26','UPDATE','dh_applications',10,'::1','[{\"Field\":\"DisplayOrder\",\"Ovalue\":\"2\",\"Nvalue\":\"8\"}]',0),(361,'admin','2019-11-06 12:54:41','Delete','dh_modules',32,'::1','{\"S_ROWID\":\"32\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-10-18 18:13:58\",\"ModifiedBy\":\"admin\",\"DateModified\":\"2019-10-18 18:18:28\",\"ModuleName\":\"Major\",\"ModuleCode\":\"Major_32\",\"TableName\":\"wandie\",\"AppName\":\"Gachie\",\"ACL\":null,\"DisplayOrder\":\"1\",\"IconRef\":\"fa fa-align-justify\",\"DeleteItems\":\"Y\",\"CheckExist\":null,\"EnableCreation\":\"Y\",\"DisplayButton\":null,\"ModuleType\":\"CRUD\",\"ModuleListView\":\"Default\",\"ExcludePermsList\":\"N\",\"ParentTable\":null,\"ExemptRole\":\"N\",\"ButtonType\":\"OpenLink\",\"ButtonAttributes\":null,\"EnablePreview\":\"Y\"}',0),(362,'admin','2019-11-07 07:17:58','Delete','elementstorage',14,'::1','{\"S_ROWID\":\"14\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-12 14:20:46\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"487450\",\"Orginal_FileName\":\"Patch Code.pdf\",\"New_FileName\":\"Patch Code.pdf\",\"StoragePool\":\"CommitteeDocs-1\",\"FileDescription\":\"Patch Code\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(363,'admin','2019-11-07 07:17:58','DocumentDelete','assemblybizdocs',14,'::1','{\"Document Description\":\"Patch Code\",\"Reason\":\"testing Maneno\"}',9999),(364,'admin','2019-11-07 07:22:46','Delete','elementstorage',14,'::1','{\"S_ROWID\":\"\",\"CreatedBy\":\"\",\"DateCreated\":\"\",\"ModifiedBy\":\"\",\"DateModified\":\"\",\"FileStage\":\"\",\"FileSize\":\"\",\"Orginal_FileName\":\"\",\"New_FileName\":\"\",\"StoragePool\":\"\",\"FileDescription\":\"\",\"FileExt\":\"\",\"LockedBy\":\"\",\"DateLocked\":\"\",\"Version\":\"\",\"PageCount\":\"\"}',9999),(365,'admin','2019-11-07 07:22:46','DocumentDelete','assemblybizdocs',14,'::1','{\"Document Description\":\"\",\"Reason\":\"wasaa\"}',9999),(366,'admin','2019-11-07 07:28:32','Delete','elementstorage',15,'::1','{\"S_ROWID\":\"15\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-12 14:22:05\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"62074\",\"Orginal_FileName\":\"Kenya.pdf\",\"New_FileName\":\"Kenya.pdf\",\"StoragePool\":\"CommitteeDocs-11\",\"FileDescription\":\"Kenya\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(367,'admin','2019-11-07 07:28:32','DocumentDelete','assemblybizdocs',15,'::1','{\"Document Description\":\"Kenya\",\"Reason\":\"TESTING\"}',9999),(368,'admin','2019-11-07 07:37:27','Delete','elementstorage',15,'::1','{\"S_ROWID\":\"\",\"CreatedBy\":\"\",\"DateCreated\":\"\",\"ModifiedBy\":\"\",\"DateModified\":\"\",\"FileStage\":\"\",\"FileSize\":\"\",\"Orginal_FileName\":\"\",\"New_FileName\":\"\",\"StoragePool\":\"\",\"FileDescription\":\"\",\"FileExt\":\"\",\"LockedBy\":\"\",\"DateLocked\":\"\",\"Version\":\"\",\"PageCount\":\"\"}',9999),(369,'admin','2019-11-07 07:37:27','DocumentDelete','assemblybizdocs',15,'::1','{\"Document Description\":\"\",\"Reason\":\"kk\"}',9999),(370,'admin','2019-11-07 07:38:55','Delete','elementstorage',15,'::1','{\"S_ROWID\":\"\",\"CreatedBy\":\"\",\"DateCreated\":\"\",\"ModifiedBy\":\"\",\"DateModified\":\"\",\"FileStage\":\"\",\"FileSize\":\"\",\"Orginal_FileName\":\"\",\"New_FileName\":\"\",\"StoragePool\":\"\",\"FileDescription\":\"\",\"FileExt\":\"\",\"LockedBy\":\"\",\"DateLocked\":\"\",\"Version\":\"\",\"PageCount\":\"\"}',9999),(371,'admin','2019-11-07 07:38:55','DocumentDelete','assemblybizdocs',15,'::1','{\"Document Description\":\"\",\"Reason\":\"lll\"}',9999),(372,'admin','2019-11-07 07:43:26','Delete','elementstorage',98,'::1','{\"S_ROWID\":\"98\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 10:40:49\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"542093\",\"Orginal_FileName\":\"Technical Specification.pdf\",\"New_FileName\":\"Technical Specification.pdf\",\"StoragePool\":\"CommitteeDocs-19\",\"FileDescription\":\"Technical Specification\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(373,'admin','2019-11-07 07:43:26','DocumentDelete','assemblybizdocs',98,'::1','{\"Document Description\":\"Technical Specification\",\"Reason\":\"kkk\"}',9999),(374,'admin','2019-11-07 07:44:36','Delete','elementstorage',99,'::1','{\"S_ROWID\":\"99\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 10:44:07\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"542093\",\"Orginal_FileName\":\"Technical Specification.pdf\",\"New_FileName\":\"Technical Specification.pdf\",\"StoragePool\":\"CommitteeDocs-19\",\"FileDescription\":\"Technical Specification\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(375,'admin','2019-11-07 07:44:36','DocumentDelete','assemblybizdocs',99,'::1','{\"Document Description\":\"Technical Specification\",\"Reason\":\"testig\"}',9999),(376,'admin','2019-11-07 07:45:50','Delete','elementstorage',16,'::1','{\"S_ROWID\":\"16\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-15 17:00:04\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"95526\",\"Orginal_FileName\":\"annual-return-form  BRS.pdf\",\"New_FileName\":\"annual-return-form  BRS.pdf\",\"StoragePool\":\"CommitteeDocs-11\",\"FileDescription\":\"annual-return-form  BRS\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(377,'admin','2019-11-07 07:45:50','DocumentDelete','assemblybizdocs',16,'::1','{\"Document Description\":\"annual-return-form  BRS\",\"Reason\":\"wasa\"}',9999),(378,'admin','2019-11-07 07:47:08','Delete','elementstorage',101,'::1','{\"S_ROWID\":\"101\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 10:46:43\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"872273\",\"Orginal_FileName\":\"25950 (1).pdf\",\"New_FileName\":\"25950 (1).pdf\",\"StoragePool\":\"CommitteeDocs-27\",\"FileDescription\":\"25950 (1)\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(379,'admin','2019-11-07 07:47:08','DocumentDelete','assemblybizdocs',101,'::1','{\"Document Description\":\"25950 (1)\",\"Reason\":\"wased\"}',9999),(380,'admin','2019-11-07 07:47:15','Delete','elementstorage',100,'::1','{\"S_ROWID\":\"100\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 10:46:23\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"542093\",\"Orginal_FileName\":\"Technical Specification.pdf\",\"New_FileName\":\"Technical Specification.pdf\",\"StoragePool\":\"CommitteeDocs-27\",\"FileDescription\":\"Technical Specification\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(381,'admin','2019-11-07 07:47:15','DocumentDelete','assemblybizdocs',100,'::1','{\"Document Description\":\"Technical Specification\",\"Reason\":\"edcfgv\"}',9999),(382,'admin','2019-11-07 07:50:14','Delete','elementstorage',4,'::1','{\"S_ROWID\":\"4\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-09 18:16:51\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"923367\",\"Orginal_FileName\":\"County Assembly Services Fact Sheet.pdf\",\"New_FileName\":\"County Assembly Services Fact Sheet.pdf\",\"StoragePool\":\"OtherDocuments-1368\",\"FileDescription\":\"County Assembly Services Fact Sheet\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(383,'admin','2019-11-07 07:50:14','DocumentDelete','assemblybizdocs',4,'::1','{\"Document Description\":\"County Assembly Services Fact Sheet\",\"Reason\":\"Delete tu\"}',9999),(384,'admin','2019-11-07 07:52:11','Delete','elementstorage',102,'::1','{\"S_ROWID\":\"102\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 10:51:52\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"872273\",\"Orginal_FileName\":\"25950 (1).pdf\",\"New_FileName\":\"25950 (1).pdf\",\"StoragePool\":\"AssemblyDocs-7\",\"FileDescription\":\"25950 (1)\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(385,'admin','2019-11-07 07:52:11','DocumentDelete','assemblybizdocs',102,'::1','{\"Document Description\":\"25950 (1)\",\"Reason\":\"wasdd\"}',9999),(386,'admin','2019-11-07 08:04:46','Delete','dh_applications',11,'::1','{\"S_ROWID\":\"11\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-10-18 18:08:27\",\"ModifiedBy\":null,\"DateModified\":null,\"ApplicationName\":\"Gachie\",\"ACL\":null,\"IconRef\":\"fa fa-wrench\",\"AppType\":\"Normal\",\"DisplayOrder\":\"6\",\"AppCode\":\"Gachie\"}',0),(387,'admin','2019-11-07 08:04:59','UPDATE','dh_applications',6,'::1','[{\"Field\":\"DisplayOrder\",\"Ovalue\":\"2\",\"Nvalue\":\"1\"}]',0),(388,'admin','2019-11-07 08:05:16','UPDATE','dh_applications',8,'::1','[{\"Field\":\"DisplayOrder\",\"Ovalue\":\"3\",\"Nvalue\":\"4\"}]',0),(389,'admin','2019-11-07 08:05:34','UPDATE','dh_applications',10,'::1','[{\"Field\":\"DisplayOrder\",\"Ovalue\":\"8\",\"Nvalue\":\"5\"}]',0),(390,'admin','2019-11-07 08:06:05','INSERT','dh_applications',12,'::1','{\"AppCode\":\"Communication\",\"ApplicationName\":\"Communication\",\"IconRef\":\"fa fa-comment\",\"DisplayOrder\":\"6\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 11:06:05\"}',0),(391,'admin','2019-11-07 08:06:34','INSERT','dh_modules',33,'::1','{\"ModuleCode\":\"SMSTeplates_33\",\"ModuleName\":\"SMS Teplates\",\"AppName\":\"Communication\",\"TableName\":\"tbl_smstemplates\",\"IconRef\":\"fa fa-align-left\",\"DisplayOrder\":\"1\",\"CreatedBy\":\"admin\"}',999),(392,'admin','2019-11-07 08:08:13','Delete','dh_modules',33,'::1','{\"S_ROWID\":\"33\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 11:06:34\",\"ModifiedBy\":null,\"DateModified\":null,\"ModuleName\":\"SMS Teplates\",\"ModuleCode\":\"SMSTeplates_33\",\"TableName\":\"tbl_smstemplates\",\"AppName\":\"Communication\",\"ACL\":null,\"DisplayOrder\":\"1\",\"IconRef\":\"fa fa-align-left\",\"DeleteItems\":\"Y\",\"CheckExist\":null,\"EnableCreation\":\"Y\",\"DisplayButton\":null,\"ModuleType\":\"CRUD\",\"ModuleListView\":\"Default\",\"ExcludePermsList\":\"N\",\"ParentTable\":null,\"ExemptRole\":\"N\",\"ButtonType\":\"OpenLink\",\"ButtonAttributes\":null,\"EnablePreview\":\"Y\"}',0),(393,'admin','2019-11-07 08:08:38','INSERT','dh_modules',34,'::1','{\"ModuleCode\":\"SMSTemplates_34\",\"ModuleName\":\"SMS Templates\",\"AppName\":\"Communication\",\"TableName\":\"tbl_smstemplates\",\"IconRef\":\"fa fa-angle-double-down\",\"DisplayOrder\":\"1\",\"CreatedBy\":\"admin\"}',999),(394,'admin','2019-11-07 08:10:36','INSERT','tbl_smstemplates',1,'::1','{\"TemplateName\":\"Welcome Message\",\"TemplateBody\":\"Welcome to County Assembly of Kiambu\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 11:10:36\"}',34),(395,'admin','2019-11-07 08:11:11','INSERT','tbl_smstemplates',2,'::1','{\"TemplateName\":\"Monday Meeting\",\"TemplateBody\":\"You reminded of an Staff Meeting this Friday\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 11:11:11\"}',34),(396,'admin','2019-11-07 08:12:11','UPDATE','dh_applications',6,'::1','[{\"Field\":\"IconRef\",\"Ovalue\":\"fa fa-wrench\",\"Nvalue\":\"fa fa-users\"}]',0),(397,'admin','2019-11-07 09:21:34','INSERT','dh_modules',35,'::1','{\"ModuleCode\":\"ComposeSMS_35\",\"ModuleName\":\"Compose SMS\",\"AppName\":\"Communication\",\"TableName\":\"vw_messageout\",\"IconRef\":\"fa fa-ambulance\",\"DisplayOrder\":\"2\",\"CreatedBy\":\"admin\"}',999),(398,'admin','2019-11-07 09:21:43','UPDATE','dh_modules',35,'::1','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"},{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"}]',0),(399,'admin','2019-11-07 09:32:56','INSERT','listitems',1447,'::1','{\"ItemType\":\"MessageType\",\"ItemCode\":\"SMS Templates\",\"ItemDescription\":\"SMSTemplates\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 12:32:56\"}',0),(400,'admin','2019-11-07 09:33:05','INSERT','listitems',1448,'::1','{\"ItemType\":\"MessageType\",\"ItemCode\":\"Composed\",\"ItemDescription\":\"Composed\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 12:33:05\"}',0),(401,'admin','2019-11-07 09:40:43','INSERT','listitems',1449,'::1','{\"ItemType\":\"SendChannel\",\"ItemCode\":\"Individuals\",\"ItemDescription\":\"Individuals\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 12:40:43\"}',0),(402,'admin','2019-11-07 09:40:51','INSERT','listitems',1450,'::1','{\"ItemType\":\"SendChannel\",\"ItemCode\":\"Clerks\",\"ItemDescription\":\"Clerks\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 12:40:51\"}',0),(403,'admin','2019-11-07 09:41:07','INSERT','listitems',1451,'::1','{\"ItemType\":\"SendChannel\",\"ItemCode\":\"Members\",\"ItemDescription\":\"Members\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 12:41:07\"}',0),(404,'admin','2019-11-07 09:41:33','INSERT','listitems',1452,'::1','{\"ItemType\":\"SendChannel\",\"ItemCode\":\"Committees\",\"ItemDescription\":\"Committees\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 12:41:33\"}',0),(405,'admin','2019-11-07 10:02:40','INSERT','listitems',1453,'::1','{\"ItemType\":\"SendFrequency\",\"ItemCode\":\"SendNow\",\"ItemDescription\":\"Send Now\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 13:02:40\"}',0),(406,'admin','2019-11-07 10:03:04','Delete','listitems',1448,'::1','{\"S_ROWID\":\"1448\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 12:33:05\",\"ModifiedBy\":null,\"DateModified\":null,\"ItemCode\":\"Composed\",\"ItemDescription\":\"Composed\",\"ItemType\":\"MessageType\",\"ParentID\":null}',29),(407,'admin','2019-11-07 10:03:07','Delete','listitems',1447,'::1','{\"S_ROWID\":\"1447\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 12:32:56\",\"ModifiedBy\":null,\"DateModified\":null,\"ItemCode\":\"SMS Templates\",\"ItemDescription\":\"SMSTemplates\",\"ItemType\":\"MessageType\",\"ParentID\":null}',29),(408,'admin','2019-11-07 10:03:19','INSERT','listitems',1454,'::1','{\"ItemType\":\"MessageType\",\"ItemCode\":\"Composed\",\"ItemDescription\":\"Composed\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 13:03:19\"}',0),(409,'admin','2019-11-07 10:03:25','INSERT','listitems',1455,'::1','{\"ItemType\":\"MessageType\",\"ItemCode\":\"SMSTemplates\",\"ItemDescription\":\"SMS Templates\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 13:03:25\"}',0),(410,'admin','2019-11-07 10:03:40','INSERT','listitems',1456,'::1','{\"ItemType\":\"SendFrequency\",\"ItemCode\":\"ScheduleMessage\",\"ItemDescription\":\"ScheduleMessage\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 13:03:40\"}',0),(411,'admin','2019-11-07 10:03:47','Delete','listitems',1456,'::1','{\"S_ROWID\":\"1456\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 13:03:40\",\"ModifiedBy\":null,\"DateModified\":null,\"ItemCode\":\"ScheduleMessage\",\"ItemDescription\":\"ScheduleMessage\",\"ItemType\":\"SendFrequency\",\"ParentID\":null}',29),(412,'admin','2019-11-07 10:03:52','INSERT','listitems',1457,'::1','{\"ItemType\":\"SendFrequency\",\"ItemCode\":\"ScheduleMessage\",\"ItemDescription\":\"Schedule Message\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 13:03:52\"}',0),(413,'admin','2019-11-07 10:53:24','Delete','listitems',1450,'::1','{\"S_ROWID\":\"1450\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 12:40:51\",\"ModifiedBy\":null,\"DateModified\":null,\"ItemCode\":\"Clerks\",\"ItemDescription\":\"Clerks\",\"ItemType\":\"SendChannel\",\"ParentID\":null}',29),(414,'admin','2019-11-07 10:53:39','INSERT','listitems',1458,'::1','{\"ItemType\":\"SendChannel\",\"ItemCode\":\"UserGroups\",\"ItemDescription\":\"UserGroups\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 13:53:39\"}',0),(415,'admin','2019-11-07 15:34:54','INSERT','dh_columns',118,'::1','{\"TblName\":\"tbl_bulksms\",\"DisplayName\":\"ReceiptientName\",\"FieldName\":\"ReceiptientName\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(416,'admin','2019-11-07 16:52:22','INSERT','dh_users',197,'::1','{\"loginid\":\"Test User\",\"Fullname\":\"Kennedy Njuguna\",\"Phone\":\"+254712364528\",\"Email\":\"vokenp@gmail.com\",\"Position\":\"Accounts\",\"PhoneExt\":\"222\",\"user_type\":\"NormalUser\",\"pswd\":\"af02516a05794309cc5e0e522e89c842\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-07 19:52:22\"}',2),(417,'admin','2019-11-07 16:52:56','UPDATE','dh_users',153,'::1','[{\"Field\":\"Phone\",\"Ovalue\":\"0712364528\",\"Nvalue\":\"+254712364528\"},{\"Field\":\"user_type\",\"Ovalue\":\"Normal\",\"Nvalue\":\"Admin\"}]',2),(418,'admin','2019-11-07 16:57:20','UPDATE','dh_users',197,'::1','[{\"Field\":\"Phone\",\"Ovalue\":\"+254712364528\",\"Nvalue\":\"+254720797950\"}]',2),(419,'admin','2019-11-08 01:50:58','UPDATE','scheduleofmeetings',32,'::1','[{\"Field\":\"Venue\",\"Ovalue\":\"Committee Room 1\",\"Nvalue\":\"Committe Room 1\"},{\"Field\":\"FromTime\",\"Ovalue\":\"08:00:00\",\"Nvalue\":\"8:00 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"09:30:00\",\"Nvalue\":\"9:30 AM\"}]',26),(420,'admin','2019-11-08 08:03:37','UPDATE','dh_modules',1,'::1','[{\"Field\":\"ExcludePermsList\",\"Ovalue\":\"N\",\"Nvalue\":\"Y\"},{\"Field\":\"ExemptRole\",\"Ovalue\":\"N\",\"Nvalue\":\"Y\"}]',0),(421,'admin','2019-11-08 08:03:50','UPDATE','dh_modules',1,'::1','[{\"Field\":\"ACL\",\"Ovalue\":null,\"Nvalue\":\"Null\"}]',0),(422,'admin','2019-11-08 12:07:32','INSERT','committeemeetings',145,'::1','{\"Agenda\":\"test\",\"MeetingDate\":\"2019-11-06\",\"Venue\":\"Committe Room 3\",\"FromTime\":\"15:15:00\",\"ToTime\":\"16:15:00\",\"CommitteeID\":\"2\",\"ClerkResponsible\":\"hellenmwangi@kiambuassembly.go.ke\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-08 15:07:32\"}',16),(423,'admin','2019-11-08 12:30:20','Delete','elementstorage',103,'::1','{\"S_ROWID\":\"103\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-08 15:28:27\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"87693\",\"Orginal_FileName\":\"NS-8XHD8PVK-Name Search Rejection.pdf\",\"New_FileName\":\"Meeting for 2019-11-08.pdf\",\"StoragePool\":\"CommitteeDocs-27\",\"FileDescription\":\"Meeting for 2019-11-08\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(424,'admin','2019-11-08 12:30:20','DocumentDelete','assemblybizdocs',103,'::1','{\"Document Description\":\"Meeting for 2019-11-08\",\"Reason\":\"testing\"}',9999),(425,'admin','2019-11-08 12:42:54','INSERT','plenarymeetings',2,'::1','{\"Agenda\":\"test\",\"ClerkResponsible\":\"\",\"MeetingDate\":\"2019-11-14\",\"Venue\":\"Assembly  Chamber\",\"FromTime\":\"15:45:00\",\"ToTime\":\"16:45:00\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-08 15:42:54\"}',30),(426,'admin','2019-11-09 06:59:13','INSERT','committemembers',110,'192.168.0.52','{\"IDNo\":\"22774152\",\"PersonnelNo\":\"20140005394\",\"FullName\":\"Judy Wamuyu\",\"PhoneNo\":\"+254720312154\",\"Email\":\"wamuyu@kiambuassembly.go.ke\",\"Designation\":\"Hansard Reporter\",\"Ward\":\"COMMITTEE CLERK\",\"Pwsd_PFNo\":\"cf1c48258eaae0bab47853936fdc5767\",\"Pwsd_IDNo\":\"5f3316076c9bb4e7736f34c848d4e2fc\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 09:59:13\"}',11),(427,'admin','2019-11-09 07:10:56','UPDATE','dh_users',1,'::1','[{\"Field\":\"Phone\",\"Ovalue\":null,\"Nvalue\":\"+254712364528\"},{\"Field\":\"Email\",\"Ovalue\":null,\"Nvalue\":\"vphptest@gmail.com\"},{\"Field\":\"Position\",\"Ovalue\":null,\"Nvalue\":\"Manager CEO66\"},{\"Field\":\"PhoneExt\",\"Ovalue\":null,\"Nvalue\":\"33\"}]',1),(428,'admin','2019-11-09 07:11:06','UPDATE','dh_users',1,'::1','[{\"Field\":\"Fullname\",\"Ovalue\":\"System Admini\",\"Nvalue\":\"System Admin\"}]',1),(429,'admin','2019-11-09 07:31:41','INSERT','committemembers',111,'192.168.0.52','{\"IDNo\":\"24847374\",\"PersonnelNo\":\"20140005367\",\"FullName\":\"Rachael Thuku\",\"PhoneNo\":\"+254720445466\",\"Email\":\"rthuku@kiambuassembly.go.ke\",\"Designation\":\"Finance Officer\",\"Ward\":\"COMMITTEE CLERK\",\"Pwsd_PFNo\":\"b0158993a02303f08adaefa9bbf34ef5\",\"Pwsd_IDNo\":\"631f7f0dcee86eaa5fae18c359401b12\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 10:31:41\"}',11),(430,'admin','2019-11-09 07:43:17','INSERT','dh_users',198,'192.168.0.52','{\"loginid\":\"wamuyu@kiambuassembly.go.ke\",\"Fullname\":\"Judy Wamuyu\",\"Phone\":\"+254720312154\",\"Email\":\"wamuyu@kiambuassembly.go.ke\",\"Position\":\"Hansard Reporter\",\"PhoneExt\":\"1\",\"user_type\":\"NormalUser\",\"pswd\":\"cf22b50eed5125a08de38a410c8e13d0\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 10:43:16\"}',2),(431,'admin','2019-11-09 07:45:21','INSERT','dh_users',199,'192.168.0.52','{\"loginid\":\"rthuku@kiambuassembly.go.ke\",\"Fullname\":\"Rachael Thuku\",\"Phone\":\"+254720445466\",\"Email\":\"rthuku@kiambuassembly.go.ke\",\"Position\":\"Finance Officer\",\"PhoneExt\":\"1\",\"user_type\":\"NormalUser\",\"pswd\":\"18149fbb66cfd574d4bc85c28a0cb53b\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 10:45:21\"}',2),(432,'admin','2019-11-09 07:58:26','INSERT','dh_users',200,'192.168.0.50','{\"loginid\":\"mwendwa@kiambuassembly.go.ke\",\"Fullname\":\"Muareen Mwendwa\",\"Phone\":\"333\",\"Email\":\"mwendwa@kiambuassembly.go.ke\",\"Position\":\"Clerk\",\"PhoneExt\":\"333\",\"user_type\":\"NormalUser\",\"pswd\":\"5256598d26c13eec8046d34e383c9925\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 10:58:26\"}',2),(433,'mwendwa@kiambuassembly.go.ke','2019-11-09 08:00:33','UPDATE','dh_users',200,'192.168.0.53','[{\"Field\":\"Fullname\",\"Ovalue\":\"Muareen Mwendwa\",\"Nvalue\":\"Maureen Mwendwa\"}]',1),(434,'admin','2019-11-09 08:07:16','INSERT','dh_userprofiles',4,'192.168.0.50','{\"ProfileName\":\"Clerks\",\"ProfileDescription\":\"Clerks\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:07:16\"}',5),(435,'admin','2019-11-09 08:10:12','INSERT','dh_users',202,'192.168.0.51','{\"loginid\":\"mwiti@kiambuassembly.go.ke\",\"Fullname\":\"Kenneth Mwiti\",\"Phone\":\"+254711232153\",\"Email\":\"mwiti@kiambuassembly.go.ke\",\"Position\":\"clerk\",\"PhoneExt\":\"jdi\",\"user_type\":\"NormalUser\",\"pswd\":\"1aaa622754c62fe909eefb77a71b8b92\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:10:12\"}',2),(436,'admin','2019-11-09 08:10:23','INSERT','dh_usergroups',6,'192.168.0.52','{\"GroupCode\":\"Sergeants\",\"GroupName\":\"Sergeants\",\"GroupDescription\":\"Sergeants\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:10:23\"}',6),(437,'admin','2019-11-09 08:11:45','INSERT','dh_userprofiles',5,'192.168.0.52','{\"ProfileName\":\"Sergeants\",\"ProfileDescription\":\"Sergeants\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:11:45\"}',5),(438,'isaac@kiambuassembly.go.ke','2019-11-09 08:16:00','UPDATE','dh_users',193,'192.168.0.58','[{\"Field\":\"loginid\",\"Ovalue\":\"isaac@kiambuassembly.go.ke\",\"Nvalue\":\"\"},{\"Field\":\"Position\",\"Ovalue\":\"Administrator\",\"Nvalue\":\"User\"}]',1),(439,'isaac@kiambuassembly.go.ke','2019-11-09 08:18:26','UPDATE','committemembers',109,'192.168.0.58','[{\"Field\":\"FullName\",\"Ovalue\":\"FRANCIS KARUMBA\",\"Nvalue\":\"Francis Karumba\"}]',11),(440,'jgitahi@kiambuassembly.go.ke','2019-11-09 08:20:01','UPDATE','committemembers',99,'192.168.0.60','[{\"Field\":\"PhoneNo\",\"Ovalue\":\"0700000000\",\"Nvalue\":\"0723466206\"},{\"Field\":\"Designation\",\"Ovalue\":\"COMMITTEE CLERK\",\"Nvalue\":\"Senior Fiscal Analyst \"}]',11),(441,'nuli@kiambuassembly.go.ke','2019-11-09 08:20:02','UPDATE','dh_users',195,'192.168.0.59','[{\"Field\":\"loginid\",\"Ovalue\":\"nuli@kiambuassembly.go.ke\",\"Nvalue\":\"\"},{\"Field\":\"Phone\",\"Ovalue\":\"22\",\"Nvalue\":\"0726354928\"}]',1),(442,'nuli@kiambuassembly.go.ke','2019-11-09 08:21:27','UPDATE','committemembers',106,'192.168.0.59','[{\"Field\":\"PhoneNo\",\"Ovalue\":\"0700000000\",\"Nvalue\":\"0726354928\"}]',11),(443,'jgitahi@kiambuassembly.go.ke','2019-11-09 08:22:40','INSERT','committemembers',112,'192.168.0.60','{\"IDNo\":\"27674671\",\"PersonnelNo\":\"20160079158\",\"FullName\":\"Kenneth Mwiti\",\"PhoneNo\":\"+254711232153\",\"Email\":\"mwiti@kiambuassembly.go.ke\",\"Designation\":\"CLERK ASSISTANT\",\"Ward\":\"COMMITTEE CLERK\",\"Pwsd_PFNo\":\"24101c194d8a7ba65068a9cafcf20057\",\"Pwsd_IDNo\":\"bcb3428327eb372f050215a5358b08b6\",\"CreatedBy\":\"jgitahi@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 11:22:40\"}',11),(444,'iwaweru@kiambuassembly.go.ke','2019-11-09 08:26:50','UPDATE','dh_users',198,'192.168.0.55','[{\"Field\":\"Phone\",\"Ovalue\":\"4949\",\"Nvalue\":\"254-721-942-013\"}]',1),(445,'stella@kiambuassembly.go.ke','2019-11-09 08:27:49','UPDATE','dh_users',181,'192.168.0.61','[{\"Field\":\"Phone\",\"Ovalue\":\"99\",\"Nvalue\":\"0739521890\"},{\"Field\":\"PhoneExt\",\"Ovalue\":\"88\",\"Nvalue\":\"123\"}]',1),(446,'mwaura@kiambuassembly.go.ke','2019-11-09 08:28:06','UPDATE','dh_users',174,'192.168.0.53','[{\"Field\":\"Phone\",\"Ovalue\":\"11\",\"Nvalue\":\"0725223208\"}]',1),(447,'admin','2019-11-09 08:31:28','UPDATE','dh_users',181,'192.168.0.51','[{\"Field\":\"Phone\",\"Ovalue\":\"0739521890\",\"Nvalue\":\"+254739521890\"}]',2),(448,'admin','2019-11-09 08:32:19','UPDATE','dh_users',174,'192.168.0.51','[{\"Field\":\"Phone\",\"Ovalue\":\"0725223208\",\"Nvalue\":\"+254725223208\"}]',2),(449,'admin','2019-11-09 08:32:47','INSERT','committemembers',113,'192.168.0.52','{\"IDNo\":\"22303937\",\"PersonnelNo\":\"20140004324\",\"FullName\":\"Isaac Waweru\",\"PhoneNo\":\"+254721942013\",\"Email\":\"iwaweru@kiambuassembly.go.ke\",\"Designation\":\"Sergeant\",\"Ward\":\"COMMITTEE CLERK\",\"Pwsd_PFNo\":\"af45fc4f3f141f2686a074385b6c5418\",\"Pwsd_IDNo\":\"07e5c85ee1702fe600eb8ce3ac816db9\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:32:46\"}',11),(450,'admin','2019-11-09 08:33:00','UPDATE','dh_users',195,'192.168.0.51','[{\"Field\":\"Phone\",\"Ovalue\":\"0726354928\",\"Nvalue\":\"+254726354928\"}]',2),(451,'admin','2019-11-09 08:35:08','UPDATE','dh_users',196,'192.168.0.51','[{\"Field\":\"Phone\",\"Ovalue\":\"0729266435\",\"Nvalue\":\"+254729266435\"}]',2),(452,'admin','2019-11-09 08:37:26','INSERT','listitems',1474,'192.168.0.52','{\"ItemType\":\"Wards022\",\"ItemCode\":\"SERGEANT\",\"ItemDescription\":\"SERGEANT\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:37:26\"}',0),(453,'admin','2019-11-09 08:39:12','INSERT','listitems',1475,'192.168.0.52','{\"ItemType\":\"Wards022\",\"ItemCode\":\"HANSARD CLERK\",\"ItemDescription\":\"HANSARD CLERK\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:39:11\"}',0),(454,'admin','2019-11-09 08:39:36','INSERT','listitems',1476,'192.168.0.52','{\"ItemType\":\"Wards022\",\"ItemCode\":\"ASSEMBLY CLERK\",\"ItemDescription\":\"ASSEMBLY CLERK\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:39:35\"}',0),(455,'stella@kiambuassembly.go.ke','2019-11-09 08:43:14','UPDATE','committemembers',104,'192.168.0.61','[{\"Field\":\"PhoneNo\",\"Ovalue\":\"0700000000\",\"Nvalue\":\"0739521890\"}]',11),(456,'admin','2019-11-09 08:44:06','Delete','vw_userslist',195,'192.168.0.52','{\"S_ROWID\":\"195\",\"loginid\":\"\",\"Fullname\":\"Lydia Nuli\",\"Phone\":\"+254726354928\",\"Email\":\"nuli@kiambuassembly.go.ke\",\"Position\":\"Committee Clerk\",\"PhoneExt\":\"4\",\"pswd\":\"181d323599e00c1946e4a0943431f375\",\"user_type\":\"NormalUser\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-26 22:18:46\",\"shift\":\"Day\",\"Department\":null,\"Division\":null,\"ProfileImage\":null,\"userstatus\":\"Active\",\"DeActivatedBy\":null,\"DateDeActivated\":null,\"DeActivateReason\":null,\"ModifiedBy\":\"admin\",\"DateModified\":\"2019-11-09 11:32:59\"}',2),(457,'jgitahi@kiambuassembly.go.ke','2019-11-09 08:44:28','Delete','elementstorage',108,'192.168.0.60','{\"S_ROWID\":\"108\",\"CreatedBy\":\"jgitahi@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 11:41:26\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"93278\",\"Orginal_FileName\":\"Techical advice to BAC on Agriculture anomaly 2019-20 budget.docx\",\"New_FileName\":\"Techical advice to BAC on Agriculture anomaly 2019-20 budget.docx\",\"StoragePool\":\"CommitteeDocs-13\",\"FileDescription\":\"Techical advice to BAC on Agriculture anomaly 2019-20 budget\",\"FileExt\":\"docx\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(458,'admin','2019-11-09 08:44:28','DocumentDelete','assemblybizdocs',108,'192.168.0.60','{\"Document Description\":\"Techical advice to BAC on Agriculture anomaly 2019-20 budget\",\"Reason\":\"DRAFT\"}',9999),(459,'admin','2019-11-09 08:45:00','UPDATE','assemblybizdocs',109,'192.168.0.50','[{\"Field\":\"DocumentTitle\",\"Ovalue\":\"manual mobile app\",\"Nvalue\":\"Isaac Document\"}]',24),(460,'sngatia@kiambuassembly.go.ke','2019-11-09 08:45:03','Delete','elementstorage',109,'192.168.0.59','{\"S_ROWID\":\"109\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:44:12\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"1470035\",\"Orginal_FileName\":\"manual mobile app.pdf\",\"New_FileName\":\"Isaac Document.pdf\",\"StoragePool\":\"CommitteeDocs-3\",\"FileDescription\":\"Isaac Document\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(461,'admin','2019-11-09 08:45:03','DocumentDelete','assemblybizdocs',109,'192.168.0.59','{\"Document Description\":\"Isaac Document\",\"Reason\":\"spelling error\"}',9999),(462,'admin','2019-11-09 08:45:05','UPDATE','assemblybizdocs',109,'192.168.0.50','[{\"Field\":\"DocumentCategory\",\"Ovalue\":null,\"Nvalue\":\"CommitteeDocs-3\"},{\"Field\":\"DocumentTitle\",\"Ovalue\":null,\"Nvalue\":\"Isaac Document\"},{\"Field\":\"DocumentDate\",\"Ovalue\":null,\"Nvalue\":\"2019-11-14\"},{\"Field\":\"CommitteeDocType\",\"Ovalue\":null,\"Nvalue\":\"Agenda\"}]',24),(463,'admin','2019-11-09 08:45:36','INSERT','dh_users',203,'192.168.0.52','{\"loginid\":\"nuli@kiambuassembly.go.ke\",\"Fullname\":\"Lydia Nuli Anguche\",\"Phone\":\"+254726354928\",\"Email\":\"nuli@kiambuassembly.go.ke\",\"Position\":\"COMMITTEE CLERK\",\"PhoneExt\":\"1\",\"user_type\":\"NormalUser\",\"pswd\":\"181d323599e00c1946e4a0943431f375\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:45:36\"}',2),(464,'admin','2019-11-09 08:45:49','INSERT','listitems',1477,'192.168.0.50','{\"ItemType\":\"CommitteeDocType\",\"ItemCode\":\"Notices of Motion\",\"ItemDescription\":\"Notices of Motion\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:45:49\"}',0),(465,'admin','2019-11-09 08:46:46','INSERT','listitems',1478,'192.168.0.50','{\"ItemType\":\"CommitteeDocType\",\"ItemCode\":\"Briefs\",\"ItemDescription\":\"Briefs\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:46:46\"}',0),(466,'admin','2019-11-09 08:47:04','INSERT','listitems',1479,'192.168.0.50','{\"ItemType\":\"CommitteeDocType\",\"ItemCode\":\"Correspondences\",\"ItemDescription\":\"Correspondences\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:47:04\"}',0),(467,'admin','2019-11-09 08:48:06','INSERT','listitems',1480,'192.168.0.50','{\"ItemType\":\"CommitteeDocType\",\"ItemCode\":\"Others\",\"ItemDescription\":\"Others\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:48:06\"}',0),(468,'sngatia@kiambuassembly.go.ke','2019-11-09 08:51:48','Delete','elementstorage',111,'192.168.0.59','{\"S_ROWID\":\"111\",\"CreatedBy\":\"sngatia@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 11:51:27\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"479109\",\"Orginal_FileName\":\"WATER STATEMENT CEC.pdf\",\"New_FileName\":\"WATER STATEMENT CEC.pdf\",\"StoragePool\":\"CommitteeDocs-11\",\"FileDescription\":\"WATER STATEMENT CEC\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(469,'admin','2019-11-09 08:51:48','DocumentDelete','assemblybizdocs',111,'192.168.0.59','{\"Document Description\":\"WATER STATEMENT CEC\",\"Reason\":\"error\"}',9999),(470,'jgitahi@kiambuassembly.go.ke','2019-11-09 08:52:14','Delete','elementstorage',110,'192.168.0.60','{\"S_ROWID\":\"110\",\"CreatedBy\":\"jgitahi@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 11:48:41\",\"ModifiedBy\":null,\"DateModified\":null,\"FileStage\":\"Free\",\"FileSize\":\"48416\",\"Orginal_FileName\":\"PP Memo on the Budget and Research Office for FBA Chair.pdf\",\"New_FileName\":\"PP Memo on the Budget and Research Office for FBA Chair.pdf\",\"StoragePool\":\"CommitteeDocs-13\",\"FileDescription\":\"PP Memo on the Budget and Research Office for FBA Chair\",\"FileExt\":\"pdf\",\"LockedBy\":null,\"DateLocked\":null,\"Version\":\"1\",\"PageCount\":null}',9999),(471,'admin','2019-11-09 08:52:14','DocumentDelete','assemblybizdocs',110,'192.168.0.60','{\"Document Description\":\"PP Memo on the Budget and Research Office for FBA Chair\",\"Reason\":\"TRAINING\"}',9999),(472,'admin','2019-11-09 08:52:46','UPDATE','assemblycommittees',1,'192.168.0.51','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"gachie@kiambuassembly.go.ke\",\"Nvalue\":\"mwiti@kiambuassembly.go.ke\"}]',9),(473,'mwendwa@kiambuassembly.go.ke','2019-11-09 08:56:08','INSERT','committeemeetings',146,'192.168.0.53','{\"Agenda\":\"Maureen train8ng\",\"MeetingDate\":\"2019-11-09\",\"Venue\":\"Assembly  Chamber\",\"FromTime\":\"12:00:00\",\"ToTime\":\"13:00:00\",\"CommitteeID\":\"10\",\"ClerkResponsible\":\"anita@kiambuassembly.go.ke\",\"CreatedBy\":\"mwendwa@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 11:56:08\"}',16),(474,'sngatia@kiambuassembly.go.ke','2019-11-09 08:56:47','INSERT','committeemeetings',147,'192.168.0.59','{\"Agenda\":\"Lamada training\",\"MeetingDate\":\"2019-11-09\",\"Venue\":\"Committe Room 3\",\"FromTime\":\"12:00:00\",\"ToTime\":\"14:00:00\",\"CommitteeID\":\"11\",\"ClerkResponsible\":\"nuli@kiambuassembly.go.ke\",\"CreatedBy\":\"sngatia@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 11:56:47\"}',16),(475,'admin','2019-11-09 08:56:58','INSERT','committeemeetings',148,'192.168.0.50','{\"Agenda\":\"LaMada Training and Implementation\",\"MeetingDate\":\"2019-11-09\",\"Venue\":\"Other\",\"FromTime\":\"12:00:00\",\"ToTime\":\"15:00:00\",\"CommitteeID\":\"26\",\"ClerkResponsible\":\"hellenmwangi@kiambuassembly.go.ke\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 11:56:58\"}',16),(476,'iwaweru@kiambuassembly.go.ke','2019-11-09 08:57:09','INSERT','committeemeetings',149,'192.168.0.55','{\"Agenda\":\"serjeant training\",\"MeetingDate\":\"2019-11-09\",\"Venue\":\"Other\",\"FromTime\":\"12:00:00\",\"ToTime\":\"12:00:00\",\"CommitteeID\":\"26\",\"ClerkResponsible\":\"iwaweru@kiambuassembly.go.ke\",\"CreatedBy\":\"iwaweru@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 11:57:09\"}',16),(477,'jgitahi@kiambuassembly.go.ke','2019-11-09 08:58:50','INSERT','committeemeetings',150,'192.168.0.60','{\"Agenda\":\"Consideration of the Supplementary Budget 2019\\/2020\",\"MeetingDate\":\"2019-11-09\",\"Venue\":\"Committe Room 3\",\"FromTime\":\"11:00:00\",\"ToTime\":\"12:00:00\",\"CommitteeID\":\"13\",\"ClerkResponsible\":\"jgitahi@kiambuassembly.go.ke\",\"CreatedBy\":\"jgitahi@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 11:58:49\"}',16),(478,'mwendwa@kiambuassembly.go.ke','2019-11-09 09:03:41','INSERT','committeemeetings',151,'192.168.0.53','{\"Agenda\":\"Bh\",\"MeetingDate\":\"2019-11-09\",\"Venue\":\"Assembly  Chamber\",\"FromTime\":\"12:15:00\",\"ToTime\":\"13:30:00\",\"CommitteeID\":\"\",\"ClerkResponsible\":\"\",\"CreatedBy\":\"mwendwa@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 12:03:41\"}',16),(479,'mwendwa@kiambuassembly.go.ke','2019-11-09 09:03:49','UPDATE','committeemeetings',151,'192.168.0.53','[{\"Field\":\"FromTime\",\"Ovalue\":\"12:15:00\",\"Nvalue\":\"12:15 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"13:30:00\",\"Nvalue\":\"1:30 PM\"},{\"Field\":\"CommitteeID\",\"Ovalue\":\"0\",\"Nvalue\":\"2\"},{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"\",\"Nvalue\":\"mwaura@kiambuassembly.go.ke\"}]',16),(480,'jgitahi@kiambuassembly.go.ke','2019-11-09 09:04:06','INSERT','committeemeetings',152,'192.168.0.60','{\"Agenda\":\"Approval of the Supplementary Budget\",\"MeetingDate\":\"2019-11-07\",\"Venue\":\"Committe Room 3\",\"FromTime\":\"09:15:00\",\"ToTime\":\"11:15:00\",\"CommitteeID\":\"13\",\"ClerkResponsible\":\"jgitahi@kiambuassembly.go.ke\",\"CreatedBy\":\"jgitahi@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 12:04:06\"}',16),(481,'jgitahi@kiambuassembly.go.ke','2019-11-09 09:11:47','INSERT','committeemeetings',153,'192.168.0.60','{\"Agenda\":\"consideration of workshop to la Mada training\",\"MeetingDate\":\"2019-11-09\",\"Venue\":\"Committe Room 2\",\"FromTime\":\"12:15:00\",\"ToTime\":\"14:15:00\",\"CommitteeID\":\"1\",\"ClerkResponsible\":\"mwiti@kiambuassembly.go.ke\",\"CreatedBy\":\"jgitahi@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 12:11:47\"}',16),(482,'admin','2019-11-09 09:20:33','INSERT','tbl_smstemplates',3,'192.168.0.50','{\"TemplateName\":\"Lunch\",\"TemplateBody\":\"You are welcome for Lunch at Assembly Canteen\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-09 12:20:32\"}',34),(483,'mwendwa@kiambuassembly.go.ke','2019-11-09 09:20:39','UPDATE','tbl_smstemplates',1,'192.168.0.53','[{\"Field\":\"TemplateName\",\"Ovalue\":\"Welcome Message\",\"Nvalue\":\"Good evening Hon.Members of the committee on Transport \"},{\"Field\":\"TemplateBody\",\"Ovalue\":\"Welcome to County Assembly of Kiambu\",\"Nvalue\":\"This is to welcome you for the meeting that shall be held on 9th November 2019 in committee room 3\"}]',34),(484,'iwaweru@kiambuassembly.go.ke','2019-11-09 09:20:44','INSERT','tbl_smstemplates',4,'192.168.0.55','{\"TemplateName\":\"plenary session\",\"TemplateBody\":\"good morning members,the plenary session will be delayed by\",\"CreatedBy\":\"iwaweru@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 12:20:44\"}',34),(485,'jgitahi@kiambuassembly.go.ke','2019-11-09 09:21:23','INSERT','tbl_smstemplates',5,'192.168.0.60','{\"TemplateName\":\"Budget Committee\",\"TemplateBody\":\"Greetings Hon. Members, You are here by invited to the Budget and Appropriations Committee Tuesday 11th Nov, 2019 Committee Room 3 at 11 AM. Kindly Purpose to attend\",\"CreatedBy\":\"jgitahi@kiambuassembly.go.ke\",\"DateCreated\":\"2019-11-09 12:21:22\"}',34),(486,'admin','2019-11-27 10:02:01','INSERT','listitems',1482,'::1','{\"ItemType\":\"usertype\",\"ItemCode\":\"Clerk\",\"ItemDescription\":\"Clerk\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-27 13:02:01\"}',0),(487,'admin','2019-11-27 10:02:06','Delete','listitems',1400,'::1','{\"S_ROWID\":\"1400\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-07-08 13:20:05\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NormalUser\",\"ItemDescription\":\"Normal User\",\"ItemType\":\"usertype\",\"ParentID\":\"0\"}',29),(488,'admin','2019-11-27 10:02:21','INSERT','listitems',1483,'::1','{\"ItemType\":\"usertype\",\"ItemCode\":\"Accountant\",\"ItemDescription\":\"Accountant\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-11-27 13:02:21\"}',0),(489,'admin','2019-11-27 10:32:12','UPDATE','dh_modules',9,'::1','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"},{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"}]',0),(490,'admin','2019-11-27 11:17:39','UPDATE','dh_modules',11,'::1','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"},{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"}]',0),(491,'njogu@kiambuassembly.go.ke','2019-11-27 13:04:55','UPDATE','committemembers',41,'127.0.0.1','[{\"Field\":\"PhoneNo\",\"Ovalue\":\"728008793\",\"Nvalue\":\"254728008793\"}]',11),(492,'admin','2019-11-27 13:06:51','UPDATE','dh_modules',16,'::1','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"},{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"}]',0),(493,'admin','2019-11-27 13:25:58','UPDATE','dh_modules',26,'::1','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"}]',0),(494,'admin','2019-11-28 09:09:41','INSERT','dh_columns',119,'::1','{\"TblName\":\"scheduleofmeetings\",\"DisplayName\":\"ClerkResponsible\",\"FieldName\":\"ClerkResponsible\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(495,'admin','2019-11-28 09:31:27','INSERT','dh_columns',120,'::1','{\"TblName\":\"scheduleofmeetings\",\"DisplayName\":\"Other Venue\",\"FieldName\":\"OtherVenue\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(496,'admin','2019-11-28 09:49:08','UPDATE','scheduleofmeetings',32,'::1','[{\"Field\":\"FromTime\",\"Ovalue\":\"08:00:00\",\"Nvalue\":\"8:00 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"09:30:00\",\"Nvalue\":\"9:30 AM\"},{\"Field\":\"Venue\",\"Ovalue\":\"Committe Room 1\",\"Nvalue\":\"Committe Room 2\"}]',26),(497,'admin','2019-11-28 09:51:02','UPDATE','committeemeetings',87,'::1','[{\"Field\":\"Agenda\",\"Ovalue\":null,\"Nvalue\":\"water\"},{\"Field\":\"MeetingDate\",\"Ovalue\":null,\"Nvalue\":\"2019-08-27\"},{\"Field\":\"Venue\",\"Ovalue\":null,\"Nvalue\":\"Committe Room 1\"},{\"Field\":\"FromTime\",\"Ovalue\":null,\"Nvalue\":\"11:00 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":null,\"Nvalue\":\"12:30 AM\"},{\"Field\":\"CommitteeID\",\"Ovalue\":null,\"Nvalue\":\"13\"}]',16),(498,'admin','2019-11-28 09:55:26','UPDATE','committeemeetings',87,'::1','[{\"Field\":\"FromTime\",\"Ovalue\":\"11:00:00\",\"Nvalue\":\"11:00 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"00:30:00\",\"Nvalue\":\"12:30 AM\"},{\"Field\":\"Venue\",\"Ovalue\":\"Committe Room 1\",\"Nvalue\":\"Other\"},{\"Field\":\"OtherVenue\",\"Ovalue\":null,\"Nvalue\":\"Pale Inje\"}]',16),(499,'admin','2019-11-28 09:55:30','UPDATE','committeemeetings',87,'::1','[{\"Field\":\"FromTime\",\"Ovalue\":\"11:00:00\",\"Nvalue\":\"11:00 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"00:30:00\",\"Nvalue\":\"12:30 AM\"}]',16),(500,'admin','2019-12-05 10:59:30','Delete','listitems',1140,'::1','{\"S_ROWID\":\"1140\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-05-15 07:58:04\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"dh_emailtemplates\",\"ItemDescription\":\"dh_emailtemplates\",\"ItemType\":\"SystemTables\",\"ParentID\":\"0\"}',29),(501,'admin','2019-12-05 11:01:46','INSERT','dh_modules',36,'::1','{\"ModuleCode\":\"EmailTemplates_36\",\"ModuleName\":\"Email Templates\",\"AppName\":\"SystemApps\",\"TableName\":\"dh_emailtemplates\",\"IconRef\":\"fa fa-envelope\",\"DisplayOrder\":\"6\",\"CreatedBy\":\"admin\"}',999),(502,'admin','2019-12-05 11:12:08','INSERT','dh_columns',121,'::1','{\"TblName\":\"dh_emailtemplates\",\"DisplayName\":\"TempDescription\",\"FieldName\":\"TempDescription\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(503,'admin','2019-12-06 13:17:59','UPDATE','dh_emailtemplates',3,'::1','[{\"Field\":\"TempBody\",\"Ovalue\":\"<div style=\\\"background:#fff; border:1px solid #ccc; padding:5px 10px\\\"><img src=\\\"http:\\/\\/74.207.242.48\\/triabiosms\\/dist\\/img\\/logo.png\\\" style=\\\"height:79px; width:200px\\\" \\/><\\/div>\\n\\n<hr \\/>\\n<h2><cite>Welcome @Fullname@,<\\/cite><\\/h2>\\n\\n<p><em>Your TriaBioSMS account has been created successfully, You can now access<\\/em>&nbsp;TriaBioSMS&nbsp;via <a href=\\\"https:\\/\\/apps.quarto.co.ke\\/triabiosms\\\">TriaBioSMS<\\/a>. And Your login credentials are :<\\/p>\\n\\n<p>UserName :&nbsp;<strong>@loginid@<\\/strong><\\/p>\\n\\n<p>&nbsp;Password&nbsp; :&nbsp;<strong>@pswd@<\\/strong><\\/p>\\n\\n<p><strong>NB: This a default password, please do remember to change your password upon login.<\\/strong><\\/p>\\n\\n<hr \\/>\\n<p>Regards<\\/p>\\n\\n<p><strong>TriaBioSMS Team<\\/strong><\\/p>\",\"Nvalue\":\"                       &lt;div style=&quot;background:#fff; border:1px solid #ccc; padding:5px 10px&quot;&gt;&lt;img src=&quot;http:\\/\\/74.207.242.48\\/triabiosms\\/dist\\/img\\/logo.png&quot; style=&quot;height:79px; width:200px&quot; \\/&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;hr \\/&gt;\\r\\n&lt;h2&gt;&lt;cite&gt;Welcome @Fullname@,&lt;\\/cite&gt;&lt;\\/h2&gt;\\r\\n\\r\\n&lt;p&gt;&lt;em&gt;Your TriaBioSMS account has been created successfully, You can now access&lt;\\/em&gt;\\u00a0TriaBioSMS\\u00a0via &lt;a href=&quot;https:\\/\\/apps.quarto.co.ke\\/triabiosms&quot;&gt;TriaBioSMS&lt;\\/a&gt;. And Your login credentials are :&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;UserName :\\u00a0&lt;strong&gt;@loginid@&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;\\u00a0Password\\u00a0 :\\u00a0&lt;strong&gt;@pswd@&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;&lt;strong&gt;NB: This a default password, please do remember to change your password upon login.&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;hr \\/&gt;\\r\\n&lt;p&gt;Regards&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;&lt;strong&gt;TriaBioSMS Team&lt;\\/strong&gt;&lt;\\/p&gt;                    \"}]',36),(504,'admin','2019-12-06 13:18:20','UPDATE','dh_emailtemplates',3,'::1','[{\"Field\":\"TempBody\",\"Ovalue\":\"&lt;div style=&quot;background:#fff; border:1px solid #ccc; padding:5px 10px&quot;&gt;&lt;img src=&quot;http:\\/\\/74.207.242.48\\/triabiosms\\/dist\\/img\\/logo.png&quot; style=&quot;height:79px; width:200px&quot; \\/&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;hr \\/&gt;\\r\\n&lt;h2&gt;&lt;cite&gt;Welcome @Fullname@,&lt;\\/cite&gt;&lt;\\/h2&gt;\\r\\n\\r\\n&lt;p&gt;&lt;em&gt;Your TriaBioSMS account has been created successfully, You can now access&lt;\\/em&gt;\\u00a0TriaBioSMS\\u00a0via &lt;a href=&quot;https:\\/\\/apps.quarto.co.ke\\/triabiosms&quot;&gt;TriaBioSMS&lt;\\/a&gt;. And Your login credentials are :&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;UserName :\\u00a0&lt;strong&gt;@loginid@&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;\\u00a0Password\\u00a0 :\\u00a0&lt;strong&gt;@pswd@&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;&lt;strong&gt;NB: This a default password, please do remember to change your password upon login.&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;hr \\/&gt;\\r\\n&lt;p&gt;Regards&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;&lt;strong&gt;TriaBioSMS Team&lt;\\/strong&gt;&lt;\\/p&gt;\",\"Nvalue\":\"&lt;div style=&quot;background:#fff; border:1px solid #ccc; padding:5px 10px&quot;&gt;&lt;img src=&quot;http:\\/\\/74.207.242.48\\/triabiosms\\/dist\\/img\\/logo.png&quot; style=&quot;height:79px; width:200px&quot; \\/&gt;&lt;\\/div&gt;\\n\\n&lt;hr \\/&gt;\\n&lt;h2&gt;&lt;cite&gt;Welcome @Fullname@,&lt;\\/cite&gt;&lt;\\/h2&gt;\\n\\n&lt;p&gt;&lt;em&gt;Your TriaBioSMS account has been created successfully, Y&lt;s&gt;&lt;strong&gt;ou can now access&lt;\\/strong&gt;&lt;\\/s&gt;&lt;\\/em&gt;&lt;s&gt;&lt;strong&gt;&amp;nbsp;Tr&lt;\\/strong&gt;&lt;\\/s&gt;iaBioSMS&amp;nbsp;via &lt;a href=&quot;https:\\/\\/apps.quarto.co.ke\\/triabiosms&quot;&gt;TriaBioSMS&lt;\\/a&gt;. And Your login credentials are :&amp;nbsp; jmhhhg&lt;\\/p&gt;\\n\\n&lt;p&gt;UserName :&amp;nbsp;&lt;strong&gt;@loginid@&lt;\\/strong&gt;&lt;\\/p&gt;\\n\\n&lt;p&gt;&amp;nbsp;Password&amp;nbsp; :&amp;nbsp;&lt;strong&gt;@pswd@&lt;\\/strong&gt;&lt;\\/p&gt;\\n\\n&lt;p&gt;&lt;strong&gt;NB: This a default password, please do remember to change your password upon login.&lt;\\/strong&gt;&lt;\\/p&gt;\\n\\n&lt;hr \\/&gt;\\n&lt;p&gt;Regards&lt;\\/p&gt;\\n\\n&lt;p&gt;&lt;strong&gt;TriaBioSMS Team&lt;\\/strong&gt;&lt;\\/p&gt;\\n\"}]',36),(505,'admin','2019-12-06 13:19:05','UPDATE','dh_emailtemplates',3,'::1','[{\"Field\":\"TempSubject\",\"Ovalue\":\"Welcome to TriaBioSMS\",\"Nvalue\":\"Welcome to Kiambu County Assembly\"},{\"Field\":\"TempBody\",\"Ovalue\":\"&lt;div style=&quot;background:#fff; border:1px solid #ccc; padding:5px 10px&quot;&gt;&lt;img src=&quot;http:\\/\\/74.207.242.48\\/triabiosms\\/dist\\/img\\/logo.png&quot; style=&quot;height:79px; width:200px&quot; \\/&gt;&lt;\\/div&gt;\\n\\n&lt;hr \\/&gt;\\n&lt;h2&gt;&lt;cite&gt;Welcome @Fullname@,&lt;\\/cite&gt;&lt;\\/h2&gt;\\n\\n&lt;p&gt;&lt;em&gt;Your TriaBioSMS account has been created successfully, Y&lt;s&gt;&lt;strong&gt;ou can now access&lt;\\/strong&gt;&lt;\\/s&gt;&lt;\\/em&gt;&lt;s&gt;&lt;strong&gt;&amp;nbsp;Tr&lt;\\/strong&gt;&lt;\\/s&gt;iaBioSMS&amp;nbsp;via &lt;a href=&quot;https:\\/\\/apps.quarto.co.ke\\/triabiosms&quot;&gt;TriaBioSMS&lt;\\/a&gt;. And Your login credentials are :&amp;nbsp; jmhhhg&lt;\\/p&gt;\\n\\n&lt;p&gt;UserName :&amp;nbsp;&lt;strong&gt;@loginid@&lt;\\/strong&gt;&lt;\\/p&gt;\\n\\n&lt;p&gt;&amp;nbsp;Password&amp;nbsp; :&amp;nbsp;&lt;strong&gt;@pswd@&lt;\\/strong&gt;&lt;\\/p&gt;\\n\\n&lt;p&gt;&lt;strong&gt;NB: This a default password, please do remember to change your password upon login.&lt;\\/strong&gt;&lt;\\/p&gt;\\n\\n&lt;hr \\/&gt;\\n&lt;p&gt;Regards&lt;\\/p&gt;\\n\\n&lt;p&gt;&lt;strong&gt;TriaBioSMS Team&lt;\\/strong&gt;&lt;\\/p&gt;\",\"Nvalue\":\"                       &lt;div style=&quot;background:#fff; border:1px solid #ccc; padding:5px 10px&quot;&gt;&lt;img src=&quot;http:\\/\\/74.207.242.48\\/triabiosms\\/dist\\/img\\/logo.png&quot; style=&quot;height:79px; width:200px&quot; \\/&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;hr \\/&gt;\\r\\n&lt;h2&gt;&lt;cite&gt;Welcome @Fullname@,&lt;\\/cite&gt;&lt;\\/h2&gt;\\r\\n\\r\\n&lt;p&gt;&lt;em&gt;Your TriaBioSMS account has been created successfully, Y&lt;s&gt;&lt;strong&gt;ou can now access&lt;\\/strong&gt;&lt;\\/s&gt;&lt;\\/em&gt;&lt;s&gt;&lt;strong&gt;&amp;nbsp;Tr&lt;\\/strong&gt;&lt;\\/s&gt;iaBioSMS&amp;nbsp;via &lt;a href=&quot;https:\\/\\/apps.quarto.co.ke\\/triabiosms&quot;&gt;TriaBioSMS&lt;\\/a&gt;. And Your login credentials are :&amp;nbsp; jmhhhg&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;UserName :&amp;nbsp;&lt;strong&gt;@loginid@&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;&amp;nbsp;Password&amp;nbsp; :&amp;nbsp;&lt;strong&gt;@pswd@&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;&lt;strong&gt;NB: This a default password, please do remember to change your password upon login.&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;hr \\/&gt;\\r\\n&lt;p&gt;Regards&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;&lt;strong&gt;TriaBioSMS Team&lt;\\/strong&gt;&lt;\\/p&gt;                    \"}]',36),(506,'admin','2019-12-06 13:19:38','UPDATE','dh_emailtemplates',4,'::1','[{\"Field\":\"TempSubject\",\"Ovalue\":\"TriaBioSMS Password Reset\",\"Nvalue\":\"County Assembly of Kiambu Password Reset\"},{\"Field\":\"TempBody\",\"Ovalue\":\"<div style=\\\"background:#fff; border:1px solid #ccc; padding:5px 10px\\\"><img src=\\\"http:\\/\\/74.207.242.48\\/triabiosms\\/dist\\/img\\/logo.png\\\" style=\\\"height:79px; width:200px\\\" \\/><\\/div>\\n\\n<hr \\/>\\n<h2><cite>Hi @Fullname@,<\\/cite><\\/h2>\\n\\n<p><em>Your TriaBioSMS&nbsp;account password has been reset by <strong>@USERID@.&nbsp;<\\/strong><\\/em>Your login credentials are :<\\/p>\\n\\n<p>UserName :&nbsp;<strong>@loginid@<\\/strong><\\/p>\\n\\n<p>&nbsp;Password&nbsp; :&nbsp;<strong>@pswd@<\\/strong><\\/p>\\n\\n<p><em>You can now access<\\/em>&nbsp;TriaBioSMS via<\\/p>\",\"Nvalue\":\"                       &lt;div style=&quot;background:#fff; border:1px solid #ccc; padding:5px 10px&quot;&gt;&lt;img src=&quot;http:\\/\\/74.207.242.48\\/triabiosms\\/dist\\/img\\/logo.png&quot; style=&quot;height:79px; width:200px&quot; \\/&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;hr \\/&gt;\\r\\n&lt;h2&gt;&lt;cite&gt;Hi @Fullname@,&lt;\\/cite&gt;&lt;\\/h2&gt;\\r\\n\\r\\n&lt;p&gt;&lt;em&gt;Your TriaBioSMS\\u00a0account password has been reset by &lt;strong&gt;@USERID@.\\u00a0&lt;\\/strong&gt;&lt;\\/em&gt;Your login credentials are :&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;UserName :\\u00a0&lt;strong&gt;@loginid@&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;\\u00a0Password\\u00a0 :\\u00a0&lt;strong&gt;@pswd@&lt;\\/strong&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;&lt;em&gt;You can now access&lt;\\/em&gt;\\u00a0TriaBioSMS via&lt;\\/p&gt;                    \"}]',36),(507,'admin','2020-01-23 11:49:12','INSERT','dh_modules',37,'::1','{\"ModuleCode\":\"Calender_37\",\"ModuleName\":\"Calender\",\"AppName\":\"UserProfile\",\"TableName\":\"TestTbl\",\"IconRef\":\"fa fa-calendar\",\"DisplayOrder\":\"2\",\"CreatedBy\":\"admin\"}',999),(508,'admin','2020-01-23 11:49:33','UPDATE','dh_modules',37,'::1','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"},{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"},{\"Field\":\"ExcludePermsList\",\"Ovalue\":\"N\",\"Nvalue\":\"Y\"},{\"Field\":\"ExemptRole\",\"Ovalue\":\"N\",\"Nvalue\":\"Y\"},{\"Field\":\"EnableCreation\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"},{\"Field\":\"DeleteItems\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"},{\"Field\":\"EnablePreview\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"}]',0),(509,'admin','2020-02-20 07:24:48','UPDATE','assemblycommittees',25,'::1','[{\"Field\":\"ClerkResponsible\",\"Ovalue\":\"fmkarumba@kiambuassembly.go.ke\",\"Nvalue\":\"kevin\"}]',9),(510,'kevin','2020-02-20 07:30:10','UPDATE','dh_modules',15,'::1','[{\"Field\":\"EnableCreation\",\"Ovalue\":\"N\",\"Nvalue\":\"Y\"},{\"Field\":\"DeleteItems\",\"Ovalue\":\"N\",\"Nvalue\":\"Y\"}]',0),(511,'kevin','2020-02-20 07:30:25','INSERT','allowancesrate',5,'::1','{\"AllowanceRank\":\"Test\",\"AllowanceAmount\":\"3000\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2020-02-20 10:30:25\"}',15),(512,'kevin','2020-02-20 07:30:59','Delete','allowancesrate',5,'::1','{\"S_ROWID\":\"5\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2020-02-20 10:30:25\",\"ModifiedBy\":null,\"DateModified\":\"2020-02-20 10:30:25\",\"AllowanceRank\":\"Test\",\"AllowanceAmount\":\"3000\"}',15),(513,'kevin','2020-02-20 07:31:07','UPDATE','dh_modules',15,'::1','[{\"Field\":\"EnableCreation\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"},{\"Field\":\"DeleteItems\",\"Ovalue\":\"Y\",\"Nvalue\":\"N\"}]',0),(514,'kevin','2020-02-20 07:47:19','INSERT','committeemeetings',154,'::1','{\"Agenda\":\"Test Meeting\",\"MeetingDate\":\"2020-02-21\",\"CommitteeID\":\"25\",\"FromTime\":\"11:00:00\",\"ToTime\":\"11:00:00\",\"Venue\":\"Committe Room 2\",\"OtherVenue\":\"\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2020-02-20 10:47:19\"}',16),(515,'kevin','2020-02-20 07:57:02','INSERT','scheduleofmeetings',34,'::1','{\"MeetingDay\":\"Thursday\",\"CommitteeID\":\"25\",\"FromTime\":\"11:00:00\",\"ToTime\":\"12:00:00\",\"Venue\":\"Committe Room 2\",\"OtherVenue\":\"\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2020-02-20 10:57:02\"}',26),(516,'kevin','2020-02-20 07:57:43','INSERT','scheduleofmeetings',35,'::1','{\"MeetingDay\":\"Sunday\",\"CommitteeID\":\"25\",\"FromTime\":\"11:00:00\",\"ToTime\":\"11:00:00\",\"Venue\":\"Committe Room 1\",\"OtherVenue\":\"\",\"CreatedBy\":\"kevin\",\"DateCreated\":\"2020-02-20 10:57:43\"}',26),(517,'admin','2020-02-20 14:14:46','INSERT','dh_users',204,'::1','{\"loginid\":\"test\",\"Fullname\":\"Test demo\",\"Phone\":\"38883\",\"Email\":\"info@intellihub.co.ke\",\"Position\":\"2232\",\"PhoneExt\":\"322\",\"user_type\":\"Clerk\",\"pswd\":\"127160bb26b235955205a8458c04ecfe\",\"UserStatus\":\"Active\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2020-02-20 17:14:46\"}',2),(518,'admin','2020-02-20 14:14:57','Delete','dh_users',204,'::1','{\"S_ROWID\":\"204\",\"loginid\":\"test\",\"Fullname\":\"Test demo\",\"Phone\":\"38883\",\"Email\":\"info@intellihub.co.ke\",\"Position\":\"2232\",\"PhoneExt\":\"322\",\"pswd\":\"127160bb26b235955205a8458c04ecfe\",\"user_type\":\"Clerk\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2020-02-20 17:14:46\",\"shift\":\"Day\",\"Department\":null,\"Division\":null,\"ProfileImage\":null,\"UserStatus\":\"Active\",\"DeActivatedBy\":null,\"DateDeActivated\":null,\"DeActivateReason\":null,\"ModifiedBy\":null,\"DateModified\":null}',2),(519,'admin','2020-03-03 09:47:41','UPDATE','committeemeetings',39,'::1','[{\"Field\":\"Agenda\",\"Ovalue\":null,\"Nvalue\":\"Test Demo\"},{\"Field\":\"FromTime\",\"Ovalue\":\"11:00:00\",\"Nvalue\":\"11:00 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"12:30:00\",\"Nvalue\":\"12:30 AM\"},{\"Field\":\"Venue\",\"Ovalue\":\"Committee Room 3\",\"Nvalue\":\"Assembly  Chamber\"}]',16),(520,'admin','2020-03-03 09:57:08','INSERT','dh_columns',122,'::1','{\"TblName\":\"notifications\",\"DisplayName\":\"CommitteeID\",\"FieldName\":\"CommitteeID\",\"DataType\":\"I\",\"CreatedBy\":\"admin\"}',999),(521,'admin','2020-03-03 10:00:41','INSERT','dh_columns',123,'::1','{\"TblName\":\"notificationlist\",\"DisplayName\":\"NTargetedTo\",\"FieldName\":\"NTargetedTo\",\"DataType\":\"N\",\"CreatedBy\":\"admin\"}',999),(522,'admin','2020-03-03 10:12:38','INSERT','dh_modules',38,'::1','{\"ModuleCode\":\"CommitteeNotifications_38\",\"ModuleName\":\"Committee Notifications\",\"AppName\":\"CommitteeMngt\",\"TableName\":\"vw_notifications\",\"IconRef\":\"fa fa-align-left\",\"DisplayOrder\":\"6\",\"CreatedBy\":\"admin\"}',999),(523,'admin','2020-03-03 10:12:56','UPDATE','dh_modules',38,'::1','[{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"}]',0),(524,'admin','2020-03-03 12:09:42','INSERT','listitems',1488,'::1','{\"ItemType\":\"NotificationType\",\"ItemCode\":\"General\",\"ItemDescription\":\"General\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2020-03-03 15:09:42\"}',0),(525,'admin','2020-03-03 12:10:03','INSERT','listitems',1489,'::1','{\"ItemType\":\"NotificationType\",\"ItemCode\":\"Committee Meeting\",\"ItemDescription\":\"Committee Meeting\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2020-03-03 15:10:03\"}',0),(526,'admin','2020-03-03 12:10:24','INSERT','listitems',1490,'::1','{\"ItemType\":\"NotificationType\",\"ItemCode\":\"Special Sitting\",\"ItemDescription\":\"Special Sitting\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2020-03-03 15:10:23\"}',0),(527,'admin','2020-03-04 05:31:43','UPDATE','committeemeetings',21,'::1','[{\"Field\":\"Agenda\",\"Ovalue\":null,\"Nvalue\":\"Test demo\"},{\"Field\":\"FromTime\",\"Ovalue\":\"11:30:00\",\"Nvalue\":\"11:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"13:00:00\",\"Nvalue\":\"1:00 PM\"},{\"Field\":\"Venue\",\"Ovalue\":\"Committee Room 3\",\"Nvalue\":\"Committe Room 1\"}]',16),(528,'admin','2020-03-04 06:06:48','UPDATE','committeemeetings',21,'::1','[{\"Field\":\"Agenda\",\"Ovalue\":\"Test demo\",\"Nvalue\":\"Discussion on the ongoing BBi\"},{\"Field\":\"FromTime\",\"Ovalue\":\"11:30:00\",\"Nvalue\":\"11:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"13:00:00\",\"Nvalue\":\"1:00 PM\"}]',16),(529,'admin','2020-03-04 06:06:50','UPDATE','committeemeetings',21,'::1','[{\"Field\":\"FromTime\",\"Ovalue\":\"11:30:00\",\"Nvalue\":\"11:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"13:00:00\",\"Nvalue\":\"1:00 PM\"}]',16),(530,'admin','2020-03-04 06:12:48','UPDATE','committeemeetings',66,'::1','[{\"Field\":\"Agenda\",\"Ovalue\":null,\"Nvalue\":\"Committee Meeting Committee MeetingCommittee MeetingCommittee Meeting\"},{\"Field\":\"FromTime\",\"Ovalue\":\"00:30:00\",\"Nvalue\":\"12:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"14:00:00\",\"Nvalue\":\"2:00 PM\"},{\"Field\":\"Venue\",\"Ovalue\":\"Committee Room 2\",\"Nvalue\":\"Committe Room 1\"}]',16),(531,'admin','2020-03-04 07:55:52','UPDATE','committeemeetings',23,'::1','[{\"Field\":\"Agenda\",\"Ovalue\":null,\"Nvalue\":\"The end is near\"},{\"Field\":\"FromTime\",\"Ovalue\":\"13:00:00\",\"Nvalue\":\"1:00 PM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"14:30:00\",\"Nvalue\":\"2:30 PM\"},{\"Field\":\"Venue\",\"Ovalue\":\"Committee Room 1\",\"Nvalue\":\"Committe Room 1\"}]',16),(532,'admin','2020-03-04 07:58:39','UPDATE','committeemeetings',7,'::1','[{\"Field\":\"Agenda\",\"Ovalue\":null,\"Nvalue\":\"Investment and Population\"},{\"Field\":\"FromTime\",\"Ovalue\":\"11:30:00\",\"Nvalue\":\"11:30 AM\"},{\"Field\":\"ToTime\",\"Ovalue\":\"13:00:00\",\"Nvalue\":\"1:00 PM\"},{\"Field\":\"Venue\",\"Ovalue\":\"Committee Room 3\",\"Nvalue\":\"Assembly  Chamber\"}]',16),(533,'admin','2020-03-05 09:21:48','INSERT','dh_columns',124,'::1','{\"TblName\":\"committemembers\",\"DisplayName\":\"BiometricID\",\"FieldName\":\"BiometricID\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(534,'admin','2020-03-05 09:26:02','INSERT','dh_columns',125,'::1','{\"TblName\":\"committemembers\",\"DisplayName\":\"BiometricName\",\"FieldName\":\"BiometricName\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(535,'admin','2020-03-05 09:29:48','INSERT','dh_columns',126,'::1','{\"TblName\":\"committemembers\",\"DisplayName\":\"BiometricID\",\"FieldName\":\"BiometricID\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(536,'admin','2020-05-23 14:05:47','INSERT','committemembers',114,'41.80.251.145','{\"IDNo\":\"demo123\",\"PersonnelNo\":\"123demo\",\"FullName\":\"John Doe \",\"PhoneNo\":\"254712364528\",\"Email\":\"vokenp@gmail.com\",\"Designation\":\"Special Elected\",\"Ward\":\"SPECIALLY ELECTED\",\"Pwsd_PFNo\":\"688854ab3f1170971a3874c77e44b4b5\",\"Pwsd_IDNo\":\"457f90372aa8516eb157ad2336b92389\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2020-05-23 17:05:47\"}',11),(537,'admin','2020-05-23 14:21:26','UPDATE','assemblycommittees',25,'196.216.70.30','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Speaker\\u00e2\\u20ac\\u2122s committee\",\"Nvalue\":\"Speaker&apos;s committee\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Speaker\\u00e2\\u20ac\\u2122s Committee\",\"Nvalue\":\"Speaker&apos;s Committee\"}]',9),(538,'admin','2020-05-25 10:51:16','UPDATE','assemblycommittees',18,'196.216.70.30','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Committtee on member\\u00e2\\u20ac\\u2122s services, facilities and welfare\",\"Nvalue\":\"Committtee on members services, facilities and welfare\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Committtee On Member\\u00e2\\u20ac\\u2122s Services, Facilities And Welfare\",\"Nvalue\":\"Committtee On Members Services, Facilities And Welfare\"}]',9),(539,'admin','2020-05-25 10:51:32','UPDATE','assemblycommittees',18,'196.216.70.30','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Committtee on members services, facilities and welfare\",\"Nvalue\":\"Committee on members services, facilities and welfare\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Committtee On Members Services, Facilities And Welfare\",\"Nvalue\":\"Committee On Members Services, Facilities And Welfare\"}]',9),(540,'admin','2020-05-25 10:54:17','UPDATE','assemblycommittees',25,'196.216.70.30','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Speaker&apos;s committee\",\"Nvalue\":\"Speaker&quot;&apos;&quot;s committee\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Speaker&apos;s Committee\",\"Nvalue\":\"Speaker&quot;&apos;&quot;s Committee\"}]',9),(541,'admin','2020-05-25 10:55:20','UPDATE','assemblycommittees',25,'196.216.70.30','[{\"Field\":\"CommitteeName\",\"Ovalue\":\"Speaker&quot;&apos;&quot;s committee\",\"Nvalue\":\"Speakers committee\"},{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Speaker&quot;&apos;&quot;s Committee\",\"Nvalue\":\"Speakers Committee\"}]',9),(542,'admin','2021-01-20 17:32:08','INSERT','dh_applications',13,'102.69.228.102','{\"AppCode\":\"Conferencing\",\"ApplicationName\":\"Conferencing\",\"IconRef\":\"fa fa-video-camera\",\"DisplayOrder\":\"7\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-01-20 20:32:08\"}',0),(543,'admin','2021-01-20 17:33:41','INSERT','dh_columns',127,'102.69.228.102','{\"TblName\":\"conferenceroom\",\"DisplayName\":\"RoomName\",\"FieldName\":\"name\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(544,'admin','2021-01-20 17:33:54','INSERT','dh_columns',128,'102.69.228.102','{\"TblName\":\"conferenceroom\",\"DisplayName\":\"Room Link\",\"FieldName\":\"link\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(545,'admin','2021-01-20 17:34:17','INSERT','dh_columns',129,'102.69.228.102','{\"TblName\":\"conferenceroom\",\"DisplayName\":\"Password\",\"FieldName\":\"Password\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(546,'admin','2021-01-20 17:34:46','INSERT','dh_columns',130,'102.69.228.102','{\"TblName\":\"conferenceroom\",\"DisplayName\":\"Room Status\",\"FieldName\":\"Status\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(547,'admin','2021-01-20 17:35:15','INSERT','dh_columns',131,'102.69.228.102','{\"TblName\":\"conferenceroom\",\"DisplayName\":\"Started On\",\"FieldName\":\"started_on\",\"DataType\":\"T\",\"CreatedBy\":\"admin\"}',999),(548,'admin','2021-01-20 17:35:35','INSERT','dh_columns',132,'102.69.228.102','{\"TblName\":\"conferenceroom\",\"DisplayName\":\"Schedule Date\",\"FieldName\":\"ScheduleDate\",\"DataType\":\"T\",\"CreatedBy\":\"admin\"}',999),(549,'admin','2021-01-20 17:36:04','INSERT','dh_columns',133,'102.69.228.102','{\"TblName\":\"conferenceroom\",\"DisplayName\":\"Ended On\",\"FieldName\":\"ended_on\",\"DataType\":\"T\",\"CreatedBy\":\"admin\"}',999),(550,'admin','2021-01-20 17:37:56','INSERT','dh_columns',134,'102.69.228.102','{\"TblName\":\"conferenceparticipants\",\"DisplayName\":\"User Id\",\"FieldName\":\"user_id\",\"DataType\":\"I\",\"CreatedBy\":\"admin\"}',999),(551,'admin','2021-01-20 17:38:22','INSERT','dh_columns',135,'102.69.228.102','{\"TblName\":\"conferenceparticipants\",\"DisplayName\":\"Room Id\",\"FieldName\":\"conferenceroom_id\",\"DataType\":\"I\",\"CreatedBy\":\"admin\"}',999),(552,'admin','2021-01-20 17:38:45','INSERT','dh_columns',136,'102.69.228.102','{\"TblName\":\"conferenceparticipants\",\"DisplayName\":\"Peer\",\"FieldName\":\"peerid\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(553,'admin','2021-01-20 17:39:15','INSERT','dh_columns',137,'102.69.228.102','{\"TblName\":\"conferenceparticipants\",\"DisplayName\":\"User Status\",\"FieldName\":\"Status\",\"DataType\":\"C\",\"CreatedBy\":\"admin\"}',999),(554,'admin','2021-01-20 17:41:16','INSERT','dh_columns',138,'102.69.228.102','{\"TblName\":\"conferenceinvites\",\"DisplayName\":\"Room Id\",\"FieldName\":\"conferenceroom_id\",\"DataType\":\"I\",\"CreatedBy\":\"admin\"}',999),(555,'admin','2021-01-20 17:41:38','INSERT','dh_columns',139,'102.69.228.102','{\"TblName\":\"conferenceinvites\",\"DisplayName\":\"User Id\",\"FieldName\":\"user_id\",\"DataType\":\"I\",\"CreatedBy\":\"admin\"}',999),(556,'admin','2021-01-20 17:42:53','INSERT','dh_modules',39,'102.69.228.102','{\"ModuleCode\":\"Room_39\",\"ModuleName\":\"Room\",\"AppName\":\"Conferencing\",\"TableName\":\"conferenceroom\",\"IconRef\":\"fa fa-file-video\",\"DisplayOrder\":\"1\",\"CreatedBy\":\"admin\"}',999),(557,'admin','2021-01-20 17:43:06','UPDATE','dh_modules',39,'102.69.228.102','[{\"Field\":\"ModuleType\",\"Ovalue\":\"CRUD\",\"Nvalue\":\"ReportView\"},{\"Field\":\"ModuleListView\",\"Ovalue\":\"Default\",\"Nvalue\":\"Custom\"}]',0),(558,'admin','2021-01-20 17:47:08','INSERT','conferenceroom',1,'102.69.228.102','{\"name\":\"Test Room\",\"link\":\"12345\",\"Password\":\"password\",\"ScheduleDate\":\"1970-01-01 00:00:00\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-01-20 20:47:08\"}',39),(559,'admin','2021-01-20 17:55:12','INSERT','dh_modules',40,'102.69.228.102','{\"ModuleCode\":\"Invites_40\",\"ModuleName\":\"Invites\",\"AppName\":\"Conferencing\",\"TableName\":\"conferenceinvites\",\"IconRef\":\"fa fa-gift\",\"DisplayOrder\":\"2\",\"CreatedBy\":\"admin\"}',999),(560,'admin','2021-01-24 06:01:53','INSERT','conferenceroom',2,'105.163.30.99','{\"name\":\"Test collections\",\"link\":\"346\",\"Password\":\"kenya\",\"ScheduleDate\":\"1970-01-01 00:00:00\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-01-24 09:01:53\"}',39),(561,'41','2021-03-23 02:46:25','PasswordReset','users',41,'196.201.218.127','{\"PasswordReset\":\"ec061a1b8c96ecb76dcbd127ea29b9c7\"}',6),(562,'admin','2021-08-10 07:27:11','Delete','listitems',1271,'127.0.0.1','{\"S_ROWID\":\"1271\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KIAMWANGI\",\"ItemDescription\":\"KIAMWANGI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(563,'admin','2021-08-10 07:28:33','Delete','listitems',1298,'127.0.0.1','{\"S_ROWID\":\"1298\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"GITHIGA\",\"ItemDescription\":\"GITHIGA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(564,'admin','2021-08-10 07:28:42','Delete','listitems',1432,'127.0.0.1','{\"S_ROWID\":\"1432\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 09:21:52\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NYATHUNA\",\"ItemDescription\":\"NYATHUNA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(565,'admin','2021-08-10 07:28:47','Delete','listitems',1429,'127.0.0.1','{\"S_ROWID\":\"1429\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 09:13:52\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"MANGU\",\"ItemDescription\":\"MANGU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(566,'admin','2021-08-10 07:28:53','Delete','listitems',1317,'127.0.0.1','{\"S_ROWID\":\"1317\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NACHU\",\"ItemDescription\":\"NACHU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(567,'admin','2021-08-10 07:28:58','Delete','listitems',1294,'127.0.0.1','{\"S_ROWID\":\"1294\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KIUU\",\"ItemDescription\":\"KIUU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(568,'admin','2021-08-10 07:29:01','Delete','listitems',1351,'127.0.0.1','{\"S_ROWID\":\"1351\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-21 12:27:25\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KIAMBU TOWNSHIP\",\"ItemDescription\":\"KIAMBU TOWNSHIP\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(569,'admin','2021-08-10 07:29:08','Delete','listitems',1330,'127.0.0.1','{\"S_ROWID\":\"1330\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"LARI\\/KIRENGA\",\"ItemDescription\":\"LARI\\/KIRENGA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(570,'admin','2021-08-10 07:29:13','Delete','listitems',1428,'127.0.0.1','{\"S_ROWID\":\"1428\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 09:13:41\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"TINGANGA\",\"ItemDescription\":\"TINGANGA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(571,'admin','2021-08-10 07:29:19','Delete','listitems',1329,'127.0.0.1','{\"S_ROWID\":\"1329\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KAMBURU\",\"ItemDescription\":\"KAMBURU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(572,'admin','2021-08-10 07:29:24','Delete','listitems',1328,'127.0.0.1','{\"S_ROWID\":\"1328\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NYANDUMA\",\"ItemDescription\":\"NYANDUMA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(573,'admin','2021-08-10 07:29:31','Delete','listitems',1310,'127.0.0.1','{\"S_ROWID\":\"1310\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KIHARA\",\"ItemDescription\":\"KIHARA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(574,'admin','2021-08-10 07:29:35','Delete','listitems',1326,'127.0.0.1','{\"S_ROWID\":\"1326\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KINALE\",\"ItemDescription\":\"KINALE\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(575,'admin','2021-08-10 07:29:39','Delete','listitems',1327,'127.0.0.1','{\"S_ROWID\":\"1327\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KIJABE\",\"ItemDescription\":\"KIJABE\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(576,'admin','2021-08-10 07:29:44','Delete','listitems',1325,'127.0.0.1','{\"S_ROWID\":\"1325\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NGECHA TIGONI\",\"ItemDescription\":\"NGECHA TIGONI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(577,'admin','2021-08-10 07:29:48','Delete','listitems',1324,'127.0.0.1','{\"S_ROWID\":\"1324\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"LIMURU EAST\",\"ItemDescription\":\"LIMURU EAST\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(578,'admin','2021-08-10 07:29:52','Delete','listitems',1322,'127.0.0.1','{\"S_ROWID\":\"1322\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"LIMURU CENTRAL\",\"ItemDescription\":\"LIMURU CENTRAL\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(579,'admin','2021-08-10 07:29:56','Delete','listitems',1321,'127.0.0.1','{\"S_ROWID\":\"1321\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"BIBIRIONI\",\"ItemDescription\":\"BIBIRIONI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(580,'admin','2021-08-10 07:29:59','Delete','listitems',1320,'127.0.0.1','{\"S_ROWID\":\"1320\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KINOO\",\"ItemDescription\":\"KINOO\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(581,'admin','2021-08-10 07:30:03','Delete','listitems',1319,'127.0.0.1','{\"S_ROWID\":\"1319\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KIKUYU\",\"ItemDescription\":\"KIKUYU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(582,'admin','2021-08-10 07:30:06','Delete','listitems',1318,'127.0.0.1','{\"S_ROWID\":\"1318\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"SIGONA\",\"ItemDescription\":\"SIGONA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(583,'admin','2021-08-10 07:30:09','Delete','listitems',1316,'127.0.0.1','{\"S_ROWID\":\"1316\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KARAI\",\"ItemDescription\":\"KARAI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(584,'admin','2021-08-10 07:30:12','Delete','listitems',1315,'127.0.0.1','{\"S_ROWID\":\"1315\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"UTHIRU\",\"ItemDescription\":\"UTHIRU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(585,'admin','2021-08-10 07:30:17','Delete','listitems',1314,'127.0.0.1','{\"S_ROWID\":\"1314\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KABETE\",\"ItemDescription\":\"KABETE\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(586,'admin','2021-08-10 07:30:22','Delete','listitems',1312,'127.0.0.1','{\"S_ROWID\":\"1312\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"MUGUGA\",\"ItemDescription\":\"MUGUGA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(587,'admin','2021-08-10 07:30:25','Delete','listitems',1311,'127.0.0.1','{\"S_ROWID\":\"1311\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"GITARU\",\"ItemDescription\":\"GITARU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(588,'admin','2021-08-10 07:30:28','Delete','listitems',1309,'127.0.0.1','{\"S_ROWID\":\"1309\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"MUCHATHA\",\"ItemDescription\":\"MUCHATHA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(589,'admin','2021-08-10 07:30:32','Delete','listitems',1308,'127.0.0.1','{\"S_ROWID\":\"1308\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NDENDERU\",\"ItemDescription\":\"NDENDERU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(590,'admin','2021-08-10 07:30:34','Delete','listitems',1307,'127.0.0.1','{\"S_ROWID\":\"1307\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KARURI\",\"ItemDescription\":\"KARURI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(591,'admin','2021-08-10 07:30:37','Delete','listitems',1306,'127.0.0.1','{\"S_ROWID\":\"1306\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"CIANDA\",\"ItemDescription\":\"CIANDA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(592,'admin','2021-08-10 07:30:40','Delete','listitems',1304,'127.0.0.1','{\"S_ROWID\":\"1304\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"RIABAI\",\"ItemDescription\":\"RIABAI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(593,'admin','2021-08-10 07:30:44','Delete','listitems',1303,'127.0.0.1','{\"S_ROWID\":\"1303\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NDUMBERI\",\"ItemDescription\":\"NDUMBERI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(594,'admin','2021-08-10 07:30:47','Delete','listitems',1301,'127.0.0.1','{\"S_ROWID\":\"1301\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KOMOTHAI\",\"ItemDescription\":\"KOMOTHAI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(595,'admin','2021-08-10 07:30:51','Delete','listitems',1300,'127.0.0.1','{\"S_ROWID\":\"1300\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NGEWA\",\"ItemDescription\":\"NGEWA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(596,'admin','2021-08-10 07:30:54','Delete','listitems',1299,'127.0.0.1','{\"S_ROWID\":\"1299\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"IKINU\",\"ItemDescription\":\"IKINU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(597,'admin','2021-08-10 07:30:56','Delete','listitems',1297,'127.0.0.1','{\"S_ROWID\":\"1297\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"GITHUNGURI\",\"ItemDescription\":\"GITHUNGURI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(598,'admin','2021-08-10 07:30:59','Delete','listitems',1296,'127.0.0.1','{\"S_ROWID\":\"1296\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"MWIHOKO\",\"ItemDescription\":\"MWIHOKO\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(599,'admin','2021-08-10 07:31:03','Delete','listitems',1295,'127.0.0.1','{\"S_ROWID\":\"1295\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"MWIKI\",\"ItemDescription\":\"MWIKI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(600,'admin','2021-08-10 07:31:06','Delete','listitems',1293,'127.0.0.1','{\"S_ROWID\":\"1293\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KAHAWA WENDANI\",\"ItemDescription\":\"KAHAWA WENDANI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(601,'admin','2021-08-10 07:31:10','Delete','listitems',1292,'127.0.0.1','{\"S_ROWID\":\"1292\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KAHAWA\\/SUKARI\",\"ItemDescription\":\"KAHAWA\\/SUKARI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(602,'admin','2021-08-10 07:31:12','Delete','listitems',1291,'127.0.0.1','{\"S_ROWID\":\"1291\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"GATONGORA\",\"ItemDescription\":\"GATONGORA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(603,'admin','2021-08-10 07:31:15','Delete','listitems',1290,'127.0.0.1','{\"S_ROWID\":\"1290\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"BIASHARA\",\"ItemDescription\":\"BIASHARA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(604,'admin','2021-08-10 07:31:18','Delete','listitems',1289,'127.0.0.1','{\"S_ROWID\":\"1289\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"GITOTHUA\",\"ItemDescription\":\"GITOTHUA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(605,'admin','2021-08-10 07:31:21','Delete','listitems',1288,'127.0.0.1','{\"S_ROWID\":\"1288\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NGOLIBA\",\"ItemDescription\":\"NGOLIBA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(606,'admin','2021-08-10 07:31:24','Delete','listitems',1287,'127.0.0.1','{\"S_ROWID\":\"1287\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"GATUANYAGA\",\"ItemDescription\":\"GATUANYAGA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(607,'admin','2021-08-10 07:31:28','Delete','listitems',1286,'127.0.0.1','{\"S_ROWID\":\"1286\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"HOSPITAL\",\"ItemDescription\":\"HOSPITAL\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(608,'admin','2021-08-10 07:31:31','Delete','listitems',1285,'127.0.0.1','{\"S_ROWID\":\"1285\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KAMENU\",\"ItemDescription\":\"KAMENU\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(609,'admin','2021-08-10 07:31:34','Delete','listitems',1283,'127.0.0.1','{\"S_ROWID\":\"1283\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KALIMONI\",\"ItemDescription\":\"KALIMONI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(610,'admin','2021-08-10 07:31:38','Delete','listitems',1282,'127.0.0.1','{\"S_ROWID\":\"1282\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"WITEITHIE\",\"ItemDescription\":\"WITEITHIE\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(611,'admin','2021-08-10 07:31:41','Delete','listitems',1281,'127.0.0.1','{\"S_ROWID\":\"1281\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"JUJA\",\"ItemDescription\":\"JUJA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(612,'admin','2021-08-10 07:31:44','Delete','listitems',1280,'127.0.0.1','{\"S_ROWID\":\"1280\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"THETA\",\"ItemDescription\":\"THETA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(613,'admin','2021-08-10 07:31:47','Delete','listitems',1279,'127.0.0.1','{\"S_ROWID\":\"1279\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"MURERA\",\"ItemDescription\":\"MURERA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(614,'admin','2021-08-10 07:31:51','Delete','listitems',1277,'127.0.0.1','{\"S_ROWID\":\"1277\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"CHANIA\",\"ItemDescription\":\"CHANIA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(615,'admin','2021-08-10 07:31:54','Delete','listitems',1276,'127.0.0.1','{\"S_ROWID\":\"1276\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"GITHOBOKONI\",\"ItemDescription\":\"GITHOBOKONI\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(616,'admin','2021-08-10 07:31:57','Delete','listitems',1275,'127.0.0.1','{\"S_ROWID\":\"1275\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"GITUAMBA\",\"ItemDescription\":\"GITUAMBA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(617,'admin','2021-08-10 07:32:00','Delete','listitems',1274,'127.0.0.1','{\"S_ROWID\":\"1274\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NGENDA\",\"ItemDescription\":\"NGENDA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(618,'admin','2021-08-10 07:32:05','Delete','listitems',1273,'127.0.0.1','{\"S_ROWID\":\"1273\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NDARUGO\",\"ItemDescription\":\"NDARUGO\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(619,'admin','2021-08-10 07:32:08','Delete','listitems',1272,'127.0.0.1','{\"S_ROWID\":\"1272\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"KIGANJO\",\"ItemDescription\":\"KIGANJO\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(620,'admin','2021-08-10 07:32:13','Delete','listitems',1323,'127.0.0.1','{\"S_ROWID\":\"1323\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2019-06-20 01:58:18\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"NDEIYA\",\"ItemDescription\":\"NDEIYA\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(621,'admin','2021-08-10 07:32:17','Delete','listitems',1431,'127.0.0.1','{\"S_ROWID\":\"1431\",\"CreatedBy\":\"njuguna\",\"DateCreated\":\"2019-07-31 09:18:46\",\"ModifiedBy\":\"\",\"DateModified\":null,\"ItemCode\":\"THIKA TOWNSHIP\",\"ItemDescription\":\"THIKA TOWNSHIP\",\"ItemType\":\"Wards022\",\"ParentID\":\"0\"}',29),(622,'admin','2021-08-10 07:39:50','INSERT','listitems',1493,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"SIAYA TOWNSHIP\",\"ItemDescription\":\"SIAYA TOWNSHIP\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:39:50\"}',0),(623,'admin','2021-08-10 07:40:02','INSERT','listitems',1494,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"NORTH ALEGO\",\"ItemDescription\":\"NORTH ALEGO\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:40:02\"}',0),(624,'admin','2021-08-10 07:40:11','INSERT','listitems',1495,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"CENTRAL ALEGO\",\"ItemDescription\":\"CENTRAL ALEGO\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:40:11\"}',0),(625,'admin','2021-08-10 07:40:19','INSERT','listitems',1496,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"WEST ALEGO\",\"ItemDescription\":\"WEST ALEGO\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:40:19\"}',0),(626,'admin','2021-08-10 07:40:26','INSERT','listitems',1497,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"USONGA\",\"ItemDescription\":\"USONGA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:40:26\"}',0),(627,'admin','2021-08-10 07:40:39','INSERT','listitems',1498,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"WEST GEM\",\"ItemDescription\":\"WEST GEM\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:40:39\"}',0),(628,'admin','2021-08-10 07:40:49','INSERT','listitems',1499,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"CENTRAL GEM\",\"ItemDescription\":\"CENTRAL GEM\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:40:49\"}',0),(629,'admin','2021-08-10 07:40:58','INSERT','listitems',1500,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"SOUTH EAST ALEGO\",\"ItemDescription\":\"SOUTH EAST ALEGO\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:40:58\"}',0),(630,'admin','2021-08-10 07:41:05','INSERT','listitems',1501,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"NORTH GEM\",\"ItemDescription\":\"NORTH GEM\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:41:05\"}',0),(631,'admin','2021-08-10 07:41:13','INSERT','listitems',1502,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"EAST GEM\",\"ItemDescription\":\"EAST GEM\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:41:13\"}',0),(632,'admin','2021-08-10 07:41:21','INSERT','listitems',1503,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"YALA TOWNSHIP\",\"ItemDescription\":\"YALA TOWNSHIP\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:41:21\"}',0),(633,'admin','2021-08-10 07:41:31','INSERT','listitems',1504,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"SOUTH GEM\",\"ItemDescription\":\"SOUTH GEM\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:41:31\"}',0),(634,'admin','2021-08-10 07:41:38','INSERT','listitems',1505,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"UGUNJA\",\"ItemDescription\":\"UGUNJA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:41:38\"}',0),(635,'admin','2021-08-10 07:41:47','INSERT','listitems',1506,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"SIDINDI\",\"ItemDescription\":\"SIDINDI\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:41:47\"}',0),(636,'admin','2021-08-10 07:41:54','INSERT','listitems',1507,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"SIGOMRE\",\"ItemDescription\":\"SIGOMRE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:41:54\"}',0),(637,'admin','2021-08-10 07:42:03','INSERT','listitems',1508,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"EAST UGENYA\",\"ItemDescription\":\"EAST UGENYA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:42:03\"}',0),(638,'admin','2021-08-10 07:42:11','INSERT','listitems',1509,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"WEST UGENYA\",\"ItemDescription\":\"WEST UGENYA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:42:11\"}',0),(639,'admin','2021-08-10 07:42:20','INSERT','listitems',1510,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"UKWALA\",\"ItemDescription\":\"UKWALA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:42:20\"}',0),(640,'admin','2021-08-10 07:42:31','INSERT','listitems',1511,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"NORTH UGENYA\",\"ItemDescription\":\"NORTH UGENYA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:42:31\"}',0),(641,'admin','2021-08-10 07:42:38','INSERT','listitems',1512,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"SOUTH UYOMA\",\"ItemDescription\":\"SOUTH UYOMA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:42:38\"}',0),(642,'admin','2021-08-10 07:42:46','INSERT','listitems',1513,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"WEST UYOMA\",\"ItemDescription\":\"WEST UYOMA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:42:46\"}',0),(643,'admin','2021-08-10 07:42:54','INSERT','listitems',1514,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"NORTH UYOMA\",\"ItemDescription\":\"NORTH UYOMA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:42:54\"}',0),(644,'admin','2021-08-10 07:43:02','INSERT','listitems',1515,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"EAST ASEMBO\",\"ItemDescription\":\"EAST ASEMBO\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:43:02\"}',0),(645,'admin','2021-08-10 07:43:10','INSERT','listitems',1516,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"WEST ASEMBO\",\"ItemDescription\":\"WEST ASEMBO\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:43:10\"}',0),(646,'admin','2021-08-10 07:43:19','INSERT','listitems',1517,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"YIMBO EAST\",\"ItemDescription\":\"YIMBO EAST\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:43:19\"}',0),(647,'admin','2021-08-10 07:43:26','INSERT','listitems',1518,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"WEST YIMBO\",\"ItemDescription\":\"WEST YIMBO\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:43:26\"}',0),(648,'admin','2021-08-10 07:43:35','INSERT','listitems',1519,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"NORTH SAKWA\",\"ItemDescription\":\"NORTH SAKWA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:43:35\"}',0),(649,'admin','2021-08-10 07:43:44','INSERT','listitems',1520,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"CENTAL SAKWA\",\"ItemDescription\":\"CENTAL SAKWA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:43:43\"}',0),(650,'admin','2021-08-10 07:43:52','INSERT','listitems',1521,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"SOUTH SAKWA\",\"ItemDescription\":\"SOUTH SAKWA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:43:52\"}',0),(651,'admin','2021-08-10 07:44:02','INSERT','listitems',1522,'127.0.0.1','{\"ItemType\":\"Wards041\",\"ItemCode\":\"WEST SAKWA\",\"ItemDescription\":\"WEST SAKWA\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:44:02\"}',0),(652,'admin','2021-08-10 07:58:28','INSERT','assemblycommittees',1,'127.0.0.1','{\"CommitteeName\":\"Budget and Appropriations\",\"CommitteeDescription\":\"Budget and Appropriations\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SECTORAL COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:58:28\"}',9),(653,'admin','2021-08-10 07:59:11','UPDATE','assemblycommittees',1,'127.0.0.1','[{\"Field\":\"CommitteeDescription\",\"Ovalue\":\"Budget and Appropriations\",\"Nvalue\":\"Matters relating to coordination, control and monitoring of the County budget, discuss and review the estimates and make recommendations to the County Assembly; examine the County Fiscal Strategy Paper presented to the County Assembly; examine Bills related to the national budget, including Appropriations Bills; and evaluate tax estimates, economic and budgetary policies and programs with direct budget outlays.\"}]',9),(654,'admin','2021-08-10 07:59:54','INSERT','assemblycommittees',2,'127.0.0.1','{\"CommitteeName\":\"Tourism, wildlife conservation and Information\",\"CommitteeDescription\":\"Matters related to local tourism, county parks, beaches and recreation facilities including hotels, implementation of specific national government policies on natural resources and environmental conservation, including soil and water conservation, forestry and wildlife,  control of air pollution, noise pollution and other public nuisances, and, information services.\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 10:59:54\"}',9),(655,'admin','2021-08-10 08:06:45','INSERT','assemblycommittees',3,'127.0.0.1','{\"CommitteeName\":\"Lands, Physical Planning, Surveying and Housing\",\"CommitteeDescription\":\"Matters relating to spatial planning, land administration, adjudication within the confines of the relevant legislation, urban development, markets, land survey and mapping; boundaries and fencing; housing and electricity and gas reticulation and energy regulation including working with national institutions on land and physical planning.\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:06:45\"}',9),(656,'admin','2021-08-10 08:08:05','INSERT','assemblycommittees',4,'127.0.0.1','{\"CommitteeName\":\"Agriculture, Livestock and Fisheries\",\"CommitteeDescription\":\"Matters related to agriculture, including crop and animal husbandry, livestock sale yards, County abattoirs, plant and animal disease control and fisheries; implementation of specific national government policies on natural resources and environmental conservation, including soil and water conservation and forestry, control of air pollution, noise pollution, other public nuisances and outdoor advertising.\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:08:05\"}',9),(657,'admin','2021-08-10 08:08:34','INSERT','assemblycommittees',5,'127.0.0.1','{\"CommitteeName\":\"Public Works, Roads, Transport and Communication\",\"CommitteeDescription\":\"Matters related to County transport, including County roads, street lighting, traffic and parking, public transport, ferries and harbors, excluding the regulation of international and national shipping and matters related thereto; County public works and services including storm water management systems in built up areas and water.\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:08:34\"}',9),(658,'admin','2021-08-10 08:09:08','INSERT','assemblycommittees',6,'127.0.0.1','{\"CommitteeName\":\"County Assembly Procedure and Rules Committee\",\"CommitteeDescription\":\"The Committee;\\r\\n\\r\\n    Shall consider and report on all matters relating to the Assembly Standing Orders.\\r\\n    May propose amendments to the Standing Orders and any such amendments shall upon approval by the County Assembly; take effect at the time appointed by the County Assembly.\\r\\n    May propose rules for the orderly and effective conduct of committee business and any such rules, shall upon approval by the County Assembly, continue in force until amended or repealed by the County Assembly.\\r\\n    Shall regulate its own meetings and its own procedure.\\r\\n    Shall, either on its own motion or as a result of a complaint made by any person, enquire into any alleged breach of the Assembly code of conduct or any conduct of any member within the Precincts of the Assembly (Other than the Chamber) which is likely to reflect adversely on the dignity or integrity of the assembly or any member thereof.\\r\\n    Shall inquire into any breach of privileges of the assembly and its members as provided for under the Kenyan National Assembly (Powers and privileges) Act, Cap 6 Laws of Kenya.\\r\\n    Shall, after inquiry as referred to above, report its findings to the Assembly together with its recommendations.\\r\\n\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:09:08\"}',9),(659,'admin','2021-08-10 08:09:50','INSERT','assemblycommittees',7,'127.0.0.1','{\"CommitteeName\":\"County Assembly Public Accounts Committee\",\"CommitteeDescription\":\"The Committee shall;\\r\\n\\r\\n    Consider Matters relating to County finance, planning and development including:\\r\\n\\r\\n    The examination of the accounts showing the appropriations of the sum voted by the County Assembly to meet the public expenditure and of such other accounts laid before the County Assembly as the Committee may think fit.\\r\\n    The examination of the reports, accounts and workings of the county public investments.\\r\\n    The examination, in the context of the autonomy and efficiency of the county public investments, whether the affairs of the county public investments, are being managed in accordance with sound financial or business principles and prudent commercial practices.\\r\\n\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:09:50\"}',9),(660,'admin','2021-08-10 08:10:15','INSERT','assemblycommittees',8,'127.0.0.1','{\"CommitteeName\":\"County Assembly Public Investments\",\"CommitteeDescription\":\"\\r\\n    The examination of the reports, accounts and workings of the County public investments;\\r\\n    examine the reports, if any, of the Auditor General on the public investments;\\r\\n    The examination, in the context of the autonomy and efficiency of the County public investments, whether the affairs of the County public investments, are being managed in accordance with sound financial or business principles and prudent commercial practices.\\r\\n\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:10:15\"}',9),(661,'admin','2021-08-10 08:10:49','INSERT','assemblycommittees',9,'127.0.0.1','{\"CommitteeName\":\"County Committee on Delegated Legislation\",\"CommitteeDescription\":\"The Committee shall \\u2013Consider all matters related to statutory instruments and if they are in accord with the provisions of the Constitution, the Act pursuant to which it is made or other relevant written law, including the following:\\r\\n\\r\\n    Contains imposition of taxation;\\r\\n    Directly or indirectly bars the jurisdiction of the Courts;\\r\\n    Involves expenditure from the County Revenue Fund or other public revenues;\\r\\n    Defective in its drafting;\\r\\n    Has administrative powers;\\r\\n    Delegates legislative powers;\\r\\n    Is an enabling legislation;\\r\\n\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:10:48\"}',9),(662,'admin','2021-08-10 08:11:15','INSERT','assemblycommittees',10,'127.0.0.1','{\"CommitteeName\":\"County Committee on Justice and Legal Affairs\",\"CommitteeDescription\":\"The Committee shall;\\r\\n\\r\\nConsider all matters related to statutory instruments and if they are in accord with the provisions of the Constitution, the Act pursuant to which it is made or other relevant written law, including the following:\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:11:15\"}',9),(663,'admin','2021-08-10 08:16:24','INSERT','assemblycommittees',11,'127.0.0.1','{\"CommitteeName\":\"Health Services\",\"CommitteeDescription\":\"Matters related to County health services in particular County health facilities and pharmacies, ambulance services, promotion of primary health care, licensing and control of undertakings that sell food to the public, veterinary services (excluding regulation of the profession), cemeteries, funeral parlours and crematoria and refuse removal, refuse dumps and solid waste disposal.\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:16:24\"}',9),(664,'admin','2021-08-10 08:16:57','INSERT','assemblycommittees',12,'127.0.0.1','{\"CommitteeName\":\"Education, Youth Affairs Gender and Social Services\",\"CommitteeDescription\":\"Matters related to pre-primary education, village polytechnics, home craft centres, childcare youth and children welfare.\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:16:57\"}',9),(665,'admin','2021-08-10 08:17:29','INSERT','assemblycommittees',13,'127.0.0.1','{\"CommitteeName\":\"Finance, Trade, Industry, Labour and Cooperative Development\",\"CommitteeDescription\":\"All matters related to Public Finance, Economic planning and social development, trade development and regulation including markets, trade licenses (excluding regulation of professions), fair trading practices, and cooperative societies and control of outdoor advertising.\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:17:29\"}',9),(666,'admin','2021-08-10 08:17:54','INSERT','assemblycommittees',14,'127.0.0.1','{\"CommitteeName\":\"Water, Environment and Natural Resources\",\"CommitteeDescription\":\"All matters related to water provision for domestic, commercial and industrial use and irrigation of farm land\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:17:54\"}',9),(667,'admin','2021-08-10 08:18:36','INSERT','assemblycommittees',15,'127.0.0.1','{\"CommitteeName\":\"Speakers Panel\",\"CommitteeDescription\":\"The Committee Shall;\\r\\n\\r\\n    Plan on presiding of Assembly sittings.\\r\\n    Review Rulings made by the Speaker or presiding member\\r\\n\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:18:36\"}',9),(668,'admin','2021-08-10 08:19:11','INSERT','assemblycommittees',16,'127.0.0.1','{\"CommitteeName\":\"County Assembly Committee on Implementation\",\"CommitteeDescription\":\"he Committee shall scrutinize the resolutions of the County Assembly(including Implementation of adopted committee reports), petitions and the undertakings given by the County Executive Committee and examine \\u2013\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:19:11\"}',9),(669,'admin','2021-08-10 08:19:59','INSERT','assemblycommittees',17,'127.0.0.1','{\"CommitteeName\":\"General oversight committee\",\"CommitteeDescription\":\"his is committee of the whole house membership that deals with matters that in the opinion of the speaker are better handled outside the other house committees.\\r\\nThe Committee shall pursuant to section 39(2)(b) of the County Governments Act 2012, invite members of the County Executive Committee to answer questions relating to the members responsibilities as raised by members of the County Assembly under Standing Order No.42 and in accordance with Standing Order No. 22\\r\\nThe committee may invites to its meeting;\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:19:59\"}',9),(670,'admin','2021-08-10 08:21:13','INSERT','assemblycommittees',18,'127.0.0.1','{\"CommitteeName\":\"County Assembly Liaison Committee\",\"CommitteeDescription\":\"The Liaison Committee shall consider reports of Committee that have not been deliberated by the County Assembly and shall report to the County Assembly on the consideration of such reports.\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"HOUSE KEEPING COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:21:13\"}',9),(671,'admin','2021-08-10 08:21:55','INSERT','assemblycommittees',19,'127.0.0.1','{\"CommitteeName\":\"Committee of Selection\",\"CommitteeDescription\":\"The Committee shall \\u2013Nominate members to serve in Committees, save for the membership of the County Assembly Business Committee and Committee on Appointments\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:21:55\"}',9),(672,'admin','2021-08-10 08:22:56','INSERT','assemblycommittees',20,'127.0.0.1','{\"CommitteeName\":\"County Assembly Privileges Committee\",\"CommitteeDescription\":\"County Assembly Privileges Committee\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:22:56\"}',9),(673,'admin','2021-08-10 08:23:21','INSERT','assemblycommittees',21,'127.0.0.1','{\"CommitteeName\":\"County Assembly House Business Committee\",\"CommitteeDescription\":\"County Assembly House Business Committee\",\"ClerkResponsible\":\"kevin\",\"CommitteeType\":\"SELECT COMMITTEE\",\"CreatedBy\":\"admin\",\"DateCreated\":\"2021-08-10 11:23:20\"}',9);
/*!40000 ALTER TABLE `audit_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committeeMembersList`
--

DROP TABLE IF EXISTS `committeeMembersList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `committeeMembersList` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CommitteeID` int DEFAULT NULL,
  `MemberType` varchar(255) DEFAULT NULL,
  `PersonnelNo` varchar(255) DEFAULT NULL,
  `MemID` int DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committeeMembersList`
--

LOCK TABLES `committeeMembersList` WRITE;
/*!40000 ALTER TABLE `committeeMembersList` DISABLE KEYS */;
/*!40000 ALTER TABLE `committeeMembersList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committeeattendance`
--

DROP TABLE IF EXISTS `committeeattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `committeeattendance` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MeetingID` int DEFAULT NULL,
  `PersonnelNo` int DEFAULT NULL,
  `InAttendancePosition` varchar(255) DEFAULT NULL,
  `MemberType` varchar(255) DEFAULT NULL,
  `InAttendance` varchar(255) NOT NULL DEFAULT 'N',
  `CommitteeID` int DEFAULT NULL,
  `PayOutAmount` int DEFAULT NULL,
  `MemID` int DEFAULT NULL,
  `MeetingType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committeeattendance`
--

LOCK TABLES `committeeattendance` WRITE;
/*!40000 ALTER TABLE `committeeattendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `committeeattendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committeemeetings`
--

DROP TABLE IF EXISTS `committeemeetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `committeemeetings` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Venue` varchar(255) DEFAULT NULL,
  `CommitteeID` int DEFAULT NULL,
  `Posted` varchar(255) NOT NULL DEFAULT 'No',
  `DatePosted` datetime DEFAULT NULL,
  `Agenda` text,
  `MeetingDate` date DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `ToTime` time DEFAULT NULL,
  `OtherVenue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committeemeetings`
--

LOCK TABLES `committeemeetings` WRITE;
/*!40000 ALTER TABLE `committeemeetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `committeemeetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committemembers`
--

DROP TABLE IF EXISTS `committemembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `committemembers` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FullName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `PhoneNo` varchar(255) DEFAULT NULL,
  `Ward` varchar(255) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `ProfileImg` varchar(255) DEFAULT NULL,
  `PersonnelNo` varchar(255) DEFAULT NULL,
  `Pwsd_PFNo` varchar(255) DEFAULT NULL,
  `UserStatus` varchar(255) NOT NULL DEFAULT 'Active',
  `IDNo` varchar(255) DEFAULT NULL,
  `Pwsd_IDNo` varchar(255) DEFAULT NULL,
  `BiometricID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`),
  UNIQUE KEY `PersonnelNo` (`PersonnelNo`),
  UNIQUE KEY `IDNo` (`IDNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committemembers`
--

LOCK TABLES `committemembers` WRITE;
/*!40000 ALTER TABLE `committemembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `committemembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conferenceinvites`
--

DROP TABLE IF EXISTS `conferenceinvites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conferenceinvites` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NULL DEFAULT NULL,
  `conferenceroom_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conferenceinvites`
--

LOCK TABLES `conferenceinvites` WRITE;
/*!40000 ALTER TABLE `conferenceinvites` DISABLE KEYS */;
/*!40000 ALTER TABLE `conferenceinvites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conferenceparticipants`
--

DROP TABLE IF EXISTS `conferenceparticipants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conferenceparticipants` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `conferenceroom_id` int DEFAULT NULL,
  `peerid` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conferenceparticipants`
--

LOCK TABLES `conferenceparticipants` WRITE;
/*!40000 ALTER TABLE `conferenceparticipants` DISABLE KEYS */;
INSERT INTO `conferenceparticipants` VALUES (1,'ADMIN',NULL,NULL,NULL,1,1,'ec38f37b-6a11-41f5-bc3e-6c694a1e405e','online'),(2,'ADMIN',NULL,NULL,NULL,153,1,'490b6220-97e2-447d-b944-8b4da47b97b6','online');
/*!40000 ALTER TABLE `conferenceparticipants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conferenceroom`
--

DROP TABLE IF EXISTS `conferenceroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conferenceroom` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `started_on` datetime DEFAULT NULL,
  `ScheduleDate` datetime DEFAULT NULL,
  `ended_on` datetime DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conferenceroom`
--

LOCK TABLES `conferenceroom` WRITE;
/*!40000 ALTER TABLE `conferenceroom` DISABLE KEYS */;
INSERT INTO `conferenceroom` VALUES (1,'admin','2021-01-20 20:47:08',NULL,NULL,'Test Room','12345','password','open','2021-01-28 10:24:55','1970-01-01 00:00:00',NULL),(2,'admin','2021-01-24 09:01:53',NULL,NULL,'Test collections','346','kenya',NULL,NULL,'1970-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `conferenceroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbbackup`
--

DROP TABLE IF EXISTS `dbbackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbbackup` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `FileSize` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `ActualFileSize` varchar(255) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbbackup`
--

LOCK TABLES `dbbackup` WRITE;
/*!40000 ALTER TABLE `dbbackup` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbbackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_applications`
--

DROP TABLE IF EXISTS `dh_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_applications` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `ApplicationName` varchar(255) DEFAULT NULL,
  `ACL` varchar(255) DEFAULT NULL,
  `IconRef` varchar(255) DEFAULT NULL,
  `AppType` varchar(255) DEFAULT 'Normal',
  `DisplayOrder` int DEFAULT NULL,
  `AppCode` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_applications`
--

LOCK TABLES `dh_applications` WRITE;
/*!40000 ALTER TABLE `dh_applications` DISABLE KEYS */;
INSERT INTO `dh_applications` VALUES (1,'admin','2019-05-21 12:08:25',NULL,NULL,'UserProfile',NULL,'fa fa-users','Normal',999,'UserProfile'),(2,'admin','2019-05-21 12:09:09',NULL,NULL,'SystemApps',NULL,'fa -fa-wrech','Normal',998,'SystemApps'),(6,'admin','2019-06-19 20:31:23','admin','2019-11-07 11:12:11','Committee Mngt',NULL,'fa fa-users','Normal',1,'CommitteeMngt'),(7,'admin','2019-06-19 23:53:46',NULL,NULL,'Committe Reports',NULL,'fa fa-chat','Normal',3,'CommitteReports'),(8,'admin','2019-07-02 09:59:25','admin','2019-11-07 11:05:16','Accounts',NULL,'fa fa-dollar','Normal',4,'Accounts'),(9,'admin','2019-07-03 03:01:28',NULL,NULL,'Assembly',NULL,'fa fa-home','Normal',2,'Assembly'),(10,'admin','2019-08-14 02:31:21','admin','2019-11-07 11:05:33','Reports',NULL,'fa fa-bar-chart','Normal',5,'Reports'),(12,'admin','2019-11-07 08:06:05',NULL,NULL,'Communication',NULL,'fa fa-comment','Normal',6,'Communication'),(13,'admin','2021-01-20 17:32:08',NULL,NULL,'Conferencing',NULL,'fa fa-video-camera','Normal',7,'Conferencing');
/*!40000 ALTER TABLE `dh_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_columns`
--

DROP TABLE IF EXISTS `dh_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_columns` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `TblName` varchar(255) DEFAULT NULL,
  `FieldName` varchar(255) DEFAULT NULL,
  `DisplayName` varchar(255) DEFAULT NULL,
  `DataType` varchar(255) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_columns`
--

LOCK TABLES `dh_columns` WRITE;
/*!40000 ALTER TABLE `dh_columns` DISABLE KEYS */;
INSERT INTO `dh_columns` VALUES (1,'admin','2019-05-12 19:35:12',NULL,NULL,'StudentForm','FirstName','Jina La Kwanza','C'),(2,'admin','2019-05-12 21:10:42',NULL,NULL,'StudentForm','SecondName','Second Name','C'),(3,'admin','2019-05-12 21:10:50',NULL,NULL,'StudentForm','Email','Email','C'),(4,'admin','2019-05-12 21:10:57',NULL,NULL,'StudentForm','Email','Email','C'),(5,'admin','2019-05-12 21:16:44',NULL,NULL,'Test','Sampe1','Sample1','I'),(6,'admin','2019-05-12 21:31:03',NULL,NULL,'Test','Sample2','Sample2','C'),(7,'admin','2019-05-12 21:31:32',NULL,NULL,'Test','CurrentClass','we','C'),(8,'admin','2019-05-12 21:36:13',NULL,NULL,'Test','saafd','faf','C'),(9,'admin','2019-05-12 21:37:14',NULL,NULL,'Test','rqw','qerqw','C'),(10,'admin','2019-05-12 21:50:57',NULL,NULL,'Test','asag','gsasag','C'),(11,'admin','2019-05-12 22:02:50',NULL,NULL,'Test','sdds','dsdssd','C'),(12,'admin','2019-05-12 22:04:18',NULL,NULL,'Test','gdfgdf','dfsg','C'),(13,'admin','2019-05-12 22:04:18',NULL,NULL,'Test','gdfgdf','dfsg','C'),(14,'admin','2019-05-12 22:05:46',NULL,NULL,'Test','fadf','fasf','C'),(15,'admin','2019-05-12 22:05:53',NULL,NULL,'Test','','',''),(16,'admin','2019-05-12 22:05:59',NULL,NULL,'Test','','',''),(17,'admin','2019-05-12 22:08:07',NULL,NULL,'Test','WaterIsGood','Maji','C'),(18,'admin','2019-05-12 22:08:07',NULL,NULL,'Test','WaterIsGood','Maji','C'),(19,'admin','2019-05-12 22:08:27',NULL,NULL,'Test','asf','fdsd','C'),(20,'admin','2019-05-12 22:13:58',NULL,NULL,'StudentForm','fgg rt','trrtt','C'),(21,'admin','2019-05-12 22:18:29',NULL,NULL,'Test','gdfgdffgdf','gfsdfg','C'),(22,'admin','2019-05-12 22:18:41',NULL,NULL,'Test','dfgsdfg','dgfsdfg','C'),(23,'admin','2019-05-12 22:20:22',NULL,NULL,'Test','KEnya','wws','I'),(24,'admin','2019-05-12 22:20:43',NULL,NULL,'Test','Waterand','dfds','T'),(25,'admin','2019-05-12 22:28:32',NULL,NULL,'Test','Water','Maji','C'),(26,'admin','2019-05-20 06:45:55',NULL,NULL,'Summons','FirstName','First Name','C'),(27,'admin','2019-05-20 12:17:05',NULL,NULL,'OrderForm','OrderID','OrderID','C'),(28,'admin','2019-05-20 12:17:24',NULL,NULL,'OrderForm','SupplierID','Supplier Name','C'),(29,'admin','2019-05-21 10:12:28',NULL,NULL,'listitems','ParentID','ParentID','I'),(30,'admin','2019-05-21 11:08:47',NULL,NULL,'Summons','SecondName','Secon Name','C'),(31,'admin','2019-05-21 11:09:52',NULL,NULL,'Summons','Teleplone','TelePhone','C'),(32,'admin','2019-05-21 11:10:02',NULL,NULL,'Summons','Email','Email','C'),(33,'admin','2019-05-21 11:10:23',NULL,NULL,'Summons','VerseNo','VerseNo','I'),(34,'admin','2019-05-29 11:22:26',NULL,NULL,'TestTbl','FirstName','First Name','C'),(35,'admin','2019-05-29 11:22:38',NULL,NULL,'TestTbl','LastName','Last Name','C'),(36,'admin','2019-05-29 16:37:49',NULL,NULL,'dh_listview','searchable','searchable','C'),(37,'admin','2019-05-30 13:12:40',NULL,NULL,'dh_modules','EnablePreview','EnablePreview','C'),(38,'admin','2019-06-14 05:12:17',NULL,NULL,'TestTbl','desa','water','C'),(39,'admin','2019-06-14 05:15:53',NULL,NULL,'students','firstHame','samuel kibe','C'),(40,'admin','2019-06-14 05:16:12',NULL,NULL,'students','water','good','C'),(41,'admin','2019-06-19 13:01:04',NULL,NULL,'committemembers','FirstName','First Name','C'),(42,'admin','2019-06-19 13:01:18',NULL,NULL,'committemembers','SecondName','Second Name','C'),(43,'admin','2019-06-19 13:01:27',NULL,NULL,'committemembers','Email','Email','C'),(44,'admin','2019-06-19 13:01:39',NULL,NULL,'committemembers','PhoneNo','PhoneNo','C'),(45,'admin','2019-06-19 13:02:10',NULL,NULL,'committemembers','Ward','Ward','C'),(46,'admin','2019-06-19 13:02:25',NULL,NULL,'committemembers','Designation','Designation','C'),(47,'admin','2019-06-19 13:02:41',NULL,NULL,'committemembers','ProfileImg','ProfileImg','C'),(48,'admin','2019-06-19 13:02:59',NULL,NULL,'committemembers','IDNo','IDno','C'),(49,'admin','2019-06-19 21:57:44',NULL,NULL,'assemblycommittees','CommitteeName','Committee Name','C'),(50,'admin','2019-06-19 21:59:04',NULL,NULL,'assemblycommittees','CommitteeDescription','CommitteDescription','X'),(51,'admin','2019-06-19 22:00:22',NULL,NULL,'committeeMembersList','CommitteeID','CommitteeID','I'),(52,'admin','2019-06-19 22:00:39',NULL,NULL,'committeeMembersList','MemberID','MemberID','I'),(53,'admin','2019-06-19 23:22:27',NULL,NULL,'committeemeetings','NameofMeeting','Name of Meeting','C'),(54,'admin','2019-06-19 23:22:36',NULL,NULL,'committeemeetings','Venue','Venue','C'),(55,'admin','2019-06-19 23:22:51',NULL,NULL,'committeemeetings','MeetingDate','Meeting Date','D'),(56,'admin','2019-06-19 23:51:36',NULL,NULL,'allowancesrate','AllowanceRate','Allowance Rate','C'),(57,'admin','2019-06-21 09:38:24',NULL,NULL,'committeeMembersList','MemberType','MemberType','C'),(58,'admin','2019-06-21 09:42:03',NULL,NULL,'committeeMembersList','PersonnelNo','PersonnelNo','C'),(59,'admin','2019-06-21 09:42:46',NULL,NULL,'committemembers','PersonnelNo','PersonnelNo','C'),(60,'admin','2019-06-25 01:31:19',NULL,NULL,'committeemeetings','CommitteeID','CommitteeID','I'),(61,'admin','2019-06-25 01:31:46',NULL,NULL,'committeemeetings','MeetingDateTime','Meeting Date Time','T'),(62,'admin','2019-07-01 10:55:29',NULL,NULL,'committeeattendance','CommitteeID','CommitteeID','I'),(63,'admin','2019-07-01 10:55:49',NULL,NULL,'committeeattendance','PersonnelNo','PersonnelNo','I'),(64,'admin','2019-07-01 10:56:20',NULL,NULL,'committeeattendance','InAttendancePosition','InAttendancePosition','C'),(65,'admin','2019-07-01 10:56:40',NULL,NULL,'committeeattendance','MemberType','MemberType','C'),(66,'admin','2019-07-01 12:38:09',NULL,NULL,'committeeattendance','InAttendance','InAttendance','C'),(67,'admin','2019-07-02 08:10:55',NULL,NULL,'committeeattendance','CommitteeID','CommitteeID','I'),(68,'admin','2019-07-02 08:38:02',NULL,NULL,'committeemeetings','Posted','Posted','C'),(69,'admin','2019-07-02 08:40:54',NULL,NULL,'committeemeetings','DatePosted','DatePosted','T'),(70,'admin','2019-07-02 12:15:50',NULL,NULL,'allowancesrate','AllowanceRank','Allowanca Rank','C'),(71,'admin','2019-07-02 12:34:14',NULL,NULL,'allowancesrate','AllowanceAmount','AllowanceAmount','I'),(72,'admin','2019-07-03 02:12:20',NULL,NULL,'committeeattendance','PayOutAmount','PayOutAmount','I'),(73,'admin','2019-07-03 02:37:50',NULL,NULL,'committeemeetings','Agenda','Agenda','X'),(74,'admin','2019-07-03 02:58:56',NULL,NULL,'assemblybusiness','DocumentName','Document Name','C'),(75,'admin','2019-07-03 02:59:16',NULL,NULL,'assemblybusiness','DocumentDescription','Document Description','X'),(76,'admin','2019-07-03 03:51:42',NULL,NULL,'assemblybizdocs','DocumentType','DocumentType','C'),(77,'admin','2019-07-03 03:51:57',NULL,NULL,'assemblybizdocs','DocID','DocID','I'),(78,'admin','2019-07-03 03:52:50',NULL,NULL,'assemblybizdocs','DocumentDate','DocumentDate','T'),(79,'admin','2019-07-03 03:53:12',NULL,NULL,'assemblybizdocs','DocumentTitle','DocumentTitle','C'),(80,'admin','2019-07-04 06:07:41',NULL,NULL,'assemblybusiness','DisplayOrder','DisplayOrder','I'),(81,'admin','2019-07-04 09:59:47',NULL,NULL,'committemembers','Pwsd','Password','C'),(82,'admin','2019-07-04 10:52:15',NULL,NULL,'committemembers','UserStatus','UserStatus','C'),(83,'admin','2019-07-04 15:17:25',NULL,NULL,'assemblybizdocs','CategoryID','CategoryID','I'),(84,'admin','2019-07-05 11:29:51',NULL,NULL,'assemblybizdocs','DocumentCategory','DocumentCategory','C'),(85,'admin','2019-07-07 18:39:48',NULL,NULL,'scheduleofmeetings','MeetingDay','MeetingDay','I'),(86,'admin','2019-07-07 18:40:27',NULL,NULL,'scheduleofmeetings','CommitteeID','CommitteeID','I'),(87,'admin','2019-07-07 18:40:39',NULL,NULL,'scheduleofmeetings','FromTime','FromTime','D'),(88,'admin','2019-07-07 18:40:55',NULL,NULL,'scheduleofmeetings','ToTime','ToTime','D'),(89,'admin','2019-07-07 18:41:10',NULL,NULL,'scheduleofmeetings','Venue','Venue','C'),(90,'admin','2019-07-07 18:41:35',NULL,NULL,'scheduleofmeetings','ClerkResponsible','ClerkResponsible','C'),(91,'admin','2019-07-07 22:20:24',NULL,NULL,'assemblycommittees','ClerkResposible','ClerkResposible','C'),(92,'admin','2019-07-08 07:10:40',NULL,NULL,'assemblycommittees','ClerkResponsible','ClerkResponsible','C'),(93,'admin','2019-07-11 13:45:18',NULL,NULL,'assemblybizdocs','CommitteDocType','Committe Document Type','C'),(94,'admin','2019-07-11 13:46:29',NULL,NULL,'assemblybizdocs','CommitteeDocType','Committee Document Type','C'),(95,'admin','2019-07-16 12:54:19',NULL,NULL,'assemblycommittees','CommitteeType','Committee Type','C'),(96,'admin','2019-07-18 15:42:47',NULL,NULL,'committeemeetings','MeetingDate','MeetingDate','D'),(97,'admin','2019-07-18 15:43:04',NULL,NULL,'committeemeetings','FromTime','FromTime','T'),(98,'admin','2019-07-18 15:43:36',NULL,NULL,'committeemeetings','ToTime','ToTime','T'),(99,'admin','2019-07-18 15:44:20',NULL,NULL,'committeemeetings','ClerkResponsible','ClerkResponsible','C'),(100,'admin','2019-07-25 07:03:40',NULL,NULL,'committeeMembersList','MemID','MemID','I'),(101,'admin','2019-07-25 07:17:11',NULL,NULL,'committemembers','IDNo','IDNo','C'),(102,'admin','2019-07-25 07:17:44',NULL,NULL,'committemembers','Pwsd2','Pwsd2','C'),(103,'admin','2019-08-12 09:47:29',NULL,NULL,'committeeattendance','MemID','MemID','I'),(104,'admin','2019-08-13 15:14:54',NULL,NULL,'committeemeetings','OtherVenue','OtherVenue','C'),(105,'admin','2019-09-05 10:32:01',NULL,NULL,'plenarymeetings','Venue','Venue','C'),(106,'admin','2019-09-05 10:32:21',NULL,NULL,'plenarymeetings','Posted','Posted','C'),(107,'admin','2019-09-05 10:32:43',NULL,NULL,'plenarymeetings','DatePosted','DatePosted','T'),(108,'admin','2019-09-05 10:32:56',NULL,NULL,'plenarymeetings','Agenda','Agenda','C'),(109,'admin','2019-09-05 10:33:12',NULL,NULL,'plenarymeetings','MeetingDate','MeetingDate','D'),(110,'admin','2019-09-05 10:33:22',NULL,NULL,'plenarymeetings','FromTime','FromTime','T'),(111,'admin','2019-09-05 10:33:33',NULL,NULL,'plenarymeetings','ToTime','ToTime','T'),(112,'admin','2019-09-05 10:33:51',NULL,NULL,'plenarymeetings','ClerkResponsible','ClerkResponsible','C'),(113,'admin','2019-09-05 10:34:51',NULL,NULL,'committeeattendance','MeetingType','MeetingType','C'),(114,'admin','2019-09-05 20:42:40',NULL,NULL,'assemblybusiness','EnableEmpty','EnableEmpty','C'),(115,'admin','2019-10-18 15:07:10',NULL,NULL,'Wandie','FirstName','First Name','C'),(116,'admin','2019-10-18 15:12:44',NULL,NULL,'wandie','FirstName','FirstName','C'),(117,'admin','2019-10-18 15:13:03',NULL,NULL,'wandie','SecondName','SecondName','C'),(118,'admin','2019-11-07 15:34:54',NULL,NULL,'tbl_bulksms','ReceiptientName','ReceiptientName','C'),(119,'admin','2019-11-28 09:09:41',NULL,NULL,'scheduleofmeetings','ClerkResponsible','ClerkResponsible','C'),(120,'admin','2019-11-28 09:31:27',NULL,NULL,'scheduleofmeetings','OtherVenue','Other Venue','C'),(121,'admin','2019-12-05 11:12:08',NULL,NULL,'dh_emailtemplates','TempDescription','TempDescription','C'),(122,'admin','2020-03-03 09:57:08',NULL,NULL,'notifications','CommitteeID','CommitteeID','I'),(123,'admin','2020-03-03 10:00:41',NULL,NULL,'notificationlist','NTargetedTo','NTargetedTo','N'),(124,'admin','2020-03-05 09:21:48',NULL,NULL,'committemembers','BiometricID','BiometricID','C'),(125,'admin','2020-03-05 09:26:01',NULL,NULL,'committemembers','BiometricName','BiometricName','C'),(126,'admin','2020-03-05 09:29:48',NULL,NULL,'committemembers','BiometricID','BiometricID','C'),(127,'admin','2021-01-20 17:33:41',NULL,NULL,'conferenceroom','name','RoomName','C'),(128,'admin','2021-01-20 17:33:54',NULL,NULL,'conferenceroom','link','Room Link','C'),(129,'admin','2021-01-20 17:34:17',NULL,NULL,'conferenceroom','Password','Password','C'),(130,'admin','2021-01-20 17:34:46',NULL,NULL,'conferenceroom','Status','Room Status','C'),(131,'admin','2021-01-20 17:35:15',NULL,NULL,'conferenceroom','started_on','Started On','T'),(132,'admin','2021-01-20 17:35:35',NULL,NULL,'conferenceroom','ScheduleDate','Schedule Date','T'),(133,'admin','2021-01-20 17:36:04',NULL,NULL,'conferenceroom','ended_on','Ended On','T'),(134,'admin','2021-01-20 17:37:56',NULL,NULL,'conferenceparticipants','user_id','User Id','I'),(135,'admin','2021-01-20 17:38:22',NULL,NULL,'conferenceparticipants','conferenceroom_id','Room Id','I'),(136,'admin','2021-01-20 17:38:45',NULL,NULL,'conferenceparticipants','peerid','Peer','C'),(137,'admin','2021-01-20 17:39:15',NULL,NULL,'conferenceparticipants','Status','User Status','C'),(138,'admin','2021-01-20 17:41:16',NULL,NULL,'conferenceinvites','conferenceroom_id','Room Id','I'),(139,'admin','2021-01-20 17:41:38',NULL,NULL,'conferenceinvites','user_id','User Id','I');
/*!40000 ALTER TABLE `dh_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_emailtemplates`
--

DROP TABLE IF EXISTS `dh_emailtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_emailtemplates` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `TempName` varchar(255) DEFAULT NULL,
  `TempSubject` varchar(255) DEFAULT NULL,
  `TempDescription` varchar(255) DEFAULT NULL,
  `TempBody` text,
  `TempCss` text,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_emailtemplates`
--

LOCK TABLES `dh_emailtemplates` WRITE;
/*!40000 ALTER TABLE `dh_emailtemplates` DISABLE KEYS */;
INSERT INTO `dh_emailtemplates` VALUES (1,'mike','2018-05-24 21:57:08','admin','2018-05-25 11:03:45','FileRequestAction','FYI: File Request CaseNo: @CaseNo@ by @FullName@','File Request Action Required','<p><img alt=\"\" src=\"http://74.207.242.48/cnty22/dist/img/logo.png\" style=\"float:left; height:79px; width:200px\" /></p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p>Hi </p>\r\n\r\n<p>Please do grant me access to  Case File : <strong>@CaseNo@. </strong>Please respond as soon possible.</p>\r\n\r\n<p>Thanks</p>\r\n\r\n<hr />\r\n<p>Regards @FullName@</p>','position:relative;\r\n   \r\n    margin: 30px auto 100px auto;\r\n\r\n    width:80%;\r\n    padding: 20px;\r\n    border: 1px solid #ccc;\r\n    border-radius:10px;\r\n    -webkit-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	-moz-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);'),(2,'mike','2018-05-24 22:04:44','admin','2019-01-14 19:01:19','ForgotPasswordReset','TriaBioSMS forgotten Password Reset','Message for Forgotten Password Reset','<div style=\"background:#eee; border:1px solid #ccc; padding:5px 10px\"><img src=\"http://74.207.242.48/triabiosms/dist/img/logo.png\" style=\"height:79px; width:200px\" /></div>\n\n<hr />\n<h2><cite>Hi @Fullname@,</cite></h2>\n\n<p>You have successfully reset your&nbsp;Password.&nbsp;Your New login credentials are :</p>\n\n<p>UserName :&nbsp;<strong>@loginid@</strong></p>\n\n<p>&nbsp;Password&nbsp; :&nbsp;<strong>@pswd@</strong></p>\n\n<p><em>You can now access</em>&nbsp;TriaBioSMS&nbsp;via <a href=\"https://apps.quarto.co.ke/triabiosms\">TriaBioSMS</a>.</p>\n\n<p><strong>NB: Please remember to change your password after login.</strong></p>\n\n<hr />\n<p>Regards</p>\n\n<p><strong>TriaBioSMS Team</strong></p>','position:relative;\r\n   \r\n    margin: 30px auto 100px auto;\r\n\r\n    width:80%;\r\n    padding: 20px;\r\n    border: 1px solid #ccc;\r\n    border-radius:10px;\r\n    -webkit-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	-moz-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);'),(3,'admin','2018-05-25 07:23:19','admin','2019-12-06 16:19:05','LoginWelcome','Welcome to Kiambu County Assembly','Welcome Message On User Create','&lt;div style=&quot;background:#fff; border:1px solid #ccc; padding:5px 10px&quot;&gt;&lt;img src=&quot;http://74.207.242.48/triabiosms/dist/img/logo.png&quot; style=&quot;height:79px; width:200px&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;h2&gt;&lt;cite&gt;Welcome @Fullname@,&lt;/cite&gt;&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Your TriaBioSMS account has been created successfully, Y&lt;s&gt;&lt;strong&gt;ou can now access&lt;/strong&gt;&lt;/s&gt;&lt;/em&gt;&lt;s&gt;&lt;strong&gt;&amp;nbsp;Tr&lt;/strong&gt;&lt;/s&gt;iaBioSMS&amp;nbsp;via &lt;a href=&quot;https://apps.quarto.co.ke/triabiosms&quot;&gt;TriaBioSMS&lt;/a&gt;. And Your login credentials are :&amp;nbsp; jmhhhg&lt;/p&gt;\r\n\r\n&lt;p&gt;UserName :&amp;nbsp;&lt;strong&gt;@loginid@&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;Password&amp;nbsp; :&amp;nbsp;&lt;strong&gt;@pswd@&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;NB: This a default password, please do remember to change your password upon login.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;Regards&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;TriaBioSMS Team&lt;/strong&gt;&lt;/p&gt;','position:relative;\r\n   \r\n    margin: 30px auto 100px auto;\r\n\r\n    width:80%;\r\n    padding: 20px;\r\n    border: 1px solid #ccc;\r\n    border-radius:10px;\r\n    -webkit-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	-moz-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);'),(4,'admin','2018-05-25 07:30:33','admin','2019-12-06 16:19:38','PasswordReset','County Assembly of Kiambu Password Reset','Message for Password Reset','&lt;div style=&quot;background:#fff; border:1px solid #ccc; padding:5px 10px&quot;&gt;&lt;img src=&quot;http://74.207.242.48/triabiosms/dist/img/logo.png&quot; style=&quot;height:79px; width:200px&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;h2&gt;&lt;cite&gt;Hi @Fullname@,&lt;/cite&gt;&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Your TriaBioSMS account password has been reset by &lt;strong&gt;@USERID@. &lt;/strong&gt;&lt;/em&gt;Your login credentials are :&lt;/p&gt;\r\n\r\n&lt;p&gt;UserName : &lt;strong&gt;@loginid@&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt; Password  : &lt;strong&gt;@pswd@&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;You can now access&lt;/em&gt; TriaBioSMS via&lt;/p&gt;','position:relative;\r\n   \r\n    margin: 30px auto 100px auto;\r\n\r\n    width:80%;\r\n    padding: 20px;\r\n    border: 1px solid #ccc;\r\n    border-radius:10px;\r\n    -webkit-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	-moz-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);'),(5,'admin','2018-05-25 07:39:20',NULL,NULL,'RequestDenied','FYI : File Request Denied for CaseNo: @CaseNo@','Request Denied','<p><img alt=\"\" src=\"http://74.207.242.48/cnty22/dist/img/logo.png\" style=\"float:left; height:79px; width:200px\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Hi @FullName@</p>\n\n<p>This to Inform you that your request for Case File&nbsp;<strong>@CaseNo@&nbsp;</strong>has been denied&nbsp;<strong>@ActionDoneBy@ on @ActionDate@</strong> because of :</p>\n\n<p><strong>@DenyReason@</strong></p>\n\n<p>Thanks</p>\n\n<hr />\n<p>Regards</p>\n\n<p>TriaBioSMS Team</p>\n','position:relative;\r\n   \r\n    margin: 30px auto 100px auto;\r\n\r\n    width:80%;\r\n    padding: 20px;\r\n    border: 1px solid #ccc;\r\n    border-radius:10px;\r\n    -webkit-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	-moz-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);'),(6,'admin','2018-05-25 07:42:30',NULL,NULL,'RequestApproved','FYI: File Request for Case File @CaseNo@ has been Granted','Request Approved','<p><img alt=\"\" src=\"http://74.207.242.48/cnty22/dist/img/logo.png\" style=\"float:left; height:79px; width:200px\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Hi @FullName@</p>\n\n<p>This to Inform you that your request for Case File&nbsp;<strong>@CaseNo@&nbsp;</strong>has been Granted by&nbsp;<strong>@ActionDoneBy@ on @ActionDate@</strong>&nbsp;.</p>\n\n<p>Please login into TriaBioSMS to access the file.</p>\n\n<p>Thanks</p>\n\n<hr />\n<p>Regards</p>\n\n<p>TriaBioSMS Team</p>\n','position:relative;\r\n   \r\n    margin: 30px auto 100px auto;\r\n\r\n    width:80%;\r\n    padding: 20px;\r\n    border: 1px solid #ccc;\r\n    border-radius:10px;\r\n    -webkit-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	-moz-box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);\r\n	box-shadow: 0px 1px 10px 0px rgba(207,207,207,1);');
/*!40000 ALTER TABLE `dh_emailtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_listquery`
--

DROP TABLE IF EXISTS `dh_listquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_listquery` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `FieldName` varchar(255) DEFAULT NULL,
  `FilterCondition` varchar(255) DEFAULT NULL,
  `FilterValue` varchar(255) DEFAULT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `ModuleCode` varchar(255) DEFAULT NULL,
  `ListType` varchar(255) DEFAULT 'Main',
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_listquery`
--

LOCK TABLES `dh_listquery` WRITE;
/*!40000 ALTER TABLE `dh_listquery` DISABLE KEYS */;
INSERT INTO `dh_listquery` VALUES (11,'admin','2019-05-20 17:23:45',NULL,NULL,'CreatedBy','EQUAL','admin','OrderForm','SMSModule_11','Main'),(12,'admin','2019-05-20 17:23:45',NULL,NULL,'DateModified','EQUAL','{TimeStamp}','OrderForm','SMSModule_11','Main'),(13,'admin','2019-05-20 17:23:45',NULL,NULL,'OrderID','EQUAL','343','OrderForm','SMSModule_11','Main'),(14,'admin','2019-05-20 17:23:45',NULL,NULL,'SupplierID','EQUAL','343343','OrderForm','SMSModule_11','Main'),(15,'admin','2019-05-29 18:29:37',NULL,NULL,'loginid','EQUAL','admin','vw_userslist','ManageUsers','Main');
/*!40000 ALTER TABLE `dh_listquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_listview`
--

DROP TABLE IF EXISTS `dh_listview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_listview` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `FieldName` varchar(255) DEFAULT NULL,
  `DisplayName` varchar(255) DEFAULT NULL,
  `DisplayOrder` int DEFAULT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `ModuleCode` varchar(255) DEFAULT NULL,
  `ListType` varchar(255) DEFAULT 'Main',
  `searchable` varchar(255) NOT NULL DEFAULT 'N',
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_listview`
--

LOCK TABLES `dh_listview` WRITE;
/*!40000 ALTER TABLE `dh_listview` DISABLE KEYS */;
INSERT INTO `dh_listview` VALUES (1,'admin','2019-05-21 12:58:13',NULL,NULL,'DocID','DocID',0,'vw_fileaccesslog','DocumentsAccessLog','Main','N'),(2,'admin','2019-05-21 12:58:13',NULL,NULL,'StoragePool','StoragePool',0,'vw_fileaccesslog','DocumentsAccessLog','Main','N'),(3,'admin','2019-05-21 12:58:13',NULL,NULL,'DocDescription','DocDescription',0,'vw_fileaccesslog','DocumentsAccessLog','Main','N'),(4,'admin','2019-05-21 13:19:25',NULL,NULL,'CreatedBy','CreatedBy',3,'dh_userprofiles','ManageUserProfiles','Main','N'),(5,'admin','2019-05-21 13:19:25',NULL,NULL,'DateCreated','DateCreated',4,'dh_userprofiles','ManageUserProfiles','Main','N'),(6,'admin','2019-05-21 13:19:25',NULL,NULL,'ProfileName','ProfileName',1,'dh_userprofiles','ManageUserProfiles','Main','N'),(7,'admin','2019-05-21 13:19:25',NULL,NULL,'ProfileDescription','ProfileDescription',2,'dh_userprofiles','ManageUserProfiles','Main','N'),(177,'admin','2019-06-19 13:49:07',NULL,NULL,'loginid','loginid',1,'vw_userslist','ManageUsers','Main','Y'),(178,'admin','2019-06-19 13:49:07',NULL,NULL,'Fullname','Fullname',2,'vw_userslist','ManageUsers','Main','Y'),(179,'admin','2019-06-19 13:49:08',NULL,NULL,'Phone','Phone',3,'vw_userslist','ManageUsers','Main','N'),(180,'admin','2019-06-19 13:49:08',NULL,NULL,'Email','Email',4,'vw_userslist','ManageUsers','Main','N'),(181,'admin','2019-06-19 13:49:08',NULL,NULL,'Position','Position',6,'vw_userslist','ManageUsers','Main','N'),(182,'admin','2019-06-19 13:49:08',NULL,NULL,'user_type','User Type',6,'vw_userslist','ManageUsers','Main','N'),(183,'admin','2019-06-19 13:49:08',NULL,NULL,'userstatus','User Status',3,'vw_userslist','ManageUsers','Main','N'),(188,'admin','2019-06-19 13:53:22',NULL,NULL,'CreatedBy','CreatedBy',4,'vw_dhrolegroups','ManageUserGroups','Main','N'),(189,'admin','2019-06-19 13:53:22',NULL,NULL,'DateCreated','DateCreated',5,'vw_dhrolegroups','ManageUserGroups','Main','N'),(190,'admin','2019-06-19 13:53:22',NULL,NULL,'GroupName','GroupName',1,'vw_dhrolegroups','ManageUserGroups','Main','Y'),(191,'admin','2019-06-19 13:53:22',NULL,NULL,'GroupDescription','GroupDescription',2,'vw_dhrolegroups','ManageUserGroups','Main','Y'),(192,'admin','2019-06-19 13:53:22',NULL,NULL,'UsersCount','UsersCount',3,'vw_dhrolegroups','ManageUserGroups','Main','N'),(240,'admin','2019-06-23 21:18:37',NULL,NULL,'logged_user','Logged User',1,'syslogin','UserLoginHistory','Main','Y'),(241,'admin','2019-06-23 21:18:37',NULL,NULL,'login_time','Login Time',2,'syslogin','UserLoginHistory','Main','N'),(242,'admin','2019-06-23 21:18:37',NULL,NULL,'logout_time','Logout Time',3,'syslogin','UserLoginHistory','Main','N'),(243,'admin','2019-06-23 21:18:37',NULL,NULL,'host','Host IP',4,'syslogin','UserLoginHistory','Main','Y'),(260,'admin','2019-07-02 12:34:45',NULL,NULL,'CreatedBy','CreatedBy',3,'allowancesrate','AllowancesRate_15','Main','N'),(261,'admin','2019-07-02 12:34:45',NULL,NULL,'DateCreated','DateCreated',4,'allowancesrate','AllowancesRate_15','Main','N'),(262,'admin','2019-07-02 12:34:45',NULL,NULL,'AllowanceRank','AllowanceRank',1,'allowancesrate','AllowancesRate_15','Main','Y'),(263,'admin','2019-07-02 12:34:45',NULL,NULL,'AllowanceAmount','AllowanceAmount',2,'allowancesrate','AllowancesRate_15','Main','Y'),(288,'admin','2019-07-04 06:10:54',NULL,NULL,'CreatedBy','CreatedBy',4,'assemblybusiness','DocumentCategories_21','Main','N'),(289,'admin','2019-07-04 06:10:54',NULL,NULL,'DateCreated','DateCreated',5,'assemblybusiness','DocumentCategories_21','Main','N'),(290,'admin','2019-07-04 06:10:54',NULL,NULL,'DocumentCategory','Document Category',1,'assemblybusiness','DocumentCategories_21','Main','Y'),(291,'admin','2019-07-04 06:10:54',NULL,NULL,'DocumentDescription','Document Description',2,'assemblybusiness','DocumentCategories_21','Main','Y'),(292,'admin','2019-07-04 06:10:54',NULL,NULL,'DisplayOrder','DisplayOrder',3,'assemblybusiness','DocumentCategories_21','Main','N'),(300,'admin','2019-07-05 11:30:36',NULL,NULL,'CreatedBy','CreatedBy',2,'assemblybizdocs','AssemblyDocuments_22','Main','N'),(301,'admin','2019-07-05 11:30:36',NULL,NULL,'DateCreated','DateCreated',3,'assemblybizdocs','AssemblyDocuments_22','Main','N'),(302,'admin','2019-07-05 11:30:36',NULL,NULL,'DocumentDate','DocumentDate',2,'assemblybizdocs','AssemblyDocuments_22','Main','Y'),(303,'admin','2019-07-05 11:30:36',NULL,NULL,'DocumentTitle','DocumentTitle',3,'assemblybizdocs','AssemblyDocuments_22','Main','Y'),(304,'admin','2019-07-05 12:50:09',NULL,NULL,'CreatedBy','CreatedBy',3,'assemblybizdocs','CommitteeDocuments_24','Main','N'),(305,'admin','2019-07-05 12:50:09',NULL,NULL,'DateCreated','DateCreated',4,'assemblybizdocs','CommitteeDocuments_24','Main','N'),(306,'admin','2019-07-05 12:50:09',NULL,NULL,'DocumentDate','DocumentDate',2,'assemblybizdocs','CommitteeDocuments_24','Main','N'),(307,'admin','2019-07-05 12:50:09',NULL,NULL,'DocumentTitle','DocumentTitle',1,'assemblybizdocs','CommitteeDocuments_24','Main','N'),(308,'admin','2019-07-07 08:54:15',NULL,NULL,'CreatedBy','CreatedBy',0,'assemblybizdocs','OtherDocuments_25','Main','N'),(309,'admin','2019-07-07 08:54:15',NULL,NULL,'DateCreated','DateCreated',0,'assemblybizdocs','OtherDocuments_25','Main','N'),(310,'admin','2019-07-07 08:54:15',NULL,NULL,'DocumentDate','Document Date',2,'assemblybizdocs','OtherDocuments_25','Main','Y'),(311,'admin','2019-07-07 08:54:15',NULL,NULL,'DocumentTitle','Document Title',1,'assemblybizdocs','OtherDocuments_25','Main','Y'),(312,'admin','2019-07-07 22:07:56',NULL,NULL,'Venue','Venue',4,'vw_scheduleofmeetings','ScheduleofMeetings_26','Main','Y'),(313,'admin','2019-07-07 22:07:56',NULL,NULL,'MeetingDay','Meeting Day',1,'vw_scheduleofmeetings','ScheduleofMeetings_26','Main','Y'),(314,'admin','2019-07-07 22:07:56',NULL,NULL,'CommitteeName','Committee Name',2,'vw_scheduleofmeetings','ScheduleofMeetings_26','Main','Y'),(315,'admin','2019-07-07 22:07:56',NULL,NULL,'ClerkName','Clerk Name',5,'vw_scheduleofmeetings','ScheduleofMeetings_26','Main','Y'),(316,'admin','2019-07-07 22:07:56',NULL,NULL,'ClerkEmail','Clerk Email',6,'vw_scheduleofmeetings','ScheduleofMeetings_26','Main','Y'),(317,'admin','2019-07-07 22:07:56',NULL,NULL,'MeetingTime','Meeting Time',3,'vw_scheduleofmeetings','ScheduleofMeetings_26','Main','Y'),(318,'admin','2019-07-08 07:13:41',NULL,NULL,'CreatedBy','CreatedBy',4,'vw_assemblycommittees','Committees_9','Main','N'),(319,'admin','2019-07-08 07:13:41',NULL,NULL,'DateCreated','DateCreated',5,'vw_assemblycommittees','Committees_9','Main','N'),(320,'admin','2019-07-08 07:13:41',NULL,NULL,'CommitteeName','CommitteeName',1,'vw_assemblycommittees','Committees_9','Main','Y'),(321,'admin','2019-07-08 07:13:41',NULL,NULL,'ClerkName','Clerk Responsible',3,'vw_assemblycommittees','Committees_9','Main','Y'),(322,'admin','2019-07-08 07:13:41',NULL,NULL,'MembersCounts','MembersCounts',2,'vw_assemblycommittees','Committees_9','Main','Y'),(340,'admin','2019-07-25 12:58:35',NULL,NULL,'FullName','FullName',3,'committemembers','Members_11','Main','Y'),(341,'admin','2019-07-25 12:58:35',NULL,NULL,'PhoneNo','PhoneNo',5,'committemembers','Members_11','Main','N'),(342,'admin','2019-07-25 12:58:35',NULL,NULL,'Ward','Ward',6,'committemembers','Members_11','Main','Y'),(343,'admin','2019-07-25 12:58:35',NULL,NULL,'Designation','Designation',7,'committemembers','Members_11','Main','Y'),(344,'admin','2019-07-25 12:58:35',NULL,NULL,'PersonnelNo','PersonnelNo',1,'committemembers','Members_11','Main','Y'),(345,'admin','2019-07-25 12:58:35',NULL,NULL,'IDNo','IDNo',2,'committemembers','Members_11','Main','Y'),(351,'admin','2019-08-14 07:42:45',NULL,NULL,'PayOutAmount','PayOutAmount',4,'vw_committeeattendance','CommitteeMembers-Allowances_28','Main','N'),(352,'admin','2019-08-14 07:42:45',NULL,NULL,'OtherVenue','Sittings Counts',2,'vw_committeeattendance','CommitteeMembers-Allowances_28','Main','N'),(353,'admin','2019-08-14 07:42:45',NULL,NULL,'FullName','FullName',1,'vw_committeeattendance','CommitteeMembers-Allowances_28','Main','N'),(354,'admin','2019-08-14 07:42:45',NULL,NULL,'Designation','Period',3,'vw_committeeattendance','CommitteeMembers-Allowances_28','Main','N'),(373,'admin','2019-08-14 07:52:30',NULL,NULL,'InAttendancePosition','InAttendancePosition',3,'vw_committeeattendance','AttendanceList-Committee_27','Main','Y'),(374,'admin','2019-08-14 07:52:30',NULL,NULL,'MemberType','MemberType',2,'vw_committeeattendance','AttendanceList-Committee_27','Main','N'),(375,'admin','2019-08-14 07:52:30',NULL,NULL,'FullName','FullName',1,'vw_committeeattendance','AttendanceList-Committee_27','Main','Y'),(376,'admin','2019-09-05 14:58:03',NULL,NULL,'Venue','Venue',3,'vw_plenarymeetings','PlenarySessions_30','Main','Y'),(377,'admin','2019-09-05 14:58:03',NULL,NULL,'MeetingDate','MeetingDate',1,'vw_plenarymeetings','PlenarySessions_30','Main','N'),(378,'admin','2019-09-05 14:58:03',NULL,NULL,'Posted','Posted',6,'vw_plenarymeetings','PlenarySessions_30','Main','N'),(379,'admin','2019-09-05 14:58:03',NULL,NULL,'Agenda','Agenda',2,'vw_plenarymeetings','PlenarySessions_30','Main','Y'),(380,'admin','2019-09-05 14:58:03',NULL,NULL,'ClerkName','ClerkName',5,'vw_plenarymeetings','PlenarySessions_30','Main','Y'),(381,'admin','2019-09-05 14:58:03',NULL,NULL,'AttendanceCount','AttendanceCount',4,'vw_plenarymeetings','PlenarySessions_30','Main','Y'),(395,'admin','2019-11-07 08:09:23',NULL,NULL,'CreatedBy','CreatedBy',3,'tbl_smstemplates','SMSTemplates_34','Main','N'),(396,'admin','2019-11-07 08:09:23',NULL,NULL,'DateCreated','DateCreated',4,'tbl_smstemplates','SMSTemplates_34','Main','N'),(397,'admin','2019-11-07 08:09:23',NULL,NULL,'TemplateName','TemplateName',1,'tbl_smstemplates','SMSTemplates_34','Main','Y'),(398,'admin','2019-11-07 08:09:24',NULL,NULL,'TemplateBody','TemplateBody',2,'tbl_smstemplates','SMSTemplates_34','Main','Y'),(399,'admin','2019-11-07 09:22:54',NULL,NULL,'CreatedBy','CreatedBy',6,'vw_messageout','ComposeSMS_35','Main','N'),(400,'admin','2019-11-07 09:22:54',NULL,NULL,'DateCreated','DateCreated',7,'vw_messageout','ComposeSMS_35','Main','N'),(401,'admin','2019-11-07 09:22:54',NULL,NULL,'SendChannel','SendChannel',1,'vw_messageout','ComposeSMS_35','Main','Y'),(402,'admin','2019-11-07 09:22:54',NULL,NULL,'MessageType','MessageType',2,'vw_messageout','ComposeSMS_35','Main','Y'),(403,'admin','2019-11-07 09:22:54',NULL,NULL,'MessageBody','MessageBody',3,'vw_messageout','ComposeSMS_35','Main','Y'),(404,'admin','2019-11-07 09:22:54',NULL,NULL,'SendFrequency','SendFrequency',4,'vw_messageout','ComposeSMS_35','Main','N'),(405,'admin','2019-11-07 09:22:54',NULL,NULL,'RecptCount','Receiptients',5,'vw_messageout','ComposeSMS_35','Main','N'),(406,'admin','2019-11-09 09:02:52',NULL,NULL,'CreatedBy','CreatedBy',8,'vw_committeemeetings','CommitteeMeetings_16','Main','Y'),(407,'admin','2019-11-09 09:02:52',NULL,NULL,'DateCreated','DateCreated',9,'vw_committeemeetings','CommitteeMeetings_16','Main','Y'),(408,'admin','2019-11-09 09:02:52',NULL,NULL,'Venue','Venue',3,'vw_committeemeetings','CommitteeMeetings_16','Main','Y'),(409,'admin','2019-11-09 09:02:52',NULL,NULL,'Posted','Posted',6,'vw_committeemeetings','CommitteeMeetings_16','Main','Y'),(410,'admin','2019-11-09 09:02:52',NULL,NULL,'DatePosted','DatePosted',7,'vw_committeemeetings','CommitteeMeetings_16','Main','N'),(411,'admin','2019-11-09 09:02:52',NULL,NULL,'Agenda','Agenda',4,'vw_committeemeetings','CommitteeMeetings_16','Main','Y'),(412,'admin','2019-11-09 09:02:52',NULL,NULL,'CommitteeName','CommitteeName',1,'vw_committeemeetings','CommitteeMeetings_16','Main','Y'),(413,'admin','2019-11-09 09:02:52',NULL,NULL,'ClerkName','ClerkName',5,'vw_committeemeetings','CommitteeMeetings_16','Main','Y'),(414,'admin','2019-11-09 09:02:53',NULL,NULL,'MeetingTime','MeetingTime',2,'vw_committeemeetings','CommitteeMeetings_16','Main','Y'),(415,'admin','2019-12-05 11:02:14',NULL,NULL,'CreatedBy','CreatedBy',3,'dh_emailtemplates','EmailTemplates_36','Main','Y'),(416,'admin','2019-12-05 11:02:14',NULL,NULL,'DateCreated','DateCreated',4,'dh_emailtemplates','EmailTemplates_36','Main','Y'),(417,'admin','2019-12-05 11:02:14',NULL,NULL,'TempName','Temp Name',1,'dh_emailtemplates','EmailTemplates_36','Main','Y'),(418,'admin','2019-12-05 11:02:14',NULL,NULL,'TempSubject','Temp Subject',2,'dh_emailtemplates','EmailTemplates_36','Main','Y'),(419,'admin','2020-03-03 10:14:16',NULL,NULL,'CreatedBy','CreatedBy',5,'vw_notifications','CommitteeNotifications_38','Main','Y'),(420,'admin','2020-03-03 10:14:17',NULL,NULL,'DateCreated','DateCreated',1,'vw_notifications','CommitteeNotifications_38','Main','N'),(421,'admin','2020-03-03 10:14:17',NULL,NULL,'NType','Type',2,'vw_notifications','CommitteeNotifications_38','Main','Y'),(422,'admin','2020-03-03 10:14:17',NULL,NULL,'NBody','Notification',3,'vw_notifications','CommitteeNotifications_38','Main','Y'),(423,'admin','2020-03-03 10:14:17',NULL,NULL,'CommitteeName','CommitteeName',4,'vw_notifications','CommitteeNotifications_38','Main','Y'),(431,'admin','2021-01-20 17:44:55',NULL,NULL,'CreatedBy','CreatedBy',3,'conferenceroom','Room_39','Main','N'),(432,'admin','2021-01-20 17:44:55',NULL,NULL,'name','name',1,'conferenceroom','Room_39','Main','Y'),(433,'admin','2021-01-20 17:44:55',NULL,NULL,'link','link',2,'conferenceroom','Room_39','Main','Y'),(434,'admin','2021-01-20 17:44:55',NULL,NULL,'Status','Status',4,'conferenceroom','Room_39','Main','Y'),(435,'admin','2021-01-20 17:44:55',NULL,NULL,'started_on','started_on',5,'conferenceroom','Room_39','Main','N'),(436,'admin','2021-01-20 17:44:55',NULL,NULL,'ScheduleDate','ScheduleDate',6,'conferenceroom','Room_39','Main','N'),(437,'admin','2021-01-20 17:44:55',NULL,NULL,'ended_on','ended_on',7,'conferenceroom','Room_39','Main','N'),(438,'admin','2021-01-20 17:56:34',NULL,NULL,'CreatedBy','CreatedBy',0,'conferenceinvites','Invites_40','Main','N'),(439,'admin','2021-01-20 17:56:34',NULL,NULL,'DateCreated','DateCreated',0,'conferenceinvites','Invites_40','Main','N'),(440,'admin','2021-01-20 17:56:34',NULL,NULL,'conferenceroom_id','conferenceroom_id',0,'conferenceinvites','Invites_40','Main','N'),(441,'admin','2021-01-20 17:56:34',NULL,NULL,'user_id','user_id',0,'conferenceinvites','Invites_40','Main','N');
/*!40000 ALTER TABLE `dh_listview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_modules`
--

DROP TABLE IF EXISTS `dh_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_modules` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `ModuleName` varchar(255) DEFAULT NULL,
  `ModuleCode` varchar(255) DEFAULT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `AppName` varchar(255) DEFAULT NULL,
  `ACL` varchar(255) DEFAULT NULL,
  `DisplayOrder` int DEFAULT NULL,
  `IconRef` varchar(255) DEFAULT NULL,
  `DeleteItems` varchar(255) DEFAULT 'Y',
  `CheckExist` varchar(255) DEFAULT NULL,
  `EnableCreation` varchar(255) DEFAULT 'Y',
  `DisplayButton` varchar(255) DEFAULT NULL,
  `ModuleType` varchar(255) DEFAULT 'CRUD',
  `ModuleListView` varchar(255) DEFAULT 'Default',
  `ExcludePermsList` varchar(255) DEFAULT 'N',
  `ParentTable` varchar(255) DEFAULT NULL,
  `ExemptRole` varchar(255) DEFAULT 'N',
  `ButtonType` varchar(255) DEFAULT 'OpenLink',
  `ButtonAttributes` varchar(1024) DEFAULT NULL,
  `EnablePreview` varchar(255) NOT NULL DEFAULT 'Y',
  `Helpcontext` longtext,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_modules`
--

LOCK TABLES `dh_modules` WRITE;
/*!40000 ALTER TABLE `dh_modules` DISABLE KEYS */;
INSERT INTO `dh_modules` VALUES (1,'admin','2019-05-21 12:11:08','admin','2019-11-08 11:03:50','UserProfile','UserProfile','TestTbl','UserProfile','Null',1,'fa fa-adjust','N',NULL,'N',NULL,'CRUD','Default','Y',NULL,'Y','OpenLink',NULL,'N',NULL),(2,'admin','2019-05-21 12:55:22','admin','2019-05-22 07:17:46','Manage Users','ManageUsers','vw_userslist','SystemApps',NULL,1,'fa fa-users','Y',NULL,'Y',NULL,'CRUD','Default','Y','dh_users','Y','OpenLink',NULL,'Y',NULL),(3,'admin','2019-05-21 12:57:30','admin','2019-06-19 16:51:13','Documents AccessLog','DocumentsAccessLog','vw_fileaccesslog','SystemApps',NULL,6,'fa fa-bus','N',NULL,'N',NULL,'CRUD','Default','Y','fileaccesslog','N','OpenLink',NULL,'N',NULL),(5,'admin','2019-05-21 13:01:29','admin','2019-06-19 16:50:55','Manage User Profiles','ManageUserProfiles','dh_userprofiles','SystemApps',NULL,4,'fa fa-cart-plus','Y',NULL,'Y',NULL,'CRUD','Default','N',NULL,'Y','OpenLink',NULL,'Y',NULL),(6,'admin','2019-05-21 13:03:18','admin','2019-07-08 14:37:13','Manage User Groups','ManageUserGroups','vw_dhrolegroups','SystemApps',NULL,2,'fa fa-arrow-up','N',NULL,'Y',NULL,'CRUD','Default','N','dhrolegroups','N','OpenLink',NULL,'Y',NULL),(7,'admin','2019-05-21 13:05:10','admin','2019-07-02 12:21:52','User Login History','UserLoginHistory','syslogin','SystemApps',NULL,5,'fa fa-wrench','N',NULL,'N',NULL,'CRUD','Default','N',NULL,'Y','OpenLink',NULL,'N',NULL),(9,'admin','2019-06-19 13:15:32','admin','2019-11-27 13:32:12','Committees','Committees_9','vw_assemblycommittees','CommitteeMngt',NULL,1,'fa fa-calendar-alt','Y',NULL,'Y',NULL,'ReportView','Custom','N','assemblycommittees','N','OpenLink',NULL,'Y','<h1 style=\"font-style: italic;\">sdgsgh</h1>\n\n<ul>\n	<li>ddj</li>\n	<li>djdj</li>\n	<li>djd</li>\n	<li>jdjd</li>\n	<li>jjd</li>\n</ul>\n'),(11,'admin','2019-06-19 22:22:27','admin','2019-11-27 14:17:39','Members','Members_11','committemembers','CommitteeMngt',NULL,2,'fa fa-users','N','','Y',NULL,'ReportView','Custom','N',NULL,'N','OpenLink',NULL,'Y',NULL),(15,'admin','2019-06-19 23:52:14','kevin','2020-02-20 10:31:07','Allowances Rate','AllowancesRate_15','allowancesrate','Accounts',NULL,4,'fa fa-dollar-sign','N',NULL,'N',NULL,'CRUD','Default','N',NULL,'N','OpenLink',NULL,'N',NULL),(16,'admin','2019-06-25 01:53:19','admin','2019-11-27 16:06:51','Committee Meetings','CommitteeMeetings_16','vw_committeemeetings','CommitteeMngt',NULL,3,'fa fa-clock','N',NULL,'Y',NULL,'ReportView','Custom','N','committeemeetings','N','OpenLink',NULL,'Y',NULL),(21,'admin','2019-07-04 06:10:26',NULL,NULL,'Document Categories','DocumentCategories_21','assemblybusiness','Assembly',NULL,1,'fa fa-briefcase','Y',NULL,'Y',NULL,'CRUD','Default','N',NULL,'N','OpenLink',NULL,'Y',NULL),(22,'admin','2019-07-04 15:15:53','admin','2019-07-05 14:30:41','Assembly Documents','AssemblyDocuments_22','assemblybizdocs','Assembly',NULL,2,'fa fa-briefcase','Y',NULL,'Y',NULL,'CRUD','Custom','N',NULL,'N','OpenLink',NULL,'Y',NULL),(23,'admin','2019-07-04 15:31:49','gmwangi@kiambuassembly.go.ke','2019-07-08 13:56:21','General Settings','GeneralSettings','TestTbl','SystemApps',NULL,6,'fa fa-wrench','Y',NULL,'Y',NULL,'CRUD','Custom','N',NULL,'N','OpenLink',NULL,'Y',NULL),(24,'admin','2019-07-05 12:47:27','admin','2019-07-05 15:49:55','Committee Documents','CommitteeDocuments_24','assemblybizdocs','CommitteeMngt',NULL,4,'fa fa-briefcase','Y',NULL,'Y',NULL,'CRUD','Custom','N',NULL,'N','OpenLink',NULL,'Y',NULL),(25,'admin','2019-07-07 08:53:21','admin','2019-07-07 12:27:43','Other Documents','OtherDocuments_25','assemblybizdocs','Assembly',NULL,3,'fa fa-briefcase','Y',NULL,'Y',NULL,'CRUD','Custom','N',NULL,'N','OpenLink',NULL,'Y',NULL),(26,'admin','2019-07-07 20:27:27','admin','2019-11-27 16:25:58','Schedule of Meetings','ScheduleofMeetings_26','vw_scheduleofmeetings','CommitteeMngt',NULL,5,'fa fa-calendar','N',NULL,'Y',NULL,'ReportView','Custom','N','scheduleofmeetings','N','OpenLink',NULL,'Y',NULL),(27,'admin','2019-08-14 02:38:58','admin','2019-08-14 05:42:15','Attendance List - Committee','AttendanceList-Committee_27','vw_committeeattendance','Reports',NULL,1,'fa fa-balance-scale','N',NULL,'N',NULL,'ReportView','Custom','N','committeeattendance','N','OpenLink',NULL,'N',NULL),(28,'admin','2019-08-14 07:40:45','admin','2019-08-14 10:41:01','Committee Members-Allowances','CommitteeMembers-Allowances_28','vw_committeeattendance','Reports',NULL,2,'fa fa-balance-scale','N',NULL,'N',NULL,'ReportView','Custom','N','committeeattendance','N','OpenLink',NULL,'N',NULL),(29,'admin','2019-09-05 11:05:29','admin','2019-09-05 14:43:14','List Items','listitems','listitems','SystemApps',NULL,5,'fa fa-compress','N',NULL,'N',NULL,'ReportView','Custom','N',NULL,'N','OpenLink',NULL,'N',NULL),(30,'admin','2019-09-05 14:52:23',NULL,NULL,'Plenary Sessions','PlenarySessions_30','vw_plenarymeetings','Assembly',NULL,5,'fa fa-clipboard-check','Y',NULL,'Y',NULL,'CRUD','Default','N','plenarymeetings','N','OpenLink',NULL,'Y',NULL),(34,'admin','2019-11-07 08:08:38',NULL,NULL,'SMS Templates','SMSTemplates_34','tbl_smstemplates','Communication',NULL,1,'fa fa-angle-double-down','Y',NULL,'Y',NULL,'CRUD','Default','N',NULL,'N','OpenLink',NULL,'Y',NULL),(35,'admin','2019-11-07 09:21:34','admin','2019-11-07 12:21:43','Compose SMS','ComposeSMS_35','vw_messageout','Communication',NULL,2,'fa fa-ambulance','Y',NULL,'Y',NULL,'ReportView','Custom','N','messageout','N','OpenLink',NULL,'Y',NULL),(36,'admin','2019-12-05 11:01:46',NULL,NULL,'Email Templates','EmailTemplates_36','dh_emailtemplates','SystemApps',NULL,6,'fa fa-envelope','Y',NULL,'Y',NULL,'CRUD','Default','N',NULL,'N','OpenLink',NULL,'Y',NULL),(37,'admin','2020-01-23 11:49:10','admin','2020-01-23 14:49:33','Calender','Calender_37','TestTbl','UserProfile',NULL,2,'fa fa-calendar','N',NULL,'N',NULL,'ReportView','Custom','Y',NULL,'Y','OpenLink',NULL,'N',NULL),(38,'admin','2020-03-03 10:12:37','admin','2020-03-03 13:12:56','Committee Notifications','CommitteeNotifications_38','vw_notifications','CommitteeMngt',NULL,6,'fa fa-align-left','Y',NULL,'Y',NULL,'CRUD','Custom','N',NULL,'N','OpenLink',NULL,'Y',NULL),(39,'admin','2021-01-20 17:42:53','admin','2021-01-20 20:43:06','Room','Room_39','conferenceroom','Conferencing',NULL,1,'fa fa-file-video','Y',NULL,'Y',NULL,'ReportView','Custom','N',NULL,'N','OpenLink',NULL,'Y',NULL),(40,'admin','2021-01-20 17:55:12',NULL,NULL,'Invites','Invites_40','conferenceinvites','Conferencing',NULL,2,'fa fa-gift','Y',NULL,'Y',NULL,'CRUD','Default','N',NULL,'N','OpenLink',NULL,'Y',NULL);
/*!40000 ALTER TABLE `dh_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_processinstances`
--

DROP TABLE IF EXISTS `dh_processinstances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_processinstances` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `WorkFlowID` int DEFAULT NULL,
  `WorkFlowStepID` int DEFAULT NULL,
  `ModuleID` int DEFAULT NULL,
  `WFitemID` int DEFAULT NULL,
  `WFAction` int DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_processinstances`
--

LOCK TABLES `dh_processinstances` WRITE;
/*!40000 ALTER TABLE `dh_processinstances` DISABLE KEYS */;
/*!40000 ALTER TABLE `dh_processinstances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_profilepermissions`
--

DROP TABLE IF EXISTS `dh_profilepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_profilepermissions` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `ProfileID` int DEFAULT NULL,
  `ModCode` int DEFAULT NULL,
  `ModOperation` varchar(255) DEFAULT NULL,
  `IsAllowed` varchar(255) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_profilepermissions`
--

LOCK TABLES `dh_profilepermissions` WRITE;
/*!40000 ALTER TABLE `dh_profilepermissions` DISABLE KEYS */;
INSERT INTO `dh_profilepermissions` VALUES (25,'admin','2019-06-19 18:48:04',NULL,NULL,2,9,'View','1'),(26,'admin','2019-06-19 18:48:04',NULL,NULL,2,10,'View','0'),(27,'admin','2019-06-19 18:48:04',NULL,NULL,2,5,'View','0'),(28,'admin','2019-06-19 18:48:04',NULL,NULL,2,6,'View','1'),(29,'admin','2019-06-19 18:48:04',NULL,NULL,2,7,'View','0'),(30,'admin','2019-06-19 18:48:04',NULL,NULL,2,1,'View','1'),(370,'admin','2019-11-09 08:22:18',NULL,NULL,5,15,'View','0'),(371,'admin','2019-11-09 08:22:18',NULL,NULL,5,22,'View','0'),(372,'admin','2019-11-09 08:22:18',NULL,NULL,5,25,'View','0'),(373,'admin','2019-11-09 08:22:19',NULL,NULL,5,30,'View','1'),(374,'admin','2019-11-09 08:22:19',NULL,NULL,5,21,'View','0'),(375,'admin','2019-11-09 08:22:19',NULL,NULL,5,9,'View','0'),(376,'admin','2019-11-09 08:22:19',NULL,NULL,5,11,'View','0'),(377,'admin','2019-11-09 08:22:19',NULL,NULL,5,16,'View','0'),(378,'admin','2019-11-09 08:22:19',NULL,NULL,5,24,'View','0'),(379,'admin','2019-11-09 08:22:19',NULL,NULL,5,26,'View','0'),(380,'admin','2019-11-09 08:22:19',NULL,NULL,5,34,'View','1'),(381,'admin','2019-11-09 08:22:19',NULL,NULL,5,35,'View','1'),(382,'admin','2019-11-09 08:22:19',NULL,NULL,5,27,'View','0'),(383,'admin','2019-11-09 08:22:20',NULL,NULL,5,28,'View','0'),(384,'admin','2019-11-09 08:22:20',NULL,NULL,5,29,'View','0'),(385,'admin','2019-11-09 08:22:20',NULL,NULL,5,5,'View','0'),(386,'admin','2019-11-09 08:22:20',NULL,NULL,5,6,'View','0'),(387,'admin','2019-11-09 08:22:20',NULL,NULL,5,7,'View','0'),(388,'admin','2019-11-09 08:22:20',NULL,NULL,5,23,'View','0'),(389,'admin','2019-11-09 09:15:47',NULL,NULL,3,15,'View','1'),(390,'admin','2019-11-09 09:15:47',NULL,NULL,3,22,'View','0'),(391,'admin','2019-11-09 09:15:47',NULL,NULL,3,25,'View','0'),(392,'admin','2019-11-09 09:15:48',NULL,NULL,3,30,'View','0'),(393,'admin','2019-11-09 09:15:48',NULL,NULL,3,21,'View','0'),(394,'admin','2019-11-09 09:15:48',NULL,NULL,3,9,'View','0'),(395,'admin','2019-11-09 09:15:48',NULL,NULL,3,11,'View','0'),(396,'admin','2019-11-09 09:15:48',NULL,NULL,3,16,'View','0'),(397,'admin','2019-11-09 09:15:48',NULL,NULL,3,24,'View','0'),(398,'admin','2019-11-09 09:15:48',NULL,NULL,3,26,'View','0'),(399,'admin','2019-11-09 09:15:48',NULL,NULL,3,34,'View','0'),(400,'admin','2019-11-09 09:15:49',NULL,NULL,3,35,'View','0'),(401,'admin','2019-11-09 09:15:49',NULL,NULL,3,27,'View','1'),(402,'admin','2019-11-09 09:15:49',NULL,NULL,3,28,'View','1'),(403,'admin','2019-11-09 09:15:49',NULL,NULL,3,29,'View','0'),(404,'admin','2019-11-09 09:15:49',NULL,NULL,3,5,'View','0'),(405,'admin','2019-11-09 09:15:49',NULL,NULL,3,6,'View','0'),(406,'admin','2019-11-09 09:15:49',NULL,NULL,3,7,'View','0'),(407,'admin','2019-11-09 09:15:50',NULL,NULL,3,23,'View','0'),(408,'admin','2020-03-03 10:18:17',NULL,NULL,4,15,'View','0'),(409,'admin','2020-03-03 10:18:17',NULL,NULL,4,21,'View','0'),(410,'admin','2020-03-03 10:18:17',NULL,NULL,4,22,'View','0'),(411,'admin','2020-03-03 10:18:17',NULL,NULL,4,25,'View','0'),(412,'admin','2020-03-03 10:18:17',NULL,NULL,4,30,'View','0'),(413,'admin','2020-03-03 10:18:18',NULL,NULL,4,38,'View','1'),(414,'admin','2020-03-03 10:18:18',NULL,NULL,4,26,'View','1'),(415,'admin','2020-03-03 10:18:18',NULL,NULL,4,24,'View','1'),(416,'admin','2020-03-03 10:18:18',NULL,NULL,4,16,'View','1'),(417,'admin','2020-03-03 10:18:18',NULL,NULL,4,11,'View','1'),(418,'admin','2020-03-03 10:18:18',NULL,NULL,4,9,'View','1'),(419,'admin','2020-03-03 10:18:18',NULL,NULL,4,34,'View','1'),(420,'admin','2020-03-03 10:18:18',NULL,NULL,4,35,'View','1'),(421,'admin','2020-03-03 10:18:19',NULL,NULL,4,28,'View','0'),(422,'admin','2020-03-03 10:18:19',NULL,NULL,4,27,'View','0'),(423,'admin','2020-03-03 10:18:19',NULL,NULL,4,5,'View','0'),(424,'admin','2020-03-03 10:18:19',NULL,NULL,4,6,'View','0'),(425,'admin','2020-03-03 10:18:19',NULL,NULL,4,7,'View','0'),(426,'admin','2020-03-03 10:18:19',NULL,NULL,4,23,'View','0'),(427,'admin','2020-03-03 10:18:19',NULL,NULL,4,29,'View','0'),(428,'admin','2020-03-03 10:18:19',NULL,NULL,4,36,'View','0'),(451,'admin','2021-01-20 17:57:08',NULL,NULL,1,15,'View','1'),(452,'admin','2021-01-20 17:57:08',NULL,NULL,1,21,'View','1'),(453,'admin','2021-01-20 17:57:08',NULL,NULL,1,22,'View','1'),(454,'admin','2021-01-20 17:57:08',NULL,NULL,1,30,'View','1'),(455,'admin','2021-01-20 17:57:08',NULL,NULL,1,25,'View','1'),(456,'admin','2021-01-20 17:57:08',NULL,NULL,1,38,'View','0'),(457,'admin','2021-01-20 17:57:08',NULL,NULL,1,26,'View','1'),(458,'admin','2021-01-20 17:57:08',NULL,NULL,1,24,'View','1'),(459,'admin','2021-01-20 17:57:08',NULL,NULL,1,16,'View','1'),(460,'admin','2021-01-20 17:57:08',NULL,NULL,1,11,'View','1'),(461,'admin','2021-01-20 17:57:08',NULL,NULL,1,9,'View','1'),(462,'admin','2021-01-20 17:57:08',NULL,NULL,1,34,'View','1'),(463,'admin','2021-01-20 17:57:08',NULL,NULL,1,35,'View','1'),(464,'admin','2021-01-20 17:57:08',NULL,NULL,1,39,'View','1'),(465,'admin','2021-01-20 17:57:08',NULL,NULL,1,40,'View','1'),(466,'admin','2021-01-20 17:57:08',NULL,NULL,1,28,'View','1'),(467,'admin','2021-01-20 17:57:08',NULL,NULL,1,27,'View','1'),(468,'admin','2021-01-20 17:57:08',NULL,NULL,1,5,'View','1'),(469,'admin','2021-01-20 17:57:08',NULL,NULL,1,6,'View','1'),(470,'admin','2021-01-20 17:57:08',NULL,NULL,1,7,'View','1'),(471,'admin','2021-01-20 17:57:08',NULL,NULL,1,23,'View','1'),(472,'admin','2021-01-20 17:57:08',NULL,NULL,1,29,'View','0'),(473,'admin','2021-01-20 17:57:08',NULL,NULL,1,36,'View','0');
/*!40000 ALTER TABLE `dh_profilepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_templateprefix`
--

DROP TABLE IF EXISTS `dh_templateprefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_templateprefix` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `Prefix` varchar(255) DEFAULT NULL,
  `PaddingSize` int DEFAULT NULL,
  `TblColumn` varchar(255) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_templateprefix`
--

LOCK TABLES `dh_templateprefix` WRITE;
/*!40000 ALTER TABLE `dh_templateprefix` DISABLE KEYS */;
/*!40000 ALTER TABLE `dh_templateprefix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_tmpfiles`
--

DROP TABLE IF EXISTS `dh_tmpfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_tmpfiles` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `DocID` int DEFAULT NULL,
  `tmpFile` varchar(255) DEFAULT NULL,
  `tmpindex` int DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_tmpfiles`
--

LOCK TABLES `dh_tmpfiles` WRITE;
/*!40000 ALTER TABLE `dh_tmpfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `dh_tmpfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_usergroups`
--

DROP TABLE IF EXISTS `dh_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_usergroups` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `GroupName` varchar(255) DEFAULT NULL,
  `GroupCode` varchar(255) DEFAULT NULL,
  `GroupDescription` varchar(255) DEFAULT NULL,
  `GroupUsers` longtext,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_usergroups`
--

LOCK TABLES `dh_usergroups` WRITE;
/*!40000 ALTER TABLE `dh_usergroups` DISABLE KEYS */;
INSERT INTO `dh_usergroups` VALUES (1,'admin','2019-06-19 15:50:50',NULL,NULL,'Hansard','Hansard','Hansard',NULL),(2,'admin','2019-07-07 20:33:22',NULL,NULL,'Clerks','Clerks','To Manage Committees',NULL),(4,'admin','2019-07-08 10:47:07',NULL,NULL,'SysManager','SysManager','System Admnistrators',NULL),(5,'admin','2019-08-14 09:40:12',NULL,NULL,'Accounts','Accounts','Accounts ',NULL),(6,'admin','2019-11-09 08:10:23',NULL,NULL,'Sergeants','Sergeants','Sergeants',NULL);
/*!40000 ALTER TABLE `dh_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_userprofiles`
--

DROP TABLE IF EXISTS `dh_userprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_userprofiles` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `ProfileName` varchar(255) DEFAULT NULL,
  `ProfileDescription` varchar(255) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_userprofiles`
--

LOCK TABLES `dh_userprofiles` WRITE;
/*!40000 ALTER TABLE `dh_userprofiles` DISABLE KEYS */;
INSERT INTO `dh_userprofiles` VALUES (1,'admin','2019-06-19 16:20:21',NULL,NULL,'Sysadmin','Systems Admin'),(2,'admin','2019-06-19 18:47:56',NULL,NULL,'Hansard','Hansard'),(3,'admin','2019-08-14 09:41:42',NULL,NULL,'Accounts','Accounts'),(4,'admin','2019-11-09 08:07:16',NULL,NULL,'Clerks','Clerks'),(5,'admin','2019-11-09 08:11:45',NULL,NULL,'Sergeants','Sergeants');
/*!40000 ALTER TABLE `dh_userprofiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_users`
--

DROP TABLE IF EXISTS `dh_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_users` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `loginid` varchar(80) NOT NULL,
  `Fullname` varchar(80) DEFAULT NULL,
  `Phone` varchar(80) DEFAULT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `Position` varchar(80) DEFAULT NULL,
  `PhoneExt` varchar(80) DEFAULT NULL,
  `pswd` varchar(150) DEFAULT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'Normal',
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shift` varchar(255) DEFAULT 'Day',
  `Department` int DEFAULT NULL,
  `Division` int DEFAULT NULL,
  `ProfileImage` varchar(255) DEFAULT NULL,
  `UserStatus` varchar(255) DEFAULT 'Active',
  `DeActivatedBy` varchar(255) DEFAULT NULL,
  `DateDeActivated` datetime DEFAULT NULL,
  `DeActivateReason` varchar(255) DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_users`
--

LOCK TABLES `dh_users` WRITE;
/*!40000 ALTER TABLE `dh_users` DISABLE KEYS */;
INSERT INTO `dh_users` VALUES (1,'admin','System Admini','+254712364528','info@intellihub.co.ke',NULL,NULL,'1cf82e4057fb4354957dacb4174ce958','Admin',NULL,'2018-05-06 18:07:54','Day',NULL,NULL,'panel/profilepics/NQZJZibAWgzfCJZHSHZNhws1QjAYJ4tbWr3ZkkZqXjc.png','Active',NULL,NULL,NULL,NULL,NULL),(153,'kevin','Kevin Mungai','+254712364528','vokenp@gmail.com','manager','232','cf570ff5b22e760a7122acc8fbbe99af','Admin','admin','2019-06-19 15:06:27','Day',NULL,NULL,NULL,'Active',NULL,NULL,NULL,'admin','2019-11-07 18:32:02'),(173,'njuguna','Njuguna Chege','22','njuguna.chege@intellihub.co.ke','Manager','22','32430ac66fbd5cf188f2fa75e94d8078','Admin','admin','2019-07-16 13:08:24','Day',NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dh_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_workflowactions`
--

DROP TABLE IF EXISTS `dh_workflowactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_workflowactions` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `ActionName` varchar(255) DEFAULT NULL,
  `ActionCode` varchar(255) DEFAULT NULL,
  `ACL` varchar(255) DEFAULT NULL,
  `DisplayOrder` int DEFAULT NULL,
  `IconRef` varchar(255) DEFAULT NULL,
  `RouteTo` varchar(255) DEFAULT NULL,
  `WorkFlowStepID` int DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_workflowactions`
--

LOCK TABLES `dh_workflowactions` WRITE;
/*!40000 ALTER TABLE `dh_workflowactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `dh_workflowactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dh_workflows`
--

DROP TABLE IF EXISTS `dh_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dh_workflows` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `workFlowName` varchar(255) DEFAULT NULL,
  `workFlowCode` varchar(255) DEFAULT NULL,
  `ACL` varchar(255) DEFAULT NULL,
  `ModuleName` varchar(255) DEFAULT NULL,
  `IconRef` varchar(255) DEFAULT NULL,
  `DisplayOrder` int DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dh_workflows`
--

LOCK TABLES `dh_workflows` WRITE;
/*!40000 ALTER TABLE `dh_workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `dh_workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dhalerts`
--

DROP TABLE IF EXISTS `dhalerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dhalerts` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `MsgSubject` varchar(255) DEFAULT NULL,
  `MsgBody` longtext,
  `MsgRecipient` longtext,
  `MsgRecipientCC` longtext,
  `MsgType` varchar(255) DEFAULT NULL,
  `MsgStatus` varchar(255) DEFAULT 'Pending',
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dhalerts`
--

LOCK TABLES `dhalerts` WRITE;
/*!40000 ALTER TABLE `dhalerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `dhalerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dhcomments`
--

DROP TABLE IF EXISTS `dhcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dhcomments` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `AssetID` varchar(255) DEFAULT NULL,
  `ElementType` varchar(255) DEFAULT NULL,
  `TopicName` varchar(255) DEFAULT NULL,
  `ACL` varchar(255) DEFAULT NULL,
  `CommentBody` varchar(255) DEFAULT NULL,
  `ParentID` int DEFAULT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `ViewGroups` longtext,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dhcomments`
--

LOCK TABLES `dhcomments` WRITE;
/*!40000 ALTER TABLE `dhcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `dhcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elementstorage`
--

DROP TABLE IF EXISTS `elementstorage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elementstorage` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `FileStage` varchar(255) DEFAULT 'Free',
  `FileSize` int DEFAULT NULL,
  `Orginal_FileName` varchar(255) DEFAULT NULL,
  `New_FileName` varchar(255) DEFAULT NULL,
  `StoragePool` varchar(255) DEFAULT NULL,
  `FileDescription` varchar(255) DEFAULT NULL,
  `FileExt` varchar(255) DEFAULT NULL,
  `LockedBy` varchar(255) DEFAULT NULL,
  `DateLocked` datetime DEFAULT NULL,
  `Version` int DEFAULT '1',
  `PageCount` int DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`),
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementstorage`
--

LOCK TABLES `elementstorage` WRITE;
/*!40000 ALTER TABLE `elementstorage` DISABLE KEYS */;
/*!40000 ALTER TABLE `elementstorage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileaccesslog`
--

DROP TABLE IF EXISTS `fileaccesslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fileaccesslog` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `SessionID` varchar(255) DEFAULT NULL,
  `DocID` int DEFAULT NULL,
  `AccessIP` varchar(255) DEFAULT NULL,
  `AccessAgent` varchar(255) DEFAULT NULL,
  `LogAction` varchar(255) DEFAULT 'Access',
  `Reason` varchar(255) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileaccesslog`
--

LOCK TABLES `fileaccesslog` WRITE;
/*!40000 ALTER TABLE `fileaccesslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `fileaccesslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filetypes`
--

DROP TABLE IF EXISTS `filetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filetypes` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `TYPE_ID` varchar(10) NOT NULL DEFAULT '',
  `TYPE_TYPE` varchar(3) DEFAULT NULL,
  `TYPE_MIMECONTENT` varchar(50) DEFAULT NULL,
  `TYPE_MIMESUBCONTENT` varchar(50) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filetypes`
--

LOCK TABLES `filetypes` WRITE;
/*!40000 ALTER TABLE `filetypes` DISABLE KEYS */;
INSERT INTO `filetypes` VALUES (1,'3fr','img','image','3fr'),(2,'3gp','vid','video','3gpp'),(3,'aff','aud','',''),(4,'aft','aud','',''),(5,'ai','img','application','photoshop'),(6,'aif','aud','audio','x-aiff'),(7,'aifc','aud','audio','x-aiff'),(8,'aiff','aud','audio','x-aiff'),(9,'ari','img','image','ari'),(10,'arw','img','image','arw'),(11,'au','aud','audio','basic'),(12,'avi','vid','video','avi'),(13,'bay','img','image','bay'),(14,'bmp','img','image','bmp'),(15,'cal','img','',''),(16,'cap','img','image','cap'),(17,'ciff','img','image','ciff'),(18,'cr2','img','image','cr2'),(19,'crw','img','image','crw'),(20,'cs1','img','image','cs1'),(21,'dcm','img','',''),(22,'dcr','img','image','dcr'),(23,'dng','img','image','dng'),(24,'doc','doc','application','vnd.ms-word'),(25,'docx','doc','application','vnd.ms-word'),(26,'drf','img','image','drf'),(27,'eip','img','image','eip'),(28,'eps','img','application','eps'),(29,'erf','img','image','erf'),(30,'f4v','vid','application','x-shockwave-flash'),(31,'fff','img','image','fff'),(32,'flac','aud','audio','flac'),(33,'flv','vid','application','x-shockwave-flash'),(34,'fpx','img','image','vnd.fpx'),(35,'gif','img','image','gif'),(36,'iiq','img','image','iiq'),(37,'jpeg','img','image','jpeg'),(38,'jpg','img','image','jpg'),(39,'k25','img','image','k25'),(40,'kdc','img','image','kdc'),(41,'m2t','vid','video','m2t'),(42,'m2ts','vid','video','m2ts'),(43,'m3u','aud','audio','x-mpegurl'),(44,'m4a','aud','audio','x-m4a'),(45,'m4v','vid','video','quicktime'),(46,'mef','img','image','mef'),(47,'mid','aud','audio','mid'),(48,'mos','img','image','mos'),(49,'mov','vid','video','quicktime'),(50,'mp3','aud','audio','mpeg'),(51,'mp4','vid','video','mp4v-es'),(52,'mpg','vid','video','mpeg'),(53,'mrw','img','image','mrw'),(54,'mts','vid','video','mts'),(55,'mxf','vid','video','mxf'),(56,'nef','img','image','nef'),(57,'nrw','img','image','nrw'),(58,'ogg','aud','audio','ogg'),(59,'ogv','vid','video','ogv'),(60,'orf','img','image','orf'),(61,'pbm','img','image','pbm'),(62,'pct','img','',''),(63,'pcx','img','image','pcx'),(64,'pdf','doc','application','pdf'),(65,'pef','img','image','pef'),(66,'pgm','img','image','x-portable-graymap'),(67,'png','img','image','png'),(68,'pnm','img','image','x-portable-anymap'),(69,'ppm','img','image','x-portable-pixmap'),(70,'ppt','doc','application','vnd.ms-powerpoint'),(71,'pptx','doc','application','vnd.ms-powerpoint'),(72,'psb','img','application','photoshop'),(73,'psd','img','application','photoshop'),(74,'ptx','img','image','ptx'),(75,'r3d','img','image','r3d'),(76,'ra','aud','audio','x-pn-realaudio'),(77,'raf','img','image','raf'),(78,'ram','aud','audio','x-pn-realaudio'),(79,'ras','img','image','ras'),(80,'raw','img','image','raw'),(81,'rm','vid','application','vnd.rn-realmedia'),(82,'rmi','aud','audio','mid'),(83,'rpx','img','',''),(84,'rw2','img','image','rw2'),(85,'rwl','img','image','rwl'),(86,'rwz','img','image','rwz'),(87,'snd','aud','audio','basic'),(88,'sr2','img','image','sr2'),(89,'srf','img','image','srf'),(90,'srw','img','image','srw'),(91,'swf','vid','application','x-shockwave-flash'),(92,'tga','img','image','tga'),(93,'tif','img','image','tif'),(94,'tiff','img','image','tiff'),(95,'txt','doc','application','txt'),(96,'vob','vid','video','mpeg'),(97,'wav','aud','audio','x-wav'),(98,'wbmp','img','image','vnd.wap.wbmp'),(99,'webm','vid','video','webm'),(100,'wmv','vid','video','x-ms-wmv'),(101,'x3f','img','image','x3f'),(102,'xls','doc','application','vnd.ms-excel'),(103,'xlsx','doc','application','vnd.ms-excel');
/*!40000 ALTER TABLE `filetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listitems`
--

DROP TABLE IF EXISTS `listitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listitems` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `ItemCode` varchar(255) DEFAULT NULL,
  `ItemDescription` varchar(255) DEFAULT NULL,
  `ItemType` varchar(255) DEFAULT NULL,
  `ParentID` int DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=1523 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listitems`
--

LOCK TABLES `listitems` WRITE;
/*!40000 ALTER TABLE `listitems` DISABLE KEYS */;
INSERT INTO `listitems` VALUES (1,'admin','2018-05-06 11:24:57','',NULL,'fa fa-calendar-minus','fa fa-calendar-minus','FontAwesome',0),(2,'kevin','2018-05-06 11:24:57','',NULL,'AFG','Afghanistan','Country',0),(3,'kevin','2018-05-06 11:24:58','',NULL,'AGO','Angola','Country',0),(4,'kevin','2018-05-06 11:24:58','',NULL,'AIA','Anguilla','Country',0),(6,'kevin','2018-05-06 11:24:58','',NULL,'AND','Andorra','Country',0),(7,'kevin','2018-05-06 11:24:58','',NULL,'ANT','Netherlands Antilles','Country',0),(8,'kevin','2018-05-06 11:24:58','',NULL,'ARE','United Arab Emirates','Country',0),(9,'kevin','2018-05-06 11:24:58','',NULL,'ARG','Argentina','Country',0),(10,'kevin','2018-05-06 11:24:58','',NULL,'ASM','American Samoa','Country',0),(11,'kevin','2018-05-06 11:24:58','',NULL,'ATA','Antarctica','Country',0),(12,'kevin','2018-05-06 11:24:58','',NULL,'ATF','French Southern territories','Country',0),(14,'kevin','2018-05-06 11:24:58','',NULL,'AUS','Australia','Country',0),(15,'kevin','2018-05-06 11:24:58','',NULL,'AUT','Austria','Country',0),(16,'kevin','2018-05-06 11:24:58','',NULL,'AZE','Azerbaijan','Country',0),(17,'kevin','2018-05-06 11:24:58','',NULL,'BDI','Burundi','Country',0),(48,'kevin','2018-05-06 11:25:00','',NULL,'COM','Comoros','Country',0),(50,'kevin','2018-05-06 11:25:00','',NULL,'CRI','Costa Rica','Country',0),(51,'kevin','2018-05-06 11:25:00','',NULL,'CUB','Cuba','Country',0),(52,'kevin','2018-05-06 11:25:00','',NULL,'CXR','Christmas Island','Country',0),(53,'kevin','2018-05-06 11:25:00','',NULL,'CYM','Cayman Islands','Country',0),(54,'kevin','2018-05-06 11:25:00','',NULL,'CYP','Cyprus','Country',0),(55,'kevin','2018-05-06 11:25:00','',NULL,'CZE','Czech Republic','Country',0),(56,'kevin','2018-05-06 11:25:00','',NULL,'DEU','Germany','Country',0),(57,'kevin','2018-05-06 11:25:01','',NULL,'DJI','Djibouti','Country',0),(58,'kevin','2018-05-06 11:25:01','',NULL,'DMA','Dominica','Country',0),(59,'kevin','2018-05-06 11:25:01','',NULL,'DNK','Denmark','Country',0),(60,'kevin','2018-05-06 11:25:01','',NULL,'DOM','Dominican Republic','Country',0),(61,'kevin','2018-05-06 11:25:01','',NULL,'DZA','Algeria','Country',0),(62,'kevin','2018-05-06 11:25:01','',NULL,'ECU','Ecuador','Country',0),(63,'kevin','2018-05-06 11:25:01','',NULL,'EGY','Egypt','Country',0),(64,'kevin','2018-05-06 11:25:01','',NULL,'ERI','Eritrea','Country',0),(65,'kevin','2018-05-06 11:25:01','',NULL,'ESH','Western Sahara','Country',0),(66,'kevin','2018-05-06 11:25:01','',NULL,'ESP','Spain','Country',0),(67,'kevin','2018-05-06 11:25:01','',NULL,'EST','Estonia','Country',0),(68,'kevin','2018-05-06 11:25:01','',NULL,'ETH','Ethiopia','Country',0),(69,'kevin','2018-05-06 11:25:01','',NULL,'FIN','Finland','Country',0),(70,'kevin','2018-05-06 11:25:01','',NULL,'FJI','Fiji Islands','Country',0),(71,'kevin','2018-05-06 11:25:01','',NULL,'FLK','Falkland Islands','Country',0),(72,'kevin','2018-05-06 11:25:01','',NULL,'FRA','France','Country',0),(73,'kevin','2018-05-06 11:25:01','',NULL,'FRO','Faroe Islands','Country',0),(74,'kevin','2018-05-06 11:25:01','',NULL,'FSM','Micronesia, Federated States of','Country',0),(75,'kevin','2018-05-06 11:25:01','',NULL,'GAB','Gabon','Country',0),(76,'kevin','2018-05-06 11:25:02','',NULL,'GBR','United Kingdom','Country',0),(77,'kevin','2018-05-06 11:25:02','',NULL,'GEO','Georgia','Country',0),(78,'kevin','2018-05-06 11:25:02','',NULL,'GHA','Ghana','Country',0),(79,'kevin','2018-05-06 11:25:02','',NULL,'GIB','Gibraltar','Country',0),(80,'kevin','2018-05-06 11:25:02','',NULL,'GIN','Guinea','Country',0),(81,'kevin','2018-05-06 11:25:02','',NULL,'GLP','Guadeloupe','Country',0),(82,'kevin','2018-05-06 11:25:02','',NULL,'GMB','Gambia','Country',0),(83,'kevin','2018-05-06 11:25:02','',NULL,'GNB','Guinea-Bissau','Country',0),(84,'kevin','2018-05-06 11:25:02','',NULL,'GNQ','Equatorial Guinea','Country',0),(85,'kevin','2018-05-06 11:25:02','',NULL,'GRC','Greece','Country',0),(86,'kevin','2018-05-06 11:25:02','',NULL,'GRD','Grenada','Country',0),(87,'kevin','2018-05-06 11:25:02','',NULL,'GRL','Greenland','Country',0),(88,'kevin','2018-05-06 11:25:02','',NULL,'GTM','Guatemala','Country',0),(89,'kevin','2018-05-06 11:25:02','',NULL,'GUF','French Guiana','Country',0),(90,'kevin','2018-05-06 11:25:03','',NULL,'GUM','Guam','Country',0),(91,'kevin','2018-05-06 11:25:03','',NULL,'GUY','Guyana','Country',0),(92,'kevin','2018-05-06 11:25:03','',NULL,'HKG','Hong Kong','Country',0),(93,'kevin','2018-05-06 11:25:03','',NULL,'HMD','Heard Island and McDonald Islands','Country',0),(94,'kevin','2018-05-06 11:25:03','',NULL,'HND','Honduras','Country',0),(95,'kevin','2018-05-06 11:25:03','',NULL,'HRV','Croatia','Country',0),(96,'kevin','2018-05-06 11:25:03','',NULL,'HTI','Haiti','Country',0),(97,'kevin','2018-05-06 11:25:03','',NULL,'HUN','Hungary','Country',0),(98,'kevin','2018-05-06 11:25:03','',NULL,'IDN','Indonesia','Country',0),(99,'kevin','2018-05-06 11:25:03','',NULL,'IND','India','Country',0),(100,'kevin','2018-05-06 11:25:03','',NULL,'IOT','British Indian Ocean Territory','Country',0),(101,'kevin','2018-05-06 11:25:03','',NULL,'IRL','Ireland','Country',0),(102,'kevin','2018-05-06 11:25:03','',NULL,'IRN','Iran','Country',0),(103,'kevin','2018-05-06 11:25:03','',NULL,'IRQ','Iraq','Country',0),(104,'kevin','2018-05-06 11:25:03','',NULL,'ISL','Iceland','Country',0),(105,'kevin','2018-05-06 11:25:03','',NULL,'ISR','Israel','Country',0),(106,'kevin','2018-05-06 11:25:03','',NULL,'ITA','Italy','Country',0),(107,'kevin','2018-05-06 11:25:03','',NULL,'JAM','Jamaica','Country',0),(108,'kevin','2018-05-06 11:25:03','',NULL,'JOR','Jordan','Country',0),(109,'kevin','2018-05-06 11:25:04','',NULL,'JPN','Japan','Country',0),(110,'kevin','2018-05-06 11:25:04','',NULL,'KAZ','Kazakstan','Country',0),(111,'kevin','2018-05-06 11:25:04','',NULL,'KEN','Kenya','Country',0),(112,'kevin','2018-05-06 11:25:04','',NULL,'KGZ','Kyrgyzstan','Country',0),(113,'kevin','2018-05-06 11:25:04','',NULL,'KHM','Cambodia','Country',0),(114,'kevin','2018-05-06 11:25:04','',NULL,'KIR','Kiribati','Country',0),(115,'kevin','2018-05-06 11:25:04','',NULL,'KNA','Saint Kitts and Nevis','Country',0),(116,'kevin','2018-05-06 11:25:04','',NULL,'KOR','South Korea','Country',0),(117,'kevin','2018-05-06 11:25:04','',NULL,'KWT','Kuwait','Country',0),(118,'kevin','2018-05-06 11:25:04','',NULL,'LAO','Laos','Country',0),(119,'kevin','2018-05-06 11:25:04','',NULL,'LBN','Lebanon','Country',0),(120,'kevin','2018-05-06 11:25:04','',NULL,'LBR','Liberia','Country',0),(121,'kevin','2018-05-06 11:25:04','',NULL,'LBY','Libyan Arab Jamahiriya','Country',0),(122,'kevin','2018-05-06 11:25:04','',NULL,'LCA','Saint Lucia','Country',0),(123,'kevin','2018-05-06 11:25:04','',NULL,'LIE','Liechtenstein','Country',0),(124,'kevin','2018-05-06 11:25:04','',NULL,'LKA','Sri Lanka','Country',0),(125,'kevin','2018-05-06 11:25:04','',NULL,'LSO','Lesotho','Country',0),(126,'kevin','2018-05-06 11:25:04','',NULL,'LTU','Lithuania','Country',0),(127,'kevin','2018-05-06 11:25:04','',NULL,'LUX','Luxembourg','Country',0),(128,'kevin','2018-05-06 11:25:04','',NULL,'LVA','Latvia','Country',0),(129,'kevin','2018-05-06 11:25:04','',NULL,'MAC','Macao','Country',0),(130,'kevin','2018-05-06 11:25:05','',NULL,'MAR','Morocco','Country',0),(131,'kevin','2018-05-06 11:25:05','',NULL,'MCO','Monaco','Country',0),(132,'kevin','2018-05-06 11:25:05','',NULL,'MDA','Moldova','Country',0),(133,'kevin','2018-05-06 11:25:05','',NULL,'MDG','Madagascar','Country',0),(134,'kevin','2018-05-06 11:25:05','',NULL,'MDV','Maldives','Country',0),(135,'kevin','2018-05-06 11:25:05','',NULL,'MEX','Mexico','Country',0),(136,'kevin','2018-05-06 11:25:05','',NULL,'MHL','Marshall Islands','Country',0),(137,'kevin','2018-05-06 11:25:05','',NULL,'MKD','Macedonia','Country',0),(138,'kevin','2018-05-06 11:25:05','',NULL,'MLI','Mali','Country',0),(139,'kevin','2018-05-06 11:25:05','',NULL,'MLT','Malta','Country',0),(140,'kevin','2018-05-06 11:25:05','',NULL,'MMR','Myanmar','Country',0),(141,'kevin','2018-05-06 11:25:05','',NULL,'MNG','Mongolia','Country',0),(142,'kevin','2018-05-06 11:25:05','',NULL,'MNP','Northern Mariana Islands','Country',0),(143,'kevin','2018-05-06 11:25:05','',NULL,'MOZ','Mozambique','Country',0),(144,'kevin','2018-05-06 11:25:05','',NULL,'MRT','Mauritania','Country',0),(145,'kevin','2018-05-06 11:25:05','',NULL,'MSR','Montserrat','Country',0),(146,'kevin','2018-05-06 11:25:05','',NULL,'MTQ','Martinique','Country',0),(147,'kevin','2018-05-06 11:25:05','',NULL,'MUS','Mauritius','Country',0),(148,'kevin','2018-05-06 11:25:05','',NULL,'MWI','Malawi','Country',0),(149,'kevin','2018-05-06 11:25:05','',NULL,'MYS','Malaysia','Country',0),(150,'kevin','2018-05-06 11:25:05','',NULL,'MYT','Mayotte','Country',0),(151,'kevin','2018-05-06 11:25:06','',NULL,'NAM','Namibia','Country',0),(152,'kevin','2018-05-06 11:25:06','',NULL,'NCL','New Caledonia','Country',0),(153,'kevin','2018-05-06 11:25:06','',NULL,'NER','Niger','Country',0),(154,'kevin','2018-05-06 11:25:06','',NULL,'NFK','Norfolk Island','Country',0),(155,'kevin','2018-05-06 11:25:06','',NULL,'NGA','Nigeria','Country',0),(156,'kevin','2018-05-06 11:25:06','',NULL,'NIC','Nicaragua','Country',0),(157,'kevin','2018-05-06 11:25:06','',NULL,'NIU','Niue','Country',0),(158,'kevin','2018-05-06 11:25:06','',NULL,'NLD','Netherlands','Country',0),(159,'kevin','2018-05-06 11:25:06','',NULL,'NOR','Norway','Country',0),(160,'kevin','2018-05-06 11:25:06','',NULL,'NPL','Nepal','Country',0),(161,'kevin','2018-05-06 11:25:06','',NULL,'NRU','Nauru','Country',0),(162,'kevin','2018-05-06 11:25:06','',NULL,'NZL','New Zealand','Country',0),(163,'kevin','2018-05-06 11:25:06','',NULL,'OMN','Oman','Country',0),(164,'kevin','2018-05-06 11:25:06','',NULL,'PAK','Pakistan','Country',0),(165,'kevin','2018-05-06 11:25:06','',NULL,'PAN','Panama','Country',0),(166,'kevin','2018-05-06 11:25:06','',NULL,'PCN','Pitcairn','Country',0),(167,'kevin','2018-05-06 11:25:06','',NULL,'PER','Peru','Country',0),(168,'kevin','2018-05-06 11:25:06','',NULL,'PHL','Philippines','Country',0),(169,'kevin','2018-05-06 11:25:06','',NULL,'PLW','Palau','Country',0),(170,'kevin','2018-05-06 11:25:06','',NULL,'PNG','Papua New Guinea','Country',0),(171,'kevin','2018-05-06 11:25:06','',NULL,'POL','Poland','Country',0),(172,'kevin','2018-05-06 11:25:06','',NULL,'PRI','Puerto Rico','Country',0),(173,'kevin','2018-05-06 11:25:07','',NULL,'PRK','North Korea','Country',0),(174,'kevin','2018-05-06 11:25:07','',NULL,'PRT','Portugal','Country',0),(175,'kevin','2018-05-06 11:25:07','',NULL,'PRY','Paraguay','Country',0),(176,'kevin','2018-05-06 11:25:07','',NULL,'PSE','Palestine','Country',0),(177,'kevin','2018-05-06 11:25:07','',NULL,'PYF','French Polynesia','Country',0),(178,'kevin','2018-05-06 11:25:07','',NULL,'QAT','Qatar','Country',0),(179,'kevin','2018-05-06 11:25:07','',NULL,'REU','RÃ©union','Country',0),(180,'kevin','2018-05-06 11:25:07','',NULL,'ROM','Romania','Country',0),(181,'kevin','2018-05-06 11:25:07','',NULL,'RUS','Russian Federation','Country',0),(182,'kevin','2018-05-06 11:25:07','',NULL,'RWA','Rwanda','Country',0),(183,'kevin','2018-05-06 11:25:07','',NULL,'SAU','Saudi Arabia','Country',0),(184,'kevin','2018-05-06 11:25:07','',NULL,'SDN','Sudan','Country',0),(185,'kevin','2018-05-06 11:25:07','',NULL,'SEN','Senegal','Country',0),(186,'kevin','2018-05-06 11:25:07','',NULL,'SGP','Singapore','Country',0),(187,'kevin','2018-05-06 11:25:07','',NULL,'SGS','South Georgia and the South Sandwich Islands','Country',0),(188,'kevin','2018-05-06 11:25:07','',NULL,'SHN','Saint Helena','Country',0),(189,'kevin','2018-05-06 11:25:07','',NULL,'SJM','Svalbard and Jan Mayen','Country',0),(190,'kevin','2018-05-06 11:25:07','',NULL,'SLB','Solomon Islands','Country',0),(191,'kevin','2018-05-06 11:25:07','',NULL,'SLE','Sierra Leone','Country',0),(192,'kevin','2018-05-06 11:25:07','',NULL,'SLV','El Salvador','Country',0),(193,'kevin','2018-05-06 11:25:07','',NULL,'SMR','San Marino','Country',0),(194,'kevin','2018-05-06 11:25:07','',NULL,'SOM','Somalia','Country',0),(195,'kevin','2018-05-06 11:25:07','',NULL,'SPM','Saint Pierre and Miquelon','Country',0),(196,'kevin','2018-05-06 11:25:07','',NULL,'STP','Sao Tome and Principe','Country',0),(197,'kevin','2018-05-06 11:25:07','',NULL,'SUR','Suriname','Country',0),(198,'kevin','2018-05-06 11:25:08','',NULL,'SVK','Slovakia','Country',0),(199,'kevin','2018-05-06 11:25:08','',NULL,'SVN','Slovenia','Country',0),(200,'kevin','2018-05-06 11:25:08','',NULL,'SWE','Sweden','Country',0),(201,'kevin','2018-05-06 11:25:08','',NULL,'SWZ','Swaziland','Country',0),(202,'kevin','2018-05-06 11:25:08','',NULL,'SYC','Seychelles','Country',0),(203,'kevin','2018-05-06 11:25:08','',NULL,'SYR','Syria','Country',0),(204,'kevin','2018-05-06 11:25:08','',NULL,'TCA','Turks and Caicos Islands','Country',0),(205,'kevin','2018-05-06 11:25:08','',NULL,'TCD','Chad','Country',0),(206,'kevin','2018-05-06 11:25:08','',NULL,'TGO','Togo','Country',0),(207,'kevin','2018-05-06 11:25:08','',NULL,'THA','Thailand','Country',0),(208,'kevin','2018-05-06 11:25:08','',NULL,'TJK','Tajikistan','Country',0),(209,'kevin','2018-05-06 11:25:08','',NULL,'TKL','Tokelau','Country',0),(210,'kevin','2018-05-06 11:25:08','',NULL,'TKM','Turkmenistan','Country',0),(211,'kevin','2018-05-06 11:25:08','',NULL,'TMP','East Timor','Country',0),(212,'kevin','2018-05-06 11:25:08','',NULL,'TON','Tonga','Country',0),(213,'kevin','2018-05-06 11:25:08','',NULL,'TTO','Trinidad and Tobago','Country',0),(214,'kevin','2018-05-06 11:25:08','',NULL,'TUN','Tunisia','Country',0),(215,'kevin','2018-05-06 11:25:08','',NULL,'TUR','Turkey','Country',0),(216,'kevin','2018-05-06 11:25:08','',NULL,'TUV','Tuvalu','Country',0),(217,'kevin','2018-05-06 11:25:08','',NULL,'TWN','Taiwan','Country',0),(218,'kevin','2018-05-06 11:25:08','',NULL,'TZA','Tanzania','Country',0),(219,'kevin','2018-05-06 11:25:08','',NULL,'UGA','Uganda','Country',0),(220,'kevin','2018-05-06 11:25:08','',NULL,'UKR','Ukraine','Country',0),(221,'kevin','2018-05-06 11:25:09','',NULL,'UMI','United States Minor Outlying Islands','Country',0),(222,'kevin','2018-05-06 11:25:09','',NULL,'URY','Uruguay','Country',0),(223,'kevin','2018-05-06 11:25:09','',NULL,'USA','United States','Country',0),(224,'kevin','2018-05-06 11:25:09','',NULL,'UZB','Uzbekistan','Country',0),(225,'kevin','2018-05-06 11:25:09','',NULL,'VAT','Holy See (Vatican City State)','Country',0),(226,'kevin','2018-05-06 11:25:09','',NULL,'VCT','Saint Vincent and the Grenadines','Country',0),(227,'kevin','2018-05-06 11:25:09','',NULL,'VEN','Venezuela','Country',0),(228,'kevin','2018-05-06 11:25:09','',NULL,'VGB','Virgin Islands, British','Country',0),(229,'kevin','2018-05-06 11:25:09','',NULL,'VIR','Virgin Islands, U.S.','Country',0),(230,'kevin','2018-05-06 11:25:09','',NULL,'VNM','Vietnam','Country',0),(231,'kevin','2018-05-06 11:25:09','',NULL,'VUT','Vanuatu','Country',0),(232,'kevin','2018-05-06 11:25:09','',NULL,'WLF','Wallis and Futuna','Country',0),(233,'kevin','2018-05-06 11:25:09','',NULL,'WSM','Samoa','Country',0),(234,'kevin','2018-05-06 11:25:09','',NULL,'YEM','Yemen','Country',0),(235,'kevin','2018-05-06 11:25:09','',NULL,'YUG','Yugoslavia','Country',0),(236,'kevin','2018-05-06 11:25:09','',NULL,'ZAF','South Africa','Country',0),(237,'kevin','2018-05-06 11:25:09','',NULL,'ZMB','Zambia','Country',0),(238,'kevin','2018-05-06 11:25:09','',NULL,'ZWE','Zimbabwe','Country',0),(239,'kevin','2018-05-06 11:25:09','',NULL,'Single','Single','MaritalStatus',0),(240,'kevin','2018-05-06 11:25:09','',NULL,'Married','Married','MaritalStatus',0),(241,'kevin','2018-05-06 11:25:09','',NULL,'Widowed','Widowed','MaritalStatus',0),(242,'kevin','2018-05-06 11:25:09','',NULL,'Divorced','Divorced','MaritalStatus',0),(243,'kevin','2018-05-06 11:25:09','',NULL,'NeverMarried','Never Married','MaritalStatus',0),(244,'kevin','2018-05-06 11:25:09','',NULL,'Male','Male','Gender',0),(245,'kevin','2018-05-06 11:25:10','',NULL,'Female','Female','Gender',0),(246,'admin','2018-05-06 11:25:10','',NULL,'Admin','Admin','usertype',0),(248,'','2018-05-06 11:25:10','',NULL,'Mombasa','Mombasa','Counties',0),(249,'','2018-05-06 11:25:10','',NULL,'Kwale','Kwale','Counties',0),(251,'','2018-05-06 11:25:10','',NULL,'TanaRiver','Tana River','Counties',0),(252,'','2018-05-06 11:25:10','',NULL,'Lamu','Lamu','Counties',0),(253,'','2018-05-06 11:25:10','',NULL,'TaitaTaveta','Taita Taveta','Counties',0),(254,'','2018-05-06 11:25:10','',NULL,'Garissa','Garissa','Counties',0),(255,'','2018-05-06 11:25:10','',NULL,'Wajir','Wajir','Counties',0),(256,'','2018-05-06 11:25:10','',NULL,'Mandera','Mandera','Counties',0),(257,'','2018-05-06 11:25:10','',NULL,'Marsabit','Marsabit','Counties',0),(258,'','2018-05-06 11:25:10','',NULL,'Isiolo','Isiolo','Counties',0),(259,'','2018-05-06 11:25:10','',NULL,'Meru','Meru','Counties',0),(260,'','2018-05-06 11:25:10','',NULL,'TharakaNithi','Tharaka Nithi','Counties',0),(261,'','2018-05-06 11:25:10','',NULL,'Embu','Embu','Counties',0),(263,'','2018-05-06 11:25:10','',NULL,'Machakos','Machakos','Counties',0),(264,'','2018-05-06 11:25:10','',NULL,'Makueni','Makueni','Counties',0),(265,'','2018-05-06 11:25:10','',NULL,'Nyandarua','Nyandarua','Counties',0),(266,'','2018-05-06 11:25:11','',NULL,'Nyeri','Nyeri','Counties',0),(267,'','2018-05-06 11:25:11','',NULL,'Kirinyaga','Kirinyaga','Counties',0),(268,'','2018-05-06 11:25:11','',NULL,'Muranga','Muranga','Counties',0),(269,'','2018-05-06 11:25:11','',NULL,'Kiambu','Kiambu','Counties',0),(270,'','2018-05-06 11:25:11','',NULL,'Turkana','Turkana','Counties',0),(271,'','2018-05-06 11:25:11','',NULL,'WestPokot','West Pokot','Counties',0),(272,'','2018-05-06 11:25:11','',NULL,'Samburu','Samburu','Counties',0),(273,'','2018-05-06 11:25:11','',NULL,'TransNzoia','Trans Nzoia','Counties',0),(274,'','2018-05-06 11:25:11','',NULL,'UasinGishu','Uasin Gishu','Counties',0),(275,'','2018-05-06 11:25:11','',NULL,'Elgeyo/Marakwet','Elgeyo/Marakwet','Counties',0),(276,'','2018-05-06 11:25:11','',NULL,'Nandi','Nandi','Counties',0),(277,'','2018-05-06 11:25:11','',NULL,'Baringo','Baringo','Counties',0),(278,'','2018-05-06 11:25:11','',NULL,'Laikipia','Laikipia','Counties',0),(279,'','2018-05-06 11:25:11','',NULL,'Nakuru','Nakuru','Counties',0),(280,'','2018-05-06 11:25:11','',NULL,'Narok','Narok','Counties',0),(281,'','2018-05-06 11:25:11','',NULL,'Kajiado','Kajiado','Counties',0),(282,'','2018-05-06 11:25:11','',NULL,'Kericho','Kericho','Counties',0),(283,'','2018-05-06 11:25:11','',NULL,'Bomet','Bomet','Counties',0),(284,'','2018-05-06 11:25:11','',NULL,'Kakamega','Kakamega','Counties',0),(285,'','2018-05-06 11:25:11','',NULL,'Vihiga','Vihiga','Counties',0),(286,'','2018-05-06 11:25:11','',NULL,'Bungoma','Bungoma','Counties',0),(287,'','2018-05-06 11:25:11','',NULL,'Busia','Busia','Counties',0),(288,'','2018-05-06 11:25:12','',NULL,'Siaya','Siaya','Counties',0),(290,'','2018-05-06 11:25:12','',NULL,'HomaBay','Homa Bay','Counties',0),(291,'','2018-05-06 11:25:12','',NULL,'Migori','Migori','Counties',0),(293,'','2018-05-06 11:25:12','',NULL,'Nyamira','Nyamira','Counties',0),(294,'','2018-05-06 11:25:12','',NULL,'Nairobi','Nairobi','Counties',0),(295,'admin','2018-05-06 11:25:12','',NULL,'Normal','Normal','AppType',0),(296,'admin','2018-05-06 11:25:12','',NULL,'WorkFlow','WorkFlow','AppType',0),(297,'admin','2018-05-06 11:25:12','',NULL,'CONTAINS','CONTAINS','filterConditions',0),(298,'admin','2018-05-06 11:25:12','',NULL,'DOES_NOT_CONTAIN','DOES NOT CONTAIN','filterConditions',0),(299,'admin','2018-05-06 11:25:12','',NULL,'EQUAL','EQUAL','filterConditions',0),(300,'admin','2018-05-06 11:25:12','',NULL,'NOT_EQUAL','NOT EQUAL','filterConditions',0),(301,'admin','2018-05-06 11:25:12','',NULL,'GREATER_THAN','GREATER THAN','filterConditions',0),(302,'admin','2018-05-06 11:25:12','',NULL,'LESS_THAN','LESS THAN','filterConditions',0),(303,'admin','2018-05-06 11:25:13','',NULL,'GREATER_THAN_OR_EQUAL','GREATER THAN OR EQUAL','filterConditions',0),(304,'admin','2018-05-06 11:25:13','',NULL,'LESS_THAN_OR_EQUAL','LESS THAN OR EQUAL','filterConditions',0),(305,'admin','2018-05-06 11:25:13','',NULL,'STARTS_WITH','STARTS WITH','filterConditions',0),(306,'admin','2018-05-06 11:25:13','',NULL,'ENDS_WITH','ENDS WITH','filterConditions',0),(307,'admin','2018-05-06 11:25:13','',NULL,'N','No','DeleteItems',0),(320,'admin','2018-05-06 11:25:14','',NULL,'Y','Yes','DeleteItems',0),(323,'admin','2018-05-06 11:25:14','',NULL,'#d2d6de','Bg-Gray','ColorPallete',0),(336,'admin','2018-05-06 11:25:14','',NULL,'#dd4b39','bg-red','ColorPallete',0),(338,'admin','2018-05-06 11:25:14','',NULL,'#f39c12','bg-yellow','ColorPallete',0),(339,'admin','2018-05-06 11:25:14','',NULL,'#00c0ef','bg-aqua','ColorPallete',0),(340,'admin','2018-05-06 11:25:14','',NULL,'#0073b7','bg-blue','ColorPallete',0),(341,'admin','2018-05-06 11:25:14','',NULL,'CRUD','CRUD','ModuleType',0),(342,'admin','2018-05-06 11:25:14','',NULL,'ReportView','ReportView','ModuleType',0),(343,'admin','2018-05-06 11:25:14','',NULL,'Default','Default','ModuleListView',0),(346,'admin','2018-05-06 11:25:15','',NULL,'FormButton','FormButton','MenuType',0),(348,'admin','2018-05-06 11:25:15','',NULL,'IconButton','IconButton','MenuType',0),(349,'admin','2018-05-06 11:25:15','',NULL,'ButtonDropDown','ButtonDropDown','MenuType',0),(351,'admin','2018-05-06 11:25:15','',NULL,'fa fa-percent','fa fa-percent','FontAwesome',0),(358,'admin','2018-05-06 11:25:15','',NULL,'Pop-Up','Pop-Up','MenuType',0),(364,'admin','2018-05-06 11:25:15','',NULL,'Custom','Custom','ModuleListView',0),(365,'admin','2018-05-06 11:25:15','',NULL,'#3c8dbc','bg-light-blue','ColorPallete',0),(366,'admin','2018-05-06 11:25:16','',NULL,'#00a65a','bg-green','ColorPallete',0),(367,'admin','2018-05-06 11:25:16','',NULL,'#001f3f','bg-navy','ColorPallete',0),(368,'admin','2018-05-06 11:25:16','',NULL,'#39cccc','bg-teal','ColorPallete',0),(369,'admin','2018-05-06 11:25:16','',NULL,'#3d9970','bg-olive','ColorPallete',0),(370,'admin','2018-05-06 11:25:16','',NULL,'#01ff70','bg-lime','ColorPallete',0),(371,'admin','2018-05-06 11:25:16','',NULL,'#ff851b','bg-orange','ColorPallete',0),(372,'admin','2018-05-06 11:25:16','',NULL,'#f012be','bg-fuchsia','ColorPallete',0),(373,'admin','2018-05-06 11:25:16','',NULL,'#605ca8','bg-purple','ColorPallete',0),(374,'admin','2018-05-06 11:25:16','',NULL,'#d81b60','bg--maroon','ColorPallete',0),(376,'admin','2018-05-06 11:25:16','',NULL,'fa fa-phone','fa fa-phone','FontAwesome',0),(377,'admin','2018-05-06 11:25:16','',NULL,'fa fa-phone-square','fa fa-phone-square','FontAwesome',0),(378,'admin','2018-05-06 11:25:16','',NULL,'fa fa-phone-volume','fa fa-phone-volume','FontAwesome',0),(379,'admin','2018-05-06 11:25:16','',NULL,'fa fa-pills','fa fa-pills','FontAwesome',0),(380,'admin','2018-05-06 11:25:16','',NULL,'fa fa-plane','fa fa-plane','FontAwesome',0),(381,'admin','2018-05-06 11:25:16','',NULL,'fa fa-play','fa fa-play','FontAwesome',0),(382,'admin','2018-05-06 11:25:16','',NULL,'fa fa-play-circle','fa fa-play-circle','FontAwesome',0),(383,'admin','2018-05-06 11:25:16','',NULL,'fa fa-plug','fa fa-plug','FontAwesome',0),(384,'admin','2018-05-06 11:25:16','',NULL,'fa fa-plus','fa fa-plus','FontAwesome',0),(385,'admin','2018-05-06 11:25:16','',NULL,'fa fa-plus-circle','fa fa-plus-circle','FontAwesome',0),(386,'admin','2018-05-06 11:25:16','',NULL,'fa fa-plus-square','fa fa-plus-square','FontAwesome',0),(387,'admin','2018-05-06 11:25:16','',NULL,'fa fa-podcast','fa fa-podcast','FontAwesome',0),(388,'admin','2018-05-06 11:25:16','',NULL,'fa fa-pound-sign','fa fa-pound-sign','FontAwesome',0),(389,'admin','2018-05-06 11:25:16','',NULL,'fa fa-power-off','fa fa-power-off','FontAwesome',0),(390,'admin','2018-05-06 11:25:17','',NULL,'fa fa-print','fa fa-print','FontAwesome',0),(391,'admin','2018-05-06 11:25:17','',NULL,'fa fa-puzzle-piece','fa fa-puzzle-piece','FontAwesome',0),(392,'admin','2018-05-06 11:25:17','',NULL,'fa fa-qrcode','fa fa-qrcode','FontAwesome',0),(393,'admin','2018-05-06 11:25:17','',NULL,'fa fa-question','fa fa-question','FontAwesome',0),(394,'admin','2018-05-06 11:25:17','',NULL,'fa fa-question-circle','fa fa-question-circle','FontAwesome',0),(395,'admin','2018-05-06 11:25:17','',NULL,'fa fa-quidditch','fa fa-quidditch','FontAwesome',0),(396,'admin','2018-05-06 11:25:17','',NULL,'fa fa-quote-left','fa fa-quote-left','FontAwesome',0),(397,'admin','2018-05-06 11:25:17','',NULL,'fa fa-quote-right','fa fa-quote-right','FontAwesome',0),(398,'admin','2018-05-06 11:25:17','',NULL,'fa fa-random','fa fa-random','FontAwesome',0),(399,'admin','2018-05-06 11:25:17','',NULL,'fa fa-recycle','fa fa-recycle','FontAwesome',0),(400,'admin','2018-05-06 11:25:17','',NULL,'fa fa-redo','fa fa-redo','FontAwesome',0),(401,'admin','2018-05-06 11:25:17','',NULL,'fa fa-redo-alt','fa fa-redo-alt','FontAwesome',0),(402,'admin','2018-05-06 11:25:17','',NULL,'fa fa-registered','fa fa-registered','FontAwesome',0),(403,'admin','2018-05-06 11:25:17','',NULL,'fa fa-reply','fa fa-reply','FontAwesome',0),(404,'admin','2018-05-06 11:25:17','',NULL,'fa fa-reply-all','fa fa-reply-all','FontAwesome',0),(405,'admin','2018-05-06 11:25:17','',NULL,'fa fa-retweet','fa fa-retweet','FontAwesome',0),(406,'admin','2018-05-06 11:25:17','',NULL,'fa fa-road','fa fa-road','FontAwesome',0),(407,'admin','2018-05-06 11:25:17','',NULL,'fa fa-rocket','fa fa-rocket','FontAwesome',0),(408,'admin','2018-05-06 11:25:17','',NULL,'fa fa-rss','fa fa-rss','FontAwesome',0),(409,'admin','2018-05-06 11:25:17','',NULL,'fa fa-rss-square','fa fa-rss-square','FontAwesome',0),(410,'admin','2018-05-06 11:25:17','',NULL,'fa fa-ruble-sign','fa fa-ruble-sign','FontAwesome',0),(411,'admin','2018-05-06 11:25:17','',NULL,'fa fa-rupee-sign','fa fa-rupee-sign','FontAwesome',0),(412,'admin','2018-05-06 11:25:17','',NULL,'fa fa-save','fa fa-save','FontAwesome',0),(413,'admin','2018-05-06 11:25:18','',NULL,'fa fa-search','fa fa-search','FontAwesome',0),(414,'admin','2018-05-06 11:25:18','',NULL,'fa fa-search-minus','fa fa-search-minus','FontAwesome',0),(415,'admin','2018-05-06 11:25:18','',NULL,'fa fa-search-plus','fa fa-search-plus','FontAwesome',0),(416,'admin','2018-05-06 11:25:18','',NULL,'fa fa-server','fa fa-server','FontAwesome',0),(417,'admin','2018-05-06 11:25:18','',NULL,'fa fa-share','fa fa-share','FontAwesome',0),(418,'admin','2018-05-06 11:25:18','',NULL,'fa fa-share-alt','fa fa-share-alt','FontAwesome',0),(419,'admin','2018-05-06 11:25:18','',NULL,'fa fa-share-alt-square','fa fa-share-alt-square','FontAwesome',0),(420,'admin','2018-05-06 11:25:18','',NULL,'fa fa-share-square','fa fa-share-square','FontAwesome',0),(421,'admin','2018-05-06 11:25:18','',NULL,'fa fa-shekel-sign','fa fa-shekel-sign','FontAwesome',0),(422,'admin','2018-05-06 11:25:18','',NULL,'fa fa-shield-alt','fa fa-shield-alt','FontAwesome',0),(423,'admin','2018-05-06 11:25:18','',NULL,'fa fa-ship','fa fa-ship','FontAwesome',0),(424,'admin','2018-05-06 11:25:18','',NULL,'fa fa-shipping-fast','fa fa-shipping-fast','FontAwesome',0),(425,'admin','2018-05-06 11:25:18','',NULL,'fa fa-shopping-bag','fa fa-shopping-bag','FontAwesome',0),(426,'admin','2018-05-06 11:25:18','',NULL,'fa fa-shopping-basket','fa fa-shopping-basket','FontAwesome',0),(427,'admin','2018-05-06 11:25:18','',NULL,'fa fa-shopping-cart','fa fa-shopping-cart','FontAwesome',0),(428,'admin','2018-05-06 11:25:18','',NULL,'fa fa-shower','fa fa-shower','FontAwesome',0),(429,'admin','2018-05-06 11:25:18','',NULL,'fa fa-sign-in-alt','fa fa-sign-in-alt','FontAwesome',0),(430,'admin','2018-05-06 11:25:18','',NULL,'fa fa-sign-language','fa fa-sign-language','FontAwesome',0),(431,'admin','2018-05-06 11:25:18','',NULL,'fa fa-sign-out-alt','fa fa-sign-out-alt','FontAwesome',0),(432,'admin','2018-05-06 11:25:18','',NULL,'fa fa-signal','fa fa-signal','FontAwesome',0),(433,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sitemap','fa fa-sitemap','FontAwesome',0),(434,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sliders-h','fa fa-sliders-h','FontAwesome',0),(435,'admin','2018-05-06 11:25:19','',NULL,'fa fa-smile','fa fa-smile','FontAwesome',0),(436,'admin','2018-05-06 11:25:19','',NULL,'fa fa-snowflake','fa fa-snowflake','FontAwesome',0),(437,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sort','fa fa-sort','FontAwesome',0),(438,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sort-alpha-down','fa fa-sort-alpha-down','FontAwesome',0),(439,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sort-alpha-up','fa fa-sort-alpha-up','FontAwesome',0),(440,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sort-amount-down','fa fa-sort-amount-down','FontAwesome',0),(441,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sort-amount-up','fa fa-sort-amount-up','FontAwesome',0),(442,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sort-down','fa fa-sort-down','FontAwesome',0),(443,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sort-numeric-down','fa fa-sort-numeric-down','FontAwesome',0),(444,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sort-numeric-up','fa fa-sort-numeric-up','FontAwesome',0),(445,'admin','2018-05-06 11:25:19','',NULL,'fa fa-sort-up','fa fa-sort-up','FontAwesome',0),(446,'admin','2018-05-06 11:25:19','',NULL,'fa fa-space-shuttle','fa fa-space-shuttle','FontAwesome',0),(447,'admin','2018-05-06 11:25:19','',NULL,'fa fa-spinner','fa fa-spinner','FontAwesome',0),(448,'admin','2018-05-06 11:25:19','',NULL,'fa fa-square','fa fa-square','FontAwesome',0),(449,'admin','2018-05-06 11:25:19','',NULL,'fa fa-square-full','fa fa-square-full','FontAwesome',0),(450,'admin','2018-05-06 11:25:19','',NULL,'fa fa-star','fa fa-star','FontAwesome',0),(451,'admin','2018-05-06 11:25:20','',NULL,'fa fa-star-half','fa fa-star-half','FontAwesome',0),(452,'admin','2018-05-06 11:25:20','',NULL,'fa fa-step-backward','fa fa-step-backward','FontAwesome',0),(453,'admin','2018-05-06 11:25:20','',NULL,'fa fa-step-forward','fa fa-step-forward','FontAwesome',0),(454,'admin','2018-05-06 11:25:20','',NULL,'fa fa-stethoscope','fa fa-stethoscope','FontAwesome',0),(455,'admin','2018-05-06 11:25:20','',NULL,'fa fa-sticky-note','fa fa-sticky-note','FontAwesome',0),(456,'admin','2018-05-06 11:25:20','',NULL,'fa fa-stop','fa fa-stop','FontAwesome',0),(457,'admin','2018-05-06 11:25:20','',NULL,'fa fa-stop-circle','fa fa-stop-circle','FontAwesome',0),(458,'admin','2018-05-06 11:25:20','',NULL,'fa fa-stopwatch','fa fa-stopwatch','FontAwesome',0),(459,'admin','2018-05-06 11:25:20','',NULL,'fa fa-calendar-plus','fa fa-calendar-plus','FontAwesome',0),(460,'admin','2018-05-06 11:25:20','',NULL,'fa fa-calendar-times','fa fa-calendar-times','FontAwesome',0),(461,'admin','2018-05-06 11:25:20','',NULL,'fa fa-camera','fa fa-camera','FontAwesome',0),(462,'admin','2018-05-06 11:25:20','',NULL,'fa fa-camera-retro','fa fa-camera-retro','FontAwesome',0),(463,'admin','2018-05-06 11:25:20','',NULL,'fa fa-car','fa fa-car','FontAwesome',0),(464,'admin','2018-05-06 11:25:20','',NULL,'fa fa-caret-down','fa fa-caret-down','FontAwesome',0),(465,'admin','2018-05-06 11:25:20','',NULL,'fa fa-caret-left','fa fa-caret-left','FontAwesome',0),(466,'admin','2018-05-06 11:25:20','',NULL,'fa fa-caret-right','fa fa-caret-right','FontAwesome',0),(467,'admin','2018-05-06 11:25:20','',NULL,'fa fa-caret-square-down','fa fa-caret-square-down','FontAwesome',0),(468,'admin','2018-05-06 11:25:20','',NULL,'fa fa-caret-square-left','fa fa-caret-square-left','FontAwesome',0),(469,'admin','2018-05-06 11:25:20','',NULL,'fa fa-caret-square-right','fa fa-caret-square-right','FontAwesome',0),(470,'admin','2018-05-06 11:25:21','',NULL,'fa fa-caret-square-up','fa fa-caret-square-up','FontAwesome',0),(471,'admin','2018-05-06 11:25:21','',NULL,'fa fa-caret-up','fa fa-caret-up','FontAwesome',0),(472,'admin','2018-05-06 11:25:21','',NULL,'fa fa-cart-arrow-down','fa fa-cart-arrow-down','FontAwesome',0),(473,'admin','2018-05-06 11:25:21','',NULL,'fa fa-cart-plus','fa fa-cart-plus','FontAwesome',0),(474,'admin','2018-05-06 11:25:21','',NULL,'fa fa-certificate','fa fa-certificate','FontAwesome',0),(475,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chart-area','fa fa-chart-area','FontAwesome',0),(476,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chart-bar','fa fa-chart-bar','FontAwesome',0),(477,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chart-line','fa fa-chart-line','FontAwesome',0),(478,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chart-pie','fa fa-chart-pie','FontAwesome',0),(479,'admin','2018-05-06 11:25:21','',NULL,'fa fa-check','fa fa-check','FontAwesome',0),(480,'admin','2018-05-06 11:25:21','',NULL,'fa fa-check-circle','fa fa-check-circle','FontAwesome',0),(481,'admin','2018-05-06 11:25:21','',NULL,'fa fa-check-square','fa fa-check-square','FontAwesome',0),(482,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chess','fa fa-chess','FontAwesome',0),(483,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chess-bishop','fa fa-chess-bishop','FontAwesome',0),(484,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chess-board','fa fa-chess-board','FontAwesome',0),(485,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chess-king','fa fa-chess-king','FontAwesome',0),(486,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chess-knight','fa fa-chess-knight','FontAwesome',0),(487,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chess-pawn','fa fa-chess-pawn','FontAwesome',0),(488,'admin','2018-05-06 11:25:21','',NULL,'fa fa-chess-queen','fa fa-chess-queen','FontAwesome',0),(489,'admin','2018-05-06 11:25:22','',NULL,'fa fa-chess-rook','fa fa-chess-rook','FontAwesome',0),(490,'admin','2018-05-06 11:25:22','',NULL,'fa fa-chevron-circle-down','fa fa-chevron-circle-down','FontAwesome',0),(491,'admin','2018-05-06 11:25:22','',NULL,'fa fa-chevron-circle-left','fa fa-chevron-circle-left','FontAwesome',0),(492,'admin','2018-05-06 11:25:22','',NULL,'fa fa-chevron-circle-right','fa fa-chevron-circle-right','FontAwesome',0),(493,'admin','2018-05-06 11:25:22','',NULL,'fa fa-chevron-circle-up','fa fa-chevron-circle-up','FontAwesome',0),(494,'admin','2018-05-06 11:25:22','',NULL,'fa fa-chevron-down','fa fa-chevron-down','FontAwesome',0),(495,'admin','2018-05-06 11:25:22','',NULL,'fa fa-chevron-left','fa fa-chevron-left','FontAwesome',0),(496,'admin','2018-05-06 11:25:22','',NULL,'fa fa-chevron-right','fa fa-chevron-right','FontAwesome',0),(497,'admin','2018-05-06 11:25:22','',NULL,'fa fa-chevron-up','fa fa-chevron-up','FontAwesome',0),(498,'admin','2018-05-06 11:25:22','',NULL,'fa fa-child','fa fa-child','FontAwesome',0),(499,'admin','2018-05-06 11:25:22','',NULL,'fa fa-circle','fa fa-circle','FontAwesome',0),(500,'admin','2018-05-06 11:25:22','',NULL,'fa fa-circle-notch','fa fa-circle-notch','FontAwesome',0),(501,'admin','2018-05-06 11:25:22','',NULL,'fa fa-clipboard','fa fa-clipboard','FontAwesome',0),(502,'admin','2018-05-06 11:25:22','',NULL,'fa fa-clipboard-check','fa fa-clipboard-check','FontAwesome',0),(503,'admin','2018-05-06 11:25:22','',NULL,'fa fa-clipboard-list','fa fa-clipboard-list','FontAwesome',0),(504,'admin','2018-05-06 11:25:22','',NULL,'fa fa-clock','fa fa-clock','FontAwesome',0),(505,'admin','2018-05-06 11:25:22','',NULL,'fa fa-clone','fa fa-clone','FontAwesome',0),(506,'admin','2018-05-06 11:25:22','',NULL,'fa fa-closed-captioning','fa fa-closed-captioning','FontAwesome',0),(507,'admin','2018-05-06 11:25:22','',NULL,'fa fa-cloud','fa fa-cloud','FontAwesome',0),(508,'admin','2018-05-06 11:25:23','',NULL,'fa fa-cloud-download-alt','fa fa-cloud-download-alt','FontAwesome',0),(509,'admin','2018-05-06 11:25:23','',NULL,'fa fa-cloud-upload-alt','fa fa-cloud-upload-alt','FontAwesome',0),(510,'admin','2018-05-06 11:25:23','',NULL,'fa fa-code','fa fa-code','FontAwesome',0),(511,'admin','2018-05-06 11:25:23','',NULL,'fa fa-code-branch','fa fa-code-branch','FontAwesome',0),(512,'admin','2018-05-06 11:25:23','',NULL,'fa fa-coffee','fa fa-coffee','FontAwesome',0),(513,'admin','2018-05-06 11:25:23','',NULL,'fa fa-cog','fa fa-cog','FontAwesome',0),(514,'admin','2018-05-06 11:25:23','',NULL,'fa fa-cogs','fa fa-cogs','FontAwesome',0),(515,'admin','2018-05-06 11:25:23','',NULL,'fa fa-columns','fa fa-columns','FontAwesome',0),(516,'admin','2018-05-06 11:25:23','',NULL,'fa fa-comment','fa fa-comment','FontAwesome',0),(517,'admin','2018-05-06 11:25:23','',NULL,'fa fa-comment-alt','fa fa-comment-alt','FontAwesome',0),(518,'admin','2018-05-06 11:25:23','',NULL,'fa fa-comments','fa fa-comments','FontAwesome',0),(519,'admin','2018-05-06 11:25:24','',NULL,'fa fa-compass','fa fa-compass','FontAwesome',0),(520,'admin','2018-05-06 11:25:24','',NULL,'fa fa-compress','fa fa-compress','FontAwesome',0),(521,'admin','2018-05-06 11:25:24','',NULL,'fa fa-copy','fa fa-copy','FontAwesome',0),(522,'admin','2018-05-06 11:25:24','',NULL,'fa fa-copyright','fa fa-copyright','FontAwesome',0),(523,'admin','2018-05-06 11:25:24','',NULL,'fa fa-credit-card','fa fa-credit-card','FontAwesome',0),(524,'admin','2018-05-06 11:25:24','',NULL,'fa fa-crop','fa fa-crop','FontAwesome',0),(525,'admin','2018-05-06 11:25:24','',NULL,'fa fa-crosshairs','fa fa-crosshairs','FontAwesome',0),(526,'admin','2018-05-06 11:25:24','',NULL,'fa fa-cube','fa fa-cube','FontAwesome',0),(527,'admin','2018-05-06 11:25:24','',NULL,'fa fa-cubes','fa fa-cubes','FontAwesome',0),(528,'admin','2018-05-06 11:25:24','',NULL,'fa fa-cut','fa fa-cut','FontAwesome',0),(529,'admin','2018-05-06 11:25:24','',NULL,'fa fa-database','fa fa-database','FontAwesome',0),(530,'admin','2018-05-06 11:25:24','',NULL,'fa fa-deaf','fa fa-deaf','FontAwesome',0),(531,'admin','2018-05-06 11:25:24','',NULL,'fa fa-desktop','fa fa-desktop','FontAwesome',0),(532,'admin','2018-05-06 11:25:24','',NULL,'fa fa-dna','fa fa-dna','FontAwesome',0),(533,'admin','2018-05-06 11:25:24','',NULL,'fa fa-dollar-sign','fa fa-dollar-sign','FontAwesome',0),(534,'admin','2018-05-06 11:25:24','',NULL,'fa fa-dolly','fa fa-dolly','FontAwesome',0),(535,'admin','2018-05-06 11:25:24','',NULL,'fa fa-dolly-flatbed','fa fa-dolly-flatbed','FontAwesome',0),(536,'admin','2018-05-06 11:25:24','',NULL,'fa fa-dot-circle','fa fa-dot-circle','FontAwesome',0),(537,'admin','2018-05-06 11:25:24','',NULL,'fa fa-download','fa fa-download','FontAwesome',0),(538,'admin','2018-05-06 11:25:25','',NULL,'fa fa-edit','fa fa-edit','FontAwesome',0),(539,'admin','2018-05-06 11:25:25','',NULL,'fa fa-eject','fa fa-eject','FontAwesome',0),(540,'admin','2018-05-06 11:25:25','',NULL,'fa fa-street-view','fa fa-street-view','FontAwesome',0),(541,'admin','2018-05-06 11:25:25','',NULL,'fa fa-strikethrough','fa fa-strikethrough','FontAwesome',0),(542,'admin','2018-05-06 11:25:25','',NULL,'fa fa-subscript','fa fa-subscript','FontAwesome',0),(543,'admin','2018-05-06 11:25:25','',NULL,'fa fa-subway','fa fa-subway','FontAwesome',0),(544,'admin','2018-05-06 11:25:25','',NULL,'fa fa-suitcase','fa fa-suitcase','FontAwesome',0),(545,'admin','2018-05-06 11:25:25','',NULL,'fa fa-sun','fa fa-sun','FontAwesome',0),(546,'admin','2018-05-06 11:25:25','',NULL,'fa fa-superscript','fa fa-superscript','FontAwesome',0),(547,'admin','2018-05-06 11:25:25','',NULL,'fa fa-sync','fa fa-sync','FontAwesome',0),(548,'admin','2018-05-06 11:25:25','',NULL,'fa fa-sync-alt','fa fa-sync-alt','FontAwesome',0),(549,'admin','2018-05-06 11:25:25','',NULL,'fa fa-syringe','fa fa-syringe','FontAwesome',0),(550,'admin','2018-05-06 11:25:25','',NULL,'fa fa-table','fa fa-table','FontAwesome',0),(551,'admin','2018-05-06 11:25:25','',NULL,'fa fa-table-tennis','fa fa-table-tennis','FontAwesome',0),(552,'admin','2018-05-06 11:25:25','',NULL,'fa fa-tablet','fa fa-tablet','FontAwesome',0),(553,'admin','2018-05-06 11:25:25','',NULL,'fa fa-tablet-alt','fa fa-tablet-alt','FontAwesome',0),(554,'admin','2018-05-06 11:25:25','',NULL,'fa fa-tachometer-alt','fa fa-tachometer-alt','FontAwesome',0),(555,'admin','2018-05-06 11:25:25','',NULL,'fa fa-tag','fa fa-tag','FontAwesome',0),(556,'admin','2018-05-06 11:25:25','',NULL,'fa fa-tags','fa fa-tags','FontAwesome',0),(557,'admin','2018-05-06 11:25:25','',NULL,'fa fa-tasks','fa fa-tasks','FontAwesome',0),(558,'admin','2018-05-06 11:25:26','',NULL,'fa fa-taxi','fa fa-taxi','FontAwesome',0),(559,'admin','2018-05-06 11:25:26','',NULL,'fa fa-terminal','fa fa-terminal','FontAwesome',0),(560,'admin','2018-05-06 11:25:26','',NULL,'fa fa-text-height','fa fa-text-height','FontAwesome',0),(561,'admin','2018-05-06 11:25:26','',NULL,'fa fa-text-width','fa fa-text-width','FontAwesome',0),(562,'admin','2018-05-06 11:25:26','',NULL,'fa fa-th','fa fa-th','FontAwesome',0),(563,'admin','2018-05-06 11:25:26','',NULL,'fa fa-th-large','fa fa-th-large','FontAwesome',0),(564,'admin','2018-05-06 11:25:26','',NULL,'fa fa-th-list','fa fa-th-list','FontAwesome',0),(565,'admin','2018-05-06 11:25:26','',NULL,'fa fa-thermometer','fa fa-thermometer','FontAwesome',0),(566,'admin','2018-05-06 11:25:26','',NULL,'fa fa-thermometer-empty','fa fa-thermometer-empty','FontAwesome',0),(567,'admin','2018-05-06 11:25:26','',NULL,'fa fa-thermometer-full','fa fa-thermometer-full','FontAwesome',0),(568,'admin','2018-05-06 11:25:26','',NULL,'fa fa-thermometer-half','fa fa-thermometer-half','FontAwesome',0),(569,'admin','2018-05-06 11:25:27','',NULL,'fa fa-thermometer-quarter','fa fa-thermometer-quarter','FontAwesome',0),(570,'admin','2018-05-06 11:25:27','',NULL,'fa fa-thermometer-three-quarters','fa fa-thermometer-three-quarters','FontAwesome',0),(571,'admin','2018-05-06 11:25:27','',NULL,'fa fa-thumbs-down','fa fa-thumbs-down','FontAwesome',0),(572,'admin','2018-05-06 11:25:27','',NULL,'fa fa-thumbs-up','fa fa-thumbs-up','FontAwesome',0),(573,'admin','2018-05-06 11:25:27','',NULL,'fa fa-thumbtack','fa fa-thumbtack','FontAwesome',0),(574,'admin','2018-05-06 11:25:27','',NULL,'fa fa-ticket-alt','fa fa-ticket-alt','FontAwesome',0),(575,'admin','2018-05-06 11:25:27','',NULL,'fa fa-times','fa fa-times','FontAwesome',0),(576,'admin','2018-05-06 11:25:27','',NULL,'fa fa-times-circle','fa fa-times-circle','FontAwesome',0),(577,'admin','2018-05-06 11:25:27','',NULL,'fa fa-tint','fa fa-tint','FontAwesome',0),(578,'admin','2018-05-06 11:25:27','',NULL,'fa fa-toggle-off','fa fa-toggle-off','FontAwesome',0),(579,'admin','2018-05-06 11:25:27','',NULL,'fa fa-toggle-on','fa fa-toggle-on','FontAwesome',0),(580,'admin','2018-05-06 11:25:27','',NULL,'fa fa-trademark','fa fa-trademark','FontAwesome',0),(581,'admin','2018-05-06 11:25:27','',NULL,'fa fa-train','fa fa-train','FontAwesome',0),(582,'admin','2018-05-06 11:25:27','',NULL,'fa fa-transgender','fa fa-transgender','FontAwesome',0),(583,'admin','2018-05-06 11:25:27','',NULL,'fa fa-transgender-alt','fa fa-transgender-alt','FontAwesome',0),(584,'admin','2018-05-06 11:25:27','',NULL,'fa fa-trash','fa fa-trash','FontAwesome',0),(585,'admin','2018-05-06 11:25:27','',NULL,'fa fa-trash-alt','fa fa-trash-alt','FontAwesome',0),(586,'admin','2018-05-06 11:25:27','',NULL,'fa fa-tree','fa fa-tree','FontAwesome',0),(587,'admin','2018-05-06 11:25:27','',NULL,'fa fa-trophy','fa fa-trophy','FontAwesome',0),(588,'admin','2018-05-06 11:25:27','',NULL,'fa fa-truck','fa fa-truck','FontAwesome',0),(589,'admin','2018-05-06 11:25:27','',NULL,'fa fa-tty','fa fa-tty','FontAwesome',0),(590,'admin','2018-05-06 11:25:28','',NULL,'fa fa-tv','fa fa-tv','FontAwesome',0),(591,'admin','2018-05-06 11:25:28','',NULL,'fa fa-umbrella','fa fa-umbrella','FontAwesome',0),(592,'admin','2018-05-06 11:25:28','',NULL,'fa fa-underline','fa fa-underline','FontAwesome',0),(593,'admin','2018-05-06 11:25:28','',NULL,'fa fa-undo','fa fa-undo','FontAwesome',0),(594,'admin','2018-05-06 11:25:28','',NULL,'fa fa-undo-alt','fa fa-undo-alt','FontAwesome',0),(595,'admin','2018-05-06 11:25:28','',NULL,'fa fa-universal-access','fa fa-universal-access','FontAwesome',0),(596,'admin','2018-05-06 11:25:28','',NULL,'fa fa-university','fa fa-university','FontAwesome',0),(597,'admin','2018-05-06 11:25:28','',NULL,'fa fa-unlink','fa fa-unlink','FontAwesome',0),(598,'admin','2018-05-06 11:25:28','',NULL,'fa fa-unlock','fa fa-unlock','FontAwesome',0),(599,'admin','2018-05-06 11:25:28','',NULL,'fa fa-unlock-alt','fa fa-unlock-alt','FontAwesome',0),(600,'admin','2018-05-06 11:25:28','',NULL,'fa fa-upload','fa fa-upload','FontAwesome',0),(601,'admin','2018-05-06 11:25:28','',NULL,'fa fa-user','fa fa-user','FontAwesome',0),(602,'admin','2018-05-06 11:25:28','',NULL,'fa fa-user-circle','fa fa-user-circle','FontAwesome',0),(603,'admin','2018-05-06 11:25:28','',NULL,'fa fa-user-md','fa fa-user-md','FontAwesome',0),(604,'admin','2018-05-06 11:25:28','',NULL,'fa fa-user-plus','fa fa-user-plus','FontAwesome',0),(605,'admin','2018-05-06 11:25:28','',NULL,'fa fa-user-secret','fa fa-user-secret','FontAwesome',0),(606,'admin','2018-05-06 11:25:28','',NULL,'fa fa-user-times','fa fa-user-times','FontAwesome',0),(607,'admin','2018-05-06 11:25:28','',NULL,'fa fa-users','fa fa-users','FontAwesome',0),(608,'admin','2018-05-06 11:25:28','',NULL,'fa fa-utensil-spoon','fa fa-utensil-spoon','FontAwesome',0),(609,'admin','2018-05-06 11:25:29','',NULL,'fa fa-utensils','fa fa-utensils','FontAwesome',0),(610,'admin','2018-05-06 11:25:29','',NULL,'fa fa-venus','fa fa-venus','FontAwesome',0),(611,'admin','2018-05-06 11:25:29','',NULL,'fa fa-venus-double','fa fa-venus-double','FontAwesome',0),(612,'admin','2018-05-06 11:25:29','',NULL,'fa fa-venus-mars','fa fa-venus-mars','FontAwesome',0),(613,'admin','2018-05-06 11:25:29','',NULL,'fa fa-video','fa fa-video','FontAwesome',0),(614,'admin','2018-05-06 11:25:29','',NULL,'fa fa-volleyball-ball','fa fa-volleyball-ball','FontAwesome',0),(615,'admin','2018-05-06 11:25:29','',NULL,'fa fa-volume-down','fa fa-volume-down','FontAwesome',0),(616,'admin','2018-05-06 11:25:29','',NULL,'fa fa-volume-off','fa fa-volume-off','FontAwesome',0),(617,'admin','2018-05-06 11:25:29','',NULL,'fa fa-volume-up','fa fa-volume-up','FontAwesome',0),(618,'admin','2018-05-06 11:25:29','',NULL,'fa fa-warehouse','fa fa-warehouse','FontAwesome',0),(619,'admin','2018-05-06 11:25:29','',NULL,'fa fa-weight','fa fa-weight','FontAwesome',0),(620,'admin','2018-05-06 11:25:29','',NULL,'fa fa-wheelchair','fa fa-wheelchair','FontAwesome',0),(621,'admin','2018-05-06 11:25:29','',NULL,'fa fa-wifi','fa fa-wifi','FontAwesome',0),(622,'admin','2018-05-06 11:25:29','',NULL,'fa fa-window-close','fa fa-window-close','FontAwesome',0),(662,'admin','2018-05-06 11:25:31','',NULL,'fa fa-ellipsis-h','fa fa-ellipsis-h','FontAwesome',0),(663,'admin','2018-05-06 11:25:31','',NULL,'fa fa-window-maximize','fa fa-window-maximize','FontAwesome',0),(664,'admin','2018-05-06 11:25:31','',NULL,'fa fa-window-minimize','fa fa-window-minimize','FontAwesome',0),(665,'admin','2018-05-06 11:25:32','',NULL,'fa fa-window-restore','fa fa-window-restore','FontAwesome',0),(666,'admin','2018-05-06 11:25:32','',NULL,'fa fa-won-sign','fa fa-won-sign','FontAwesome',0),(667,'admin','2018-05-06 11:25:32','',NULL,'fa fa-wrench','fa fa-wrench','FontAwesome',0),(668,'admin','2018-05-06 11:25:32','',NULL,'fa fa-yen-sign','fa fa-yen-sign','FontAwesome',0),(669,'admin','2018-05-06 11:25:32','',NULL,'fa fa-ellipsis-v','fa fa-ellipsis-v','FontAwesome',0),(670,'admin','2018-05-06 11:25:32','',NULL,'fa fa-envelope','fa fa-envelope','FontAwesome',0),(671,'admin','2018-05-06 11:25:32','',NULL,'fa fa-envelope-open','fa fa-envelope-open','FontAwesome',0),(672,'admin','2018-05-06 11:25:32','',NULL,'fa fa-envelope-square','fa fa-envelope-square','FontAwesome',0),(673,'admin','2018-05-06 11:25:32','',NULL,'fa fa-eraser','fa fa-eraser','FontAwesome',0),(674,'admin','2018-05-06 11:25:32','',NULL,'fa fa-euro-sign','fa fa-euro-sign','FontAwesome',0),(675,'admin','2018-05-06 11:25:32','',NULL,'fa fa-exchange-alt','fa fa-exchange-alt','FontAwesome',0),(676,'admin','2018-05-06 11:25:32','',NULL,'fa fa-exclamation','fa fa-exclamation','FontAwesome',0),(677,'admin','2018-05-06 11:25:32','',NULL,'fa fa-exclamation-circle','fa fa-exclamation-circle','FontAwesome',0),(678,'admin','2018-05-06 11:25:32','',NULL,'fa fa-exclamation-triangle','fa fa-exclamation-triangle','FontAwesome',0),(679,'admin','2018-05-06 11:25:32','',NULL,'fa fa-expand','fa fa-expand','FontAwesome',0),(680,'admin','2018-05-06 11:25:32','',NULL,'fa fa-expand-arrows-alt','fa fa-expand-arrows-alt','FontAwesome',0),(681,'admin','2018-05-06 11:25:32','',NULL,'fa fa-external-link-alt','fa fa-external-link-alt','FontAwesome',0),(682,'admin','2018-05-06 11:25:32','',NULL,'fa fa-external-link-square-alt','fa fa-external-link-square-alt','FontAwesome',0),(683,'admin','2018-05-06 11:25:32','',NULL,'fa fa-eye','fa fa-eye','FontAwesome',0),(684,'admin','2018-05-06 11:25:32','',NULL,'fa fa-eye-dropper','fa fa-eye-dropper','FontAwesome',0),(685,'admin','2018-05-06 11:25:32','',NULL,'fa fa-eye-slash','fa fa-eye-slash','FontAwesome',0),(686,'admin','2018-05-06 11:25:33','',NULL,'fa fa-fast-backward','fa fa-fast-backward','FontAwesome',0),(687,'admin','2018-05-06 11:25:33','',NULL,'fa fa-fast-forward','fa fa-fast-forward','FontAwesome',0),(688,'admin','2018-05-06 11:25:33','',NULL,'fa fa-fax','fa fa-fax','FontAwesome',0),(689,'admin','2018-05-06 11:25:33','',NULL,'fa fa-female','fa fa-female','FontAwesome',0),(690,'admin','2018-05-06 11:25:33','',NULL,'fa fa-fighter-jet','fa fa-fighter-jet','FontAwesome',0),(691,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file','fa fa-file','FontAwesome',0),(692,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-alt','fa fa-file-alt','FontAwesome',0),(693,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-archive','fa fa-file-archive','FontAwesome',0),(694,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-audio','fa fa-file-audio','FontAwesome',0),(695,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-code','fa fa-file-code','FontAwesome',0),(696,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-excel','fa fa-file-excel','FontAwesome',0),(697,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-image','fa fa-file-image','FontAwesome',0),(698,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-pdf','fa fa-file-pdf','FontAwesome',0),(699,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-powerpoint','fa fa-file-powerpoint','FontAwesome',0),(700,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-video','fa fa-file-video','FontAwesome',0),(701,'admin','2018-05-06 11:25:33','',NULL,'fa fa-file-word','fa fa-file-word','FontAwesome',0),(702,'admin','2018-05-06 11:25:33','',NULL,'fa fa-film','fa fa-film','FontAwesome',0),(703,'admin','2018-05-06 11:25:33','',NULL,'fa fa-filter','fa fa-filter','FontAwesome',0),(704,'admin','2018-05-06 11:25:33','',NULL,'fa fa-fire','fa fa-fire','FontAwesome',0),(705,'admin','2018-05-06 11:25:34','',NULL,'fa fa-fire-extinguisher','fa fa-fire-extinguisher','FontAwesome',0),(706,'admin','2018-05-06 11:25:34','',NULL,'fa fa-first-aid','fa fa-first-aid','FontAwesome',0),(707,'admin','2018-05-06 11:25:34','',NULL,'fa fa-flag','fa fa-flag','FontAwesome',0),(708,'admin','2018-05-06 11:25:34','',NULL,'fa fa-flag-checkered','fa fa-flag-checkered','FontAwesome',0),(709,'admin','2018-05-06 11:25:34','',NULL,'fa fa-flask','fa fa-flask','FontAwesome',0),(710,'admin','2018-05-06 11:25:34','',NULL,'fa fa-folder','fa fa-folder','FontAwesome',0),(711,'admin','2018-05-06 11:25:34','',NULL,'fa fa-folder-open','fa fa-folder-open','FontAwesome',0),(712,'admin','2018-05-06 11:25:34','',NULL,'fa fa-font','fa fa-font','FontAwesome',0),(713,'admin','2018-05-06 11:25:34','',NULL,'fa fa-football-ball','fa fa-football-ball','FontAwesome',0),(714,'admin','2018-05-06 11:25:34','',NULL,'fa fa-forward','fa fa-forward','FontAwesome',0),(715,'admin','2018-05-06 11:25:34','',NULL,'fa fa-frown','fa fa-frown','FontAwesome',0),(716,'admin','2018-05-06 11:25:35','',NULL,'fa fa-futbol','fa fa-futbol','FontAwesome',0),(717,'admin','2018-05-06 11:25:35','',NULL,'fa fa-gamepad','fa fa-gamepad','FontAwesome',0),(718,'admin','2018-05-06 11:25:35','',NULL,'fa fa-gavel','fa fa-gavel','FontAwesome',0),(719,'admin','2018-05-06 11:25:35','',NULL,'fa fa-gem','fa fa-gem','FontAwesome',0),(720,'admin','2018-05-06 11:25:35','',NULL,'fa fa-genderless','fa fa-genderless','FontAwesome',0),(721,'admin','2018-05-06 11:25:35','',NULL,'fa fa-gift','fa fa-gift','FontAwesome',0),(722,'admin','2018-05-06 11:25:35','',NULL,'fa fa-glass-martini','fa fa-glass-martini','FontAwesome',0),(723,'admin','2018-05-06 11:25:35','',NULL,'fa fa-globe','fa fa-globe','FontAwesome',0),(724,'admin','2018-05-06 11:25:35','',NULL,'fa fa-golf-ball','fa fa-golf-ball','FontAwesome',0),(725,'admin','2018-05-06 11:25:35','',NULL,'fa fa-graduation-cap','fa fa-graduation-cap','FontAwesome',0),(726,'admin','2018-05-06 11:25:35','',NULL,'fa fa-h-square','fa fa-h-square','FontAwesome',0),(727,'admin','2018-05-06 11:25:35','',NULL,'fa fa-hand-lizard','fa fa-hand-lizard','FontAwesome',0),(728,'admin','2018-05-06 11:25:35','',NULL,'fa fa-hand-paper','fa fa-hand-paper','FontAwesome',0),(729,'admin','2018-05-06 11:25:35','',NULL,'fa fa-hand-peace','fa fa-hand-peace','FontAwesome',0),(730,'admin','2018-05-06 11:25:35','',NULL,'fa fa-hand-point-down','fa fa-hand-point-down','FontAwesome',0),(731,'admin','2018-05-06 11:25:35','',NULL,'fa fa-hand-point-left','fa fa-hand-point-left','FontAwesome',0),(732,'admin','2018-05-06 11:25:35','',NULL,'fa fa-hand-point-right','fa fa-hand-point-right','FontAwesome',0),(733,'admin','2018-05-06 11:25:35','',NULL,'fa fa-hand-point-up','fa fa-hand-point-up','FontAwesome',0),(734,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hand-pointer','fa fa-hand-pointer','FontAwesome',0),(735,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hand-rock','fa fa-hand-rock','FontAwesome',0),(736,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hand-scissors','fa fa-hand-scissors','FontAwesome',0),(737,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hand-spock','fa fa-hand-spock','FontAwesome',0),(738,'admin','2018-05-06 11:25:36','',NULL,'fa fa-handshake','fa fa-handshake','FontAwesome',0),(739,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hashtag','fa fa-hashtag','FontAwesome',0),(740,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hdd','fa fa-hdd','FontAwesome',0),(741,'admin','2018-05-06 11:25:36','',NULL,'fa fa-heading','fa fa-heading','FontAwesome',0),(742,'admin','2018-05-06 11:25:36','',NULL,'fa fa-headphones','fa fa-headphones','FontAwesome',0),(743,'admin','2018-05-06 11:25:36','',NULL,'fa fa-heart','fa fa-heart','FontAwesome',0),(744,'admin','2018-05-06 11:25:36','',NULL,'fa fa-heartbeat','fa fa-heartbeat','FontAwesome',0),(745,'admin','2018-05-06 11:25:36','',NULL,'fa fa-history','fa fa-history','FontAwesome',0),(746,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hockey-puck','fa fa-hockey-puck','FontAwesome',0),(747,'admin','2018-05-06 11:25:36','',NULL,'fa fa-home','fa fa-home','FontAwesome',0),(748,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hospital','fa fa-hospital','FontAwesome',0),(749,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hospital-symbol','fa fa-hospital-symbol','FontAwesome',0),(752,'admin','2018-05-06 11:25:36','',NULL,'fa fa-hourglass','fa fa-hourglass','FontAwesome',0),(755,'admin','2018-05-06 11:25:36','',NULL,'fa fa-address-book','fa fa-address-book','FontAwesome',0),(756,'admin','2018-05-06 11:25:37','',NULL,'fa fa-address-card','fa fa-address-card','FontAwesome',0),(757,'admin','2018-05-06 11:25:37','',NULL,'fa fa-adjust','fa fa-adjust','FontAwesome',0),(758,'admin','2018-05-06 11:25:37','',NULL,'fa fa-align-center','fa fa-align-center','FontAwesome',0),(759,'admin','2018-05-06 11:25:37','',NULL,'fa fa-align-justify','fa fa-align-justify','FontAwesome',0),(760,'admin','2018-05-06 11:25:37','',NULL,'fa fa-align-left','fa fa-align-left','FontAwesome',0),(761,'admin','2018-05-06 11:25:37','',NULL,'fa fa-align-right','fa fa-align-right','FontAwesome',0),(762,'admin','2018-05-06 11:25:37','',NULL,'fa fa-ambulance','fa fa-ambulance','FontAwesome',0),(763,'admin','2018-05-06 11:25:37','',NULL,'fa fa-american-sign-language-interpreting','fa fa-american-sign-language-interpreting','FontAwesome',0),(764,'admin','2018-05-06 11:25:37','',NULL,'fa fa-anchor','fa fa-anchor','FontAwesome',0),(765,'admin','2018-05-06 11:25:37','',NULL,'fa fa-angle-double-down','fa fa-angle-double-down','FontAwesome',0),(766,'admin','2018-05-06 11:25:37','',NULL,'fa fa-angle-double-left','fa fa-angle-double-left','FontAwesome',0),(767,'admin','2018-05-06 11:25:37','',NULL,'fa fa-angle-double-right','fa fa-angle-double-right','FontAwesome',0),(768,'admin','2018-05-06 11:25:37','',NULL,'fa fa-angle-double-up','fa fa-angle-double-up','FontAwesome',0),(769,'admin','2018-05-06 11:25:37','',NULL,'fa fa-angle-down','fa fa-angle-down','FontAwesome',0),(770,'admin','2018-05-06 11:25:37','',NULL,'fa fa-angle-left','fa fa-angle-left','FontAwesome',0),(771,'admin','2018-05-06 11:25:37','',NULL,'fa fa-angle-right','fa fa-angle-right','FontAwesome',0),(772,'admin','2018-05-06 11:25:38','',NULL,'fa fa-angle-up','fa fa-angle-up','FontAwesome',0),(773,'admin','2018-05-06 11:25:38','',NULL,'fa fa-archive','fa fa-archive','FontAwesome',0),(774,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-alt-circle-down','fa fa-arrow-alt-circle-down','FontAwesome',0),(775,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-alt-circle-left','fa fa-arrow-alt-circle-left','FontAwesome',0),(776,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-alt-circle-right','fa fa-arrow-alt-circle-right','FontAwesome',0),(777,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-alt-circle-up','fa fa-arrow-alt-circle-up','FontAwesome',0),(778,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-circle-down','fa fa-arrow-circle-down','FontAwesome',0),(779,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-circle-left','fa fa-arrow-circle-left','FontAwesome',0),(780,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-circle-right','fa fa-arrow-circle-right','FontAwesome',0),(781,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-circle-up','fa fa-arrow-circle-up','FontAwesome',0),(782,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-down','fa fa-arrow-down','FontAwesome',0),(783,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-left','fa fa-arrow-left','FontAwesome',0),(784,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-right','fa fa-arrow-right','FontAwesome',0),(785,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrow-up','fa fa-arrow-up','FontAwesome',0),(786,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrows-alt','fa fa-arrows-alt','FontAwesome',0),(787,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrows-alt-h','fa fa-arrows-alt-h','FontAwesome',0),(788,'admin','2018-05-06 11:25:38','',NULL,'fa fa-arrows-alt-v','fa fa-arrows-alt-v','FontAwesome',0),(789,'admin','2018-05-06 11:25:38','',NULL,'fa fa-assistive-listening-systems','fa fa-assistive-listening-systems','FontAwesome',0),(790,'admin','2018-05-06 11:25:38','',NULL,'fa fa-asterisk','fa fa-asterisk','FontAwesome',0),(791,'admin','2018-05-06 11:25:38','',NULL,'fa fa-at','fa fa-at','FontAwesome',0),(792,'admin','2018-05-06 11:25:38','',NULL,'fa fa-audio-description','fa fa-audio-description','FontAwesome',0),(793,'admin','2018-05-06 11:25:38','',NULL,'fa fa-backward','fa fa-backward','FontAwesome',0),(794,'admin','2018-05-06 11:25:39','',NULL,'fa fa-balance-scale','fa fa-balance-scale','FontAwesome',0),(795,'admin','2018-05-06 11:25:39','',NULL,'fa fa-ban','fa fa-ban','FontAwesome',0),(796,'admin','2018-05-06 11:25:39','',NULL,'fa fa-band-aid','fa fa-band-aid','FontAwesome',0),(797,'admin','2018-05-06 11:25:39','',NULL,'fa fa-barcode','fa fa-barcode','FontAwesome',0),(798,'admin','2018-05-06 11:25:39','',NULL,'fa fa-bars','fa fa-bars','FontAwesome',0),(799,'admin','2018-05-06 11:25:39','',NULL,'fa fa-baseball-ball','fa fa-baseball-ball','FontAwesome',0),(800,'admin','2018-05-06 11:25:39','',NULL,'fa fa-basketball-ball','fa fa-basketball-ball','FontAwesome',0),(801,'admin','2018-05-06 11:25:39','',NULL,'fa fa-bath','fa fa-bath','FontAwesome',0),(802,'admin','2018-05-06 11:25:39','',NULL,'fa fa-battery-empty','fa fa-battery-empty','FontAwesome',0),(803,'admin','2018-05-06 11:25:39','',NULL,'fa fa-battery-full','fa fa-battery-full','FontAwesome',0),(804,'admin','2018-05-06 11:25:39','',NULL,'fa fa-battery-half','fa fa-battery-half','FontAwesome',0),(805,'admin','2018-05-06 11:25:39','',NULL,'fa fa-battery-quarter','fa fa-battery-quarter','FontAwesome',0),(806,'admin','2018-05-06 11:25:39','',NULL,'fa fa-battery-three-quarters','fa fa-battery-three-quarters','FontAwesome',0),(807,'admin','2018-05-06 11:25:39','',NULL,'fa fa-bed','fa fa-bed','FontAwesome',0),(808,'admin','2018-05-06 11:25:39','',NULL,'fa fa-beer','fa fa-beer','FontAwesome',0),(809,'admin','2018-05-06 11:25:39','',NULL,'fa fa-bell','fa fa-bell','FontAwesome',0),(810,'admin','2018-05-06 11:25:39','',NULL,'fa fa-bell-slash','fa fa-bell-slash','FontAwesome',0),(811,'admin','2018-05-06 11:25:39','',NULL,'fa fa-bicycle','fa fa-bicycle','FontAwesome',0),(812,'admin','2018-05-06 11:25:40','',NULL,'fa fa-binoculars','fa fa-binoculars','FontAwesome',0),(813,'admin','2018-05-06 11:25:40','',NULL,'fa fa-birthday-cake','fa fa-birthday-cake','FontAwesome',0),(814,'admin','2018-05-06 11:25:40','',NULL,'fa fa-blind','fa fa-blind','FontAwesome',0),(815,'admin','2018-05-06 11:25:40','',NULL,'fa fa-bold','fa fa-bold','FontAwesome',0),(816,'admin','2018-05-06 11:25:40','',NULL,'fa fa-bolt','fa fa-bolt','FontAwesome',0),(817,'admin','2018-05-06 11:25:40','',NULL,'fa fa-bomb','fa fa-bomb','FontAwesome',0),(818,'admin','2018-05-06 11:25:40','',NULL,'fa fa-book','fa fa-book','FontAwesome',0),(819,'admin','2018-05-06 11:25:40','',NULL,'fa fa-bookmark','fa fa-bookmark','FontAwesome',0),(820,'admin','2018-05-06 11:25:40','',NULL,'fa fa-bowling-ball','fa fa-bowling-ball','FontAwesome',0),(821,'admin','2018-05-06 11:25:40','',NULL,'fa fa-box','fa fa-box','FontAwesome',0),(822,'admin','2018-05-06 11:25:40','',NULL,'fa fa-boxes','fa fa-boxes','FontAwesome',0),(823,'admin','2018-05-06 11:25:40','',NULL,'fa fa-braille','fa fa-braille','FontAwesome',0),(824,'admin','2018-05-06 11:25:40','',NULL,'fa fa-briefcase','fa fa-briefcase','FontAwesome',0),(825,'admin','2018-05-06 11:25:40','',NULL,'fa fa-bug','fa fa-bug','FontAwesome',0),(826,'admin','2018-05-06 11:25:40','',NULL,'fa fa-building','fa fa-building','FontAwesome',0),(827,'admin','2018-05-06 11:25:40','',NULL,'fa fa-bullhorn','fa fa-bullhorn','FontAwesome',0),(828,'admin','2018-05-06 11:25:40','',NULL,'fa fa-bullseye','fa fa-bullseye','FontAwesome',0),(829,'admin','2018-05-06 11:25:40','',NULL,'fa fa-bus','fa fa-bus','FontAwesome',0),(830,'admin','2018-05-06 11:25:40','',NULL,'fa fa-calculator','fa fa-calculator','FontAwesome',0),(831,'admin','2018-05-06 11:25:41','',NULL,'fa fa-calendar','fa fa-calendar','FontAwesome',0),(832,'admin','2018-05-06 11:25:41','',NULL,'fa fa-calendar-alt','fa fa-calendar-alt','FontAwesome',0),(833,'admin','2018-05-06 11:25:41','',NULL,'fa fa-calendar-check','fa fa-calendar-check','FontAwesome',0),(834,'admin','2018-05-06 11:25:41','',NULL,'fa fa-hourglass-end','fa fa-hourglass-end','FontAwesome',0),(835,'admin','2018-05-06 11:25:41','',NULL,'fa fa-hourglass-half','fa fa-hourglass-half','FontAwesome',0),(836,'admin','2018-05-06 11:25:41','',NULL,'fa fa-hourglass-start','fa fa-hourglass-start','FontAwesome',0),(837,'admin','2018-05-06 11:25:41','',NULL,'fa fa-i-cursor','fa fa-i-cursor','FontAwesome',0),(838,'admin','2018-05-06 11:25:41','',NULL,'fa fa-id-badge','fa fa-id-badge','FontAwesome',0),(839,'admin','2018-05-06 11:25:41','',NULL,'fa fa-id-card','fa fa-id-card','FontAwesome',0),(840,'admin','2018-05-06 11:25:41','',NULL,'fa fa-image','fa fa-image','FontAwesome',0),(841,'admin','2018-05-06 11:25:41','',NULL,'fa fa-images','fa fa-images','FontAwesome',0),(842,'admin','2018-05-06 11:25:41','',NULL,'fa fa-inbox','fa fa-inbox','FontAwesome',0),(843,'admin','2018-05-06 11:25:41','',NULL,'fa fa-indent','fa fa-indent','FontAwesome',0),(844,'admin','2018-05-06 11:25:41','',NULL,'fa fa-industry','fa fa-industry','FontAwesome',0),(845,'admin','2018-05-06 11:25:41','',NULL,'fa fa-info','fa fa-info','FontAwesome',0),(846,'admin','2018-05-06 11:25:41','',NULL,'fa fa-info-circle','fa fa-info-circle','FontAwesome',0),(847,'admin','2018-05-06 11:25:41','',NULL,'fa fa-italic','fa fa-italic','FontAwesome',0),(848,'admin','2018-05-06 11:25:41','',NULL,'fa fa-key','fa fa-key','FontAwesome',0),(849,'admin','2018-05-06 11:25:42','',NULL,'fa fa-keyboard','fa fa-keyboard','FontAwesome',0),(850,'admin','2018-05-06 11:25:42','',NULL,'fa fa-language','fa fa-language','FontAwesome',0),(851,'admin','2018-05-06 11:25:42','',NULL,'fa fa-laptop','fa fa-laptop','FontAwesome',0),(852,'admin','2018-05-06 11:25:42','',NULL,'fa fa-leaf','fa fa-leaf','FontAwesome',0),(853,'admin','2018-05-06 11:25:42','',NULL,'fa fa-lemon','fa fa-lemon','FontAwesome',0),(854,'admin','2018-05-06 11:25:42','',NULL,'fa fa-level-down-alt','fa fa-level-down-alt','FontAwesome',0),(855,'admin','2018-05-06 11:25:42','',NULL,'fa fa-level-up-alt','fa fa-level-up-alt','FontAwesome',0),(856,'admin','2018-05-06 11:25:42','',NULL,'fa fa-life-ring','fa fa-life-ring','FontAwesome',0),(857,'admin','2018-05-06 11:25:42','',NULL,'fa fa-lightbulb','fa fa-lightbulb','FontAwesome',0),(858,'admin','2018-05-06 11:25:42','',NULL,'fa fa-link','fa fa-link','FontAwesome',0),(859,'admin','2018-05-06 11:25:42','',NULL,'fa fa-lira-sign','fa fa-lira-sign','FontAwesome',0),(860,'admin','2018-05-06 11:25:42','',NULL,'fa fa-list','fa fa-list','FontAwesome',0),(861,'admin','2018-05-06 11:25:42','',NULL,'fa fa-list-alt','fa fa-list-alt','FontAwesome',0),(862,'admin','2018-05-06 11:25:42','',NULL,'fa fa-list-ol','fa fa-list-ol','FontAwesome',0),(863,'admin','2018-05-06 11:25:42','',NULL,'fa fa-list-ul','fa fa-list-ul','FontAwesome',0),(864,'admin','2018-05-06 11:25:42','',NULL,'fa fa-location-arrow','fa fa-location-arrow','FontAwesome',0),(865,'admin','2018-05-06 11:25:42','',NULL,'fa fa-lock','fa fa-lock','FontAwesome',0),(866,'admin','2018-05-06 11:25:42','',NULL,'fa fa-lock-open','fa fa-lock-open','FontAwesome',0),(867,'admin','2018-05-06 11:25:43','',NULL,'fa fa-long-arrow-alt-down','fa fa-long-arrow-alt-down','FontAwesome',0),(868,'admin','2018-05-06 11:25:43','',NULL,'fa fa-long-arrow-alt-left','fa fa-long-arrow-alt-left','FontAwesome',0),(869,'admin','2018-05-06 11:25:43','',NULL,'fa fa-long-arrow-alt-right','fa fa-long-arrow-alt-right','FontAwesome',0),(870,'admin','2018-05-06 11:25:43','',NULL,'fa fa-long-arrow-alt-up','fa fa-long-arrow-alt-up','FontAwesome',0),(871,'admin','2018-05-06 11:25:43','',NULL,'fa fa-low-vision','fa fa-low-vision','FontAwesome',0),(872,'admin','2018-05-06 11:25:43','',NULL,'fa fa-magic','fa fa-magic','FontAwesome',0),(873,'admin','2018-05-06 11:25:43','',NULL,'fa fa-magnet','fa fa-magnet','FontAwesome',0),(874,'admin','2018-05-06 11:25:43','',NULL,'fa fa-male','fa fa-male','FontAwesome',0),(875,'admin','2018-05-06 11:25:43','',NULL,'fa fa-map','fa fa-map','FontAwesome',0),(876,'admin','2018-05-06 11:25:43','',NULL,'fa fa-map-marker','fa fa-map-marker','FontAwesome',0),(877,'admin','2018-05-06 11:25:43','',NULL,'fa fa-map-marker-alt','fa fa-map-marker-alt','FontAwesome',0),(878,'admin','2018-05-06 11:25:43','',NULL,'fa fa-map-pin','fa fa-map-pin','FontAwesome',0),(879,'admin','2018-05-06 11:25:43','',NULL,'fa fa-map-signs','fa fa-map-signs','FontAwesome',0),(880,'admin','2018-05-06 11:25:43','',NULL,'fa fa-mars','fa fa-mars','FontAwesome',0),(881,'admin','2018-05-06 11:25:43','',NULL,'fa fa-mars-double','fa fa-mars-double','FontAwesome',0),(882,'admin','2018-05-06 11:25:43','',NULL,'fa fa-mars-stroke','fa fa-mars-stroke','FontAwesome',0),(883,'admin','2018-05-06 11:25:43','',NULL,'fa fa-mars-stroke-h','fa fa-mars-stroke-h','FontAwesome',0),(884,'admin','2018-05-06 11:25:43','',NULL,'fa fa-mars-stroke-v','fa fa-mars-stroke-v','FontAwesome',0),(885,'admin','2018-05-06 11:25:43','',NULL,'fa fa-medkit','fa fa-medkit','FontAwesome',0),(886,'admin','2018-05-06 11:25:43','',NULL,'fa fa-meh','fa fa-meh','FontAwesome',0),(887,'admin','2018-05-06 11:25:44','',NULL,'fa fa-mercury','fa fa-mercury','FontAwesome',0),(888,'admin','2018-05-06 11:25:44','',NULL,'fa fa-microchip','fa fa-microchip','FontAwesome',0),(889,'admin','2018-05-06 11:25:44','',NULL,'fa fa-microphone','fa fa-microphone','FontAwesome',0),(890,'admin','2018-05-06 11:25:44','',NULL,'fa fa-microphone-slash','fa fa-microphone-slash','FontAwesome',0),(891,'admin','2018-05-06 11:25:44','',NULL,'fa fa-minus','fa fa-minus','FontAwesome',0),(892,'admin','2018-05-06 11:25:44','',NULL,'fa fa-minus-circle','fa fa-minus-circle','FontAwesome',0),(893,'admin','2018-05-06 11:25:44','',NULL,'fa fa-minus-square','fa fa-minus-square','FontAwesome',0),(894,'admin','2018-05-06 11:25:44','',NULL,'fa fa-mobile','fa fa-mobile','FontAwesome',0),(895,'admin','2018-05-06 11:25:44','',NULL,'fa fa-mobile-alt','fa fa-mobile-alt','FontAwesome',0),(896,'admin','2018-05-06 11:25:44','',NULL,'fa fa-money-bill-alt','fa fa-money-bill-alt','FontAwesome',0),(897,'admin','2018-05-06 11:25:44','',NULL,'fa fa-moon','fa fa-moon','FontAwesome',0),(898,'admin','2018-05-06 11:25:44','',NULL,'fa fa-motorcycle','fa fa-motorcycle','FontAwesome',0),(899,'admin','2018-05-06 11:25:44','',NULL,'fa fa-mouse-pointer','fa fa-mouse-pointer','FontAwesome',0),(900,'admin','2018-05-06 11:25:44','',NULL,'fa fa-music','fa fa-music','FontAwesome',0),(901,'admin','2018-05-06 11:25:44','',NULL,'fa fa-neuter','fa fa-neuter','FontAwesome',0),(902,'admin','2018-05-06 11:25:45','',NULL,'fa fa-newspaper','fa fa-newspaper','FontAwesome',0),(903,'admin','2018-05-06 11:25:45','',NULL,'fa fa-object-group','fa fa-object-group','FontAwesome',0),(904,'admin','2018-05-06 11:25:45','',NULL,'fa fa-object-ungroup','fa fa-object-ungroup','FontAwesome',0),(905,'admin','2018-05-06 11:25:45','',NULL,'fa fa-outdent','fa fa-outdent','FontAwesome',0),(906,'admin','2018-05-06 11:25:45','',NULL,'fa fa-paint-brush','fa fa-paint-brush','FontAwesome',0),(907,'admin','2018-05-06 11:25:45','',NULL,'fa fa-pallet','fa fa-pallet','FontAwesome',0),(908,'admin','2018-05-06 11:25:45','',NULL,'fa fa-paper-plane','fa fa-paper-plane','FontAwesome',0),(909,'admin','2018-05-06 11:25:45','',NULL,'fa fa-paperclip','fa fa-paperclip','FontAwesome',0),(910,'admin','2018-05-06 11:25:45','',NULL,'fa fa-paragraph','fa fa-paragraph','FontAwesome',0),(911,'admin','2018-05-06 11:25:45','',NULL,'fa fa-paste','fa fa-paste','FontAwesome',0),(912,'admin','2018-05-06 11:25:46','',NULL,'fa fa-pause','fa fa-pause','FontAwesome',0),(913,'admin','2018-05-06 11:25:46','',NULL,'fa fa-pause-circle','fa fa-pause-circle','FontAwesome',0),(914,'admin','2018-05-06 11:25:46','',NULL,'fa fa-paw','fa fa-paw','FontAwesome',0),(915,'admin','2018-05-06 11:25:46','',NULL,'fa fa-pen-square','fa fa-pen-square','FontAwesome',0),(916,'admin','2018-05-06 11:25:46','',NULL,'fa fa-pencil-alt','fa fa-pencil-alt','FontAwesome',0),(929,'admin','2018-05-06 11:32:44','',NULL,'1','btnExcel','ModActions',0),(931,'','2018-05-06 16:54:40','',NULL,'2','View','ModActions',0),(935,'admin','2018-05-06 19:40:57','',NULL,'SysManager','admin','RoleUser',0),(936,'admin','2018-05-06 19:41:08','',NULL,'SysManager','kevin','RoleUser',0),(937,'admin','2018-05-06 19:42:36','',NULL,'SysManager','1','RoleProfile',0),(942,'admin','2018-05-06 20:49:14','',NULL,'General','admin','RoleUser',0),(943,'admin','2018-05-06 20:49:25','',NULL,'General','1','RoleProfile',0),(950,'admin','2018-05-11 10:39:56','',NULL,'TrinitAdmin','2','RoleProfile',0),(952,'','2018-05-11 10:43:16','',NULL,'11','View','ModActions',0),(1008,'admin','2018-06-11 19:38:38','',NULL,'OpenLink','OpenLink','ButtonType',0),(1009,'admin','2018-06-11 19:38:54','',NULL,'ModalOpen','ModalOpen','ButtonType',0),(1034,'admin','2018-06-21 13:54:00','',NULL,'Teachers','1','RoleProfile',0),(1039,'','2018-06-21 13:56:48','',NULL,'15','View','ModActions',0),(1041,'','2018-06-21 16:08:02','',NULL,'16','View','ModActions',0),(1098,'','2018-07-04 09:13:13','',NULL,'21','View','ModActions',0),(1135,'admin','2019-05-15 04:58:03','',NULL,'appconfigs','appconfigs','SystemTables',0),(1137,'admin','2019-05-15 04:58:04','',NULL,'dbbackup','dbbackup','SystemTables',0),(1138,'admin','2019-05-15 04:58:04','',NULL,'dh_applications','dh_applications','SystemTables',0),(1139,'admin','2019-05-15 04:58:04','',NULL,'dh_columns','dh_columns','SystemTables',0),(1141,'admin','2019-05-15 04:58:04','',NULL,'dh_listquery','dh_listquery','SystemTables',0),(1144,'admin','2019-05-15 04:58:04','',NULL,'dh_processinstances','dh_processinstances','SystemTables',0),(1145,'admin','2019-05-15 04:58:04','',NULL,'dh_profilepermissions','dh_profilepermissions','SystemTables',0),(1146,'admin','2019-05-15 04:58:04','',NULL,'dh_tmpfiles','dh_tmpfiles','SystemTables',0),(1147,'admin','2019-05-15 04:58:04','',NULL,'dh_usergroups','dh_usergroups','SystemTables',0),(1149,'admin','2019-05-15 04:58:04','',NULL,'dh_users','dh_users','SystemTables',0),(1150,'admin','2019-05-15 04:58:04','',NULL,'dh_workflowactions','dh_workflowactions','SystemTables',0),(1151,'admin','2019-05-15 04:58:04','',NULL,'dh_workflows','dh_workflows','SystemTables',0),(1152,'admin','2019-05-15 04:58:04','',NULL,'dhalerts','dhalerts','SystemTables',0),(1153,'admin','2019-05-15 04:58:04','',NULL,'dhcomments','dhcomments','SystemTables',0),(1154,'admin','2019-05-15 04:58:04','',NULL,'elementstorage','elementstorage','SystemTables',0),(1155,'admin','2019-05-15 04:58:04','',NULL,'fileaccesslog','fileaccesslog','SystemTables',0),(1156,'admin','2019-05-15 04:58:04','',NULL,'filetypes','filetypes','SystemTables',0),(1158,'admin','2019-05-15 04:58:04','',NULL,'menuactions','menuactions','SystemTables',0),(1160,'admin','2019-05-15 04:58:05','',NULL,'dh_templateprefix','dh_templateprefix','SystemTables',0),(1161,'','2019-05-15 05:19:23','',NULL,'1','View','ModActions',0),(1162,'','2019-05-15 05:20:26','',NULL,'2','View','ModActions',0),(1163,'','2019-05-15 05:23:00','',NULL,'3','View','ModActions',0),(1165,'','2019-05-15 05:24:43','',NULL,'5','View','ModActions',0),(1171,'','2019-05-16 07:57:52','',NULL,'11','View','ModActions',0),(1174,'admin','2019-05-21 06:59:47','',NULL,'11','btnDelete','ModActions',0),(1175,'admin','2019-05-21 06:59:47','',NULL,'11','btnDownloadDocument','ModActions',0),(1176,'admin','2019-05-21 06:59:47','',NULL,'11','btnEditDescription','ModActions',0),(1177,'admin','2019-05-21 07:04:47','',NULL,'11','btnBringUp','ModActions',0),(1178,'admin','2019-05-21 07:04:47','',NULL,'11','btnExcel','ModActions',0),(1179,'admin','2019-05-21 07:04:47','',NULL,'11','btnForward','ModActions',0),(1181,'admin','2019-05-21 07:04:48','',NULL,'11','btnMailFilingAction','ModActions',0),(1182,'admin','2019-05-21 07:04:48','',NULL,'11','btnUpdateRecord','ModActions',0),(1183,'admin','2019-05-21 07:16:23','',NULL,'11','btnReceiveMail','ModActions',0),(1225,'admin','2019-05-21 10:12:45','',NULL,'listitems','listitems','SystemTables',0),(1226,'admin','2019-05-21 10:13:07','',NULL,'adodb_logsql','adodb_logsql','SystemTables',0),(1229,'','2019-05-21 12:11:08','',NULL,'1','View','ModActions',0),(1230,'','2019-05-21 12:55:22','',NULL,'2','View','ModActions',0),(1231,'','2019-05-21 12:57:30','',NULL,'3','View','ModActions',0),(1233,'','2019-05-21 13:01:29','',NULL,'5','View','ModActions',0),(1234,'','2019-05-21 13:03:18','',NULL,'6','View','ModActions',0),(1235,'','2019-05-21 13:05:10','',NULL,'7','View','ModActions',0),(1236,'admin','2019-05-21 13:06:09','',NULL,'dh_userprofiles','dh_userprofiles','SystemTables',0),(1237,'admin','2019-05-21 13:06:26','',NULL,'syslogin','syslogin','SystemTables',0),(1238,'admin','2019-05-21 13:06:34','',NULL,'vw_dhrolegroups','vw_dhrolegroups','SystemTables',0),(1239,'admin','2019-05-21 13:06:48','',NULL,'vw_fileaccesslog','vw_fileaccesslog','SystemTables',0),(1240,'admin','2019-05-21 13:07:02','',NULL,'vw_modsearchflds','vw_modsearchflds','SystemTables',0),(1241,'admin','2019-05-21 13:07:12','',NULL,'vw_profilepermissions','vw_profilepermissions','SystemTables',0),(1242,'admin','2019-05-21 13:07:21','',NULL,'vw_userslist','vw_userslist','SystemTables',0),(1243,'admin','2019-05-21 13:07:33','',NULL,'vw_roleprofiles','vw_roleprofiles','SystemTables',0),(1244,'admin','2019-05-21 13:07:43','',NULL,'vw_usergroups','vw_usergroups','SystemTables',0),(1247,'admin','2019-05-30 11:14:19','',NULL,'dh_listview','dh_listview','SystemTables',0),(1249,'admin','2019-05-30 11:50:28','',NULL,'audit_trail','audit_trail','SystemTables',0),(1250,'admin','2019-05-30 13:43:36','',NULL,'dh_modules','dh_modules','SystemTables',0),(1252,'','2019-06-19 13:15:32','',NULL,'9','View','ModActions',0),(1268,'admin','2019-06-19 19:31:39','',NULL,'Hansard','2','RoleProfile',0),(1269,'admin','2019-06-19 19:37:02','',NULL,'Hansard','1','RoleProfile',0),(1270,'','2019-06-19 22:22:27','',NULL,'11','View','ModActions',0),(1337,'','2019-06-19 23:52:14','',NULL,'15','View','ModActions',0),(1352,'admin','2019-06-21 09:32:28','',NULL,'ChairPerson','ChairPerson','CommitteRanks',0),(1353,'admin','2019-06-21 09:32:50','',NULL,'Vice ChairPerson','Vice ChairPerson','CommitteRanks',0),(1354,'admin','2019-06-21 09:32:59','',NULL,'Member','Member','CommitteRanks',0),(1355,'','2019-06-25 01:53:19','',NULL,'16','View','ModActions',0),(1359,'admin','2019-07-03 15:10:54','',NULL,'SPECIALLY ELECTED','SPECIALLY ELECTED','Wards041',0),(1360,'admin','2019-07-03 15:11:04','',NULL,'SPEAKER','SPEAKER','Wards041',0),(1362,'','2019-07-04 06:10:26','',NULL,'21','View','ModActions',0),(1363,'','2019-07-04 15:15:53','',NULL,'22','View','ModActions',0),(1364,'','2019-07-04 15:31:49','',NULL,'23','View','ModActions',0),(1365,'','2019-07-05 12:47:27','',NULL,'24','View','ModActions',0),(1366,'','2019-07-07 08:53:21','',NULL,'25','View','ModActions',0),(1367,'admin','2019-07-07 09:28:40','',NULL,'Statutory Documents','Statutory Documents','OtherDocCategory',0),(1368,'admin','2019-07-07 09:30:47','',NULL,'Assembly Fact Sheets','Assembly Fact Sheets','OtherDocCategory',0),(1369,'admin','2019-07-07 18:42:33','admin','2019-08-09 15:38:37','Committe Room 1','Committe Room 1','MeetingVenue',0),(1370,'admin','2019-07-07 18:42:48','admin','2019-08-09 15:38:21','Committe Room 2','Committe Room 2','MeetingVenue',0),(1371,'admin','2019-07-07 18:43:52','admin','2019-08-09 15:38:03','Committe Room 3','Committe Room 3','MeetingVenue',0),(1372,'admin','2019-07-07 18:44:04','admin','2019-08-09 15:37:47','Committe Room 4','Committe Room 4','MeetingVenue',0),(1373,'admin','2019-07-07 20:25:05','',NULL,'Monday','Monday','WeekDays',0),(1374,'admin','2019-07-07 20:25:17','',NULL,'Tuesday','Tuesday','WeekDays',0),(1375,'admin','2019-07-07 20:25:33','',NULL,'Wednesday','Wednesday','WeekDays',0),(1376,'admin','2019-07-07 20:25:46','',NULL,'Thursday','Thursday','WeekDays',0),(1377,'admin','2019-07-07 20:25:54','',NULL,'Friday','Friday','WeekDays',0),(1378,'admin','2019-07-07 20:26:09','',NULL,'Saturday','Saturday','WeekDays',0),(1379,'admin','2019-07-07 20:26:17','',NULL,'Sunday','Sunday','WeekDays',0),(1380,'','2019-07-07 20:27:27','',NULL,'26','View','ModActions',0),(1403,'admin','2019-07-11 13:46:51','',NULL,'Agenda','Agenda','CommitteeDocType',0),(1404,'admin','2019-07-11 13:47:05','',NULL,'Minutes','Minutes','CommitteeDocType',0),(1405,'admin','2019-07-11 13:47:17','',NULL,'Reports','Reports','CommitteeDocType',0),(1406,'admin','2019-07-16 12:55:02','',NULL,'SECTORAL COMMITTEE','SECTORAL COMMITTEE','CommitteeType',0),(1407,'admin','2019-07-16 12:55:21','',NULL,'SELECT COMMITTEE','SELECT COMMITTEE','CommitteeType',0),(1408,'admin','2019-07-16 12:55:44','',NULL,'HOUSE KEEPING COMMITTEE','HOUSE KEEPING COMMITTEE','CommitteeType',0),(1409,'admin','2019-07-16 13:08:53','',NULL,'SysManager','njuguna','RoleUser',0),(1411,'admin','2019-07-22 08:56:53','',NULL,'Assembly  Chamber','Assembly Chamber','MeetingVenue',0),(1430,'njuguna','2019-07-31 06:14:44','',NULL,'COMMITTEE CLERK','COMMITTEE CLERK','Wards041',0),(1433,'admin','2019-08-09 14:51:55','',NULL,'Other','Other','MeetingVenue',0),(1434,NULL,'2019-08-14 02:38:58',NULL,NULL,'27','View','ModActions',NULL),(1435,NULL,'2019-08-14 07:40:45',NULL,NULL,'28','View','ModActions',NULL),(1438,'admin','2019-08-14 09:42:25',NULL,NULL,'Accounts','3','RoleProfile',NULL),(1439,NULL,'2019-09-05 11:05:30',NULL,NULL,'29','View','ModActions',NULL),(1441,NULL,'2019-09-05 14:52:23',NULL,NULL,'30','View','ModActions',NULL),(1445,NULL,'2019-11-07 08:08:38',NULL,NULL,'34','View','ModActions',NULL),(1446,NULL,'2019-11-07 09:21:34',NULL,NULL,'35','View','ModActions',NULL),(1449,'admin','2019-11-07 09:40:43',NULL,NULL,'Individuals','Individuals','SendChannel',NULL),(1451,'admin','2019-11-07 09:41:07',NULL,NULL,'Members','Members','SendChannel',NULL),(1452,'admin','2019-11-07 09:41:33',NULL,NULL,'Committees','Committees','SendChannel',NULL),(1453,'admin','2019-11-07 10:02:40',NULL,NULL,'SendNow','Send Now','SendFrequency',NULL),(1454,'admin','2019-11-07 10:03:19',NULL,NULL,'Composed','Composed','MessageType',NULL),(1455,'admin','2019-11-07 10:03:25',NULL,NULL,'SMSTemplates','SMS Templates','MessageType',NULL),(1457,'admin','2019-11-07 10:03:52',NULL,NULL,'ScheduleMessage','Schedule Message','SendFrequency',NULL),(1458,'admin','2019-11-07 10:53:39',NULL,NULL,'UserGroups','UserGroups','SendChannel',NULL),(1464,'admin','2019-11-09 08:07:57',NULL,NULL,'Clerks','4','RoleProfile',NULL),(1470,'admin','2019-11-09 08:24:40',NULL,NULL,'Sergeants','5','RoleProfile',NULL),(1474,'admin','2019-11-09 08:37:26',NULL,NULL,'SERGEANT','SERGEANT','Wards041',NULL),(1475,'admin','2019-11-09 08:39:11',NULL,NULL,'HANSARD CLERK','HANSARD CLERK','Wards041',NULL),(1476,'admin','2019-11-09 08:39:35',NULL,NULL,'ASSEMBLY CLERK','ASSEMBLY CLERK','Wards041',NULL),(1477,'admin','2019-11-09 08:45:49',NULL,NULL,'Notices of Motion','Notices of Motion','CommitteeDocType',NULL),(1478,'admin','2019-11-09 08:46:46',NULL,NULL,'Briefs','Briefs','CommitteeDocType',NULL),(1479,'admin','2019-11-09 08:47:04',NULL,NULL,'Correspondences','Correspondences','CommitteeDocType',NULL),(1480,'admin','2019-11-09 08:48:06',NULL,NULL,'Others','Others','CommitteeDocType',NULL),(1481,'admin','2019-11-09 09:15:14',NULL,NULL,'Clerks','3','RoleProfile',NULL),(1482,'admin','2019-11-27 10:02:01',NULL,NULL,'Clerk','Clerk','usertype',NULL),(1483,'admin','2019-11-27 10:02:21',NULL,NULL,'Accountant','Accountant','usertype',NULL),(1484,NULL,'2019-12-05 11:01:46',NULL,NULL,'36','View','ModActions',NULL),(1485,NULL,'2020-01-23 11:49:12',NULL,NULL,'37','View','ModActions',NULL),(1486,NULL,'2020-03-03 10:12:38',NULL,NULL,'38','View','ModActions',NULL),(1488,'admin','2020-03-03 12:09:42',NULL,NULL,'General','General','NotificationType',NULL),(1489,'admin','2020-03-03 12:10:03',NULL,NULL,'Committee Meeting','Committee Meeting','NotificationType',NULL),(1490,'admin','2020-03-03 12:10:23',NULL,NULL,'Special Sitting','Special Sitting','NotificationType',NULL),(1491,NULL,'2021-01-20 17:42:53',NULL,NULL,'39','View','ModActions',NULL),(1492,NULL,'2021-01-20 17:55:12',NULL,NULL,'40','View','ModActions',NULL),(1493,'admin','2021-08-10 07:39:50',NULL,NULL,'SIAYA TOWNSHIP','SIAYA TOWNSHIP','Wards041',NULL),(1494,'admin','2021-08-10 07:40:02',NULL,NULL,'NORTH ALEGO','NORTH ALEGO','Wards041',NULL),(1495,'admin','2021-08-10 07:40:11',NULL,NULL,'CENTRAL ALEGO','CENTRAL ALEGO','Wards041',NULL),(1496,'admin','2021-08-10 07:40:19',NULL,NULL,'WEST ALEGO','WEST ALEGO','Wards041',NULL),(1497,'admin','2021-08-10 07:40:26',NULL,NULL,'USONGA','USONGA','Wards041',NULL),(1498,'admin','2021-08-10 07:40:39',NULL,NULL,'WEST GEM','WEST GEM','Wards041',NULL),(1499,'admin','2021-08-10 07:40:49',NULL,NULL,'CENTRAL GEM','CENTRAL GEM','Wards041',NULL),(1500,'admin','2021-08-10 07:40:58',NULL,NULL,'SOUTH EAST ALEGO','SOUTH EAST ALEGO','Wards041',NULL),(1501,'admin','2021-08-10 07:41:05',NULL,NULL,'NORTH GEM','NORTH GEM','Wards041',NULL),(1502,'admin','2021-08-10 07:41:13',NULL,NULL,'EAST GEM','EAST GEM','Wards041',NULL),(1503,'admin','2021-08-10 07:41:21',NULL,NULL,'YALA TOWNSHIP','YALA TOWNSHIP','Wards041',NULL),(1504,'admin','2021-08-10 07:41:31',NULL,NULL,'SOUTH GEM','SOUTH GEM','Wards041',NULL),(1505,'admin','2021-08-10 07:41:38',NULL,NULL,'UGUNJA','UGUNJA','Wards041',NULL),(1506,'admin','2021-08-10 07:41:47',NULL,NULL,'SIDINDI','SIDINDI','Wards041',NULL),(1507,'admin','2021-08-10 07:41:54',NULL,NULL,'SIGOMRE','SIGOMRE','Wards041',NULL),(1508,'admin','2021-08-10 07:42:03',NULL,NULL,'EAST UGENYA','EAST UGENYA','Wards041',NULL),(1509,'admin','2021-08-10 07:42:11',NULL,NULL,'WEST UGENYA','WEST UGENYA','Wards041',NULL),(1510,'admin','2021-08-10 07:42:20',NULL,NULL,'UKWALA','UKWALA','Wards041',NULL),(1511,'admin','2021-08-10 07:42:31',NULL,NULL,'NORTH UGENYA','NORTH UGENYA','Wards041',NULL),(1512,'admin','2021-08-10 07:42:38',NULL,NULL,'SOUTH UYOMA','SOUTH UYOMA','Wards041',NULL),(1513,'admin','2021-08-10 07:42:46',NULL,NULL,'WEST UYOMA','WEST UYOMA','Wards041',NULL),(1514,'admin','2021-08-10 07:42:54',NULL,NULL,'NORTH UYOMA','NORTH UYOMA','Wards041',NULL),(1515,'admin','2021-08-10 07:43:02',NULL,NULL,'EAST ASEMBO','EAST ASEMBO','Wards041',NULL),(1516,'admin','2021-08-10 07:43:10',NULL,NULL,'WEST ASEMBO','WEST ASEMBO','Wards041',NULL),(1517,'admin','2021-08-10 07:43:19',NULL,NULL,'YIMBO EAST','YIMBO EAST','Wards041',NULL),(1518,'admin','2021-08-10 07:43:26',NULL,NULL,'WEST YIMBO','WEST YIMBO','Wards041',NULL),(1519,'admin','2021-08-10 07:43:35',NULL,NULL,'NORTH SAKWA','NORTH SAKWA','Wards041',NULL),(1520,'admin','2021-08-10 07:43:43',NULL,NULL,'CENTAL SAKWA','CENTAL SAKWA','Wards041',NULL),(1521,'admin','2021-08-10 07:43:52',NULL,NULL,'SOUTH SAKWA','SOUTH SAKWA','Wards041',NULL),(1522,'admin','2021-08-10 07:44:02',NULL,NULL,'WEST SAKWA','WEST SAKWA','Wards041',NULL);
/*!40000 ALTER TABLE `listitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuactions`
--

DROP TABLE IF EXISTS `menuactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuactions` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `IconPosition` varchar(255) DEFAULT 'Prefix',
  `DisplayOrder` int DEFAULT NULL,
  `ParentMenu` varchar(255) DEFAULT NULL,
  `MenuType` varchar(255) DEFAULT NULL,
  `ActionName` varchar(255) NOT NULL DEFAULT '',
  `ActionClass` varchar(255) DEFAULT NULL,
  `ActionAttributes` varchar(255) DEFAULT NULL,
  `ActionToolTip` varchar(255) DEFAULT NULL,
  `DisplayName` varchar(255) DEFAULT NULL,
  `ActionIconRef` varchar(255) DEFAULT NULL,
  `MenuDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ActionName`),
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuactions`
--

LOCK TABLES `menuactions` WRITE;
/*!40000 ALTER TABLE `menuactions` DISABLE KEYS */;
INSERT INTO `menuactions` VALUES (1,'admin','2018-05-06 11:26:10','',NULL,'Prefix',2,'btnHeldFilesAO','MenuItem','btnBringUp','','','','Bring-up','fa fa-reply','Bring-up'),(2,'admin','2018-05-06 11:26:10','',NULL,'Prefix',1,'','IconButton','btnDelete','','','Delete Record','Delete','fa fa-trash','Delete Record'),(3,'admin','2018-05-06 11:26:10','',NULL,'Prefix',2,'','IconButton','btnDownloadDocument','','','Download Document','','fa fa-download','Download Document'),(4,'admin','2018-05-06 11:26:10','',NULL,'Prefix',1,'','IconButton','btnEditDescription','','','Edit Document Description','','fa fa-edit','Edit Document Description'),(5,'admin','2018-05-06 11:26:10','admin',NULL,'Prefix',0,'','IconButton','btnExcel','btn btn-info','','Export to Excel','Export to Excel','fa fa-file-excel-o','Export to Excel'),(6,'admin','2018-05-06 11:26:10','',NULL,'Prefix',3,'btnHeldFilesAO','MenuItem','btnForward','','','','Forward','fa fa-forward','Forward to Action Officer'),(7,'admin','2018-05-06 11:26:10','',NULL,'Prefix',1,'','Pop-Up','btnHeldFilesAO','','','','Show Actions','fa fa-caret','Held Files AO'),(8,'admin','2018-05-06 11:26:10','',NULL,'Prefix',0,'','ButtonDropDown','btnMailFilingAction','','','','Mail Filing','fa fa-file','File Mails'),(9,'admin','2018-05-06 11:26:10','admin',NULL,'Prefix',7,'','IconButton','btnPdfExport','btn btn-info','','Export to PDF','Export to PDF','fa fa-file-pdf-o','Export PDF'),(10,'admin','2018-05-06 11:26:11','',NULL,'Prefix',0,'','ButtonDropDown','btnReceiveMail','','','Show Action','Actions','fa fa-caret-down','Mail Receive Actions'),(11,'admin','2018-05-06 11:26:11','',NULL,'Prefix',8,'btnHeldFilesAO','MenuItem','btnReturntoRMU','','','','Return to RMU','fa fa-reply','Return File to RMU'),(12,'admin','2018-05-06 11:26:11','admin',NULL,'Prefix',0,'','FormButton','btnSaveRecord','btn btn-success','','','Save Record','fa fa-save','Create'),(13,'admin','2018-05-06 11:26:11','',NULL,'Prefix',2,'btnReceiveMail','MenuItem','btnsendforFiling','','','','Send for Filing','fa fa-send','Send for Filing'),(14,'admin','2018-05-06 11:26:11','admin',NULL,'Prefix',1,'btnReceiveMail','MenuItem','btnSendtoMO','','','','Send to Marking Officer','fa fa-users','Send to Marking Officer'),(15,'admin','2018-05-06 11:26:11','admin',NULL,'Prefix',0,'','FormButton','btnUpdateRecord','btn btn-success','','','Update Record','fa fa-edit','Update Record'),(16,'admin','2018-05-06 11:26:11','',NULL,'Prefix',1,'btnHeldFilesAO','MenuItem','btnViewFile','','','','View File','fa fa-eye','View File AO'),(17,'admin','2018-05-06 11:26:11','',NULL,'Prefix',1,'','IconButton','View','','','View Template','View','fa fa-eye','View');
/*!40000 ALTER TABLE `menuactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationlist`
--

DROP TABLE IF EXISTS `notificationlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificationlist` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NULL DEFAULT NULL,
  `NTargetedTo` int DEFAULT NULL,
  `NStatus` varchar(255) DEFAULT 'Pending',
  `NotificationID` int DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationlist`
--

LOCK TABLES `notificationlist` WRITE;
/*!40000 ALTER TABLE `notificationlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificationlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `NType` varchar(255) DEFAULT NULL,
  `NBody` longtext,
  `MeetingID` int DEFAULT NULL,
  `CommitteeID` int DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plenarymeetings`
--

DROP TABLE IF EXISTS `plenarymeetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plenarymeetings` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Venue` varchar(255) DEFAULT NULL,
  `Posted` varchar(255) NOT NULL DEFAULT 'No',
  `DatePosted` datetime DEFAULT NULL,
  `Agenda` varchar(255) DEFAULT NULL,
  `MeetingDate` date DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `ToTime` time DEFAULT NULL,
  `ClerkResponsible` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plenarymeetings`
--

LOCK TABLES `plenarymeetings` WRITE;
/*!40000 ALTER TABLE `plenarymeetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `plenarymeetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduleofmeetings`
--

DROP TABLE IF EXISTS `scheduleofmeetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduleofmeetings` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MeetingDay` varchar(255) DEFAULT NULL,
  `CommitteeID` int DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `ToTime` time DEFAULT NULL,
  `Venue` varchar(255) DEFAULT NULL,
  `OtherVenue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduleofmeetings`
--

LOCK TABLES `scheduleofmeetings` WRITE;
/*!40000 ALTER TABLE `scheduleofmeetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduleofmeetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslogin`
--

DROP TABLE IF EXISTS `syslogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `syslogin` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `logged_user` varchar(255) DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout_time` datetime DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslogin`
--

LOCK TABLES `syslogin` WRITE;
/*!40000 ALTER TABLE `syslogin` DISABLE KEYS */;
INSERT INTO `syslogin` VALUES (1,'admin','2021-08-10 07:24:21','2021-08-10 11:38:37','ac32e9b95807fc0ffff75eb8e092cae3','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:90.0) Gecko/20100101 Firefox/90.0'),(2,'admin','2021-08-10 08:43:50',NULL,'5fb1b7881b7e108b4580b5fae38096d1','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:90.0) Gecko/20100101 Firefox/90.0');
/*!40000 ALTER TABLE `syslogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bulksms`
--

DROP TABLE IF EXISTS `tbl_bulksms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bulksms` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `MessageID` varchar(255) DEFAULT NULL,
  `SMSFrom` varchar(255) DEFAULT NULL,
  `SMSTo` varchar(255) DEFAULT NULL,
  `Message` longtext,
  `MessageParts` int DEFAULT NULL,
  `CharaterCount` int DEFAULT NULL,
  `SMSCost` decimal(10,2) DEFAULT NULL,
  `SMSStatus` varchar(255) NOT NULL DEFAULT 'Pending',
  `ReceiptID` varchar(255) DEFAULT NULL,
  `StatusCode` int DEFAULT NULL,
  `SendChannel` varchar(255) DEFAULT NULL,
  `GroupCode` varchar(255) DEFAULT NULL,
  `ParentMsgID` int DEFAULT NULL,
  `ScheduledDate` datetime DEFAULT NULL,
  `SendFrequency` varchar(255) DEFAULT NULL,
  `ReceiptientName` varchar(255) DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bulksms`
--

LOCK TABLES `tbl_bulksms` WRITE;
/*!40000 ALTER TABLE `tbl_bulksms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bulksms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_info`
--

DROP TABLE IF EXISTS `tbl_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_info`
--

LOCK TABLES `tbl_info` WRITE;
/*!40000 ALTER TABLE `tbl_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_messageout`
--

DROP TABLE IF EXISTS `tbl_messageout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_messageout` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `SendChannel` varchar(255) DEFAULT NULL,
  `MessageType` varchar(255) DEFAULT NULL,
  `MessageBody` longtext,
  `SendFrequency` varchar(255) DEFAULT NULL,
  `SendDate` date DEFAULT NULL,
  `SendTime` time DEFAULT NULL,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_messageout`
--

LOCK TABLES `tbl_messageout` WRITE;
/*!40000 ALTER TABLE `tbl_messageout` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_messageout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_smstemplates`
--

DROP TABLE IF EXISTS `tbl_smstemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_smstemplates` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` datetime DEFAULT NULL,
  `TemplateName` varchar(255) DEFAULT NULL,
  `TemplateBody` longtext,
  UNIQUE KEY `S_ROWID` (`S_ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_smstemplates`
--

LOCK TABLES `tbl_smstemplates` WRITE;
/*!40000 ALTER TABLE `tbl_smstemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_smstemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_assemblycommittees`
--

DROP TABLE IF EXISTS `vw_assemblycommittees`;
/*!50001 DROP VIEW IF EXISTS `vw_assemblycommittees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_assemblycommittees` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `ModifiedBy`,
 1 AS `DateModified`,
 1 AS `CommitteeName`,
 1 AS `CommitteeDescription`,
 1 AS `ClerkResponsible`,
 1 AS `ClerkName`,
 1 AS `ClerkEmail`,
 1 AS `MembersCounts`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_commMemberList`
--

DROP TABLE IF EXISTS `vw_commMemberList`;
/*!50001 DROP VIEW IF EXISTS `vw_commMemberList`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_commMemberList` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `MemberType`,
 1 AS `PersonnelNo`,
 1 AS `FullName`,
 1 AS `Email`,
 1 AS `PhoneNo`,
 1 AS `Designation`,
 1 AS `Ward`,
 1 AS `IDNo`,
 1 AS `MemID`,
 1 AS `ProfileImg`,
 1 AS `CommitteeID`,
 1 AS `CommitteeName`,
 1 AS `ClerkResponsible`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_committeeattendance`
--

DROP TABLE IF EXISTS `vw_committeeattendance`;
/*!50001 DROP VIEW IF EXISTS `vw_committeeattendance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_committeeattendance` AS SELECT 
 1 AS `MemID`,
 1 AS `InAttendancePosition`,
 1 AS `PayOutAmount`,
 1 AS `MemberType`,
 1 AS `MeetingID`,
 1 AS `Venue`,
 1 AS `CommitteeID`,
 1 AS `MeetingDate`,
 1 AS `Agenda`,
 1 AS `CommitteeName`,
 1 AS `ClerkEmail`,
 1 AS `ClerkName`,
 1 AS `MeetingTime`,
 1 AS `OtherVenue`,
 1 AS `FullName`,
 1 AS `IDNo`,
 1 AS `PersonnelNo`,
 1 AS `Email`,
 1 AS `PhoneNo`,
 1 AS `ProfileImg`,
 1 AS `Ward`,
 1 AS `Designation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_committeemeetings`
--

DROP TABLE IF EXISTS `vw_committeemeetings`;
/*!50001 DROP VIEW IF EXISTS `vw_committeemeetings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_committeemeetings` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `ModifiedBy`,
 1 AS `DateModified`,
 1 AS `Venue`,
 1 AS `CommitteeID`,
 1 AS `MeetingDate`,
 1 AS `Posted`,
 1 AS `OtherVenue`,
 1 AS `DatePosted`,
 1 AS `Agenda`,
 1 AS `CommitteeName`,
 1 AS `ClerkEmail`,
 1 AS `ClerkName`,
 1 AS `MeetingTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_dhrolegroups`
--

DROP TABLE IF EXISTS `vw_dhrolegroups`;
/*!50001 DROP VIEW IF EXISTS `vw_dhrolegroups`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_dhrolegroups` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `ModifiedBy`,
 1 AS `DateModified`,
 1 AS `GroupName`,
 1 AS `GroupCode`,
 1 AS `GroupDescription`,
 1 AS `GroupUsers`,
 1 AS `Fullname`,
 1 AS `UsersCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_fileaccesslog`
--

DROP TABLE IF EXISTS `vw_fileaccesslog`;
/*!50001 DROP VIEW IF EXISTS `vw_fileaccesslog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_fileaccesslog` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `DateAccessed`,
 1 AS `TimeAccessed`,
 1 AS `Fullname`,
 1 AS `DocID`,
 1 AS `StoragePool`,
 1 AS `DocDescription`,
 1 AS `AccessAgent`,
 1 AS `AccessIP`,
 1 AS `SessionID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_messageout`
--

DROP TABLE IF EXISTS `vw_messageout`;
/*!50001 DROP VIEW IF EXISTS `vw_messageout`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_messageout` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `ModifiedBy`,
 1 AS `DateModified`,
 1 AS `SendChannel`,
 1 AS `MessageType`,
 1 AS `MessageBody`,
 1 AS `SendFrequency`,
 1 AS `SendDate`,
 1 AS `SendTime`,
 1 AS `RecptCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_modsearchflds`
--

DROP TABLE IF EXISTS `vw_modsearchflds`;
/*!50001 DROP VIEW IF EXISTS `vw_modsearchflds`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_modsearchflds` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `ModCode`,
 1 AS `FieldName`,
 1 AS `ModuleCode`,
 1 AS `TableName`,
 1 AS `ParentTable`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_notificationlist`
--

DROP TABLE IF EXISTS `vw_notificationlist`;
/*!50001 DROP VIEW IF EXISTS `vw_notificationlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_notificationlist` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `ModifiedBy`,
 1 AS `DateModified`,
 1 AS `NTargetedTo`,
 1 AS `NStatus`,
 1 AS `NotificationID`,
 1 AS `NBody`,
 1 AS `NType`,
 1 AS `CommitteeName`,
 1 AS `FullName`,
 1 AS `Email`,
 1 AS `PhoneNo`,
 1 AS `Ward`,
 1 AS `ProfileImg`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_notifications`
--

DROP TABLE IF EXISTS `vw_notifications`;
/*!50001 DROP VIEW IF EXISTS `vw_notifications`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_notifications` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `ModifiedBy`,
 1 AS `DateModified`,
 1 AS `NType`,
 1 AS `NBody`,
 1 AS `MeetingID`,
 1 AS `CommitteeID`,
 1 AS `CommitteeName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_plenaryattendance`
--

DROP TABLE IF EXISTS `vw_plenaryattendance`;
/*!50001 DROP VIEW IF EXISTS `vw_plenaryattendance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_plenaryattendance` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `MemID`,
 1 AS `InAttendancePosition`,
 1 AS `PayOutAmount`,
 1 AS `MemberType`,
 1 AS `MeetingID`,
 1 AS `Venue`,
 1 AS `MeetingDate`,
 1 AS `Agenda`,
 1 AS `ClerkEmail`,
 1 AS `ClerkName`,
 1 AS `MeetingTime`,
 1 AS `FullName`,
 1 AS `IDNo`,
 1 AS `PersonnelNo`,
 1 AS `Email`,
 1 AS `PhoneNo`,
 1 AS `ProfileImg`,
 1 AS `Ward`,
 1 AS `Designation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_plenarymeetings`
--

DROP TABLE IF EXISTS `vw_plenarymeetings`;
/*!50001 DROP VIEW IF EXISTS `vw_plenarymeetings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_plenarymeetings` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `ModifiedBy`,
 1 AS `DateModified`,
 1 AS `Venue`,
 1 AS `MeetingDate`,
 1 AS `Posted`,
 1 AS `DatePosted`,
 1 AS `Agenda`,
 1 AS `ClerkEmail`,
 1 AS `ClerkName`,
 1 AS `AttendanceCount`,
 1 AS `MeetingTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_profilepermissions`
--

DROP TABLE IF EXISTS `vw_profilepermissions`;
/*!50001 DROP VIEW IF EXISTS `vw_profilepermissions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_profilepermissions` AS SELECT 
 1 AS `ProfileID`,
 1 AS `ModCode`,
 1 AS `ModOperation`,
 1 AS `IsAllowed`,
 1 AS `ModuleCode`,
 1 AS `ModuleName`,
 1 AS `ModIcon`,
 1 AS `ModDisplayOrder`,
 1 AS `AppS_ROWID`,
 1 AS `ApplicationName`,
 1 AS `AppIcon`,
 1 AS `AppDisplayOrder`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_roleprofiles`
--

DROP TABLE IF EXISTS `vw_roleprofiles`;
/*!50001 DROP VIEW IF EXISTS `vw_roleprofiles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_roleprofiles` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `ProfileName`,
 1 AS `ProfileDescription`,
 1 AS `ItemDescription`,
 1 AS `ItemCode`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_scheduleofmeetings`
--

DROP TABLE IF EXISTS `vw_scheduleofmeetings`;
/*!50001 DROP VIEW IF EXISTS `vw_scheduleofmeetings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_scheduleofmeetings` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `Venue`,
 1 AS `MeetingDay`,
 1 AS `CommitteeID`,
 1 AS `ClerkResponsible`,
 1 AS `CommitteeName`,
 1 AS `ClerkName`,
 1 AS `ClerkEmail`,
 1 AS `ClerkPhone`,
 1 AS `MeetingTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_usergroups`
--

DROP TABLE IF EXISTS `vw_usergroups`;
/*!50001 DROP VIEW IF EXISTS `vw_usergroups`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_usergroups` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `UserGroup`,
 1 AS `loginid`,
 1 AS `Fullname`,
 1 AS `Phone`,
 1 AS `UserStatus`,
 1 AS `user_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_userslist`
--

DROP TABLE IF EXISTS `vw_userslist`;
/*!50001 DROP VIEW IF EXISTS `vw_userslist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_userslist` AS SELECT 
 1 AS `S_ROWID`,
 1 AS `loginid`,
 1 AS `Fullname`,
 1 AS `Phone`,
 1 AS `Email`,
 1 AS `Position`,
 1 AS `PhoneExt`,
 1 AS `pswd`,
 1 AS `user_type`,
 1 AS `CreatedBy`,
 1 AS `DateCreated`,
 1 AS `shift`,
 1 AS `Department`,
 1 AS `Division`,
 1 AS `ProfileImage`,
 1 AS `userstatus`,
 1 AS `DeActivatedBy`,
 1 AS `DateDeActivated`,
 1 AS `DeActivateReason`,
 1 AS `ModifiedBy`,
 1 AS `DateModified`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wandie`
--

DROP TABLE IF EXISTS `wandie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wandie` (
  `S_ROWID` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(255) DEFAULT 'ADMIN',
  `DateCreated` datetime DEFAULT NULL,
  `ModifiedBy` varchar(255) DEFAULT NULL,
  `DateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` varchar(255) DEFAULT NULL,
  `SecondName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_ROWID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wandie`
--

LOCK TABLES `wandie` WRITE;
/*!40000 ALTER TABLE `wandie` DISABLE KEYS */;
INSERT INTO `wandie` VALUES (1,'admin','2019-10-18 18:14:41','admin','2019-10-18 15:17:44','Joyce','Wamama'),(2,'admin','2019-10-18 18:16:46',NULL,'2019-10-18 15:16:46','Stephen','Wandie'),(3,'admin','2019-10-18 18:16:57',NULL,'2019-10-18 15:16:57','Sheila','Wambui'),(4,'admin','2019-10-18 18:17:13',NULL,'2019-10-18 15:17:13','Kevin','Mungai');
/*!40000 ALTER TABLE `wandie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `vw_assemblycommittees`
--

/*!50001 DROP VIEW IF EXISTS `vw_assemblycommittees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_assemblycommittees` AS select `ac`.`S_ROWID` AS `S_ROWID`,`ac`.`CreatedBy` AS `CreatedBy`,`ac`.`DateCreated` AS `DateCreated`,`ac`.`ModifiedBy` AS `ModifiedBy`,`ac`.`DateModified` AS `DateModified`,`ac`.`CommitteeName` AS `CommitteeName`,`ac`.`CommitteeDescription` AS `CommitteeDescription`,`ac`.`ClerkResponsible` AS `ClerkResponsible`,`u`.`Fullname` AS `ClerkName`,`u`.`Email` AS `ClerkEmail`,(select count(0) from `committeeMembersList` where (`committeeMembersList`.`CommitteeID` = `ac`.`S_ROWID`)) AS `MembersCounts` from (`assemblycommittees` `ac` left join `dh_users` `u` on((convert(`ac`.`ClerkResponsible` using utf8mb3) = `u`.`loginid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_commMemberList`
--

/*!50001 DROP VIEW IF EXISTS `vw_commMemberList`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_commMemberList` AS select `c`.`S_ROWID` AS `S_ROWID`,`c`.`MemberType` AS `MemberType`,`m`.`PersonnelNo` AS `PersonnelNo`,`m`.`FullName` AS `FullName`,`m`.`Email` AS `Email`,`m`.`PhoneNo` AS `PhoneNo`,`m`.`Designation` AS `Designation`,`m`.`Ward` AS `Ward`,`m`.`IDNo` AS `IDNo`,`c`.`MemID` AS `MemID`,`m`.`ProfileImg` AS `ProfileImg`,`c`.`CommitteeID` AS `CommitteeID`,`ac`.`CommitteeName` AS `CommitteeName`,`ac`.`ClerkResponsible` AS `ClerkResponsible` from ((`committeeMembersList` `c` join `committemembers` `m` on((`c`.`MemID` = `m`.`S_ROWID`))) join `assemblycommittees` `ac` on((`c`.`CommitteeID` = `ac`.`S_ROWID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_committeeattendance`
--

/*!50001 DROP VIEW IF EXISTS `vw_committeeattendance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_committeeattendance` AS select `ct`.`MemID` AS `MemID`,`ct`.`InAttendancePosition` AS `InAttendancePosition`,`ct`.`PayOutAmount` AS `PayOutAmount`,`ct`.`MemberType` AS `MemberType`,`ct`.`MeetingID` AS `MeetingID`,`vcm`.`Venue` AS `Venue`,`vcm`.`CommitteeID` AS `CommitteeID`,`vcm`.`MeetingDate` AS `MeetingDate`,`vcm`.`Agenda` AS `Agenda`,`vcm`.`CommitteeName` AS `CommitteeName`,`vcm`.`ClerkEmail` AS `ClerkEmail`,`vcm`.`ClerkName` AS `ClerkName`,`vcm`.`MeetingTime` AS `MeetingTime`,`vcm`.`OtherVenue` AS `OtherVenue`,`cm`.`FullName` AS `FullName`,`cm`.`IDNo` AS `IDNo`,`cm`.`PersonnelNo` AS `PersonnelNo`,`cm`.`Email` AS `Email`,`cm`.`PhoneNo` AS `PhoneNo`,`cm`.`ProfileImg` AS `ProfileImg`,`cm`.`Ward` AS `Ward`,`cm`.`Designation` AS `Designation` from ((`committeeattendance` `ct` join `vw_committeemeetings` `vcm` on((`ct`.`MeetingID` = `vcm`.`S_ROWID`))) join `committemembers` `cm` on((`ct`.`MemID` = `cm`.`S_ROWID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_committeemeetings`
--

/*!50001 DROP VIEW IF EXISTS `vw_committeemeetings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_committeemeetings` AS select `cm`.`S_ROWID` AS `S_ROWID`,`cm`.`CreatedBy` AS `CreatedBy`,`cm`.`DateCreated` AS `DateCreated`,`cm`.`ModifiedBy` AS `ModifiedBy`,`cm`.`DateModified` AS `DateModified`,`cm`.`Venue` AS `Venue`,`cm`.`CommitteeID` AS `CommitteeID`,`cm`.`MeetingDate` AS `MeetingDate`,`cm`.`Posted` AS `Posted`,`cm`.`OtherVenue` AS `OtherVenue`,`cm`.`DatePosted` AS `DatePosted`,`cm`.`Agenda` AS `Agenda`,`ac`.`CommitteeName` AS `CommitteeName`,`ac`.`ClerkResponsible` AS `ClerkEmail`,`u`.`Fullname` AS `ClerkName`,concat(convert(date_format(`cm`.`MeetingDate`,'%d-%m-%Y') using utf8mb4),' ',convert(date_format(`cm`.`FromTime`,'%h:%i %p') using utf8mb4),' - ',convert(date_format(`cm`.`ToTime`,'%h:%i %p') using utf8mb4)) AS `MeetingTime` from ((`committeemeetings` `cm` join `assemblycommittees` `ac` on((`cm`.`CommitteeID` = `ac`.`S_ROWID`))) left join `dh_users` `u` on((`u`.`loginid` = convert(`ac`.`ClerkResponsible` using utf8mb3)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_dhrolegroups`
--

/*!50001 DROP VIEW IF EXISTS `vw_dhrolegroups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dhrolegroups` AS select `d`.`S_ROWID` AS `S_ROWID`,`d`.`CreatedBy` AS `CreatedBy`,`d`.`DateCreated` AS `DateCreated`,`d`.`ModifiedBy` AS `ModifiedBy`,`d`.`DateModified` AS `DateModified`,`d`.`GroupName` AS `GroupName`,`d`.`GroupCode` AS `GroupCode`,`d`.`GroupDescription` AS `GroupDescription`,`d`.`GroupUsers` AS `GroupUsers`,`u`.`Fullname` AS `Fullname`,(select count(0) from `listitems` where ((`listitems`.`ItemType` = 'RoleUser') and (`listitems`.`ItemCode` = `d`.`GroupCode`))) AS `UsersCount` from (`dh_usergroups` `d` join `dh_users` `u` on((`d`.`CreatedBy` = `u`.`loginid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_fileaccesslog`
--

/*!50001 DROP VIEW IF EXISTS `vw_fileaccesslog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_fileaccesslog` AS select `f`.`S_ROWID` AS `S_ROWID`,cast(`f`.`DateCreated` as date) AS `DateAccessed`,cast(`f`.`DateCreated` as time) AS `TimeAccessed`,`u`.`Fullname` AS `Fullname`,`f`.`DocID` AS `DocID`,`e`.`StoragePool` AS `StoragePool`,`e`.`FileDescription` AS `DocDescription`,`f`.`AccessAgent` AS `AccessAgent`,`f`.`AccessIP` AS `AccessIP`,`f`.`SessionID` AS `SessionID` from ((`fileaccesslog` `f` join `dh_users` `u` on((`u`.`loginid` = `f`.`CreatedBy`))) join `elementstorage` `e` on((`f`.`DocID` = `e`.`S_ROWID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_messageout`
--

/*!50001 DROP VIEW IF EXISTS `vw_messageout`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_messageout` AS select `m`.`S_ROWID` AS `S_ROWID`,`m`.`CreatedBy` AS `CreatedBy`,`m`.`DateCreated` AS `DateCreated`,`m`.`ModifiedBy` AS `ModifiedBy`,`m`.`DateModified` AS `DateModified`,`m`.`SendChannel` AS `SendChannel`,`m`.`MessageType` AS `MessageType`,`m`.`MessageBody` AS `MessageBody`,`m`.`SendFrequency` AS `SendFrequency`,`m`.`SendDate` AS `SendDate`,`m`.`SendTime` AS `SendTime`,(select count(0) from `tbl_bulksms` where (`tbl_bulksms`.`ParentMsgID` = `m`.`S_ROWID`)) AS `RecptCount` from `tbl_messageout` `m` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_modsearchflds`
--

/*!50001 DROP VIEW IF EXISTS `vw_modsearchflds`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_modsearchflds` AS select `l`.`S_ROWID` AS `S_ROWID`,`l`.`CreatedBy` AS `CreatedBy`,`l`.`DateCreated` AS `DateCreated`,`l`.`ItemCode` AS `ModCode`,`l`.`ItemDescription` AS `FieldName`,`dh`.`ModuleCode` AS `ModuleCode`,`dh`.`TableName` AS `TableName`,`dh`.`ParentTable` AS `ParentTable` from (`listitems` `l` join `dh_modules` `dh` on((`l`.`ItemCode` = `dh`.`S_ROWID`))) where (`l`.`ItemType` = 'SearchFlds') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_notificationlist`
--

/*!50001 DROP VIEW IF EXISTS `vw_notificationlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_notificationlist` AS select `nl`.`S_ROWID` AS `S_ROWID`,`nl`.`CreatedBy` AS `CreatedBy`,`nl`.`DateCreated` AS `DateCreated`,`nl`.`ModifiedBy` AS `ModifiedBy`,`nl`.`DateModified` AS `DateModified`,`nl`.`NTargetedTo` AS `NTargetedTo`,`nl`.`NStatus` AS `NStatus`,`nl`.`NotificationID` AS `NotificationID`,`n`.`NBody` AS `NBody`,`n`.`NType` AS `NType`,`n`.`CommitteeName` AS `CommitteeName`,`m`.`FullName` AS `FullName`,`m`.`Email` AS `Email`,`m`.`PhoneNo` AS `PhoneNo`,`m`.`Ward` AS `Ward`,`m`.`ProfileImg` AS `ProfileImg` from ((`notificationlist` `nl` join `vw_notifications` `n` on((`nl`.`NotificationID` = `n`.`S_ROWID`))) join `committemembers` `m` on((`nl`.`NTargetedTo` = `m`.`S_ROWID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_notifications`
--

/*!50001 DROP VIEW IF EXISTS `vw_notifications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_notifications` AS select `n`.`S_ROWID` AS `S_ROWID`,`n`.`CreatedBy` AS `CreatedBy`,`n`.`DateCreated` AS `DateCreated`,`n`.`ModifiedBy` AS `ModifiedBy`,`n`.`DateModified` AS `DateModified`,`n`.`NType` AS `NType`,`n`.`NBody` AS `NBody`,`n`.`MeetingID` AS `MeetingID`,`n`.`CommitteeID` AS `CommitteeID`,`c`.`CommitteeName` AS `CommitteeName` from (`notifications` `n` join `assemblycommittees` `c` on((`n`.`CommitteeID` = `c`.`S_ROWID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_plenaryattendance`
--

/*!50001 DROP VIEW IF EXISTS `vw_plenaryattendance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_plenaryattendance` AS select `ct`.`S_ROWID` AS `S_ROWID`,`ct`.`MemID` AS `MemID`,`ct`.`InAttendancePosition` AS `InAttendancePosition`,`ct`.`PayOutAmount` AS `PayOutAmount`,`ct`.`MemberType` AS `MemberType`,`ct`.`MeetingID` AS `MeetingID`,`vcm`.`Venue` AS `Venue`,`vcm`.`MeetingDate` AS `MeetingDate`,`vcm`.`Agenda` AS `Agenda`,`vcm`.`ClerkEmail` AS `ClerkEmail`,`vcm`.`ClerkName` AS `ClerkName`,`vcm`.`MeetingTime` AS `MeetingTime`,`cm`.`FullName` AS `FullName`,`cm`.`IDNo` AS `IDNo`,`cm`.`PersonnelNo` AS `PersonnelNo`,`cm`.`Email` AS `Email`,`cm`.`PhoneNo` AS `PhoneNo`,`cm`.`ProfileImg` AS `ProfileImg`,`cm`.`Ward` AS `Ward`,`cm`.`Designation` AS `Designation` from ((`committeeattendance` `ct` join `vw_plenarymeetings` `vcm` on((`ct`.`MeetingID` = `vcm`.`S_ROWID`))) join `committemembers` `cm` on((`ct`.`MemID` = `cm`.`S_ROWID`))) where (`ct`.`MeetingType` = 'Plenary') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_plenarymeetings`
--

/*!50001 DROP VIEW IF EXISTS `vw_plenarymeetings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_plenarymeetings` AS select `cm`.`S_ROWID` AS `S_ROWID`,`cm`.`CreatedBy` AS `CreatedBy`,`cm`.`DateCreated` AS `DateCreated`,`cm`.`ModifiedBy` AS `ModifiedBy`,`cm`.`DateModified` AS `DateModified`,`cm`.`Venue` AS `Venue`,`cm`.`MeetingDate` AS `MeetingDate`,`cm`.`Posted` AS `Posted`,`cm`.`DatePosted` AS `DatePosted`,`cm`.`Agenda` AS `Agenda`,`cm`.`ClerkResponsible` AS `ClerkEmail`,`u`.`Fullname` AS `ClerkName`,(select count(0) from `committeeattendance` where ((`committeeattendance`.`MeetingType` = 'Plenary') and (`committeeattendance`.`MeetingID` = `cm`.`S_ROWID`))) AS `AttendanceCount`,concat(date_format(`cm`.`MeetingDate`,'%d-%m-%Y'),' ',date_format(`cm`.`FromTime`,'%h:%i %p'),' - ',date_format(`cm`.`ToTime`,'%h:%i %p')) AS `MeetingTime` from (`plenarymeetings` `cm` left join `dh_users` `u` on((`u`.`loginid` = convert(`cm`.`ClerkResponsible` using utf8mb3)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_profilepermissions`
--

/*!50001 DROP VIEW IF EXISTS `vw_profilepermissions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_profilepermissions` AS select `pr`.`ProfileID` AS `ProfileID`,`pr`.`ModCode` AS `ModCode`,`pr`.`ModOperation` AS `ModOperation`,`pr`.`IsAllowed` AS `IsAllowed`,`dm`.`ModuleCode` AS `ModuleCode`,`dm`.`ModuleName` AS `ModuleName`,`dm`.`IconRef` AS `ModIcon`,`dm`.`DisplayOrder` AS `ModDisplayOrder`,`da`.`S_ROWID` AS `AppS_ROWID`,`da`.`ApplicationName` AS `ApplicationName`,`da`.`IconRef` AS `AppIcon`,`da`.`DisplayOrder` AS `AppDisplayOrder` from ((`dh_profilepermissions` `pr` join `dh_modules` `dm` on((`pr`.`ModCode` = `dm`.`S_ROWID`))) join `dh_applications` `da` on((`dm`.`AppName` = `da`.`AppCode`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_roleprofiles`
--

/*!50001 DROP VIEW IF EXISTS `vw_roleprofiles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_roleprofiles` AS select `l`.`S_ROWID` AS `S_ROWID`,`p`.`CreatedBy` AS `CreatedBy`,`p`.`DateCreated` AS `DateCreated`,`p`.`ProfileName` AS `ProfileName`,`p`.`ProfileDescription` AS `ProfileDescription`,`l`.`ItemDescription` AS `ItemDescription`,`l`.`ItemCode` AS `ItemCode` from (`dh_userprofiles` `p` join `listitems` `l` on(((`p`.`S_ROWID` = `l`.`ItemDescription`) and (`l`.`ItemType` = 'RoleProfile')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_scheduleofmeetings`
--

/*!50001 DROP VIEW IF EXISTS `vw_scheduleofmeetings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_scheduleofmeetings` AS select `sm`.`S_ROWID` AS `S_ROWID`,`sm`.`CreatedBy` AS `CreatedBy`,`sm`.`DateCreated` AS `DateCreated`,`sm`.`Venue` AS `Venue`,`sm`.`MeetingDay` AS `MeetingDay`,`sm`.`CommitteeID` AS `CommitteeID`,`ass`.`ClerkResponsible` AS `ClerkResponsible`,`ass`.`CommitteeName` AS `CommitteeName`,`u`.`Fullname` AS `ClerkName`,`u`.`Email` AS `ClerkEmail`,`u`.`Phone` AS `ClerkPhone`,concat_ws(' - ',date_format(`sm`.`FromTime`,'%h:%i %p'),date_format(`sm`.`ToTime`,'%h:%i %p')) AS `MeetingTime` from ((`scheduleofmeetings` `sm` join `assemblycommittees` `ass` on((`sm`.`CommitteeID` = `ass`.`S_ROWID`))) join `dh_users` `u` on((convert(`ass`.`ClerkResponsible` using utf8mb3) = `u`.`loginid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_usergroups`
--

/*!50001 DROP VIEW IF EXISTS `vw_usergroups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usergroups` AS select `l`.`S_ROWID` AS `S_ROWID`,`l`.`ItemCode` AS `UserGroup`,`l`.`ItemDescription` AS `loginid`,`u`.`Fullname` AS `Fullname`,`u`.`Phone` AS `Phone`,`u`.`UserStatus` AS `UserStatus`,`u`.`user_type` AS `user_type` from (`listitems` `l` join `dh_users` `u` on((`u`.`loginid` = `l`.`ItemDescription`))) where (`l`.`ItemType` = 'RoleUser') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_userslist`
--

/*!50001 DROP VIEW IF EXISTS `vw_userslist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_userslist` AS select `dh_users`.`S_ROWID` AS `S_ROWID`,`dh_users`.`loginid` AS `loginid`,`dh_users`.`Fullname` AS `Fullname`,`dh_users`.`Phone` AS `Phone`,`dh_users`.`Email` AS `Email`,`dh_users`.`Position` AS `Position`,`dh_users`.`PhoneExt` AS `PhoneExt`,`dh_users`.`pswd` AS `pswd`,`dh_users`.`user_type` AS `user_type`,`dh_users`.`CreatedBy` AS `CreatedBy`,`dh_users`.`DateCreated` AS `DateCreated`,`dh_users`.`shift` AS `shift`,`dh_users`.`Department` AS `Department`,`dh_users`.`Division` AS `Division`,`dh_users`.`ProfileImage` AS `ProfileImage`,`dh_users`.`UserStatus` AS `userstatus`,`dh_users`.`DeActivatedBy` AS `DeActivatedBy`,`dh_users`.`DateDeActivated` AS `DateDeActivated`,`dh_users`.`DeActivateReason` AS `DeActivateReason`,`dh_users`.`ModifiedBy` AS `ModifiedBy`,`dh_users`.`DateModified` AS `DateModified` from `dh_users` */;
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

-- Dump completed on 2021-08-10 14:54:19
