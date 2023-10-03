CREATE DATABASE IF NOT EXISTS demo_db;

USE demo_db;

CREATE TABLE location (
    id INT(11) NOT NULL AUTO_INCREMENT,
    code CHAR(2) NOT NULL,
    name VARCHAR(45) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE customer (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    location_id INT(5) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (location_id) REFERENCES location(id)
);

DESCRIBE customer;

INSERT INTO location (code, name) VALUES
('AL','Alabama'),
('AK','Alaska'),
('AS','American Samoa'),
('AZ','Arizona'),
('AR','Arkansas'),
('CA','California'),
('CO','Colorado'),
('CT','Connecticut'),
('DE','Delaware'),
('DC','District of Columbia'),
('FM','Federated States of Micronesia'),
('FL','Florida'),
('GA','Georgia'),
('GU','Guam'),
('HI','Hawaii'),
('ID','Idaho'),
('IL','Illinois'),
('IN','Indiana'),
('IA','Iowa'),
('KS','Kansas'),
('KY','Kentucky'),
('LA','Louisiana'),
('ME','Maine'),
('MH','Marshall Islands'),
('MD','Maryland'),
('MA','Massachusetts'),
('MI','Michigan'),
('MN','Minnesota'),
('MS','Mississippi'),
('MO','Missouri'),
('MT','Montana'),
('NE','Nebraska'),
('NV','Nevada'),
('NH','New Hampshire'),
('NJ','New Jersey'),
('NM','New Mexico'),
('NY','New York'),
('NC','North Carolina'),
('ND','North Dakota'),
('MP','Northern Mariana Islands'),
('OH','Ohio'),
('OK','Oklahoma'),
('OR','Oregon'),
('PW','Palau'),
('PA','Pennsylvania'),
('PR','Puerto Rico'),
('RI','Rhode Island'),
('SC','South Carolina'),
('SD','South Dakota'),
('TN','Tennessee'),
('TX','Texas'),
('UT','Utah'),
('VT','Vermont'),
('VI','Virgin Islands'),
('VA','Virginia'),
('WA','Washington'),
('WV','West Virginia'),
('WI','Wisconsin'),
('WY','Wyoming');
