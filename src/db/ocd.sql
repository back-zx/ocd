/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.62 : Database - ocd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ocd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ocd`;

/*Table structure for table `class_grade` */

DROP TABLE IF EXISTS `class_grade`;

CREATE TABLE `class_grade` (
  `cid` int(11) NOT NULL,
  `classes` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `p_zgrade` int(11) DEFAULT NULL,
  `p_pgrade` int(11) DEFAULT NULL,
  `m_zgrade` int(11) DEFAULT NULL,
  `m_pgrade` int(11) DEFAULT NULL,
  `z_zgrade` int(11) DEFAULT NULL,
  `z_pgrade` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  CONSTRAINT `fk3_cid` FOREIGN KEY (`cid`) REFERENCES `classes` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `class_grade` */

insert  into `class_grade`(`cid`,`classes`,`p_zgrade`,`p_pgrade`,`m_zgrade`,`m_pgrade`,`z_zgrade`,`z_pgrade`) values (1801,'18级Java1',95,94,92,98,96,96),(1804,'18级Java4',98,89,95,94,98,97);

/*Table structure for table `classes` */

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `cid` int(11) NOT NULL,
  `classes` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `classes` */

insert  into `classes`(`cid`,`classes`) values (1801,'18级Java一班'),(1802,'18级Java二班'),(1803,'18级Java三班'),(1804,'18级Java四班');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `cno` int(11) NOT NULL,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `cgrade` int(11) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`cno`,`cname`,`ctime`,`cgrade`) values (1,'毛概',4,4),(2,'计算机网络',4,4),(3,'JavaEE视图层',4,4),(4,'Oracle',4,4),(5,'软件前沿技术',4,4),(6,'软件工程导论',4,4),(7,'JavaEE持久层',4,4),(8,'企业项目实战',4,4);

/*Table structure for table `course_grade` */

DROP TABLE IF EXISTS `course_grade`;

CREATE TABLE `course_grade` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `cno` int(11) NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pgrade` int(11) DEFAULT NULL,
  `mgrade` int(11) DEFAULT NULL,
  `zgrade` int(11) DEFAULT NULL,
  `sno` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`,`cno`),
  KEY `fk_cno` (`cno`),
  KEY `sno` (`sno`),
  CONSTRAINT `course_grade_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `student` (`sno`),
  CONSTRAINT `fk_cno` FOREIGN KEY (`cno`) REFERENCES `course` (`cno`),
  CONSTRAINT `fk_sid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `course_grade` */

insert  into `course_grade`(`sid`,`cno`,`sname`,`cname`,`pgrade`,`mgrade`,`zgrade`,`sno`) values (1,1,'艾梦涵','毛概',95,96,92,184804327),(2,3,'祝珂鑫','JavaEE视图层',98,96,98,184804390),(3,4,'张肖','Oracle',92,93,95,184804347);

/*Table structure for table `person_grade` */

DROP TABLE IF EXISTS `person_grade`;

CREATE TABLE `person_grade` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `cno` int(11) NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `classes` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mgrade` int(11) DEFAULT NULL,
  `zgrade` int(11) DEFAULT NULL,
  `sno` int(11) DEFAULT NULL,
  `pgrade` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`,`cid`,`cno`),
  KEY `fk2_cno` (`cno`),
  KEY `fk2_cid` (`cid`),
  KEY `sno` (`sno`),
  CONSTRAINT `fk2_cid` FOREIGN KEY (`cid`) REFERENCES `classes` (`cid`),
  CONSTRAINT `fk2_cno` FOREIGN KEY (`cno`) REFERENCES `course` (`cno`),
  CONSTRAINT `fk2_sid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  CONSTRAINT `person_grade_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `student` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `person_grade` */

insert  into `person_grade`(`sid`,`cid`,`cno`,`sname`,`sex`,`classes`,`cname`,`mgrade`,`zgrade`,`sno`,`pgrade`) values (1,1804,1,'艾梦涵','女','18级Java4','毛概',99,99,184804327,99),(2,1804,6,'祝珂鑫','女','18级Java4','软件工程导论',99,99,184804390,99);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `classes` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_cid` (`cid`),
  KEY `sno` (`sno`),
  CONSTRAINT `fk_cid` FOREIGN KEY (`cid`) REFERENCES `classes` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`sid`,`sno`,`sname`,`sex`,`school`,`cid`,`classes`,`phone`) values (1,184804327,'艾梦涵','女','安阳师范学院',1804,'18级Java4','15037220001'),(2,184804390,'祝珂鑫','女','安阳师范学院',1804,'18级Java4','15037220002'),(3,184804347,'张肖','女','安阳师范学院',1804,'18级Java4','15037220003'),(4,184804331,'谷雨','女','安阳师范学院',1804,'18级Java4','15037220004'),(5,184804367,'刘雨佳','女','安阳师范学院',1804,'18级Java4','15037220005');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
