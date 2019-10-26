CREATE OR REPLACE VIEW `Customer`.`Role.vw_CustomerMemberTrimmed` AS

SELECT 
r.RoleID
,r.RoleTypeCode
,p.GivenName
,p.OtherGivenNames
,p.Surname
,p.Title
,p.BirthDate
,p.Gender
,p.PreferredName
FROM `Customer`.`Role.Role` r
Join `Customer`.`Role.PersonExtension` p ON r.RoleID = p.RoleID
Join `Customer`.`Role.PhysicalAddressExtension` pae ON pae.RoleID = r.RoleID
Where r.RoleTypeCode = 'MBP'