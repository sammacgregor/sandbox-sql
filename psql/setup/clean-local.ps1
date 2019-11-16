

cd .\Scripts\
cat CleanDB.sql | psql -d sandbox -U system.user  -W
cd ..


