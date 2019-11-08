CREATE SCHEMA Item;
CREATE SCHEMA Board;
CREATE SCHEMA Sprint;
CREATE SCHEMA Team;

CREATE TABLE Board.Board (
  Board_ID serial PRIMARY KEY,
  Team_ID int DEFAULT NULL,
  Board_Name varchar(45) DEFAULT NULL,
  Description varchar(500) DEFAULT NULL,
  Created_Date timestamp DEFAULT NULL,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT NULL,
  Updated_By varchar(45) DEFAULT NULL
);



CREATE TABLE Sprint.Sprint (
  Sprint_ID serial PRIMARY KEY,
  Board_ID int  DEFAULT NULL,
  Sprint_Goal varchar(255) DEFAULT NULL,
  Sprint_Start_Date date DEFAULT NULL,
  Sprint_End_Date date DEFAULT NULL,
  Sprint_Active int NULL,
  Sprint_Story_Points int NULL,
  Sprint_Target_Points int NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);


CREATE TABLE Item.Item (
  Item_ID serial PRIMARY KEY,
  Item_Type_ID int DEFAULT NULL,
  Item_Status_ID int DEFAULT NULL,
  Item_Priority_ID int DEFAULT NULL,
  Team_ID int DEFAULT NULL,
  Board_ID int DEFAULT NULL,
  Reporter_ID varchar(128) NULL,
  Assignee_ID varchar(128) NULL,
  Sprint_ID int DEFAULT NULL,
  Summary varchar(257) DEFAULT NULL,
  Description varchar(500) DEFAULT NULL,
  Created_Date timestamp DEFAULT NULL,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT NULL,
  Updated_By varchar(45) DEFAULT NULL
);




CREATE TABLE Item.Attachment (
  AttachmentID serial PRIMARY KEY,
  Item_ID int DEFAULT NULL,
  MIMETYPE varchar(255) DEFAULT NULL,
  FILENAME varchar(255) DEFAULT NULL,
  FILESIZE int DEFAULT NULL,
  Created_Date timestamp DEFAULT NULL,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT NULL,
  Updated_By varchar(45) DEFAULT NULL
);



CREATE TABLE Item.Trace (
  TraceID serial PRIMARY KEY,
  ItemID int DEFAULT NULL,
  Target_Item_ID int DEFAULT NULL,
  Trace_Type_ID int DEFAULT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);



CREATE TABLE Item.Lookup_Trace_Type (
  Trace_Type_ID serial PRIMARY KEY,
  Trace_Type_Code varchar(100) DEFAULT NULL,
  Trace_Type_Description varchar(100) DEFAULT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);


/* Lookup Data for Item.LookupTraceType */

INSERT INTO Item.Lookup_Trace_Type (Trace_Type_ID, Trace_Type_Code, Trace_Type_Description, Created_By, Updated_By) VALUES (1, 'I', 'Traces into', 'smacgregor', 'smacgregor');
INSERT INTO Item.Lookup_Trace_Type (Trace_Type_ID, Trace_Type_Code, Trace_Type_Description, Created_By, Updated_By) VALUES (2, 'F', 'Traces from', 'smacgregor', 'smacgregor');
INSERT INTO Item.Lookup_Trace_Type (Trace_Type_ID, Trace_Type_Code, Trace_Type_Description, Created_By, Updated_By) VALUES (3, 'O', 'Depends on', 'smacgregor', 'smacgregor');





CREATE TABLE Item.Lookup_Item_Priority (
  Item_Priority_ID serial PRIMARY KEY,
  Item_Priority_Code varchar(100) DEFAULT NULL,
  Item_Priority_Description varchar(100) DEFAULT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);


/* Lookup Data for Item.LookupItemPriority */

INSERT INTO Item.Lookup_Item_Priority (Item_Priority_ID, Item_Priority_Code, Item_Priority_Description, Created_By, Updated_By) VALUES (1, '1', 'Urgent', 'smacgregor', 'smacgregor');
INSERT INTO Item.Lookup_Item_Priority (Item_Priority_ID, Item_Priority_Code, Item_Priority_Description, Created_By, Updated_By) VALUES (2, '2', 'High', 'smacgregor', 'smacgregor');
INSERT INTO Item.Lookup_Item_Priority (Item_Priority_ID, Item_Priority_Code, Item_Priority_Description, Created_By, Updated_By) VALUES (3, '3', 'Moderate', 'smacgregor', 'smacgregor');
INSERT INTO Item.Lookup_Item_Priority (Item_Priority_ID, Item_Priority_Code, Item_Priority_Description, Created_By, Updated_By) VALUES (4, '4', 'Low', 'smacgregor', 'smacgregor');





CREATE TABLE Item.Custom_Field (
  Item_Custom_Field_ID serial PRIMARY KEY,
  Item_ID int NOT NULL,
  Custom_Field_Name int NOT NULL,
  Custom_Field_Value varchar(100) DEFAULT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);




CREATE TABLE Item.Lookup_Item_Type (
  Item_Type_ID serial PRIMARY KEY,
  Item_Type_Code varchar(100) DEFAULT NULL,
  Item_Type_Description varchar(100) DEFAULT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);


/* Lookup Data for Item.LookupItemType */

INSERT INTO Item.Lookup_Item_Type (Item_Type_ID, Item_Type_Code, Item_Type_Description, Created_By, Updated_By) VALUES (1, 'US', 'User story', 'smacgregor', 'smacgregor');
INSERT INTO Item.Lookup_Item_Type (Item_Type_ID, Item_Type_Code, Item_Type_Description, Created_By, Updated_By) VALUES (2, 'E', 'Epic', 'smacgregor', 'smacgregor');
INSERT INTO Item.Lookup_Item_Type (Item_Type_ID, Item_Type_Code, Item_Type_Description, Created_By, Updated_By) VALUES (3, 'D', 'Defect', 'smacgregor', 'smacgregor');

CREATE TABLE Item.Lookup_Item_Status (
  Item_Status_ID serial PRIMARY KEY,
  Item_Status_Code varchar(100) DEFAULT NULL,
  Item_Status_Description varchar(100) DEFAULT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);



/* Lookup Data for Item.LookupItemStatus */

INSERT INTO Item.Lookup_Item_Status (Item_Status_ID, Item_Status_Code, Item_Status_Description, Created_By, Updated_By) VALUES (1, 'D', 'Defined', 'smacgregor', 'smacgregor');
INSERT INTO Item.Lookup_Item_Status (Item_Status_ID, Item_Status_Code, Item_Status_Description, Created_By, Updated_By) VALUES (2, 'I', 'In progress', 'smacgregor', 'smacgregor');
INSERT INTO Item.Lookup_Item_Status (Item_Status_ID, Item_Status_Code, Item_Status_Description, Created_By, Updated_By) VALUES (3, 'C', 'Completed', 'smacgregor', 'smacgregor');




CREATE TABLE Team.Lookup_Team (
  Team_ID serial PRIMARY KEY,
  Team_Name  varchar(100) NOT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);
 
/* Lookup Data for Team.LookupTeam */

INSERT INTO Team.Lookup_Team (Team_ID, Team_Name, Created_By, Updated_By) VALUES (1, 'SW1', 'smacgregor', 'smacgregor');
INSERT INTO Team.Lookup_Team (Team_ID, Team_Name, Created_By, Updated_By) VALUES (2, 'SW2', 'smacgregor', 'smacgregor');
INSERT INTO Team.Lookup_Team (Team_ID, Team_Name, Created_By, Updated_By) VALUES (3, 'SW3', 'smacgregor', 'smacgregor');



CREATE OR REPLACE VIEW Item.vw_Item_Summary AS
SELECT
i.Item_ID
,i.Item_Type_ID
,lit.Item_Type_Description
,i.Item_Status_ID
,lis.Item_Status_Description
,i.Item_Priority_ID
,lip.Item_Priority_Description
,i.Team_ID
,lt.Team_Name
,i.Reporter_ID
,i.Assignee_ID
,i.Sprint_ID
,i.Summary

 FROM Item.Item i
 LEFT OUTER JOIN Sprint.Sprint s ON s.Sprint_ID = i.Sprint_ID
 JOIN Item.Lookup_Item_Type lit ON lit.Item_Type_ID = i.Item_Type_ID
 JOIN Item.Lookup_Item_Status lis ON lis.Item_Status_ID = i.Item_Status_ID
 JOIN Item.Lookup_Item_Priority lip ON lip.Item_Priority_ID = i.Item_Priority_ID
 JOIN Team.Lookup_Team lt ON lt.Team_ID = i.Team_ID


 
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



