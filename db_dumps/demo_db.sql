CREATE DATABASE IF NOT EXISTS demo_db;

USE demo_db;

CREATE TABLE customer (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) DEFAULT NULL,
  location_id INT(5) DEFAULT NULL,
  PRIMARY KEY (id)
);

DESCRIBE customer;

INSERT INTO customer(name, location_id) VALUES
  ('John Doe',1),
  ('Ann',1),
  ('Tony',1),
  ('Curl Johns',2);
