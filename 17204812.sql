-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: project_final
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `bev_category_pairing`
--

DROP TABLE IF EXISTS `bev_category_pairing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bev_category_pairing` (
  `beverage` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`beverage`,`cat_id`),
  KEY `cat_id` (`cat_id`),
  CONSTRAINT `bev_category_pairing_ibfk_1` FOREIGN KEY (`beverage`) REFERENCES `beverage_main` (`beverage`),
  CONSTRAINT `bev_category_pairing_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `raw_category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bev_category_pairing`
--

LOCK TABLES `bev_category_pairing` WRITE;
/*!40000 ALTER TABLE `bev_category_pairing` DISABLE KEYS */;
INSERT INTO `bev_category_pairing` VALUES ('Champagne',20),('Prosecco',20),('Cava',22),('Champagne',22),('Chardonnay',22),('Pinot Grigio',22),('Prosecco',22),('Riesling',22),('Zinfandel Rosé',22),('Riesling',23);
/*!40000 ALTER TABLE `bev_category_pairing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bev_dess_category`
--

DROP TABLE IF EXISTS `bev_dess_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bev_dess_category` (
  `cat_id` int(11) NOT NULL,
  `category` varchar(40) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bev_dess_category`
--

LOCK TABLES `bev_dess_category` WRITE;
/*!40000 ALTER TABLE `bev_dess_category` DISABLE KEYS */;
INSERT INTO `bev_dess_category` VALUES (1,'wine','Beverage'),(2,'beer','Beverage'),(3,'softdrink','Beverage'),(4,'Tart','Dessert'),(5,'Cake','Dessert'),(6,'Fruit dessert','Dessert'),(7,'Crumble','Dessert'),(8,'Muffin','Dessert'),(9,'Pie','Dessert'),(10,'Waffle','Dessert'),(11,'biscuit','Dessert'),(12,'Custard','Dessert'),(13,'Bun','Dessert'),(14,'Icecream','Dessert'),(15,'Cookie','Dessert'),(16,'scone','Dessert'),(17,'Chocolate','Dessert'),(18,'Mousse','Dessert'),(19,'Pastry','Dessert'),(20,'Cream','Dessert'),(21,'Bread loaf','Dessert'),(22,'Cupcake','Dessert'),(23,'Sponge cake','Dessert'),(24,'Icecream cake','Dessert');
/*!40000 ALTER TABLE `bev_dess_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bev_region_pairing`
--

DROP TABLE IF EXISTS `bev_region_pairing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bev_region_pairing` (
  `beverage` varchar(50) NOT NULL,
  `reg_id` int(11) NOT NULL,
  PRIMARY KEY (`beverage`,`reg_id`),
  KEY `reg_id` (`reg_id`),
  CONSTRAINT `bev_region_pairing_ibfk_1` FOREIGN KEY (`beverage`) REFERENCES `beverage_main` (`beverage`),
  CONSTRAINT `bev_region_pairing_ibfk_2` FOREIGN KEY (`reg_id`) REFERENCES `region` (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bev_region_pairing`
--

LOCK TABLES `bev_region_pairing` WRITE;
/*!40000 ALTER TABLE `bev_region_pairing` DISABLE KEYS */;
INSERT INTO `bev_region_pairing` VALUES ('Carlsberg beer',1),('Cava',1),('Diet Coke',1),('Heineken beer',1),('Sauternes',1),('Guinness beer',2),('Sol beer',2),('Mango Lassi',3),('Pinot Grigio',3),('Pinot Noir',3),('Barolo',5),('Beaujolais',5),('Bordeaux',5),('Cabernet Sauvignon',5),('Champagne',5),('Chardonnay',5),('Chenin Blanc',5),('Chianti',5),('Gewürztraminer',5),('Irn Bru',5),('Malbec',5),('Merlot',5),('Muscat Blanc',5),('Port',5),('Prosecco',5),('Riesling',5),('Rioja',5),('Sancerre',5),('Sangiovese',5),('Sauvignon Blanc',5),('Syrah',5),('Voignier',5),('Zinfandel Rosé',5);
/*!40000 ALTER TABLE `bev_region_pairing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bev_sandwich_pairing`
--

DROP TABLE IF EXISTS `bev_sandwich_pairing`;
/*!50001 DROP VIEW IF EXISTS `bev_sandwich_pairing`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bev_sandwich_pairing` AS SELECT 
 1 AS `sandwich`,
 1 AS `beverage`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bev_taste_pairing`
--

DROP TABLE IF EXISTS `bev_taste_pairing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bev_taste_pairing` (
  `beverage` varchar(50) NOT NULL,
  `taste_id` int(11) NOT NULL,
  PRIMARY KEY (`beverage`,`taste_id`),
  KEY `taste_id` (`taste_id`),
  CONSTRAINT `bev_taste_pairing_ibfk_1` FOREIGN KEY (`beverage`) REFERENCES `beverage_main` (`beverage`),
  CONSTRAINT `bev_taste_pairing_ibfk_2` FOREIGN KEY (`taste_id`) REFERENCES `taste` (`taste_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bev_taste_pairing`
--

LOCK TABLES `bev_taste_pairing` WRITE;
/*!40000 ALTER TABLE `bev_taste_pairing` DISABLE KEYS */;
INSERT INTO `bev_taste_pairing` VALUES ('Diet Coke',1),('Carlsberg beer',3),('Cava',3),('Champagne',3),('Chenin Blanc',3),('Gewürztraminer',3),('Guinness beer',3),('Heineken beer',3),('Malbec',3),('Muscat Blanc',3),('Prosecco',3),('Riesling',3),('Cabernet Sauvignon',4),('Carlsberg beer',4),('Chenin Blanc',4),('Gewürztraminer',4),('Guinness beer',4),('Heineken beer',4),('Malbec',4),('Muscat Blanc',4),('Pinot Noir',4),('Rioja',4),('Zinfandel Rosé',4),('Chenin Blanc',5),('Gewürztraminer',5),('Muscat Blanc',5),('Pinot Noir',5),('Sauvignon Blanc',5),('Cava',6),('Barolo',10),('Beaujolais',10),('Bordeaux',10),('Chardonnay',10),('Chianti',10),('Irn Bru',10),('Mango Lassi',10),('Pinot Grigio',10),('Port',10),('Sancerre',10),('Sangiovese',10),('Sauternes',10),('Sol beer',10),('Syrah',10),('Voignier',10),('Merlot',11),('Cava',12),('Champagne',12),('Prosecco',12);
/*!40000 ALTER TABLE `bev_taste_pairing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beverage_main`
--

DROP TABLE IF EXISTS `beverage_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beverage_main` (
  `beverage` varchar(50) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`beverage`),
  KEY `cat_id` (`cat_id`),
  KEY `country` (`country`),
  CONSTRAINT `beverage_main_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `bev_dess_category` (`cat_id`),
  CONSTRAINT `beverage_main_ibfk_2` FOREIGN KEY (`country`) REFERENCES `country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beverage_main`
--

LOCK TABLES `beverage_main` WRITE;
/*!40000 ALTER TABLE `beverage_main` DISABLE KEYS */;
INSERT INTO `beverage_main` VALUES ('Barolo',1,'Italy'),('Beaujolais',1,'France'),('Bordeaux',1,'France'),('Cabernet Sauvignon',1,'France'),('Carlsberg beer',2,'Germany'),('Cava',1,'Spain'),('Champagne',1,'France'),('Chardonnay',1,'France'),('Chenin Blanc',1,'France'),('Chianti',1,'Italy'),('Diet Coke',3,'United states'),('Gewürztraminer',1,'France'),('Guinness beer',2,'Ireland'),('Heineken beer',2,'Germany'),('Irn Bru',2,'Scotland'),('Malbec',1,'France'),('Mango Lassi',3,'India'),('Merlot',1,'United states'),('Muscat Blanc',1,'France'),('Pinot Grigio',1,'Italy'),('Pinot Noir',1,'France'),('Port',1,'Portugal'),('Prosecco',1,'Italy'),('Riesling',1,'Germany'),('Rioja',1,'Germany'),('Sancerre',1,'France'),('Sangiovese',1,'Italy'),('Sauternes',1,'France'),('Sauvignon Blanc',1,'France'),('Sol beer',2,'Spain'),('Syrah',1,'France'),('Voignier',1,'France'),('Zinfandel Rosé',1,'United states');
/*!40000 ALTER TABLE `beverage_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country` varchar(50) NOT NULL,
  `reg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`country`),
  KEY `reg_id` (`reg_id`),
  CONSTRAINT `country_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `region` (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('Austria',1),('Belgium',1),('France',1),('Germany',1),('Great Britain',1),('Ireland',1),('Italy',1),('Portugal ',1),('Scotland',1),('Spain',1),('Sweden',1),('United Kingdom',1),('United states',2),('Australia',3),('India',3),('Japan',3),('Singapore',3),('Jamaica',4);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dessert_main`
--

DROP TABLE IF EXISTS `dessert_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dessert_main` (
  `dessert` varchar(50) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`dessert`),
  KEY `cat_id` (`cat_id`),
  KEY `country` (`country`),
  CONSTRAINT `dessert_main_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `bev_dess_category` (`cat_id`),
  CONSTRAINT `dessert_main_ibfk_2` FOREIGN KEY (`country`) REFERENCES `country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dessert_main`
--

LOCK TABLES `dessert_main` WRITE;
/*!40000 ALTER TABLE `dessert_main` DISABLE KEYS */;
INSERT INTO `dessert_main` VALUES ('Almond tart',4,'Italy'),('Angel food cake',5,'United states'),('Apple brown betty',6,'United states'),('Apple Charlotte',6,'France'),('Apple crumble',7,'Ireland'),('Apple Strudel',19,'Austria'),('Banana muffins',8,'United states'),('Banoffee pie',9,'United Kingdom'),('Battenberg cake',5,'United Kingdom'),('Belgian waffles',10,'United states'),('Biscotti Regina',11,'Italy'),('Biscuit Tortoni',11,'Italy'),('Black Forest gateau',5,'Germany'),('Blueberry pie',9,'United states'),('Boston cream pie',9,'United states'),('Bread and butter pudding',12,'United Kingdom'),('Bundt cake',5,'United states'),('Butterkuchen',5,'Germany'),('Butterscotch pie',9,'United Kingdom'),('Cake pops',5,'United states'),('Capuccino chocolate muffins',8,'United states'),('Caraway seed cake',5,'United Kingdom'),('Carrot cake',5,'United Kingdom'),('Cassata cake',5,'Italy'),('Castella cake',5,'Japan'),('Chantilly cake',5,'United states'),('Chelsea buns',13,'United Kingdom'),('Cherries Jubilee',12,'United Kingdom'),('Cherry pie',9,'United states'),('Chiffon cake',5,'United states'),('Chocolate bombe',14,'United states'),('Chocolate brownies',5,'United states'),('Chocolate chip cookies',15,'United states'),('Chocolate chip scones',16,'United Kingdom'),('Chocolate eclairs',17,'France'),('Chocolate fudge cake',5,'United states'),('Chocolate ganache cake',5,'France'),('Chocolate lava cake',5,'France'),('Chocolate marble cake',5,'Germany'),('Chocolate marshmallow tea cakes',5,'Australia'),('Chocolate mousse',18,'France'),('Chocolate pralines',17,'Belgium'),('Chocolate truffles',17,'France'),('Christmas fruitcake',5,'Italy'),('Cinnamon rolls',13,'United Kingdom'),('Coconut cake',5,'United states'),('Coconut Macaroons',11,'Italy'),('Coffee cake',5,'Germany'),('Cracker cake',5,'United Kingdom'),('Crème brûlée',12,'France'),('Crepes Suzette',6,'France'),('Crumb cake',5,'Germany'),('Custard tarts',4,'France'),('Devil\'s food cake',5,'Germany'),('Double chocolate muffins',8,'United states'),('Dundee cake',5,'Scotland'),('Eccles cakes',5,'United Kingdom'),('Flourless chocolate cake',5,'Italy'),('Foam cake',5,'Spain'),('Fruit flan',12,'Italy'),('Fruit salad',12,'United states'),('Funnel cakes',5,'Germany'),('Gelato',14,'Italy'),('German chocolate cake',5,'Germany'),('Gingerbread house',5,'Italy'),('Gingerbread men',11,'United Kingdom'),('Gooey butter cake',5,'Germany'),('Gugelhupf cake',5,'Germany'),('Hot cakes with syrup',5,'United states'),('Hot milk cake',5,'United states'),('Hummingbird cake',5,'Jamaica'),('Ice cream cake',5,'United states'),('Ice cream sundaes',14,'United states'),('Jaffa cakes',5,'United Kingdom'),('Jam rolly polly',12,'United Kingdom'),('Jam tart',4,'United Kingdom'),('Jamaican rum cake',5,'United states'),('Jewish apple cake',5,'United states'),('Kentucky jam cake',5,'United states'),('Ladyfinger biscuits',11,'France'),('Lamington cake',5,'Australia'),('Lardy cake',5,'United Kingdom'),('Layer cake',5,'United Kingdom'),('Lemon citrus tart',4,'United Kingdom'),('Lemon drizzle cake',5,'United Kingdom'),('Lemon meringue pie',9,'United states'),('Madeira cake',5,'United Kingdom'),('Madeleines',5,'France'),('Marzipan cake',5,'United Kingdom'),('Meringue cake',5,'Italy'),('Mille feuille vanilla cake',5,'France'),('Millionaire\'s shortbread squares',19,'United Kingdom'),('Molasses cake',5,'United Kingdom'),('Molten chocolate cake',5,'France'),('Napoleon cream slice',12,'France'),('Neapolitan ice cream',14,'United states'),('New York cheesecake',5,'United states'),('Nutella pancakes',5,'United states'),('Pain d\'Epices',5,'France'),('Pan Forte',19,'Italy'),('Pandan cake',5,'Singapore'),('Panna cotta',20,'Italy'),('Pannetone',21,'Italy'),('Pavlova',6,'Australia'),('Peach Melba',14,'France'),('Peanut butter cups',22,'United states'),('Pear flan',19,'Italy'),('Pecan pie',9,'United states'),('Petit fours',19,'France'),('Pineapple upside-down cake',5,'United states'),('Poire belle Helene',14,'France'),('Pound cake',5,'Great Britain'),('Prinzregententorte',23,'Germany'),('Profiteroles and chocolate sauce',19,'France'),('Pumpkin pie',9,'United Kingdom'),('Punschkrapfen',5,'Austria'),('Raspberry mille-feuille',12,'France'),('Red velvet cake',5,'United states'),('Rice Krispie cakes',5,'United states'),('Rice pudding',12,'Italy'),('Rock cakes',5,'Great Britain'),('Rocky road',11,'Australia'),('Rum baba',5,'France'),('Rum cake',5,'United states'),('Sachertorte',5,'Austria'),('Sesame seed cake',5,'United states'),('Shoofly pie',9,'United states'),('Simnel cake',5,'United Kingdom'),('Snickers cake',5,'United Kingdom'),('Spice cake',5,'United states'),('Sponge cake',5,'United Kingdom'),('Stollen cake',5,'Germany'),('Strawberry cheesecake',5,'United states'),('Strawberry shortcake',5,'United states'),('Streuselkuchen',5,'Germany'),('Swiss roll',23,'Austria'),('Tarta de Santiago',5,'Spain'),('Tarte Tatin',19,'France'),('Tartufo',14,'Italy'),('Tea loaf',5,'United Kingdom'),('Tin roof pie',24,'United Kingdom'),('Tipsy cake',5,'United Kingdom'),('Tiramisu',19,'Italy'),('Torta caprese',5,'Italy'),('Torta de nata',19,'Portugal'),('Treacle tart',4,'United Kingdom'),('Tres leches cake',5,'United Kingdom'),('Vanilla cupcakes',5,'United states'),('Vanilla wafer cake',5,'United Kingdom'),('Vinegar pie',9,'United states'),('Walnut cake',5,'United Kingdom'),('White sugar sponge cake',5,'United states'),('Yule log',5,'France'),('Zabaione',12,'Italy');
/*!40000 ALTER TABLE `dessert_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dessert_recipe`
--

DROP TABLE IF EXISTS `dessert_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dessert_recipe` (
  `dessert` varchar(50) NOT NULL,
  `ing_id` int(11) NOT NULL,
  PRIMARY KEY (`dessert`,`ing_id`),
  KEY `ing_id` (`ing_id`),
  CONSTRAINT `dessert_recipe_ibfk_1` FOREIGN KEY (`dessert`) REFERENCES `dessert_main` (`dessert`),
  CONSTRAINT `dessert_recipe_ibfk_2` FOREIGN KEY (`ing_id`) REFERENCES `ingredients` (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dessert_recipe`
--

LOCK TABLES `dessert_recipe` WRITE;
/*!40000 ALTER TABLE `dessert_recipe` DISABLE KEYS */;
INSERT INTO `dessert_recipe` VALUES ('Pumpkin pie',67),('Chelsea buns',68),('Christmas fruitcake',68),('Kentucky jam cake',68),('Rock cakes',68),('Stollen cake',68),('Almond tart',81),('Biscuit Tortoni',81),('Chocolate bombe',81),('Chocolate pralines',81),('Dundee cake',81),('Layer cake',81),('Marzipan cake',81),('Pan Forte',81),('Sachertorte',81),('Tarta de Santiago',81),('Torta caprese',81),('Snickers cake',94),('Tin roof pie',94),('Cassata cake',123),('Almond tart',158),('Banana muffins',158),('Belgian waffles',158),('Biscotti Regina',158),('Blueberry pie',158),('Bread and butter pudding',158),('Bundt cake',158),('Butterscotch pie',158),('Chocolate brownies',158),('Chocolate chip cookies',158),('Chocolate chip scones',158),('Chocolate fudge cake',158),('Christmas fruitcake',158),('Coconut cake',158),('Coffee cake',158),('Crème brûlée',158),('Crepes Suzette',158),('Custard tarts',158),('Devil\'s food cake',158),('Double chocolate muffins',158),('Gelato',158),('Gugelhupf cake',158),('Lardy cake',158),('Madeira cake',158),('Nutella pancakes',158),('Pannetone',158),('Pear flan',158),('Pumpkin pie',158),('Rice pudding',158),('Rock cakes',158),('Spice cake',158),('Sponge cake',158),('Tarta de Santiago',158),('Tres leches cake',158),('Vanilla wafer cake',158),('Almond tart',159),('Angel food cake',159),('Apple Charlotte',159),('Apple crumble',159),('Banana muffins',159),('Belgian waffles',159),('Blueberry pie',159),('Boston cream pie',159),('Bread and butter pudding',159),('Bundt cake',159),('Butterkuchen',159),('Cake pops',159),('Capuccino chocolate muffins',159),('Caraway seed cake',159),('Castella cake',159),('Chelsea buns',159),('Cherry pie',159),('Chiffon cake',159),('Chocolate brownies',159),('Chocolate chip cookies',159),('Chocolate chip scones',159),('Chocolate marble cake',159),('Chocolate mousse',159),('Chocolate pralines',159),('Christmas fruitcake',159),('Cinnamon rolls',159),('Coconut cake',159),('Coconut Macaroons',159),('Coffee cake',159),('Cracker cake',159),('Crème brûlée',159),('Crepes Suzette',159),('Custard tarts',159),('Devil\'s food cake',159),('Double chocolate muffins',159),('Dundee cake',159),('Flourless chocolate cake',159),('Foam cake',159),('Fruit flan',159),('Funnel cakes',159),('Gelato',159),('German chocolate cake',159),('Gooey butter cake',159),('Hot cakes with syrup',159),('Hot milk cake',159),('Ice cream cake',159),('Jaffa cakes',159),('Jam rolly polly',159),('Jam tart',159),('Jewish apple cake',159),('Ladyfinger biscuits',159),('Lardy cake',159),('Layer cake',159),('Lemon citrus tart',159),('Lemon drizzle cake',159),('Lemon meringue pie',159),('Madeira cake',159),('Madeleines',159),('Marzipan cake',159),('Meringue cake',159),('Napoleon cream slice',159),('Pandan cake',159),('Panna cotta',159),('Pannetone',159),('Pavlova',159),('Peach Melba',159),('Peanut butter cups',159),('Pear flan',159),('Petit fours',159),('Poire belle Helene',159),('Pound cake',159),('Prinzregententorte',159),('Red velvet cake',159),('Rice pudding',159),('Rock cakes',159),('Sesame seed cake',159),('Sponge cake',159),('Strawberry shortcake',159),('Tarta de Santiago',159),('Torta de nata',159),('Vanilla wafer cake',159),('Walnut cake',159),('Almond tart',160),('Apple crumble',160),('Banana muffins',160),('Belgian waffles',160),('Biscotti Regina',160),('Black Forest gateau',160),('Blueberry pie',160),('Boston cream pie',160),('Bundt cake',160),('Butterkuchen',160),('Cake pops',160),('Capuccino chocolate muffins',160),('Caraway seed cake',160),('Carrot cake',160),('Cassata cake',160),('Castella cake',160),('Chantilly cake',160),('Chelsea buns',160),('Cherry pie',160),('Chiffon cake',160),('Chocolate bombe',160),('Chocolate brownies',160),('Chocolate chip cookies',160),('Chocolate chip scones',160),('Chocolate fudge cake',160),('Chocolate ganache cake',160),('Chocolate marble cake',160),('Christmas fruitcake',160),('Cinnamon rolls',160),('Coconut cake',160),('Coffee cake',160),('Crepes Suzette',160),('Crumb cake',160),('Custard tarts',160),('Devil\'s food cake',160),('Double chocolate muffins',160),('Dundee cake',160),('Eccles cakes',160),('Fruit flan',160),('Funnel cakes',160),('Gingerbread house',160),('Gingerbread men',160),('Gooey butter cake',160),('Gugelhupf cake',160),('Hot cakes with syrup',160),('Hot milk cake',160),('Hummingbird cake',160),('Ice cream cake',160),('Jaffa cakes',160),('Jam rolly polly',160),('Jam tart',160),('Jamaican rum cake',160),('Jewish apple cake',160),('Ladyfinger biscuits',160),('Lamington cake',160),('Lardy cake',160),('Layer cake',160),('Lemon citrus tart',160),('Lemon drizzle cake',160),('Lemon meringue pie',160),('Madeleines',160),('Millionaire\'s shortbread squares',160),('Molasses cake',160),('Molten chocolate cake',160),('Napoleon cream slice',160),('Nutella pancakes',160),('Pan Forte',160),('Pear flan',160),('Pecan pie',160),('Petit fours',160),('Pineapple upside-down cake',160),('Pound cake',160),('Prinzregententorte',160),('Profiteroles and chocolate sauce',160),('Pumpkin pie',160),('Punschkrapfen',160),('Rum cake',160),('Sachertorte',160),('Sesame seed cake',160),('Shoofly pie',160),('Spice cake',160),('Sponge cake',160),('Stollen cake',160),('Strawberry shortcake',160),('Swiss roll',160),('Tarta de Santiago',160),('Tarte Tatin',160),('Tea loaf',160),('Tipsy cake',160),('Treacle tart',160),('Tres leches cake',160),('Vanilla cupcakes',160),('Vanilla wafer cake',160),('Vinegar pie',160),('Walnut cake',160),('Angel food cake',161),('Chocolate marshmallow tea cakes',161),('Chocolate mousse',161),('Coconut Macaroons',161),('Flourless chocolate cake',161),('Foam cake',161),('German chocolate cake',161),('Gugelhupf cake',161),('Ladyfinger biscuits',161),('Lemon meringue pie',161),('Meringue cake',161),('Pandan cake',161),('Pavlova',161),('Vinegar pie',161),('Yule log',161),('Angel food cake',162),('Battenberg cake',162),('Apple brown betty',163),('Apple Charlotte',163),('Apple crumble',163),('Apple Strudel',163),('Fruit flan',163),('Fruit salad',163),('Jewish apple cake',163),('Tarte Tatin',163),('Apple brown betty',164),('Crumb cake',164),('Apple brown betty',165),('Apple Charlotte',165),('Apple crumble',165),('Blueberry pie',165),('Bread and butter pudding',165),('Butterkuchen',165),('Cake pops',165),('Capuccino chocolate muffins',165),('Caraway seed cake',165),('Cassata cake',165),('Chantilly cake',165),('Cherry pie',165),('Chocolate lava cake',165),('Cinnamon rolls',165),('Crumb cake',165),('Custard tarts',165),('Double chocolate muffins',165),('Dundee cake',165),('Eccles cakes',165),('Foam cake',165),('Fruit flan',165),('German chocolate cake',165),('Gingerbread house',165),('Gingerbread men',165),('Gooey butter cake',165),('Gugelhupf cake',165),('Hot milk cake',165),('Ice cream cake',165),('Jam rolly polly',165),('Jam tart',165),('Jamaican rum cake',165),('Kentucky jam cake',165),('Layer cake',165),('Lemon citrus tart',165),('Lemon drizzle cake',165),('Lemon meringue pie',165),('Madeira cake',165),('Millionaire\'s shortbread squares',165),('Molten chocolate cake',165),('Napoleon cream slice',165),('Pannetone',165),('Petit fours',165),('Pound cake',165),('Profiteroles and chocolate sauce',165),('Punschkrapfen',165),('Rock cakes',165),('Rum baba',165),('Rum cake',165),('Shoofly pie',165),('Simnel cake',165),('Spice cake',165),('Stollen cake',165),('Strawberry shortcake',165),('Streuselkuchen',165),('Swiss roll',165),('Tarte Tatin',165),('Tea loaf',165),('Treacle tart',165),('Vanilla cupcakes',165),('Vinegar pie',165),('Walnut cake',165),('Apple brown betty',166),('Butterscotch pie',166),('Chocolate ganache cake',166),('Crumb cake',166),('Eccles cakes',166),('Molasses cake',166),('Pineapple upside-down cake',166),('Shoofly pie',166),('Simnel cake',166),('Tea loaf',166),('Apple Charlotte',167),('Bread and butter pudding',167),('Pannetone',167),('Banana muffins',168),('Banoffee pie',168),('Fruit flan',168),('Fruit salad',168),('Hummingbird cake',168),('Banoffee pie',169),('Chocolate pralines',169),('Gelato',169),('Mille feuille vanilla cake',169),('Raspberry mille-feuille',169),('Banoffee pie',170),('Banoffee pie',171),('Chocolate marshmallow tea cakes',171),('New York cheesecake',171),('Rocky road',171),('Strawberry cheesecake',171),('Battenberg cake',172),('Jam rolly polly',172),('Jam tart',172),('Kentucky jam cake',172),('Battenberg cake',173),('Marzipan cake',173),('Simnel cake',173),('Stollen cake',173),('Almond tart',174),('Banana muffins',174),('Belgian waffles',174),('Biscotti Regina',174),('Black Forest gateau',174),('Bread and butter pudding',174),('Bundt cake',174),('Butterkuchen',174),('Cake pops',174),('Capuccino chocolate muffins',174),('Caraway seed cake',174),('Carrot cake',174),('Castella cake',174),('Chantilly cake',174),('Chelsea buns',174),('Chiffon cake',174),('Chocolate brownies',174),('Chocolate chip cookies',174),('Chocolate chip scones',174),('Chocolate fudge cake',174),('Chocolate ganache cake',174),('Chocolate marble cake',174),('Christmas fruitcake',174),('Coconut cake',174),('Coffee cake',174),('Crème brûlée',174),('Crepes Suzette',174),('Devil\'s food cake',174),('Double chocolate muffins',174),('Dundee cake',174),('Funnel cakes',174),('Gooey butter cake',174),('Hot cakes with syrup',174),('Hot milk cake',174),('Hummingbird cake',174),('Ice cream cake',174),('Jaffa cakes',174),('Jam rolly polly',174),('Jam tart',174),('Jamaican rum cake',174),('Jewish apple cake',174),('Kentucky jam cake',174),('Layer cake',174),('Lemon drizzle cake',174),('Madeira cake',174),('Madeleines',174),('Marzipan cake',174),('Molten chocolate cake',174),('Nutella pancakes',174),('Pain d\'Epices',174),('Panna cotta',174),('Pannetone',174),('Pear flan',174),('Pecan pie',174),('Petit fours',174),('Pineapple upside-down cake',174),('Pound cake',174),('Prinzregententorte',174),('Profiteroles and chocolate sauce',174),('Pumpkin pie',174),('Red velvet cake',174),('Rock cakes',174),('Rum baba',174),('Rum cake',174),('Sesame seed cake',174),('Spice cake',174),('Sponge cake',174),('Swiss roll',174),('Tarta de Santiago',174),('Torta de nata',174),('Vanilla cupcakes',174),('Vanilla wafer cake',174),('Walnut cake',174),('Belgian waffles',175),('Cassata cake',175),('Chocolate bombe',175),('Chocolate lava cake',175),('Chocolate marble cake',175),('Crème brûlée',175),('Devil\'s food cake',175),('Gelato',175),('Gooey butter cake',175),('Hot milk cake',175),('Hummingbird cake',175),('Jewish apple cake',175),('Lamington cake',175),('Mille feuille vanilla cake',175),('Molten chocolate cake',175),('Panna cotta',175),('Pavlova',175),('Peach Melba',175),('Pineapple upside-down cake',175),('Poire belle Helene',175),('Pound cake',175),('Red velvet cake',175),('Rum baba',175),('Sachertorte',175),('Shoofly pie',175),('Sponge cake',175),('Tres leches cake',175),('Vanilla cupcakes',175),('Vanilla wafer cake',175),('Walnut cake',175),('Yule log',175),('Biscotti Regina',176),('Sesame seed cake',176),('Apple Strudel',177),('Biscotti Regina',177),('Carrot cake',177),('Chocolate mousse',177),('Crepes Suzette',177),('Dundee cake',177),('Eccles cakes',177),('Jaffa cakes',177),('Pan Forte',177),('Punschkrapfen',177),('Simnel cake',177),('Tarta de Santiago',177),('Biscuit Tortoni',178),('Boston cream pie',178),('Chantilly cake',178),('Chocolate bombe',178),('Chocolate eclairs',178),('Chocolate truffles',178),('Fruit flan',178),('Lamington cake',178),('Meringue cake',178),('Napoleon cream slice',178),('New York cheesecake',178),('Panna cotta',178),('Poire belle Helene',178),('Profiteroles and chocolate sauce',178),('Rum baba',178),('Snickers cake',178),('Strawberry cheesecake',178),('Swiss roll',178),('Tartufo',178),('Tipsy cake',178),('Biscuit Tortoni',179),('Chocolate brownies',179),('Chocolate chip cookies',179),('Chocolate chip scones',179),('Double chocolate muffins',179),('Biscuit Tortoni',180),('Jamaican rum cake',180),('Punschkrapfen',180),('Rum baba',180),('Rum cake',180),('Black Forest gateau',181),('Cherries Jubilee',181),('Cherry pie',181),('Simnel cake',181),('Tartufo',181),('Black Forest gateau',182),('Chocolate bombe',182),('Chocolate brownies',182),('Chocolate chip cookies',182),('Chocolate chip scones',182),('Chocolate fudge cake',182),('Chocolate ganache cake',182),('Chocolate lava cake',182),('Chocolate marble cake',182),('Chocolate mousse',182),('Chocolate truffles',182),('Devil\'s food cake',182),('Double chocolate muffins',182),('Flourless chocolate cake',182),('Gugelhupf cake',182),('Red velvet cake',182),('Rocky road',182),('Tiramisu',182),('Yule log',182),('Black Forest gateau',183),('Tres leches cake',183),('Black Forest gateau',184),('Black Forest gateau',185),('Blueberry pie',186),('Cracker cake',186),('Fruit flan',186),('Fruit salad',186),('Boston cream pie',187),('German chocolate cake',187),('Kentucky jam cake',187),('Apple Strudel',188),('Bread and butter pudding',188),('Carrot cake',188),('Cinnamon rolls',188),('Crumb cake',188),('Eccles cakes',188),('Funnel cakes',188),('Hummingbird cake',188),('Jewish apple cake',188),('Kentucky jam cake',188),('Molasses cake',188),('Pain d\'Epices',188),('Pan Forte',188),('Pannetone',188),('Pumpkin pie',188),('Rice pudding',188),('Spice cake',188),('Streuselkuchen',188),('Bundt cake',189),('Lemon citrus tart',189),('Lemon drizzle cake',189),('Lemon meringue pie',189),('Madeleines',189),('New York cheesecake',189),('Tarta de Santiago',189),('Treacle tart',189),('Butterscotch pie',190),('Chocolate lava cake',190),('Chocolate mousse',190),('Custard tarts',190),('Flourless chocolate cake',190),('Gelato',190),('German chocolate cake',190),('Gugelhupf cake',190),('Ladyfinger biscuits',190),('Lemon citrus tart',190),('Lemon meringue pie',190),('Mille feuille vanilla cake',190),('Pandan cake',190),('Raspberry mille-feuille',190),('Tarte Tatin',190),('Tipsy cake',190),('Vinegar pie',190),('Yule log',190),('Zabaione',190),('Butterscotch pie',191),('Cassata cake',191),('Meringue cake',191),('Streuselkuchen',191),('Tipsy cake',191),('Capuccino chocolate muffins',192),('Coffee cake',192),('Devil\'s food cake',192),('Molasses cake',192),('Tiramisu',192),('Caraway seed cake',193),('Carrot cake',194),('Apple Strudel',195),('Carrot cake',195),('Chelsea buns',195),('Christmas fruitcake',195),('Dundee cake',195),('Simnel cake',195),('Tea loaf',195),('Apple Strudel',196),('Carrot cake',196),('Christmas fruitcake',196),('Cassata cake',197),('Castella cake',198),('Chelsea buns',198),('Cherries Jubilee',199),('Cherries Jubilee',200),('Chiffon cake',201),('Funnel cakes',201),('Chiffon cake',202),('Gugelhupf cake',202),('Mille feuille vanilla cake',202),('Raspberry mille-feuille',202),('Vanilla cupcakes',202),('Walnut cake',202),('Chocolate bombe',203),('Chocolate lava cake',203),('Chocolate mousse',203),('Chocolate pralines',203),('Devil\'s food cake',203),('Flourless chocolate cake',203),('German chocolate cake',203),('Jaffa cakes',203),('Lamington cake',203),('Peanut butter cups',203),('Poire belle Helene',203),('Prinzregententorte',203),('Profiteroles and chocolate sauce',203),('Punschkrapfen',203),('Red velvet cake',203),('Rice Krispie cakes',203),('Rocky road',203),('Sachertorte',203),('Swiss roll',203),('Tartufo',203),('Yule log',203),('Chocolate chip scones',204),('Foam cake',204),('Funnel cakes',204),('Hot cakes with syrup',204),('Madeleines',204),('Chocolate eclairs',205),('Chocolate eclairs',206),('Chocolate fudge cake',207),('Chocolate marshmallow tea cakes',207),('Gingerbread house',207),('Gingerbread men',207),('Hot cakes with syrup',207),('Millionaire\'s shortbread squares',207),('New York cheesecake',207),('Pecan pie',207),('Rocky road',207),('Tin roof pie',207),('Treacle tart',207),('Chocolate ganache cake',208),('Chocolate truffles',208),('Chocolate pralines',209),('Pan Forte',209),('Chocolate pralines',210),('German chocolate cake',210),('Hummingbird cake',210),('Ice cream sundaes',210),('Kentucky jam cake',210),('Pecan pie',210),('Vanilla wafer cake',210),('Chocolate truffles',211),('Christmas fruitcake',212),('Christmas fruitcake',213),('Christmas fruitcake',214),('Tipsy cake',214),('Coconut cake',215),('Coconut Macaroons',215),('German chocolate cake',215),('Lamington cake',215),('Vanilla wafer cake',215),('Coconut Macaroons',216),('Millionaire\'s shortbread squares',216),('Snickers cake',216),('Tres leches cake',216),('Cracker cake',217),('Cracker cake',218),('Crepes Suzette',219),('Jewish apple cake',219),('Tea loaf',219),('Crepes Suzette',220),('Custard tarts',221),('Dundee cake',222),('Eccles cakes',222),('Eccles cakes',223),('Gingerbread house',223),('Gingerbread men',223),('Jamaican rum cake',223),('Lardy cake',223),('Molasses cake',223),('Pain d\'Epices',223),('Pan Forte',223),('Spice cake',223),('Flourless chocolate cake',224),('Boston cream pie',225),('Gingerbread men',225),('Gooey butter cake',226),('New York cheesecake',226),('Strawberry cheesecake',226),('Hummingbird cake',227),('Ice cream cake',228),('Ice cream sundaes',228),('Neapolitan ice cream',228),('Tin roof pie',228),('Ice cream sundaes',229),('Jaffa cakes',230),('Kentucky jam cake',231),('Lardy cake',231),('Spice cake',231),('Stollen cake',231),('Streuselkuchen',231),('Lardy cake',232),('Shoofly pie',232),('Layer cake',233),('Prinzregententorte',233),('Vanilla cupcakes',233),('Lemon citrus tart',234),('Lemon drizzle cake',234),('Lemon meringue pie',234),('Peach Melba',234),('Poire belle Helene',234),('Vinegar pie',234),('Lemon meringue pie',235),('Meringue cake',235),('Marzipan cake',236),('Chocolate marshmallow tea cakes',237),('Millionaire\'s shortbread squares',237),('Molten chocolate cake',237),('Tiramisu',237),('Torta caprese',237),('Molasses cake',238),('Shoofly pie',238),('Neapolitan ice cream',239),('Nutella pancakes',240),('Pain d\'Epices',241),('Pan Forte',242),('Pandan cake',243),('Pandan cake',244),('Panna cotta',245),('Panna cotta',246),('Pavlova',247),('Peach Melba',248),('Peanut butter cups',249),('Snickers cake',249),('Pear flan',250),('Poire belle Helene',250),('Red velvet cake',251),('Rice Krispie cakes',252),('Rice pudding',253),('Rocky road',254),('Rum cake',255),('Streuselkuchen',255),('Walnut cake',255),('Prinzregententorte',256),('Punschkrapfen',256),('Sachertorte',256),('Simnel cake',256),('Snickers cake',257),('Stollen cake',258),('Strawberry cheesecake',259),('Strawberry shortcake',259),('Tartufo',260),('Tea loaf',261),('Tin roof pie',262),('Tiramisu',263),('Zabaione',263),('Tiramisu',264),('Tiramisu',265),('Torta caprese',266),('Torta caprese',267),('Torta caprese',268),('Hot milk cake',269),('Torta de nata',269),('Pineapple upside-down cake',270),('Apple Strudel',271),('Mille feuille vanilla cake',271),('Raspberry mille-feuille',271),('Apple Strudel',272),('Vinegar pie',273),('Walnut cake',274),('White sugar sponge cake',275),('White sugar sponge cake',276),('Zabaione',276),('White sugar sponge cake',277),('Raspberry mille-feuille',278);
/*!40000 ALTER TABLE `dessert_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hot_products`
--

DROP TABLE IF EXISTS `hot_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hot_products` (
  `PIZZAS` varchar(50) DEFAULT NULL,
  `DESSERTS` varchar(50) DEFAULT NULL,
  `BEVERAGES` varchar(50) DEFAULT NULL,
  `SANDWICHES` varchar(50) DEFAULT NULL,
  KEY `PIZZAS` (`PIZZAS`),
  KEY `DESSERTS` (`DESSERTS`),
  KEY `BEVERAGES` (`BEVERAGES`),
  KEY `SANDWICHES` (`SANDWICHES`),
  CONSTRAINT `hot_products_ibfk_1` FOREIGN KEY (`PIZZAS`) REFERENCES `pizza_main` (`pizza`),
  CONSTRAINT `hot_products_ibfk_2` FOREIGN KEY (`DESSERTS`) REFERENCES `dessert_main` (`dessert`),
  CONSTRAINT `hot_products_ibfk_3` FOREIGN KEY (`BEVERAGES`) REFERENCES `beverage_main` (`beverage`),
  CONSTRAINT `hot_products_ibfk_4` FOREIGN KEY (`SANDWICHES`) REFERENCES `sandwich_main` (`sandwich`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot_products`
--

LOCK TABLES `hot_products` WRITE;
/*!40000 ALTER TABLE `hot_products` DISABLE KEYS */;
INSERT INTO `hot_products` VALUES ('Cheese N corn','Almond tart','Barolo','Roasted Sandwich'),('Mexican Green Wave','Custard tarts','Beaujolais','Chicken Roll'),('Pizza Mania','Jam tart','Bordeaux','Fuity Chicken'),('chicken Tikka','Lemon citrus tart','Cabernet Sauvignon','Spicy Chicken Wrap'),('Veg Extravaganza','Treacle tart','Cava','Beef Rules'),('Chicken golden delight','Angel food cake','Champagne','Vegg Filet'),('Chicken Italiano','Battenberg cake','Chardonnay','Egg Roll'),('Deluxe veggie','Black Forest gateau','Chenin Blanc','Cheddar Toasties'),('Paneer soya supreme','Bundt cake','Chianti','Chicken v Bacon '),('Chicken fiesta','Butterkuchen','Gewürztraminer','BBQ Salmon');
/*!40000 ALTER TABLE `hot_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ing_category`
--

DROP TABLE IF EXISTS `ing_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ing_category` (
  `ing_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`ing_id`,`category_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `ing_category_ibfk_1` FOREIGN KEY (`ing_id`) REFERENCES `ingredients` (`ing_id`),
  CONSTRAINT `ing_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `raw_category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ing_category`
--

LOCK TABLES `ing_category` WRITE;
/*!40000 ALTER TABLE `ing_category` DISABLE KEYS */;
INSERT INTO `ing_category` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(134,1),(139,1),(155,1),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(78,2),(79,2),(80,2),(81,2),(82,2),(83,2),(84,2),(85,2),(86,2),(87,2),(88,2),(89,2),(90,2),(91,2),(92,2),(93,2),(94,2),(193,2),(2,3),(95,3),(96,3),(98,3),(99,3),(100,3),(101,3),(102,3),(103,3),(104,3),(105,3),(106,3),(107,3),(108,3),(109,3),(110,3),(111,3),(112,3),(113,3),(114,3),(115,3),(116,3),(117,3),(118,3),(119,3),(120,3),(121,3),(122,3),(123,3),(124,3),(125,3),(126,3),(127,3),(128,3),(129,4),(130,4),(131,4),(132,4),(133,4),(134,4),(135,4),(136,4),(137,4),(138,4),(139,4),(140,4),(141,4),(142,4),(143,4),(144,4),(145,4),(146,4),(147,4),(148,4),(149,4),(150,4),(151,4),(152,4),(153,4),(154,4),(155,4),(156,4),(95,6),(97,6),(98,6),(99,6),(100,6),(102,6),(103,6),(104,6),(107,6),(108,6),(109,6),(110,6),(111,6),(112,6),(113,6),(114,6),(115,6),(116,6),(117,6),(118,6),(119,6),(121,6),(122,6),(123,6),(124,6),(126,6),(127,6),(128,6),(157,6),(164,6),(168,6),(177,6),(182,6),(186,6),(215,6),(220,6),(225,6),(231,6),(232,6),(242,6),(248,6),(263,6),(268,6),(171,7),(174,7),(176,7),(187,7),(188,7),(191,7),(197,7),(206,7),(228,7),(230,7),(233,7),(234,7),(257,7),(260,7),(265,7),(272,7),(159,8),(161,8),(163,8),(166,8),(170,8),(190,8),(203,8),(204,8),(216,8),(217,8),(223,8),(229,8),(240,8),(246,8),(264,8),(270,8),(271,8),(274,8),(276,8),(160,9),(173,9),(189,9),(162,10),(167,10),(180,10),(185,10),(194,10),(211,10),(212,10),(218,10),(221,10),(226,10),(247,10),(249,10),(258,10),(269,10),(277,10),(158,11),(165,11),(172,11),(237,11),(169,12),(178,12),(181,12),(184,12),(202,12),(205,12),(207,12),(224,12),(236,12),(239,12),(255,13),(175,14),(192,14),(201,14),(214,14),(238,14),(241,14),(244,14),(251,14),(252,14),(253,14),(256,14),(259,14),(261,14),(275,14),(179,15),(183,15),(198,15),(213,15),(219,15),(245,15),(262,15),(267,15),(222,16),(243,16),(250,16),(196,17),(200,17),(199,18),(227,18),(195,19),(208,19),(209,19),(210,19),(235,19),(254,19),(266,19),(273,19),(2,20),(4,20),(5,20),(17,20),(30,20),(31,20),(50,20),(70,20),(84,20),(86,20),(87,20),(89,20),(103,20),(144,20),(145,20),(150,20),(154,20),(54,21),(70,21),(105,21),(106,21),(107,21),(5,22),(19,22),(21,22),(27,22),(30,22),(31,22),(32,22),(33,22),(34,22),(44,22),(50,22),(155,22),(29,23),(45,23),(46,23),(47,23),(94,23),(105,23),(106,23),(120,23),(129,23),(130,23),(133,23),(135,23),(136,23),(137,23),(141,23),(142,23),(145,23),(146,23),(147,23),(148,23),(149,23),(150,23),(153,23),(154,23),(15,25),(16,25),(48,26),(51,26),(2,28),(3,28),(4,28),(6,28),(7,28),(8,28),(14,28),(17,28),(28,28),(35,28),(42,28),(9,29),(10,30),(20,30),(22,30),(23,30),(24,30),(25,30),(49,30),(11,31),(12,31),(13,31),(18,31),(26,31),(36,31),(37,31),(38,31),(39,31),(40,31),(41,31),(43,31),(16,32);
/*!40000 ALTER TABLE `ing_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `ing_id` int(11) NOT NULL,
  `ingredient` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'swedish meatballs'),(2,'filet mignon'),(3,'beef jerky'),(4,'steak'),(5,'cod goujons'),(6,'roast beef'),(7,'korean beef'),(8,'taco beef'),(9,'lamb kofta'),(10,'chicken fajitas'),(11,'salami'),(12,'pepperoni'),(13,'sausage'),(14,'meatballs'),(15,'venison'),(16,'peking duck'),(17,'kobe beef'),(18,'chorizo'),(19,'king prawns'),(20,'grilled chicken'),(21,'tuna'),(22,'chicken tikka'),(23,'curried chicken'),(24,'tandoori chicken'),(25,'sweet and sour chicken'),(26,'sweet and sour pork'),(27,'sardines'),(28,'mongolian beef'),(29,'falafel'),(30,'seared scallops'),(31,'lobster tail'),(32,'breaded oysters'),(33,'crab meat'),(34,'smoked salmon'),(35,'pastrami'),(36,'black pudding'),(37,'blood sausage'),(38,'spam'),(39,'ham hock'),(40,'parma ham'),(41,'pulled pork'),(42,'chilli con carne'),(43,'bacon'),(44,'anchovies'),(45,'soy chunks'),(46,'quorn chunks'),(47,'tofu cubes'),(48,'roast turkey'),(49,'satay chicken'),(50,'caviar'),(51,'cranberries'),(52,'canadian bacon'),(53,'bell peppers'),(54,'baby spinach'),(55,'red onions'),(56,'french onions'),(57,'french fries'),(58,'red peppers'),(59,'sun-dried tomatoes'),(60,'sliced aubergine'),(61,'sliced courgettes'),(62,'carrot strips'),(63,'shallots'),(64,'artichoke hearts'),(65,'beetroot slices'),(66,'pine nuts'),(67,'pumpkin'),(68,'raisins'),(69,'capers'),(70,'chickpeas'),(71,'avocado'),(72,'jalapenos'),(73,'sweetcorn'),(74,'baby corn'),(75,'habanero chillis'),(76,'sauerkraut'),(77,'kimchi'),(78,'pickled onions'),(79,'chopped garlic'),(80,'cherry tomatoes'),(81,'almonds'),(82,'grilled apricots'),(83,'black olives'),(84,'green olives'),(85,'shiitake mushrooms'),(86,'button mushrooms'),(87,'portobello mushrooms'),(88,'porcini mushrooms'),(89,'wilted greens'),(90,'truffle shavings'),(91,'sliced green tomatoes'),(92,'pistachios'),(93,'orange segments'),(94,'peanuts'),(95,'asparagus tips'),(96,'feta cheese'),(97,'gorgonzola'),(98,'stilton'),(99,'camembert'),(100,'brie'),(101,'jarlsberg cheese'),(102,'cheddar'),(103,'goat\'s cheese'),(104,'haloumi cheese'),(105,'smoked tofu'),(106,'bean curd'),(107,'quark'),(108,'mozzarella'),(109,'danish blue cheese'),(110,'provolone'),(111,'swiss cheese'),(112,'red leicester'),(113,'wensleydale'),(114,'port salut cheese'),(115,'monterey jack'),(116,'gruyere'),(117,'edam'),(118,'gouda'),(119,'munster cheese'),(120,'soy cheese'),(121,'paneer cheese'),(122,'cottage cheese'),(123,'ricotta cheese'),(124,'parmesan cheese'),(125,'manchego cheese'),(126,'boursin cheese'),(127,'queso fresco'),(128,'jalapeno jack'),(129,'marinara sauce'),(130,'barbecue sauce'),(131,'curry sauce'),(132,'alfredo sauce'),(133,'salsa'),(134,'ragu'),(135,'olive tapenade'),(136,'tomato pesto'),(137,'basil pesto'),(138,'carbonarra sauce'),(139,'bolognese sauce'),(140,'bechamel sauce'),(141,'hummus'),(142,'harissa sauce'),(143,'ranch sauce'),(144,'garlic aioli sauce'),(145,'pepper jelly'),(146,'chimichurri sauce'),(147,'soy-miso sauce'),(148,'hoisin sauce'),(149,'thai chili sauce'),(150,'fig jam'),(151,'satay sauce'),(152,'coconut curry sauce'),(153,'zaatar and olive oil'),(154,'balsamic glaze'),(155,'puttenesca sauce'),(156,'piri piri sauce'),(157,'flatbread'),(158,'milk'),(159,'sugar'),(160,'flour'),(161,'egg whites'),(162,'sponge'),(163,'apples'),(164,'crumbs'),(165,'butter'),(166,'brown sugar'),(167,'bread slices'),(168,'bananas'),(169,'cream'),(170,'toffee'),(171,'biscuit crumbs'),(172,'jam'),(173,'marzipan'),(174,'eggs'),(175,'vanilla essence'),(176,'sesame seeds'),(177,'orange zest'),(178,'heavy cream'),(179,'chocolate chips'),(180,'rum'),(181,'cherries'),(182,'cocoa powder'),(183,'whipped cream'),(184,'kirsch'),(185,'chocolate curls'),(186,'blueberries'),(187,'buttermilk'),(188,'cinnamon'),(189,'lemon zest'),(190,'egg yolks'),(191,'cornstarch'),(192,'coffee powder'),(193,'caraway seeds'),(194,'shredded carrots'),(195,'sultanas'),(196,'nutmeg'),(197,'citrus oil'),(198,'starch syrup'),(199,'cherry liqueur'),(200,'vanilla ice cream'),(201,'vegetable oil'),(202,'icing sugar'),(203,'chocolate'),(204,'baking powder'),(205,'choux pastry'),(206,'chocolate fondant'),(207,'golden syrup'),(208,'chocolate ganache'),(209,'hazelnuts'),(210,'pecans'),(211,'toasted nuts'),(212,'dried cherries'),(213,'dried cranberries'),(214,'brandy'),(215,'shredded coconut'),(216,'condensed milk'),(217,'saltines'),(218,'cool whip'),(219,'orange juice'),(220,'grand marnier'),(221,'custard'),(222,'currants'),(223,'ground ginger'),(224,'no flour'),(225,'chocolate buttons'),(226,'cream cheese'),(227,'crushed pineapple'),(228,'ice cream'),(229,'chocolate sauce'),(230,'gelatin'),(231,'ground cloves'),(232,'lard'),(233,'buttercream'),(234,'lemon juice'),(235,'meringue'),(236,'almond paste'),(237,'dark chocolate'),(238,'molasses'),(239,'wafers'),(240,'nutella'),(241,'rye flour'),(242,'honey'),(243,'coconut milk'),(244,'pandan leaves'),(245,'fresh mint'),(246,'liqueur'),(247,'cornflour'),(248,'peaches'),(249,'peanut butter'),(250,'pears'),(251,'beetroot juice'),(252,'rice krispies'),(253,'white rice'),(254,'mini marshmallows'),(255,'chopped walnuts'),(256,'apricot jam'),(257,'marshmallow fluff'),(258,'ground nutmeg'),(259,'strawberries'),(260,'chocolate cookie crumbs'),(261,'hot tea'),(262,'corn flakes'),(263,'marsala wine'),(264,'mascarpone cheese'),(265,'sponge fingers'),(266,'almond essence'),(267,'ground hazelnuts'),(268,'liquore strega'),(269,'hot milk'),(270,'pineapple rings'),(271,'puff pastry'),(272,'breadcrumbs'),(273,'vinegar'),(274,'walnut halves'),(275,'rice flour'),(276,'white sugar'),(277,'baker\'s yeast'),(278,'raspberries');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients_taste`
--

DROP TABLE IF EXISTS `ingredients_taste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients_taste` (
  `ing_id` int(11) NOT NULL,
  `taste_id` int(11) NOT NULL,
  PRIMARY KEY (`ing_id`,`taste_id`),
  KEY `taste_id` (`taste_id`),
  CONSTRAINT `ingredients_taste_ibfk_1` FOREIGN KEY (`ing_id`) REFERENCES `ingredients` (`ing_id`),
  CONSTRAINT `ingredients_taste_ibfk_2` FOREIGN KEY (`taste_id`) REFERENCES `taste` (`taste_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients_taste`
--

LOCK TABLES `ingredients_taste` WRITE;
/*!40000 ALTER TABLE `ingredients_taste` DISABLE KEYS */;
INSERT INTO `ingredients_taste` VALUES (25,1),(26,1),(51,1),(52,1),(53,1),(58,1),(59,1),(67,1),(68,1),(73,1),(74,1),(80,1),(81,1),(82,1),(93,1),(150,1),(55,2),(57,2),(62,2),(66,2),(3,3),(11,3),(12,3),(18,3),(27,3),(34,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,3),(43,3),(44,3),(50,3),(52,3),(57,3),(69,3),(83,3),(84,3),(92,3),(94,3),(96,3),(97,3),(98,3),(104,3),(135,3),(155,3),(7,4),(8,4),(10,4),(12,4),(18,4),(22,4),(23,4),(24,4),(28,4),(42,4),(72,4),(75,4),(77,4),(79,4),(81,4),(128,4),(133,4),(142,4),(146,4),(156,4),(25,5),(26,5),(76,5),(77,5),(78,5),(154,5),(34,6),(35,6),(43,8),(58,9),(59,9),(1,10),(2,10),(4,10),(5,10),(6,10),(9,10),(13,10),(14,10),(15,10),(16,10),(17,10),(19,10),(20,10),(21,10),(29,10),(30,10),(31,10),(32,10),(33,10),(45,10),(46,10),(47,10),(48,10),(49,10),(54,10),(56,10),(60,10),(61,10),(63,10),(64,10),(65,10),(70,10),(71,10),(85,10),(86,10),(87,10),(88,10),(89,10),(90,10),(91,10),(95,10),(99,10),(100,10),(101,10),(102,10),(103,10),(105,10),(106,10),(107,10),(108,10),(109,10),(110,10),(111,10),(112,10),(113,10),(114,10),(115,10),(116,10),(117,10),(118,10),(119,10),(120,10),(121,10),(122,10),(123,10),(124,10),(125,10),(126,10),(127,10),(129,10),(130,10),(131,10),(132,10),(134,10),(136,10),(137,10),(138,10),(139,10),(140,10),(141,10),(143,10),(144,10),(145,10),(147,10),(148,10),(149,10),(151,10),(152,10),(153,10),(157,10),(158,10),(159,10),(160,10),(161,10),(162,10),(163,10),(164,10),(165,10),(166,10),(167,10),(168,10),(169,10),(170,10),(171,10),(172,10),(173,10),(174,10),(175,10),(176,10),(177,10),(178,10),(179,10),(180,10),(181,10),(182,10),(183,10),(184,10),(185,10),(186,10),(187,10),(188,10),(189,10),(190,10),(191,10),(192,10),(193,10),(194,10),(195,10),(196,10),(197,10),(198,10),(199,10),(200,10),(201,10),(202,10),(203,10),(204,10),(205,10),(206,10),(207,10),(208,10),(209,10),(210,10),(211,10),(212,10),(213,10),(214,10),(215,10),(216,10),(217,10),(218,10),(219,10),(220,10),(221,10),(222,10),(223,10),(224,10),(225,10),(226,10),(227,10),(228,10),(229,10),(230,10),(231,10),(232,10),(233,10),(234,10),(235,10),(236,10),(237,10),(238,10),(239,10),(240,10),(241,10),(242,10),(243,10),(244,10),(245,10),(246,10),(247,10),(248,10),(249,10),(250,10),(251,10),(252,10),(253,10),(254,10),(255,10),(256,10),(257,10),(258,10),(259,10),(260,10),(261,10),(262,10),(263,10),(264,10),(265,10),(266,10),(267,10),(268,10),(269,10),(270,10),(271,10),(272,10),(273,10),(274,10),(275,10),(276,10),(277,10);
/*!40000 ALTER TABLE `ingredients_taste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `one_for_all_orders`
--

DROP TABLE IF EXISTS `one_for_all_orders`;
/*!50001 DROP VIEW IF EXISTS `one_for_all_orders`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `one_for_all_orders` AS SELECT 
 1 AS `pizza`,
 1 AS `dessert`,
 1 AS `beverage`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pizza_base`
--

DROP TABLE IF EXISTS `pizza_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pizza_base` (
  `base_id` int(11) NOT NULL,
  `base` varchar(50) DEFAULT NULL,
  `gluten` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`base_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza_base`
--

LOCK TABLES `pizza_base` WRITE;
/*!40000 ALTER TABLE `pizza_base` DISABLE KEYS */;
INSERT INTO `pizza_base` VALUES (1,'flatbread','yes'),(2,'gyro bread','yes'),(3,'thin crust','yes'),(4,'thick crust','yes'),(5,'focaccia','yes'),(6,'ciabatta','yes'),(7,'puff pastry','yes'),(8,'deep dish crust','yes'),(9,'stuffed crust','yes'),(10,'raised crust','yes'),(11,'cracker crust','yes'),(12,'unleavened crust','yes'),(13,'wholewheat crust','yes'),(14,'multigrain crust','yes'),(15,'sourdough crust','yes'),(16,'gluten-free crust','no'),(17,'polenta crust','no'),(18,'deep-fried base','no');
/*!40000 ALTER TABLE `pizza_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza_main`
--

DROP TABLE IF EXISTS `pizza_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pizza_main` (
  `pizza` varchar(50) NOT NULL,
  `country` varchar(40) DEFAULT NULL,
  `base_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pizza`),
  KEY `country` (`country`),
  KEY `base_id` (`base_id`),
  CONSTRAINT `pizza_main_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`country`),
  CONSTRAINT `pizza_main_ibfk_2` FOREIGN KEY (`base_id`) REFERENCES `pizza_base` (`base_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza_main`
--

LOCK TABLES `pizza_main` WRITE;
/*!40000 ALTER TABLE `pizza_main` DISABLE KEYS */;
INSERT INTO `pizza_main` VALUES ('5 Pepper','Italy',11),('Adjaruli Khachapuri','France',12),('Cheese N corn','Australia',1),('chicken  exotica','Belgium',10),('Chicken dominator','Sweden',9),('Chicken fiesta','Scotland',6),('Chicken golden delight','India',4),('Chicken Italiano','Italy',4),('Chicken sausage and tikka','Japan',18),('chicken Tikka','India',3),('Deluxe veggie','India',4),('Mexican Green Wave','United states',1),('Non veg supreme','India',13),('Paneer soya supreme','India',5),('Pizza Mania','Jamaica',2),('Sfincione pizza','Portugal',10),('The big 12','Ireland',17),('The big three meats','United states',14),('Triple chicken feast','India',9),('Veg Exotica','Austria',14),('Veg Extravaganza','Italy',3);
/*!40000 ALTER TABLE `pizza_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza_recipe`
--

DROP TABLE IF EXISTS `pizza_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pizza_recipe` (
  `pizza` varchar(50) DEFAULT NULL,
  `ing_id` int(11) DEFAULT NULL,
  KEY `ing_id` (`ing_id`),
  CONSTRAINT `ing_id` FOREIGN KEY (`ing_id`) REFERENCES `ingredients` (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza_recipe`
--

LOCK TABLES `pizza_recipe` WRITE;
/*!40000 ALTER TABLE `pizza_recipe` DISABLE KEYS */;
INSERT INTO `pizza_recipe` VALUES ('Mexican Green Wave',73),('Mexican Green Wave',72),('Mexican Green Wave',123),('Mexican Green Wave',86),('Mexican Green Wave',83),('Deluxe veggie',134),('Deluxe veggie',56),('Deluxe veggie',60),('Deluxe veggie',58),('5 Pepper',72),('5 Pepper',53),('5 Pepper',58),('5 Pepper',62),('5 Pepper',69),('Cheese N corn',108),('Cheese N corn',74),('Cheese N corn',77),('Veg Extravaganza',86),('Veg Extravaganza',53),('Veg Extravaganza',72),('Veg Extravaganza',80),('Veg Extravaganza',83),('chicken Tikka',123),('chicken Tikka',55),('chicken Tikka',22),('chicken Tikka',144),('Chicken golden delight',74),('Chicken golden delight',20),('Chicken golden delight',83),('Chicken golden delight',118),('Non veg supreme',83),('Non veg supreme',55),('Non veg supreme',86),('Non veg supreme',23),('Non veg supreme',156),('Non veg supreme',20),('Chicken dominator',24),('Chicken dominator',22),('Chicken dominator',156),('Chicken dominator',108),('Chicken fiesta',59),('Chicken fiesta',23),('Chicken fiesta',22),('Chicken fiesta',72),('Chicken fiesta',83),('Chicken fiesta',69),('Pizza Mania',59),('Pizza Mania',72),('Pizza Mania',86),('Pizza Mania',118),('Pizza Mania',80),('Veg Exotica',74),('Veg Exotica',58),('Veg Exotica',83),('Veg Exotica',72),('Paneer soya supreme',121),('Paneer soya supreme',55),('Paneer soya supreme',120),('Triple chicken feast',1),('Triple chicken feast',53),('Triple chicken feast',55),('Triple chicken feast',144),('Triple chicken feast',13),('Triple chicken feast',12),('Chicken Italiano',12),('Chicken Italiano',86),('Chicken Italiano',13),('Chicken Italiano',83),('Chicken Italiano',123),('chicken  exotica',105),('chicken  exotica',58),('chicken  exotica',79),('chicken  exotica',18),('Chicken sausage and tikka',22),('Chicken sausage and tikka',13),('Chicken sausage and tikka',72),('Chicken sausage and tikka',58),('Chicken sausage and tikka',108),('The big three meats',3),('The big three meats',12),('The big three meats',22),('The big three meats',55),('The big three meats',108),('The big 12',12),('The big 12',118),('The big 12',55),('The big 12',72),('The big 12',144),('Sfincione pizza',118),('Sfincione pizza',55),('Sfincione pizza',133),('Sfincione pizza',83),('Adjaruli Khachapuri',108),('Adjaruli Khachapuri',96),('Adjaruli Khachapuri',177),('chicken  exotica',20);
/*!40000 ALTER TABLE `pizza_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_category`
--

DROP TABLE IF EXISTS `raw_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_category`
--

LOCK TABLES `raw_category` WRITE;
/*!40000 ALTER TABLE `raw_category` DISABLE KEYS */;
INSERT INTO `raw_category` VALUES (1,'Meat'),(2,'Vegetable'),(3,'Cheese'),(4,'Sauce'),(5,'Base'),(6,'Dairy'),(7,'Flavour'),(8,'Baking'),(9,'Eggs '),(10,'Fruits'),(11,'Sweetner'),(12,'Chocolate'),(13,'Preserves'),(14,'Toppings'),(15,'Liquor'),(16,'Veggies'),(17,'Oil'),(18,'Ice-cream'),(19,'Nuts'),(20,'Gourmet'),(21,'healhty'),(22,'seafood'),(23,'vegan'),(24,'Mediterrean'),(25,'Game'),(26,'festive'),(27,'Gluten'),(28,'beef'),(29,'lamb'),(30,'chicken'),(31,'pork'),(32,'duck');
/*!40000 ALTER TABLE `raw_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `reg_id` int(11) NOT NULL,
  `region` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Europe'),(2,'North America'),(3,'Asia'),(4,'South America'),(5,'All');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sandwich_main`
--

DROP TABLE IF EXISTS `sandwich_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandwich_main` (
  `sandwich` varchar(50) NOT NULL,
  `country` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`sandwich`),
  KEY `country` (`country`),
  CONSTRAINT `sandwich_main_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sandwich_main`
--

LOCK TABLES `sandwich_main` WRITE;
/*!40000 ALTER TABLE `sandwich_main` DISABLE KEYS */;
INSERT INTO `sandwich_main` VALUES ('Roasted Sandwich','Germany'),('Chicken Roll','India'),('Fuity Chicken','India'),('Spicy Chicken Wrap','India'),('Beef Rules','Ireland'),('Vegg Filet','Ireland'),('Egg Roll','Italy'),('Cheddar Toasties','Japan'),('Chicken v Bacon ','Scotland'),('BBQ Salmon','United states'),('Pepper Twist','United states');
/*!40000 ALTER TABLE `sandwich_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sandwich_recipe`
--

DROP TABLE IF EXISTS `sandwich_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandwich_recipe` (
  `sandwich` varchar(50) DEFAULT NULL,
  `ing_id` int(11) DEFAULT NULL,
  KEY `sandwich` (`sandwich`),
  KEY `ing_id` (`ing_id`),
  CONSTRAINT `sandwich_recipe_ibfk_1` FOREIGN KEY (`sandwich`) REFERENCES `sandwich_main` (`sandwich`),
  CONSTRAINT `sandwich_recipe_ibfk_2` FOREIGN KEY (`ing_id`) REFERENCES `ingredients` (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sandwich_recipe`
--

LOCK TABLES `sandwich_recipe` WRITE;
/*!40000 ALTER TABLE `sandwich_recipe` DISABLE KEYS */;
INSERT INTO `sandwich_recipe` VALUES ('Chicken Roll',157),('Chicken Roll',20),('Chicken Roll',59),('Chicken Roll',79),('Chicken Roll',83),('Chicken Roll',96),('Vegg Filet',157),('Vegg Filet',121),('Vegg Filet',134),('Vegg Filet',83),('Vegg Filet',74),('Pepper Twist',167),('Pepper Twist',120),('Pepper Twist',53),('Pepper Twist',55),('Pepper Twist',58),('Pepper Twist',45),('Roasted Sandwich',167),('Roasted Sandwich',6),('Roasted Sandwich',48),('Roasted Sandwich',72),('Roasted Sandwich',134),('Egg Roll',157),('Egg Roll',174),('Egg Roll',132),('Egg Roll',118),('Beef Rules',167),('Beef Rules',3),('Beef Rules',6),('Beef Rules',17),('Beef Rules',72),('Beef Rules',73),('BBQ Salmon',157),('BBQ Salmon',34),('BBQ Salmon',56),('BBQ Salmon',59),('BBQ Salmon',58),('BBQ Salmon',130),('Fuity Chicken',167),('Fuity Chicken',168),('Fuity Chicken',20),('Fuity Chicken',213),('Cheddar Toasties',167),('Cheddar Toasties',102),('Cheddar Toasties',83),('Cheddar Toasties',80),('Chicken v Bacon ',157),('Chicken v Bacon ',20),('Chicken v Bacon ',43),('Chicken v Bacon ',136),('Spicy Chicken Wrap',157),('Spicy Chicken Wrap',23),('Spicy Chicken Wrap',55),('Spicy Chicken Wrap',65),('Spicy Chicken Wrap',73),('Spicy Chicken Wrap',129);
/*!40000 ALTER TABLE `sandwich_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `spicy_piz_bev_pairing`
--

DROP TABLE IF EXISTS `spicy_piz_bev_pairing`;
/*!50001 DROP VIEW IF EXISTS `spicy_piz_bev_pairing`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `spicy_piz_bev_pairing` AS SELECT 
 1 AS `pizza`,
 1 AS `beverage`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `taste`
--

DROP TABLE IF EXISTS `taste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taste` (
  `taste_id` int(11) NOT NULL,
  `taste` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`taste_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taste`
--

LOCK TABLES `taste` WRITE;
/*!40000 ALTER TABLE `taste` DISABLE KEYS */;
INSERT INTO `taste` VALUES (1,'sweet'),(2,'crunchy'),(3,'salty'),(4,'spicy'),(5,'sour'),(6,'smoked'),(7,'curried'),(8,'crispy'),(9,'juicy'),(10,'Any'),(11,'grilled'),(12,'pickled');
/*!40000 ALTER TABLE `taste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vegan_pizzas`
--

DROP TABLE IF EXISTS `vegan_pizzas`;
/*!50001 DROP VIEW IF EXISTS `vegan_pizzas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vegan_pizzas` AS SELECT 
 1 AS `pizza`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vegg_pizzas`
--

DROP TABLE IF EXISTS `vegg_pizzas`;
/*!50001 DROP VIEW IF EXISTS `vegg_pizzas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vegg_pizzas` AS SELECT 
 1 AS `pizza`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `bev_sandwich_pairing`
--

/*!50001 DROP VIEW IF EXISTS `bev_sandwich_pairing`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bev_sandwich_pairing` AS select `sm`.`sandwich` AS `sandwich`,`bm`.`beverage` AS `beverage` from (`sandwich_main` `sm` join `beverage_main` `bm`) where `bm`.`beverage` in (select `bev_taste_pairing`.`beverage` from `bev_taste_pairing` where `bev_taste_pairing`.`taste_id` in (select `ingredients_taste`.`taste_id` from `ingredients_taste` where `ingredients_taste`.`ing_id` in (select `sandwich_recipe`.`ing_id` from `sandwich_recipe` where (`sandwich_recipe`.`sandwich` = `sm`.`sandwich`)))) group by `sm`.`sandwich`,`bm`.`beverage` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `one_for_all_orders`
--

/*!50001 DROP VIEW IF EXISTS `one_for_all_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `one_for_all_orders` AS select `pm`.`pizza` AS `pizza`,`dm`.`dessert` AS `dessert`,`bm`.`beverage` AS `beverage` from ((`pizza_main` `pm` join `dessert_main` `dm`) join `beverage_main` `bm`) where (`bm`.`beverage` in (select `bev_taste_pairing`.`beverage` from `bev_taste_pairing` where `bev_taste_pairing`.`taste_id` in (select `ingredients_taste`.`taste_id` from `ingredients_taste` where `ingredients_taste`.`ing_id` in (select `pizza_recipe`.`ing_id` from `pizza_recipe` where (`pizza_recipe`.`pizza` = `pm`.`pizza`)))) and `bm`.`beverage` in (select `bev_taste_pairing`.`beverage` from `bev_taste_pairing` where `bev_taste_pairing`.`taste_id` in (select `ingredients_taste`.`taste_id` from `ingredients_taste` where `ingredients_taste`.`ing_id` in (select `dessert_recipe`.`ing_id` from `dessert_recipe` where (`dessert_recipe`.`dessert` = `dm`.`dessert`))))) group by `pm`.`pizza`,`dm`.`dessert`,`bm`.`beverage` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `spicy_piz_bev_pairing`
--

/*!50001 DROP VIEW IF EXISTS `spicy_piz_bev_pairing`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `spicy_piz_bev_pairing` AS select `pm`.`pizza` AS `pizza`,`bm`.`beverage` AS `beverage` from (`beverage_main` `bm` join `pizza_recipe` `pm`) where (`pm`.`ing_id` in (select `ingredients_taste`.`ing_id` from `ingredients_taste` where (`ingredients_taste`.`taste_id` = (select `taste`.`taste_id` from `taste` where (`taste`.`taste` = 'spicy')))) and `bm`.`beverage` in (select `bev_taste_pairing`.`beverage` from `bev_taste_pairing` where (`bev_taste_pairing`.`taste_id` = (select `taste`.`taste_id` from `taste` where (`taste`.`taste` = 'spicy'))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vegan_pizzas`
--

/*!50001 DROP VIEW IF EXISTS `vegan_pizzas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vegan_pizzas` AS select `pizza_recipe`.`pizza` AS `pizza` from `pizza_recipe` where (`pizza_recipe`.`ing_id` in (select `ing_category`.`ing_id` from `ing_category` where (`ing_category`.`category_id` = (select `raw_category`.`category_id` from `raw_category` where (`raw_category`.`category` = 'vegan')))) and (not(`pizza_recipe`.`ing_id` in (select `ing_category`.`ing_id` from `ing_category` where (not(`ing_category`.`category_id` in (select `raw_category`.`category_id` from `raw_category` where (`raw_category`.`category` in ('chicken','pork','lamb','beef','dairy','meat')))))))) and `pizza_recipe`.`pizza` in (select `pizza_main`.`pizza` from `pizza_main` where `pizza_main`.`base_id` in (select `pizza_base`.`base_id` from `pizza_base` where (`pizza_base`.`gluten` = 'no')))) group by `pizza_recipe`.`pizza` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vegg_pizzas`
--

/*!50001 DROP VIEW IF EXISTS `vegg_pizzas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vegg_pizzas` AS select distinct `pizza_recipe`.`pizza` AS `pizza` from `pizza_recipe` where (not(`pizza_recipe`.`pizza` in (select distinct `pizza_recipe`.`pizza` from `pizza_recipe` where (not(`pizza_recipe`.`ing_id` in (select `ing_category`.`ing_id` from `ing_category` where (not(`ing_category`.`category_id` in (select `raw_category`.`category_id` from `raw_category` where (`raw_category`.`category` in ('chicken','pork','lamb','beef','meat')))))))) group by `pizza_recipe`.`pizza`,`pizza_recipe`.`ing_id`))) */;
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

-- Dump completed on 2018-05-08 16:40:38
