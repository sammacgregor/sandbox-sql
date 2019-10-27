
-- CREATE DATABASE `AuditLog` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Sandbox`;

CREATE TABLE Sandbox.`Audit.AuditLog` (
  `AuditLogID` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessInstanceID` int(11) DEFAULT NULL,
  `Action` varchar(100) DEFAULT NULL,
  `ActionDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AuditLogID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE Sandbox.`Audit.APIEventLog` (
  `APIEventLogID` int(11) NOT NULL AUTO_INCREMENT,
  `CorrelationID` varchar(50) DEFAULT NULL,
  `InitiatingApplication` varchar(100) DEFAULT NULL,
  `RequestType` varchar(100) DEFAULT NULL,
  `Direction` varchar(100) DEFAULT NULL,
  `Success` boolean DEFAULT NULL,
  `Data` varchar(1000) DEFAULT NULL,
  `Message` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`APIEventLogID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;