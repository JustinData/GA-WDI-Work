CREATE TABLE entries (
  id serial primary key,
  author varchar(25),
  photo text,
  post_date date
);

INSERT INTO entries ( author, photo, post_date) VALUES
('Peter', 'http://bit.ly/19wn0Yt', to_date( '21 Dec 1988', 'DD Mon YYYY' )),
('Jeff', 'http://bit.ly/17hTRzk', to_date( '21 Dec 1988', 'DD Mon YYYY' )),
('PJ', 'http://bit.ly/16ukYvg', to_date( '21 Dec 1988', 'DD Mon YYYY' ));




