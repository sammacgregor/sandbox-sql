CREATE SCHEMA Audit;
CREATE TABLE Audit.Audit_Log (
  AuditLogID serial PRIMARY KEY,
  ProcessInstanceID int DEFAULT NULL,
  Action varchar(100) DEFAULT NULL,
  ActionDescription varchar(100) DEFAULT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);

CREATE TABLE Audit.API_Event_Log (
  API_EventLog_ID serial PRIMARY KEY,
  Correlation_ID varchar(50) DEFAULT NULL,
  Initiating_Application varchar(100) DEFAULT NULL,
  Request_Type varchar(100) DEFAULT NULL,
  Direction varchar(100) DEFAULT NULL,
  Success boolean DEFAULT NULL,
  Data varchar(1000) DEFAULT NULL,
  Message varchar(100) DEFAULT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
)