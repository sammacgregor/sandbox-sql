Set-Location .\Setup\
Write-Output "Starting local clean"
invoke-expression -Command .\clean-local.ps1
Write-Output "Starting local setup"
invoke-expression -Command .\setup-local.ps1
Set-Location ..
Set-Location .\sampleData\
Write-Output "Starting local data load"
invoke-expression -Command .\load-dev.ps1
Set-Location ..
Write-Output "Finished"
