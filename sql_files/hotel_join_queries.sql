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
    

    
    