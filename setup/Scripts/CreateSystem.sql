
-- CREATE DATABASE `System` /*!40100 DEFAULT CHARACTER SET latin1 */;


USE `System`;

CREATE TABLE `User.User` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Password` varchar(256) DEFAULT NULL,
  `GivenName` varchar(100) DEFAULT NULL,
  `Surname` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;