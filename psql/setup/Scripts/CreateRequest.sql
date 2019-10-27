

-- CREATE DATABASE `Request` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Sandbox`;

CREATE TABLE Sandbox.`Process.ProcessDefinition` (
  `ProcessDefinitionID` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessDefinitionDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProcessDefinitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE Sandbox.`Process.Event` (
  `EventID` int(11) NOT NULL AUTO_INCREMENT,
  `EventTypeId` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- LOOKUP TABLES - AppData

CREATE TABLE Sandbox.`Process.LookupMilestone` (
  `MilestoneID` int(11) NOT NULL AUTO_INCREMENT,
  `MilestoneDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `ProcessDefinitionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MilestoneID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE Sandbox.`Process.LookupEventType` (
  `EventTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `EventTypeDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EventTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
