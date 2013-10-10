DROP TABLE IF EXISTS receipts;

CREATE TABLE movies (
  id serial PRIMARY KEY,
  title varchar(110) NOT NULL,
  poster varchar(150) NOT NULL,
  year varchar(30) NOT NULL,
);

INSERT INTO movies (title, year, poster) VALUES
('The Lion King', '1994', 'http://ia.media-imdb.com/images/M/MV5BMjEyMzgwNTUzMl5BMl5BanBnXkFtZTcwNTMxMzM3Ng@@._V1_SX300.jpg'),
  