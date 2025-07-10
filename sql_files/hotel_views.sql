create view vwToDoSalesPromotion(first_name, last_name, email, total_points)
as
    select  Customer.first_name,
            Customer.last_name,
            Customer.email,
            Membership.total_points
    from Customer
    inner join Membership on Customer.customer_id=Membership.customer_id
    where Membership.total_points > 10000;
    
    
create view vwRoomsAvailability(current_status, room_num, price_per_night, room_type)
as
    (select status,
            room_num,
            price_per_night,
            room_type
    from Room
    where status='available');
    
    
create view vwEmployedLength(employee_id, first_name, position_, hiring_date)
as
    (select employee_id, 
            first_name, 
            position_, 
            hiring_date
    from Employee
    where hiring_date < '2015-01-01');
    
select * from vwToDoSalesPromotion;
select * from vwRoomsAvailability;
select * from vwEmployedLength;
--drop view vwToDoSalasPromotion;
--drop view vwRoomsAvailability;
--drop view vwEmployedLength;