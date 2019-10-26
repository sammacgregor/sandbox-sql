USE `Customer`;

CREATE TABLE Customer.`Role.Role` (
  `RoleID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleTypeCode` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE Customer.`Role.PhysicalAddressExtension` (
  `PhysicalAddressID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` int(11) DEFAULT NULL,
  `AddressType` varchar(3) DEFAULT NULL,  
  `AddressLine1` varchar(100) DEFAULT NULL,
  `AddressLine2` varchar(100) DEFAULT NULL,
  `AddressLine3` varchar(100) DEFAULT NULL,
  `AddressLine4` varchar(100) DEFAULT NULL,    
  `PostCode` varchar(4) DEFAULT NULL,      
  `Suburb` varchar(100) DEFAULT NULL,      
  `State` varchar(100) DEFAULT NULL,      
  `CountryCode` varchar(100) DEFAULT NULL,      
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PhysicalAddressID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE Customer.`Role.ElectronicAddressExtension` (
  `ElectronicAddressID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` int(11) DEFAULT NULL,
  `ElectronicAddressTypeID` int(11) DEFAULT NULL,  
  `ElectronicAddress` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `VerifiedFlag` boolean DEFAULT NULL,
  `InitialVerifiedDate` datetime DEFAULT NULL,
  `LastVerifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ElectronicAddressID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE Customer.`Role.LookupElectronicAddressType` (
  `ElectronicAddressTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `MediaTypeCode` varchar(100) DEFAULT NULL,  
  `MediaTypeDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ElectronicAddressTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE Customer.`Role.LookupPhysicalAddressType` (
  `PhysicalAddressTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `PhysicalAddressTypeCode` varchar(100) DEFAULT NULL,  
  `PhysicalAddressTypeDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PhysicalAddressTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



CREATE TABLE Customer.`Role.LookupRoleType` (
  `RoleTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleTypeCode` varchar(100) DEFAULT NULL,
  `RoleTypeDescription` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RoleTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE Customer.`Role.PersonExtension` (
  `PersonExtensionID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` int(11) DEFAULT NULL,
  `GivenName` varchar(100) DEFAULT NULL,
  `OtherGivenNames` varchar(100) DEFAULT NULL,
  `Surname` varchar(100) DEFAULT NULL,
  `PreferredName` varchar(100) DEFAULT NULL,  
  `BirthDate` date DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PersonExtensionID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE Customer.`Role.MemberExtension` (
  `MemberExtensionID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` int(11) DEFAULT NULL,
  `TaxFileNumber` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MemberExtensionID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE Customer.`Role.BankAccount` (
  `BankAccountID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` int(11) DEFAULT NULL,
  `BSBNumber` int(6) DEFAULT NULL,
  `AccountNumber` int(50) DEFAULT NULL,
  `AccountName` varchar(50) DEFAULT NULL,
  `BankName` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BankAccountID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



CREATE TABLE Customer.`Role.Product` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` int(11) DEFAULT NULL,
  `StatusID` int(11) DEFAULT NULL,
  `RequestedDate` datetime DEFAULT NULL,
  `AddedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



CREATE TABLE Customer.`Product.LookupProduct` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductGroupID` int(11) DEFAULT NULL,
  `ProductCode` varchar(11) DEFAULT NULL,
  `ProductDescription` int(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE Customer.`Product.LookupProductStatus` (
  `ProductStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductStatusCode` varchar(11) DEFAULT NULL,
  `ProductStatusDescription` int(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProductStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE Customer.`Product.LookupProductGroup` (
  `ProductGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductGroupCode` varchar(11) DEFAULT NULL,
  `ProductGroupDescription` int(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProductGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



/*  MemberExtension.Role ID FK to Role.Role */



ALTER TABLE `Customer`.`Role.MemberExtension` 
ADD INDEX `FK_RoleID` (`RoleID` ASC);
;
ALTER TABLE `Customer`.`Role.MemberExtension` 
ADD CONSTRAINT `FK_RoleID_MemberExtension`
  FOREIGN KEY (`RoleID`)
  REFERENCES `Customer`.`Role.Role` (`RoleID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


/*  PersonExtension.Role ID FK to Role.Role */

ALTER TABLE `Customer`.`Role.PersonExtension` 
ADD INDEX `FK_RoleID` (`RoleID` ASC);
;
ALTER TABLE `Customer`.`Role.PersonExtension` 
ADD CONSTRAINT `FK_RoleID_PersonExtension`
  FOREIGN KEY (`RoleID`)
  REFERENCES `Customer`.`Role.Role` (`RoleID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;



/*  ElectronicAddressExtension.Role ID FK to Role.Role */


ALTER TABLE `Customer`.`Role.ElectronicAddressExtension` 
ADD INDEX `FK_RoleID` (`RoleID` ASC);
;
ALTER TABLE `Customer`.`Role.ElectronicAddressExtension` 
ADD CONSTRAINT `FK_RoleID_ElectronicAddressExtension`
  FOREIGN KEY (`RoleID`)
  REFERENCES `Customer`.`Role.Role` (`RoleID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

/*  PhysicalAddressExtension.Role ID FK to Role.Role */



ALTER TABLE `Customer`.`Role.PhysicalAddressExtension` 
ADD INDEX `FK_RoleID` (`RoleID` ASC);
;
ALTER TABLE `Customer`.`Role.PhysicalAddressExtension` 
ADD CONSTRAINT `FK_RoleID_PhysicalAddressExtension`
  FOREIGN KEY (`RoleID`)
  REFERENCES `Customer`.`Role.Role` (`RoleID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;




/*  BankAccount.Role ID FK to Role.Role */



ALTER TABLE `Customer`.`Role.BankAccount` 
ADD INDEX `FK_RoleID` (`RoleID` ASC);
;
ALTER TABLE `Customer`.`Role.BankAccount` 
ADD CONSTRAINT `FK_RoleID_BankAccount`
  FOREIGN KEY (`RoleID`)
  REFERENCES `Customer`.`Role.Role` (`RoleID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


/*  Role.Product ID FK to Product.LookupProduct.ProductID */



ALTER TABLE `Customer`.`Role.Product` 
ADD INDEX `FK_ProductID` (`ProductID` ASC);
;
ALTER TABLE `Customer`.`Role.Product` 
ADD CONSTRAINT `FK_RoleID_Product`
  FOREIGN KEY (`ProductID`)
  REFERENCES `Customer`.`Product.LookupProduct` (`ProductID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

/*  Product.LookupProduct ID FK to Product.LookupProductGroup.ProductGroupID */



ALTER TABLE `Customer`.`Product.LookupProduct` 
ADD INDEX `FK_ProductGroupID` (`ProductGroupID` ASC);
;
ALTER TABLE `Customer`.`Product.LookupProduct` 
ADD CONSTRAINT `FK_ProductGroupID_Product`
  FOREIGN KEY (`ProductGroupID`)
  REFERENCES `Customer`.`Product.LookupProductGroup` (`ProductGroupID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
