-- Inset Into Hotel
INSERT INTO HOTEL (hotel_id, province, city, street_name, street_number, postal_code) VALUES (1, 'ON', 'Toronto', 'Queen Street W', 5, 'M2C 4K3');
INSERT INTO HOTEL (hotel_id, province, city, street_name, street_number, postal_code) VALUES (2, 'BC', 'Vancouver', 'Robson Street', 7, 'V5K 0B1');

-- Insert into Department
INSERT INTO Department (department_id, department_name) VALUES (1, 'Marketing');
INSERT INTO Department (department_id, department_name) VALUES (2, 'HR');
INSERT INTO Department (department_id, department_name) VALUES (7, 'Accounting');
INSERT INTO Department (department_id, department_name) VALUES (8, 'Service');

-- Insert into Revenue 
INSERT INTO Revenue (hotel_id, fiscal_year, fiscal_quarter, income, taxes, salary_paid, maintenance_cost) VALUES (1, 2024, 'Q1', 3000000.00, 1000000.00, 500000.00, 40000.00);
INSERT INTO Revenue (hotel_id, fiscal_year, fiscal_quarter, income, taxes, salary_paid, maintenance_cost) VALUES (1, 2024, 'Q2', 5000000.00, 1500000.00, 500000.00, 40000.00);
INSERT INTO Revenue (hotel_id, fiscal_year, fiscal_quarter, income, taxes, salary_paid, maintenance_cost) VALUES (2, 2024, 'Q1', 4000000.00, 1500000.00, 600000.00, 50000.00);
INSERT INTO Revenue (hotel_id, fiscal_year, fiscal_quarter, income, taxes, salary_paid, maintenance_cost) VALUES (2, 2024, 'Q2', 6000000.00, 2000000.00, 600000.00, 50000.00);

-- Insert into Employee
INSERT INTO Employee (employee_id, lname, fname, position_, hire_date, salary, SSN, department_id) VALUES (01000, 'Water', 'Alice', 'Marketing manager', '2015-01-15', 95000.00, 123456780, 01);
INSERT INTO Employee (employee_id, lname, fname, position_, hire_date, salary, SSN, department_id) VALUES (00200, 'Marx', 'John', 'HR', '2012-02-15', 70000.00, 546127780, 02);
INSERT INTO Employee (employee_id, lname, fname, position_, hire_date, salary, SSN, department_id) VALUES (04100, 'Deer', 'Sally', 'Accountant', '2008-01-15', 76000.00, 123445666, 07);
INSERT INTO Employee (employee_id, lname, fname, position_, hire_date, salary, SSN, department_id) VALUES (20040, 'Fox', 'Ben', 'Receptionist', '2019-01-15', 45000.00, 547789204, 08);
INSERT INTO Employee (employee_id, lname, fname, position_, hire_date, salary, SSN, department_id) VALUES (20041, 'Bobson', 'Bob', 'Janitor', '2019-01-15', 35000.00, 547789205, 08);

-- insert into Customer
INSERT INTO Customer (customer_id, fname, lname, gender, email, ssn, dob) VALUES ('S1111-22222-33333', 'Snake', 'Plisken', 'Male', 'metalgearman@gmail.com', 132435467, '1990-05-05');
INSERT INTO Customer (customer_id, fname, lname, gender, email, ssn, dob) VALUES ('D8888-77777-99999', 'Duke', 'Nukem', 'Male', 'thenukeduke@gmail.com', 555555555, '1989-07-29');
INSERT INTO Customer (customer_id, fname, lname, gender, email, ssn, dob) VALUES ('S4125-59190-59326', 'John', 'Smith', 'Male', 'thejohnsmith12@gmail.com', 332130382, '1955-02-25');
INSERT INTO Customer (customer_id, fname, lname, gender, email, ssn, dob) VALUES ('S1391-39139-13913', 'Eren', 'Jaeger', 'Male', 'titanman@paradis.com', 132000139, '1990-03-30');
INSERT INTO Customer (customer_id, fname, lname, gender, email, ssn, dob) VALUES ('K1234-12345-67890', 'Sally', 'Wrinkle', 'Female', 'imold123@fossil.com', 000000001, '1812-01-01');
INSERT INTO Customer (customer_id, fname, lname, gender, email, ssn, dob) VALUES ('11111-11111-11111', 'Nigel', 'Siddeley', 'Male', 'nsiddeley@gmail.com', 123123123, '2004-02-15');

-- insert into Room
INSERT INTO Room (room_num, bed_type, room_type, price_per_night, status) VALUES (1510, 'Double', 'Single Room', 60, 'occupied');
INSERT INTO Room (room_num, bed_type, room_type, price_per_night, status) VALUES (1239, 'Double', 'Double Room', 100, 'occupied');
INSERT INTO Room (room_num, bed_type, room_type, price_per_night, status) VALUES (3333, 'King', 'Deluxe Room', 300, 'occupied');
INSERT INTO Room (room_num, bed_type, room_type, price_per_night, status) VALUES (2123, 'Queen', 'Queen Room', 150, 'available');
INSERT INTO Room (room_num, bed_type, room_type, price_per_night, status) VALUES (4005, 'King', 'Presidential Suite', 2000, 'occupied');
INSERT INTO Room (room_num, bed_type, room_type, price_per_night, status) VALUES (1414, 'Double', 'Single Room', 60, 'under maintenance');
INSERT INTO Room (room_num, bed_type, room_type, price_per_night, status) VALUES (2250, 'King', 'King Room', 200, 'available');
INSERT INTO Room (room_num, bed_type, room_type, price_per_night, status) VALUES (4001, 'Queen', 'Suite', 1000, 'occupied');
INSERT INTO Room (room_num, bed_type, room_type, price_per_night, status) VALUES (3346, 'Double', 'Studio', 400, 'under maintenance');

-- insert into Reservation
INSERT INTO Reservation (reservation_id , customer_id , room_num , stay_period , check_in_date , status) VALUES (12345, '11111-11111-11111', 1510, 8, '2024-10-01', 'checked-in');
INSERT INTO Reservation (reservation_id , customer_id , room_num , stay_period , check_in_date , status) VALUES (12422, 'K1234-12345-67890', 1239, 15, '2024-10-07', 'confirmed');
INSERT INTO Reservation (reservation_id , customer_id , room_num , stay_period , check_in_date , status) VALUES (12705, 'S1391-39139-13913', 3333, 14, '2024-09-27', 'checked-in');
INSERT INTO Reservation (reservation_id , customer_id , room_num , stay_period , check_in_date , status) VALUES (12855, 'S4125-59190-59326', 2123, 1, '2024-10-01', 'checked-out');
INSERT INTO Reservation (reservation_id , customer_id , room_num , stay_period , check_in_date , status) VALUES (12857, 'D8888-77777-99999', 4005, 10, '2024-10-03', 'checked-in');

-- insert into Bill
INSERT INTO Bill (bill_id, customer_id, amount, payment_type, payment_date) VALUES (000000011, '11111-11111-11111', 22568.52, 'Cash', '2004-02-15');
INSERT INTO Bill (bill_id, customer_id, amount, payment_type, payment_date) VALUES (001234007, 'K1234-12345-67890', 1507.29, 'Credit', '1998-06-01');
INSERT INTO Bill (bill_id, customer_id, amount, payment_type, payment_date) VALUES (000013139, 'S1391-39139-13913', 663.13, 'Debit', '2013-08-12');
INSERT INTO Bill (bill_id, customer_id, amount, payment_type, payment_date) VALUES (001234567, 'S4125-59190-59326', 213.57, 'Credit', '2024-09-29');
INSERT INTO Bill (bill_id, customer_id, amount, payment_type, payment_date) VALUES (000007824, 'D8888-77777-99999', 10000.01, 'Credit', '2023-07-15');

-- insert into Membership
INSERT INTO Membership (customer_id, start_date, total_points) VALUES ('S1111-22222-33333', '2022-01-25', 5055);
INSERT INTO Membership (customer_id, start_date, total_points) VALUES ('D8888-77777-99999', '2023-11-11', 8888);
INSERT INTO Membership (customer_id, start_date, total_points) VALUES ('S4125-59190-59326', '2000-05-05', 12345);
INSERT INTO Membership (customer_id, start_date, total_points) VALUES ('S1391-39139-13913', '2017-07-10', 1391);
INSERT INTO Membership (customer_id, start_date, total_points) VALUES ('K1234-12345-67890', '1900-02-02', 999999);



