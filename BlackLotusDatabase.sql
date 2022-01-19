/*
SQLyog Ultimate v8.55 
MySQL - 5.5.25a : Database - blacklotus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blacklotus` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blacklotus`;

/*Table structure for table `porder` */

DROP TABLE IF EXISTS `porder`;

CREATE TABLE `porder` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) DEFAULT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Telephone` int(15) DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `porder` */

insert  into `porder`(`OrderID`,`ProductName`,`CustomerName`,`Address`,`Telephone`) values (1,'Angel Food Cake','Christina','United Kingdom',122213355),(2,'Baked Flourless Cake','Christina','United Kingdom',122213355),(3,'Biscuit Cake','Christina','United Kingdom',122213355),(4,'Butter Cake','Christina','United Kingdom',122213355);

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(50) DEFAULT NULL,
  `Quantity` int(25) DEFAULT NULL,
  `EventCategory` varchar(35) DEFAULT NULL,
  `FlavourCategory` varchar(35) DEFAULT NULL,
  `cImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

insert  into `stock`(`ProductID`,`ProductName`,`Quantity`,`EventCategory`,`FlavourCategory`,`cImage`) values (2,'bnm',24,'Wedding','Vanilla',NULL),(3,'Red Rose',12,'Birthday','Vanilla',NULL),(4,'Fruits Cake',10,'Birthday','Vanilla',NULL),(5,'Eggless Truffle Cake',12,'Wedding','Chocolate',NULL),(6,'Cofee Cake',11,'Birthday','Vanilla',NULL),(7,'Fudgy chocolate cake',9,'Birthday','Chocolate',NULL),(8,'Oreo Cheesecake',5,'Open Ceremony','Cheese',NULL),(9,'Butter cake',7,'New Year Celebrations','Butter',NULL),(10,'Pound cake',4,'New Year Celebrations','Fruit Flavors',NULL),(11,'Sponge cake',5,'Open Ceremony','Cheese',NULL),(12,'Genoise cake',8,'Wedding','Chocolate',NULL),(13,'Biscuit cake',10,'Open Ceremony','Fruit Flavors',NULL),(14,'Chiffon cake',8,'New Year Celebrations','Butter',NULL),(15,'Baked Flavorless cake',13,'Birthday','Vanilla',NULL),(16,'fallen chocolate cake',15,'Anniversary Celebrations','Chocolate',NULL),(17,'Unbaked flourless cake',12,'New Year Celebrations','Vanilla',NULL),(18,'Red velvet cake',13,'Birthday','Fruit Flavors',NULL),(19,'Angel Food Cake',9,'Christmas','Fruit Flavors',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `Email` varchar(100) NOT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `UserRole` varchar(25) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Telephone` varchar(15) DEFAULT NULL,
  `CustomerName` varchar(25) DEFAULT NULL,
  `UserImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`Email`,`Password`,`UserRole`,`Address`,`Telephone`,`CustomerName`,`UserImage`) values ('admin','1234','Admin','Hambantota','0777926989','Fahik',NULL),('Afanz@gmail.com','Afanz12','Customer','Hambantota','0773324431','Afanz',NULL),('Christina@gmail.com','Christina12','Vendors','United Kingdom','0122213355','Christina',NULL),('Krishan@gmail.com','Krishan12','Customer','Walgama','0777325365','Krishan',NULL),('Nashif@gmail.com','Nashif12','Customer','Hambantota','0763828459','Nashif',NULL),('Rimzy@gmail.com','Rimzy12','Customer','Hambantota','0667123453','Rimzy',NULL),('RoyalBakers@gmail.com','Royal12','Vendors','Hambantota','0777121222','Royal Bakers',NULL),('Samanmal@gmail.com','Samanmal12','Vendors','Matara','0771324778','Samanmal',NULL),('Thamindusahan@gmail.com','Thamindu12','Outlet','Thalpawila','0712354673','Thamindu',NULL),('WasanaBakers@gmail.com','Wasana12','Customer','Tangalle','0777132435','Liza',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
