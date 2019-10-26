mysql -u root -e "CREATE DATABASE Customer"
mysql -u root -e "CREATE DATABASE System"
mysql -u root -e "CREATE DATABASE AuditLog"
mysql -u root -e "CREATE DATABASE Request"
cd .\Scripts\
mysql -u root AuditLog < CreateAudit.sql
mysql -u root Customer < CreateCustomer.sql
mysql -u root Customer < sp_CreateCustomer.sql
mysql -u root Customer < CreateReferenceDataCustomer.sql
mysql -u root Customer < Customer.vw_CustomerMemberTrimmed.sql
mysql -u root Request < CreateRequest.sql
mysql -u root System < CreateSystem.sql