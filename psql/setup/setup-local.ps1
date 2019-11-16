

cd .\Scripts\
cat CreateAudit.sql | psql -d sandbox -U system.user -W
cat CreateBacklog.sql | psql -d sandbox -U system.user -W
cat CreateSystem.sql | psql -d sandbox -U system.user -W
cd ..


