DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL,
  year integer NOT NULL,
  poster_link varchar(100) NOT NULL
);

INSERT INTO movies (title, year, poster_link) VALUES
  ('Gladiator', 2000, 'http://ia.media-imdb.com/images/M/MV5BNTQ2NzI0ODc5MV5BMl5BanBnXkFtZTcwMTA0MTk3OA@@._V1_SX300.jpg'),
  ('Mulan', 1998, 'http://ia.media-imdb.com/images/M/MV5BMTIwNjY4NDU2NF5BMl5BanBnXkFtZTcwMzM0OTUyMQ@@._V1_SX300.jpg'),
  ('Finding Nemo', 2003, 'http://ia.media-imdb.com/images/M/MV5BMTY1MTg1NDAxOV5BMl5BanBnXkFtZTcwMjg1MDI5Nw@@._V1_SX300.jpg'),
  ('Avatar', 2009, 'http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg'),
  ('You''ve Got Mail', 1998, 'http://ia.media-imdb.com/images/M/MV5BMTc1MzI5MTk2Ml5BMl5BanBnXkFtZTcwNDcxNzIzMQ@@._V1_SX300.jpg'),
  ('Pokemon: Power of One', 1999, 'http://ia.media-imdb.com/images/M/MV5BMjEwNDQ3NTM0NF5BMl5BanBnXkFtZTcwMTYwNzUyMQ@@._V1_SX300.jpg'),
  ('Fight Club', 1999, 'http://ia.media-imdb.com/images/M/MV5BMjIwNTYzMzE1M15BMl5BanBnXkFtZTcwOTE5Mzg3OA@@._V1_SX300.jpg'),
  ('Casablanca', 1942, 'http://ia.media-imdb.com/images/M/MV5BMTcwNDI5MjI1Ml5BMl5BanBnXkFtZTYwODE4NDI2._V1_SX300.jpg'),
  ('A Goofy Movie', 1995, 'http://ia.media-imdb.com/images/M/MV5BMTI0MjgzMjQ5Nl5BMl5BanBnXkFtZTcwNjg1NjMyMQ@@._V1_SX300.jpg'),
  ('Cinderella', 1950, 'http://ia.media-imdb.com/images/M/MV5BOTQxMDk1OTEyNl5BMl5BanBnXkFtZTYwNjQ0MTA5._V1_SX300.jpg'),
  ('Gravity', 2013, 'http://ia.media-imdb.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_SX300.jpg');