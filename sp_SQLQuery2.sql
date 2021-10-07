create procedure spgetname(@id numeric(5,0),@name varchar(30) out)
as
begin
	select @name=cust_name from customer where customer_id=@id;

end


declare @name1 varchar(30)
exec spgetname 3005,@name1 out
select @name1







create procedure spgetname1(@id numeric(5,0))
as
begin
	return (select cust_name from customer where customer_id=@id);

end

declare @name varchar(30)
exec @name=spgetname1 3002
select @name

return - int , 1 value
out - any , any 