-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wallet
-- ------------------------------------------------------
-- Server version	5.6.31-0ubuntu0.14.04.2

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
-- Table structure for table `beneficiary`
--

DROP TABLE IF EXISTS `beneficiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiary` (
  `user_id` int(10) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `beneficiary_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary`
--

LOCK TABLES `beneficiary` WRITE;
/*!40000 ALTER TABLE `beneficiary` DISABLE KEYS */;
INSERT INTO `beneficiary` VALUES (10001,8989206590,'siddhartha','siddhartha.3@tcs.com'),(10003,9028932230,'singhaaad','sd@wd.com'),(10003,9093638884,'asdas','gfhs@wdf.com'),(10003,9039307841,'werfwer','dfw@wsd.com'),(10003,1561565412,'dsfsd','dsfas@dfs.vdf'),(10003,9093638884,'anks','asa@asd.com'),(10003,9039307841,'aasasasasasasasa','sad@dsf.fs'),(10003,9093638884,'ssssssss','dsffdsf@dsf.fd'),(10003,9120039903,'palalalalallalala','asda@asdsa.com'),(10003,8989103259,'kkkkkkk','ajsd@atsdf.com'),(10003,123,'kiran peshakr','kkkkkkk@tsv.com'),(10003,190190,'siddhu','siddhu@tcs.com'),(10003,1112223330,'abc','abc@gmail.com'),(10003,1112223330,'xyz','xyz@tcs.com'),(10003,1112223330,'xyz','xya@tvs.com'),(10003,1112223330,'aaaa','aaa@gfsadf.com'),(10003,1112223330,'aaaaaaaa','dsadasda@qwdsa.cka'),(10003,190190,'sdfasdfasdf','dsfa@dsfads.co'),(10003,190190,'asdasd','asda@we..sd'),(10003,9096438884,'Ankita','ankita1234@gmail.com'),(10003,9096438884,'ankita','ankita@aa.com');
/*!40000 ALTER TABLE `beneficiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `Sender_name` varchar(20) NOT NULL,
  `Sender_mobile` bigint(10) NOT NULL,
  `Beneficiary_name` varchar(20) NOT NULL,
  `Beneficiary_mibile` bigint(10) NOT NULL,
  `AmountAdded` int(11) NOT NULL,
  `AmountDeducted` int(11) NOT NULL,
  `Details` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('ankita',9093638884,'palash',9039307841,0,40,'ankita transfer'),('palash',9039307841,'ankita',9093638884,40,0,'ankita transfer'),('ankita',9093638884,'pal',123,0,9000,'fee'),('pal',123,'ankita',9093638884,9000,0,'fee'),('pal',123,'siddhu ',190190,0,18000,'fees '),('siddhu ',190190,'pal',123,18000,0,'fees '),('ankita',9093638884,'Kiran',8989103259,0,900,'feeeeesssss'),('Kiran',8989103259,'ankita',9093638884,900,0,'feeeeesssss'),('siddhu ',190190,'ankita',9093638884,0,900,'anks'),('ankita',9093638884,'siddhu ',190190,900,0,'anks'),('siddhu ',190190,'pal',123,0,10,'recheck'),('pal',123,'siddhu ',190190,10,0,'recheck'),('siddhu ',190190,'pal',123,0,5,'xssfc'),('pal',123,'siddhu ',190190,5,0,'xssfc'),('ankita',9093638884,'palash',9039307841,0,100,'j9no'),('palash',9039307841,'ankita',9093638884,100,0,'j9no'),('ankita',9093638884,'palash',9039307841,0,100,'jksfsdhf'),('palash',9039307841,'ankita',9093638884,100,0,'jksfsdhf'),('ankita',9093638884,'palash',9039307841,0,100,'jksfsdhf'),('palash',9039307841,'ankita',9093638884,100,0,'jksfsdhf'),('ankita',9093638884,'palash',9039307841,0,100,'j9no'),('palash',9039307841,'ankita',9093638884,100,0,'j9no'),('ankita',9093638884,'palash',9039307841,0,100,'jksfsdhf'),('palash',9039307841,'ankita',9093638884,100,0,'jksfsdhf'),('ankita',9093638884,'anks',9096438884,0,100,'gfmhgh'),('anks',9096438884,'ankita',9093638884,100,0,'gfmhgh'),('Ranjith',7066437480,'anks',9096438884,0,100,'asdgsdg'),('anks',9096438884,'Ranjith',7066437480,100,0,'asdgsdg'),('Siddhartha',9028932230,'anks',9096438884,0,10,'asdada'),('anks',9096438884,'Siddhartha',9028932230,10,0,'asdada'),('Siddhartha',9028932230,'anks',9096438884,0,10,'asdada'),('anks',9096438884,'Siddhartha',9028932230,10,0,'asdada');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pswd` varchar(30) NOT NULL,
  `amount` int(10) DEFAULT NULL,
  `phone` bigint(10) NOT NULL,
  `dob` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10021 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10001,'ankita','patil','female','ankita.patil2.tcs.com','password',300,9093638884,''),(10003,'palash','purohit','male','palash@tcs.com','12345',10480,9039307841,''),(10004,'pal','pal','male','123@123.123','123',36015,123,''),(10005,'siddhu ','singh','male','siddhu@tcs.com','pass',35985,190190,'Wed Oct 10 00:00:00 IST 1990'),(10006,'Kiran','Peshkar','male','kiran@peshkar.com','password',1800,8989103259,'Tue Mar 23 00:00:00 IST 1993'),(10007,'siddhu','singh','male','siddhu@tcs.com','passwords',NULL,8237933006,'Sun Oct 10 00:00:00 IST 1993'),(10008,'pankaj','pankaj','male','pankaj@tcs.com','password',NULL,9120039903,'Mon Feb 26 00:00:00 IST 1990'),(10009,'siddhu','singh','male','sssidd67@gmail.com','password',NULL,9450553011,'Sat Apr 16 00:00:00 IST 7'),(10010,'palash ','purohit','male','p.p@tcs.com','password',NULL,1234567890,'Mon May 03 00:00:00 IST 17'),(10011,'aditya','jain','male','aditya@tcs.in','pass1',NULL,9000190001,'Mon Jul 14 00:00:00 IST 10'),(10012,'anks','patil','female','ssssss@sd.ocm','12345',220,9096438884,'Mon Jan 06 00:00:00 IST 10'),(10013,'ewr','fdssa','male','WSDFS@WDW.V','123',NULL,458645,'Tue Jan 06 00:00:00 IST 11'),(10014,'trial','trial','male','tria@tcs.com','trial',NULL,9001900191,'Thu Dec 12 00:00:00 IST 26'),(10015,'ankita d','patil','female','anks@gmail.com','12345',NULL,9532076622,'Mon Jan 06 00:00:00 IST 10'),(10016,'ankita dilip','patil','female','anks@tcs.com','12345',NULL,1112223330,'Sat Jan 05 00:00:00 IST 9'),(10017,'ankita dilip','patil','female','anks@tcs.com','12345',NULL,1114447770,'Sat Jan 05 00:00:00 IST 9'),(10018,'brian','conner','male','brian@tcs.com','Passwords',NULL,9898200001,'Fri Feb 11 00:00:00 IST 35'),(10019,'Ranjith','Rajashekarappa','male','ranjithnr22@gmail.com','password',-100,7066437480,'Sat Jul 16 00:00:00 IST 7'),(10020,'Siddhartha','singh','male','sssidd67@hdfc.com','SSSidd67@',-20,9028932230,'Sun Jul 09 00:00:00 UTC 13');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-29  9:41:10
