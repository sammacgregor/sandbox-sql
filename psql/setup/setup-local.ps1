$password = "password"

cd .\Scripts\
cat CreateAudit.sql | psql -d sandbox -U system.user -P $password
cat CreateBacklog.sql | psql -d sandbox -U system.user -P $password
cat CreateSystem.sql | psql -d sandbox -U system.user -P $password
cd ..


