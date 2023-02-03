-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_ID` int NOT NULL,
  `Customer_Name` varchar(45) DEFAULT NULL,
  `Purchased_Date` date DEFAULT NULL,
  `Purchased_Products` int DEFAULT NULL,
  `Pieces` int DEFAULT NULL,
  `Amount` decimal(10,0) DEFAULT NULL,
  `Currency` varchar(3) DEFAULT NULL,
  `Sales_ID` int DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`),
  UNIQUE KEY `Customer_ID_UNIQUE` (`Customer_ID`),
  KEY `Sales_ID` (`Sales_ID`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Sales_ID`) REFERENCES `sales` (`Sales_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `E_ID` int NOT NULL,
  `Employee_Name` varchar(50) DEFAULT NULL,
  `Hire_date` date DEFAULT NULL,
  `Salary` decimal(10,0) DEFAULT NULL,
  `Currency` varchar(3) DEFAULT NULL,
  `Job_title` longtext,
  PRIMARY KEY (`E_ID`),
  UNIQUE KEY `Employee_ID_UNIQUE` (`E_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (101,'Abdullah','2022-12-09',10000,'USD','Salesman'),(102,'Umair','2022-12-09',12000,'USD','IT Manager'),(103,'Ali','2022-12-09',14000,'USD','Accountant'),(104,'Gohar','2022-12-09',18000,'USD','Account Officer'),(105,'Ahmed','2019-12-01',10000,'USD','Front End Developer'),(106,'Muhammad','2019-12-01',22000,'USD','UI/UX Designer'),(107,'Taha','2019-12-01',14000,'USD','Project Manager'),(108,'Hassaan','2019-12-01',18000,'USD','Project Assistant'),(109,'Ismail','2016-12-12',12000,'USD','Establishment Officer'),(110,'Musa','2016-12-12',30000,'USD','Full Stack Developer'),(111,'Waleed','2016-12-12',22000,'USD','Section head'),(112,'Sohaib','2016-12-12',14000,'USD','QA Manager'),(113,'Ahmer','2022-12-09',22000,'USD','Salesman'),(114,'Ammar','2022-12-09',23000,'USD','Salesman');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage` (
  `Sales_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  KEY `Sales_ID` (`Sales_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `manage_ibfk_1` FOREIGN KEY (`Sales_ID`) REFERENCES `sales` (`Sales_ID`),
  CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `Payment_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  KEY `Payment_ID` (`Payment_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`),
  CONSTRAINT `manager_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Payment_ID` int NOT NULL,
  `Product_ID` int DEFAULT NULL,
  `Product_cost` decimal(10,0) DEFAULT NULL,
  `Currency` varchar(3) DEFAULT 'USD',
  `Stock` int DEFAULT NULL,
  `Total_payment(TP)` decimal(10,0) DEFAULT NULL,
  `TP_Currency` varchar(3) DEFAULT 'USD',
  PRIMARY KEY (`Payment_ID`),
  UNIQUE KEY `Payment_ID_UNIQUE` (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` int NOT NULL,
  `Product_Name` mediumtext,
  `Availability` varchar(5) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Currency` varchar(3) DEFAULT 'USD',
  `Stock` int DEFAULT NULL,
  `E_ID` int DEFAULT NULL,
  PRIMARY KEY (`Product_ID`),
  UNIQUE KEY `Product_ID_UNIQUE` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (10,'GALA','yes',40,'USD',50,111),(11,'Super','yes',40,'USD',50,111),(12,'Prince','yes',40,'USD',50,112),(13,'Rio','yes',40,'USD',50,113),(14,'Tiffany','yes',210,'USD',50,113),(15,'OREO','yes',40,'USD',50,112);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `Sales_ID` int NOT NULL,
  `Product_Name` mediumtext,
  `Price` decimal(10,0) DEFAULT NULL,
  `Currency` varchar(3) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Employee_ID` int DEFAULT NULL,
  PRIMARY KEY (`Sales_ID`),
  UNIQUE KEY `Sales_ID_UNIQUE` (`Sales_ID`),
  KEY `Employee_ID` (`Employee_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`E_ID`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 20:39:50
