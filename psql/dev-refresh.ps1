cd .\Setup\
Write-Output "Starting heroku data clean"
invoke-expression -Command .\clean.ps1

Write-Output "Starting heroku db setup"
invoke-expression -Command .\setup.ps1


Write-Output "Starting heroku data load"
cd ..
cd .\sampleData\
invoke-expression -Command .\load.ps1
cd ..
Write-Output "Finished"
