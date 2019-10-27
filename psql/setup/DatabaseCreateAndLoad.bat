mysql -u root -e "CREATE DATABASE Sandbox"
cd .\Scripts\
mysql -u root Sandbox < CreateAudit.sql
mysql -u root Sandbox < CreateCustomer.sql
mysql -u root Sandbox < sp_CreateCustomer.sql
mysql -u root Sandbox < CreateReferenceDataCustomer.sql
mysql -u root Sandbox < Customer.vw_CustomerMemberTrimmed.sql
mysql -u root Sandbox < CreateRequest.sql
mysql -u root Sandbox < CreateSystem.sql
mysql -u root Sandbox < CreateBacklog.sql
