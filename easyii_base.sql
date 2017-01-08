-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: easyiicms_shop
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB

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
-- Table structure for table `app_jelou_categories`
--

DROP TABLE IF EXISTS `app_jelou_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_jelou_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_jelou_categories`
--

LOCK TABLES `app_jelou_categories` WRITE;
/*!40000 ALTER TABLE `app_jelou_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_jelou_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_jelou_items`
--

DROP TABLE IF EXISTS `app_jelou_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_jelou_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_jelou_items`
--

LOCK TABLES `app_jelou_items` WRITE;
/*!40000 ALTER TABLE `app_jelou_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_jelou_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_admins`
--

DROP TABLE IF EXISTS `easyii_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_admins` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `auth_key` varchar(128) NOT NULL,
  `access_token` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `access_token` (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_admins`
--

LOCK TABLES `easyii_admins` WRITE;
/*!40000 ALTER TABLE `easyii_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_article_categories`
--

DROP TABLE IF EXISTS `easyii_article_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_article_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_article_categories`
--

LOCK TABLES `easyii_article_categories` WRITE;
/*!40000 ALTER TABLE `easyii_article_categories` DISABLE KEYS */;
INSERT INTO `easyii_article_categories` VALUES (1,'Articles category 1',NULL,2,'articles-category-1',1,1,2,0,1),(2,'Articles category 2',NULL,1,'articles-category-2',2,1,6,0,1),(3,'Subcategory 1',NULL,1,'subcategory-1',2,2,3,1,1),(4,'Subcategory 1',NULL,1,'subcategory-1-2',2,4,5,1,1);
/*!40000 ALTER TABLE `easyii_article_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_article_items`
--

DROP TABLE IF EXISTS `easyii_article_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_article_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_article_items`
--

LOCK TABLES `easyii_article_items` WRITE;
/*!40000 ALTER TABLE `easyii_article_items` DISABLE KEYS */;
INSERT INTO `easyii_article_items` VALUES (1,1,'First article title','/uploads/article/article-1.jpg','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti','<p><strong>Sed ut perspiciatis</strong>, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem.&nbsp;</p><ul><li>item 1</li><li>item 2</li><li>item 3</li></ul><p>ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur?</p>','first-article-title',1483824492,9,1),(2,1,'Second article title','/uploads/article/article-2.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><ol> <li>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </li><li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</li></ol>','second-article-title',1483738092,0,1),(3,1,'Third article title','/uploads/article/article-3.jpg','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti','<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>','third-article-title',1483651692,0,1);
/*!40000 ALTER TABLE `easyii_article_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_carousel`
--

DROP TABLE IF EXISTS `easyii_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_carousel` (
  `carousel_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(128) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`carousel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_carousel`
--

LOCK TABLES `easyii_carousel` WRITE;
/*!40000 ALTER TABLE `easyii_carousel` DISABLE KEYS */;
INSERT INTO `easyii_carousel` VALUES (1,'/uploads/carousel/1.jpg','','Ut enim ad minim veniam, quis nostrud exercitation','Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.',1,1),(2,'/uploads/carousel/2.jpg','','Sed do eiusmod tempor incididunt ut labore et','Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',2,1),(3,'/uploads/carousel/3.jpg','','Lorem ipsum dolor sit amet, consectetur adipiscing elit','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',3,1);
/*!40000 ALTER TABLE `easyii_carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_catalog_categories`
--

DROP TABLE IF EXISTS `easyii_catalog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_catalog_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `fields` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_catalog_categories`
--

LOCK TABLES `easyii_catalog_categories` WRITE;
/*!40000 ALTER TABLE `easyii_catalog_categories` DISABLE KEYS */;
INSERT INTO `easyii_catalog_categories` VALUES (1,'Gadgets',NULL,'[{\"name\":\"brand\",\"title\":\"Brand\",\"type\":\"select\",\"options\":[\"Samsung\",\"Apple\",\"Nokia\"]},{\"name\":\"storage\",\"title\":\"Storage\",\"type\":\"string\",\"options\":\"\"},{\"name\":\"touchscreen\",\"title\":\"Touchscreen\",\"type\":\"boolean\",\"options\":\"\"},{\"name\":\"cpu\",\"title\":\"CPU cores\",\"type\":\"select\",\"options\":[\"1\",\"2\",\"4\",\"8\"]},{\"name\":\"features\",\"title\":\"Features\",\"type\":\"checkbox\",\"options\":[\"Wi-fi\",\"4G\",\"GPS\"]},{\"name\":\"color\",\"title\":\"Color\",\"type\":\"checkbox\",\"options\":[\"White\",\"Black\",\"Red\",\"Blue\"]}]','gadgets',1,1,6,0,NULL,1),(2,'Smartphones',NULL,'[{\"name\":\"brand\",\"title\":\"Brand\",\"type\":\"select\",\"options\":[\"Samsung\",\"Apple\",\"Nokia\"]},{\"name\":\"storage\",\"title\":\"Storage\",\"type\":\"string\",\"options\":\"\"},{\"name\":\"touchscreen\",\"title\":\"Touchscreen\",\"type\":\"boolean\",\"options\":\"\"},{\"name\":\"cpu\",\"title\":\"CPU cores\",\"type\":\"select\",\"options\":[\"1\",\"2\",\"4\",\"8\"]},{\"name\":\"features\",\"title\":\"Features\",\"type\":\"checkbox\",\"options\":[\"Wi-fi\",\"4G\",\"GPS\"]},{\"name\":\"color\",\"title\":\"Color\",\"type\":\"checkbox\",\"options\":[\"White\",\"Black\",\"Red\",\"Blue\"]}]','smartphones',1,2,3,1,NULL,1),(3,'Tablets',NULL,'[{\"name\":\"brand\",\"title\":\"Brand\",\"type\":\"select\",\"options\":[\"Samsung\",\"Apple\",\"Nokia\"]},{\"name\":\"storage\",\"title\":\"Storage\",\"type\":\"string\",\"options\":\"\"},{\"name\":\"touchscreen\",\"title\":\"Touchscreen\",\"type\":\"boolean\",\"options\":\"\"},{\"name\":\"cpu\",\"title\":\"CPU cores\",\"type\":\"select\",\"options\":[\"1\",\"2\",\"4\",\"8\"]},{\"name\":\"features\",\"title\":\"Features\",\"type\":\"checkbox\",\"options\":[\"Wi-fi\",\"4G\",\"GPS\"]},{\"name\":\"color\",\"title\":\"Color\",\"type\":\"checkbox\",\"options\":[\"White\",\"Black\",\"Red\",\"Blue\"]}]','tablets',1,4,5,1,NULL,1);
/*!40000 ALTER TABLE `easyii_catalog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_catalog_item_data`
--

DROP TABLE IF EXISTS `easyii_catalog_item_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_catalog_item_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`data_id`),
  KEY `item_id_name` (`item_id`,`name`),
  KEY `value` (`value`(300))
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_catalog_item_data`
--

LOCK TABLES `easyii_catalog_item_data` WRITE;
/*!40000 ALTER TABLE `easyii_catalog_item_data` DISABLE KEYS */;
INSERT INTO `easyii_catalog_item_data` VALUES (1,1,'brand','Nokia'),(2,1,'storage','1'),(3,1,'touchscreen','0'),(4,1,'cpu','1'),(5,1,'color','White'),(6,1,'color','Red'),(7,1,'color','Blue'),(8,2,'brand','Samsung'),(9,2,'storage','32'),(10,2,'touchscreen','1'),(11,2,'cpu','8'),(12,2,'features','Wi-fi'),(13,2,'features','GPS'),(14,3,'brand','Apple'),(15,3,'storage','64'),(16,3,'touchscreen','1'),(17,3,'cpu','4'),(18,3,'features','Wi-fi'),(19,3,'features','4G'),(20,3,'features','GPS');
/*!40000 ALTER TABLE `easyii_catalog_item_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_catalog_items`
--

DROP TABLE IF EXISTS `easyii_catalog_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_catalog_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `available` int(11) DEFAULT '1',
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `data` text NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_catalog_items`
--

LOCK TABLES `easyii_catalog_items` WRITE;
/*!40000 ALTER TABLE `easyii_catalog_items` DISABLE KEYS */;
INSERT INTO `easyii_catalog_items` VALUES (1,2,'Nokia 3310','<h3>The legend</h3><p>The Nokia 3310 is a GSMmobile phone announced on September 1, 2000, and released in the fourth quarter of the year, replacing the popular Nokia 3210. The phone sold extremely well, being one of the most successful phones with 126 million units sold worldwide.&nbsp;The phone has since received a cult status and is still widely acclaimed today.</p><p>The 3310 was developed at the Copenhagen Nokia site in Denmark. It is a compact and sturdy phone featuring an 84 × 48 pixel pure monochrome display. It has a lighter 115 g battery variant which has fewer features; for example the 133 g battery version has the start-up image of two hands touching while the 115 g version does not. It is a slightly rounded rectangular unit that is typically held in the palm of a hand, with the buttons operated with the thumb. The blue button is the main button for selecting options, with \"C\" button as a \"back\" or \"undo\" button. Up and down buttons are used for navigation purposes. The on/off/profile button is a stiff black button located on the top of the phone.</p>',5,100,0,'{\"brand\":\"Nokia\",\"storage\":\"1\",\"touchscreen\":\"0\",\"cpu\":1,\"color\":[\"White\",\"Red\",\"Blue\"]}','/uploads/catalog/3310.jpg','nokia-3310',1483824492,1),(2,2,'Galaxy S6','<h3>Next is beautifully crafted</h3><p>With their slim, seamless, full metal and glass construction, the sleek, ultra thin edged Galaxy S6 and unique, dual curved Galaxy S6 edge are crafted from the finest materials.</p><p>And while they may be the thinnest smartphones we`ve ever created, when it comes to cutting-edge technology and flagship Galaxy experience, these 5.1\" QHD Super AMOLED smartphones are certainly no lightweights.</p>',1,1000,10,'{\"brand\":\"Samsung\",\"storage\":\"32\",\"touchscreen\":\"1\",\"cpu\":8,\"features\":[\"Wi-fi\",\"GPS\"]}','/uploads/catalog/galaxy.jpg','galaxy-s6',1483738092,1),(3,2,'Iphone 6','<h3>Next is beautifully crafted</h3><p>With their slim, seamless, full metal and glass construction, the sleek, ultra thin edged Galaxy S6 and unique, dual curved Galaxy S6 edge are crafted from the finest materials.</p><p>And while they may be the thinnest smartphones we`ve ever created, when it comes to cutting-edge technology and flagship Galaxy experience, these 5.1\" QHD Super AMOLED smartphones are certainly no lightweights.</p>',0,1100,10,'{\"brand\":\"Apple\",\"storage\":\"64\",\"touchscreen\":\"1\",\"cpu\":4,\"features\":[\"Wi-fi\",\"4G\",\"GPS\"]}','/uploads/catalog/iphone.jpg','iphone-6',1483651692,1);
/*!40000 ALTER TABLE `easyii_catalog_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_faq`
--

DROP TABLE IF EXISTS `easyii_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_faq` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`faq_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_faq`
--

LOCK TABLES `easyii_faq` WRITE;
/*!40000 ALTER TABLE `easyii_faq` DISABLE KEYS */;
INSERT INTO `easyii_faq` VALUES (1,'Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it?','But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure',1,1),(2,'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum?','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta <a href=\"http://easyiicms.com/\">sunt explicabo</a>.',2,1),(3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','t enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',3,1);
/*!40000 ALTER TABLE `easyii_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_feedback`
--

DROP TABLE IF EXISTS `easyii_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer_subject` varchar(128) DEFAULT NULL,
  `answer_text` text,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_feedback`
--

LOCK TABLES `easyii_feedback` WRITE;
/*!40000 ALTER TABLE `easyii_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_files`
--

DROP TABLE IF EXISTS `easyii_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `file` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `downloads` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_files`
--

LOCK TABLES `easyii_files` WRITE;
/*!40000 ALTER TABLE `easyii_files` DISABLE KEYS */;
INSERT INTO `easyii_files` VALUES (1,'Price list','/uploads/files/example.csv',104,'price-list',0,1483824492,1);
/*!40000 ALTER TABLE `easyii_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_gallery_categories`
--

DROP TABLE IF EXISTS `easyii_gallery_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_gallery_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_gallery_categories`
--

LOCK TABLES `easyii_gallery_categories` WRITE;
/*!40000 ALTER TABLE `easyii_gallery_categories` DISABLE KEYS */;
INSERT INTO `easyii_gallery_categories` VALUES (1,'Album 1','/uploads/gallery/album-1.jpg','album-1',1,1,2,0,2,1),(2,'Album 2','/uploads/gallery/album-2.jpg','album-2',2,1,2,0,1,1);
/*!40000 ALTER TABLE `easyii_gallery_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_guestbook`
--

DROP TABLE IF EXISTS `easyii_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_guestbook` (
  `guestbook_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer` text,
  `email` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`guestbook_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_guestbook`
--

LOCK TABLES `easyii_guestbook` WRITE;
/*!40000 ALTER TABLE `easyii_guestbook` DISABLE KEYS */;
INSERT INTO `easyii_guestbook` VALUES (1,'First user','','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',NULL,NULL,1483824492,'127.0.0.1',1,1),(2,'Second user','','Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.',NULL,1483824492,'127.0.0.1',0,1),(3,'Third user','','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',NULL,NULL,1483824492,'127.0.0.1',1,1);
/*!40000 ALTER TABLE `easyii_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_loginform`
--

DROP TABLE IF EXISTS `easyii_loginform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_loginform` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `user_agent` varchar(1024) NOT NULL,
  `time` int(11) DEFAULT '0',
  `success` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_loginform`
--

LOCK TABLES `easyii_loginform` WRITE;
/*!40000 ALTER TABLE `easyii_loginform` DISABLE KEYS */;
INSERT INTO `easyii_loginform` VALUES (1,'root','******','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0',1483824491,1);
/*!40000 ALTER TABLE `easyii_loginform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_migration`
--

DROP TABLE IF EXISTS `easyii_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_migration`
--

LOCK TABLES `easyii_migration` WRITE;
/*!40000 ALTER TABLE `easyii_migration` DISABLE KEYS */;
INSERT INTO `easyii_migration` VALUES ('m000000_000000_base',1483824487),('m000000_000000_install',1483824491);
/*!40000 ALTER TABLE `easyii_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_modules`
--

DROP TABLE IF EXISTS `easyii_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `class` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `settings` text NOT NULL,
  `notice` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_modules`
--

LOCK TABLES `easyii_modules` WRITE;
/*!40000 ALTER TABLE `easyii_modules` DISABLE KEYS */;
INSERT INTO `easyii_modules` VALUES (1,'article','yii\\easyii\\modules\\article\\ArticleModule','Articles','pencil','{\"categoryThumb\":true,\"articleThumb\":true,\"enablePhotos\":true,\"enableShort\":true,\"shortMaxLength\":255,\"enableTags\":true,\"itemsInFolder\":false}',0,65,1),(2,'carousel','yii\\easyii\\modules\\carousel\\CarouselModule','Carousel','picture','{\"enableTitle\":true,\"enableText\":true}',0,40,1),(16,'menu','pceuropa\\menu\\MenuM','Menus','','null',0,122,1),(4,'faq','yii\\easyii\\modules\\faq\\FaqModule','FAQ','question-sign','[]',0,45,1),(5,'feedback','yii\\easyii\\modules\\feedback\\FeedbackModule','Feedback','earphone','{\"mailAdminOnNewFeedback\":true,\"subjectOnNewFeedback\":\"New feedback\",\"templateOnNewFeedback\":\"@easyii\\/modules\\/feedback\\/mail\\/en\\/new_feedback\",\"answerTemplate\":\"@easyii\\/modules\\/feedback\\/mail\\/en\\/answer\",\"answerSubject\":\"Answer on your feedback message\",\"answerHeader\":\"Hello,\",\"answerFooter\":\"Best regards.\",\"enableTitle\":false,\"enablePhone\":true,\"enableCaptcha\":false}',0,60,1),(6,'file','yii\\easyii\\modules\\file\\FileModule','Files','floppy-disk','[]',0,30,1),(7,'gallery','yii\\easyii\\modules\\gallery\\GalleryModule','Photo Gallery','camera','{\"categoryThumb\":true,\"itemsInFolder\":false}',0,90,1),(8,'guestbook','yii\\easyii\\modules\\guestbook\\GuestbookModule','Guestbook','book','{\"enableTitle\":false,\"enableEmail\":true,\"preModerate\":false,\"enableCaptcha\":false,\"mailAdminOnNewPost\":true,\"subjectOnNewPost\":\"New message in the guestbook.\",\"templateOnNewPost\":\"@easyii\\/modules\\/guestbook\\/mail\\/en\\/new_post\",\"frontendGuestbookRoute\":\"\\/guestbook\",\"subjectNotifyUser\":\"Your post in the guestbook answered\",\"templateNotifyUser\":\"@easyii\\/modules\\/guestbook\\/mail\\/en\\/notify_user\"}',2,80,1),(9,'news','yii\\easyii\\modules\\news\\NewsModule','News','bullhorn','{\"enableThumb\":true,\"enablePhotos\":true,\"enableShort\":true,\"shortMaxLength\":256,\"enableTags\":true}',0,70,1),(10,'page','yii\\easyii\\modules\\page\\PageModule','Pages','file','[]',0,50,1),(11,'shopcart','yii\\easyii\\modules\\shopcart\\ShopcartModule','Orders','shopping-cart','{\"mailAdminOnNewOrder\":true,\"subjectOnNewOrder\":\"New order\",\"templateOnNewOrder\":\"@easyii\\/modules\\/shopcart\\/mail\\/en\\/new_order\",\"subjectNotifyUser\":\"Your order status changed\",\"templateNotifyUser\":\"@easyii\\/modules\\/shopcart\\/mail\\/en\\/notify_user\",\"frontendShopcartRoute\":\"\\/shopcart\\/order\",\"enablePhone\":true,\"enableEmail\":true}',0,120,1),(12,'subscribe','yii\\easyii\\modules\\subscribe\\SubscribeModule','E-mail subscribe','envelope','[]',0,10,1),(13,'text','yii\\easyii\\modules\\text\\TextModule','Text blocks','font','[]',0,20,1),(14,'jelou','app\\modules\\jelou\\JelouModule','Jelou','pencil','{\"categoryThumb\":true,\"articleThumb\":true,\"enablePhotos\":true,\"enableShort\":true,\"shortMaxLength\":255,\"enableTags\":true,\"itemsInFolder\":false}',0,121,1);
/*!40000 ALTER TABLE `easyii_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_news`
--

DROP TABLE IF EXISTS `easyii_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_news`
--

LOCK TABLES `easyii_news` WRITE;
/*!40000 ALTER TABLE `easyii_news` DISABLE KEYS */;
INSERT INTO `easyii_news` VALUES (1,'First news title','/uploads/news/news-1.jpg','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti','<p><strong>Sed ut perspiciatis</strong>, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem.&nbsp;</p><ul><li>item 1</li><li>item 2</li><li>item 3</li></ul><p>ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur?</p>','first-news-title',1483824492,1,1),(2,'Second news title','/uploads/news/news-2.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><ol> <li>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </li><li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</li></ol>','second-news-title',1483738092,0,1),(3,'Third news title','/uploads/news/news-3.jpg','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti','<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>','third-news-title',1483651692,0,1);
/*!40000 ALTER TABLE `easyii_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_pages`
--

DROP TABLE IF EXISTS `easyii_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_pages`
--

LOCK TABLES `easyii_pages` WRITE;
/*!40000 ALTER TABLE `easyii_pages` DISABLE KEYS */;
INSERT INTO `easyii_pages` VALUES (1,'Index','<p><strong>All elements are live-editable, switch on Live Edit button to see this feature.</strong>&nbsp;</p><p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','page-index'),(2,'Shop','','page-shop'),(3,'Shop search','','page-shop-search'),(4,'Shopping cart','','page-shopcart'),(5,'Order created','<p>Your order successfully created. Our manager will contact you as soon as possible.</p>','page-shopcart-success'),(6,'News','','page-news'),(7,'Articles','','page-articles'),(8,'Gallery','','page-gallery'),(9,'Guestbook','','page-guestbook'),(10,'FAQ','','page-faq'),(11,'Contact','<p><strong>Address</strong>: Dominican republic, Santo Domingo, Some street 123</p><p><strong>ZIP</strong>: 123456</p><p><strong>Phone</strong>: +1 234 56-78</p><p><strong>E-mail</strong>: demo@example.com</p>','page-contact');
/*!40000 ALTER TABLE `easyii_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_photos`
--

DROP TABLE IF EXISTS `easyii_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `model_item` (`class`,`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_photos`
--

LOCK TABLES `easyii_photos` WRITE;
/*!40000 ALTER TABLE `easyii_photos` DISABLE KEYS */;
INSERT INTO `easyii_photos` VALUES (1,'yii\\easyii\\modules\\catalog\\models\\Item',1,'/uploads/photos/3310-1.jpg','',1),(2,'yii\\easyii\\modules\\catalog\\models\\Item',1,'/uploads/photos/3310-2.jpg','',2),(3,'yii\\easyii\\modules\\catalog\\models\\Item',2,'/uploads/photos/galaxy-1.jpg','',3),(4,'yii\\easyii\\modules\\catalog\\models\\Item',2,'/uploads/photos/galaxy-2.jpg','',4),(5,'yii\\easyii\\modules\\catalog\\models\\Item',2,'/uploads/photos/galaxy-3.jpg','',5),(6,'yii\\easyii\\modules\\catalog\\models\\Item',2,'/uploads/photos/galaxy-4.jpg','',6),(7,'yii\\easyii\\modules\\catalog\\models\\Item',3,'/uploads/photos/iphone-1.jpg','',7),(8,'yii\\easyii\\modules\\catalog\\models\\Item',3,'/uploads/photos/iphone-2.jpg','',8),(9,'yii\\easyii\\modules\\catalog\\models\\Item',3,'/uploads/photos/iphone-3.jpg','',9),(10,'yii\\easyii\\modules\\catalog\\models\\Item',3,'/uploads/photos/iphone-4.jpg','',10),(11,'yii\\easyii\\modules\\news\\models\\News',1,'/uploads/photos/news-1-1.jpg','',11),(12,'yii\\easyii\\modules\\news\\models\\News',1,'/uploads/photos/news-1-2.jpg','',12),(13,'yii\\easyii\\modules\\news\\models\\News',1,'/uploads/photos/news-1-3.jpg','',13),(14,'yii\\easyii\\modules\\news\\models\\News',1,'/uploads/photos/news-1-4.jpg','',14),(15,'yii\\easyii\\modules\\article\\models\\Item',1,'/uploads/photos/article-1-1.jpg','',15),(16,'yii\\easyii\\modules\\article\\models\\Item',1,'/uploads/photos/article-1-2.jpg','',16),(17,'yii\\easyii\\modules\\article\\models\\Item',1,'/uploads/photos/article-1-3.jpg','',17),(18,'yii\\easyii\\modules\\article\\models\\Item',1,'/uploads/photos/news-1-4.jpg','',18),(19,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/album-1-9.jpg','',19),(20,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/album-1-8.jpg','',20),(21,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/album-1-7.jpg','',21),(22,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/album-1-6.jpg','',22),(23,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/album-1-5.jpg','',23),(24,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/album-1-4.jpg','',24),(25,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/album-1-3.jpg','',25),(26,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/album-1-2.jpg','',26),(27,'yii\\easyii\\modules\\gallery\\models\\Category',1,'/uploads/photos/album-1-1.jpg','',27);
/*!40000 ALTER TABLE `easyii_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_seotext`
--

DROP TABLE IF EXISTS `easyii_seotext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_seotext` (
  `seotext_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `h1` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`seotext_id`),
  UNIQUE KEY `model_item` (`class`,`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_seotext`
--

LOCK TABLES `easyii_seotext` WRITE;
/*!40000 ALTER TABLE `easyii_seotext` DISABLE KEYS */;
INSERT INTO `easyii_seotext` VALUES (1,'yii\\easyii\\modules\\page\\models\\Page',1,'','EasyiiCMS demo','','yii2, easyii, admin'),(2,'yii\\easyii\\modules\\page\\models\\Page',2,'Shop categories','Extended shop title','',''),(3,'yii\\easyii\\modules\\page\\models\\Page',3,'Shop search results','Extended shop search title','',''),(4,'yii\\easyii\\modules\\page\\models\\Page',4,'Shopping cart H1','Extended shopping cart title','',''),(5,'yii\\easyii\\modules\\page\\models\\Page',5,'Success','Extended order success title','',''),(6,'yii\\easyii\\modules\\page\\models\\Page',6,'News H1','Extended news title','',''),(7,'yii\\easyii\\modules\\page\\models\\Page',7,'Articles H1','Extended articles title','',''),(8,'yii\\easyii\\modules\\page\\models\\Page',8,'Photo gallery','Extended gallery title','',''),(9,'yii\\easyii\\modules\\page\\models\\Page',9,'Guestbook H1','Extended guestbook title','',''),(10,'yii\\easyii\\modules\\page\\models\\Page',10,'Frequently Asked Question','Extended faq title','',''),(11,'yii\\easyii\\modules\\page\\models\\Page',11,'Contact us','Extended contact title','',''),(12,'yii\\easyii\\modules\\catalog\\models\\Category',2,'Smartphones H1','Extended smartphones title','',''),(13,'yii\\easyii\\modules\\catalog\\models\\Category',3,'Tablets H1','Extended tablets title','',''),(14,'yii\\easyii\\modules\\catalog\\models\\Item',1,'Nokia 3310','','',''),(15,'yii\\easyii\\modules\\catalog\\models\\Item',2,'Samsung Galaxy S6','','',''),(16,'yii\\easyii\\modules\\catalog\\models\\Item',3,'Apple Iphone 6','','',''),(17,'yii\\easyii\\modules\\news\\models\\News',1,'First news H1','','',''),(18,'yii\\easyii\\modules\\news\\models\\News',2,'Second news H1','','',''),(19,'yii\\easyii\\modules\\news\\models\\News',3,'Third news H1','','',''),(20,'yii\\easyii\\modules\\article\\models\\Category',1,'Articles category 1 H1','Extended category 1 title','',''),(21,'yii\\easyii\\modules\\article\\models\\Category',3,'Subcategory 1 H1','Extended subcategory 1 title','',''),(22,'yii\\easyii\\modules\\article\\models\\Category',4,'Subcategory 2 H1','Extended subcategory 2 title','',''),(23,'yii\\easyii\\modules\\article\\models\\Item',1,'First article H1','','',''),(24,'yii\\easyii\\modules\\article\\models\\Item',2,'Second article H1','','',''),(25,'yii\\easyii\\modules\\article\\models\\Item',3,'Third article H1','','',''),(26,'yii\\easyii\\modules\\gallery\\models\\Category',1,'Album 1 H1','Extended Album 1 title','',''),(27,'yii\\easyii\\modules\\gallery\\models\\Category',2,'Album 2 H1','Extended Album 2 title','','');
/*!40000 ALTER TABLE `easyii_seotext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_settings`
--

DROP TABLE IF EXISTS `easyii_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `visibility` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_settings`
--

LOCK TABLES `easyii_settings` WRITE;
/*!40000 ALTER TABLE `easyii_settings` DISABLE KEYS */;
INSERT INTO `easyii_settings` VALUES (1,'easyii_version','EasyiiCMS version','0.9',0),(2,'recaptcha_key','ReCaptcha key','doremi',1),(3,'password_salt','Password salt','bDzB3eTfQfWjOi8oUkzeXA1DVqaNOWJc',0),(4,'root_auth_key','Root authorization key','ccdJHnbjVR3HO9qpLlBfkm95df6UDTHV',0),(5,'root_password','Root password','54cbc3a8d7e50a2634d8132575672cb8cd21b955',1),(6,'auth_time','Auth time','86400',1),(7,'robot_email','Robot E-mail','noreply@localhost.com',1),(8,'admin_email','Admin E-mail','carlosgamboa15@hotmail.com',2),(9,'recaptcha_secret','ReCaptcha secret','doremi',1),(10,'toolbar_position','Frontend toolbar position (\"top\" or \"bottom\")','top',1);
/*!40000 ALTER TABLE `easyii_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_shopcart_goods`
--

DROP TABLE IF EXISTS `easyii_shopcart_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_shopcart_goods` (
  `good_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `options` varchar(255) NOT NULL,
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  PRIMARY KEY (`good_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_shopcart_goods`
--

LOCK TABLES `easyii_shopcart_goods` WRITE;
/*!40000 ALTER TABLE `easyii_shopcart_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_shopcart_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_shopcart_orders`
--

DROP TABLE IF EXISTS `easyii_shopcart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_shopcart_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `comment` varchar(1024) NOT NULL,
  `remark` varchar(1024) NOT NULL,
  `access_token` varchar(32) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_shopcart_orders`
--

LOCK TABLES `easyii_shopcart_orders` WRITE;
/*!40000 ALTER TABLE `easyii_shopcart_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_shopcart_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_subscribe_history`
--

DROP TABLE IF EXISTS `easyii_subscribe_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_subscribe_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `sent` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_subscribe_history`
--

LOCK TABLES `easyii_subscribe_history` WRITE;
/*!40000 ALTER TABLE `easyii_subscribe_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_subscribe_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_subscribe_subscribers`
--

DROP TABLE IF EXISTS `easyii_subscribe_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_subscribe_subscribers` (
  `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`subscriber_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_subscribe_subscribers`
--

LOCK TABLES `easyii_subscribe_subscribers` WRITE;
/*!40000 ALTER TABLE `easyii_subscribe_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_subscribe_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_tags`
--

DROP TABLE IF EXISTS `easyii_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) DEFAULT '0',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_tags`
--

LOCK TABLES `easyii_tags` WRITE;
/*!40000 ALTER TABLE `easyii_tags` DISABLE KEYS */;
INSERT INTO `easyii_tags` VALUES (1,'php',2),(2,'yii2',3),(3,'jquery',3),(4,'html',1),(5,'css',1),(6,'bootstrap',1),(7,'ajax',1);
/*!40000 ALTER TABLE `easyii_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_tags_assign`
--

DROP TABLE IF EXISTS `easyii_tags_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_tags_assign` (
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `class` (`class`),
  KEY `item_tag` (`item_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_tags_assign`
--

LOCK TABLES `easyii_tags_assign` WRITE;
/*!40000 ALTER TABLE `easyii_tags_assign` DISABLE KEYS */;
INSERT INTO `easyii_tags_assign` VALUES ('yii\\easyii\\modules\\news\\models\\News',1,1),('yii\\easyii\\modules\\news\\models\\News',1,2),('yii\\easyii\\modules\\news\\models\\News',1,3),('yii\\easyii\\modules\\news\\models\\News',2,2),('yii\\easyii\\modules\\news\\models\\News',2,3),('yii\\easyii\\modules\\news\\models\\News',2,4),('yii\\easyii\\modules\\article\\models\\Item',1,1),('yii\\easyii\\modules\\article\\models\\Item',1,5),('yii\\easyii\\modules\\article\\models\\Item',1,6),('yii\\easyii\\modules\\article\\models\\Item',2,2),('yii\\easyii\\modules\\article\\models\\Item',2,3),('yii\\easyii\\modules\\article\\models\\Item',2,7);
/*!40000 ALTER TABLE `easyii_tags_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_texts`
--

DROP TABLE IF EXISTS `easyii_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_texts` (
  `text_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`text_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_texts`
--

LOCK TABLES `easyii_texts` WRITE;
/*!40000 ALTER TABLE `easyii_texts` DISABLE KEYS */;
INSERT INTO `easyii_texts` VALUES (1,'Welcome on EasyiiCMS demo website','index-welcome-title');
/*!40000 ALTER TABLE `easyii_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` text NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'{\n    \"left\": [\n        {\n            \"label\": \"Home\",\n            \"url\": \"site/index\"\n        },\n        {\n            \"label\": \"Shop\",\n            \"url\": \"shop/index\"\n        }\n    ],\n    \"right\": []\n}');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1483833801),('m151216_173850_create_menu_table',1483833807);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-07 21:33:25
