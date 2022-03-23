CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  customer_height NUMERIC(5),
  name VARCHAR(50)
);



CREATE TABLE ticket (
  ticket_id SERIAL PRIMARY KEY,
  ticket_price NUMERIC(5,2)`,
  customer_id VARCHAR(50),
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);



CREATE TABLE movie (
  Movie_id Serial PRIMARY KEY,
  moive_title VARCHAR(50),
  movie_viewing VARCHAR(50),
  ticket_id Integer,
  FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
 );



CREATE TABLE concessions (
  order_id SERIAL,
  item_id VARCHAR(50),
  item_price NUMERIC(5,2),
  customer_id Integer,
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

