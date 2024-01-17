-- Sample data for customer_theatre table
INSERT INTO customer_theatre (first_name, last_name, email, phone_number)
VALUES
  ('Mahamid', 'Ali', 'john.doe@example.com', '123-456-7890'),
  ('Bruce', 'Lee', 'alice.smith@example.com', '987-654-3210'),
  ('Bob', 'Marley', 'bob.johnson@example.com', '555-123-4567');

-- Sample data for auditorium table
INSERT INTO auditorium (auditorium_num, capacity)
VALUES
  (1, 100),
  (2, 80),
  (3, 50);

-- Sample data for movie table
INSERT INTO movie (title, release_year, genre, duration)
VALUES
  ('Inception', 2010, 'Sci-Fi', 148),
  ('The Dark Knight', 2008, 'Action', 152),
  ('Toy Story', 1995, 'Animation', 81);

-- Sample data for screening table
INSERT INTO screaning (movie_id, auditorium_id, start_time, end_time, ticket_price)
VALUES
  (1, 1, '2024-01-16 18:00:00', '2024-01-16 21:00:00', 10.50),
  (2, 2, '2024-01-17 15:30:00', '2024-01-17 18:30:00', 12.00),
  (3, 3, '2024-01-18 20:00:00', '2024-01-18 21:30:00', 8.75);

-- Sample data for seat table
INSERT INTO seat (auditorium_id, row_letter, seat_number)
VALUES
  (1, 'A', 1),
  (1, 'A', 2),
  (2, 'B', 3),
  (3, 'C', 4);

-- Sample data for customer_theatre table
INSERT INTO ticket (screaning_id, customer_id, seat_id, purchase_date, price)
VALUES
  (1, 1, 1, '2024-01-16', 10.50),
  (2, 2, 3, '2024-01-17', 12.00),
  (3, 3, 4, '2024-01-18', 8.75);
