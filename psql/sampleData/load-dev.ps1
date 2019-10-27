param (
    [string]$password = $( Read-Host "Input password, please" )
 )

 cd .\Scripts\
cat Item.Item.sql | psql -d sandbox -U system.user -W $password
cat Board.Board.sql | psql -d sandbox -U system.user -W $password
cat Sprint.Sprint.sql | psql -d sandbox -U system.user -W $password
cd ..