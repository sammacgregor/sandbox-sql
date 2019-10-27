CREATE SCHEMA Item;
CREATE SCHEMA Board;
CREATE SCHEMA Sprint;
CREATE SCHEMA Team;

CREATE TABLE Board.Board (
  BoardID serial PRIMARY KEY,
  TeamID int DEFAULT NULL,
  BoardName varchar(45) DEFAULT NULL,
  Description varchar(500) DEFAULT NULL,
  CreatedDate timestamp DEFAULT NULL,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT NULL,
  UpdatedBy varchar(45) DEFAULT NULL
);



CREATE TABLE Sprint.Sprint (
  SprintID serial PRIMARY KEY,
  BoardID int  DEFAULT NULL,
  SprintStartDate date DEFAULT NULL,
  SprintEndDate date DEFAULT NULL,
  SprintActive int NULL,
  SprintStoryPoints int NULL,
  SprintTargetPoints int NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);


CREATE TABLE Item.Item (
  ItemID serial PRIMARY KEY,
  ItemTypeID int DEFAULT NULL,
  ItemStatusID int DEFAULT NULL,
  ItemPriorityID int DEFAULT NULL,
  TeamID int DEFAULT NULL,
  BoardID int DEFAULT NULL,
  ReporterID varchar(128) NULL,
  AssigneeID varchar(128) NULL,
  SprintID int DEFAULT NULL,
  Summary varchar(257) DEFAULT NULL,
  Description varchar(500) DEFAULT NULL,
  CreatedDate timestamp DEFAULT NULL,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT NULL,
  UpdatedBy varchar(45) DEFAULT NULL
);




CREATE TABLE Item.Attachment (
  AttachmentID serial PRIMARY KEY,
  ItemID int DEFAULT NULL,
  MIMETYPE varchar(255) DEFAULT NULL,
  FILENAME varchar(255) DEFAULT NULL,
  FILESIZE int DEFAULT NULL,
  CreatedDate timestamp DEFAULT NULL,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT NULL,
  UpdatedBy varchar(45) DEFAULT NULL
);



CREATE TABLE Item.Trace (
  TraceID serial PRIMARY KEY,
  ItemID int DEFAULT NULL,
  TargetItemID int DEFAULT NULL,
  TraceabilityTypeID int DEFAULT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);



CREATE TABLE Item.LookupTraceType (
  TraceTypeID serial PRIMARY KEY,
  TraceTypeCode varchar(100) DEFAULT NULL,
  TraceTypeDescription varchar(100) DEFAULT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);


/* Lookup Data for Item.LookupTraceType */

INSERT INTO Item.LookupTraceType (TraceTypeID, TraceTypeCode, TraceTypeDescription, CreatedBy, UpdatedBy) VALUES (1, 'I', 'Traces into', 'smacgregor', 'smacgregor');
INSERT INTO Item.LookupTraceType (TraceTypeID, TraceTypeCode, TraceTypeDescription, CreatedBy, UpdatedBy) VALUES (2, 'F', 'Traces from', 'smacgregor', 'smacgregor');
INSERT INTO Item.LookupTraceType (TraceTypeID, TraceTypeCode, TraceTypeDescription, CreatedBy, UpdatedBy) VALUES (3, 'O', 'Depends on', 'smacgregor', 'smacgregor');





CREATE TABLE Item.LookupItemPriority (
  ItemPriorityID serial PRIMARY KEY,
  ItemPriorityCode varchar(100) DEFAULT NULL,
  ItemPriorityDescription varchar(100) DEFAULT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);


/* Lookup Data for Item.LookupItemPriority */

INSERT INTO Item.LookupItemPriority (ItemPriorityID, ItemPriorityCode, ItemPriorityDescription, CreatedBy, UpdatedBy) VALUES (1, '1', 'Urgent', 'smacgregor', 'smacgregor');
INSERT INTO Item.LookupItemPriority (ItemPriorityID, ItemPriorityCode, ItemPriorityDescription, CreatedBy, UpdatedBy) VALUES (2, '2', 'High', 'smacgregor', 'smacgregor');
INSERT INTO Item.LookupItemPriority (ItemPriorityID, ItemPriorityCode, ItemPriorityDescription, CreatedBy, UpdatedBy) VALUES (3, '3', 'Moderate', 'smacgregor', 'smacgregor');
INSERT INTO Item.LookupItemPriority (ItemPriorityID, ItemPriorityCode, ItemPriorityDescription, CreatedBy, UpdatedBy) VALUES (4, '4', 'Low', 'smacgregor', 'smacgregor');





CREATE TABLE Item.CustomField (
  ItemCustomFieldID serial PRIMARY KEY,
  ItemID int NOT NULL,
  CustomFieldName int NOT NULL,
  CustomFieldValue varchar(100) DEFAULT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);




CREATE TABLE Item.LookupItemType (
  ItemTypeID serial PRIMARY KEY,
  ItemTypeCode varchar(100) DEFAULT NULL,
  ItemTypeDescription varchar(100) DEFAULT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);


/* Lookup Data for Item.LookupItemType */

INSERT INTO Item.LookupItemType (ItemTypeID, ItemTypeCode, ItemTypeDescription, CreatedBy, UpdatedBy) VALUES (1, 'US', 'User story', 'smacgregor', 'smacgregor');
INSERT INTO Item.LookupItemType (ItemTypeID, ItemTypeCode, ItemTypeDescription, CreatedBy, UpdatedBy) VALUES (2, 'E', 'Epic', 'smacgregor', 'smacgregor');
INSERT INTO Item.LookupItemType (ItemTypeID, ItemTypeCode, ItemTypeDescription, CreatedBy, UpdatedBy) VALUES (3, 'D', 'Defect', 'smacgregor', 'smacgregor');

CREATE TABLE Item.LookupItemStatus (
  ItemStatusID serial PRIMARY KEY,
  ItemStatusCode varchar(100) DEFAULT NULL,
  ItemStatusDescription varchar(100) DEFAULT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);



/* Lookup Data for Item.LookupItemStatus */

INSERT INTO Item.LookupItemStatus (ItemStatusID, ItemStatusCode, ItemStatusDescription, CreatedBy, UpdatedBy) VALUES (1, 'D', 'Defined', 'smacgregor', 'smacgregor');
INSERT INTO Item.LookupItemStatus (ItemStatusID, ItemStatusCode, ItemStatusDescription, CreatedBy, UpdatedBy) VALUES (2, 'I', 'In progress', 'smacgregor', 'smacgregor');
INSERT INTO Item.LookupItemStatus (ItemStatusID, ItemStatusCode, ItemStatusDescription, CreatedBy, UpdatedBy) VALUES (3, 'C', 'Completed', 'smacgregor', 'smacgregor');




CREATE TABLE Team.LookupTeam (
  TeamID serial PRIMARY KEY,
  TeamName  varchar(100) NOT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);
 
/* Lookup Data for Team.LookupTeam */

INSERT INTO Team.LookupTeam (TeamID, TeamName, CreatedBy, UpdatedBy) VALUES (1, 'SW1', 'smacgregor', 'smacgregor');
INSERT INTO Team.LookupTeam (TeamID, TeamName, CreatedBy, UpdatedBy) VALUES (2, 'SW2', 'smacgregor', 'smacgregor');
INSERT INTO Team.LookupTeam (TeamID, TeamName, CreatedBy, UpdatedBy) VALUES (3, 'SW3', 'smacgregor', 'smacgregor');



CREATE OR REPLACE VIEW Item.vw_ItemSummary AS
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

 FROM Item.Item i
 LEFT OUTER JOIN Sprint.Sprint s ON s.SprintID = i.SprintID
 JOIN Item.LookupItemType lit ON lit.ItemTypeID = i.ItemTypeID
 JOIN Item.LookupItemStatus lis ON lis.ItemStatusID = i.ItemStatusID
 JOIN Item.LookupItemPriority lip ON lip.ItemPriorityID = i.ItemPriorityID
 JOIN Team.LookupTeam lt ON lt.TeamID = i.TeamID


 
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



