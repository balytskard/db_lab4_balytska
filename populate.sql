INSERT INTO books VALUES
	('0312970242', 'The Angel Is Near', 'Deepak Chopra', 2000, 'St. Martin''s Press', 'http://images.amazon.com/images/P/0312970242.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0312970242.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0312970242.01.LZZZZZZZ.jpg'),
	('0671888587', 'I''ll Be Seeing You', 'Mary Higgins Clark', 1994, 'Pocket', 'http://images.amazon.com/images/P/0671888587.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0671888587.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0671888587.01.LZZZZZZZ.jpg'),
	('0156047624', 'All the King''s Men', 'Robert Penn Warren', 1982, 'Harvest Books', 'http://images.amazon.com/images/P/0156047624.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0156047624.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0156047624.01.LZZZZZZZ.jpg'),
	('0671027360', 'Angels &amp; Demons', 'Dan Brown', 2001, 'Pocket Star', 'http://images.amazon.com/images/P/0671027360.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0671027360.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0671027360.01.LZZZZZZZ.jpg'),
	('0446601640', 'Slow Waltz in Cedar Bend', 'Robert James Waller', 1994, 'Warner Books', 'http://images.amazon.com/images/P/0446601640.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0446601640.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0446601640.01.LZZZZZZZ.jpg'),
	('8440630794', 'Cuentos del Planeta Tierra', 'Arthur C. Clarke', 1993, 'Ediciones B', 'http://images.amazon.com/images/P/8440630794.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/8440630794.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/8440630794.01.LZZZZZZZ.jpg'),
	('0373709889', '"Now That You''Re Here (Harlequin Superromance, No 988)"', 'Lynnette Kent', 2001, 'Harlequin', 'http://images.amazon.com/images/P/0373709889.01.THUMBZZZ.jpg', 'http://images.amazon.com/images/P/0373709889.01.MZZZZZZZ.jpg', 'http://images.amazon.com/images/P/0373709889.01.LZZZZZZZ.jpg');
	
INSERT INTO ratings VALUES
	('69', '0312970242', 0),
	('39', '0671888587', 7),
	('53', '0156047624', 10),
	('114', '0671027360', 10),
	('169', '0446601640', 7),
	('183', '8440630794', 7),
	('254', '0373709889', 5);

INSERT INTO users VALUES
	(69, 'vancouver', 'british columbia', 'canada', 48, '0312970242'),
	(39, 'cary', 'north carolina', 'usa', 19, '0671888587'),
	(53, 'tacoma', 'washington', 'usa', 33, '0156047624'),
	(114, 'ligonier', 'pennsylvania', 'usa', 57, '0671027360'),
	(169, 'arlington', 'virginia', 'usa', 41, '0446601640'),
	(183, 'portugal', 'italy', 'france', 27, '8440630794'),
	(254, 'minneapolis', 'minnesota', 'usa', 24, '0373709889');

