CREATE TABLE Movies
(
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
title VARCHAR(45),
Dyear YEAR,
running_time_min SMALLINT,
storyline TEXT
);

INSERT INTO Movies (title, Dyear, running_time_min, storyline)
  VALUES
  ('Harry Potter', 2001, 152, 'Global interesting history'),
  ('Harry Potter and', 2002, 162, 'An ancient'),
  ('The Green Mile', 1999, 188, 'Death Row'),
  ('Forest Gump', 1994, 142, 'The presidencies'),
  ('Cast Away', 2000, 143, 'A FedEx');
  
  SELECT * FROM Movies;