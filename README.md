# sandbox-sql

## This will connect to heroku API app and engage psql console
heroku psql -a stormy-lake-69799

## this will run setup files to create database tables using local files

cat CreateAudit.sql | heroku pg:psql -a stormy-lake-69799
cat CreateBacklog.sql | heroku pg:psql -a stormy-lake-69799

## this will load sample data into those tables

cat Item.Item.sql | heroku pg:psql -a stormy-lake-69799
