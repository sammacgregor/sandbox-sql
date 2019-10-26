
 CREATE DATABASE `Backlog` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Backlog`;


CREATE TABLE Backlog.`Board.Board` (
  `BoardID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemStatusID` int(11) DEFAULT NULL,
  `TeamID` int(11) DEFAULT NULL,
  `BoardName` varchar(45) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BoardID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



CREATE TABLE Backlog.`Sprint.Sprint` (
  `SprintID` int(11) NOT NULL AUTO_INCREMENT,
  `BoardID` int(11)  DEFAULT NULL,
  `SprintStartDate` date DEFAULT NULL,
  `SprintEndDate` date DEFAULT NULL,
  `SprintActive` int(11) NULL,
  `SprintStoryPoints` int(11) NULL,
  `SprintTargetPoints` int(11) NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SprintID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE Backlog.`Item.Item` (
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemTypeID` int(11) DEFAULT NULL,
  `ItemStatusID` int(11) DEFAULT NULL,
  `ItemPriorityID` int(11) DEFAULT NULL,
  `TeamID` int(11) DEFAULT NULL,
  `BoardID` int(11) DEFAULT NULL,
  `ReporterID` varchar(128) NULL,
  `AssigneeID` varchar(128) NULL,
  `SprintID` int(11) DEFAULT NULL,
  `Summary` varchar(128) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;




CREATE TABLE Backlog.`Item.Attachment` (
  `AttachmentID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemID` int(11) DEFAULT NULL,
  `MIMETYPE` varchar(255) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `FILESIZE` int(18) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AttachmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



CREATE TABLE Backlog.`Item.Trace` (
  `TraceID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemID` int(11) DEFAULT NULL,
  `TargetItemID` int(11) DEFAULT NULL,
  `TraceabilityTypeID` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TraceID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



CREATE TABLE Backlog.`Item.LookupTraceType` (
  `TraceTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `TraceTypeCode` varchar(100) DEFAULT NULL,
  `TraceTypeDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TraceTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


/* Lookup Data for Item.LookupTraceType */

INSERT INTO `Backlog`.`Item.LookupTraceType` (`TraceTypeID`, `TraceTypeCode`, `TraceTypeDescription`, `CreatedBy`, `UpdatedBy`) VALUES (1, 'I', 'Traces into', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Item.LookupTraceType` (`TraceTypeID`, `TraceTypeCode`, `TraceTypeDescription`, `CreatedBy`, `UpdatedBy`) VALUES (2, 'F', 'Traces from', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Item.LookupTraceType` (`TraceTypeID`, `TraceTypeCode`, `TraceTypeDescription`, `CreatedBy`, `UpdatedBy`) VALUES (3, 'O', 'Depends on', 'smacgregor', 'smacgregor');





CREATE TABLE Backlog.`Item.LookupItemPriority` (
  `ItemPriorityID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemPriorityCode` varchar(100) DEFAULT NULL,
  `ItemPriorityDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemPriorityID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


/* Lookup Data for Item.LookupItemPriority */

INSERT INTO `Backlog`.`Item.LookupItemPriority` (`ItemPriorityID`, `ItemPriorityCode`, `ItemPriorityDescription`, `CreatedBy`, `UpdatedBy`) VALUES (1, '1', 'Urgent', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Item.LookupItemPriority` (`ItemPriorityID`, `ItemPriorityCode`, `ItemPriorityDescription`, `CreatedBy`, `UpdatedBy`) VALUES (2, '2', 'High', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Item.LookupItemPriority` (`ItemPriorityID`, `ItemPriorityCode`, `ItemPriorityDescription`, `CreatedBy`, `UpdatedBy`) VALUES (3, '3', 'Moderate', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Item.LookupItemPriority` (`ItemPriorityID`, `ItemPriorityCode`, `ItemPriorityDescription`, `CreatedBy`, `UpdatedBy`) VALUES (4, '4', 'Low', 'smacgregor', 'smacgregor');





CREATE TABLE Backlog.`Item.CustomField` (
  `ItemCustomFieldID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemID` int(11) NOT NULL,
  `CustomFieldName` int(11) NOT NULL,
  `CustomFieldValue` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemCustomFieldID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;




CREATE TABLE Backlog.`Item.LookupItemType` (
  `ItemTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemTypeCode` varchar(100) DEFAULT NULL,
  `ItemTypeDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


/* Lookup Data for Item.LookupItemType */

INSERT INTO `Backlog`.`Item.LookupItemType` (`ItemTypeID`, `ItemTypeCode`, `ItemTypeDescription`, `CreatedBy`, `UpdatedBy`) VALUES (1, 'US', 'User story', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Item.LookupItemType` (`ItemTypeID`, `ItemTypeCode`, `ItemTypeDescription`, `CreatedBy`, `UpdatedBy`) VALUES (2, 'E', 'Epic', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Item.LookupItemType` (`ItemTypeID`, `ItemTypeCode`, `ItemTypeDescription`, `CreatedBy`, `UpdatedBy`) VALUES (3, 'D', 'Defect', 'smacgregor', 'smacgregor');

CREATE TABLE Backlog.`Item.LookupItemStatus` (
  `ItemStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemStatusCode` varchar(100) DEFAULT NULL,
  `ItemStatusDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



/* Lookup Data for Item.LookupItemStatus */

INSERT INTO `Backlog`.`Item.LookupItemStatus` (`ItemStatusID`, `ItemStatusCode`, `ItemStatusDescription`, `CreatedBy`, `UpdatedBy`) VALUES (1, 'D', 'Defined', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Item.LookupItemStatus` (`ItemStatusID`, `ItemStatusCode`, `ItemStatusDescription`, `CreatedBy`, `UpdatedBy`) VALUES (2, 'I', 'In progress', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Item.LookupItemStatus` (`ItemStatusID`, `ItemStatusCode`, `ItemStatusDescription`, `CreatedBy`, `UpdatedBy`) VALUES (3, 'C', 'Completed', 'smacgregor', 'smacgregor');




CREATE TABLE Backlog.`Team.LookupTeam` (
  `TeamID` int(11) NOT NULL AUTO_INCREMENT,
  `TeamName`  varchar(100) NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
 
/* Lookup Data for Team.LookupTeam */

INSERT INTO `Backlog`.`Team.LookupTeam` (`TeamID`, `TeamName`, `CreatedBy`, `UpdatedBy`) VALUES (1, 'SW1', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Team.LookupTeam` (`TeamID`, `TeamName`, `CreatedBy`, `UpdatedBy`) VALUES (2, 'SW2', 'smacgregor', 'smacgregor');
INSERT INTO `Backlog`.`Team.LookupTeam` (`TeamID`, `TeamName`, `CreatedBy`, `UpdatedBy`) VALUES (3, 'SW3', 'smacgregor', 'smacgregor');



CREATE OR REPLACE VIEW `Backlog`.`Item.vw_ItemSummary` AS
SELECT
i.ItemID
,i.ItemTypeID
,lit.ItemTypeDescription
,i.ItemStatusID
,lis.ItemStatusDescription
,i.ItemPriorityID
,lip.ItemPriorityDescription
,i.TeamID
,lt.TeamName
,i.ReporterID
,i.AssigneeID
,i.SprintID
,i.Summary

 FROM Backlog.`Item.Item` i
 LEFT OUTER JOIN `Sprint.Sprint` s ON s.SprintID = i.SprintID
 JOIN `Item.LookupItemType` lit ON lit.ItemTypeID = i.ItemTypeID
 JOIN `Item.LookupItemStatus` lis ON lis.ItemStatusID = i.ItemStatusID
 JOIN `Item.LookupItemPriority` lip ON lip.ItemPriorityID = i.ItemPriorityID
 JOIN `Team.LookupTeam` lt ON lt.TeamID = i.TeamID


 
/*  Item.TeamID ID FK to Team.TeamID */

/*  Item.PriorityID ID FK to LookupPriority.PriorityID */

/*  Item.StatusID ID FK to LookupStatus.StatusID */

/*  Item.ItemTypeID ID FK to LookupItemType.ItemTypeID */

/*  Item.ItemID FK to Trace.ItemID */

/*  Item.ItemID FK to Trace.TargetItemID */

/*  Attachment.ItemID ID FK to Item.ItemID */

/*  CustomField.ItemID FK to Item.ItemID */

/*  Trace.TraceTypeID FK to LookupTraceType.TraceTypeID */

/*  Board.BoardID FK to Sprint.BoardID */



