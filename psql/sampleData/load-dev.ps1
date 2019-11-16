

 cd .\Scripts\
cat Item.Item.sql | psql -d sandbox -U system.user -W
cat Board.Board.sql | psql -d sandbox -U system.user -W
cat Sprint.Sprint.sql | psql -d sandbox -U system.user -W
cd ..