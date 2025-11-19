-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: localhost    Database: campaign_finance_expenditures
-- ------------------------------------------------------
-- Server version	9.0.0

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `address_id` int NOT NULL,
  `payee_address` varchar(45) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zipcode` varchar(15) NOT NULL,
  PRIMARY KEY (`address_id`),
  UNIQUE KEY `address_id_UNIQUE` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'PO Box 441146','Somerville','MA','02114'),(2,'15208 Calaveras Dr','Austin','TX','78717'),(3,'1405 W North Loop Blvd #106','Austin','TX','78756'),(4,'3520 Bee Cave Rd #100','Austin','TX','78746'),(5,'1340 Poydras Street, Suite 1770','New Orleans','LA','70112'),(6,'808 E 30th St Apt A','Austin','TX','78705'),(7,'4000 N. IH-35','Austin','TX','78751'),(8,'902 Glen Oak Dr','Austin','TX','78745'),(9,'3220 Manor Rd','Austin','TX','78723'),(10,'1122 Colorado St','Austin','TX','78701'),(11,'1914 Patton Ln','Austin','TX','78723'),(12,'2900 Manor Rd','Austin','TX','78721'),(13,'4477 S Lamar Blvd','Austin','TX','78745'),(14,'4908 Parell Path','Austin','TX','78744'),(15,'9901 Brodie Lane Ste 160 #1143','Austin','TX','78748'),(16,'801 S. Marquette Ave.','Minneapolis','MN','55402'),(17,'PO Box 301267','Austin','TX','78703'),(18,'3707 Tom Green St','Austin','TX','78705'),(19,'PO Box 16122','Melbourne',NULL,'3053'),(20,'14455 N. Hayden Rd','Scottsdale','AZ','85260'),(21,'504 Padres Pl','Austin','TX','78738'),(22,'525 20th Street','San Francisco','CA','94107'),(23,'2005 Willow Creek Drive #1037','Austin','TX','78741'),(24,'8303 N Mopac Expy','Austin','TX','78759'),(25,'1000 E 41st St','Austin','TX','78751'),(26,'504 Furlong Dr','Austin','TX','78746'),(27,'7201 Wood Hollow Dr #225','Austin','TX','78723'),(28,'1912 Miles Ave','Austin','TX','78745'),(29,'1706 W 32nd St','Austin','TX','78703'),(30,'675 Ponce de Leon Ave NE Suite 5000','Austin','GA','30308'),(31,'PO Box 13551','Austin','TX','78711'),(32,'1008 Faris St','San Marcos','TX','78666'),(33,'655 15th St NW, Suite 650','Washington','DC','20005'),(34,'303 Terrace Dr','Austin','TX','78704'),(35,'4008 Vinalopo Dr','Austin','TX','78738'),(36,'915 W 23rd St Apt. B','Austin','TX','78705'),(37,'4700 Cromwell','Kyle','TX','78646'),(38,'225 Varick Street 12th Floor','New York','NY','10014'),(39,'1201 Barbara Jordan Blvd Suite 700','Austin','TX','78723'),(40,'6412 Clairmont Dr','Austin','TX','78749'),(41,'185 Berry Street, Suite 550','San Fransico ','CA','94107'),(42,'101 E 15th St','Austin','TX','78778'),(43,'1311 E 6th St #B','Austin','TX','78702'),(44,'9710 Bordeaux Ln','Austin','TX','78751'),(45,'8225 Cross Park Dr','Austin','TX','78710'),(46,'1144 Airport Blvd','Austin','TX','78702'),(47,'3217 N Interstate 35 Frontage Rd','Austin','TX','78722');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenditure_types`
--

DROP TABLE IF EXISTS `expenditure_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenditure_types` (
  `expenditure_type_id` int NOT NULL,
  `expenditure_type` varchar(50) NOT NULL,
  PRIMARY KEY (`expenditure_type_id`),
  UNIQUE KEY `expenditure_id_UNIQUE` (`expenditure_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenditure_types`
--

LOCK TABLES `expenditure_types` WRITE;
/*!40000 ALTER TABLE `expenditure_types` DISABLE KEYS */;
INSERT INTO `expenditure_types` VALUES (1,'Political Expenditure From Political Contributions'),(2,'Expenditure');
/*!40000 ALTER TABLE `expenditure_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` int NOT NULL,
  `expense_desc` varchar(50) NOT NULL,
  PRIMARY KEY (`expense_id`),
  UNIQUE KEY `expense_id_UNIQUE` (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'PRINTING | Yard Signs'),(2,'PRINTING | Printing'),(3,'ADVERTISE'),(4,'ADVERTISE | Website'),(5,'ADVERTISE | website software license 1 year'),(6,'ADVERTISE | Advertising'),(7,'ACCOUNT | Bank service charge'),(8,'ACCOUNT | Accounting'),(9,'OTHER | Email | Email'),(10,'OTHER | Services | Services'),(11,'OTHER | Reimbursement | Supplies'),(12,'OTHER | Supplies | Supplies'),(13,'OTHER | Research | Research'),(14,'OTHER | Checks | Checks'),(15,'CONSULT | Consulting'),(16,'CONSULT | Org Services'),(17,'CONSULT | Incorporation'),(18,'CONSULT | Signature Collection'),(19,'CONSULT | Website'),(20,'FEES | Credit Card Processing Fees'),(21,'FEES | Fees'),(22,'FUNDRAISE | Contribution fees to Anedot Portal'),(23,'SALARIES | Wages'),(24,'SALARIES | Net Pay'),(25,'SALARIES | Payroll taxes'),(26,'SALARIES | Payroll fee'),(27,'EVENT | Supplies for EA benefit'),(28,'EVENT | Event Expense'),(29,'EVENT | Watch Party'),(30,'EVENT | DJ'),(31,'EVENT | Event Setup');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paid_bys`
--

DROP TABLE IF EXISTS `paid_bys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paid_bys` (
  `paid_by_id` int NOT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `organization` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`paid_by_id`),
  UNIQUE KEY `paid_by_id_UNIQUE` (`paid_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paid_bys`
--

LOCK TABLES `paid_bys` WRITE;
/*!40000 ALTER TABLE `paid_bys` DISABLE KEYS */;
INSERT INTO `paid_bys` VALUES (1,NULL,NULL,'Yay for Prop A'),(2,NULL,NULL,'Had Enough Austin?'),(3,NULL,NULL,'Equity Action'),(4,'Weldon','Yvonne T.',NULL),(5,'Qadri','Weldon',NULL),(6,'Ellis','Paige',NULL);
/*!40000 ALTER TABLE `paid_bys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payee_paid_by`
--

DROP TABLE IF EXISTS `payee_paid_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payee_paid_by` (
  `payee_id` int NOT NULL,
  `paid_by_id` int NOT NULL,
  PRIMARY KEY (`payee_id`,`paid_by_id`),
  KEY `fk_payee_paid_by_paid_bys1_idx` (`paid_by_id`),
  CONSTRAINT `fk_payee_paid_by_paid_bys1` FOREIGN KEY (`paid_by_id`) REFERENCES `paid_bys` (`paid_by_id`),
  CONSTRAINT `fk_payee_paid_by_payees1` FOREIGN KEY (`payee_id`) REFERENCES `payees` (`payee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payee_paid_by`
--

LOCK TABLES `payee_paid_by` WRITE;
/*!40000 ALTER TABLE `payee_paid_by` DISABLE KEYS */;
INSERT INTO `payee_paid_by` VALUES (9,1),(27,1),(45,1),(46,1),(48,1),(4,2),(3,3),(7,3),(8,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(21,3),(23,3),(24,3),(25,3),(28,3),(30,3),(31,3),(32,3),(37,3),(39,3),(41,3),(43,3),(44,3),(47,3),(5,4),(19,4),(20,4),(1,5),(2,5),(6,5),(18,5),(22,5),(26,5),(29,5),(33,5),(34,5),(35,5),(36,5),(38,5),(40,5),(42,5),(17,6);
/*!40000 ALTER TABLE `payee_paid_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payees`
--

DROP TABLE IF EXISTS `payees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payees` (
  `payee_ID` int NOT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `organization` varchar(45) DEFAULT NULL,
  `payee_type` varchar(45) NOT NULL,
  `address_id` int NOT NULL,
  PRIMARY KEY (`payee_ID`),
  UNIQUE KEY `payee_ID_UNIQUE` (`payee_ID`),
  KEY `fk_payees_addresses1_idx` (`address_id`),
  CONSTRAINT `fk_payees_addresses1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payees`
--

LOCK TABLES `payees` WRITE;
/*!40000 ALTER TABLE `payees` DISABLE KEYS */;
INSERT INTO `payees` VALUES (1,NULL,NULL,'ActBlue','ENTITY',1),(2,'Aggarwal','Akshay',NULL,'INDIVIDUAL',2),(3,'Alemao','Andrew',NULL,'INDIVIDUAL',3),(4,NULL,NULL,'American Bank','ENTITY',4),(5,NULL,NULL,'Anedot','ENTITY',5),(6,'Aslam','Muneeb',NULL,'INDIVIDUAL',6),(7,NULL,NULL,'Austin Chronicle','ENTITY',7),(8,NULL,NULL,'Austin Web Design','ENTITY',8),(9,NULL,NULL,'Batch Craft Beer & Kolaches','ENTITY',9),(10,NULL,NULL,'Brady & Peavey PC','ENTITY',10),(11,'Butts','David',NULL,'INDIVIDUAL',11),(12,'Cavaliere','Jacob',NULL,'INDIVIDUAL',12),(13,NULL,NULL,'Central Market','ENTITY',13),(14,'Chincanchan','David',NULL,'INDIVIDUAL',14),(15,NULL,NULL,'Collective Campaigns','ENTITY',15),(16,NULL,NULL,'Deluxe Bus Systems','ENTITY',16),(17,NULL,NULL,'DonateWay','ENTITY',17),(18,'Ehresman','Katya',NULL,'INDIVIDUAL',18),(19,NULL,NULL,'Envato','ENTITY',19),(20,NULL,NULL,'Go Daddy','ENTITY',20),(21,'Green','Justin',NULL,'INDIVIDUAL',21),(22,NULL,NULL,'Gusto','ENTITY',22),(23,'Haynes','Jenna',NULL,'INDIVIDUAL',23),(24,NULL,NULL,'Haynie + Co','ENTITY',24),(25,NULL,NULL,'HEB','ENTITY',25),(26,'Hollingsworth','Sidney',NULL,'INDIVIDUAL',26),(27,NULL,NULL,'James Chapman','ENTITY',27),(28,NULL,NULL,'JTX Strategies','ENTITY',28),(29,'Krakauer Ganz','Zachary',NULL,'INDIVIDUAL',29),(30,NULL,NULL,'Mail Chimp','ENTITY',30),(31,'Mitchell','Kathy',NULL,'INDIVIDUAL',31),(32,'Neaves','Darren',NULL,'INDIVIDUAL',32),(33,NULL,NULL,'NGP VAN','ENTITY',33),(34,'Rice','Juda',NULL,'INDIVIDUAL',34),(35,'Ruggiero','Jake',NULL,'INDIVIDUAL',35),(36,'Sait','Hamza',NULL,'INDIVIDUAL',36),(37,'Schmader','Katy',NULL,'INDIVIDUAL',37),(38,NULL,NULL,'Squarespace Inc.','ENTITY',38),(39,NULL,NULL,'Staples','ENTITY',39),(40,'Steyaert','Emma',NULL,'INDIVIDUAL',40),(41,NULL,NULL,'Stripe','ENTITY',41),(42,NULL,NULL,'Texas Workforce Commission','ENTITY',42),(43,NULL,NULL,'Travis County Democratic Party','ENTITY',43),(44,'Turner','Andrew',NULL,'INDIVIDUAL',44),(45,NULL,NULL,'United States Postal Service','ENTITY',45),(46,NULL,NULL,'Walgreens','ENTITY',46),(47,NULL,NULL,'Worley','ENTITY',47),(48,NULL,NULL,'Worley Printing','ENTITY',47);
/*!40000 ALTER TABLE `payees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL,
  `payment_amount` decimal(9,2) NOT NULL,
  `payment_date` date NOT NULL,
  `report_outside_texas` varchar(3) DEFAULT NULL,
  `political_obligation` varchar(3) DEFAULT NULL,
  `reimbursement_intended` varchar(3) DEFAULT NULL,
  `correction` varchar(3) DEFAULT NULL,
  `date_reported` date NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `payee_id` int NOT NULL,
  `paid_by_id` int NOT NULL,
  `expenditure_type_id` int NOT NULL,
  `expense_id` int NOT NULL,
  `report_type_id` int NOT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `payment_id_UNIQUE` (`payment_id`),
  KEY `fk_payments_report_types1_idx` (`report_type_id`),
  KEY `fk_payments_expenses1_idx` (`expense_id`),
  KEY `fk_payments_expenditure_types1_idx` (`expenditure_type_id`),
  KEY `fk_payments_payee_paid_by1_idx` (`payee_id`,`paid_by_id`),
  CONSTRAINT `fk_payments_expenditure_types1` FOREIGN KEY (`expenditure_type_id`) REFERENCES `expenditure_types` (`expenditure_type_id`),
  CONSTRAINT `fk_payments_expenses1` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`expense_id`),
  CONSTRAINT `fk_payments_payee_paid_by1` FOREIGN KEY (`payee_id`, `paid_by_id`) REFERENCES `payee_paid_by` (`payee_id`, `paid_by_id`),
  CONSTRAINT `fk_payments_report_types1` FOREIGN KEY (`report_type_id`) REFERENCES `report_types` (`report_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,7221.36,'2022-04-05',NULL,NULL,NULL,NULL,'2022-04-29','R20220329100713625-F00003',48,1,1,1,1),(2,3884.40,'2022-04-25',NULL,NULL,NULL,NULL,'2022-04-26','R20220407100713573-F00001',45,1,2,3,2),(3,20.00,'2022-01-31',NULL,NULL,NULL,NULL,'2022-07-13','R20220101100713011-F00005',4,2,1,7,3),(4,23.46,'2022-03-10',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00001',30,3,1,9,4),(5,1715.00,'2022-02-04',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00003',24,3,1,8,4),(6,177.21,'2022-04-04',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00004',3,3,1,10,4),(7,81.07,'2022-05-20',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00005',31,3,1,11,4),(8,920.51,'2022-06-30',NULL,NULL,NULL,NULL,'2022-07-15','R20220101100713882-F00006',15,3,1,15,4),(9,27.06,'2022-06-02',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00010',47,3,1,2,4),(10,237.75,'2022-06-26',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00011',41,3,1,20,4),(11,7961.03,'2022-01-11',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00014',43,3,1,16,4),(12,500.00,'2022-01-13',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00016',11,3,1,15,4),(13,1000.00,'2022-02-02',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00017',14,3,1,15,4),(14,9727.69,'2022-03-04',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00018',10,3,1,17,4),(15,30.70,'2022-05-16',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00020',39,3,1,12,4),(16,175.61,'2022-04-04',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00021',21,3,1,10,4),(17,120.28,'2022-06-16',NULL,NULL,NULL,NULL,'2022-07-15','R20220101100713882-F00022',25,3,1,27,4),(18,880.96,'2022-01-04',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00023',37,3,1,23,4),(19,1952.28,'2022-03-07',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00024',15,3,1,15,4),(20,1545.00,'2022-05-20',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00027',7,3,1,6,4),(21,189.15,'2022-04-04',NULL,NULL,NULL,NULL,'2022-07-15','R20220101100713882-F00028',32,3,1,10,4),(22,1250.00,'2022-01-11',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00031',24,3,1,8,4),(23,23.46,'2022-06-10',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00032',30,3,1,9,4),(24,15000.00,'2022-03-15',NULL,NULL,NULL,NULL,'2022-07-15','R20220101100713882-F00033',28,3,1,13,4),(25,184.02,'2022-04-04',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00034',44,3,1,10,4),(26,33.34,'2022-06-16',NULL,NULL,NULL,NULL,'2022-07-15','R20220101100713882-F00035',13,3,1,28,4),(27,12.62,'2022-06-29',NULL,NULL,NULL,NULL,'2022-07-15','R20220101100713882-F00036',47,3,1,2,4),(28,173.39,'2022-04-04',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00037',12,3,1,10,4),(29,23.46,'2022-04-11',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00038',30,3,1,9,4),(30,10000.00,'2022-06-05',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00041',15,3,1,18,4),(31,169.10,'2022-04-04',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00044',23,3,1,10,4),(32,23.46,'2022-05-10',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00045',30,3,1,9,4),(33,180.35,'2022-03-03',NULL,'Yes',NULL,NULL,'2022-07-15','R20220101100713882-F00046',16,3,1,14,4),(34,1400.00,'2022-02-11',NULL,NULL,NULL,NULL,'2022-07-15','R20220101100713882-F00047',8,3,1,19,4),(35,1960.00,'2022-03-02',NULL,NULL,NULL,NULL,'2022-07-15','R20220101100713882-F00048',8,3,1,19,4),(36,589.94,'2022-06-15',NULL,NULL,NULL,NULL,'2022-07-15','R20220101100713882-F00049',13,3,1,28,4),(37,66.04,'2022-05-27',NULL,NULL,NULL,NULL,'2022-07-14','R20220101100713910-F00001',19,4,1,5,5),(38,12.78,'2022-05-26',NULL,NULL,NULL,NULL,'2022-07-14','R20220101100713910-F00006',20,4,1,4,5),(39,22.16,'2022-05-25',NULL,NULL,NULL,NULL,'2022-07-14','R20220101100713910-F00007',20,4,1,4,5),(40,2.30,'2022-06-17',NULL,NULL,NULL,NULL,'2022-07-14','R20220101100713910-F00012',5,4,1,22,5),(41,36.94,'2022-03-22',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00001',6,5,1,24,5),(42,46.17,'2022-03-22',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00002',6,5,1,24,5),(43,218.93,'2022-03-29',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00003',18,5,1,24,5),(44,27.71,'2022-06-03',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00004',29,5,1,24,5),(45,11.48,'2022-01-14',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00005',22,5,1,25,5),(46,11.48,'2022-01-28',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00006',22,5,1,25,5),(47,2.68,'2022-05-20',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00012',22,5,1,25,5),(48,92.75,'2022-03-01',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00013',22,5,1,26,5),(49,5.24,'2022-01-07',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00014',38,5,1,21,5),(50,237.97,'2022-01-11',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00015',1,5,1,21,5),(51,88.19,'2022-03-03',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00016',1,5,1,21,5),(52,479.70,'2022-03-25',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00017',33,5,1,21,5),(53,88.88,'2022-01-28',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00018',36,5,1,24,5),(54,138.53,'2022-02-11',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00019',29,5,1,24,5),(55,161.61,'2022-03-29',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00020',40,5,1,24,5),(56,145.45,'2022-05-11',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00021',40,5,1,24,5),(57,14.02,'2022-05-20',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00022',18,5,1,24,5),(58,272.33,'2022-05-09',NULL,NULL,NULL,NULL,'2022-06-09','R20220428100713842-F00003',9,1,1,29,3),(59,300.00,'2022-05-09',NULL,NULL,NULL,NULL,'2022-06-09','R20220428100713842-F00002',27,1,1,30,3),(60,17.81,'2022-05-09',NULL,NULL,NULL,NULL,'2022-06-09','R20220428100713842-F00001',46,1,1,31,3),(61,14.02,'2022-06-17',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00023',18,5,1,24,5),(62,2.87,'2022-01-21',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00024',22,5,1,25,5),(63,7.44,'2022-04-08',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00027',22,5,1,25,5),(64,6.88,'2022-05-11',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00028',22,5,1,25,5),(65,12.05,'2022-05-11',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00029',22,5,1,25,5),(66,235.98,'2022-05-20',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00030',22,5,1,25,5),(67,15.00,'2022-05-04',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00036',42,5,1,21,5),(68,291.47,'2022-06-02',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00037',1,5,1,21,5),(69,83.12,'2022-05-11',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00044',29,5,1,24,5),(70,2.30,'2022-03-29',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00046',22,5,1,25,5),(71,322.32,'2022-04-22',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00047',22,5,1,25,5),(72,2.29,'2022-06-03',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00048',22,5,1,25,5),(73,31.62,'2022-02-09',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00052',1,5,1,21,5),(74,1252.83,'2022-01-14',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00053',26,5,1,24,5),(75,96.96,'2022-06-17',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00061',29,5,1,24,5),(76,64.64,'2022-06-17',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00062',40,5,1,24,5),(77,11.48,'2022-02-25',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00065',22,5,1,25,5),(78,6.89,'2022-04-22',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00066',22,5,1,25,5),(79,13.38,'2022-04-22',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00067',22,5,1,25,5),(80,235.98,'2022-06-17',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00068',22,5,1,25,5),(81,8.04,'2022-06-17',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00069',22,5,1,25,5),(82,100.00,'2022-04-19',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00070',35,5,1,25,5),(83,110.99,'2022-06-09',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00071',1,5,1,21,5),(84,599.68,'2022-01-14',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00072',18,5,1,24,5),(85,138.52,'2022-01-28',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00073',29,5,1,24,5),(86,884.25,'2022-09-29',NULL,NULL,NULL,'Yes','2022-10-18','R20220701100714665-F00003',17,6,1,20,6),(87,218.92,'2022-02-11',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00074',18,5,1,24,5),(88,56.57,'2022-03-29',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00075',40,5,1,24,5),(89,218.95,'2022-04-08',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00076',18,5,1,24,5),(90,1.33,'2022-04-08',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00080',22,5,1,25,5),(91,235.97,'2022-06-03',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00081',22,5,1,25,5),(92,138.52,'2022-01-14',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00082',34,5,1,24,5),(93,34.63,'2022-01-21',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00083',2,5,1,24,5),(94,153.53,'2022-01-28',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00084',40,5,1,24,5),(95,96.96,'2022-03-29',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00086',34,5,1,24,5),(96,27.70,'2022-03-29',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00087',29,5,1,24,5),(97,16.17,'2022-04-08',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00088',40,5,1,24,5),(98,218.92,'2022-05-11',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00089',18,5,1,24,5),(99,124.67,'2022-05-20',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00090',29,5,1,24,5),(100,618.76,'2022-01-28',NULL,'Yes',NULL,NULL,'2022-07-13','R20220101100714176-F00092',22,5,1,25,5);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_types`
--

DROP TABLE IF EXISTS `report_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_types` (
  `report_type_id` int NOT NULL,
  `report_filed` varchar(75) NOT NULL,
  PRIMARY KEY (`report_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_types`
--

LOCK TABLES `report_types` WRITE;
/*!40000 ALTER TABLE `report_types` DISABLE KEYS */;
INSERT INTO `report_types` VALUES (1,'SPAC: Specific-Purpose Committee Campaign Finance Report'),(2,'ATX1: Report of Direct Campaign Expenditures: Schedule ATX.1'),(3,'PACDR: Political Committee Affidavit Of Dissolution'),(4,'GPAC: General-Purpose Committee Campaign Finance Report'),(5,'COH: Candidate /Officeholder Campaign Finance Report'),(6,'CORCOH: Correction Affidavit For Candidate/Officeholder');
/*!40000 ALTER TABLE `report_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_websites`
--

DROP TABLE IF EXISTS `report_websites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_websites` (
  `report_website_id` int NOT NULL,
  `view_report` varchar(100) NOT NULL,
  `report_type_id` int NOT NULL,
  PRIMARY KEY (`report_website_id`),
  KEY `fk_report_websites_report_types1_idx` (`report_type_id`),
  CONSTRAINT `fk_report_websites_report_types1` FOREIGN KEY (`report_type_id`) REFERENCES `report_types` (`report_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_websites`
--

LOCK TABLES `report_websites` WRITE;
/*!40000 ALTER TABLE `report_websites` DISABLE KEYS */;
INSERT INTO `report_websites` VALUES (1,'View Report (http://www.austintexas.gov/edims/document.cfm?id=382070)',1),(2,'View Report (http://www.austintexas.gov/edims/document.cfm?id=387591)',3),(3,'View Report (http://www.austintexas.gov/edims/document.cfm?id=388205)',4),(4,'View Report (http://www.austintexas.gov/edims/document.cfm?id=387625)',5),(5,'View Report (http://www.austintexas.gov/edims/document.cfm?id=387592)',5),(6,'View Report (http://www.austintexas.gov/edims/document.cfm?id=385528)',3),(7,'View Report (http://www.austintexas.gov/edims/document.cfm?id=395104)',6),(8,'View Report (http://www.austintexas.gov/edims/document.cfm?id=381842)',2);
/*!40000 ALTER TABLE `report_websites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-12 20:23:09
