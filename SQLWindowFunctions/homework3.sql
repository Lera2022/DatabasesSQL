DROP TABLE Train;

CREATE TABLE Train
(train_id INT NOT NULL,
station VARCHAR(20) NOT NULL,
station_time TIME NOT NULL);

INSERT INTO Train (train_id, station, station_time) 
VALUES 
(110, 'San Francisco', '10:00:00'),
(110, 'Redwood City', '10:54:00'),
(110, 'Palo Alto', '11:02:00'),
(110, 'San Jose', '12:35:00'),
(120, 'San Francisco', '11:00:00'),
(120, 'Palo Alto', '12:49:00'),
(120, 'San Jose', '13:30:00');

SELECT
	train_id,
    station,
    station_time,
    CONVERT((LEAD(station_time) OVER(PARTITION BY train_id ORDER BY train_id) - station_time), TIME) AS time_to_next_station
    FROM Train;