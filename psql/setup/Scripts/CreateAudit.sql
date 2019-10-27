CREATE SCHEMA Audit;
CREATE TABLE Audit.AuditLog (
  AuditLogID serial PRIMARY KEY,
  ProcessInstanceID int DEFAULT NULL,
  Action varchar(100) DEFAULT NULL,
  ActionDescription varchar(100) DEFAULT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
);

CREATE TABLE Audit.APIEventLog (
  APIEventLogID serial PRIMARY KEY,
  CorrelationID varchar(50) DEFAULT NULL,
  InitiatingApplication varchar(100) DEFAULT NULL,
  RequestType varchar(100) DEFAULT NULL,
  Direction varchar(100) DEFAULT NULL,
  Success boolean DEFAULT NULL,
  Data varchar(1000) DEFAULT NULL,
  Message varchar(100) DEFAULT NULL,
  CreatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  CreatedBy varchar(45) DEFAULT NULL,
  UpdatedDate timestamp DEFAULT CURRENT_TIMESTAMP,
  UpdatedBy varchar(45) DEFAULT NULL
)