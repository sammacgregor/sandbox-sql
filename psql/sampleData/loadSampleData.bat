cd .\Scripts\
cat Item.Item.sql | heroku pg:psql -a stormy-lake-69799
cat Board.Board.sql | heroku pg:psql -a stormy-lake-69799
cat Sprint.Sprint.sql | heroku pg:psql -a stormy-lake-69799