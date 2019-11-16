

Set-Location .\Scripts\
Get-Content CreateAudit.sql | psql -d sandbox -U system.user -W
Get-Content CreateBacklog.sql | psql -d sandbox -U system.user -W
Get-Content CreateSystem.sql | psql -d sandbox -U system.user -W
Set-Location ..


