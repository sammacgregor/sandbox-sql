Set-Location .\Setup\
Write-Output "Starting heroku data clean"
invoke-expression -Command .\clean.ps1

Write-Output "Starting heroku db setup"
invoke-expression -Command .\setup.ps1


Write-Output "Starting heroku data load"
Set-Location ..
Set-Location .\sampleData\
invoke-expression -Command .\load.ps1
Set-Location ..
Write-Output "Finished"
