INSERT INTO religions (name, number_of_devoted, god_name, prophet_name, type) 
VALUES ('Catholicism', '1285000000', 'God', 'Jesus', 'Monotheist'),
	   ('Atheism', '910000000', NULL, NULL, 'Atheist'),
	   ('Judaism', '13855000', 'Yahweh', 'Abraham', 'Monotheist'),
	   ('Mythology', '20000000', 'Zeus', NULL, 'Polytheist');

LOAD DATA LOCAL INFILE 'tortures_examples.csv' 
	INTO TABLE tortures 
FIELDS 
	TERMINATED BY ';'
	ENCLOSED BY '"'
	ESCAPED BY '\\'
LINES
	STARTING BY ''
	TERMINATED BY '\n'
(id, name, origin, suffering_type);		