cd .\Scripts\
mysql -u root Customer < Role.Role.sql
mysql -u root Customer < Role.PersonExtension.sql
mysql -u root Customer < Role.BankAccount.sql
mysql -u root Customer < Role.ElectronicAddress.sql
mysql -u root Customer < Role.PhysicalAddress.sql
