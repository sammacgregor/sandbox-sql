

Set-Location .\Scripts\
Get-Content CleanDB.sql | psql -d sandbox -U system.user  -W
Set-Location ..


