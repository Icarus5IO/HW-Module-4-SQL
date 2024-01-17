CREATE TABLE customer_theatre(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	phone_number VARCHAR(20)
);

CREATE TABLE auditorium(
 	auditorium_id SERIAL PRIMARY KEY,
 	auditorium_num INTEGER,
 	capacity INTEGER
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(225),
	release_year INTEGER,
	genre VARCHAR(50),
	duration INTEGER
);

CREATE TABLE screaning(
	screaning_id SERIAL PRIMARY KEY,
	movie_id INTEGER NOT NULL,
	auditorium_id INTEGER NOT NULL,
	start_time TIMESTAMP,
	end_time TIMESTAMP,
	ticket_price DECIMAL(5,2),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY (auditorium_id) REFERENCES auditorium(auditorium_id)
);

CREATE TABLE seat(
	seat_id SERIAL PRIMARY KEY,
	auditorium_id INTEGER NOT NULL,
	row_letter VARCHAR(1),
	seat_number INTEGER,
	FOREIGN KEY (auditorium_id) REFERENCES auditorium(auditorium_id)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	screaning_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	seat_id INTEGER NOT NULL,
	purchase_date DATE,
	price DECIMAL(5,2),
	FOREIGN KEY (screaning_id) REFERENCES screaning(screaning_id),
	FOREIGN KEY (customer_id) REFERENCES customer_theatre(customer_id),
	FOREIGN KEY (seat_id) REFERENCES seat(seat_id)
);

