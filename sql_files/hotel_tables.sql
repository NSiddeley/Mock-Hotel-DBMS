create table Hotel (
    hotel_id number(9) PRIMARY KEY,
    province varchar2(20),
    city varchar2(20),
    street_name varchar2(20),
    street_number number(9),
    postal_code varchar2(7)
);

create table Revenue(
    hotel_id REFERENCES Hotel(hotel_id),
    fiscal_year number(4),
    fiscal_quarter varchar2(2) CHECK (fiscal_quarter IN ('Q1','Q2','Q3','Q4')), --Ensures a valid fiscal quarter is entered
    income number(11,2) DEFAULT 0,
    taxes number(11,2) DEFAULT 0,
    salary_paid number(11,2) DEFAULT 0,
    maintenance_cost number(11,2) DEFAULT 0,
    PRIMARY KEY (hotel_id, fiscal_year, fiscal_quarter)
);

create table Department(
    department_id number(2) PRIMARY KEY,
    department_name varchar2(30)
);

create table Employee (
    employee_id number(5) PRIMARY KEY,
    lname varchar2(10),
    fname varchar2(10),
    hire_date DATE,
    position_ varchar2(30),
    SSN number(9),
    salary NUMBER(10,2),
    department_id number(2),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

create table Customer(
    customer_id varchar2(20) PRIMARY KEY,
    fname varchar2(10),
    lname varchar2(10),
    gender varchar2(10),
    email varchar(40),
    SSN number(9),
    DOB DATE NOT NULL
);

create table Room(
    room_num number(6) PRIMARY KEY,
    bed_type char(30), 
    room_type char(30),
    price_per_night number(7,2),
    status varchar2(20) CHECK (status IN ('available','occupied','under maintenance')), --This constraint ensures that only the specified strings can be inserted into the status column.
    memo varchar2(100)
);

create table Reservation(
    reservation_id varchar(30) PRIMARY KEY,
    customer_id varchar2(20),
    room_num number(6),
    stay_period number(3),
    check_in_date DATE,
    status varchar(20) CHECK (status IN ('confirmed','checked-in','checked-out')),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (room_num) REFERENCES Room(room_num)
);

create table Bill(
    bill_id number(9) PRIMARY KEY,
    customer_id varchar(20),
    amount number(10,2),
    payment_type char(10),
    payment_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

create table Membership(
    customer_id varchar2(20) PRIMARY KEY,
    start_date DATE,
    total_points number(7),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);


