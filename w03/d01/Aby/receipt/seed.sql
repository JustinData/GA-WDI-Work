DROP TABLE IF EXISTS movies;
     
CREATE TABLE movies (
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL,
  year integer DEFAULT 1,
  poster varchar(100) NOT NULL,
  );
 
     
INSERT INTO movies (title, year, poster) VALUES

('Up', 2009, 'http://ia.media-imdb.com/images/M/MV5BMTMwODg0NDY1Nl5BMl5BanBnXkFtZTcwMjkwNTgyMg@@._V1_SX300.jpg')
('Finding Nemo', 2003, 'http://ia.media-imdb.com/images/M/MV5BMTY1MTg1NDAxOV5BMl5BanBnXkFtZTcwMjg1MDI5Nw@@._V1_SX300.jpg')
('Toy Story 3',2010, 'http://ia.media-imdb.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_SX300.jpg')
('Scarface', 1983, 'http://ia.media-imdb.com/images/M/MV5BMjM1MDc3NDY2N15BMl5BanBnXkFtZTcwMTA0Njk3OA@@._V1_SX300.jpg')
('Titanic', 1997, 'http://ia.media-imdb.com/images/M/MV5BMjExNzM0NDM0N15BMl5BanBnXkFtZTcwMzkxOTUwNw@@._V1_SX300.jpg')
('The Lion King', 1994 , 'http://ia.media-imdb.com/images/M/MV5BMjEyMzgwNTUzMl5BMl5BanBnXkFtZTcwNTMxMzM3Ng@@._V1_SX300.jpg')


