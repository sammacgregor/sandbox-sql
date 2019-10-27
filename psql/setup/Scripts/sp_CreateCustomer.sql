 DELIMITER $$
 
 USE `Sandbox`;

DROP PROCEDURE IF EXISTS `Sandbox`.`Role.sp_CreateCustomer`;
 CREATE PROCEDURE `Sandbox`.`Role.sp_CreateCustomer` (
 IN RoleTypeCode VARCHAR(3),
 IN GivenName VARCHAR(100), 
 IN OtherGivenNames VARCHAR(100), 
 IN Surname VARCHAR(100), 
 IN PreferredName VARCHAR(100), 
 IN BirthDate DATE, 
 IN Gender VARCHAR(100), 
 IN Title VARCHAR(100), 
 IN AddressLine1 VARCHAR(100), 
 IN AddressLine2 VARCHAR(100), 
 IN AddressLine3 VARCHAR(100), 
 IN AddressLine4 VARCHAR(100), 
 IN Suburb VARCHAR(100), 
 IN Postcode VARCHAR(4), 
 IN State VARCHAR(100),
 IN Email VARCHAR(100),
 IN Mobile VARCHAR(100)
 )
BEGIN


DECLARE RoleID int(11) DEFAULT NULL;
DECLARE SystemUser varchar(11) DEFAULT 'system.user';


INSERT INTO `Sandbox`.`Role.Role` (RoleTypeCode, CreatedBy, UpdatedBy) 
VALUES (RoleTypeCode, SystemUser, SystemUser);

SET @RoleID = (SELECT last_insert_id());

INSERT INTO `Sandbox`.`Role.PersonExtension` (RoleID, GivenName, OtherGivenNames, Surname, PreferredName, BirthDate, Gender, Title, CreatedBy, UpdatedBy) 
VALUES (@RoleID, GivenName, OtherGivenNames, Surname, PreferredName, BirthDate, Gender, Title, SystemUser, SystemUser);

INSERT INTO `Sandbox`.`Role.PhysicalAddressExtension` (RoleID, AddressLine1, AddressLine2, AddressLine3, AddressLine4, Suburb, Postcode, State, CountryCode, CreatedBy, UpdatedBy)
VALUES (@RoleID, AddressLine1, AddressLine2, AddressLine3, AddressLine4, Suburb, Postcode, State, CountryCode, SystemUser, SystemUser);

INSERT INTO `Sandbox`.`Role.ElectronicAddressExtension` (RoleID, ElectronicAddressTypeID, ElectronicAddress, CreatedBy, UpdatedBy)
VALUES 
(@RoleID, 1,Email,SystemUser, SystemUser),
(@RoleID, 2,Mobile,SystemUser, SystemUser);

END;





-- INSERT INTO `Sandbox`.`Role.Role` (RoleTypeCode, CreatedBy, UpdatedBy) 
-- VALUES ('MBP','smacgregor','smacgregor');

-- INSERT INTO `Sandbox`.`Role.PersonExtension` (RoleID, GivenName, OtherGivenNames, Surname, PreferredName, BirthDate, Gender, Title, CreatedBy, UpdatedBy) 
-- VALUES ((SELECT last_insert_id()), 'FIRSTNAME', 'OTHERGIVENNAMES', 'SURNAME', 'PREFERREDNAME', '2019-01-01', 'GENDER', 'TITLE', 'smacgregor','smacgregor');

-- INSERT INTO `Sandbox`.`Role.PhysicalAddressExtension` (RoleID, AddressLine1, AddressLine2, AddressLine3, AddressLine4, Suburb, Postcode, State, CountryCode, CreatedBy, UpdatedBy)
-- VALUES ('1','ADDRESSLINE1','ADDRESSLINE2','ADDRESSLINE3','ADDRESSLINE4','Suburb','1111','State','CountryCode','CreatedBy','UpdatedBy');

-- INSERT INTO `Sandbox`.`Role.ElectronicAddressExtension` (RoleID, ElectronicAddressTypeID, ElectronicAddress, CreatedBy, UpdatedBy)
-- VALUES 
-- (1,1,'johndoe@gmail.com','CreatedBy','UpdatedBy'),
-- (1,2,'0400111222','CreatedBy','UpdatedBy');