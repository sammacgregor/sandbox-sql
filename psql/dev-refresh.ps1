cd .\Setup\
invoke-expression -Command .\clean.ps1
invoke-expression -Command .\setup.ps1
cd ..
cd .\sampleData\
invoke-expression -Command .\load.ps1
invoke-expression -Command .\load-dev.ps1
cd ..