CREATE SCHEMA System;
CREATE EXTENSION "uuid-ossp" WITH SCHEMA system;

CREATE TABLE System.User (
  User_ID uuid DEFAULT system.uuid_generate_v4() PRIMARY KEY,
  Password varchar(256) DEFAULT NULL,
  Given_Name varchar(100) DEFAULT NULL,
  Surname varchar(100) DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  Mobile varchar(100) DEFAULT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);


CREATE TABLE System.Audit (
  Audit_ID serial PRIMARY KEY,
  Who varchar(100) DEFAULT NULL,
  What varchar(100) DEFAULT NULL,
  EventDateTime timestamp DEFAULT NULL,
  Payload varchar(1000) DEFAULT NULL,
  Created_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Created_By varchar(45) DEFAULT NULL,
  Updated_Date timestamp DEFAULT CURRENT_TIMESTAMP,
  Updated_By varchar(45) DEFAULT NULL
);