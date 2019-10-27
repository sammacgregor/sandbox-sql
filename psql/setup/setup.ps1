cd .\Scripts\
cat CreateAudit.sql | heroku pg:psql -a stormy-lake-69799
cat CreateBacklog.sql | heroku pg:psql -a stormy-lake-69799
cat CreateSystem.sql | heroku pg:psql -a stormy-lake-69799
cd ..