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
  `cust_joined_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_phoneno_UNIQUE` (`cust_phoneno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_accounts`
--

LOCK TABLES `customer_accounts` WRITE;
/*!40000 ALTER TABLE `customer_accounts` DISABLE KEYS */;
INSERT INTO `customer_accounts` VALUES (1,'test','11122223333','pHsAfvHPAX547TBWMeiHHrRx+qn/ipTbno/wIT4A5962K4dVLRUv3yDtQ6qRJnYdIPYbKhKcti+91C1p3QB6o6HPtETdBfjfbDTipZ4w7hK2CFhBtuq/F1fGMwznFvxGvrl8RMRKOWTkvIPFOgPFdNaLQza+nUURvV5owBKzaUo4zT6AYI63kBJS54eZyGw9NNed3qZiz/e4Cga7RUKBfx5MFvaRLj5+PQlftErIltwdwzsB5fFhnQ0LKDas88EY1GrUX72TsojuotdQyOUSQgsYTgI1fjTU04doz0NBEQwwgwL0QMFZKPE/4ctDnUz5+AyLU+PJpLqNaJ6EK0vDTw==:FyIOqy7pYPLoSl+Kc0A/pv70dVignV/+lYGEz/NHETDQO+7mq8jIzv+N/LscJAkPcGs3mh/GmoxLG+S0s9FZuR8EBIRsUQil4wLuVH+77JFb+l7v/UGuOOiyecZ0zLcs6yXiN7PV3JE92UAkxkAvaHkBcQ3wstcrSbk77lABnN0=','2014-05-13 08:30:00'),(2,'foobar','12312341234','DpA3lN63BcPnPDNTq0t243b3wmgYHP0yeO2tQiIvgNu1Si7kb9smTE5jMDRe+scOrw9/MnympnGhdJWwsCQaCk47IYdWpBypceKpSQCgSiERTIXX55VKEbl+SZo+CIuREV4t/UELePh49kXVri2JcSjFwH6Z5qGgltwatHbMvBRnSKheAF8Q9KPdfzx6QJ441DBvVyzgpEs/8h8KrpauFR9xYa1OSmkvGhy5mroJSsDMDgNecM4o2AriqhuWdEnEgXtDpFWTZVa7la/ydYh3WNFmi4NEp/V2mq3yFTa6LF41p/r/Im6p2U2sO1/xLpQiHNMLOlUGK3EGAZ2j2ECYtQ==:YTAYd30VCq0LqMMqBu4uiVO0CKy5nen+9F/DD2Kv9qgnCP+Fq9d1X/Rd4ATJWq44mITF2GSUjsCswDoR6dJnJc57r1BPqb6z7cBBU1ba/AzxEFjrPy8RKUuVD/fHLKQshtG5p9R4vjFGdNIAwmeVJOF2EsVBWaJBTbebsfSCOIM=','2014-05-13 08:30:52'),(3,'john','12301230123','GZkk77Vi1IyFJT8wFjmYUxM+Opvxm5QCG194i8RWCZAxveUTLDg++fHZ8VQfFGDpskZoPALIVO7Ew5Ehfdv/sxQzwa34x/f139ikPLMxhdBJSZac9CC5RrJISNI4PvtXoHWAgq2FWffyhiSVxsv852zzD1NCeTLBw/Is1M+6BLFkBWfJ0nblYoE8b/sX/iqjTkvhu5oGm+N5rTwnHp8aFw6BHOcjN2VdTXgQsVUR6mvsu0A45W/mycU6ZEjBC2npJqSiLEQI19uNUcmjklBosHg5+RtJKPHtsKZyAEVgzQEEAF9JwMuPpfJwdEJFCmtPChp9e9NijhxzCgGDOAPqlw==:C7ux2/Vf3gvgyRiEcCILEUG82alAlyV6/9nGdDAhxLq7Um5v8HjKohVSZokgdqikTb7jw/uinbiZ6ze8MC3ugLT9HIPT+2ryiwqxiE43FE1TqONXLvq6lH2wFhkPG/jAZW7sR2LTsC8FwxdvyY+dSpd2W2N09wVeuNdyrrutSRw=','2014-05-13 08:36:45');
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
  `tbl_display_number` int(11) NOT NULL,
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
  `inv_created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inv_status` char(1) NOT NULL,
  PRIMARY KEY (`inv_id`,`inv_cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
INSERT INTO `invitations` VALUES (1,1,1,'true','2014-05-13 08:32:48','s'),(1,2,1,'false','2014-05-13 08:32:48','s'),(1,3,1,'false','2014-05-13 08:32:48','s');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,'Big Mac',18.00,3),(2,1,'Big Mac 2',20.00,1);
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
  `o_created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `o_updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,74.00,3,'2014-05-05',1,'',1,'2014-05-13 08:32:48','0000-00-00 00:00:00');
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
  `ra_created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ra_id`),
  UNIQUE KEY `ra_name_UNIQUE` (`ra_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_accounts`
--

LOCK TABLES `restaurant_accounts` WRITE;
/*!40000 ALTER TABLE `restaurant_accounts` DISABLE KEYS */;
INSERT INTO `restaurant_accounts` VALUES (1,'admin','QLwr3+/NMuHF8gjiJ/nD78MnNbjbEJxHLGT2PIdHT+IDFycOsCY6+qBJ4QUcsjSBXk43s+iVUdJPz+BueMldyOhTR96q/qHoT0oUr+70j+NBFkQwwA24IWGqG7glYdrNpcG00So7c+G/fgjd3paq38SUyXVrfgt4i5rh50qllVVTuDZ82Wt4IB54LXQ6J1fOZaD4iU53lnmubZsflAGt7V80ucQx8gCTIEz33hMY3yV8jXo5dlWsVKjkAiKOkkQ0jBeThyTKZPFOziVh5y/aWbOlHLhYARSI1Hx9yEjeu/eahWGBZEVdDYo0pj1vWoMilDjTitKP9D0s3XJ41yd8Sg==:DhAE3T9vV1uzKWf/2BcfDodC/bPKFXp02VLHdpJSG2fgNpQu/5Ueg8pv9B2Rn9Jjhbef6cu4J+k7WnQ75sC01xhZ6/wExkAbCm3aEjblZEf1dBttjOPmI0Brmbw/9XjD0lhJFlMUWqONlLm76l7ieR6df/1x+8UBFqxZstI1PgU=','2014-05-12 14:15:09');
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
  `rest_category` varchar(255) NOT NULL,
  `rest_geo_location` point DEFAULT NULL,
  `rest_pic` varchar(255) DEFAULT NULL,
  `rest_pic_thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,NULL,'Jiayuan Hotel','6 Daliushu Rd, Haidian','','\0\0\0\0\0\0\00u�׃]@����C@',NULL,NULL),(2,NULL,'Shangyuan Hotel','40 Gaoliangqiao Byway, Haidian','','\0\0\0\0\0\0\00PR`]@��N#-�C@',NULL,NULL),(3,NULL,'Hongguoyuan Hotel','西直门外上园村3号北方交大院内, Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0���?�]@���ި�C@',NULL,NULL),(4,NULL,'Beijing Jiaotong University Student Er Restaurant','15 Gaoliangqiao Byway, Haidian, Beijing','','\0\0\0\0\0\0\0�F=D�]@��\n��C@',NULL,NULL),(5,NULL,'Lingering Garden','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0B���]@����C@',NULL,NULL),(6,NULL,'静思素食坊','高粱桥斜街甲30号梅苑饭店1-2楼（近交通大学南门）, Haidian, Beijing','','\0\0\0\0\0\0\0��R%�]@�*�]g�C@',NULL,NULL),(7,NULL,'北京和庭餐饮','高梁桥斜街18号中苑宾馆一层, Haidian, Beijing','','\0\0\0\0\0\0\0�f���]@�`<�C@',NULL,NULL),(8,NULL,'Sankeshu','太平庄13号, Qixiang Rd, Haidian','','\0\0\0\0\0\0\0�!���]@Um7�7�C@',NULL,NULL),(9,NULL,'科苑餐厅','2 Daliushu Rd, Haidian','','\0\0\0\0\0\0\0P�H��]@8�-:Y�C@',NULL,NULL),(10,NULL,'乐天玛特','中央财经大学学生宿舍区, 62 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0�{L�]@v�+.��C@',NULL,NULL),(11,NULL,'邓老凉茶','大柳树南站北方交大西门对面, Haidian, Beijing','','\0\0\0\0\0\0\0����}]@��T�-�C@',NULL,NULL),(12,NULL,'Golden Phoenix','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0@��I�]@Q��l�C@',NULL,NULL),(13,NULL,'7-Eleven','Daliushu Rd, Haidian','','\0\0\0\0\0\0\0@n��t]@χg	2�C@',NULL,NULL),(14,NULL,'大茶杯','3 Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0�rL�]@�s��q�C@',NULL,NULL),(15,NULL,'疯狂烤翅','高梁桥斜街（交通大学南门对面）, Haidian, Beijing','','\0\0\0\0\0\0\0pBZc�]@h>�n�C@',NULL,NULL),(16,NULL,'Fruitime','23 Daliushu Rd, Haidian','','\0\0\0\0\0\0\0��-y]@��.��C@',NULL,NULL),(17,NULL,'金凤成祥','农大东路上地华联超市B1楼14号（近上地南口）, Haidian, Beijing','','\0\0\0\0\0\0\0 ��;�]@��8�C@',NULL,NULL),(18,NULL,'北京比多快餐有限公司','上园村32号, Haidian, Beijing','','\0\0\0\0\0\0\0��u��]@^��_�C@',NULL,NULL),(19,NULL,'金凤成祥交大二店','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0p����]@^I�\\�C@',NULL,NULL),(20,NULL,'鲜果时光','高粱桥斜街1号蟹老宋香锅对面（近大慧寺）, Haidian, Beijing','','\0\0\0\0\0\0\0�c��]@��|�X�C@',NULL,NULL),(21,NULL,'三元梅园乳品店','Jiaotong Daxue Rd','','\0\0\0\0\0\0\0`��b�]@�\r��[�C@',NULL,NULL),(22,NULL,'Golden Phoenix','Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0��g��]@�Ɍ���C@',NULL,NULL),(23,NULL,'Niushiniu','2 Dahuisi Rd, Haidian','','\0\0\0\0\0\0\0�xy]@��i��C@',NULL,NULL),(24,NULL,'甜品时间','2 Daliushu Rd, Haidian','','\0\0\0\0\0\0\0P�H��]@8�-:Y�C@',NULL,NULL),(25,NULL,'Nadu Spicy-hot Hotpot','Gaoliangqiao Byway, Haidian','','\0\0\0\0\0\0\0���C�]@r��7�C@',NULL,NULL),(26,NULL,'高丽王朝酱汤牛排火锅','Haidian, Beijing','','\0\0\0\0\0\0\0��\nG�]@�Ȯ���C@',NULL,NULL),(27,NULL,'Lao Shanghai Town God s Temple Food','上园村甲4号, Gaoliangqiao Byway, Haidian','','\0\0\0\0\0\0\0@`2�]@^��jG�C@',NULL,NULL),(28,NULL,'Jitian Weidao','Dahuisi Rd, Haidian','','\0\0\0\0\0\0\0�<��t]@=~o��C@',NULL,NULL),(29,NULL,'Hongyun Tianwaitian Roast Duck Home Cooking','高粱桥斜街19号, Qixiang Rd, Haidian','','\0\0\0\0\0\0\0 ���]@dY0�G�C@',NULL,NULL),(30,NULL,'锅底捞','高梁桥斜街28号, Haidian, Beijing','','\0\0\0\0\0\0\0���]@\"�T3k�C@',NULL,NULL),(31,NULL,'铁锅炖江鱼','高粱桥斜街28号（近北方交大南门）, Haidian, Beijing','','\0\0\0\0\0\0\0�{�i�]@?rk�m�C@',NULL,NULL),(32,NULL,'四命院','高粱桥斜街19号, Haidian, Beijing','','\0\0\0\0\0\0\0��a��]@r��ZC�C@',NULL,NULL),(33,NULL,'味口全饺子串大柳树店','5 Daliushu Rd, Haidian','','\0\0\0\0\0\0\0HP�s]@,���c�C@',NULL,NULL),(34,NULL,'Guolin Home Cooking Beixiaguan Shop','19 Gaoliangqiao Byway, Haidian','','\0\0\0\0\0\0\0\'0��]@&:�,B�C@',NULL,NULL),(35,NULL,'新疆美食城高梁桥斜街','高梁桥斜街, Haidian, Beijing','','\0\0\0\0\0\0\0ȝ���]@�U-�(�C@',NULL,NULL),(36,NULL,'江边诱惑巫山烤全鱼交大店','Haidian, Beijing','','\0\0\0\0\0\0\0�j�#�]@���k�C@',NULL,NULL),(37,NULL,'Yinhe Outer Club','13 Gaoliangqiao Byway, Haidian','','\0\0\0\0\0\0\0���]@�\Z�{b�C@',NULL,NULL),(38,NULL,'中国政法大学法家楼饭庄','大慧寺路2号, Haidian, Beijing','','\0\0\0\0\0\0\0�{�ʄ]@c^G��C@',NULL,NULL),(39,NULL,'Yudu Jiachu Wanzhou Roasted Fish','19 Gaoliangqiao Byway, Haidian','','\0\0\0\0\0\0\0 ��u�]@�%P6�C@',NULL,NULL),(40,NULL,'Yudouji Soybean Milk Yuhuoguo','Dahuisi Rd, Haidian','','\0\0\0\0\0\0\0`�u]@*�����C@',NULL,NULL),(41,NULL,'财园餐厅','中央财经大学学生宿舍区, 62 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0�{L�]@v�+.��C@',NULL,NULL),(42,NULL,'四合院羊蝎子高梁桥店','高梁桥斜街19号, Haidian, Beijing','','\0\0\0\0\0\0\0���>�]@+j0�C@',NULL,NULL),(43,NULL,'北京市昆鹏影视技术公司苑上园美食城','西外高梁桥斜街19号, Haidian, Beijing','','\0\0\0\0\0\0\0�*��]@�;�(A�C@',NULL,NULL),(44,NULL,'老吃客华横店','大柳树路, Haidian, Beijing','','\0\0\0\0\0\0\00�5#�]@A�!\0�C@',NULL,NULL),(45,NULL,'Ladangjia','62 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0���W�]@�6�ُ�C@',NULL,NULL),(46,NULL,'Northeast Sanjiang Huoyu Cun','Gaoliangqiao Byway, Haidian','','\0\0\0\0\0\0\0�\n���]@;Qi�C@',NULL,NULL),(47,NULL,'紫玉栗子','Xueyuan South Rd','','\0\0\0\0\0\0\0�|���]@��_Yi�C@',NULL,NULL),(48,NULL,'羊婆婆火锅','中央财经大学学生宿舍区, 62 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0pd��]@����_�C@',NULL,NULL),(49,NULL,'蜀源小肥羊','高梁桥斜街甲22号,北京交通大学西门以南130米路东, Haidian, Beijing','','\0\0\0\0\0\0\0��]@3�`��C@',NULL,NULL),(50,NULL,'鼎好一碗香24小时面馆','高梁桥斜街17号天外天烤鸭家旁边, Haidian, Beijing','','\0\0\0\0\0\0\0\0V-�]@�,AF@�C@',NULL,NULL),(51,NULL,'Baily Coffee American Restaurant','Daliushu Rd, Haidian','','\0\0\0\0\0\0\0P��pv]@�p $�C@',NULL,NULL),(52,NULL,'梅苑饭店休闲娱乐','西直门高粱桥斜街甲30号, Haidian, Beijing','','\0\0\0\0\0\0\0�Y2�]@�1\"Qh�C@',NULL,NULL),(53,NULL,'Renyi Restaurant','2 Dahuisi Rd, Haidian','','\0\0\0\0\0\0\0�Qew]@��P��C@',NULL,NULL),(54,NULL,'担仔喜面','富海大厦, Daliushu Rd, Haidian','','\0\0\0\0\0\0\0��\"�t]@c���\Z�C@',NULL,NULL),(55,NULL,'富海银座日本料理铁板烧茶艺','大柳树富海中心3, Haidian, Beijing','','\0\0\0\0\0\0\0 ��Jv]@W{��C@',NULL,NULL),(56,NULL,'Suannaiwu','2 Dahuisi Rd, Haidian, Beijing','','\0\0\0\0\0\0\0�x]@�+����C@',NULL,NULL),(57,NULL,'九头鹰酒家高梁桥店','高梁桥斜街甲22-3号,北京交通大学西门以南120米路东, Haidian, Beijing','','\0\0\0\0\0\0\0ܺ��]@}�R���C@',NULL,NULL),(58,NULL,'卫健美烧烤店','高梁桥上园村3号, Haidian, Beijing','','\0\0\0\0\0\0\0�Lk��]@�:�p�C@',NULL,NULL),(59,NULL,'Quik Convenience Store','北下关, Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0����]@���k�C@',NULL,NULL),(60,NULL,'老西北面馆','中央财经大学学生宿舍区, 62 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0�{L�]@v�+.��C@',NULL,NULL),(61,NULL,'Wushan Roast Whole Fish','交大东路46号, Haidian','','\0\0\0\0\0\0\0`���f]@��_��C@',NULL,NULL),(62,NULL,'Jinhui International Business Conference Hotel','48 Xueyuan South Rd, Haidian, Beijing','','\0\0\0\0\0\0\0����g]@W\"P���C@',NULL,NULL),(63,NULL,'Zhulu Tea House','36 Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0\0�jI]@�n���C@',NULL,NULL),(64,NULL,'物美便利店交通大学路店','Haidian, Beijing','','\0\0\0\0\0\0\0��\rN]@!�����C@',NULL,NULL),(65,NULL,'KFC','50 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0��_vO]@���{��C@',NULL,NULL),(66,NULL,'Beijing Hualian','50 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0�X\0S]@�S㥛�C@',NULL,NULL),(67,NULL,'Lashangyin','交通大学南门向东200米路南, Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\00�l�/]@�ù��C@',NULL,NULL),(68,NULL,'McDonald\'s','大柳树路2号院, Haidian','','\0\0\0\0\0\0\09��!]@�*Q���C@',NULL,NULL),(69,NULL,'Laobian Dumplings','交通大学路南侧, Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0�%��:]@��\"ڎ�C@',NULL,NULL),(70,NULL,'Shangbinzhai','交大东门外, Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0�L�:]@�_#I�C@',NULL,NULL),(71,NULL,'Weiduomei','北下关, Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0p\\��J]@��Or��C@',NULL,NULL),(72,NULL,'No.9 Weidao Restaurant','9 Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0Т>�]@8j��{�C@',NULL,NULL),(73,NULL,'Tube station','交通大学路, Haidian, Beijing','','\0\0\0\0\0\0\0���$]@)	����C@',NULL,NULL),(74,NULL,'祥顺四合院','高粱桥斜街19号, Haidian, Beijing','','\0\0\0\0\0\0\0 ��1 ]@��J�C@',NULL,NULL),(75,NULL,'避风塘街景甜品饮料吧','交通大学路, Haidian, Beijing','','\0\0\0\0\0\0\0�\'f�]@�Q���C@',NULL,NULL),(76,NULL,'乖乖毅餐厅','明光寺11号, Haidian, Beijing','','\0\0\0\0\0\0\0���w]@�)��C@',NULL,NULL),(77,NULL,'Beijing Daoxiangcun Foodstuff Co.,Ltd.','60 Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0�>Ȳ`]@\"���1�C@',NULL,NULL),(78,NULL,'Fruitime','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0�JZ�\r]@�f�|�C@',NULL,NULL),(79,NULL,'Dao Xiang Cun','60 Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0�8�@d]@\'c`�C@',NULL,NULL),(80,NULL,'Xiabu Xiabu','-1号华联商厦1层, 50 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0�L�T]@�K����C@',NULL,NULL),(81,NULL,'周黑鸭','42 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0�1Y�]@��<��C@',NULL,NULL),(82,NULL,'嘉禾一品交大东路店','交大东路25, Haidian, Beijing','','\0\0\0\0\0\0\0P1AG]@��Gߤ�C@',NULL,NULL),(83,NULL,'迪亚天天交大折扣超市','60 Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0�8�@d]@\'c`�C@',NULL,NULL),(84,NULL,'肯德基学院南路餐厅','学院南路50-1, Haidian, Beijing','','\0\0\0\0\0\0\0����P]@�dU���C@',NULL,NULL),(85,NULL,'Liangjiang','Jiaotong Daxue Rd, Haidian, Beijing','','\0\0\0\0\0\0\0X���<]@XY���C@',NULL,NULL),(86,NULL,'赛百味','上园村3号, Haidian, Beijing','','\0\0\0\0\0\0\0�.�5]@%�)� �C@',NULL,NULL),(87,NULL,'7-Eleven','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0�tv28]@�(yu��C@',NULL,NULL),(88,NULL,'Yoshinoya','50 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0 @�P]@�ฌ��C@',NULL,NULL),(89,NULL,'Dia','1 Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\00�\"1]@���ْ�C@',NULL,NULL),(90,NULL,'Baijin Karaoke Square','25 Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0�>��?]@�9���C@',NULL,NULL),(91,NULL,'Jiahe Yipin Zhou','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0��}�A]@C;�Y��C@',NULL,NULL),(92,NULL,'马兰拉面','1 Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0���!9]@\"���C@',NULL,NULL),(93,NULL,'久久丫','交通大学路, Haidian, Beijing','','\0\0\0\0\0\0\0�uU�]@^-wf��C@',NULL,NULL),(94,NULL,'鸿飞阁','高粱桥斜街, Haidian, Beijing','','\0\0\0\0\0\0\0@�u�]@N%@�C@',NULL,NULL),(95,NULL,'Yonho King','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0���k	]@�mm�y�C@',NULL,NULL),(96,NULL,'畅饮茶楼','交大东路36号, Haidian, Beijing','','\0\0\0\0\0\0\0��kzP]@Hlw��C@',NULL,NULL),(97,NULL,'上海华联超市','交大东路, Haidian, Beijing','','\0\0\0\0\0\0\0@c&Q/]@M�x$^�C@',NULL,NULL),(98,NULL,'漫无目的','交通大学路1号院4, Haidian, Beijing','','\0\0\0\0\0\0\0�$]@3�`��C@',NULL,NULL),(99,NULL,'金凤成祥交大一店','Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0 �w~Q]@�T�#��C@',NULL,NULL),(100,NULL,'Beijing Jiaotong University （East Campus） Student Dining Hall','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0P�e�%]@���k�C@',NULL,NULL),(101,NULL,'Siyuan Qingsi','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0�I��	]@���ɩ�C@',NULL,NULL),(102,NULL,'Wu Mart','31 Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0`���F]@\'�y��C@',NULL,NULL),(103,NULL,'Xiaoxiong Home','36 Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0�A�L]@,�z���C@',NULL,NULL),(104,NULL,'友圃咖啡','交大东路1号交通大学逸夫楼3楼, Haidian, Beijing','','\0\0\0\0\0\0\0п$�)]@�¼Ǚ�C@',NULL,NULL),(105,NULL,'沙县小吃北京交大东门店','交大东路, Haidian, Beijing','','\0\0\0\0\0\0\0\0�S�D]@4J���C@',NULL,NULL),(106,NULL,'小杨楼私房菜馆','52 Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0`���T]@,���C@',NULL,NULL),(107,NULL,'Xinfadi Baigewan （Jiaoda） Community Convenient Vegetable Shop','Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0 �k$]@�����C@',NULL,NULL),(108,NULL,'Chaoshifa Convenience Store','1 Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0��]@D?�{�C@',NULL,NULL),(109,NULL,'C平方酸奶店','交通大学路交大家园5号楼（辣尚瘾烤鱼对面）, Haidian, Beijing','','\0\0\0\0\0\0\0�&��0]@������C@',NULL,NULL),(110,NULL,'学苑餐厅','北京交通大学校外公寓, Haidian, Beijing','','\0\0\0\0\0\0\0x�}9]@I��r��C@',NULL,NULL),(111,NULL,'福成肥牛嘉茂店','西直门嘉茂购物广场四、五层, Haidian, Beijing','','\0\0\0\0\0\0\0���%]@�7��w�C@',NULL,NULL),(112,NULL,'校门口','北京交通大学家属区（东门）, Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0@��6]@M��(#�C@',NULL,NULL),(113,NULL,'好吃坊','交大东路17号, Haidian, Beijing','','\0\0\0\0\0\0\0ض(�A]@���S��C@',NULL,NULL),(114,NULL,'尚膳大食堂','交大东路（近佰金ktv）, Haidian, Beijing','','\0\0\0\0\0\0\0�*��<]@��_��C@',NULL,NULL),(115,NULL,'Axiang Rice Noodles','48 Xueyuan South Rd, Haidian','','\0\0\0\0\0\0\0P\0�)U]@i�\r���C@',NULL,NULL),(116,NULL,'蝎王府羊蝎子','25 Jiaotong Daxue Rd, Haidian','','\0\0\0\0\0\0\0(��@]@�f���C@',NULL,NULL),(117,NULL,'新疆美食城','学院南路27号, Haidian, Beijing','','\0\0\0\0\0\0\0���)]@�\n�+��C@',NULL,NULL),(118,NULL,'阳光缘林咖啡交大店','Haidian, Beijing','','\0\0\0\0\0\0\0���5]@��eN��C@',NULL,NULL),(119,NULL,'Tianfu Xiangguo','17 Jiaoda East Rd, Haidian','','\0\0\0\0\0\0\0p\Z�kA]@����C@',NULL,NULL),(120,NULL,'宜品小肥羊','西直门外交大东路, Haidian, Beijing','','\0\0\0\0\0\0\0p4��@]@V�F��C@',NULL,NULL);
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
  `ts_valid` enum('true','false') NOT NULL DEFAULT 'true',
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

-- Dump completed on 2014-05-13 16:40:45
