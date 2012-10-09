-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema managedfusion
--

CREATE DATABASE IF NOT EXISTS managedfusion;
USE managedfusion;

--
-- Definition of table `customer_purchases`
--

DROP TABLE IF EXISTS `customer_purchases`;
CREATE TABLE `customer_purchases` (
  `customer_purchase_id` int(10) unsigned NOT NULL auto_increment,
  `customer_id` int(10) unsigned NOT NULL,
  `product_id` smallint(5) unsigned NOT NULL,
  `product_code` char(40) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `purchase_quantity` int(10) unsigned NOT NULL,
  `purchase_total` decimal(10,4) NOT NULL,
  `purchase_fee` decimal(10,4) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`customer_purchase_id`),
  KEY `FK_customer_purchases_products` (`product_id`),
  KEY `FK_customer_purchases_customers` (`customer_id`),
  CONSTRAINT `FK_customer_purchases_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `FK_customer_purchases_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_purchases`
--

/*!40000 ALTER TABLE `customer_purchases` DISABLE KEYS */;
INSERT INTO `customer_purchases` (`customer_purchase_id`,`customer_id`,`product_id`,`product_code`,`purchase_date`,`purchase_quantity`,`purchase_total`,`purchase_fee`,`date_created`,`date_updated`) VALUES 
 (1,1,1,'54AE35D9E6507CAFE3B8B6373D01A20C7FFDC498','2007-10-01 00:00:00',1,'0.0000','0.0000','2007-10-01 00:00:00','2007-12-16 19:39:01');
/*!40000 ALTER TABLE `customer_purchases` ENABLE KEYS */;


--
-- Definition of table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`customer_id`),
  UNIQUE KEY `Index_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`customer_id`,`first_name`,`last_name`,`email`,`date_created`,`date_updated`) VALUES 
 (1,'Nick','Berardi','nick@managedfusion.com','2007-06-19 00:00:00','2007-12-16 19:17:32');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


--
-- Definition of table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` smallint(5) unsigned zerofill NOT NULL,
  `name` varchar(45) NOT NULL,
  `registration_key` char(32) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`,`name`,`registration_key`,`date_created`,`date_updated`) VALUES 
 (00001,'Managed Fusion URL Rewriter','3ab274ef6874007b5ec5aca2bcc9e92','2007-12-16 19:10:07','2007-12-16 19:18:29');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


--
-- Definition of procedure `set_purchase`
--

DROP PROCEDURE IF EXISTS `set_purchase`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_purchase`(
  first_name varchar(45),
  last_name varchar(45),
  email varchar(100),
  product_id smallint unsigned,
  product_code char(40),
  purchase_date datetime,
  purchase_quantity int,
  purchase_total decimal(10,4),
  purchase_fee decimal(10,4),
  out customer_id int unsigned,
  out customer_purchase_id int unsigned
)
BEGIN

-- insert customer if needed
insert into customers (
  first_name,
  last_name,
  email,
  date_created
) values (
  first_name,
  last_name,
  email,
  now()
) on duplicate key update
  first_name = values(first_name),
  last_name = values(last_name),
  email = values(email);

-- get customer id
select customer_id = c.customer_id from customers c where c.email = email;

-- insert customer purchase
insert into customer_pruchases (
  customer_id,
  product_id,
  product_code,
  purchase_date,
  purchase_quanity,
  purchase_total,
  purchase_fee
) values (
  customer_id,
  product_id,
  product_code,
  purchase_date,
  purchase_quanity,
  purchase_total,
  purchase_fee
);

-- get customer purchase id
select customer_purchase_id = p.customer_purchase_id from customer_purchases p where p.customer_id = customer_id and p.purchase_id = purchase_id order by date_created desc limit 0, 1;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;