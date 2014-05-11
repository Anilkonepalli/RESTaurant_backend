CREATE DATABASE  IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `restaurant`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `customer_accounts`
--

DROP TABLE IF EXISTS `customer_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_accounts` (
  `cust_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(255) NOT NULL,
  `cust_phoneno` varchar(11) NOT NULL,
  `cust_password` text NOT NULL,
  `cust_access_token` varchar(255) DEFAULT NULL,
  `cust_joined_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_phoneno_UNIQUE` (`cust_phoneno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_accounts`
--

LOCK TABLES `customer_accounts` WRITE;
/*!40000 ALTER TABLE `customer_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dining_tables`
--

DROP TABLE IF EXISTS `dining_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dining_tables` (
  `tbl_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_rest_id` bigint(20) NOT NULL,
  `tbl_capacity` int(11) NOT NULL,
  `tbl_display_order` int(11) NOT NULL,
  PRIMARY KEY (`tbl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dining_tables`
--

LOCK TABLES `dining_tables` WRITE;
/*!40000 ALTER TABLE `dining_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `dining_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishes` (
  `d_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `d_rest_id` bigint(20) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `d_price` decimal(10,2) NOT NULL,
  `d_display_order` int(11) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes`
--

LOCK TABLES `dishes` WRITE;
/*!40000 ALTER TABLE `dishes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitations` (
  `inv_id` bigint(20) NOT NULL,
  `inv_cust_id` bigint(20) NOT NULL,
  `inv_order_id` bigint(20) NOT NULL,
  `inv_is_host` enum('true','false') NOT NULL,
  `inv_created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inv_status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `oitem_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `oitem_order_id` bigint(20) NOT NULL,
  `oitem_name` varchar(255) NOT NULL,
  `oitem_price` decimal(10,2) NOT NULL,
  `oitem_quantity` int(11) NOT NULL,
  PRIMARY KEY (`oitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `o_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `o_rest_id` bigint(20) NOT NULL,
  `o_cust_id` bigint(20) NOT NULL,
  `o_totalprice` decimal(10,2) NOT NULL,
  `o_num_people` tinyint(4) NOT NULL,
  `o_request_date` date NOT NULL,
  `o_request_period` tinyint(4) NOT NULL,
  `o_schedule_info` text,
  `o_status` tinyint(4) NOT NULL,
  `o_created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `o_updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_accounts`
--

DROP TABLE IF EXISTS `restaurant_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_accounts` (
  `ra_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ra_name` varchar(255) NOT NULL,
  `ra_password` text NOT NULL,
  `ra_created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ra_access_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_accounts`
--

LOCK TABLES `restaurant_accounts` WRITE;
/*!40000 ALTER TABLE `restaurant_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurants` (
  `rest_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rest_owner_id` bigint(20) DEFAULT NULL,
  `rest_name` varchar(255) NOT NULL,
  `rest_address` varchar(255) NOT NULL,
  `rest_geo_location` point DEFAULT NULL,
  `rest_pic` varchar(255) DEFAULT NULL,
  `rest_pic_thumb` varchar(255) DEFAULT NULL,
  `rest_google_id` varchar(255) DEFAULT NULL,
  `rest_google_reference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rest_id`),
  UNIQUE KEY `rest_google_id_UNIQUE` (`rest_google_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,NULL,'Jiayuan Hotel','6 Daliushu Rd, Haidian','\0\0\0\0\0\0\00u�׃]@����C@',NULL,NULL,'896931c6ffa4ed0757df2afc60cb13dc20a15e2e',NULL),(2,NULL,'Shangyuan Hotel','40 Gaoliangqiao Byway, Haidian','\0\0\0\0\0\0\00PR`]@��N#-�C@',NULL,NULL,'3804683718acedb3d3c336d60db0a69e95044255',NULL),(3,NULL,'Hongguoyuan Hotel','西直门外上园村3号北方交大院内, Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0���?�]@���ި�C@',NULL,NULL,'a381ec514a500843301560eba13cf2a00c976af9',NULL),(4,NULL,'Beijing Jiaotong University Student Er Restaurant','15 Gaoliangqiao Byway, Haidian, Beijing','\0\0\0\0\0\0\0�F=D�]@��\n��C@',NULL,NULL,'644332158f7248968e0cc3a22013c71672467962',NULL),(5,NULL,'Lingering Garden','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0B���]@����C@',NULL,NULL,'b33d67b6f1241c18fc62e474043caf2ac20bd336',NULL),(6,NULL,'静思素食坊','高粱桥斜街甲30号梅苑饭店1-2楼（近交通大学南门）, Haidian, Beijing','\0\0\0\0\0\0\0��R%�]@�*�]g�C@',NULL,NULL,'96423986df09168e5501745de7bc0c0c9ce03cf0',NULL),(7,NULL,'北京和庭餐饮','高梁桥斜街18号中苑宾馆一层, Haidian, Beijing','\0\0\0\0\0\0\0�f���]@�`<�C@',NULL,NULL,'65544dac176bec8bbaffe9803b00df7e1a845c9f',NULL),(8,NULL,'Sankeshu','太平庄13号, Qixiang Rd, Haidian','\0\0\0\0\0\0\0�!���]@Um7�7�C@',NULL,NULL,'6849b2e1c5bc416b00e64c1afd0dc08737557052',NULL),(9,NULL,'科苑餐厅','2 Daliushu Rd, Haidian','\0\0\0\0\0\0\0P�H��]@8�-:Y�C@',NULL,NULL,'dec50bcde8cfb642ee3ed43236ffa7c25469424e',NULL),(10,NULL,'乐天玛特','中央财经大学学生宿舍区, 62 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0�{L�]@v�+.��C@',NULL,NULL,'dedd45fa5f0558e80f3cfcb25213a9f4e9fe8e73',NULL),(11,NULL,'邓老凉茶','大柳树南站北方交大西门对面, Haidian, Beijing','\0\0\0\0\0\0\0����}]@��T�-�C@',NULL,NULL,'f10555fba7d6c551597b4f67c334728f42e8cc1e',NULL),(12,NULL,'Golden Phoenix','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0@��I�]@Q��l�C@',NULL,NULL,'f21a2f05590a9ee3fc1016cf06513677d1931e40',NULL),(13,NULL,'7-Eleven','Daliushu Rd, Haidian','\0\0\0\0\0\0\0@n��t]@χg	2�C@',NULL,NULL,'2c46a7bf6bfa88c80f374d8a5513d1da4874bfa4',NULL),(14,NULL,'大茶杯','3 Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0�rL�]@�s��q�C@',NULL,NULL,'52373e3967faf35e1766e5c53f9eb495d032e76e',NULL),(15,NULL,'疯狂烤翅','高梁桥斜街（交通大学南门对面）, Haidian, Beijing','\0\0\0\0\0\0\0pBZc�]@h>�n�C@',NULL,NULL,'aa46965676138c197280c30b807ee8b49a467d35',NULL),(16,NULL,'Fruitime','23 Daliushu Rd, Haidian','\0\0\0\0\0\0\0��-y]@��.��C@',NULL,NULL,'bbfc2e8171d4540fb19d99358acd4bb3d5823287',NULL),(17,NULL,'金凤成祥','农大东路上地华联超市B1楼14号（近上地南口）, Haidian, Beijing','\0\0\0\0\0\0\0 ��;�]@��8�C@',NULL,NULL,'6ed56615a9b7ee0a7a5a37c2df82fdf64f0b892c',NULL),(18,NULL,'北京比多快餐有限公司','上园村32号, Haidian, Beijing','\0\0\0\0\0\0\0��u��]@^��_�C@',NULL,NULL,'83f3ee3972dc09811b85d64020cb637b52e7bba1',NULL),(19,NULL,'金凤成祥交大二店','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0p����]@^I�\\�C@',NULL,NULL,'98a0a542cb39967b53a162a388e25032e06ab234',NULL),(20,NULL,'鲜果时光','高粱桥斜街1号蟹老宋香锅对面（近大慧寺）, Haidian, Beijing','\0\0\0\0\0\0\0�c��]@��|�X�C@',NULL,NULL,'d7964e311f6eea271134ded2c82a7a955656e9f8',NULL),(21,NULL,'三元梅园乳品店','Jiaotong Daxue Rd','\0\0\0\0\0\0\0`��b�]@�\r��[�C@',NULL,NULL,'e468ae23f4b34ccf32507dede354b8fa21b98d55',NULL),(22,NULL,'Golden Phoenix','Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0��g��]@�Ɍ���C@',NULL,NULL,'afe576a4e6e3cc134fb49d0ad4c7fa79118c02fd',NULL),(23,NULL,'Niushiniu','2 Dahuisi Rd, Haidian','\0\0\0\0\0\0\0�xy]@��i��C@',NULL,NULL,'88cc8e8b3a5d8d3d60dcb2a549763c8410ea4133',NULL),(24,NULL,'甜品时间','2 Daliushu Rd, Haidian','\0\0\0\0\0\0\0P�H��]@8�-:Y�C@',NULL,NULL,'63a75237b16168f0d806277a09477ab4ec54dd82',NULL),(25,NULL,'Nadu Spicy-hot Hotpot','Gaoliangqiao Byway, Haidian','\0\0\0\0\0\0\0���C�]@r��7�C@',NULL,NULL,'5c21b2ab7b59001966ca425c0f190ad65dd7e78c',NULL),(26,NULL,'高丽王朝酱汤牛排火锅','Haidian, Beijing','\0\0\0\0\0\0\0��\nG�]@�Ȯ���C@',NULL,NULL,'14e8fe380b27b5c82798ac1faee4b4ced145ddca',NULL),(27,NULL,'Lao Shanghai Town God s Temple Food','上园村甲4号, Gaoliangqiao Byway, Haidian','\0\0\0\0\0\0\0@`2�]@^��jG�C@',NULL,NULL,'3766201f67f40c7768159fe842d7b2bccd1a2623',NULL),(28,NULL,'Jitian Weidao','Dahuisi Rd, Haidian','\0\0\0\0\0\0\0�<��t]@=~o��C@',NULL,NULL,'8a35d0e5f4ad0222a6bdc29dbc4cec431c0f89eb',NULL),(29,NULL,'Hongyun Tianwaitian Roast Duck Home Cooking','高粱桥斜街19号, Qixiang Rd, Haidian','\0\0\0\0\0\0\0 ���]@dY0�G�C@',NULL,NULL,'a83fb8bb35e7290c7e1079cee49829f92fb97879',NULL),(30,NULL,'锅底捞','高梁桥斜街28号, Haidian, Beijing','\0\0\0\0\0\0\0���]@\"�T3k�C@',NULL,NULL,'03e56d7d19cd1375905e278a08757de99b886e4d',NULL),(31,NULL,'铁锅炖江鱼','高粱桥斜街28号（近北方交大南门）, Haidian, Beijing','\0\0\0\0\0\0\0�{�i�]@?rk�m�C@',NULL,NULL,'99167c1e451f174dce393f6ca1b297bbd3fd0cf8',NULL),(32,NULL,'四命院','高粱桥斜街19号, Haidian, Beijing','\0\0\0\0\0\0\0��a��]@r��ZC�C@',NULL,NULL,'7c9c469a17053d5fa5ab860dd2003512fd2e40f6',NULL),(33,NULL,'味口全饺子串大柳树店','5 Daliushu Rd, Haidian','\0\0\0\0\0\0\0HP�s]@,���c�C@',NULL,NULL,'b2a2339d8508c71627001e4b5815bfc3da292e97',NULL),(34,NULL,'Guolin Home Cooking Beixiaguan Shop','19 Gaoliangqiao Byway, Haidian','\0\0\0\0\0\0\0\'0��]@&:�,B�C@',NULL,NULL,'ab12a8d60538a1299ab023c799e4daf69ec9a040',NULL),(35,NULL,'新疆美食城高梁桥斜街','高梁桥斜街, Haidian, Beijing','\0\0\0\0\0\0\0ȝ���]@�U-�(�C@',NULL,NULL,'c90231ed34f4de78410468a478ba930ca1cc00bc',NULL),(36,NULL,'江边诱惑巫山烤全鱼交大店','Haidian, Beijing','\0\0\0\0\0\0\0�j�#�]@���k�C@',NULL,NULL,'b165976ca3450e994c6f10666839e630250ffbcc',NULL),(37,NULL,'Yinhe Outer Club','13 Gaoliangqiao Byway, Haidian','\0\0\0\0\0\0\0���]@�\Z�{b�C@',NULL,NULL,'4b424d55d33f8fd0aab45422cc52c4307fa4e733',NULL),(38,NULL,'中国政法大学法家楼饭庄','大慧寺路2号, Haidian, Beijing','\0\0\0\0\0\0\0�{�ʄ]@c^G��C@',NULL,NULL,'2c83fc8043a18c49c3f45b55a66423d6c1a4971f',NULL),(39,NULL,'Yudu Jiachu Wanzhou Roasted Fish','19 Gaoliangqiao Byway, Haidian','\0\0\0\0\0\0\0 ��u�]@�%P6�C@',NULL,NULL,'04f02b0326e8ec51150b3781c5be9f7fadcc0445',NULL),(40,NULL,'Yudouji Soybean Milk Yuhuoguo','Dahuisi Rd, Haidian','\0\0\0\0\0\0\0`�u]@*�����C@',NULL,NULL,'fb8c43976009ce4f51e1d9ec5db59b07c50aa873',NULL),(41,NULL,'财园餐厅','中央财经大学学生宿舍区, 62 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0�{L�]@v�+.��C@',NULL,NULL,'2b803a25921c8ea548f73f14da64927e86639f9a',NULL),(42,NULL,'四合院羊蝎子高梁桥店','高梁桥斜街19号, Haidian, Beijing','\0\0\0\0\0\0\0���>�]@+j0�C@',NULL,NULL,'df13aa74d4b83b60b42f85efc976148d5ceb64e8',NULL),(43,NULL,'北京市昆鹏影视技术公司苑上园美食城','西外高梁桥斜街19号, Haidian, Beijing','\0\0\0\0\0\0\0�*��]@�;�(A�C@',NULL,NULL,'1335c0d31dab37e419d95ea48347d20590ad909b',NULL),(44,NULL,'老吃客华横店','大柳树路, Haidian, Beijing','\0\0\0\0\0\0\00�5#�]@A�!\0�C@',NULL,NULL,'d273b1b9ec7e41366fb0279f208159f64f7ab815',NULL),(45,NULL,'Ladangjia','62 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0���W�]@�6�ُ�C@',NULL,NULL,'0e7c84b90330fa5f0c36a4d4cbf25d76bd12864e',NULL),(46,NULL,'Northeast Sanjiang Huoyu Cun','Gaoliangqiao Byway, Haidian','\0\0\0\0\0\0\0�\n���]@;Qi�C@',NULL,NULL,'1f2e7c15a6e035766efb4587d2a5aceb9a72228a',NULL),(47,NULL,'紫玉栗子','Xueyuan South Rd','\0\0\0\0\0\0\0�|���]@��_Yi�C@',NULL,NULL,'b20ff7af381a61ebf74f4e612754ac0dab21a18f',NULL),(48,NULL,'羊婆婆火锅','中央财经大学学生宿舍区, 62 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0pd��]@����_�C@',NULL,NULL,'d677addac84f47cd2ed208e69c26948f3bfe30f6',NULL),(49,NULL,'蜀源小肥羊','高梁桥斜街甲22号,北京交通大学西门以南130米路东, Haidian, Beijing','\0\0\0\0\0\0\0��]@3�`��C@',NULL,NULL,'6a916ba27106e08109900f920b44b16fb9fc33f6',NULL),(50,NULL,'鼎好一碗香24小时面馆','高梁桥斜街17号天外天烤鸭家旁边, Haidian, Beijing','\0\0\0\0\0\0\0\0V-�]@�,AF@�C@',NULL,NULL,'b176244e78da94f803aab9751abced46ac96d2f2',NULL),(51,NULL,'Baily Coffee American Restaurant','Daliushu Rd, Haidian','\0\0\0\0\0\0\0P��pv]@�p $�C@',NULL,NULL,'f38e757f447b1d12ad6a7c349d19a8aeafedc3eb',NULL),(52,NULL,'梅苑饭店休闲娱乐','西直门高粱桥斜街甲30号, Haidian, Beijing','\0\0\0\0\0\0\0�Y2�]@�1\"Qh�C@',NULL,NULL,'8abeb268a3c2e4abaf7644274dacc177db831a6d',NULL),(53,NULL,'Renyi Restaurant','2 Dahuisi Rd, Haidian','\0\0\0\0\0\0\0�Qew]@��P��C@',NULL,NULL,'14c2b6b9d827fa529adb914ebc631d0f50b40683',NULL),(54,NULL,'担仔喜面','富海大厦, Daliushu Rd, Haidian','\0\0\0\0\0\0\0��\"�t]@c���\Z�C@',NULL,NULL,'4f6c07ff1581908dc392bcbd5338e6ad390dca55',NULL),(55,NULL,'富海银座日本料理铁板烧茶艺','大柳树富海中心3, Haidian, Beijing','\0\0\0\0\0\0\0 ��Jv]@W{��C@',NULL,NULL,'0dd14694413105dd233305142571285fdaf65020',NULL),(56,NULL,'Suannaiwu','2 Dahuisi Rd, Haidian, Beijing','\0\0\0\0\0\0\0�x]@�+����C@',NULL,NULL,'442307d13313b3993ca2ac80435d50f901e33089',NULL),(57,NULL,'九头鹰酒家高梁桥店','高梁桥斜街甲22-3号,北京交通大学西门以南120米路东, Haidian, Beijing','\0\0\0\0\0\0\0ܺ��]@}�R���C@',NULL,NULL,'b27cb9457e4b8fe374bfbbd5e1798d088ad86809',NULL),(58,NULL,'卫健美烧烤店','高梁桥上园村3号, Haidian, Beijing','\0\0\0\0\0\0\0�Lk��]@�:�p�C@',NULL,NULL,'c47fcfe72c6cf79f59ff00367b9e92e96e079522',NULL),(59,NULL,'Quik Convenience Store','北下关, Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0����]@���k�C@',NULL,NULL,'3d5ecc5aa0baf30b459581115d394db23f0aab5f',NULL),(60,NULL,'老西北面馆','中央财经大学学生宿舍区, 62 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0�{L�]@v�+.��C@',NULL,NULL,'8080bb2e7532b16b5f8af36dcbb0d5304e1adc12',NULL),(61,NULL,'Wushan Roast Whole Fish','交大东路46号, Haidian','\0\0\0\0\0\0\0`���f]@��_��C@',NULL,NULL,'bfbeb8fcc448a2294b0b9f0f57b4a11764148271',NULL),(62,NULL,'Jinhui International Business Conference Hotel','48 Xueyuan South Rd, Haidian, Beijing','\0\0\0\0\0\0\0����g]@W\"P���C@',NULL,NULL,'2472a241610a3aeb8e5f5c282f206f060ba6df17',NULL),(63,NULL,'Zhulu Tea House','36 Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0\0�jI]@�n���C@',NULL,NULL,'93aca1d5df2efec45ba6a6179366a54cc57d4ea8',NULL),(64,NULL,'物美便利店交通大学路店','Haidian, Beijing','\0\0\0\0\0\0\0��\rN]@!�����C@',NULL,NULL,'168554f709aea747d42efd31a2ff8c531221e1e1',NULL),(65,NULL,'KFC','50 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0��_vO]@���{��C@',NULL,NULL,'aa7b04548e890ce5ba154f912474f83477204b3a',NULL),(66,NULL,'Beijing Hualian','50 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0�X\0S]@�S㥛�C@',NULL,NULL,'a06c7f54f778aa174c466307141ea846d85c60a9',NULL),(67,NULL,'Lashangyin','交通大学南门向东200米路南, Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\00�l�/]@�ù��C@',NULL,NULL,'1f3bea78656029dfbfbc1a5724c9b74055353baa',NULL),(68,NULL,'McDonald\'s','大柳树路2号院, Haidian','\0\0\0\0\0\0\09��!]@�*Q���C@',NULL,NULL,'ac8063dd035d03d0a0adea846d351b7e8d47bf0d',NULL),(69,NULL,'Laobian Dumplings','交通大学路南侧, Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0�%��:]@��\"ڎ�C@',NULL,NULL,'e755e5bc9ca94937787d39b785f93e7a929e2f9b',NULL),(70,NULL,'Shangbinzhai','交大东门外, Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0�L�:]@�_#I�C@',NULL,NULL,'3164dcdb705a4e15675615249b832e80a6f0d373',NULL),(71,NULL,'Weiduomei','北下关, Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0p\\��J]@��Or��C@',NULL,NULL,'e8e873c43011cbe86aa8ae403f78535e868b06fb',NULL),(72,NULL,'No.9 Weidao Restaurant','9 Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0Т>�]@8j��{�C@',NULL,NULL,'72c9aebfc0632167d4908cdaa03ccdf3a33bfdf5',NULL),(73,NULL,'Tube station','交通大学路, Haidian, Beijing','\0\0\0\0\0\0\0���$]@)	����C@',NULL,NULL,'adf54ac4baf4c45613dc50098f89125d131616d1',NULL),(74,NULL,'祥顺四合院','高粱桥斜街19号, Haidian, Beijing','\0\0\0\0\0\0\0 ��1 ]@��J�C@',NULL,NULL,'0061a6a2520266223653db95042dc4c92a5f044e',NULL),(75,NULL,'避风塘街景甜品饮料吧','交通大学路, Haidian, Beijing','\0\0\0\0\0\0\0�\'f�]@�Q���C@',NULL,NULL,'06e2d992200594cfe2a4e314f8828c708e7060df',NULL),(76,NULL,'乖乖毅餐厅','明光寺11号, Haidian, Beijing','\0\0\0\0\0\0\0���w]@�)��C@',NULL,NULL,'1bf81500168c5958eb30176a0fcb1ebbf91339a5',NULL),(77,NULL,'Beijing Daoxiangcun Foodstuff Co.,Ltd.','60 Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0�>Ȳ`]@\"���1�C@',NULL,NULL,'fdee50090901d77d5d7d84391ad2ec0161ae5dc6',NULL),(78,NULL,'Fruitime','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0�JZ�\r]@�f�|�C@',NULL,NULL,'a1b014ff4d8f0198dbc30bb46235e32cc31d373e',NULL),(79,NULL,'Dao Xiang Cun','60 Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0�8�@d]@\'c`�C@',NULL,NULL,'69acec215cef0992b6e45cc69a56f5c82eca4d99',NULL),(80,NULL,'Xiabu Xiabu','-1号华联商厦1层, 50 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0�L�T]@�K����C@',NULL,NULL,'d4bee7a3566cc8bd6dc4861d4b4a5eca7c925828',NULL),(81,NULL,'周黑鸭','42 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0�1Y�]@��<��C@',NULL,NULL,'65f9a946d52960d997914deccbbb29c7ec51d567',NULL),(82,NULL,'嘉禾一品交大东路店','交大东路25, Haidian, Beijing','\0\0\0\0\0\0\0P1AG]@��Gߤ�C@',NULL,NULL,'478ff24d07f126886e79259bb8e546b12de5b5b1',NULL),(83,NULL,'迪亚天天交大折扣超市','60 Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0�8�@d]@\'c`�C@',NULL,NULL,'d58e21ed993678d74886a5ba80773432abbe8df6',NULL),(84,NULL,'肯德基学院南路餐厅','学院南路50-1, Haidian, Beijing','\0\0\0\0\0\0\0����P]@�dU���C@',NULL,NULL,'151cb48bef28bf70f219a42d9b77be6ae67f5b04',NULL),(85,NULL,'Liangjiang','Jiaotong Daxue Rd, Haidian, Beijing','\0\0\0\0\0\0\0X���<]@XY���C@',NULL,NULL,'3dea60467574d084766d2517c8c5b86db97d931a',NULL),(86,NULL,'赛百味','上园村3号, Haidian, Beijing','\0\0\0\0\0\0\0�.�5]@%�)� �C@',NULL,NULL,'a49e08ec95b1aa7fbe84941e40ad520a64c01496',NULL),(87,NULL,'7-Eleven','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0�tv28]@�(yu��C@',NULL,NULL,'8f909e65bb3664968ff52e97a95327b0d222765d',NULL),(88,NULL,'Yoshinoya','50 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0 @�P]@�ฌ��C@',NULL,NULL,'d7be8ac0ebccaeb82469eb4eb6edd4274f80a8e3',NULL),(89,NULL,'Dia','1 Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\00�\"1]@���ْ�C@',NULL,NULL,'74478ef0b27aea3684cab32a90ac7e84b41ff30c',NULL),(90,NULL,'Baijin Karaoke Square','25 Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0�>��?]@�9���C@',NULL,NULL,'0bf0b526332edbf694b47ca7e58f53a157c7719a',NULL),(91,NULL,'Jiahe Yipin Zhou','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0��}�A]@C;�Y��C@',NULL,NULL,'621307a05752baf30cdf53cf3488866df231eea1',NULL),(92,NULL,'马兰拉面','1 Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0���!9]@\"���C@',NULL,NULL,'575694bfe1d5315827b66be270ee60b71e0e4c89',NULL),(93,NULL,'久久丫','交通大学路, Haidian, Beijing','\0\0\0\0\0\0\0�uU�]@^-wf��C@',NULL,NULL,'46052b5675141cdc35d39300821c227649507061',NULL),(94,NULL,'鸿飞阁','高粱桥斜街, Haidian, Beijing','\0\0\0\0\0\0\0@�u�]@N%@�C@',NULL,NULL,'ee0c13e24f10718d6dda340bf80c072259e78ab6',NULL),(95,NULL,'Yonho King','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0���k	]@�mm�y�C@',NULL,NULL,'874b13ec1bfeeef9bcdd4f557061912ef3c78ff4',NULL),(96,NULL,'畅饮茶楼','交大东路36号, Haidian, Beijing','\0\0\0\0\0\0\0��kzP]@Hlw��C@',NULL,NULL,'b0bda386fe5882e7f8dee3cc4b25fbf71695c5eb',NULL),(97,NULL,'上海华联超市','交大东路, Haidian, Beijing','\0\0\0\0\0\0\0@c&Q/]@M�x$^�C@',NULL,NULL,'bbe19c4d9a728c30c09625af3d870cb1679cd2dd',NULL),(98,NULL,'漫无目的','交通大学路1号院4, Haidian, Beijing','\0\0\0\0\0\0\0�$]@3�`��C@',NULL,NULL,'e23bb74b1a24836299bee869a79e12a8db4075b4',NULL),(99,NULL,'金凤成祥交大一店','Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0 �w~Q]@�T�#��C@',NULL,NULL,'0676bbe7e2c626afffd99ca02023a3fa27fd0c36',NULL),(100,NULL,'Beijing Jiaotong University （East Campus） Student Dining Hall','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0P�e�%]@���k�C@',NULL,NULL,'b69706e056add3a126f0e854e0af43b7e7c9c394',NULL),(101,NULL,'Siyuan Qingsi','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0�I��	]@���ɩ�C@',NULL,NULL,'d9b2c2c8a71359f8c83d8731cc8701e6d0b451ad',NULL),(102,NULL,'Wu Mart','31 Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0`���F]@\'�y��C@',NULL,NULL,'964ad01cc36065c2ee26b8486fdbddcd1fcbed15',NULL),(103,NULL,'Xiaoxiong Home','36 Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0�A�L]@,�z���C@',NULL,NULL,'c57680de3f3a31687b54b491c31388f8db313bc8',NULL),(104,NULL,'友圃咖啡','交大东路1号交通大学逸夫楼3楼, Haidian, Beijing','\0\0\0\0\0\0\0п$�)]@�¼Ǚ�C@',NULL,NULL,'777c830ed59b078426e611c6718b65b18dea51ba',NULL),(105,NULL,'沙县小吃北京交大东门店','交大东路, Haidian, Beijing','\0\0\0\0\0\0\0\0�S�D]@4J���C@',NULL,NULL,'bf26f230c5a9a1903cf22d19d209737ba47e52dd',NULL),(106,NULL,'小杨楼私房菜馆','52 Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0`���T]@,���C@',NULL,NULL,'9bcd3149d8646bacaba90f2c778ffaf098c6e11e',NULL),(107,NULL,'Xinfadi Baigewan （Jiaoda） Community Convenient Vegetable Shop','Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0 �k$]@�����C@',NULL,NULL,'89f0714067d8fd4356c6be658d2acaf73bb768af',NULL),(108,NULL,'Chaoshifa Convenience Store','1 Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0��]@D?�{�C@',NULL,NULL,'43f03f639a633e4278e37bdad6ac5728562d4bf0',NULL),(109,NULL,'C平方酸奶店','交通大学路交大家园5号楼（辣尚瘾烤鱼对面）, Haidian, Beijing','\0\0\0\0\0\0\0�&��0]@������C@',NULL,NULL,'2f16e4b194f3d249a79657e0e694ef6d3c469ce8',NULL),(110,NULL,'学苑餐厅','北京交通大学校外公寓, Haidian, Beijing','\0\0\0\0\0\0\0x�}9]@I��r��C@',NULL,NULL,'d45f6e0f495c3bda3dc1c87bb91f89507a2e8101',NULL),(111,NULL,'福成肥牛嘉茂店','西直门嘉茂购物广场四、五层, Haidian, Beijing','\0\0\0\0\0\0\0���%]@�7��w�C@',NULL,NULL,'91a5cc4e0079a2d13f536ece95238b03a3753faa',NULL),(112,NULL,'校门口','北京交通大学家属区（东门）, Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0@��6]@M��(#�C@',NULL,NULL,'28445879bd7b34ced193cd0894e4f29f29d1b78b',NULL),(113,NULL,'好吃坊','交大东路17号, Haidian, Beijing','\0\0\0\0\0\0\0ض(�A]@���S��C@',NULL,NULL,'583195308c5d7ef63495d672c70b6ee276ad8718',NULL),(114,NULL,'尚膳大食堂','交大东路（近佰金ktv）, Haidian, Beijing','\0\0\0\0\0\0\0�*��<]@��_��C@',NULL,NULL,'37243f3f36e1717980957693b5f3ef716bdb4703',NULL),(115,NULL,'Axiang Rice Noodles','48 Xueyuan South Rd, Haidian','\0\0\0\0\0\0\0P\0�)U]@i�\r���C@',NULL,NULL,'4fcbf90edea9ec2ef27509d1da368ea8c0805584',NULL),(116,NULL,'蝎王府羊蝎子','25 Jiaotong Daxue Rd, Haidian','\0\0\0\0\0\0\0(��@]@�f���C@',NULL,NULL,'117bafb30a2f3a380578d98ca0e5b877ee72e99f',NULL),(117,NULL,'新疆美食城','学院南路27号, Haidian, Beijing','\0\0\0\0\0\0\0���)]@�\n�+��C@',NULL,NULL,'029a3b13120bf957ce6aa97f4d32fed5144867a8',NULL),(118,NULL,'阳光缘林咖啡交大店','Haidian, Beijing','\0\0\0\0\0\0\0���5]@��eN��C@',NULL,NULL,'9577951c140419772e258efa7d98fd438d611dca',NULL),(119,NULL,'Tianfu Xiangguo','17 Jiaoda East Rd, Haidian','\0\0\0\0\0\0\0p\Z�kA]@����C@',NULL,NULL,'719cda9132b4206302f04c6541f90eaf56a89e67',NULL),(120,NULL,'宜品小肥羊','西直门外交大东路, Haidian, Beijing','\0\0\0\0\0\0\0p4��@]@V�F��C@',NULL,NULL,'0deb9637455b190bd2a1723c28b7bd932bcd54cc',NULL);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_schedules`
--

DROP TABLE IF EXISTS `table_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_schedules` (
  `ts_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ts_rest_id` bigint(20) NOT NULL,
  `ts_order_id` bigint(20) NOT NULL,
  `ts_table_id` bigint(20) NOT NULL,
  `ts_date` date NOT NULL,
  `ts_start_time` time NOT NULL,
  `ts_end_time` time NOT NULL,
  `ts_valid` enum('true','false') NOT NULL,
  PRIMARY KEY (`ts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_schedules`
--

LOCK TABLES `table_schedules` WRITE;
/*!40000 ALTER TABLE `table_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_schedules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-11 23:14:27
