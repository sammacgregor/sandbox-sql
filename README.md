# sandbox-sql

## This will connect to heroku API app and engage psql console
heroku psql -a stormy-lake-69799

## this will run setup files to create database tables using local files

cat CreateAudit.sql | heroku pg:psql -a stormy-lake-69799
cat CreateBacklog.sql | heroku pg:psql -a stormy-lake-69799
cat CreateSystem.sql | heroku pg:psql -a stormy-lake-69799
cat CreateSystem.sql | heroku pg:psql -a stormy-lake-69799

## this will load sample data into those tables

cat Item.Item.sql | heroku pg:psql -a stormy-lake-69799



## run all as powershell
invoke-expression -Command .\setup.ps1

or to clean the db then

invoke-expression -Command .\clean.ps1

## to run both of above, run dev-refresh

invoke-expression -Command .\dev-refresh.ps1