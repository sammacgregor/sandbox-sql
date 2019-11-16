

Set-Location .\Scripts\
Get-Content Item.Item.sql | psql -d sandbox -U system.user -W
Get-Content Board.Board.sql | psql -d sandbox -U system.user -W
Get-Content Sprint.Sprint.sql | psql -d sandbox -U system.user -W
Set-Location ..