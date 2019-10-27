CREATE OR REPLACE VIEW `Sandbox`.`Role.vw_CustomerMemberTrimmed` AS

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
FROM `Sandbox`.`Role.Role` r
Join `Sandbox`.`Role.PersonExtension` p ON r.RoleID = p.RoleID
Join `Sandbox`.`Role.PhysicalAddressExtension` pae ON pae.RoleID = r.RoleID
Where r.RoleTypeCode = 'MBP'