-- Query that uses ORDER BY to get employees'salary in descending order.
select
    employee_id,
    lname,
    position_,
    salary
from Employee
order by salary DESC;

-- Query to find hotels' income that are greater than a specific number which is 1,000,000
select
    hotel_id,
    fiscal_year,
    fiscal_quarter,
    income
from Revenue
where income >= 1000000;

-- Query designed only to display employees who joined past a certain date 
select 
    employee_id,
    lname, 
    position_, 
    hire_date 
from Employee 
where hire_date > '2013-03-06' order by hire_date;

-- Query to sort hotels by taxes paid 
select 
    taxes as tux, 
    hotel_id, fiscal_year, fiscal_quarter
from Revenue 
order by tux DESC;

-- Query to find only current reservations 
select 
    reservation_id, 
    stay_period, 
    status 
from Reservation 
where status = 'checked-in';

-- Query to find available rooms
select 
    room_num, 
    bed_type, 
    room_type, 
    price_per_night
from Room
where status = 'available';

-- Query to find memberships with 10,000 or more points in descending order
select
    customer_id,
    total_points
from Membership
where total_points >= 10000 order by total_points DESC;

-- Query to find customers over the age of 65 ordered alphabetically by last name
select
    fname,
    lname,
    email,
    dob
from Customer
where dob <= '1959-10-04' order by lname;

-- Query to find bills that exceed $10,000 in descending order
select
    bill_id,
    payment_date,
    amount
from Bill
where amount >= 10000 order by amount DESC;

-- ============
-- JOIN QUERIES
-- ============

--showing all employees with their department number and name
select
    e.fname as name,
    d.department_name,
    d.department_id
from Employee e
left join Department d
on e.department_id=d.department_id;

--showing all checked in customers with more than 3000 membership points
select
    c.fname,
    c.lname,
    r.check_in_date,
    m.total_points
from Customer c
join Reservation r on c.customer_id = r.customer_id
join Membership m on c.customer_id = m.customer_id
where r.status = 'checked-in' and m.total_points >= 3000;


--showing which rooms are occupied by which guests as well as their check in date and stay period
select
    c.fname,
    c.lname,
    rm.room_num,
    rm.room_type,
    r.check_in_date,
    r.stay_period
from Customer c
join Reservation r on c.customer_id = r.customer_id
join Room rm on r.room_num = rm.room_num
where r.status = 'checked-in';

-- ================
-- ADVANCED QUERIES
-- ================

-- showing customers who have checked-in in the month of October 2024
select
    customer_id,
    fname,
    lname
from Customer
where customer_id 
        in (select customer_id
        from Reservation
        where check_IN_date >= '2024-10-01' and check_IN_date <= '2024-10-31');
        
-- lists number of rooms not under maintenance and grouped by room type
SELECT room_type, COUNT(*) AS total_rooms
FROM Room
Where status <> 'under maintenance'
GROUP BY room_type
HAVING COUNT(*) > 0;

-- lists customers that don't have a membership
SELECT 
    customer_id
FROM Customer
MINUS
SELECT customer_id
FROM Membership;

-- lists total revenue sorted by payment type
SELECT payment_type, SUM(amount) AS total_revenue
FROM Bill
GROUP BY payment_type
HAVING SUM(amount) > 0;

-- lists departments with more than 1 employee
SELECT department_name, COUNT(employee_id) AS num_employees
FROM Department d
JOIN Employee e ON d.department_id = e.department_id
GROUP BY department_name
HAVING COUNT(employee_id) > 1;

-- lists average price of each room type
SELECT room_type, AVG(price_per_night) AS avg_price
FROM Room
GROUP BY room_type
HAVING AVG(price_per_night) > 0;

-- lists rooms that are available or occupied
SELECT room_num, bed_type, room_type, status
FROM Room
WHERE status = 'available'
UNION
SELECT room_num, bed_type, room_type, status
FROM Room
WHERE status = 'occupied';

-- lists departments that have employees hired before 2014
SELECT department_id, department_name
FROM Department d
WHERE EXISTS (
    SELECT 1 
    FROM Employee e 
    WHERE e.department_id = d.department_id 
      AND e.hire_date < TO_DATE('2014-01-01', 'YYYY-MM-DD')
);

                        
