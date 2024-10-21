-- Create the database
CREATE DATABASE lagos_state_rail_service;

-- Connect to the database
\c lagos_state_rail_service

-- Create stations table
CREATE TABLE stations(
station_id BIGSERIAL,
station_name VARCHAR(50) NOT NULL,
state VARCHAR(40) DEFAULT 'Lagos',
city VARCHAR(40) NOT NULL,
station_type VARCHAR(40)NOT NULL,
PRIMARY KEY (station_id));


-- Create trains table
CREATE TABLE trains(
train_id BIGSERIAL,
train_number VARCHAR(20) UNIQUE NOT NULL,
train_type VARCHAR(40) NOT NULL,
capacity INT NOT NULL,
manufacturer VARCHAR(50),
service_status VARCHAR(40) NOT NULL,
PRIMARY KEY (train_id),
CONSTRAINT train_type_check CHECK(train_type IN ('express','local','cargo')),
CONSTRAINT service_status_check CHECK(service_status IN ('active','under maintenance')));


-- Create routes table
CREATE TABLE routes(
route_id BIGSERIAL,
route_name VARCHAR(40) NOT NULL,
origin_station_id INT NOT NULL,
destination_station_id INT NOT NULL,
active_status VARCHAR(40),
PRIMARY KEY(route_id),
CONSTRAINT fk_origin FOREIGN KEY(origin_station_id)
	REFERENCES stations(station_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE, 
CONSTRAINT fk_destination FOREIGN KEY(destination_station_id)
	REFERENCES stations(station_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT status_check CHECK(active_status IN ('active','not active')));


-- Create trips table
CREATE TABLE trips(
ride_id BIGSERIAL,
train_number VARCHAR(30) NOT NULL,
route_id INT NOT NULL,
departure_time TIME NOT NULL,
arrival_time TIME NOT NULL,
number_of_passengers INT,
status VARCHAR(50) NOT NULL,
PRIMARY KEY(ride_id),
CONSTRAINT fk_train FOREIGN KEY(train_number)
	REFERENCES trains(train_number)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT fk_route FOREIGN KEY(route_id)
	REFERENCES routes(route_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT status_check CHECK (status IN ('Completed','Cancelled','Delayed')));


-- Create train_schedules table
CREATE TABLE train_schedules(
schedule_id BIGSERIAL,
train_number VARCHAR(30),
route_id INT,
departure_time TIME NOT NULL,
arrival_time TIME NOT NULL,
day_of_operation VARCHAR(40) NOT NULL,
PRIMARY KEY (schedule_id),
CONSTRAINT fk_train FOREIGN KEY(train_number)
	REFERENCES trains(train_number)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT fk_route FOREIGN KEY(route_id)
	REFERENCES routes(route_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE);

-- Create cards table
CREATE TABLE cards(
card_number VARCHAR(50) NOT NULL UNIQUE,
card_type VARCHAR(40) NOT NULL,
issue_date DATE NOT NULL,
expiry_date DATE,
balance DECIMAL(12,2) NOT NULL,
card_status VARCHAR(40) NOT NULL,
PRIMARY KEY (card_number),
CONSTRAINT card_type_check CHECK(card_type IN ('commute','student_pass')),
CONSTRAINT balance_check CHECK(balance>=0),
CONSTRAINT card_status_check CHECK(card_status IN ('active','expired','blocked')));


-- Create employees table
CREATE TABLE employees(
employee_id BIGSERIAL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
job_role VARCHAR(50) NOT NULL,
assigned_station INT NOT NULL,
email VARCHAR(40),
phone_number VARCHAR(40),
hire_date DATE NOT NULL,
PRIMARY KEY (employee_id),
CONSTRAINT fk_assigned FOREIGN KEY(assigned_station)
	REFERENCES stations(station_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE);


-- Create fares table
CREATE TABLE fares(
fare_id BIGSERIAL,
route_id INT NOT NULL,
ticket_class VARCHAR(40),
fare_amount DECIMAL(12,2),
PRIMARY KEY (fare_id),
CONSTRAINT fk_route FOREIGN KEY(route_id)
	REFERENCES routes(route_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT ticket_class_check CHECK(ticket_class IN ('first class','economy')));


-- Create ticket_bookings table
CREATE TABLE ticket_bookings(
ticket_id BIGSERIAL,
card_number VARCHAR(50),
schedule_id INT,
seat_number VARCHAR(10),
ticket_class VARCHAR(40),
fare_amount DECIMAL(12,2),
booking_status VARCHAR(20),
PRIMARY KEY (ticket_id),
CONSTRAINT fk_card FOREIGN KEY(card_number)
	REFERENCES cards(card_number)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT fk_schedule FOREIGN KEY(schedule_id)
	REFERENCES train_schedules(schedule_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT ticket_class_check CHECK(ticket_class IN ('first class','economy')),
CONSTRAINT status_check CHECK (booking_status IN ('confirmed','cancelled','refunded')));



-- Create payments table
CREATE TABLE payments(
payment_id BIGSERIAL,
ticket_id INT,
payment_method VARCHAR(40),
payment_date DATE NOT NULL,
payment_status VARCHAR(30) NOT NULL,
PRIMARY KEY (payment_id),
CONSTRAINT fk_ticket FOREIGN KEY(ticket_id)
	REFERENCES ticket_bookings(ticket_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT method_check CHECK(payment_method IN ('debit card','mobile payment','cash')),
CONSTRAINT status_check CHECK(payment_status IN ('successful','failed','pending')));


-- Create cargo_manifest table
CREATE TABLE cargo_manifest(
cargo_id BIGSERIAL,
train_number VARCHAR(30),
sender_name VARCHAR(50),
receiver_name VARCHAR(50),
origin_station_id INT,
destination_station_id INT,
cargo_description TEXT,
weight INT,
delivery_status VARCHAR(30),
PRIMARY KEY (cargo_id),
CONSTRAINT fk_train FOREIGN KEY(train_number)
	REFERENCES trains(train_number)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT fk_origin FOREIGN KEY(origin_station_id)
	REFERENCES stations(station_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT status_check CHECK (delivery_status IN ('in-transit','delivered')));


-- Create maintenance_records table
CREATE TABLE maintenance_records(
maintenance_id UUID DEFAULT gen_random_uuid(),
train_number VARCHAR(30),
station_id INT,
maintenance_type VARCHAR(30) NOT NULL,
maintenance_date DATE,
description TEXT,
cost DECIMAL(12,2),
technician_id INT,
PRIMARY KEY (maintenance_id),
CONSTRAINT fk_train FOREIGN KEY(train_number)
	REFERENCES trains(train_number)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT fk_station FOREIGN KEY(station_id)
	REFERENCES stations(station_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
CONSTRAINT fk_technician FOREIGN KEY(technician_id)
	REFERENCES employees(employee_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE, 
CONSTRAINT type_check CHECK(maintenance_type IN ('repair','routine check')));






 