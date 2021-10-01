select * from salesman
select * from customer
select * from orders

--1--
select orders.* from orders , salesman where name='Paul Adam' and orders.salesman_id=salesman.salesman_id

--2--
select orders.* from orders , salesman where city='London' and orders.salesman_id=salesman.salesman_id

--3--
select orders.* from orders where salesman_id=(select salesman_id from customer where customer_id=3007)

--4--
select * from orders where purch_amt>(select avg(purch_amt) from orders where ord_date='2012-10-10')

--5--
select orders.* from orders,customer where city='New York' and orders.customer_id=customer.customer_id

--6--
select commission from salesman where city='Paris'

--7--
select * from customer where customer_id <(select salesman_id from salesman where name='Mc Lyon')-2001

--8--
select grade,count(customer_id) from customer where grade>(select avg(grade) from customer where city='New York') group by grade

